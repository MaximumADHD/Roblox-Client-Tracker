return function()
	local UIBloxRoot = script.Parent.Parent
	local Roact = require(UIBloxRoot.Parent.Roact)
	local ImageSetProvider = require(UIBloxRoot.ImageSet.ImageSetProvider)
	local withImageSet = require(UIBloxRoot.ImageSet.withImageSet)

	it("should create and destroy without errors", function()
		local someTestElement = Roact.Component:extend("someTestElement")
		function someTestElement:render()
			local renderCallback = function(imageSetData)
				expect(imageSetData).to.be.a("table")
				return Roact.createElement("Frame", {
					Size = UDim2.new(0, 100, 0, 100),
				})
			end
			return withImageSet(renderCallback)
		end

		local element = Roact.createElement(ImageSetProvider, {
			imageSetData = {},
		},{
			someTestElement = Roact.createElement(someTestElement),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
