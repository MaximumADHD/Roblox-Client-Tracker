return function()
	local LoadingRoot = script.Parent
	local UIBloxRoot = LoadingRoot.Parent
	local Roact = require(UIBloxRoot.Parent.Roact)
	local TextureScroller = require(LoadingRoot.TextureScroller)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(TextureScroller, {
			Image = "rbxasset://textures/ui/LuaApp/graphic/shimmer_darkTheme.png",
			imageScrollCycleTime = 2,
			imagePositionStart = UDim2.new(-1, 0, 0, 0),
			imagePositionEnd = UDim2.new(1, 0, 0, 0),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end