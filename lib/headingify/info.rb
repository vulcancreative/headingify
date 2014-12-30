module Headingify
  TITLE          = "Ruby String.headingify Core Extension"
  VERSION        = "1.2.1"
  UPDATE         = "2014-12-29"
  REVISION       = "43"
  USAGE          = "headingify \"string\" | \"an \\%ESCAPED\\% string\""
  EXAMPLE_INPUT  = "\"garlic is as \\%GOOD\\% as ten mothers\""
  EXAMPLE_OUTPUT = "Garlic Is as GOOD as Ten Mothers"

  def self.usage
    "usage: #{USAGE}"
  end

  def self.example
    "input : #{EXAMPLE_INPUT}\nyield : #{EXAMPLE_OUTPUT}"
  end

  def self.help
    "#{Headingify.usage}\n\n#{Headingify.example}\n" 
  end
end
