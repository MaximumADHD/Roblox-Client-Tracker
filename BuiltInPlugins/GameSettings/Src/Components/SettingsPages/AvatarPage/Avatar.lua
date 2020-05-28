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

local FFlagAvatarSizeFixForReorganizeHeaders =
	game:GetFastFlag("AvatarSizeFixForReorganizeHeaders")

local Plugin = script.Parent.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local RoactRodux = require(Plugin.RoactRodux)
local ContextServices = require(Plugin.Framework.ContextServices)

local Thread = require(Plugin.Src.Util.Thread)

local AddChange = require(Plugin.Src.Actions.AddChange)
local AddWarning = require(Plugin.Src.Actions.AddWarning)
local DiscardWarning = require(Plugin.Src.Actions.DiscardWarning)
local SettingsSaveScaleBoundaries = require(Plugin.Src.Actions.SettingsSaveScaleBoundaries)

local AssetOverrides = require(Plugin.Src.Util.AssetOverrides)
local AddErrors = require(Plugin.Src.Actions.AddErrors)

local RootPanelExternal = require(Plugin.Src.Components.Avatar.RootPanelExternal)

local SettingsPage = require(Plugin.Src.Components.SettingsPages.SettingsPage)

local LOCALIZATION_ID = "Avatar"

local function loadSettings(store, contextItems)
	local state = store:getState()
	local game = state.Metadata.game
	local universeAvatarController = contextItems.universeAvatarController

	return {
		function(loadedSettings)
			local avatarType = universeAvatarController:getAvatarType(game)

			-- TODO (awarwick) 5/15/2020 Eventually we should convert the Avatar page to use the enums directly
			-- instead of the hardcoded web fields
			local settingAvatarType
			if avatarType == Enum.GameAvatarType.R6 then
				settingAvatarType = "MorphToR6"
			elseif avatarType == Enum.GameAvatarType.R15 then
				settingAvatarType = "MorphToR15"
			else
				settingAvatarType = "PlayerChoice"
			end

			loadedSettings["universeAvatarType"] = settingAvatarType
		end,
		function(loadedSettings)
			local animationType = universeAvatarController:getAnimationType(game)

			loadedSettings["universeAnimationType"] = animationType
		end,
		function(loadedSettings)
			local collisionType = universeAvatarController:getCollisionType(game)

			loadedSettings["universeCollisionType"] = collisionType.Name
		end,
		function(loadedSettings)
			-- TODO (awarwick) 5/15/2020 Eventually we should change how the store is structured so these are
			-- all top-level NumberRanges and can be split into different load jobs
			local minScalesTable = {}
			local maxScalesTable = {}
			local threads = {
				Thread.new(function()
					local range = universeAvatarController:getHeightRange(game)
					minScalesTable.height = range.Min
					maxScalesTable.height = range.Max
				end),
				Thread.new(function()
					local range = universeAvatarController:getWidthRange(game)
					minScalesTable.width = range.Min
					maxScalesTable.width = range.Max
				end),
				Thread.new(function()
					local range = universeAvatarController:getHeadScaleRange(game)
					minScalesTable.head = range.Min
					maxScalesTable.head = range.Max
				end),
				Thread.new(function()
					local range = universeAvatarController:getBodyTypeRange(game)
					minScalesTable.bodyType = range.Min
					maxScalesTable.bodyType = range.Max
				end),
				Thread.new(function()
					local range = universeAvatarController:getProportionsRange(game)
					minScalesTable.proportion = range.Min
					maxScalesTable.proportion = range.Max
				end),
			}

			for _,thread in ipairs(threads) do
				thread:start()
			end
			for _,thread in ipairs(threads) do
				thread:join()
			end

			loadedSettings["universeAvatarMinScales"] = minScalesTable
			loadedSettings["universeAvatarMaxScales"] = maxScalesTable
		end,
		function(loadedSettings)
			local assetOverrides = universeAvatarController:getAssetOverrides(game)

			loadedSettings["universeAvatarAssetOverrides"] = assetOverrides
		end,
		function(loadedSettings)
			-- TODO (awarwick) 5/15/2020 Eventually we should change how the store is structured so these are
			-- all top-level and can be split into different load jobs
			local rules = {}
			local threads = {
				Thread.new(function()
					local range, increment = universeAvatarController:getHeightRules()
					rules.height = {
						min = range.Min,
						max = range.Max,
						increment = increment,
					}
				end),
				Thread.new(function()
					local range, increment = universeAvatarController:getWidthRules()
					rules.width = {
						min = range.Min,
						max = range.Max,
						increment = increment,
					}
				end),
				Thread.new(function()
					local range, increment = universeAvatarController:getHeadScaleRules()
					rules.head = {
						min = range.Min,
						max = range.Max,
						increment = increment,
					}
				end),
				Thread.new(function()
					local range, increment = universeAvatarController:getBodyTypeRules()
					rules.bodyType = {
						min = range.Min,
						max = range.Max,
						increment = increment,
					}
				end),
				Thread.new(function()
					local range, increment = universeAvatarController:getProportionsRules()
					rules.proportion = {
						min = range.Min,
						max = range.Max,
						increment = increment,
					}
				end),
			}

			for _,thread in ipairs(threads) do
				thread:start()
			end
			for _,thread in ipairs(threads) do
				thread:join()
			end

			store:dispatch(SettingsSaveScaleBoundaries({ scales = rules }))
		end,
	}
