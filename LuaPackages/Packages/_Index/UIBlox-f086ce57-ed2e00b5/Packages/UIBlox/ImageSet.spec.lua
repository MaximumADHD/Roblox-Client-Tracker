return function()
	local ImageSet = require(script.Parent.ImageSet)

	describe("getImageSetPath", function()
		it("should run without error", function()
			local imagePath = ImageSet.getImageSetPath("testImage")
			expect(imagePath).to.be.a("string")
		end)
	end)

	describe("transformProps", function()
		it("should return original props if no image", function()
			local props = { myprop = true }
			local imageSet = {}

			local transformedProps = ImageSet.transformProps(props, imageSet)
			expect(transformedProps).equal(props)
		end)

		it("should throw if no imageSet", function()
			local props = { Image = "testImage" }
			local imageSet = nil

			expect(function()
				ImageSet.transformProps(props, imageSet)
			end).to.throw()
		end)

		it("should return original props if image not in imageSet", function()
			local props = { Image = "testImage" }
			local imageSet = { wrongImage = "testImage" }

			local transformedProps = ImageSet.transformProps(props, imageSet)
			expect(transformedProps).equal(props)
		end)

		it("should transform props", function()
			local props = { Image = "testImage" }
			local imageSet = { 
				['testImage'] = { ImageRectOffset = Vector2.new(191, 200), ImageRectSize = Vector2.new(17, 17), ImageSet = 'set_testImage' },
			}

			local transformedProps = ImageSet.transformProps(props, imageSet)
			expect(transformedProps).never.equal(props)
			expect(string.find(transformedProps.Image, "set_testImage")).never.equal(nil)
			expect(transformedProps.ImageRectOffset).equal(Vector2.new(191, 200))
			expect(transformedProps.ImageRectSize).equal(Vector2.new(17, 17))
		end)
	end)
end
