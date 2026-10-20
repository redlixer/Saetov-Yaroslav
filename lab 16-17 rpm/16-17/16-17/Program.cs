//long sum = 0;
//int count = 0;
//Console.WriteLine("Вводите целые от -1000 до 1000; 0 завершает.");
//string line = Console.ReadLine();
//if (line == null) return;
//int value = int.Parse(line);
//while (value != 0)
//{
//    sum += value;
//    count++;
//    line = Console.ReadLine();
//    if (line == null)
//    {
//        Console.WriteLine("Ввод завершён");
//        return;
//    }
//    value = int.Parse(line);
//}
//Console.WriteLine($"Количество: {count}; сумма: {sum}");



//bool required = int.TryParse(Console.ReadLine(), out int N);
//long capacity = 1;
//int steps = 0;
//while (capacity < N)
//{
//    capacity *= 2;
//    steps++;
//}
//Console.WriteLine($"{capacity}; {steps}"); // 8; 3

//int [] values = { 2, };
//int index = 0;
//while (index < values.Length && values[index] >= 0)
//{
//    index++;
//}
//if (index < values.Length)
//    Console.WriteLine($"Первое отрицательное: индекс {index}");
//else
//    Console.WriteLine("Не найдено");

//int a = 0;
//bool k = int.TryParse(Console.ReadLine(), out a);
//while (a>=10)
//{
//    a = a / 10;
//}
//Console.WriteLine("Первая цифра числа: " + a);


int a = 0;
int count = 0;
Console.WriteLine("Введите исходный номер: ");
bool k = int.TryParse(Console.ReadLine(), out a);
while (a>=1000)
{
    a = a / 10;
    count++;
}
Console.WriteLine("Сокращенный номер заказа: " + a);
Console.WriteLine("Число удалений: " + count);