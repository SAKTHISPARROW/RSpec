class Actor 
    def initialize(name)
        @name = name
    end

    def ready?
        sleep(3)
        true
    end

    def act
        "I love u baby"
    end

    def fall_of_ladder
        "call my agent! no way!"
    end

    def light_on_fire
        false
    end
end

class Movie
    attr_reader :actor

    def initialize(actor)
        @actor = actor
    end

    def start_shooting
        if actor.ready?
            actor.act
            actor.fall_of_ladder
            actor.light_on_fire
            actor.act
        end
    end
end

actor =  Actor.new('John wick')
movie = Movie.new(actor)
movie.start_shooting


RSpec.describe Movie do
    let(:stuntman) { double("Mr.Danger", ready?: true, act: "I love u baby",  fall_of_ladder: "Hey", light_on_fire: "bey")}
    subject{described_class.new(stuntman)}

    describe '#start_shooting method' do
        it 'expects an actor to do 3 actions' do
            expect(stuntman).to receive(:ready?)
            expect(stuntman).to receive(:act).twice
            expect(stuntman).to receive(:fall_of_ladder)
            # expect(stuntman).to receive(:light_on_fire)
            # expect(stuntman).to receive(:light_on_fire).once
            expect(stuntman).to receive(:light_on_fire).exactly(1).times
            expect(stuntman).to receive(:light_on_fire).at_most(1).times   
            
            
            subject.start_shooting
        end
    end
end