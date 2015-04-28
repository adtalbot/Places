class Place
  define_method(:initialize) do |description| #Creates the new class 'Place' and passes in description as a parameter
    @description = description #Creates the instance variable 'description'
  end

  define_method(:description) do #Creates a method for instance variable 'description' which outputs the contents of the variable.
    @description
  end

  define_singleton_method(:all) do
    []
  end
end
