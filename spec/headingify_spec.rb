require 'spec_helper'

describe Headingify do
  it "should return the input String as a proper title" do
    input = ["i'm dale, but you have to call me dragon.", 
    "i swear, i'm so pissed off at my mom.", 
    "as soon as she's of age, i'm putting her in a home.", 
    "i'm fucking miserable. i had to get up at 10 o'clock this morning!", 
    "why are you so sweaty? i was watching cops.", 
    "dad, what are you doing? it's 'shark week'!", 
    "i want to roll you into a little ball and shove you up my vagina.", 
    "i traveled 500 miles to give you my seed!", 
    "a simple string, including the preposition 'with'.",
    "this is a \%QuIcK\% test",
    "\%PI\%"]

    output = ["I'm Dale, but You Have to Call Me Dragon.", 
    "I Swear, I'm so Pissed off at My Mom.", 
    "As Soon as She's of Age, I'm Putting Her in a Home.", 
    "I'm Fucking Miserable. I Had to Get up at 10 o'clock This Morning!", 
    "Why Are You so Sweaty? I Was Watching Cops.", 
    "Dad, What Are You Doing? It's 'Shark Week'!", 
    "I Want to Roll You into a Little Ball and Shove You up My Vagina.", 
    "I Traveled 500 Miles to Give You My Seed!", 
    "A Simple String, including the Preposition 'with'.",
    "This Is a QuIcK Test",
    "PI"]

    # test regular headingify and positive safety correlation
    input.each_with_index do |s, i|
      expect(s.headingify).to eq(output[i])
      expect(s.headingify.headingified?).to be true
      expect(s.headingify.headingify_safe).to be nil
    end

    # test safe headingify
    input.each_with_index do |s, i|
      expect(s.headingify_safe).to eq(output[i])
      expect(s.headingify_safe.headingified?).to be true
      expect(s.headingify_safe.headingify_safe).to be nil
    end
  end
end
