return function()
	local BaseTileRoot = script.Parent
	local UIBloxRoot = BaseTileRoot.Parent.Parent

	local Roact = require(UIBloxRoot.Parent.Roact)
	local mockStyleComponent = require(UIBloxRoot.Utility.mockStyleComponent)
	local TileBanner = require(script.Parent.TileBanner)

	it("should create and destroy without errors", function()
		local element = mockStyleComponent({
			Frame = Roact.createElement("Frame", {
				Size = UDim2.new(0, 100, 0, 50),
			}, {
				TileBanner = Roact.createElement(TileBanner, {
					bannerText = "ONLY 12.3K LEFT!",
				})
			})
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end