using System;
using System.IO;
using System.Collections.Generic;

namespace AbstractClassesChallenge
{
    public class Square : Rectangle
    {
        // Implement your Square Class here.
        protected Square(double SideLength, string Name, int numSides) : base(SideLength, Name, numSides)
        {
            base.SideLength = SideLength;;
            base.Name = Name;
            base.NumSides = NumSides;
        }

        protected override void SetArea()
        {
            base.SetArea();
            {
                squArea = SideLength^2;
                base.Area = squArea;
            }
        }
    }
}
