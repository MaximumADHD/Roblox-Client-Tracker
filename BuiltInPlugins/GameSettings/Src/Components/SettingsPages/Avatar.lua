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
local RoactRodux = require(Plugin.RoactRodux)
local Constants = require(Plugin.Src.Util.Constants)

local settingFromState = require(Plugin.Src.Networking.settingFromState)
local showDialog = require(Plugin.Src.Consumers.showDialog)

local WarningDialog = require(Plugin.Src.Components.Dialog.WarningDialog)

local RadioButtonSet = require(Plugin.Src.Components.RadioButtonSet)

local AddChange = require(Plugin.Src.Actions.AddChange)
local AddWarning = require(Plugin.Src.Actions.AddWarning)
local DiscardWarning = require(Plugin.Src.Actions.DiscardWarning)

local withTheme = require(Plugin.Src.Consumers.withTheme)

local fastFlags = require(Plugin.Src.Util.FastFlags)

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

local Avatar = Roact.PureComponent:extend("Avatar")

function Avatar:render()
	if fastFlags.isMorphingHumanoidDescriptionSystemOn() then
	    return withTheme(function(theme)
			return Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Size = UDim2.new(1, 0, 1, 0),
				LayoutOrder = self.props.LayoutOrder,
			}, {
				Morpher = Roact.createElement(MorpherRootPanel, {
					ThemeData = theme,
					IsEnabled = isPlaceDataAvailable(self.props),

					AvatarType = self.props.AvatarType,
					AvatarAnimation = self.props.AvatarAnimation,
					AvatarCollision = self.props.AvatarCollision,
					AvatarAssetOverrides = self.props.AvatarAssetOverrides,
					AvatarScalingMin = self.props.AvatarScalingMin,
					AvatarScalingMax = self.props.AvatarScalingMax,

					OnAvatarTypeChanged = function(newVal)
						if FFlagGameSettingsShowWarningsOnSave then
							local willShutdown = self.props.CurrentAvatarType ~= "PlayerChoice"
								and newVal ~= self.props.CurrentAvatarType
							self.props.AvatarTypeChanged(newVal, willShutdown)
						else
							if self.props.CurrentAvatarType ~= "PlayerChoice" then
								local dialogProps = {
									Title = "Warning",
									Header = "Would you like to proceed?",
									Description = "Changing the game's Avatar Type to this setting "
										.. "will shut down any running games.",
									Buttons = {"No", "Yes"},
								}
								if not showDialog(self, WarningDialog, dialogProps):await() then
									return
								end
							end
							self.props.AvatarTypeChanged(newVal)
						end
					end,

					OnAvatarAnimationChanged = self.props.AvatarAnimationChanged,
					OnAvatarCollisionChanged = self.props.AvatarCollisionChanged,
					OnAvatarAssetOverridesChanged = self.props.AvatarAssetOverridesChanged,
					OnAvatarScalingMinChanged = self.props.AvatarScalingMinChanged,
					OnAvatarScalingMaxChanged = self.props.AvatarScalingMaxChanged,
					ContentHeightChanged = self.props.ContentHeightChanged
				})
			})
		end)
	else
		--Make container for this page
		return Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			Size = UDim2.new(1, 0, 1, 0),
			LayoutOrder = self.props.LayoutOrder,
		}, {
			Layout = Roact.createElement("UIListLayout", {
				Padding = UDim.new(0, Constants.ELEMENT_PADDING),
				SortOrder = Enum.SortOrder.LayoutOrder,

				[Roact.Change.AbsoluteContentSize] = function(rbx)
					self.props.ContentHeightChanged(rbx.AbsoluteContentSize.y)
				end,
			}),

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
				Enabled = self.props.AvatarType ~= nil,
				LayoutOrder = 2,
				--Functionality
				Selected = self.props.AvatarType,
				SelectionChanged = function(button)
					if FFlagGameSettingsShowWarningsOnSave then
						local willShutdown = self.props.CurrentAvatarType ~= "PlayerChoice"
							and button.Id ~= self.props.CurrentAvatarType
						self.props.AvatarTypeChanged(button, willShutdown)
					else
						if self.props.CurrentAvatarType ~= "PlayerChoice" then
							local dialogProps = {
								Title = "Warning",
								Header = "Would you like to proceed?",
								Description = "Changing the game's Avatar Type to this setting "
									.. "will shut down any running games.",
								Buttons = {"No", "Yes"},
							}
							if not showDialog(self, WarningDialog, dialogProps):await() then
								return
							end
						end
						self.props.AvatarTypeChanged(button)
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
				Enabled = self.props.AvatarScaling ~= nil and self.props.AvatarType ~= "MorphToR6",
				LayoutOrder = 3,
				--Functionality
				Selected = self.props.AvatarScaling,
				SelectionChanged = self.props.AvatarScalingChanged,
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
				Enabled = self.props.AvatarAnimation ~= nil and self.props.AvatarType ~= "MorphToR6",
				LayoutOrder = 4,
				--Functionality
				Selected = self.props.AvatarAnimation,
				SelectionChanged = self.props.AvatarAnimationChanged,
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
				Enabled = self.props.AvatarCollision ~= nil and self.props.AvatarType ~= "MorphToR6",
				LayoutOrder = 5,
				--Functionality
				Selected = self.props.AvatarCollision,
				SelectionChanged = self.props.AvatarCollisionChanged,
			}),
		})
	end
