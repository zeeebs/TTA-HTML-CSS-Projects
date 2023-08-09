def start():
    print('this is my rock paper scissors game!')
    player_one = 'gabes'
    player_two = 'zeebs'
        
    def choices(player_one_choice, player_two_choice):
        if player_one_choice =='rock' and player_two_choice == 'paper':
            return('paper covers rock! ' + player_two + ' wins!')
        elif player_one_choice =='paper' and player_two_choice == 'rock':
            return('paper covers rock! ' + player_one + ' wins!')
        elif player_one_choice =='scissors' and player_two_choice == 'paper':
            return('scissors cuts paper! ' + player_one + ' wins!')
        elif player_one_choice =='rock' and player_two_choice == 'scissors':
            return('rock smashes scissors! ' + player_one + ' wins!')
        elif player_one_choice =='paper' and player_two_choice == 'scissors':
            return('scissors cuts paper! ' + player_two + ' wins!')
        elif player_one_choice =='scissors' and player_two_choice == 'rock':
            return('rock smashes scissors! ' + player_two + ' wins!')
        elif player_one_choice == player_two_choice:
            return('zeebs and gabes tied!')
        else:
            return('please type rock, paper, or scissors!')
    player_one_choose=input('does ' + player_one +
                            ' choose rock, paper, or scissors? ').lower()
    player_two_choose=input('does ' + player_two +
                            ' choose rock, paper, or scissors? ').lower()
    print(choices(player_one_choose, player_two_choose))

    def play_again():
        again=input('Would you like to play the game again? ').lower()
        if again =='no'.lower():
            quit()
        if again =='yes'.lower():
            start()
        else:
            print('please enter yes or no')
            play_again()
    play_again()
start()
