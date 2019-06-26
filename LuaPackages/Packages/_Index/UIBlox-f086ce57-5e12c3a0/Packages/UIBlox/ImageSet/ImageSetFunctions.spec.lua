return function()
	local ImageSetFunctions = require(script.Parent.ImageSetFunctions)

	describe("getImageSetPath", function()
		it("should run without error", function()
			local imagePath = ImageSetFunctions.getImageSetPath("testImage")
			expect(imagePath).to.be.a("string")
		end)
	end)

	describe("transformProps", function()
		it("should return original props if no image", function()
			local props = { myprop = true }
			local imageSet = {}

			local transformedProps = ImageSetFunctions.transformProps(props, imageSet)
			expect(transformedProps).equal(props)
		end)

		it("should throw if no imageSet", function()
			local props = { Image = "testImage" }
			local imageSet = nil

			expect(function()
				ImageSetFunctions.transformProps(props, imageSet)
			end).to.throw()
		end)

		it("should return original props if image not in imageSet", function()
			local props = { Image = "testImage" }
			local imageSet = { wrongImage = "testImage" }

			local transformedProps = ImageSetFunctions.transformProps(props, imageSet)
			expect(transformedProps).equal(props)
		end)

		it("should transform props", function()
			local props = { Image = "testImage" }
			local imageSet = { 
				['testImage'] = { ImageRectOffset = Vector2.new(191, 200), ImageRectSize = Vector2.new(17, 17), ImageSet = 'set_testImage' },
			}

			local transformedProps = ImageSetFunctions.transformProps(props, imageSet)
			expect(transformedProps).never.equal(props)
			expect(string.find(transformedProps.Image, "set_testImage")).never.equal(nil)
			expect(transformedProps.ImageRectOffset).equal(Vector2.new(191, 200))
			expect(transformedProps.ImageRectSize).equal(Vector2.new(17, 17))
		end)
	end)
end
