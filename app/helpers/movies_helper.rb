module MoviesHelper
  def revenue(movie)
    if movie.flop?
      "Flop!"
    else
      number_to_currency(movie.total_gross, precision: 0)
    end
  end


  def prettyDate(movie)
    movie.released_on.year
  end

  def trimmedDescription(movie)
  
    if movie.description.length > 80
      return 
    end
  end
end
