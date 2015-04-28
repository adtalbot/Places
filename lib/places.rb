class Place
  @@all_places = [] #Declares a class variable 'all_places' as an empty array

  define_method(:initialize) do |description| #Creates the new class 'Place' and passes in description as a parameter
    @description = description #Creates the instance variable 'description'
  end

  define_method(:description) do #Creates a method for instance variable 'description' which outputs the contents of the variable.
    @description
  end

  define_singleton_method(:all) do #Creates class method .all which returns the contents of the class variable 'all_places'.
    @@all_places
  end

  define_method(:save) do #Creates a method to take the user input and push it into the 'all_places' array.
    @@all_places.push(self)
  end

  define_singleton_method(:clear) do #Creates a class method to clear all data from the 'all_tasks' array.
    @@all_places = []
  end
end
