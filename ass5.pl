car(toyota).
car(honda).
car(maruti).
car(hyundai).
car(benz).
auto(bajaj).
auto(tata).
aircraft(airbus).
helicopter(apache).
cycle(hero).
ship(queenmary).
submarine(arihant).
train(satabdi).
motorcycle(bullet).
motorcycle(yamaha).
motorcycle(duke).
truck(mahindra).
bus(volvo).


vehicle(X):-car(X);motorcycle(X);auto(X);aircraft(X);ship(X);train(X);truck(X);bus(X);submarine(X).

travel(road,X):-car(X);motorcycle(X);auto(X);truck(X);bus(X).
travel(air,X):-aircraft(X);helicopter(X).
travel(ocean,X):-ship(X);submarine(X).
travel(rail,X):-train(X).

persons(5,X):-car(X).
persons(3,X):-truck(X).
persons(35,X):-bus(X).
persons(2,X):-motorcycle(X).
persons(4,X):-auto(X).
persons(1000,X):-aircraft(X).
persons(100,X):-ship(X).
persons(2000,X):-train(X).
persons(10,X):-helicopter(X).

colour(yellow,X):-auto(X).



wheels(4,X):-car(X).
wheels(2,X):-motorcycle(X).
wheels(3,X):-auto(X);aircraft(X)
wheels(0,X):-helicopter(X).
wheels(100,X):-train(X).
wheels(12,X):-truck(X).
wheels(8,X):-bus(X).

fuel(petrol,X):-car(X);auto(X);motorcycle(X).
fuel(diesel,X):-car(X);aircraft(X);ship(X);bus(X);truck(X);train(X);helicopter(X).
fuel(electricity,X):-train(X).
fuel(nuclear,X):-submarine(X).

mileage(6,X):-car(X),(X = maruti).
mileage(2,X):-car(X),(X = benz).
mileage(4,X):-car(X),(X = hyundai).
mileage(3,X):-car(X),(X = toyota).
mileage(4,X):-car(X),(X = honda).
mileage(5,X):-auto(X),(X = bajaj).
mileage(6,X):-auto(X),(X = tata).
mileage(7,X):-bus(X),(X = volvo).
mileage(2,X):-motorcycle(X),(X = bullet).
