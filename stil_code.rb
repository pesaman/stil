class PERSON
childhood:12, teenager:19, adult:50
 attr_accessor :name
    def initialize(name,age)
    @name = name
    @age = age
    end

    def life_stage
        if @age <:childhood
            :childhood
        elsif @age<:teenager
            :teenager
        elsif @age<:adult
            :adult
        end
    end

    def legal
     @age >= 19
    end
end


# Esta parte del código son pruebas. 
# Antes y después deben de imprimir puros "true"
fernando = PERSON.new("Fernando",5)
juan = PERSON.new("Juan",45)
laura = PERSON.new("Laura",87)
andrea = PERSON.new("Andrea",13)

puts fernando.legal == false
puts juan.legal == true
puts laura.legal == true
puts andrea.legal == false

puts fernando.life_stage == :childhood
puts juan.life_stage == :adult
puts laura.life_stage == :elder
puts andrea.life_stage == :teenager

puts laura.age == 87
laura.name = "Ximena"
puts laura.name == "Ximena"