return function()
	local BaseTileRoot = script.Parent
	local UIBloxRoot = BaseTileRoot.Parent.Parent

	local Roact = require(UIBloxRoot.Parent.Roact)
	local mockStyleComponent = require(UIBloxRoot.Utility.mockStyleComponent)
	local Tile = require(BaseTileRoot.Tile)

	it("should create and destroy without errors", function()
		local testImage = "https://t5.rbxcdn.com/ed422c6fbb22280971cfb289f40ac814"
		local testName = "some test name"
		local createFooter = function()
			return Roact.createElement("Frame", {
				Size = UDim2.new(0, 100, 0, 100),
			})
		end
		local onActivated = function() end
		local element = mockStyleComponent({
			Frame = Roact.createElement("Frame", {
				Size = UDim2.new(0, 100, 0, 100),
			}, {
				Tile = Roact.createElement(Tile, {
					footer = createFooter(),
					name = testName,
					onActivated = onActivated,
					thumbnail = testImage,
				})
			})
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end