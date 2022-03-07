using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace first
{
	internal class Program
	{
		static void Main(string[] args)
		{
			string a = Console.ReadLine();
			Console.WriteLine(a);
			double j = 42;
			double k = 29.7;
			double l = 0;
			l = Math.Sqrt(j*j + k*k);
			Console.WriteLine(l);
			Console.ReadKey();
			
		}
	}
}
