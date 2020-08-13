return function()
	local Loading = script.Parent
	local App = Loading.Parent
	local UIBlox = App.Parent
	local Packages = UIBlox.Parent

	local Roact = require(Packages.Roact)
	local TextureScroller = require(Loading.TextureScroller)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(TextureScroller, {
			image = "rbxasset://textures/ui/LuaApp/graphic/shimmer_darkTheme.png",
			imageScrollCycleTime = 2,
			imageRectOffsetStart = Vector2.new(219, 0),
			imageRectOffsetEnd = Vector2.new(-219, 0),
			imageRectSize = Vector2.new(219, 250),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end