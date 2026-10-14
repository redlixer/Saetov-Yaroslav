using System;
using System.Text;
using RabbitMQ.Client;

class Program
{
    static void Main(string[] args)
    {
        var factory = new ConnectionFactory()
        {
            HostName = "localhost",
            UserName = "root",
            Password = "4111"
        };

        using (var connection = factory.CreateConnection())
        using (var channel = connection.CreateModel())
        {
            channel.QueueDeclare(queue: "chat_queue", durable: true, exclusive: false, autoDelete: false, arguments: null);
            Console.WriteLine("Приложение запущено. Ожидание ввода сообщения...");

            while (true)
            {
                Console.Write("Вы > ");
                string msg = Console.ReadLine();
                if (string.IsNullOrWhiteSpace(msg)) continue;

                var body = Encoding.UTF8.GetBytes(msg);
                channel.BasicPublish(exchange: "", routingKey: "chat_queue", basicProperties: null, body: body);
            }
        }
    }
}