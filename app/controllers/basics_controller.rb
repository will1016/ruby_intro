class BasicsController < ApplicationController
  def num_1
    #=== Example ================================
    # Instance variables are a special kind of
    # container that begins with an '@' sign.
    # They're used to send information from a
    # controller action to its view
    #============================================

    @variable_name = "text on the page"
    render 'initial'
  end

  def num_2
    #=== Example ================================
    # Normal variables are used to store information
    # in programming. They don't need to start with
    # an '@' sign, but they do have to start with
    # a lowercase letter. Normal variables can't
    # be accessed outside of their context, in this
    # case, between the 'def' and 'end' of this
    # controller action
    #============================================

    name = "Jane Doe"
    @result = name
    render "basics"
  end

  def num_3
    #=== Example ================================
    # The essential pattern in Ruby:
    #    variable = object.method
    #============================================

    name = "jane doe"
    @result = name.upcase
    render "basics"
  end

  def num_4
    #=== Problem ================================
    # Find a way to capitalize the data stored
    # in the 'name' variable before it's assigned
    # to the '@result' variable.
    #============================================

    name = "jane doe"
    @result = name.capitalize
    render "basics"
  end

  def num_5
    #=== Example ================================
    # You can combine strings by using the '+'
    # operator.
    #============================================

    first = "Jane"
    last = "Doe"
    @result = first + " " + last
    render "basics"
  end

  def num_6
    #=== Problem ================================
    # Combine the following variables to create
    # a boring conversation and assign
    # it to the '@result' variable.
    #============================================

    weather = "So it's pretty cold out today, huh?"
    health = "Let me tell you about my last visit to the doctor."
    kids = 'My baby did the funniest thing yesterday.'
    workout = "I think at the gym today I'm going to do 30 min of cardio. It's chest and bi's today so I'm going to do 5 sets on the bench and then switch it up with..."
    sleep = "Also, I had the most intersting dream last night..."

    @result = weather + " " + health + " " + kids + " " + workout + " " + sleep
    render "basics"
  end

  def num_7
    #=== Example ================================
    # Some methods don't need to be explicitly
    # called on an object, so there's no 'noun'
    # in front of them. In this example, the
    # method also takes inputs that customize
    # how it runs. We call these inputs
    # 'arguments', and pass them to the method
    # inside parenthesis. The method is called
    # 'rand' and it takes in a single argument
    # of '100'
    #============================================

    @result = rand(100)
    render "basics"
  end

  def num_8
    #=== Problem ================================
    # Create a random number between 3 and 7.
    #============================================

    @result = rand(3..7)
    render "basics"
  end

  def num_9
    #=== Example ================================
    # We can use the 'inspect' method to take
    # a look at the raw data inside an object
    #============================================

    name = "Jane Doe"
    @result = name.inspect
    render "basics"
  end

  def num_10
    #=== Example ================================
    # Make sure you convert integers to strings
    # before combining them with other strings
    #============================================

    first = "Jane"
    last = "Doe"
    lucky_num = rand(1..100) + 7
    @result = "Hello, " + first + " " + last + ", your lucky number is " + lucky_num.to_s
    render "basics"
  end

  def num_11
    #=== Problem ================================
    # Combine the following variables into a
    # larger string and send it down in the
    # '@result' variable
    #============================================

    phrase1 = "Ugh, I spent"
    money = rand(20) + 10
    currency = "dollars"
    phrase2 = "at the"
    restaurant = "Taco Bell"
    phrase3 = "drive through yesterday. I'm"
    age = rand(50) + 18
    phrase4 = "years old. What am I doing with my life?"

    @result = phrase1 + "  " + money.to_s + " " + currency + " " +phrase2 + " " + restaurant + " " + phrase3 + " " + age.to_s + " " + phrase4
    render "basics"
  end

  def num_12
    #=== Example ================================
    # String interpolation is another way to
    # combine integers and strings. You can
    # actually run any Ruby code inside the
    # interpolation tags and the result will get
    # inserted into the string.
    #============================================

    first = "Jane"
    last = "Doe"
    lucky_num = rand(1..100) + 7
    @result = "Hello, #{first} #{last}, your lucky number is #{lucky_num}"
    render "basics"
  end

  def num_13
    #=== Problem ================================
    # Combine the following variables into a
    # larger string using string interpolation
    # and send it down in the '@result' variable
    #============================================

    phrase1 = "Ugh, I spent"
    money = rand(20) + 10
    currency = "dollars"
    phrase2 = "at the"
    restaurant = "Taco Bell"
    phrase3 = "drive through yesterday. I'm"
    age = rand(50) + 18
    phrase4 = "years old. What am I doing with my life?"

    @result = "#{phrase1} #{money} #{currency} #{phrase2} #{restaurant} #{phrase3} #{age} #{phrase4}"
    render "basics"
  end

  def num_14
    #=== Problem ================================
    # Write code that counts the number of
    # characters in the name variable.
    #============================================

    name = "Jane Doe"

    @result = name.length
    render "basics"
  end

  def num_15
    #=== Problem ================================
    # Write code that replaces all the
    # e's in the name variable with 3's.
    #============================================

    name = "Jane Doe"

    @result = name.gsub!('e', '3')
    render "basics"
  end
end
