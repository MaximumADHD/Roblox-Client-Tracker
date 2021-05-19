local FFlagStudioRestrictGameMonetizationToPublicGameOnly = game:GetFastFlag("StudioRestrictGameMonetizationToPublicGameOnly")
local FFlagGameSettingsMigrateToDevFrameworkSeparator = game:GetFastFlag("GameSettingsMigrateToDevFrameworkSeparator")
local FFlagUXImprovementsShowUserPermsWhenCollaborator2 = game:GetFastFlag("UXImprovementsShowUserPermsWhenCollaborator2")
local FFlagStudioUXImprovementsLoosenTCPermissions = game:GetFastFlag("StudioUXImprovementsLoosenTCPermissions")
local FFlagUXImprovementsNonTCPlacesAllowedPlay = game:GetFastFlag("UXImprovementsNonTCPlacesAllowedPlay")
local FFlagGameSettingsStandardizeLocalizationId = game:GetFastFlag("GameSettingsStandardizeLocalizationId")

local RunService = game:GetService("RunService")
local StudioService = game:GetService("StudioService")

local Page = script.Parent
local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local RoactRodux = require(Plugin.RoactRodux)
local Cryo = require(Plugin.Cryo)
local ContextServices = require(Plugin.Framework.ContextServices)

local Separator = FFlagGameSettingsMigrateToDevFrameworkSeparator and require(Plugin.Framework).UI.Separator or require(Plugin.Src.Components.Separator)
local RadioButtonSet = require(Plugin.Src.Components.RadioButtonSet)
local GameOwnerWidget = require(Page.Components.GameOwnerWidget)
local CollaboratorsWidget = require(Page.Components.CollaboratorsWidget)
local SearchbarWidget = require(Page.Components.CollaboratorSearchWidget)

local SettingsPage = require(Plugin.Src.Components.SettingsPages.SettingsPage)

local AddChange = require(Plugin.Src.Actions.AddChange)
local AddWarning = require(Plugin.Src.Actions.AddWarning)
local DiscardWarning = require(Plugin.Src.Actions.DiscardWarning)

local SetCreatorId = require(Plugin.Src.Actions.SetCreatorId)
local SetCreatorName = require(Plugin.Src.Actions.SetCreatorName)
local SetCreatorType = require(Plugin.Src.Actions.SetCreatorType)
local SetGroupOwnerId = require(Page.Actions.SetGroupOwnerId)
local SetGroupOwnerName = require(Page.Actions.SetGroupOwnerName)
local SetCreatorFriends = require(Plugin.Src.Actions.SetCreatorFriends)

local KeyProvider = require(Plugin.Src.Util.KeyProvider)
local GetIsFriendsOnlyKeyName = KeyProvider.getIsFriendOnlyKeyName
local GetIsActiveKeyName = KeyProvider.getIsActiveKeyName
local GetIsForSaleKeyName = KeyProvider.getIsForSaleKeyName
local GetVipServersIsEnabledKeyName = KeyProvider.getVipServersIsEnabledKeyName
local LOCALIZATION_ID = FFlagGameSettingsStandardizeLocalizationId and script.Name or "AccessPermissions"

