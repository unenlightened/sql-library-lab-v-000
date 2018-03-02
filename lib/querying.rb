def select_books_titles_and_years_in_first_series_order_by_year
  <<-DOC
  SELECT books.title, books.year FROM books
  JOIN series ON series.id = books.series_id
  WHERE series.id = 1;
  DOC
end

def select_name_and_motto_of_char_with_longest_motto
  <<-DOC
  SELECT name, motto FROM characters
  ORDER BY LENGTH(motto) DESC
  LIMIT 1;
  DOC
end


def select_value_and_count_of_most_prolific_species
  <<-DOC
  SELECT species, COUNT(*) FROM characters
  GROUP BY species
  ORDER BY species DESC
  LIMIT 1;
  DOC
end

def select_name_and_series_subgenres_of_authors
  <<-DOC
  SELECT authors.name, subgenres.name FROM authors
  JOIN series ON series.author_id = authors.id
  JOIN subgenres ON subgenres.id = series.subgenre_id
  DOC
end

def select_series_title_with_most_human_characters
  <<-DOC
  SELECT series.title FROM series
  JOIN characters ON characters.series_id = series.id
  WHERE characters.species = 'human'
  GROUP BY series.id
  ORDER BY COUNT(*) DESC
  LIMIT 1;
  DOC
end

def select_character_names_and_number_of_books_they_are_in
  <<-DOC
  SELECT characters.name, COUNT(*) from character_books
  JOIN characters ON characters.id = character_books.character_id
  GROUP BY characters.name
  ORDER BY COUNT(*) DESC;
  DOC
end
