using System;
using System.IO;
using System.Collections.Generic;

namespace AbstractClassesChallenge
{
    public class Rectangle : Shape
    {
        // Implement your Rectangle class here.
        
        public double SideLength = 4.5;
        public double SideWidth = 5;
        

        protected Rectangle(double SideLength, double SideWidth, string Name, int NumSides) : base(Name, NumSides)
        {
            this.SideLength = SideLength;
            this.SideWidth = SideWidth;
            base.Name = Name;
            base.NumSides = NumSides;
        }

        public Rectangle(double SideLength, string Name, int numSides)
        {
            this.SideLength = SideLength;
            base.Name = Name;
            base.NumSides = NumSides;
        }

        protected override void SetArea(){
            recArea = SideLength*SideWidth;
            base.Area = recArea;
        }

        protected void SetArea2()
        {
            recArea = SideLength^2;
            base.Area = recArea;
        }

    }
}
