namespace laba_10_11
{
    internal class Program
    {
        static void Main(string[] args)
        {
            var x = 3;
            var y = 4;
            int[] a = { x, y };

            double q = 35;

            //после поворота
            var x1 = x * Math.Cos(q) - y * Math.Sin(q);
            Console.WriteLine("x после поворота = " + x1);
            var y1 = x * Math.Cos(q) + y * Math.Sin(q);
            Console.WriteLine("y после поворота = " + y1);

            //длина вектора нового
            var f = Math.Sqrt(Math.Pow(x1, 2) + Math.Pow(y1, 2));
            Console.WriteLine("длинна нового векора = " + f);



            //задание 2
            var v1 = 2;
            var v2 = -1;
            var v3 = 5;
            var z1 = 1.2;
            var z2 = 0.9;
            var z3 = -0.7;

            var p1 = Math.Exp(z1) / (Math.Exp(z1) + Math.Exp(z2) + Math.Exp(z3));
            Console.WriteLine("Вероятность Softmax 1 = " + p1);
            var p2 = Math.Exp(z2) / (Math.Exp(z1) + Math.Exp(z2) + Math.Exp(z3));
            Console.WriteLine("Вероятность Softmax 2 = " + p2);
            var p3 = Math.Exp(z3) / (Math.Exp(z1) + Math.Exp(z2) + Math.Exp(z3));
            Console.WriteLine("Вероятность Softmax 3 = " + p3);

            var e = p1 * v1 + p2 * v2 + p3 * v3;
            Console.WriteLine("Вычислили E  = " + e);

            //задание 3

            var N = 3768;
            var B = 23465;
            var V = 50.0;

            var k = N * B / 1000000.0; // объем
            Console.WriteLine("Объем данных в мб = " + k);
            var j = k * 1 / V;
            Console.WriteLine("Время передачи = " + j);


        }
    }
}
