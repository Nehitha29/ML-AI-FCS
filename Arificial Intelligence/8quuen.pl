% Main predicate to solve the N-Queens problem
n_queens(N, Board) :-
    length(Board, N),                 % The board has N positions (one for each row)
    Board ins 1..N,                   % Queens can only be placed in columns 1 to N
    all_distinct(Board),              % Ensure no two queens are in the same column
    safe_queens(Board),               % Ensure queens do not attack each other diagonally
    label(Board).                     % Assign values to the board (labeling)

% Predicate to ensure queens are safe from diagonal attacks
safe_queens([]).
safe_queens([Queen|Others]) :-
    safe_from_diagonal(Queen, Others, 1),
    safe_queens(Others).

% Helper predicate to check diagonal safety
safe_from_diagonal(_, [], _).
safe_from_diagonal(Queen, [Other|Others], Dist) :-
    abs(Queen - Other) =\= Dist,      % Check absolute difference to ensure no diagonal attacks
    NextDist is Dist + 1,
    safe_from_diagonal(Queen, Others, NextDist).
