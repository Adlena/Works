# 1) Создать 2 переменных типа String с разными значениями
str_1 = 'Ann'
str_2 = 'Mike'

# 2) Создать 4 переменных типа Integer с разными значениями
int_1 = 2
int_2 = 23
int_3 = 31
int_4 = 15

# 3) Создать 3 переменных типа Float с разными значениями
flo_1 = 2.5
flo_2 = 3.8
flo_3 = 17.8

# 4) Реализовать 15 варианта сравнения int переменных с операторами >, <, >=, <=, != и условными выражениями (end, or, not). Pезультаты весвести в консоль.
print('1)', int_1 > int_2)
print('2)', int_3 < int_4)
print('3)', int_1 >= int_3)
print('4)', int_4 <= int_2)
print('5)', int_2 != int_1)
print('6)', int_2 == int_1)
print('7)', int_4 != int_1 < int_2)

if int_3 > int_4 < int_1:
    print("8) True!!!")
else:
    print("8) False!!!")

if int_4 != int_2:
    print("9) Yes!")
    if int_3 >= int_2:
        print("9) Exelent!")
else:
    print("9) Ooops!")

if int_1 != int_2 and int_4 <= int_3:
    print("10) Congrats!")

if int_3 > int_1 or int_2:
    if int_2 < int_1 and int_3 <= int_4 or int_1 == int_3:
        print("11) Maybe")
    elif int_2 != int_4:
        print("11) It`s true")
    else:
        print("11) Sorry!!!")

if int_4 != int_1:
    if int_2 > int_1 or int_3 >= int_2:
        if int_3 != int_1 and int_2:
            print("12) True!")
else:
    print("12) False(")

if int_2 > int_3:
    print("13) Good")
elif int_1 and int_2 > int_3:
    print("13) Ok")
elif int_4 != int_2:
    print("13) Wow")
else:
    print("13) Try again")

if int_2 <= int_1 or int_3 != int_1:
    if int_2 <= int_1 or int_3 == int_1:
        print("14) Are you sure?")
    elif int_1 == int_3:
        print("14) No")
    if int_4 < int_3:
        print("14) Yes")

if int_3 == int_1:
    print("15) No")
elif int_4 != int_1:
    print("15) Try again")
    if int_1 > int_4:
        print("15) True!")
    else:
        print("15) Another good answer!")

# 5) Реализовать 9 вариантов сравнения Float переменных с операторами >, <, >=, <=, !=. Pезультаты весвести в консоль.
flo_1 = 2.5
flo_2 = 3.8
flo_3 = 17.8

print('1)', flo_1 > flo_3)
print('2)', flo_2 < flo_1)
print('3)', flo_1 >= flo_2)
print('4)', flo_3 <= flo_1)
print('5)', flo_2 != flo_3)
print('6)', flo_1 >= flo_3)
if flo_1 != flo_3:
    print("7) Yes")

if flo_3 < flo_2:
    print('8) Not shure')
else:
    print('8) Try again')

if flo_2 <= flo_1:
    print('9) Not shure')
elif flo_2 != flo_3:
    print('9) Yes!')

# 7) Сделать скрипт используя функцию input().
#    1. Функция должна на вход принимать целое число.
#    2. Выводить должна "Вы вели число = (введённое число) которое (меньше/больше/равно) 30"
print('7) Введите число и нажмите Enter:')
num = int(input())
num_1 = 30
if num < num_1:
    print('Вы ввели число =', num, (', которое меньше 30'))
elif num > num_1:
    print('Вы ввели число =', num, (', которое больше 30'))
elif num == num_1:
    print('Вы ввели число =', num, (', которое равно 30'))

# 8) Сделать скрипт используя функцию input().
#    1. Функция должна на вход принимать целое число.
#    2. Внутри функции должно сгенерироваться рандомное целое число (import random)...(random.randint(1, 100))
print('8) Введите число и нажмите Enter:')
num = int(input())
import random

num_2 = (random.randint(1, 100))
if num < num_2:
    print('Вы ввели число =', num, ', которое меньше сгенерированному числу', num_2)
if num > num_2:
    print('Вы ввели число =', num, ', которое больше сгенерированному числу', num_2)
elif num == num_2:
    print('Вы ввели число =', num, ', которое равно сгенерированному числу', num_2)

# 9) Сделать скрипт используя функцию input().
#   1. Функция должна на вход принимать целое число.
#   2. Внутри функции должно сгенерироваться рандомное 2 целых числа (import random)...(random.randint(1, 100))
#   3. Выводить должна "Вы вели число = (введённое число) которое (меньше/больше/равно и меньше/больше/равно) сгенерированному числу"
print('9) Введите число и нажмите Enter:')
num = int(input())
import random

num_2 = (random.randint(1, 100))
num_3 = (random.randint(1, 100))
if num < num_2 and num < num_3:
    print('Вы ввели число =', num, ', которое меньше сгенерированному числу', num_2, 'и меньше сгенерированному числу',
          num_3)
if num < num_2 and num > num_3:
    print('Вы ввели число =', num, ', которое меньше сгенерированному числу', num_2, 'и больше сгенерированному числу',
          num_3)
if num < num_2 and num == num_3:
    print('Вы ввели число =', num, ', которое меньше сгенерированному числу', num_2, 'и равно сгенерированному числу',
          num_3)
if num > num_2 and num < num_3:
    print('Вы ввели число =', num, ', которое больше сгенерированному числу', num_2, 'и меньше сгенерированному числу',
          num_3)
if num > num_2 and num > num_3:
    print('Вы ввели число =', num, ', которое больше сгенерированному числу', num_2, 'и больше сгенерированному числу',
          num_3)
if num > num_2 and num == num_3:
    print('Вы ввели число =', num, ', которое больше сгенерированному числу', num_2, 'и равно сгенерированному числу',
          num_3)
if num == num_2 and num < num_3:
    print('Вы ввели число =', num, ', которое равно сгенерированному числу', num_2, 'и меньше сгенерированному числу',
          num_3)
if num == num_2 and num > num_3:
    print('Вы ввели число =', num, ', которое равно сгенерированному числу', num_2, 'и больше сгенерированному числу',
          num_3)
if num == num_2 and num == num_3:
    print('Вы ввели число =', num, ', которое равно сгенерированному числу', num_2, 'и равно сгенерированному числу',
          num_3)
