using System;
using System.Text;
using RabbitMQ.Client;
using RabbitMQ.Client.Events;

class Program
{
    static void Main(string[] args)
    {
        Console.WriteLine("Приложение-получатель");
        Console.Write("Введите IP-адрес: ");
        string hostName = Console.ReadLine();
        if (string.IsNullOrWhiteSpace(hostName)) hostName = "localhost";

        var factory = new ConnectionFactory()
        {
            HostName = hostName,
            UserName = "KasYsy",
            Password = "993"
        };

        using (var connection = factory.CreateConnection())
        using (var channel = connection.CreateModel())
        {
            channel.QueueDeclare(queue: "chat_queue", durable: true, exclusive: false, autoDelete: false, arguments: null);

            var consumer = new EventingBasicConsumer(channel);
            consumer.Received += (model, ea) =>
            {
                var body = ea.Body.ToArray();
                var message = Encoding.UTF8.GetString(body);
                Console.WriteLine($"\n[Собеседник] > {message}");
            };

            channel.BasicConsume(queue: "chat_queue", autoAck: true, consumer: consumer);

            Console.WriteLine($"Подключено к {hostName}. Ожидание сообщений (Enter для выхода)...");
            Console.ReadLine();
        }
    }
}