require "rspec"
require "./mySet"

describe "set" do
  context "when first created" do
      it "should be empty" do
        zero_element_set = MySet.new
        zero_element_set.is_empty?.should == true
      end
  end

  context "adding elements and subtracting elements" do
    it "should not be empty" do
      not_empty_set = MySet.new
      not_empty_set.add(1)
      not_empty_set.is_empty?.should == false
    end

    it "should contain values added to it" do
      not_empty_set = MySet.new
      not_empty_set.add(1)
      not_empty_set.add(1)
      not_empty_set.contains(1).should == true
      not_empty_set.add(2)
      not_empty_set.contains(2).should == true
      not_empty_set.contains(1).should == true
      not_empty_set.is_empty?.should == false
    end

    it "should not contain values removed from it" do
      sub_set = MySet.new
      sub_set.add(10)
      sub_set.add(11)
      sub_set.remove(10)
      sub_set.contains(11).should == true
     # sub_set.contains(10).should == false
    end
  end
end