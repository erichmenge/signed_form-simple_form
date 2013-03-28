require 'signed_form/simple_form'

module ViewHelper
  include ActionView::Helpers::FormHelper
  include SignedForm::ActionView::FormHelper
  include SimpleForm::ActionViewExtensions::FormHelper
  include SignedForm::SimpleForm::ActionView::FormHelper

  attr_accessor :output_buffer

  def controller(*)
    double('controller', action_name: 'bar')
  end

  def _routes(*)
    double('routes', url_for: '')
  end

  def default_url_options
    {}
  end

  def protect_against_forgery?
    false
  end

  def get_data_from_form(content)
    Marshal.load Base64.strict_decode64(content.match(/name="form_signature" value="(.*)--/)[1])
  end
end

RSpec.configure do |config|
  config.treat_symbols_as_metadata_keys_with_true_values = true
  config.run_all_when_everything_filtered = true
  config.order = 'random'
end
