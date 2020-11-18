return function()
	local scaleSliceToResolution = require(script.Parent.scaleSliceToResolution)

	describe("Scale to Device Resolution", function()
		describe("With regular props", function()
			it("Should return the props unchanged", function()
				local size = UDim2.new(1,0,1,0)
				local image = "example-rbxasset-string"
				local scale = 1

				local imageProps = {
					Size = size,
					Image = image,
				}

				local result = scaleSliceToResolution(imageProps, scale)

				expect(result.Size).to.equal(size)
				expect(result.Image).to.equal(image)
			end)
		end)

		describe("With SliceCenter", function()
			it("Should scale SliceCenter based on the provided scale", function()
				local SliceCenter = Rect.new(10, 10, 11, 11)
				local scale = 2

				local imageProps = {
					SliceCenter = SliceCenter,
				}

				local result = scaleSliceToResolution(imageProps, scale)

				expect(result.SliceCenter.Min).to.equal(SliceCenter.Min * scale)
				expect(result.SliceCenter.Max).to.equal(SliceCenter.Max * scale)
				expect(result.SliceScale).to.be.near(1 / scale)
			end)
		end)

		describe("With SliceCenter and SliceScale", function()
			it("Should scale SliceCenter and SliceScale based on the provided scale", function()
				local SliceCenter = Rect.new(10, 10, 11, 11)
				local SliceScale = 0.5
				local scale = 2

				local imageProps = {
					SliceCenter = SliceCenter,
					SliceScale = SliceScale,
				}

				local result = scaleSliceToResolution(imageProps, scale)

				expect(result.SliceCenter.Min).to.equal(SliceCenter.Min * scale)
				expect(result.SliceCenter.Max).to.equal(SliceCenter.Max * scale)
				expect(result.SliceScale).to.be.near(SliceScale / scale)
			end)
		end)
	end)
end