local function loadSettings(store, contextItems)
	local state = store:getState()
	local gameId = state.Metadata.gameId
	local gameMetadataController = contextItems.gameMetadataController
	local groupMetadataController = contextItems.groupMetadataController
	local gamePermissionsController = contextItems.gamePermissionsController
	local socialController = contextItems.socialController
	local monetizationController = contextItems.monetizationController

	return {
		function(loadedSettings)
			local isActive = gamePermissionsController:isActive(gameId)

			loadedSettings[FFlagStudioRestrictGameMonetizationToPublicGameOnly and GetIsActiveKeyName() or "isActive"] = isActive
		end,
		function(loadedSettings)
			local isFriendsOnly = gamePermissionsController:isFriendsOnly(gameId)

			loadedSettings[FFlagStudioRestrictGameMonetizationToPublicGameOnly and GetIsFriendsOnlyKeyName() or "isFriendsOnly"] = isFriendsOnly
		end,
		function(loadedSettings)
			local ownerName = gameMetadataController:getCreatorName(gameId)

			store:dispatch(SetCreatorName(ownerName))
		end,
		function(loadedSettings)
			local ownerId = gameMetadataController:getCreatorId(gameId)

			store:dispatch(SetCreatorId(ownerId))
		end,
		function(loadedSettings)
			local ownerType = gameMetadataController:getCreatorType(gameId)

			store:dispatch(SetCreatorType(ownerType))

			if ownerType == Enum.CreatorType.Group then
				local groupId = gameMetadataController:getCreatorId(gameId)
				local groupOwnerId = groupMetadataController:getOwnerId(groupId)
				local groupOwnerName = groupMetadataController:getOwnerName(groupId)

				store:dispatch(SetGroupOwnerId(groupOwnerId))
				store:dispatch(SetGroupOwnerName(groupOwnerName))
			elseif ownerType == Enum.CreatorType.User then
				local ownerId = gameMetadataController:getCreatorId(gameId)
				local friends = socialController:getUserFriends(ownerId)

				store:dispatch(SetCreatorFriends(friends))
			end
		end,
		function(loadedSettings)
			local ownerName = gameMetadataController:getCreatorName(gameId)
			local ownerId = gameMetadataController:getCreatorId(gameId)
			local ownerType = gameMetadataController:getCreatorType(gameId)

			local permissions, groupMetadata = gamePermissionsController:getPermissions(gameId, ownerName, ownerId, ownerType)
			loadedSettings["permissions"] = permissions
			loadedSettings["groupMetadata"] = groupMetadata
		end,

		function(loadedSettings)
			if not FFlagStudioRestrictGameMonetizationToPublicGameOnly then
				return
			end

			if state.Settings.Current[GetIsForSaleKeyName()] == nil then 
				local isForSale = monetizationController:getPaidAccessEnabled(gameId)
				loadedSettings[GetIsForSaleKeyName()] = isForSale
			end
		end,

		function(loadedSettings)
			if not FFlagStudioRestrictGameMonetizationToPublicGameOnly then
				return
			end

			if state.Settings.Current[GetVipServersIsEnabledKeyName()] == nil then
				local vipServersIsEnabled = monetizationController:getVIPServersEnabled(gameId)
				loadedSettings[GetVipServersIsEnabledKeyName()] = vipServersIsEnabled
			end
		end,
	}
end

local function saveSettings(store, contextItems)
	local state = store:getState()
	local gameId = state.Metadata.gameId
	local gamePermissionsController = contextItems.gamePermissionsController

	return {
		function()
			local changed = state.Settings.Changed.isActive

			if changed ~= nil then
				gamePermissionsController:setActive(gameId, changed)
			end
		end,
		function()
			local changed = state.Settings.Changed.isFriendsOnly

			if changed ~= nil then
				gamePermissionsController:setFriendsOnly(gameId, changed)
			end
		end,
		function()
			local current = state.Settings.Current.permissions
			local changed = state.Settings.Changed.permissions

			if changed ~= nil then
				if FFlagStudioUXImprovementsLoosenTCPermissions then
					gamePermissionsController:setPermissions(gameId, current, changed)
				else
					local currentGroupMetadata = state.Settings.Current.groupMetadata
					gamePermissionsController:setPermissions(gameId, current, changed, currentGroupMetadata)
				end
			end
		end,
	}
end


--Loads settings values into props by key
local function loadValuesToProps(getValue, state)
	local loadedProps = {
		-- Playability widget
		IsActive = getValue(FFlagStudioRestrictGameMonetizationToPublicGameOnly and GetIsActiveKeyName() or "isActive"),
		IsFriendsOnly = getValue(FFlagStudioRestrictGameMonetizationToPublicGameOnly and GetIsFriendsOnlyKeyName() or "isFriendsOnly"),
		IsCurrentlyActive = state.Settings.Current.isActive,

		-- Monetization setting
		IsMonetized = FFlagStudioRestrictGameMonetizationToPublicGameOnly and getValue(GetIsForSaleKeyName()) or getValue(GetVipServersIsEnabledKeyName()),

		-- To allow players with games already saved in this error state (notPublic and isMonetized) have the ability to change the setting. Once allowed states are saved the error state will not be selectable.
		IsInitiallyEnabled = FFlagStudioRestrictGameMonetizationToPublicGameOnly 
							and (not state.Settings.Current[GetIsActiveKeyName()] or state.Settings.Current[GetIsFriendsOnlyKeyName()]) 
							and (state.Settings.Current[GetIsForSaleKeyName()] or state.Settings.Current[GetVipServersIsEnabledKeyName()]),

		-- Metadata
		OwnerId = state.GameOwnerMetadata.creatorId,
		OwnerType = state.GameOwnerMetadata.creatorType,
		GroupOwnerUserId = state.GameOwnerMetadata.groupOwnerId,
	}

	return loadedProps
