//
//  main.swift
//  Test1
//
//  Created by Мырзабек Куандык on 26.07.2024.
//

import Foundation

//Задание 1

// 9 == 9
print(true)
print(9 == 9)

// 9 != 9
print(false)
print(9 != 9)

// 47 > 90
print(false)
print(47 > 90)

// 47 < 90
print(true)
print(47 < 90)

// 4 <= 4
print(true)
print(4 <= 4)

// 4 >= 5
print(false)
print(4 >= 5)

// (47 > 90) && (47 < 90)
print(false)
print((47 > 90) && (47 < 90))

// (47 > 90) || (47 < 90)
print(true)
print((47 > 90) || (47 < 90))

// !true
print(false)
print(!true)


print("\n")


//Задание 2

// Оператор `if`
var tenge = 0
if tenge == 0 {
    print("Извини, но ты на мели!")
}

// Оператор `if-else`
tenge = 300
if tenge == 0 {
    print("Извини, но ты на мели!")
} else {
    print("Вау, у тебя есть деньги на пирожки!")
}

// Оператор `if-else-if`
tenge = 2000
if tenge == 0 {
    print("Извини, но ты на мели!")
} else if tenge < 400 {
    print("Вау, у тебя есть деньги на пирожки!")
} else {
    print("Едем на Такси!")
}


print("\n")

//Задание 3

// Константы для проверки
let hasFish = true
let hasPizza = true
let hasVegan = false

// Проверка меню ресторана
if (hasFish || hasPizza) && hasVegan {
    print("Поехали!")
} else {
    print("Извините, нам нужно выбрать другое место")
}


print("\n")

//Задание 4

// Константы для проверки погоды
let isRaining = false
let temperature = 30
let isSunny = true

// Проверка, достаточно ли хороша погода
let isNiceWeather = (!isRaining || temperature > 27) && isSunny

// Условие для проверки погоды и вывода сообщения
if isNiceWeather {
    print("Я иду на прогулку!")
} else {
    print("Сегодня не лучший день для прогулки.")
}


print("\n")

//Задание 5

// Константа для определения сезона
let season = 3

// Определение сезона с помощью switch case
switch season {
case 1:
    print("Зима")
case 2:
    print("Весна")
case 3:
    print("Лето")
case 4:
    print("Осень")
default:
    print("Некорректное значение")
}


print("\n")

//Задание 6

// Список приглашенных друзей
let invitedFriends = ["Эля", "Кажи", "Бидош", "Спандияр","Сико"]

// Имя гостя, которого нужно проверить
let guest = "Кажи"

// Проверка, есть ли гость в списке
if invitedFriends.contains(guest) {
    print("Добро пожаловать")
} else {
    print("Вас нет в списке")
}

print("\n")


//Задание 7

// Возраст пассажира
let age = 10

// Определение типа билета в зависимости от возраста
if age <= 2 {
    print("Младенец")
} else if age <= 14 {
    print("Детский билет")
} else {
    print("Взрослый билет")
}


//Задание 8

// Цены двух блюд
let priceOfDish1 = 25000
let priceOfDish2 = 35000

// Использование тернарного оператора для выбора самого дорогого блюда
let mostExpensiveDish = priceOfDish1 > priceOfDish2 ? priceOfDish1 : priceOfDish2

// Вывод самой дорогой цены
print("Самое дорогое блюдо стоит \(mostExpensiveDish) тенге.")


print("\n")

//Задание 9

// Расписание на неделю
let weeklySchedule = [
    "Понедельник: Встреча с командой",
    "Вторник: Занятие спортом",
    "Среда: Работа над проектом",
    "Четверг: Визит к врачу",
    "Пятница: Ужин с друзьями",
    "Суббота: Отдых",
    "Воскресенье: Прогулка на природе"
]

// Запрос номера дня недели от пользователя
print("Введите порядковый номер дня недели (1-7):")

// Чтение ввода пользователя
if let input = readLine(), let dayNumber = Int(input), dayNumber >= 1 && dayNumber <= 7 {
    // Получение запланированного мероприятия для указанного дня
    let scheduleForDay = weeklySchedule[dayNumber - 1]
    print("Запланировано на этот день: \(scheduleForDay)")
} else {
    print("Некорректный ввод. Пожалуйста, введите число от 1 до 7.")
}


print("\n")


//Задание 10

// Словарь с названиями станций и временем в пути
let stations = [
    "A": ("Станция A", "10 минут"),
    "B": ("Станция B", "15 минут"),
    "C": ("Станция C", "20 минут"),
    "D": ("Станция D", "25 минут"),
    "E": ("Станция E", "30 минут")
]

func getStationInfo(for letter: String) {
    // Приведение буквы к верхнему регистру
    let uppercasedLetter = letter.uppercased()
    
    // Проверка наличия станции и вывод информации
    switch uppercasedLetter {
    case "A", "B", "C", "D", "E":
        if let station = stations[uppercasedLetter] {
            print("Станция: \(station.0), Время в пути: \(station.1)")
        }
    default:
        print("Станции с таким кодом буквы нет. Пожалуйста, введите букву снова.")
    }
}

// Запрос буквы от пользователя
print("Введите букву станции (A, B, C, D, E):")

// Чтение ввода пользователя
if let input = readLine() {
    getStationInfo(for: input)
} else {
    print("Ошибка ввода.")
}


print("\n")


//Задание 11

// Функция для получения названия пальца по порядковому номеру
func getFingerName(for number: Int) {
    switch number {
    case 1:
        print("Большой палец")
    case 2:
        print("Указательный палец")
    case 3:
        print("Средний палец")
    case 4:
        print("Безымянный палец")
    case 5:
        print("Мизинец")
    default:
        print("Неверный номер пальца. Пожалуйста, введите число от 1 до 5.")
    }
}

// Запрос номера пальца от пользователя
print("Введите порядковый номер пальца руки (1-5):")

// Чтение ввода пользователя
if let input = readLine(), let fingerNumber = Int(input) {
    getFingerName(for: fingerNumber)
} else {
    print("Ошибка ввода. Пожалуйста, введите корректный номер.")
}









