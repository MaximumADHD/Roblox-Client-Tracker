return function()
	local Plugin = script.Parent.Parent.Parent
	local Roact = require(Plugin.Roact)

	local provideMockContextForGameSettings = require(Plugin.Src.Components.provideMockContextForGameSettings)

	local TableWithMenu = require(Plugin.Src.Components.TableWithMenu)

	it("should create and destroy without errors", function()
		local element = provideMockContextForGameSettings(nil, {
			table = Roact.createElement(TableWithMenu,{
				Headers = {
					"Company",
					"Location",
					"Employees",
				},

				Data = {
					[1] = {
						index = 1,
						row = {
							"Roblox",
							"San Mateo",
							"750",
						},
					}
				},

				MenuItems = {
					{Key = "DetailsKey", Text = "View Details"},
				},
			}),
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end