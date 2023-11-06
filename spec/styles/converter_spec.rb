require './spec/spec_helper'

describe Creek::Styles::Converter do

  describe :call do

    def convert(value, type, style)
      Creek::Styles::Converter.call(value, type, style)
    end

    def convert_with_time_zone(value, type, style, time_zone)
      Creek::Styles::Converter.call(value, type, style, {default_time_zone: time_zone})
    end

    describe :date do
      it "works" do
        expect(convert('41275', 'n', :date)).to eq(Date.new(2013,01,01))
      end
    end

    describe :date_time do
      it "works" do
        expect(convert('41275', 'n', :date_time)).to eq(Time.new(2013,01,01))
      end

      it "works with time zone" do
        zone = '+06:00'

        expect(convert_with_time_zone('41275', 'n', :date_time, zone)).to eq(Time.new(2013,01,01, 0, 0, 0, zone))
      end
    end
  end
end
