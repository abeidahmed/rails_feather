RSpec.describe Feather::Feather do
  describe "#initialize" do
    it "sets the icon name" do
      icon = Feather::Feather.new("user")

      expect(icon.instance_variable_get(:@icon)).to eq("user")
    end
  end

  describe "fill and stroke" do
    it "sets the fill attribute to none" do
      icon = Feather::Feather.new("user")

      expect(icon.options[:fill]).to eq("none")
    end

    it "sets the stroke attribute to currentColor" do
      icon = Feather::Feather.new("user")

      expect(icon.options[:stroke]).to eq("currentColor")
    end
  end

  describe "accessibility" do
    it "sets aria-hidden to true if aria-label is not passed" do
      icon = Feather::Feather.new("user")

      expect(icon.options[:"aria-hidden"]).to eq("true")
    end

    it "sets role to img if aria-label is passed" do
      icon = Feather::Feather.new("user", "aria-label": "icon")

      expect(icon.options.key?("aria-hidden")).to be_falsy
      expect(icon.options[:role]).to eq("img")

      another_icon = Feather::Feather.new("user", aria: { label: "icon" })

      expect(another_icon.options.key?("aria-hidden")).to be_falsy
      expect(another_icon.options[:role]).to eq("img")
    end
  end

  describe "sizes" do
    it "sets the viewBox to 0 0 24 24" do
      icon = Feather::Feather.new("user")

      expect(icon.options[:viewBox]).to eq("0 0 24 24")
    end

    it "width and height defaults to 24" do
      icon = Feather::Feather.new("user")

      expect(icon.options[:width]).to eq(24)
      expect(icon.options[:height]).to eq(24)
    end

    it "width and height can be changed" do
      icon = Feather::Feather.new("user", size: 20)

      expect(icon.options[:width]).to eq(20)
      expect(icon.options[:height]).to eq(20)
    end
  end

  describe "stroke attributes" do
    it "sets the stroke-linecap to round" do
      icon = Feather::Feather.new("user")

      expect(icon.options[:"stroke-linecap"]).to eq("round")
    end

    it "sets the stroke-linejoin to round" do
      icon = Feather::Feather.new("user")

      expect(icon.options[:"stroke-linejoin"]).to eq("round")
    end

    it "sets the stroke-width to 2 by default" do
      icon = Feather::Feather.new("user")

      expect(icon.options[:"stroke-width"]).to eq(2)
    end

    it "stroke-width can be changed" do
      icon = Feather::Feather.new("user", stroke_width: 1)

      expect(icon.options[:"stroke-width"]).to eq(1)
    end
  end

  describe "svg version" do
    it "sets the version to 1.1" do
      icon = Feather::Feather.new("user")

      expect(icon.options[:version]).to eq(1.1)
    end
  end
end
