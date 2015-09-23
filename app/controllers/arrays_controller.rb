class ArraysController < ApplicationController
  def num_1
    #=== Example ================================
    # An array is just a list of things.
    # Arrays are represented as comma-separated lists
    # that are bookended with square brackets [ ]
    #==========================================

    @result = [1, "Ruby", true, 3.14159]
    render 'arrays'
  end

  def num_2
    #=== Example ================================
    # You can pull out an item by it's position in the list.
    # But make sure you start counting at 0.
    #==========================================
    things = [1, "Ruby", true, 3.14159]

    @result = things[2] # => true
    render 'arrays'
  end

  def num_3
    #=== Problem ================================
    # Pull out the last item in the array and send it
    # down to the view.
    #==========================================
    numbers = ["one", "two", "three", "four", "five"]

    @result = numbers[4]
    render  'arrays'
  end

  def num_4
    #=== Problem ================================
    # Pull out "apples" from the array and send it
    # down to the view.
    #==========================================
    fruits = ["apples", "oranges", "bananas", "kiwis"]

    @result = fruits[0]
    render 'arrays'
  end

  def num_5
    #=== Problem ================================
    # Pull out the second neighborhood and send it
    # down to the view
    #==========================================
    neighborhoods = ["Bridgeport", "Andersonville", "Avondale", "Lincoln Park"]

    @result = neighborhoods[1]
    render 'arrays'
  end

  def num_6
    #=== Example ================================
    # You can add items to the end of an array using push()
    #==========================================
    things = [1, "Ruby", true, 3.14159]
    things.push("Rails")

    @result = things # => [1, "Ruby", true, 3.14159, "Rails"]
    render 'arrays'
  end

  def num_7
    #=== Example ================================
    # But an easier way is to use the << operator
    #==========================================
    things = [1, "Ruby", true, 3.14159]
    things << "Rails"

    @result = things # => [1, "Ruby", true, 3.14159, "Rails"]
    render 'arrays'
  end

  def num_8
    #=== Problem ================================
    # Add the color "black" to the end of the array
    #==========================================
    colors = ["red", "green", "blue"]

    @result = colors << "black"
    render 'arrays'
  end

  def num_9
    #=== Problem ================================
    # Add "Apocalypse Now" to the end of the array
    #==========================================
    classics = [
      "The Godfather",
      "The Godfather: Part II"
    ]

    @result = classics << "Apocalypse Now"
    render 'arrays'
  end

  def num_10
    #=== Problem ================================
    # Add "fútbol" and "football" to the end of the array
    #==========================================
    sports = [ "curling", "chess", "trampolining" ]

    @result = sports << "fútbol", "football"
    render 'arrays'
  end

  def num_11
    #=== Example ================================
    # You can nest arrays inside other arrays.
    # You can pull out nested items
    # by stacking square brackets
    #==========================================

    people = [
      ["Arjun", "Venkataswamy"],
      ["Lanny", "Bose"]
    ]

    @result = people[1][1] # => Bose
    render 'arrays'
  end

end
