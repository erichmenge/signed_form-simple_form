module SignedForm
  module SimpleForm
    module ActionView
      module FormHelper
        def signed_simple_form_for(record, options = {}, &block)
          options[:builder] ||= SignedForm::SimpleForm::FormBuilder
          options[:wrap_form] ||= :simple_form_for
          signed_form_for(record, options, &block)
        end
      end
    end
  end
end

ActionView::Base.send :include, SignedForm::SimpleForm::ActionView::FormHelper
