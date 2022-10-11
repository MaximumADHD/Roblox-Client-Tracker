local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local MockServiceWrapper = require(Plugin.Src.TestHelpers.MockServiceWrapper)
local FFlagRemoveUILibraryDropdownMenu = game:GetFastFlag("RemoveUILibraryDropdownMenu")
local FFlagDevFrameworkDropdownShowsLabel = game:GetFastFlag("DevFrameworkDropdownShowsLabel")

local DropdownModule = require(Plugin.Src.Components.DropdownModule)

if FFlagRemoveUILibraryDropdownMenu and FFlagDevFrameworkDropdownShowsLabel then
	return function() end
end

local mockItemList = {
	{ displayText = "Item1" },
	{ displayText = "Item2" },
	{ displayText = "Item3" },
}

return function()
	it("should create and destroy without errors", function()
		local mockServiceWrapper = Roact.createElement(MockServiceWrapper, {}, {
			DropdownModule = Roact.createElement(DropdownModule),
		})

		local instance = Roact.mount(mockServiceWrapper)
		Roact.unmount(instance)
	end)

	it("should create and destroy with mock data without errors", function()
		local mockServiceWrapper = Roact.createElement(MockServiceWrapper, {}, {
			DropdownModule = Roact.createElement(DropdownModule, {
				LayoutOrder = 1,
				Items = mockItemList,
				CurrentSelected = "Current Selected",
				OnItemClicked = function() end,
			}),
		})

		local instance = Roact.mount(mockServiceWrapper)
		Roact.unmount(instance)
	end)
end
