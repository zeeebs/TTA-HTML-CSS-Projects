import time
x=10
print("x (10) is not equal to 15:")
time.sleep(.5)
print(x!=15)
print("x is greater than or equal to 15:")
time.sleep(.5)
print(x>=15)
if x<=15:
    print("25 is not equal to 15:")
else:
    print("the number is 25")
    time.sleep(.25)
counter = 25
print(counter)
counter=counter+5
time.sleep(.25)
print(counter)
counter=counter-28
print(counter)
time.sleep(.25)
counter=counter*2
print(counter)
counter=counter/3
time.sleep(.25)
print(counter)
time.sleep(.25)
for counter in range(2,6):
    print(counter)
    time.sleep(.25)
for counter in range(10,4,-1):
    print(counter)
    time.sleep(.25)
while counter<22:
    print(counter+2)
    counter = counter+4
    time.sleep(.25)
list=["A","B","C","D","E","F","G","etc"]
print(list)
time.sleep(.25)
dictionary={'apple':'fruit','bush':'plant', 'carrot':'veggie'}
print(dictionary)
time.sleep(.25)
print('Now we will add \'dog\' to the dictionary.')
time.sleep(.25)
dictionary['dog']='animal'
print(dictionary)
time.sleep(.25)
del dictionary['apple']
print('now we have deleted \'apple\' from the dictionary:')
print(dictionary)
