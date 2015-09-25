class ParamsController < ApplicationController
  def num_1
    #=== Example ================================
    # Accessing the params hash
    #============================================

    @result = params["name"]
    render "num_1"
  end

  def num_2
    #=== Problem ================================
    # - A user should be able to navigate to
    # /params/2/blue and see a blue page.
    # - A user should be able to navigate to
    # /params/2/green and see a green page.
    #============================================
    @color = params["color"]
    render "num_2"
  end

  def num_3
    #=== Problem ================================
    # - A user should be able to navigate to
    # /params/3/200/300 and see a colored box
    # that's 200px wide and 300px high.
    # - A user should be able to navigate to
    # /params/3/100/150 and see a colored box
    # that's 100px wide and 150px high.
    #
    # Build off of the code in the view
    #============================================

    @width = params["width"]
    @height = params["height"]
    render "num_3"
  end
end
