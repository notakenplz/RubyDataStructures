class MySet
  # To change this template use File | Settings | File Templates.

  def initialize()
    @point = 0
    @set = []
  end

  def add(val)
    if self.contains(val)
      return
    end
    @set[@point] = val
    @point += 1
    print @set
    puts @point
  end

  def remove(val)
    if !self.contains(val)
        return nil
    else
      @point.times do |x|
        if @set[x] == val
          @set[x] = nil
          @set[x] = @set[@point-1]
          @set[@point] = nil
          @point -= 1
          return
        end
      end
    end
  end

  def contains(val)
    @point.times do |x|
      if @set[x] == val
        return true
      end
    end
    false
  end

  def is_empty?
    @point == 0 ? true : false
  end
end

=begin
      it "should act like a set" do
      #To change this template use File | Settings | File Templates.
      #true.should == false
      one_element_set = set.new
      one_element_set.add(1)
      one_element_set.contains(1).should == true
    end
=end