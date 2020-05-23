# frozen_string_literal: true

module ValidationHelpers
  def required_attribute_test(model, attribute)
    model[attribute] = nil
    expect(model).not_to be_valid
    expect(model.errors.first.first).to eq(attribute)
  end

  def required_association_test(model, association)
    attribute = :"#{association}_id"
    model[attribute] = nil
    expect(model).not_to be_valid
    expect(model.errors.include?(association)).to eq(true)
  end
end