end

--Implements dispatch functions for when the user changes values
local function dispatchChanges(setValue, dispatch)
	local dispatchFuncs = {
		-- Playability widget
		IsFriendsOnlyChanged = setValue(FFlagStudioRestrictGameMonetizationToPublicGameOnly and GetIsFriendsOnlyKeyName() or "isFriendsOnly"),
		IsActiveChanged = function(isActive, willShutdown)
			if willShutdown then
				dispatch(AddWarning(FFlagStudioRestrictGameMonetizationToPublicGameOnly and GetIsActiveKeyName() or "isActive"))
			else
				dispatch(DiscardWarning(FFlagStudioRestrictGameMonetizationToPublicGameOnly and GetIsActiveKeyName() or "isActive"))
			end
			dispatch(AddChange(FFlagStudioRestrictGameMonetizationToPublicGameOnly and GetIsActiveKeyName() or "isActive", isActive))
		end,
	}

	return dispatchFuncs
end

local Permissions = Roact.PureComponent:extend(script.Name)

function Permissions:isGroupGame()
	local props = self.props
	local ownerType = props.OwnerType

	return ownerType == Enum.CreatorType.Group
end

function Permissions:isTeamCreate()
	-- The endpoint to check this fails a permission error if you do not have Manage, so we have
	-- to check it with a hack. In non-TC games you are running both client/server in Edit, but in
	-- TC you are only running the client. The server is run by RCC
	return RunService:IsEdit() and not RunService:IsServer()
end

function Permissions:isLoggedInUserGameOwner()
	local studioUserId = StudioService:GetUserId()

	local props = self.props
	local ownerId = props.OwnerId
	local groupOwnerUserId = props.GroupOwnerUserId

	if self:isGroupGame() then
		return studioUserId == groupOwnerUserId
	else
		return studioUserId == ownerId
	end
end

