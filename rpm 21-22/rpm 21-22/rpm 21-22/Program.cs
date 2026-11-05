double x1, y1, x2, y2, a, b, c;

Console.WriteLine("Введите x1, y1");
x1 = double.Parse(Console.ReadLine());
y1 = double.Parse(Console.ReadLine());

Console.WriteLine("Введите x2, y2");
x2 = double.Parse(Console.ReadLine());
y2 = double.Parse(Console.ReadLine());

Console.WriteLine("Введите коэфиценты a,b,c");
a = double.Parse(Console.ReadLine());
b = double.Parse(Console.ReadLine());
c = double.Parse(Console.ReadLine());

double f1 = a * x1 + b + y1 + c;
double f2 = a * x2 + b + y2 + c;

if (f1 == 0 || f2 == 0)
    goto OdnaIzNaPryamoy;
if (f1 * f2 > 0)
    goto VOdnoiPloskosti;
else
    goto Vraznih;

OdnaIzNaPryamoy:
Console.WriteLine("Одна из точек плоскости лежит на прямой");
goto End;

VOdnoiPloskosti:
Console.WriteLine("Точки в одной полуплоскости");
goto End;

Vraznih:
Console.WriteLine("Точки в разных плоскостях");
goto End;

End:
Console.WriteLine("Победа!");

