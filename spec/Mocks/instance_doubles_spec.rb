class Person
    def greeting(seconds)
        sleep(seconds)
        "Hello"
    end
end

RSpec.describe Person do
    describe "regular double" do
        it "can implement any method" do
            person = double(greeting: "Hello", b: 10)
            expect(person.greeting).to eq("Hello")
        end
    end

    describe "instance double" do
        it "can only implement method that are defined on the class" do
            # person = instance_double(Person, greeting: "Hello", b: 10)
            person = instance_double(Person)
            allow(person).to receive(:greeting).with(3).and_return("Hello")
            expect(person.greeting(3)).to eq("Hello")
        end
    end
end