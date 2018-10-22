--[[
	Settings page for Http settings (formerly known as Security).
		- Http Enabled

	Settings:
		bool HttpEnabled - Whether the game is allowed to access external Http endpoints
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local RoactRodux = require(Plugin.RoactRodux)
local Constants = require(Plugin.Src.Util.Constants)

local settingFromState = require(Plugin.Src.Networking.settingFromState)

local RadioButtonSet = require(Plugin.Src.Components.RadioButtonSet)

local AddChange = require(Plugin.Src.Actions.AddChange)

local function Options(props)
	--Make container for this page
	return Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
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

		Http = Roact.createElement(RadioButtonSet, {
			Title = "Allow HTTP Requests",
			Buttons = {{
					Id = true,
					Title = "On",
					Description = "Allow game server to issue requests to remote servers.",
				}, {
					Id = false,
					Title = "Off",
				},
			},
			Enabled = props.HttpEnabled ~= nil,
			LayoutOrder = 3,
			--Functionality
			Selected = props.HttpEnabled,
			SelectionChanged = props.HttpEnabledChanged,
		}),
	})
end

Options = RoactRodux.connect(
	function(state, props)
		if not state then return end
		return {
			HttpEnabled = settingFromState(state.Settings, "HttpEnabled"),
		}
	end,
	function(dispatch)
		return {
			HttpEnabledChanged = function(button)
				dispatch(AddChange("HttpEnabled", button.Id))
			end,
		}
	end
)(Options)

return Options