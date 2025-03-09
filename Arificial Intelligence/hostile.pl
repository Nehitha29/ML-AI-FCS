% Facts
american(west). % West is American
enemy(nono, america). % Nono is an enemy of America
missile(m1). % M1 is a missile
owns(nono, m1). % Nono owns M1

% Rules
weapon(X) :- missile(X). % All missiles are weapons
hostile(X) :- enemy(X, america). % Enemies of America are hostile
sells(west, X, nono) :- missile(X), owns(nono, X). % All missiles owned by Nono were sold by West
criminal(X) :-
    american(X),
    weapon(Y),
    sells(X, Y, Z),
    hostile(Z). % It is a crime for an American to sell weapons to hostile nations
