require './lib/calculator'

describe Calculator do
  it "is a Calculator" do
    expect(subject).to be_a(Calculator)
  end

  describe ".total" do
    it "returns zero by default" do
      expect(subject.total).to eq(0)
    end
  end

  describe ".add(number)" do
    it "adds the number to the total" do
      subject.add(3)
      expect(subject.total).to eq(3)
    end

    it "handles adding floating point numbers" do
      subject.add(3.33)
      expect(subject.total).to eq(3.33)
    end

    it "handles multiple calls" do
      subject.add(5)
      subject.add(3)
      expect(subject.total).to eq(8)
    end

    it "is chainable" do
      subject.add(5).add(3)
      expect(subject.total).to eq(8)
    end

    it "handles strings" do
      subject.add("5")
      expect(subject.total).to eq(5)
    end
  end

  describe ".subtract(number)" do
    it "subtracts the number from the total" do
      subject.subtract(3)
      expect(subject.total).to eq(-3)
    end

    it "handles subtracting floating point numbers" do
      subject.subtract(3.33)
      expect(subject.total).to eq(-3.33)
    end

    it "handles multiple calls" do
      subject.subtract(5)
      subject.subtract(3)
      expect(subject.total).to eq(-8)
    end

    it "is chainable" do
      subject.subtract(5).subtract(3)
      expect(subject.total).to eq(-8)
    end

    it "handles strings" do
      subject.subtract("5")
      expect(subject.total).to eq(-5)
    end
  end

  describe ".multiply(number)" do
    before(:each) do
      subject.add(1)
    end

    it "multiplies the number by the total" do
      subject.multiply(3)
      expect(subject.total).to eq(3)
    end

    it "handles multiplying floating point numbers" do
      subject.multiply(3.33)
      expect(subject.total).to eq(3.33)
    end

    it "handles multiple calls" do
      subject.multiply(5)
      subject.multiply(3)
      expect(subject.total).to eq(15)
    end

    it "is chainable" do
      subject.multiply(5).multiply(3)
      expect(subject.total).to eq(15)
    end

    it "handles strings" do
      subject.multiply("5")
      expect(subject.total).to eq(5)
    end
  end

  describe ".divide(number)" do
    # before(:each) do
    #   subject.divide(1)
    # end
      it "divides the total by the number" do
        subject.divide(3)
        expect(subject.total).to eq(0)
      end

      it "handles dividing floating point numbers" do
        subject.divide(3.33)
        expect(subject.total).to eq(0)
      end

      it "handles multiple calls" do
        subject.divide(5)
        subject.divide(3)
        expect(subject.total).to eq(0)
      end

      it "is chainable" do
        subject.divide(5).divide(3)
        expect(subject.total).to eq(0)
      end

      it "handles strings" do
        subject.divide("5")
        expect(subject.total).to eq(0)
      end
    end
  # end
end

