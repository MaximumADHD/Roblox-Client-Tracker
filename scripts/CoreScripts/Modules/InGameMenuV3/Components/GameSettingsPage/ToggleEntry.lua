local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local UIBlox = InGameMenuDependencies.UIBlox

local t = InGameMenuDependencies.t

local InGameMenu = script.Parent.Parent.Parent
local InputLabel = require(script.Parent.InputLabel)
local DeveloperLockLabel = require(script.Parent.DeveloperLockLabel)
local ThemedTextLabel = require(InGameMenu.Components.ThemedTextLabel)
local withLocalization = require(InGameMenu.Localization.withLocalization)

local Flags = InGameMenu.Flags
local GetFFlagInGameMenuControllerDevelopmentOnly = require(Flags.GetFFlagInGameMenuControllerDevelopmentOnly)

local ToggleEntry = Roact.PureComponent:extend("ToggleEntry")
ToggleEntry.validateProps = t.strictInterface({
	LayoutOrder = t.integer,
	labelKey = t.string,
	lockedToOff = t.optional(t.boolean),
	subtextEnabled = t.optional(t.boolean),
	subtextKey = t.optional(t.string),
	checked = t.boolean,
	onToggled = t.callback,
	buttonRef = t.optional(t.table),
	NextSelectionUp = t.optional(t.Instance),
})

function ToggleEntry:init()
	self.state = {
		isSelectable = GetFFlagInGameMenuControllerDevelopmentOnly() and true or nil,
	}
end

function ToggleEntry:render()
	local buttonRef = self.props.buttonRef or (GetFFlagInGameMenuControllerDevelopmentOnly() and Roact.createRef() or nil)
	local selectable = nil
	if GetFFlagInGameMenuControllerDevelopmentOnly then
		selectable = self.state.isSelectable
	end

	return Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		LayoutOrder = self.props.LayoutOrder,
		Size = UDim2.new(1, 0, 0, 56),
		Selectable = selectable,
		[Roact.Event.SelectionGained] = GetFFlagInGameMenuControllerDevelopmentOnly() and function()
			GuiService.SelectedCoreObject = buttonRef:getValue()
			self:setState({
				isSelectable = false,
			})
		end or nil,
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
		Toggle = Roact.createElement(UIBlox.App.InputButton.Toggle, {
			position = UDim2.new(1, 0, 0.5, 0),
			anchorPoint = Vector2.new(1, 0.5),
			isSelected = self.props.checked and not self.props.lockedToOff,
			isDisabled = self.props.lockedToOff,
			onActivated = self.props.onToggled,
		}),
	})
end

return ToggleEntry
