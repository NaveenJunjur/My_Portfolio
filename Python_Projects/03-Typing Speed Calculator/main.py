from time import *
import random as r
def mistake(paratest, usertest):
    error = 0
    for i in range(len(paratest)):
        try:
            if paratest[i] != usertest[i]:
                error = error + 1
        except:
            error = error + 1
    return error


def speed_time(time_s, time_e, user_input):
    time_delay = time_e - time_s
    time_R = round(time_delay,2)
    speed = len(user_input)/time_R
    return round(speed)
while True:
    print()
    check = input("Ready to test(yes/no): ")
    if check == "yes":
        test = ["A paragraph is a self-contained unit of discourse in writing dealing with a particular point or idea.","My name is Naveen","This project is based on calculating the speed of your typing"]
        test1 = r.choice(test)
        print("*****Typing Speed*****")
        print(test1)
        print()
        print()
        time_1 = time()
        test_input = input("Type here: ")
        time_2 = time()
        print("Speed: ",speed_time(time_1, time_2, test_input),"words/sec")
        print("Error: ",mistake(test1, test_input))
    elif check == "no":
        print("Thank you")
        break
    else:
        print("Wrong input")
      
