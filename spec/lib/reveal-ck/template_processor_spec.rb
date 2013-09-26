require 'spec_helper'

module RevealCK
  describe TemplateProcessor do

    let :slim_file do
      spec_data 'template_processor', 'basic.slim'
    end

    let :haml_file do
      spec_data 'template_processor', 'basic.haml'
    end

    let :pretty_printed_basic do
      /<p>\s+This is basic (Slim|Haml)\s+<\/p>/
    end

    it 'can process a slim template' do
      processor = TemplateProcessor.open slim_file
      processor.output.should match pretty_printed_basic
    end

    it 'can process a haml template' do
      processor = TemplateProcessor.open haml_file
      processor.output.should match pretty_printed_basic
    end

  end
end
