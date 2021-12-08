return function()
	local Plugin = script.Parent.Parent.Parent.Parent

	local FFlagToolboxDeduplicatePackages = game:GetFastFlag("ToolboxDeduplicatePackages")
	local Libs
	if FFlagToolboxDeduplicatePackages then
		Libs = Plugin.Packages
	else
		Libs = Plugin.Libs
	end
	local Roact = require(Libs.Roact)

	local MockWrapper = require(Plugin.Core.Util.MockWrapper)

	local LiveSearchDropdown = require(Plugin.Core.Components.SearchOptions.LiveSearchDropdown)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(MockWrapper, {}, {
			Dropdown = Roact.createElement(LiveSearchDropdown, {
				Items = {
					{Name = "Name", Thumbnail = "rbxassetid://0"},
				},
				Size = UDim2.new(1, 0, 1, 0),
			}),
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
