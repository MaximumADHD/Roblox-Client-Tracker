if not game:GetFastFlag("TerrainToolsUseDevFramework") then
	return function() end
end

local Plugin = script.Parent.Parent.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)

local MockProvider = require(Plugin.Src.TestHelpers.MockProvider)

local ToggleButtons = require(script.Parent.ToggleButtons)

return function()
	describe("ToggleButton", function()
		it("should create and destroy without errors", function()
			local element = MockProvider.createElementWithMockContext(ToggleButtons.ToggleButton)
			local instance = Roact.mount(element)
			Roact.unmount(instance)
		end)
	end)

	describe("PickerButton", function()
		it("should create and destroy without errors", function()
			local element = MockProvider.createElementWithMockContext(ToggleButtons.PickerButton)
			local instance = Roact.mount(element)
			Roact.unmount(instance)
		end)
	end)
end
