require 'spec_helper'

describe SignedForm::SimpleForm::FormBuilder do
  include ViewHelper

  before { SignedForm::HMAC.secret_key = "abc123" }
  after  { SignedForm::HMAC.secret_key = nil }

  it 'should build a signed form' do
    content = signed_simple_form_for(:user) do |f|
      f.input :name
      f.input_field :bar
    end

    content.should =~ /form_signature/

    data = get_data_from_form(content)
    data.should include(:user)
    data[:user].should include(:name, :bar)
  end
end
