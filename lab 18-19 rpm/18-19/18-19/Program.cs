//char[] alphabet = new char[32];
//int count = 0;
//for (int i = 0; i < alphabet.Length; i++)
//{
//    alphabet[i] = (char)('А' + i);
//    count = count + 1;
//}
//foreach (char letter in alphabet)
//{
//    Console.Write(letter + " ");

//    if (letter == 'Е')
//    {
//        Console.Write("Ё ");
//    }
//}
//    Console.WriteLine();
//    Console.WriteLine(alphabet[0]);
//    Console.WriteLine(alphabet[31]);
//Console.WriteLine("Длинна: " + count);


//int[] numbers = new int [5];
//int sum = 0;
//for (int i = 0; i < numbers.Length; i++)
//    numbers[i] = i+1;
//foreach (int i in numbers)
//{
//    sum = sum + i;
//    Console.Write(i + " ");
//}
//Console.WriteLine("Сумма: " + sum);



//string[] strings = {};

//List<string> strings1 = new List<string>();

//foreach (string s in strings)
//{
//    if (s != null)
//    {
//        strings1.Add(s);
//    }
//}
//Console.Write("новый List: ");
//foreach (string s in strings)
//{
//    Console.Write(s);
//}


//int[] bob = new int[0];
//foreach (int x in bob)
//{
//    Console.WriteLine(x);
//}
//Console.WriteLine("Цикл по пустому массиву ничего не делает");


//int[] sergey = { 9 };
//foreach (int x in sergey)
//{
//    Console.WriteLine(x);
//}
//Console.WriteLine("Цикл выполняется ровно 1 раз");


//int[] before = { 10, 9, 8, 7, 6, 5, 4, 3, 2, 1 };
//int[] after = new int[10];
//for (int i = 0; i < before.Length; i++)
//{
//    if (i < 1000 && i > -1000)
//    {
//        after[i] = before[i] + 1;
//    }
//}
//foreach (int z in after)
//    Console.WriteLine(z);


decimal[] before = new decimal[10];
Random rnd = new Random();
decimal[] after = new decimal[10];
for (int i = 0; i < before.Length; i++)
{
    before[i] = rnd.Next(0, 1001);
    after[i] = before[i] - ((before[i] / 100) * 10);
}
Console.WriteLine("Исходные цены ");
foreach (int c in before)
    Console.WriteLine(" " + c );
Console.WriteLine("Измененнные цены со скидкой 10%");
foreach (int z in after)
    Console.Write(" " + z);

