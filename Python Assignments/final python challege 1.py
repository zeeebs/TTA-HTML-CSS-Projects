i = 5 #assign an integer to a variable
print(i)
s = 'string' #assign a string to a variable
print(s)
f = 3.3 #assign a float to a variable
print(f)

f = int(f) #making the float f into an integer so I can use it with i for math

#use each of these operators: +,*,/,=,%
print(i+f) #=8
print(i*f) #=15
print(i/f) #1.6666..
print(i==f) #false
print(10 % 100) #10

#use each of these logical operators: and, or, not
if i and f > 1:
    print(i and f >1) #true
if i or f >4:
    print(i or f >4) #5 - returns the number that satisfies the operation


list=['a','b','c','d','e'] #make a list
if 'z' not in list: #use not operator
    print('z is not in list')

for elem in list: #create a list and iterate through using a for loop to print each item on new line
    print (elem)

tup1 = ('dog', 'cat', 'lizard', 'hamster') #make a tuple
for elem in tup1: #create a tuple and iterate through using a for loop to print each item on new line
    print(elem)

import random #using if, elif, and else
answer = random.randint(1,3)
if answer == 1:
    print(1)
elif answer == 2:
    print(2)
else:
    print(3)

x = 5 #function that returns a string variable
print(str(x))

import time
counter = 0
while counter <10: #while loop that calls on string function and prints it to shell
    print(counter)
    print(str(x))
    time.sleep(.25)
    counter = counter + 1
    time.sleep(.25)

#I DID IT!!!
