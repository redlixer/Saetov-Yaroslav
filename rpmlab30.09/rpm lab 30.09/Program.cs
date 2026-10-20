//Console.WriteLine("введите ваше число");
//var x = Convert.ToInt32(Console.ReadLine());
//string z = (x > 10 && x < 20) ? "да" : "нет";
//Console.WriteLine(z);

//var a = Convert.ToInt32(Console.ReadLine());
//var b = Convert.ToInt32(Console.ReadLine());
//var c = Convert.ToInt32(Console.ReadLine());
//if (a>0 && b>0 && c>0
//    && a+b>c 
//    &&  a+c>b
//    &&  b+c>a)
//{
//    Console.WriteLine("Треугольник существует");
//}
//else
//{
//    Console.WriteLine("Треугольника не существует");
//}
//if (a*a +b*b == c*c ||
//    b*b + c*c == a*a ||
//    a*a + c*c ==  b*b )
//{
//    Console.WriteLine("Треугольник прямоугольный");
//}
//{
//    Console.WriteLine("Треугольникне прямоугольный");
//}


//var x = Convert.ToInt32(Console.ReadLine());
//switch (x)
//{
//    case 1:
//        Console.WriteLine("Меркурий");
//        break;
//    case 2:
//        Console.WriteLine("Венера");
//        break;
//    case 3:
//        Console.WriteLine("Земля");
//        break;
//    case 4:
//        Console.WriteLine("Марс");
//        break;
//}

var height = Convert.ToInt32(Console.ReadLine());

string result = height switch
{
    <= 150 => "Низкий",
    <= 169 => "Ниже среднего",
    <= 170  => "Средний",
    <= 189 => "Средний",
    >= 190 => "Высокий"
};
Console.WriteLine(result);