local root = script:FindFirstAncestor("root")

local Roact = require(root.lib.Roact)
local RoactRodux = require(root.lib.RoactRodux)

local DeveloperFramework = root.lib.DeveloperFramework

local ContextServices = require(DeveloperFramework.ContextServices)
local Theme = ContextServices.Theme

local Button = require(DeveloperFramework.UI.Button)
local TextLabel = require(DeveloperFramework.UI.TextLabel)
local TextInput = require(DeveloperFramework.UI.TextInput)

local SetCurrentScreen = require(root.src.Actions.SetCurrentScreen)
local SetEnabled = require(root.src.Actions.SetEnabled)
local SetBundleId = require(root.src.Actions.SetBundleId)

local constants = require(root.src.constants)

local PADDING = 15

local SelectScaleType = Roact.PureComponent:extend("SelectScaleType")

function SelectScaleType:init()
	self.state = {
		bundleIdInput = "",
	}
end

function SelectScaleType:render()
	local props = self.props
	local state = self.state

	local validatedBundleId = tonumber(state.bundleIdInput)

	return Roact.createElement("Frame", {
		BackgroundColor3 = props.Theme:get("Plugin").BackgroundColor,
		Size = UDim2.new(1, 0, 1, 0),
	}, {
		UIPadding = Roact.createElement("UIPadding", {
			PaddingBottom = UDim.new(0, PADDING),
			PaddingLeft = UDim.new(0, PADDING),
			PaddingRight = UDim.new(0, PADDING),
			PaddingTop = UDim.new(0, PADDING),
		}),
		Content = Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 1, -(30 + PADDING)),
		}, {
			UIListLayout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				VerticalAlignment = Enum.VerticalAlignment.Top,
				Padding = UDim.new(0, PADDING),
			}),
			TextLabel = Roact.createElement(TextLabel, {
				LayoutOrder = 1,
				Text = "1. Input Bundle ID",
				Font = constants.FONT,
				FontSize = constants.FONT_SIZE,
				Size = UDim2.new(1, 0, 0, 20),
				Position = UDim2.new(0, 0, 0, 0),
				BackgroundTransparency = 1,
				TextXAlignment = Enum.TextXAlignment.Center,
			}),
			TextInput = Roact.createElement(TextInput, {
				LayoutOrder = 2,
				PlaceholderText = "Bundle ID",
				Size = UDim2.new(1, 0, 0, 30),
				Text = state.bundleIdInput,
				OnTextChanged = function(text)
					self:setState({
						bundleIdInput = text,
					})
				end,
			}),
		}),
		Button = Roact.createElement(Button, {
			Text = "Next",
			Style = validatedBundleId and "RoundPrimary" or "Round",
			TextSize = 24,
			Size = UDim2.new(1, 0, 0, 30),
			Position = UDim2.new(0, 0, 1, -30),
			OnClick = function()
				if validatedBundleId then
					props.setBundleId(validatedBundleId)
					props.setScreen(constants.SCREENS.SELECT_MESH_PART)
				end
			end,
		}),
	})
end

SelectScaleType = ContextServices.withContext({
	Theme = Theme,
})(SelectScaleType)

local function mapDispatchToProps(dispatch)
	return {
		close = function()
			dispatch(SetEnabled(false))
		end,
		setBundleId = function(scaleType)
			dispatch(SetBundleId(scaleType))
		end,
		setScreen = function(screen)
			dispatch(SetCurrentScreen(screen))
		end,
	}
end

return RoactRodux.connect(nil, mapDispatchToProps)(SelectScaleType)
