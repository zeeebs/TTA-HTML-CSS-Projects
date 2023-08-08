def start(): #defining a start to the program - allows people to search for more names or search again when they dont type the name correctly the first time
    people_dictionary = {'Brett':['male', 'weight 175'],
                     'nancy': ['female', 'weight 125'],
                     'patrick':['male', 'weight 195'],
                     'briar':['female','weight 115'],
                     'adam':['male','weight 215']}
    print(people_dictionary)

    name=input('please type in a name: ').lower()
    print('you typed in the name ' + name.capitalize())
    #removed next 2 lines to change code to be more dynamic
    #persons_data = people_dictionary[name]
    #print(persons_data)

    try:
        persons_data=people_dictionary[name]
        print('name: ' + name.capitalize())
        print('sex: ' + persons_data[0])
        print('weight: '+persons_data[1])
        more() #directs the start() section to the more() section
    except:
        print('that name(as written) was not found in the dictionary')
        more()
def more():
    more = input('would you like to search for another name? ')
    if more == 'no':
        quit() #ends the program
    if more == 'yes':
        start()
    else:
        print('please enter yes or no')
        more()

start() #calls start function
