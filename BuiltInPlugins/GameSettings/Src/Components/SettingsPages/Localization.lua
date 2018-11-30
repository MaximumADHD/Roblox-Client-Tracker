--[[
	Settings page for Localization settings
		- Autoscraping on/off

	Settings:
		bool Autoscraping - Whether the game tells all its clients to
			scrape strings for the purpose of auto-localization and upload
			all the results to RCC.
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local RoactRodux = require(Plugin.RoactRodux)
local Constants = require(Plugin.Src.Util.Constants)

local settingFromState = require(Plugin.Src.Networking.settingFromState)

local RadioButtonSet = require(Plugin.Src.Components.RadioButtonSet)
local AddChange = require(Plugin.Src.Actions.AddChange)

local function Localization(props)
	--Make container for this page
	return Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 1, 0),
		LayoutOrder = props.LayoutOrder,
	}, {
		Layout = Roact.createElement("UIListLayout", {
			Padding = UDim.new(0, Constants.ELEMENT_PADDING),
			SortOrder = Enum.SortOrder.LayoutOrder,

			[Roact.Change.AbsoluteContentSize] = function(rbx)
				props.ContentHeightChanged(rbx.AbsoluteContentSize.y)
			end,
		}),

		Autoscraping = Roact.createElement(RadioButtonSet, {
			Title = "Autoscraping",
			Buttons = {{
					Id = true,
					Title = "On",
					Description = "Readies your game for localization by automatically scraping all text.",
				}, {
					Id = false,
					Title = "Off",
				},
			},
			Enabled = props.AutoscrapingOn ~= nil,
			LayoutOrder = 3,
			--Functionality
			Selected = props.AutoscrapingOn,
			SelectionChanged = props.AutoscrapingOnChanged,
		}),
	})
end

Localization = RoactRodux.connect(
	function(state, props)
		if not state then return end
		return {
			AutoscrapingOn = settingFromState(state.Settings, "autoscrapingOn"),
		}
	end,
	function(dispatch)
		return {
			AutoscrapingOnChanged = function(button)
				dispatch(AddChange("autoscrapingOn", button.Id))
			end,
		}
	end
)(Localization)

return Localization
