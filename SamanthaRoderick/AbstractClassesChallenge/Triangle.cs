using System;
using System.IO;
using System.Collections.Generic;

namespace AbstractClassesChallenge
{
    public class Triangle : Shape
    {
            // Implement your Triangle class here.
            // HINT: Use Herons Formula to calculate and set the area.
            public double edge1 = 3;
            public double edge2 = 4;
            public double edge3 = 5.6;

            protected Triangle(double edge1, double edge2, double edge3, string Name, int numSides) : base(Name, numSides)
            {
                this.edge1 = edge1;
                this.edge2 = edge2;
                this.edge3 = edge3;
                base.Name = Name;
                base.NumSides = numSides;
            }

            protected override void SetArea()
            {
                heronS = (edge1 + edge2 + edge3)/2;
                triArea = Math.Sqrt(heronS(heronS-edge1)(heronS-edge2)(heronS-edge3));
            }
    }
}
