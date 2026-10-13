//int size;
//bool valid;
//do
//{
//    Console.Write("Количество участников (1–30): ");
//    string input = Console.ReadLine();
//    if (input == null)
//    {
//        Console.WriteLine("Ввод завершён");
//        return;
//    }
//    valid = int.TryParse(input, out size)
//            && size >= 1 && size <= 30;
//    if (!valid)
//        Console.WriteLine("Нужно целое число от 1 до 30.");
//}
//while (!valid);

//Console.WriteLine($"Принято: {size}");

//int schet = 0;
//while (schet <= 2)
//{
//    Console.WriteLine("арифметический подсчёт");
//    bool result = int.TryParse(Console.ReadLine(), out int remaining);
//    int count = 0;
//    do
//    {
//        int digit = remaining % 10;
//        count++;
//        remaining /= 10;
//    }

//    while (remaining > 0);
//    Console.WriteLine(count);
//    schet = schet + 1;
//}





//string answer;

//do
//{ 
//Console.WriteLine("Привет!");
//Console.WriteLine("Хотите повторить еще?");
//    answer = Console.ReadLine();
//}
//while (answer == "да") ;

//Console.WriteLine("Пока!"); 




//Console.WriteLine("Введите число 1-7");
//bool chislo = int.TryParse(Console.ReadLine(), out int znach);



//int number;
//do
//{
//    Console.WriteLine("Введите число от 1 до 7:");
//    string input = Console.ReadLine();
//    if (int.TryParse(input, out number) && number > 1 && number < 7)
//    {
//        break;
//    }
//    Console.WriteLine("Ошибка ввода!");
//}
//while (true);

//Console.WriteLine("Ваше число: " + number);


string tarif;
do
{
    Console.WriteLine("Выберите желаемый тариф (базовый/стандарт/премиум) ");
    tarif = Console.ReadLine();
    if (tarif == "базовый" || tarif == "стандарт" || tarif == "премиум")
    {
        break;
    }
    Console.WriteLine("Недопустимое значение, попробуйте еще раз...");
}
while (true);
Console.WriteLine("Ваш тариф: " +  tarif);