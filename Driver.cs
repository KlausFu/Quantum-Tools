using System;

using Microsoft.Quantum.Simulation.Core;
using Microsoft.Quantum.Simulation.Simulators;

namespace Quantum.Tools
{
    class Driver
    {
        static void Main(string[] args)
        {
            using (var qsim = new QuantumSimulator())
            {
                var res = RandomGenerator.Run(qsim, Result.Zero).Result;
                System.Console.WriteLine($"Zufallszahl: {res,-4}");   
            }
        }
    }
}