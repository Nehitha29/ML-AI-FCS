% Facts: Harry, Ron, and Draco are students
student(harry).
student(ron).
student(draco).

% Constraint C9: Draco likes rain
likes(draco, rain).

% Constraint C7 and C8: Draco dislikes what Harry likes and likes what Harry dislikes
likes(draco, X) :- \+ likes(harry, X).
dislikes(draco, X) :- likes(harry, X).

% Constraint: Every student is either wicked or a good Quidditch player (C4)
wicked(harry).
good_quidditch_player(harry).
wicked(ron). % Ron is wicked, inferred from other constraints.
good_quidditch_player(draco).

% Constraint: No Quidditch player likes rain (C5)
likes(X, rain) :- \+ good_quidditch_player(X).

% Constraint: Wicked students like potions (C6)
likes(X, potions) :- wicked(X).

% Rule to check if a student is good in Quidditch but does not like potions
good_quidditch_but_not_potions(Student) :-
    student(Student),
    good_quidditch_player(Student),
    \+ likes(Student, potions).
good_quidditch_but_not_potions(harry2).