Name = input('Name: ')
print('Hello, ' + Name + '!')
print('Let\'s find out how many months old you are!')
print('First, how many old are you in years?')
Age = int(input('Age: ')) #need to specify int with input so math
print('You are ' + str(Age) + ' years old!') #make it string here for sentence
print('Now with some math, we can figure out what that is in months!')
Age_Months = (Age*12)
print('You are ' + str(Age_Months) + ' months old!')
Age_Minutes = (Age*5256000)
Age_Seconds = (Age*31536000)
print('You are ' + str(Age_Minutes) + ' minutes old and ' + str(Age_Seconds)
      + ' seconds old!!')
