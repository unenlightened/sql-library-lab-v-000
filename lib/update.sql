UPDATE characters SET species = 'Martian' WHERE (SELECT MAX(id) FROM characters);
