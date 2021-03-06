def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT books.title, year FROM books
  INNER JOIN series
  ON books.series_id = series.id
  WHERE series.id = 1
  "
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT name, motto FROM characters
  ORDER BY LENGTH(motto) DESC LIMIT 1"
end

def select_value_and_count_of_most_prolific_species
  "SELECT species, COUNT(id) FROM characters
  GROUP BY species
  ORDER BY COUNT(id) DESC LIMIT 1
  "
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name from series
  INNER JOIN authors
  ON authors.id = author_id
  INNER JOIN subgenres
  ON subgenres.id = subgenre_id
  "
end

def select_series_title_with_most_human_characters
  "SELECT series.title FROM series
  INNER JOIN characters
  ON series_id = series.id
  WHERE species = 'human'
  GROUP BY series.id
  ORDER BY COUNT(species) DESC 
  LIMIT 1
  "
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT name, COUNT(name) FROM characters
  INNER JOIN character_books
  ON character_id = characters.id
  GROUP BY name
  ORDER BY COUNT(name) DESC
  "
end
