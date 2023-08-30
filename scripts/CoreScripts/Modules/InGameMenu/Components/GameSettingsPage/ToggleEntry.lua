local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local t = InGameMenuDependencies.t

local InGameMenu = script.Parent.Parent.Parent

local ToggleSwitch = require(InGameMenu.Components.ToggleSwitch)

local InputLabel = require(script.Parent.InputLabel)
local DeveloperLockLabel = require(script.Parent.DeveloperLockLabel)
local ThemedTextLabel = require(InGameMenu.Components.ThemedTextLabel)
local withLocalization = require(InGameMenu.Localization.withLocalization)

local ToggleEntry = Roact.PureComponent:extend("ToggleEntry")
ToggleEntry.validateProps = t.strictInterface({
	LayoutOrder = t.integer,
	labelKey = t.string,
	lockedToOff = t.optional(t.boolean),
	isDisabled = t.optional(t.boolean),
	subtextEnabled = t.optional(t.boolean),
	subtextKey = t.optional(t.string),
	checked = t.boolean,
	onToggled = t.callback,
	buttonRef = t.optional(t.table),
	NextSelectionUp = t.optional(t.union(t.Instance, t.table)),
})

function ToggleEntry:init()
	self.state = {
		isSelectable = true,
	}
end

function ToggleEntry:render()
	local buttonRef = self.props.buttonRef or Roact.createRef()

	return Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		LayoutOrder = self.props.LayoutOrder,
		Size = UDim2.new(1, 0, 0, 56),
		Selectable = self.state.isSelectable,
		[Roact.Event.SelectionGained] = function()
			GuiService.SelectedCoreObject = buttonRef:getValue()
			self:setState({
				isSelectable = false,
			})
		end,
	}, {
		Padding = Roact.createElement("UIPadding", {
			PaddingRight = UDim.new(0, 30),
			PaddingLeft = UDim.new(0, 24),
		}),
		ControlLabel = Roact.createElement(InputLabel, {
			localizationKey = self.props.labelKey,
		}),
		LockedLabel = self.props.lockedToOff and Roact.createElement(DeveloperLockLabel, {
			Size = UDim2.new(1, -72, 0.25, 0),
			Position = UDim2.new(0, 0, 1, 0),
			AnchorPoint = Vector2.new(0, 1),
		}),
		SubtextLabel = self.props.subtextEnabled and withLocalization({
			text = self.props.subtextKey,
		})(function(localization)
			return Roact.createElement(ThemedTextLabel, {
				Text = localization.text,
				themeKey = "TextDefault",
				fontKey = "CaptionBody",
				TextTransparency = 0.5,
				Size = UDim2.new(1, -72, 0.25, 0),
				Position = UDim2.new(0, 0, 1, 0),
				AnchorPoint = Vector2.new(0, 1),
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Bottom,
			})
		end),
		Toggle = Roact.createElement(ToggleSwitch, {
			Position = UDim2.new(1, 0, 0.5, 0),
			AnchorPoint = Vector2.new(1, 0.5),
			checked = self.props.checked and not self.props.lockedToOff,
			onToggled = self.props.onToggled,
			disabled = self.props.lockedToOff or self.props.isDisabled,
			buttonRef = buttonRef,
			onSelectionLost = function()
				self:setState({
					isSelectable = true
				})
			end,
			onSelectionGained = function()
				self:setState({
					isSelectable = false
				})
			end,
			NextSelectionUp = self.props.NextSelectionUp,
		}),
	})
end

return ToggleEntry
