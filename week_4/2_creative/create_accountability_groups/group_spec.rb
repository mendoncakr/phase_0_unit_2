require_relative "my_solution.rb"

describe 'group_creator' do 
	#lists to test go here
	let(:array_1) { ["John", "Kenneth", "Smith", "Naomi", "Audrie"]}

	
	it "is defined as a method" do
		defined?(group_creator).should eq 'method'
	end

	it "requires a single argument" do
		method(:group_creator).arity.should eq 1
	end	
end