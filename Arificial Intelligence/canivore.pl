% File: animal_db.pl

% Facts indicating that a lion, a tiger, and a cow are animals
animal(lion).
animal(tiger).
animal(cow).

% Facts indicating that lion and tiger are carnivores
carnivore(lion).
carnivore(tiger).

% Save the code to the disk and load it in a Prolog interpreter for querying
% animal(tiger).
% animal(tiger),animal(cow).
% animal(cow),carnivore(cow).
% animal(X), carnivore(X).