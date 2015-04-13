class FormsController < ApplicationController
  def num_1_display
    ## example
    # displaying a form
    render "num_1_display"
  end

  def num_1_process
    ## example
    # processing a form
    @result = params["your_name"]
    render "num_1_process"
  end

  def num_2
    ## example
    # another entry point to the params hash
    # if a user navigated to /forms/2/key=value then:
    @result = params["key"]
    render "num_2"
  end

  def num_3_display
    ## example
    # multiple parameters
    render "num_3_display"
  end

  def num_3_process
    ## example
    # multiple parameters
    @name = params["name"]
    @activity = params["activity"]
    render "num_3_process"
  end

  def num_4_display
    ## problem
    # - A user should be able to navigate to /forms/4 and
    # enter in how they're doing.
    # - Once the user submits, she should be taken to a page
    # that repeats how she's doing. For example, "Apparently, you're fine."

    ## your code starts here ##

    ## your code ends here ##
    render "num_4_display"
  end

  def num_5
    ## problem
    # - A user should be able to navigate to /forms/5 and
    # see a sign in form
    # - When the user hits submit, she should get taken to
    # a page that confirms her sign-in
    # - Make sure both pages are styled with Bootstrap

    ## your code starts here ##

    ## your code ends here ##
    render "num_5_display"
  end

  def num_6
    ## problem
    # - A user should be able to navigate to /forms/5 and
    # see a mad lib form
    # - When the user hits submit, he should get taken to
    # a page that uses all his submitted words in a story
    # - Make sure both pages are styled with Bootstrap
    # If you're unfamiliar with mad libs, check out:
    # http://www.madglibs.com/

    ## your code starts here ##

    ## your code ends here ##
    render "num_6_display"
  end

end
