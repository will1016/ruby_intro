class FormsController < ApplicationController
  def num_1_display
    #=== Example ================================
    # All forms require two controller actions:
    # one to display the form and one to process
    # the form. This action displays a form
    #============================================

    render "num_1_display"
  end

  def num_1_process
    #=== Example ================================
    # All forms require two controller actions:
    # one to display the form and one to process
    # the form. This action processes a form
    #============================================

    @result = params["your_name"]
    render "num_1_process"
  end

  def num_2
    #=== Example ================================
    # You don't have to use a form to get data
    # into the params hash
    # If a user navigated to /forms/2?key=value
    # then:
    #============================================

    @result = params["key"]
    render "num_2"
  end

  def num_3_display
    #=== Example ================================
    # You can also have multiple parameters in
    # the params hash
    #============================================
    render "num_3_display"
  end

  def num_3_process
    #=== Example ================================
    # You can also have multiple parameters in
    # the params hash
    #============================================

    @name = params["name"]
    @activity = params["activity"]
    render "num_3_process"
  end

  def num_4_display
    #=== Problem ================================
    # - A user should be able to navigate to
    # /forms/4 and enter in how they're doing.
    # - Once the user submits, she should be
    # taken to a page that repeats how she's doing.
    # For example, "Apparently, you're fine."
    #============================================

      render "num_4_display"
    end
    def num_4_process
      @name = params["name"]
      render "num_4_process"
      end

  def num_5_display
    #=== Problem ================================
    # - A user should be able to navigate to
    # /forms/5 and see a sign in form
    # - When the user hits submit, she should get
    # taken to a page that confirms her sign-in
    # - Make sure both pages are styled with Bootstrap
    #============================================

    render "num_5_display"
  end
  def num_5_process
      @id = params['id']
    render "num_5_process"
  end

  def num_6_display
    #=== Problem ================================
    # - A user should be able to navigate to
    # /forms/6 and see a mad libs form
    # - When the user hits submit, he should get
    # taken to a page that uses all his submitted
    # words in a story
    # - Make sure both pages are styled with Bootstrap
    # If you're unfamiliar with mad libs, check out:
    # http://www.madglibs.com/
    #============================================

    render "num_6_display"
  end
end
