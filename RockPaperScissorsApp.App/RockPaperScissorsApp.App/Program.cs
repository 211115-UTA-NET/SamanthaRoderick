// app to play rock-paper-scissors witht the comp0uter

// required features:
// -- play multiple rounds
// -- get a summary/record of all the rounds played so far

// stretch goal features:
// -- persistence (save data somehow, it will remember past game history)
// --play more complex variands of RPS (like RPS+Lizzard+Spock)
// -- loggin (to help with debugging the app if something goes wrong)
// -- some way to have more than 2 players
// -- support both player vs player and player vs computer
// -- difficulty settings for the computer (remembers your moves and tries to predict)

// -- in general, we want to write something simple
//         but in a way that allows for extending it / generalizing it in the future

namespace RockPaperScissorsApp.App
{
    public class Program
    {
        public static void Main()
        {
            Console.WriteLine("Welcome to RockPaperScissors App");
            Console.WriteLine();

            var game = new Game();

            

            
            

            while(true)
            {
                Console.WriteLine("Play a round? (y/n)");
                string? input = Console.ReadLine();
                
                if (input != "y") { break; }

                game.PlayRound();                
            }

            string summary = game.Summary;
            Console.WriteLine(summary);
        }
        
    }
}
