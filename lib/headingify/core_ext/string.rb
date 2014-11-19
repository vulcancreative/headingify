class String
  def headingify
    #
    # built to syntactically supercede String.[titlecase|titleize]
    #
    # example : "garlic is as \%GOOD\% as ten mothers"
    # yields  : "Garlic Is as GOOD as Ten Mothers"
    #
    # based on rules in The Chicago Manual of Style: e. 16 paragraph 8.155
    # inspired by http://titlecapitalization.com/
    # © 2014 Copyright Chris Calo. Vulcan Creative, LLC.
    #

    # http://en.wikipedia.org/wiki/English_articles
    articles = %w[a an the]

    # http://en.wikipedia.org/wiki/Conjunction_(grammar)
    conjunctions = %w[and but or nor for yet so]

    # http://en.wikipedia.org/wiki/List_of_English_prepositions
    prepositions = %w[a abaft aboard about above absent across afore after 
    against along alongside amid amidst among amongst an anenst apropos 
    apud around as aside astride at athwart atop barring before behind 
    below beneath beside besides between beyond but by circa concerning 
    despite down during except excluding failing following for forenenst 
    from given in including inside into like mid midst minus modulo near 
    nigh next notwithstanding o' of off on onto opposite out outside over 
    pace past per plus pro qua regarding round sans save since than through 
    thru throughout thruout til till times to toward towards under 
    underneath unlike until unto up upon versus via vice vis-a-vis 
    vis-à-vis with within without worth]

    # combine for ease of iteration
    blacklist = (articles + conjunctions + prepositions).uniq!

    # prepare initial string for modification
    working = self.split

    # capitalize only what's necessary
    working.each_with_index do |(s), i|
      working[i] = /\\%(.*)\\%/.match(s)[1] if s.include?("\%")
      blacklist.include?(s) ? s.downcase! : s.capitalize!
    end

    working.join(" ")
  end
  
  def headingify!
    replace self.headingify
  end
end
