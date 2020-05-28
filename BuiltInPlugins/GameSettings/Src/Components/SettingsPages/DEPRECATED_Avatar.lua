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

local PageName = "Avatar"

local FFlagAvatarSizeFixForReorganizeHeaders =
	game:GetFastFlag("AvatarSizeFixForReorganizeHeaders")
local FFlagStudioConvertGameSettingsToDevFramework = game:GetFastFlag("StudioConvertGameSettingsToDevFramework")

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)

local AddChange = require(Plugin.Src.Actions.AddChange)
local AddWarning = require(Plugin.Src.Actions.AddWarning)
local DiscardWarning = require(Plugin.Src.Actions.DiscardWarning)

local Header = require(Plugin.Src.Components.Header)

local getTheme = require(Plugin.Src.Consumers.getTheme)

local AssetOverrides = require(Plugin.Src.Util.AssetOverrides)
local AddErrors = require(Plugin.Src.Actions.AddErrors)
local getMouse = require(Plugin.Src.Consumers.getMouse)


local createSettingsPage = require(Plugin.Src.Components.SettingsPages.DEPRECATED_createSettingsPage)

local RootPanelExternal = require(Plugin.Src.Components.Avatar.RootPanelExternal)

local isPlaceDataAvailable = function(props)
	return game.GameId ~= 0
end

local isShutdownRequired = function(currentAvatarType, avatarTypeToChangeTo)
	return currentAvatarType ~= "PlayerChoice" and avatarTypeToChangeTo ~= currentAvatarType
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
		AssetOverrideErrors = state.Settings.Errors.universeAvatarAssetOverrides,
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
			if willShutdown then
				dispatch(AddWarning("universeAvatarType"))
			else
				dispatch(DiscardWarning("universeAvatarType"))
			end
			dispatch(AddChange("universeAvatarType", value))
		end,
		AvatarAssetOverridesChanged = function(value)
			dispatch(AddChange("universeAvatarAssetOverrides", value))
			local errors = AssetOverrides.getErrors(value)
			if errors then
				dispatch(AddErrors({universeAvatarAssetOverrides = errors}))
			end
		end,
	}
end

--Uses props to display current settings values
local function displayContents(page, localized, theme, mouse)
	local props = page.props

	return {
		PageLayout = (not FFlagAvatarSizeFixForReorganizeHeaders and
		Roact.createElement("UIListLayout", {
			Padding = UDim.new(0, 25),
			SortOrder = Enum.SortOrder.LayoutOrder,
		}) or nil),

		Header = Roact.createElement(Header, {
			Title = FFlagStudioConvertGameSettingsToDevFramework and localized:getText("General", "Category" .. PageName) or localized.Category[PageName],
			LayoutOrder = -1,
		}),

		Morpher = Roact.createElement(RootPanelExternal, {
			ThemeData = FFlagStudioConvertGameSettingsToDevFramework and theme or getTheme(page),
			IsEnabled = true,

			IsGameShutdownRequired = isShutdownRequired(props.CurrentAvatarType, props.AvatarType),
			AssetOverrideErrors = props.AssetOverrideErrors,
			Mouse = FFlagStudioConvertGameSettingsToDevFramework and mouse:get() or getMouse(page).getNativeMouse(),

			IsPlacePublished = isPlaceDataAvailable(props),

			AvatarType = props.AvatarType,
			AvatarAnimation = props.AvatarAnimation,
			AvatarCollision = props.AvatarCollision,
			AvatarAssetOverrides = props.AvatarAssetOverrides,
			AvatarScalingMin = props.AvatarScalingMin,
			AvatarScalingMax = props.AvatarScalingMax,

			OnAvatarTypeChanged = function(newVal)
				if isPlaceDataAvailable(props) then
					local willShutdown = isShutdownRequired(props.CurrentAvatarType, newVal)
					props.AvatarTypeChanged(newVal, willShutdown)
				else
					props.AvatarTypeChanged(newVal)
				end
			end,

			OnAvatarAnimationChanged = props.AvatarAnimationChanged,
			OnAvatarCollisionChanged = props.AvatarCollisionChanged,
			OnAvatarAssetOverridesChanged = props.AvatarAssetOverridesChanged,
			OnAvatarScalingMinChanged = props.AvatarScalingMinChanged,
			OnAvatarScalingMaxChanged = props.AvatarScalingMaxChanged,
			ContentHeightChanged = (not FFlagAvatarSizeFixForReorganizeHeaders) and
				props.ContentHeightChanged or nil
		})
	}
end

local SettingsPage = createSettingsPage(PageName, loadValuesToProps, dispatchChanges)

local function Avatar(props)
	return Roact.createElement(SettingsPage, {
		ContentHeightChanged = props.ContentHeightChanged,
		SetScrollbarEnabled = props.SetScrollbarEnabled,
		LayoutOrder = props.LayoutOrder,
		Content = displayContents,

		AddLayout = FFlagAvatarSizeFixForReorganizeHeaders,
	})
end

return Avatar
