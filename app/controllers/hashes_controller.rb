class HashesController < ApplicationController
  def num_1
    #=== Example ================================
    # Hashes are kind of list in Ruby. We can
    # use them to store information that is
    # stored by a descriptor, called a 'key'.
    # Each key points to a specific value. A value
    # is accessed by typing it's corresponding
    # key inside square brackets. Hashes are
    # structured as follows:
    #
    #   { key_1 => value_1, key_2 => value_2 }
    #============================================

    name = {"first" => "Jane", "last" => "Doe"}

    @result = name["first"] # => Jane
    render "hashes"
  end

  def num_2
    #=== Example ================================
    # The params hash is a special hash we'll see
    # a lot in Rails.
    #============================================

    params  = {"name" => "Jane Doe"}

    @result = params["name"]
    render "hashes"
  end

  def num_3
    #=== Problem ================================
    # Pull out the value of "correct" from the
    # following hash.
    #============================================

    address = { "correct" => "Sears", "incorrect" => "Willis"}

    @result = "replace this string with your answer"
    render 'hashes'
  end

  def num_4
    #=== Example ================================
    # Hashes can also be nested inside each other.
    # We can access nested hashes by stacking
    # square brackets.
    #============================================

    params = { "user" =>
               { "name" => "Jane Doe",
                 "email" => "jane@example.com"
               }
             }

    @result = params["user"]["email"]
    render "hashes"
  end

  def num_5
    #=== Problem ================================
    # Pull out the value of "street" from the
    # following hash.
    #============================================

    attraction = { "address" =>
                    {
                      "street" => "Wacker Dr",
                      "direction" => "S",
                      "number" => "233",
                    }
                  }

    @result = "replace this string with your answer"
    render 'hashes'
  end

  def num_6
    #=== Example ================================
    # We can add key/value pairs to hashes the
    # same way we access hash values, except
    # we assign a value using the '=' sign.
    #============================================

    name = { "first" => "Jane" }
    name["last"] = "Doe"

    @result = "#{name['first']} #{name['last']}"
    render "hashes"
  end



  def num_7
    #=== Problem ================================
    # Edit the following code to add the key/value
    # pair of "last_name" => "Tower"
    #============================================

    attraction = { "first_name" => "Sears"}

    @result = "#{attraction['first_name']} #{attraction['last_name']}"
    render "hashes"
  end

  def num_8
    #=== Example ================================
    # You can also nest hashes and arrays
    # inside each other
    #============================================

    people = [
      {"first" => "Arjun", "last" => "Venkataswamy"},
      {"first" => "Lanny", "last" => "Bose"}
    ]

    @result = people[1]["last"] # => Bose
    render 'hashes'
  end

  def num_9
    #=== Problem ================================
    # Pull out the second product's name and
    #send it down to the view
    #============================================

    products = [
      {"name" => "Macbook pro 13in", "price" => 1299},
      {"name" => "Macbook pro 15in", "price" =>1999},
      {"name" => "Macbook air 11in", "price" => 899},
      {"name" => "Macbook air 13in", "price" => 999}
    ]

    @result = "replace this string with your answer"
    render 'hashes'
  end

  def num_10
    #=== Problem ================================
    # Pull out the Elanor's email and sent it
    # down to the view
    #============================================

    data = {
      "users" => [
        {"name" => "Joel Stephens", "email" => "joel.stephens19@example.com"},
        {"name" => "Ricky Walters", "email" => "ricky.walters24@example.com"},
        {"name" => "Eleanor Taylor", "email" => "eleanor.taylor67@example.com"},
        {"name" => "Soham Pierce", "email" => "soham.pierce58@example.com"},
        {"name" => "Virgil Cox", "email" => "virgil.cox84@example.com"}
      ]
    }

    @result = "replace this string with your answer"
    render 'hashes'
  end
end
