--[[
	Settings page for Avatar settings.
		- Avatar type
		- User choice override settings for avatar scales and animations
		- Avatar collision settings

	Settings:
		string AvatarType - Whether to morph the avatar to R6 or R15, or let the user decide
		string AvatarScaling - Whether to allow user scale settings for avatars
		string AvatarAnimation - Whether to allow user-equipped animation packs
		string AvatarCollision - Whether to define collision based on avatar scale
]]

local FFlagGameSettingsShowWarningsOnSave = settings():GetFFlag("GameSettingsShowWarningsOnSave")

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)

local AddChange = require(Plugin.Src.Actions.AddChange)
local AddWarning = require(Plugin.Src.Actions.AddWarning)
local DiscardWarning = require(Plugin.Src.Actions.DiscardWarning)

local showDialog = require(Plugin.Src.Consumers.showDialog)
local WarningDialog = require(Plugin.Src.Components.Dialog.WarningDialog)

local RadioButtonSet = require(Plugin.Src.Components.RadioButtonSet)

local getTheme = require(Plugin.Src.Consumers.getTheme)

local fastFlags = require(Plugin.Src.Util.FastFlags)

local AssetOverrides = nil
local AddErrors = nil
local getMouse = nil
if fastFlags.isMorphingPanelWidgetsStandardizationOn() then
	AssetOverrides = require(Plugin.Src.Util.AssetOverrides)
	AddErrors = require(Plugin.Src.Actions.AddErrors)
	getMouse = require(Plugin.Src.Consumers.getMouse)
end

local createSettingsPage = require(Plugin.Src.Components.SettingsPages.createSettingsPage)

local MorpherRootPanel = nil
if fastFlags.isMorphingHumanoidDescriptionSystemOn() then
	MorpherRootPanel = require(Plugin.MorpherEditor.Code.Components.ComponentRootPanelExternal)
end

local isPlaceDataAvailable = nil
if fastFlags.isMorphingHumanoidDescriptionSystemOn() then
	isPlaceDataAvailable = function(props)
		local result = props.AvatarType and
			props.AvatarAnimation and
			props.AvatarCollision and
			props.AvatarAssetOverrides and
			props.AvatarScalingMin and
			props.AvatarScalingMax
		return result and true or false
	end
end

local isShutdownRequired = nil
if fastFlags.isMorphingPanelWidgetsStandardizationOn() then
	isShutdownRequired = function(currentAvatarType, avatarTypeToChangeTo)
		return currentAvatarType ~= "PlayerChoice" and avatarTypeToChangeTo ~= currentAvatarType
	end
end

--Loads settings values into props by key
local function loadValuesToProps(getValue, state)
	return {
		AvatarType = getValue("universeAvatarType"),
		AvatarAnimation = getValue("universeAnimationType"),
		AvatarCollision = getValue("universeCollisionType"),
		AvatarAssetOverrides = getValue("universeAvatarAssetOverrides"),
		AvatarScalingMin = getValue("universeAvatarMinScales"),
		AvatarScalingMax = getValue("universeAvatarMaxScales"),

		CurrentAvatarType = state.Settings.Current.universeAvatarType,
		AssetOverrideErrors = fastFlags.isMorphingPanelWidgetsStandardizationOn()
			and state.Settings.Errors.universeAvatarAssetOverrides or nil,
	}
end

--Implements dispatch functions for when the user changes values
local function dispatchChanges(setValue, dispatch)
	return {
		AvatarAnimationChanged = setValue("universeAnimationType"),
		AvatarCollisionChanged = setValue("universeCollisionType"),
		AvatarScalingMinChanged = setValue("universeAvatarMinScales"),
		AvatarScalingMaxChanged = setValue("universeAvatarMaxScales"),

		AvatarTypeChanged = function(value, willShutdown)
			if FFlagGameSettingsShowWarningsOnSave then
				if willShutdown then
					dispatch(AddWarning("universeAvatarType"))
				else
					dispatch(DiscardWarning("universeAvatarType"))
				end
			end
			dispatch(AddChange("universeAvatarType", value))
		end,
		AvatarAssetOverridesChanged = function(value)
			dispatch(AddChange("universeAvatarAssetOverrides", value))
			if fastFlags.isMorphingPanelWidgetsStandardizationOn() then
				local errors = AssetOverrides.getErrors(value)
				if errors then
					dispatch(AddErrors({universeAvatarAssetOverrides = errors}))
				end
			end
		end,
	}
end

