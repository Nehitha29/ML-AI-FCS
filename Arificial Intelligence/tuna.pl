% Facts
loves_all_animals(jack).       % Jack loves all animals
animal(cat).                   % A cat is an animal
name(cat, tuna).               % The cat is named Tuna

% Rules
loved_by_someone(X) :- 
    animal(X), 
    loves_all_animals(Y).      % Anyone who loves all animals loves every animal universally.

loved_by_no_one(X) :- 
    kills(X, _).               % Anyone who kills an animal is loved by no one.

% Exclusive killing scenario: Either Jack or Curiosity killed the cat.
killed(jack, cat) :- not(killed(curiosity, cat)). 
killed(curiosity, cat) :- not(killed(jack, cat)).

% Jack cannot kill any animal because he loves all animals.
kills(jack, X) :- 
    animal(X), 
    \+ loves_all_animals(jack).


