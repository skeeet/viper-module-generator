require 'Thor'
require 'vipergen'
module Vipergen
  class ViperThor < Thor
	desc "generate", "Generate a VIPER module"
	option :language, :required => false, :default => 'objc', :type => :string, :desc => "The language of the generated module (swift, objc)"
	option :template, :required => false, :default => 'default', :type => :string , :desc => "Template for the generation"
	option :path, :required => true, :type => :string , :desc => "Path where the output module is going to be saved"
	def generate(name)
	   Vipergen::Generator.generate_viper(options[:template], options[:language], name, options[:path])
	end
  end
end