function Permissions:render()
	local localization = self.props.Localization

	local function createChildren()
		local props = self.props

		local isFriendsOnly = props.IsFriendsOnly
		local isActive = props.IsActive
		local isCurrentlyActive = props.IsCurrentlyActive
		local isActiveChanged = props.IsActiveChanged
		local isFriendsOnlyChanged = props.IsFriendsOnlyChanged
		local isPublic = isActive and not isFriendsOnly

		local isMonetized = FFlagStudioRestrictGameMonetizationToPublicGameOnly and props.IsMonetized
		local isInitiallyEnabled = FFlagStudioRestrictGameMonetizationToPublicGameOnly and props.IsInitiallyEnabled
		
		local localization = props.Localization
		local theme = props.Theme:get("Plugin")

		local canUserEditPermissions = self:isLoggedInUserGameOwner()
		
		-- here "Edit" refers to adding new collaborators, or changing the permission of collaborators
		local canUserEditCollaborators = false
		if FFlagStudioUXImprovementsLoosenTCPermissions then
			if FFlagUXImprovementsNonTCPlacesAllowedPlay then
				canUserEditCollaborators = self:isLoggedInUserGameOwner()
			else
				canUserEditCollaborators = self:isLoggedInUserGameOwner() and self:isTeamCreate()
			end
		else
			canUserEditCollaborators = self:isLoggedInUserGameOwner() and self:isTeamCreate() and not self:isGroupGame()
		end

		local DEPRECATED_canUserSeeCollaborators = false
		if not FFlagUXImprovementsShowUserPermsWhenCollaborator2 then
			DEPRECATED_canUserSeeCollaborators = canUserEditCollaborators
			-- group games show existing individual collaboraters; they can be removed but not edited
			local DEPRECATED_canUserRemoveCollaborators = self:isLoggedInUserGameOwner() and self:isTeamCreate()
			DEPRECATED_canUserSeeCollaborators = canUserEditCollaborators or DEPRECATED_canUserRemoveCollaborators
		end

		local playabilityButtons = {
			{
				Id = true,
				Title = localization:getText("General", "PlayabilityPublic"),
				Description = localization:getText("General", "PlayabilityPublicDesc"),
			},  {
				Id = false,
				Title = localization:getText("General", "PlayabilityPrivate"),
				Description = localization:getText("General", "PlayabilityPrivateDesc"),
			},
		}
		if not self:isGroupGame() then
			table.insert(playabilityButtons, 1, {
				Id = "Friends",
				Title = localization:getText("General", "PlayabilityFriends"),
				Description = localization:getText("General", "PlayabilityFriendsDesc"),
			})
		end

		local teamCreateWarningVisible
		if FFlagUXImprovementsShowUserPermsWhenCollaborator2 then
			teamCreateWarningVisible = self:isLoggedInUserGameOwner() and (not self:isTeamCreate()) and (not self:isGroupGame())
		else
			teamCreateWarningVisible = (not canUserEditCollaborators) and (not self:isGroupGame())
		end

		local teamCreateWarningSize = nil 
		if not FFlagGameSettingsStandardizeLocalizationId then
			teamCreateWarningSize = UDim2.new(1, 0, 0, 30)
		end
		-- once user change to public and have the monetize enabled the plability button will be disabled
		local playabilityEnabled = (self:isLoggedInUserGameOwner() or self:isGroupGame()) and (not isPublic and isInitiallyEnabled or not isMonetized)
		local playabilityWarningVisible = FFlagStudioRestrictGameMonetizationToPublicGameOnly and not playabilityEnabled or false

		return {
			Playability = Roact.createElement(RadioButtonSet, {
				Title = localization:getText("General", "TitlePlayability"),
				Description = localization:getText("General", "PlayabilityHeader"),
				LayoutOrder = 10,
				Buttons = playabilityButtons,
				Enabled = playabilityEnabled,

				--Functionality
				Selected = isFriendsOnly and "Friends" or isActive,
				SelectionChanged = function(button)
					if button.Id == "Friends" then
						isFriendsOnlyChanged(true)
						isActiveChanged(true, false)
					else
						isFriendsOnlyChanged(false)
						local willShutdown = (function()
							return isCurrentlyActive and not button.Id
						end)()
						isActiveChanged(button.Id, willShutdown)
					end
				end,

				Warning = playabilityWarningVisible and localization:getText("AccessPermissions", "PlayabilityWarning"),
			}),

			Separator1 = Roact.createElement(Separator, {
				LayoutOrder = 20,
				Size = UDim2.new(1, 0, 0, 1),
			}),

			OwnerWidget = Roact.createElement(GameOwnerWidget, {
				LayoutOrder = 30,

				Writable = canUserEditPermissions,
			}),

			Separator2 = Roact.createElement(Separator, {
				LayoutOrder = 40,
				Size = UDim2.new(1, 0, 0, 1),
			}),

			TeamCreateWarning = teamCreateWarningVisible and Roact.createElement("TextLabel", Cryo.Dictionary.join(theme.fontStyle.Subtitle, {
				Text = FFlagGameSettingsStandardizeLocalizationId and localization:getText(LOCALIZATION_ID, "TeamCreateWarning") 
					or localization:getText("AccessPermissions", "TeamCreateWarning"),
				TextXAlignment = Enum.TextXAlignment.Left,
				TextColor3 = theme.warningColor,
				BackgroundTransparency = 1,
				Size = teamCreateWarningSize,
				LayoutOrder = 50,
			})),

			SearchbarWidget = (FFlagUXImprovementsNonTCPlacesAllowedPlay or canUserEditCollaborators) and Roact.createElement(SearchbarWidget, {
				LayoutOrder = 50,
				Writable = true,
			}),

			CollaboratorListWidget = FFlagUXImprovementsShowUserPermsWhenCollaborator2 and self:isTeamCreate() and Roact.createElement(CollaboratorsWidget, {
				LayoutOrder = 60,
				Writable = canUserEditCollaborators,
				Editable = canUserEditCollaborators
			}),

			DEPRECATED_CollaboratorListWidget = not FFlagUXImprovementsShowUserPermsWhenCollaborator2 and DEPRECATED_canUserSeeCollaborators and Roact.createElement(CollaboratorsWidget, {
				LayoutOrder = 60,
				Writable = true,
				Editable = canUserEditCollaborators
			}),
		}
	end

	return Roact.createElement(SettingsPage, {
		SettingsLoadJobs = loadSettings,
		SettingsSaveJobs = saveSettings,
		Title = localization:getText("General", "Category"..LOCALIZATION_ID),
		PageId = FFlagGameSettingsStandardizeLocalizationId and LOCALIZATION_ID or script.Name,
		CreateChildren = createChildren,
	})
end

ContextServices.mapToProps(Permissions, {
	Localization = ContextServices.Localization,
	Theme = ContextServices.Theme,
})

local settingFromState = require(Plugin.Src.Networking.settingFromState)
Permissions = RoactRodux.connect(
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
)(Permissions)

Permissions.LocalizationId = LOCALIZATION_ID

return Permissions
