module SignedForm
  module SimpleForm
    module ActionView
      module FormHelper
        def signed_simple_form_for(record, options = {}, &block)
          options[:builder] ||= SignedForm::SimpleForm::FormBuilder

          simple_form_for(record, options) do |f|
            output = capture(f, &block)
            f.form_signature_tag + output
          end
        end
      end
    end
  end
end

ActionView::Base.send :include, SignedForm::SimpleForm::ActionView::FormHelper

