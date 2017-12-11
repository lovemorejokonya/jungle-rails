require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    # validation tests/examples here
    # it { is_expected.to validate_presence_of(:name) }
    # it { is_expected.to validate_presence_of(:price) }
    # it { is_expected.to validate_presence_of(:quantity) }
    # it { is_expected.to validate_presence_of(:category) }

    it "Should save record successfully if all fields are supplied" do
      before_count = Product.count
      @category = Category.new(name: "Computers")
      @product = Product.create(
        name: "LoveJ",
        price: 30,
        quantity: 12,
        category: @category
        )
      expect(Product.count).not_to eq(before_count)
    end

    it "Name should not be blank" do
      @category = Category.new(name: "Computers")
      @product = Product.create(
        name: nil,
        price: 30,
        quantity: 12,
        category: @category
        )
      expect(@product.errors.full_messages).to include("Name can't be blank")
    end

    it "Price should not be blank" do
      @category = Category.new(name: "Computers")
      @product = Product.create(
        name: "LoveJ",
        price: nil,
        quantity: 12,
        category: @category
        )
      expect(@product.errors.full_messages).to include("Price can't be blank")
    end

    it "Quantity should not be blank" do
      @category = Category.new(name: "Computers")
      @product = Product.create(
        name: "LoveJ",
        price: 30,
        quantity: nil,
        category: @category
        )
      expect(@product.errors.full_messages).to include("Quantity can't be blank")
    end

    it "Category should not be blank" do
      @category = Category.new(name: "Computers")
      @product = Product.create(
        name: "LoveJ",
        price: 30,
        quantity: 12,
        category: nil
        )
      expect(@product.errors.full_messages).to include("Category can't be blank")
    end


  end
end