end

local function saveSettings(store, contextItems)
	local state = store:getState()
	local game = state.Metadata.game
	local universeAvatarController = contextItems.universeAvatarController

	return {
		function()
			local changed = state.Settings.Changed.universeAvatarType

			if changed ~= nil then
				local avatarType
				if changed == "MorphToR6" then
					avatarType = Enum.GameAvatarType.R6
				elseif changed == "MorphToR15" then
					avatarType = Enum.GameAvatarType.R15
				else
					avatarType = Enum.GameAvatarType.PlayerChoice
				end
				universeAvatarController:setAvatarType(game, avatarType)
			end
		end,
		function()
			local changed = state.Settings.Changed.universeAnimationType

			if changed ~= nil then
				universeAvatarController:setAnimationType(game, changed)
			end
		end,
		function()
			local changed = state.Settings.Changed.universeCollisionType

			if changed ~= nil then
				local collisionType =  Enum.R15CollisionType[changed]
				universeAvatarController:setCollisionType(game, collisionType)
			end
		end,
		function()
			local changed = state.Settings.Changed.universeAvatarAssetOverrides

			if changed ~= nil then
				universeAvatarController:setAssetOverrides(game, changed)
			end
		end,
		function()
			local changedMinValues = state.Settings.Changed.universeAvatarMinScales
			local changedMaxValues = state.Settings.Changed.universeAvatarMaxScales

			if changedMinValues ~= nil or changedMaxValues ~= nil then
				changedMinValues = changedMinValues or state.Settings.Current.universeAvatarMinScales
				changedMaxValues = changedMaxValues or state.Settings.Current.universeAvatarMaxScales

				local threads = {
					Thread.new(function()
						universeAvatarController:setHeightRange(game,
							NumberRange.new(changedMinValues.height, changedMaxValues.height))
					end),
					Thread.new(function()
						universeAvatarController:setWidthRange(game,
							NumberRange.new(changedMinValues.width, changedMaxValues.width))
					end),
					Thread.new(function()
						universeAvatarController:setHeadScaleRange(game,
							NumberRange.new(changedMinValues.head, changedMaxValues.head))
					end),
					Thread.new(function()
						universeAvatarController:setBodyTypeRange(game,
							NumberRange.new(changedMinValues.bodyType, changedMaxValues.bodyType))
					end),
					Thread.new(function()
						universeAvatarController:setProportionsRange(game,
							NumberRange.new(changedMinValues.proportion, changedMaxValues.proportion))
					end),
				}

				for _,thread in ipairs(threads) do
					thread:start()
				end
				for _,thread in ipairs(threads) do
					thread:join()
				end
			end
		end,
	}
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

		SaveScaleBoundaries = game:GetFastFlag("GameSettingsNetworkRefactor") and function(rules)
			dispatch(SettingsSaveScaleBoundaries({ scales = rules }))
		end or nil,
	}
end

local isPlaceDataAvailable = function(props)
	return game.GameId ~= 0
end

local isShutdownRequired = function(currentAvatarType, avatarTypeToChangeTo)
	return currentAvatarType ~= "PlayerChoice" and avatarTypeToChangeTo ~= currentAvatarType
end

local Avatar = Roact.PureComponent:extend(script.Name)

function Avatar:createChildren()
	local props = self.props

	local theme = props.Theme:get("Plugin")
	local mouse = props.Mouse

	return {
		PageLayout = (not FFlagAvatarSizeFixForReorganizeHeaders and
		Roact.createElement("UIListLayout", {
			Padding = UDim.new(0, 25),
			SortOrder = Enum.SortOrder.LayoutOrder,
		}) or nil),

		Morpher = Roact.createElement(RootPanelExternal, {
			ThemeData = theme,
			IsEnabled = true,

			IsGameShutdownRequired = isShutdownRequired(props.CurrentAvatarType, props.AvatarType),
			AssetOverrideErrors = props.AssetOverrideErrors,
			Mouse = mouse:get(),

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

function Avatar:render()
	local localization = self.props.Localization

	return Roact.createElement(SettingsPage, {
		SettingsLoadJobs = loadSettings,
		SettingsSaveJobs = saveSettings,
		Title = localization:getText("General", "Category"..LOCALIZATION_ID),
		PageId = script.Name,
		CreateChildren = function() return self:createChildren() end,
	})
end

ContextServices.mapToProps(Avatar, {
	Localization = ContextServices.Localization,
	Theme = ContextServices.Theme,
	Mouse = ContextServices.Mouse,
})

local settingFromState = require(Plugin.Src.Networking.settingFromState)
Avatar = RoactRodux.connect(
	function(state, props)
		if not state then return end

		local getValue = function(propName)
			return settingFromState(state.Settings, propName)
		end

		return loadValuesToProps(getValue, state)
	end,

	function(dispatch)
		local setValue = function(propName)
			return function(value)
				dispatch(AddChange(propName, value))
			end
		end

		return dispatchChanges(setValue, dispatch)
	end
)(Avatar)

Avatar.LocalizationId = LOCALIZATION_ID

return Avatar