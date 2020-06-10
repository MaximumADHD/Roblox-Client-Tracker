local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local t = InGameMenuDependencies.t

local InGameMenu = script.Parent.Parent.Parent

local GlobalConfig = require(InGameMenu.GlobalConfig)

local ToggleSwitch = require(InGameMenu.Components.ToggleSwitch)

local InputLabel = require(script.Parent.InputLabel)
local DeveloperLockLabel = require(script.Parent.DeveloperLockLabel)
local ThemedTextLabel = require(InGameMenu.Components.ThemedTextLabel)
local withLocalization = require(InGameMenu.Localization.withLocalization)

local validateProps = t.strictInterface({
	LayoutOrder = t.integer,
	labelKey = t.string,
	lockedToOff = t.optional(t.boolean),
	subtextEnabled = t.optional(t.boolean),
	subtextKey = t.optional(t.string),
	checked = t.boolean,
	onToggled = t.callback,
})

local function ToggleEntry(props)
	if GlobalConfig.propValidation then
		assert(validateProps(props))
	end

	return Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		LayoutOrder = props.LayoutOrder,
		Size = UDim2.new(1, 0, 0, 56),
	}, {
		Padding = Roact.createElement("UIPadding", {
			PaddingRight = UDim.new(0, 30),
			PaddingLeft = UDim.new(0, 24),
		}),
		ControlLabel = Roact.createElement(InputLabel, {
			localizationKey = props.labelKey,
		}),
		LockedLabel = props.lockedToOff and Roact.createElement(DeveloperLockLabel, {
			Size = UDim2.new(1, -72, 0.25, 0),
			Position = UDim2.new(0, 0, 1, 0),
			AnchorPoint = Vector2.new(0, 1),
		}),
		SubtextLabel = props.subtextEnabled and withLocalization({
			text = props.subtextKey,
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
			checked = props.checked and not props.lockedToOff,
			onToggled = props.onToggled,
			disabled = props.lockedToOff,
		}),
	})
end

return ToggleEntry