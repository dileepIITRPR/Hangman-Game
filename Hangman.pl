@wordlist= ("computer","radio","carbon","study","bat","police","gram","game","subject","country","extra","light","anime","province","month","kitchen","delhi","security","phone","orange","web");


my $randomindex = int(rand(21));
my $word_length= length( @wordlist[$randomindex]);

# print "Selected word : @wordlist[$randomindex], index of word : $randomindex, length of word : $word_length\n";#please comment out this line to play a fair game, it is only for reference;


my $num_guess = 6 ; 
my $used_guess = 0;
my $correct_guess = 0;
my @word=();
my @wrongword=();
my $game_breaker=0;
my @correctword=();
my $n=0;
while($n<$word_length){
    unshift @correctword, "_";
    $n++;
}
print "\n\nWORD ==> @correctword\n\n";

# print "hello\n";#for reference and debugging.

while($game_breaker!=1){

    print "\n##################################################\n";
    print "\n___Guess any Letter of the Word___\n";
    my $var= <STDIN>;
    chomp($var);
    my $len = length($var);
    # print "$len\n";

    if($len==1){
        if(@wordlist[$randomindex] =~ /$var/){
        print "___Right Guess___\n";
        $correct_guess++;

        my $pos = index(@wordlist[$randomindex], $var);
        # print "\n$pos\n";
        @correctword[$pos]=$var;
        print "\n\nWORD ==>@correctword\n\n";

        unshift @word, $var;
        print "___Correct letters guessed -> @word\n";
        print "___Wrong letters guessed -> @wrongword\n";
        print "\n##################################################\n";
        # print "$correct_guess\n";
    }
    
    elsif(@wordlist[$randomindex] !~ /$var/){
        print "___Wrong Guess___\n___Try Again___\n";
        print "\n\nWORD ==>@correctword\n\n";
        $used_guess++;
        my $evaluator = $num_guess - $used_guess;
        print "___Guesses left : $evaluator\n";

        unshift @wrongword, $var;
        print "___Correct letters guessed -> @word\n";
        print "___Wrong letters guessed -> @wrongword\n";


            if($used_guess==0){
                print "\n_____HANGMAN_____\n";
                print "_____________________\n";
                print "|          }         \n";
                print "|          O         \n";
                print "|          |         \n";
                print "|         /|\\       \n";
                print "|        / | \\     \n";
                print "|         / \\        \n";
                print "|        /   \\        \n";
                print "|                       \n";
                print "|_____________________\n";
            }
            if($used_guess==1){
                print "\n_____HANGMAN_____\n";
                print "_____________________\n";
                print "|          }         \n";
                print "|          O         \n";
                print "|                   \n";
                print "|                  \n";
                print "|               \n";
                print "|                  \n";
                print "|                   \n";
                print "|                      \n";
                print "|_____________________\n";
            }
            if($used_guess==2){
                print "\n_____HANGMAN_____\n";
                print "_____________________\n";
                print "|          }         \n";
                print "|          O         \n";
                print "|          |         \n";
                print "|          |       \n";
                print "|          |      \n";
                print "|                  \n";
                print "|                   \n";
                print "|                       \n";
                print "|_____________________\n";
            }
            if($used_guess==3){
                print "\n_____HANGMAN_____\n";
                print "_____________________\n";
                print "|          }         \n";
                print "|          O         \n";
                print "|          |         \n";
                print "|         /|       \n";
                print "|        / |      \n";
                print "|                  \n";
                print "|                   \n";
                print "|                       \n";
                print "|_____________________\n";
            }
            if($used_guess==4){
                print "\n_____HANGMAN_____\n";
                print "_____________________\n";
                print "|          }         \n";
                print "|          O         \n";
                print "|          |         \n";
                print "|         /|\\       \n";
                print "|        / | \\     \n";
                print "|                  \n";
                print "|                   \n";
                print "|                       \n";
                print "|_____________________\n";
            }
            if($used_guess==5){
                print "\n_____HANGMAN_____\n";
                print "_____________________\n";
                print "|          }         \n";
                print "|          O         \n";
                print "|          |         \n";
                print "|         /|\\       \n";
                print "|        / | \\     \n";
                print "|         /         \n";
                print "|        /           \n";
                print "|                       \n";
                print "|_____________________\n";
            }
            if($used_guess==6){
                print "\n_____HANGMAN_____\n";
                print "_____________________\n";
                print "|          }         \n";
                print "|          O         \n";
                print "|          |         \n";
                print "|         /|\\       \n";
                print "|        / | \\     \n";
                print "|         / \\        \n";
                print "|        /   \\        \n";
                print "|                       \n";
                print "|_____________________\n";
                print "\n##################################################\n";
            }
    }

    if(($used_guess == $num_guess) || ($correct_guess == $word_length))
    {
        
        if($used_guess == $num_guess){
            print "\n___GAME OVER! YOU LOST!___\nThe word was @wordlist[$randomindex]\n";
            print "\n##################################################\n";
        }
        if($correct_guess == $word_length){
            print "\n___CONGRATULATIONS! YOU WON!___\nThe word was @wordlist[$randomindex]\n";
            print "\n##################################################\n";
        }
        $game_breaker=1;
    }
    }
    elsif($len!=1){
        print "ERROR! ENTER ONLY ONE LETTER AT A TIME\n";
    }

}
# print "hello\n"; #for reference and debug;