require 'rails_helper'

describe Bio do
  it { should validate_presence_of :name}
  it { should validate_presence_of :content}
  it { should validate_presence_of :url}
end