--Uses props to display current settings values
local function displayContents(page)
	local props = page.props

	if fastFlags.isMorphingHumanoidDescriptionSystemOn() then
		return {
			Morpher = Roact.createElement(MorpherRootPanel, {
				ThemeData = getTheme(page),
				IsEnabled = isPlaceDataAvailable(props),

				IsGameShutdownRequired = (function()
					if fastFlags.isMorphingPanelWidgetsStandardizationOn() then
						return isShutdownRequired(props.CurrentAvatarType, props.AvatarType)
					else
						return nil
					end
				end)(),
				AssetOverrideErrors = fastFlags.isMorphingPanelWidgetsStandardizationOn() and props.AssetOverrideErrors or nil,
				Mouse = fastFlags.isMorphingPanelWidgetsStandardizationOn() and getMouse(page).getNativeMouse() or nil,

				AvatarType = props.AvatarType,
				AvatarAnimation = props.AvatarAnimation,
				AvatarCollision = props.AvatarCollision,
				AvatarAssetOverrides = props.AvatarAssetOverrides,
				AvatarScalingMin = props.AvatarScalingMin,
				AvatarScalingMax = props.AvatarScalingMax,

				OnAvatarTypeChanged = function(newVal)
					if FFlagGameSettingsShowWarningsOnSave then
						local willShutdown = nil
						if fastFlags.isMorphingPanelWidgetsStandardizationOn() then
							willShutdown = isShutdownRequired(props.CurrentAvatarType, newVal)
						else
							willShutdown = props.CurrentAvatarType ~= "PlayerChoice" and newVal ~= props.CurrentAvatarType
						end
						props.AvatarTypeChanged(newVal, willShutdown)
					else
						if props.CurrentAvatarType ~= "PlayerChoice" then
							local dialogProps = {
								Title = "Warning",
								Header = "Would you like to proceed?",
								Description = "Changing the game's Avatar Type to this setting "
									.. "will shut down any running games.",
								Buttons = {"No", "Yes"},
							}
							if not showDialog(page, WarningDialog, dialogProps):await() then
								return
							end
						end
						props.AvatarTypeChanged(newVal)
					end
				end,

				OnAvatarAnimationChanged = props.AvatarAnimationChanged,
				OnAvatarCollisionChanged = props.AvatarCollisionChanged,
				OnAvatarAssetOverridesChanged = props.AvatarAssetOverridesChanged,
				OnAvatarScalingMinChanged = props.AvatarScalingMinChanged,
				OnAvatarScalingMaxChanged = props.AvatarScalingMaxChanged,
				ContentHeightChanged = props.ContentHeightChanged
			})
		}
	else
		return {
			Type = Roact.createElement(RadioButtonSet, {
				Title = "Avatar Type",
				Buttons = {{
						Id = "MorphToR6",
						Title = "Morph to R6",
						Description = "Classic arm and leg movement."
					}, {
						Id = "MorphToR15",
						Title = "Morph to R15",
						Description = "Freedom of movement with elbows and knees."
					}, {
						Id = "PlayerChoice",
						Title = "Players Choice",
						Description = "The game will allow R6 or R15 avatars."
					},
				},
				Enabled = props.AvatarType ~= nil,
				LayoutOrder = 2,
				--Functionality
				Selected = props.AvatarType,
				SelectionChanged = function(button)
					if FFlagGameSettingsShowWarningsOnSave then
						local willShutdown = props.CurrentAvatarType ~= "PlayerChoice"
							and button.Id ~= props.CurrentAvatarType
						props.AvatarTypeChanged(button, willShutdown)
					else
						if props.CurrentAvatarType ~= "PlayerChoice" then
							local dialogProps = {
								Title = "Warning",
								Header = "Would you like to proceed?",
								Description = "Changing the game's Avatar Type to this setting "
									.. "will shut down any running games.",
								Buttons = {"No", "Yes"},
							}
							if not showDialog(page, WarningDialog, dialogProps):await() then
								return
							end
						end
						props.AvatarTypeChanged(button)
					end
				end,
			}),

			Scaling = Roact.createElement(RadioButtonSet, {
				Title = "Scaling",
				Buttons = {{
						Id = "NoScales",
						Title = "Standard",
						Description = "Classic set of proportions."
					}, {
						Id = "AllScales",
						Title = "Players Choice",
						Description = "Allow players to use their own height and width."
					},
				},
				Enabled = props.AvatarScaling ~= nil and props.AvatarType ~= "MorphToR6",
				LayoutOrder = 3,
				--Functionality
				Selected = props.AvatarScaling,
				SelectionChanged = props.AvatarScalingChanged,
			}),

			Animation = Roact.createElement(RadioButtonSet, {
				Title = "Animation",
				Buttons = {{
						Id = "Standard",
						Title = "Standard",
						Description = "The default animation set."
					}, {
						Id = "PlayerChoice",
						Title = "Players Choice",
						Description = "Allow players to use their own custom set of animations."
					},
				},
				Enabled = props.AvatarAnimation ~= nil and props.AvatarType ~= "MorphToR6",
				LayoutOrder = 4,
				--Functionality
				Selected = props.AvatarAnimation,
				SelectionChanged = props.AvatarAnimationChanged,
			}),

			Collision = Roact.createElement(RadioButtonSet, {
				Title = "Collision",
				Buttons = {{
						Id = "InnerBox",
						Title = "Inner Box",
						Description = "Fixed size collision boxes."
					}, {
						Id = "OuterBox",
						Title = "Outer Box",
						Description = "Dynamically sized collision boxes based on mesh sizes."
					},
				},
				Enabled = props.AvatarCollision ~= nil and props.AvatarType ~= "MorphToR6",
				LayoutOrder = 5,
				--Functionality
				Selected = props.AvatarCollision,
				SelectionChanged = props.AvatarCollisionChanged,
			}),
		}
	end
end

local SettingsPage = createSettingsPage("Avatar", loadValuesToProps, dispatchChanges)

local function Avatar(props)
	return Roact.createElement(SettingsPage, {
		ContentHeightChanged = props.ContentHeightChanged,
		SetScrollbarEnabled = props.SetScrollbarEnabled,
		LayoutOrder = props.LayoutOrder,
		Content = displayContents,

		AddLayout = false,
	})
end

return Avatar