end

if fastFlags.isMorphingHumanoidDescriptionSystemOn() then
	Avatar = RoactRodux.connect(
		function(state, props)
			if not state then return end
			return {
				CurrentAvatarType = state.Settings.Current.universeAvatarType,
				AvatarType = settingFromState(state.Settings, "universeAvatarType"),
				AvatarAnimation = settingFromState(state.Settings, "universeAnimationType"),
				AvatarCollision = settingFromState(state.Settings, "universeCollisionType"),
				AvatarAssetOverrides = settingFromState(state.Settings, "universeAvatarAssetOverrides"),
				AvatarScalingMin = settingFromState(state.Settings, "universeAvatarMinScales"),
				AvatarScalingMax = settingFromState(state.Settings, "universeAvatarMaxScales"),				
			}
		end,
		function(dispatch)
			return {
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

				AvatarAnimationChanged = function(value)
					dispatch(AddChange("universeAnimationType", value))
				end,

				AvatarCollisionChanged = function(value)
					dispatch(AddChange("universeCollisionType", value))
				end,

				AvatarAssetOverridesChanged = function(value)
					dispatch(AddChange("universeAvatarAssetOverrides", value))
				end,

				AvatarScalingMinChanged = function(value)
					dispatch(AddChange("universeAvatarMinScales", value))
				end,

				AvatarScalingMaxChanged = function(value)
					dispatch(AddChange("universeAvatarMaxScales", value))
				end,
			}
		end
	)(Avatar)
else
	Avatar = RoactRodux.connect(
		function(state, props)
			if not state then return end
			return {
				CurrentAvatarType = state.Settings.Current.universeAvatarType,
				AvatarType = settingFromState(state.Settings, "universeAvatarType"),
				AvatarScaling = settingFromState(state.Settings, "universeScaleType"),
				AvatarAnimation = settingFromState(state.Settings, "universeAnimationType"),
				AvatarCollision = settingFromState(state.Settings, "universeCollisionType"),
			}
		end,
		function(dispatch)
			return {
				AvatarTypeChanged = function(button, willShutdown)
					if FFlagGameSettingsShowWarningsOnSave then
						if willShutdown then
							dispatch(AddWarning("universeAvatarType"))
						else
							dispatch(DiscardWarning("universeAvatarType"))
						end
					end
					dispatch(AddChange("universeAvatarType", button.Id))
				end,

				AvatarScalingChanged = function(button)
					dispatch(AddChange("universeScaleType", button.Id))
				end,

				AvatarAnimationChanged = function(button)
					dispatch(AddChange("universeAnimationType", button.Id))
				end,

				AvatarCollisionChanged = function(button)
					dispatch(AddChange("universeCollisionType", button.Id))
				end,
			}
		end
	)(Avatar)
end

return Avatar