import time
import random

actual_seed = 0

start_time = 1648000000
end_time = 1649999999

print ("Trying ", end_time-start_time, " seeds")

seed_try = start_time
extracted_set = [19,80,32,51,15]
solution = []

while seed_try != end_time:
    random.seed(seed_try)
    correct_seed = True
    print_random = False
    if seed_try == actual_seed:
        print_random = True

    for extracted in extracted_set:
        r = random.randint(1, 90)

        if r != extracted:
            correct_seed = False
            break

    if correct_seed:
        print("Found!!")
        while len(solution) < 5:
            r = random.randint(1, 90)
            if r not in solution:
                solution.append(r)
        print(*solution)
        break
    else:
        seed_try +=1

if not correct_seed:
    print("fail") 

