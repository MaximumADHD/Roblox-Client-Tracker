return function()
	local Plugin = script.Parent.Parent.Parent.Parent

	local Libs = Plugin.Libs
	local Roact = require(Libs.Roact)

	local Preview = Plugin.Core.Components.Asset.Preview
	local MainViewButtons = require(Preview.MainViewButtons)

	local MockWrapper = require(Plugin.Core.Util.MockWrapper)

	local function createTestAsset(container, name)
		local element = Roact.createElement(MockWrapper, {}, {
			Roact.createElement(MainViewButtons, {
				position = UDim2.new(1, 0, 1, 0),

				showTreeView = false,
				onTreeviewStatusToggle = nil,
			})
		})

		return Roact.mount(element, container or nil, name or "")
	end

	it("should create and destroy without errors", function()
		local instance = createTestAsset()
		Roact.unmount(instance)
	end)
end