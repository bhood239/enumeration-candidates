# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program

  def find(id)
    # Your code Here
    @candidates.each do |candidate|
      if candidate.id == id
       return candidate
      end
    end
    nil
  end
  
  def experienced?(candidate)
    # Your code Here
    candidate.years_of_experience >= 2
  end
  
  def qualified_candidates(candidates)
    # Your code Here
    candidates.select do |candidate|
        github_points_over_100(candidate.github_points) &&
        ruby_or_python(candidate.languages) &&
        applied_less_than_15_days_ago(candidate.date_applied) &&
        over_18_years_old(candidate.age)
      end
  end
  
  # More methods will go below

  def github_points_over_100(github_points)
    github_points > 99
  end

  def ruby_or_python(languages)
    languages.include?('Python') || languages.include?('Ruby')
  end

  def applied_less_than_15_days_ago(date_applied)
    (Date.today - date_applied).to_i < 15
  end

  def over_18_years_old(age)
    age > 17
  end

  def ordered_by_qualifications(candidates)
    candidates.sort_by { |candidate| [-candidate.years_of_experience, -candidate.github_points] }
  end