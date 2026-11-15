using System.Globalization;
using System.IO;
using System.Linq;

FileStream number = File.Create("C:\\Users\\413\\Documents\\GitHub\\Saetov-Yaroslav\\rpmlab54-55\\numbers.txt");
    number.Close();
using (StreamWriter numbers = new StreamWriter("C:\\Users\\413\\Documents\\GitHub\\Saetov-Yaroslav\\rpmlab54-55\\numbers.txt"))
{
    for (int i = 0; i <= 256; i++)
    {
        numbers.Write(i);
        if (i < 256)
            numbers.Write(",");
    }
}