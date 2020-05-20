return function()
	local Loading = script.Parent
	local App = Loading.Parent
	local UIBlox = App.Parent
	local Packages = UIBlox.Parent

	local Roact = require(Packages.Roact)
	local TextureScroller = require(Loading.TextureScroller)

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