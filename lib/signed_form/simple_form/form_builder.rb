module SignedForm
  module SimpleForm
    class FormBuilder < ::SimpleForm::FormBuilder
      include SignedForm::FormBuilder::Methods

      def input(attribute_name, options = {}, &block)
        add_signed_fields attribute_name
        super
      end

      def input_field(attribute_name, options = {})
        add_signed_fields attribute_name
        super
      end
    end
  end
end
