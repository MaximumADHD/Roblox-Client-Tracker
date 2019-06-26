return function()
	local ItemTileRoot = script.Parent
	local UIBloxRoot = ItemTileRoot.Parent
	local Roact = require(UIBloxRoot.Parent.Roact)
	local mockStyleComponent = require(UIBloxRoot.Utility.mockStyleComponent)
	local ImageSetProvider = require(UIBloxRoot.ImageSet.ImageSetProvider)
	local ItemTileName = require(script.Parent.ItemTileName)

	it("should create and destroy without errors", function()
		local testName = "some test name"
		local element = mockStyleComponent({
			Roact.createElement(ImageSetProvider, {
				imageSetData = {},
			}, {
				Frame = Roact.createElement("Frame", {
					Size = UDim2.new(0, 100, 0, 100),
				}, {
					ItemTileName = Roact.createElement(ItemTileName, {
						name = testName,
					})
				})
			})
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should create and destroy with loading state without errors", function()
		local element = mockStyleComponent({
			Roact.createElement(ImageSetProvider, {
				imageSetData = {},
			}, {
				Frame = Roact.createElement("Frame", {
					Size = UDim2.new(0, 100, 0, 100),
				}, {
					ItemTileName = Roact.createElement(ItemTileName, {
						name = nil,
					})
				})
			})
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end