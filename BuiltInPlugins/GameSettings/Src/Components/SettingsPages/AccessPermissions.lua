if not settings():GetFFlag("StudioGameSettingsAccessPermissions") then return nil end

local PageName = "Access Permissions"

local FFlagGameSettingsReorganizeHeaders = settings():GetFFlag("GameSettingsReorganizeHeaders")
local FFlagGameSettingsDispatchShutdownWarning = settings():getFFlag("GameSettingsDispatchShutdownWarning")

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)

local Header = require(Plugin.Src.Components.Header)
local RadioButtonSet = require(Plugin.Src.Components.RadioButtonSet)
local GameOwnerWidget = require(Plugin.Src.Components.Permissions.GameOwnerWidget)
local CollaboratorsWidget = require(Plugin.Src.Components.Permissions.CollaboratorsWidget)
local SearchbarWidget = require(Plugin.Src.Components.Permissions.CollaboratorSearchWidget)

local AddChange = require(Plugin.Src.Actions.AddChange)
local AddWarning = require(Plugin.Src.Actions.AddWarning)
local DiscardWarning = require(Plugin.Src.Actions.DiscardWarning)
local SearchCollaborators = require(Plugin.Src.Thunks.SearchCollaborators)
local AddGroupCollaborator = require(Plugin.Src.Thunks.AddGroupCollaborator)

local createSettingsPage = require(Plugin.Src.Components.SettingsPages.createSettingsPage)

--Loads settings values into props by key
local function loadValuesToProps(getValue, state)
	local loadedProps = {
		IsActive = getValue("isActive"),
		IsFriendsOnly = getValue("isFriendsOnly"),
		Permissions = getValue("permissions"),
		GroupMetadata = getValue("groupMetadata"),
		OwnerThumbnail = getValue("ownerThumbnail"),
		OwnerName = getValue("ownerName"),
		Thumbnails = state.Thumbnails,
		SearchData = state.CollaboratorSearch,
		
		StudioUserId = getValue("studioUserId"),
		GroupOwnerUserId = getValue("groupOwnerUserId"),
	}

	if FFlagGameSettingsDispatchShutdownWarning then
		loadedProps.IsCurrentlyActive = state.Settings.Current.isActive
	end

	return loadedProps
end

--Implements dispatch functions for when the user changes values
local function dispatchChanges(setValue, dispatch)
	local dispatchFuncs = {
		IsFriendsOnlyChanged = setValue("isFriendsOnly"),
		PermissionsChanged = setValue("permissions"),
		GroupMetadataChanged = setValue("groupMetadata"),
		
		IsActiveChanged = function(button, willShutdown)
			if willShutdown then
				dispatch(AddWarning("isActive"))
			else
				dispatch(DiscardWarning("isActive"))
			end
			dispatch(AddChange("isActive", button.Id))
		end,

		SearchRequested = function(...)
			dispatch(SearchCollaborators(...))
		end,
		GroupCollaboratorAdded = function(...)
			dispatch(AddGroupCollaborator(...))
		end,
	}
	
	return dispatchFuncs
end

--Uses props to display current settings values
local function displayContents(page, localized)
	local props = page.props
	
	return {
		Header = FFlagGameSettingsReorganizeHeaders and Roact.createElement(Header, {
			Title = localized.Category[PageName],
			LayoutOrder = 0,
		}),
		
		Playability = Roact.createElement(RadioButtonSet, {
			Title = localized.Title.Playability,
			Description = localized.Playability.Header,
			LayoutOrder = 1,
			Buttons = {{
					Id = true,
					Title = localized.Playability.Public.Title,
					Description = localized.Playability.Public.Description,
				}, {
					Id = "Friends",
					Title = props.Group and localized.Playability.Group.Title or localized.Playability.Friends.Title,
					Description = props.Group and localized.Playability.Group.Description({group = props.Group})
						or localized.Playability.Friends.Description,
				}, {
					Id = false,
					Title = localized.Playability.Private.Title,
					Description = localized.Playability.Private.Description,
				},
			},
			Enabled = props.IsActive ~= nil,
			--Functionality
			Selected = props.IsFriendsOnly and "Friends" or props.IsActive,
			SelectionChanged = function(button)
				if button.Id == "Friends" then
					props.IsFriendsOnlyChanged(true)
					props.IsActiveChanged({Id = true})
				else
					props.IsFriendsOnlyChanged(false)
					local willShutdown = (function()
						if FFlagGameSettingsDispatchShutdownWarning then
							return props.IsCurrentlyActive and not button.Id
						else
							return props.IsActive and not button.Id
						end
					end)()
					props.IsActiveChanged(button, willShutdown)
				end
			end,
		}),
		
		OwnerWidget = Roact.createElement(GameOwnerWidget, {
			LayoutOrder = 2,
			
			Enabled = props.IsActive ~= nil,
			OwnerName = props.OwnerName,
			OwnerThumbnail = props.OwnerThumbnail,
			
			StudioUserId = props.StudioUserId,
			GroupOwnerUserId = props.GroupOwnerUserId,
			
			GroupMetadata = props.GroupMetadata,
			Permissions = props.Permissions,
			PermissionsChanged = props.PermissionsChanged,
			Thumbnails = props.Thumbnails,
		}),
		
		SearchbarWidget = Roact.createElement(SearchbarWidget, {
			LayoutOrder = 3,
			Enabled = props.IsActive ~= nil,

			SearchRequested = props.SearchRequested,
			SearchData = props.SearchData,
			Thumbnails = props.Thumbnails,
			Permissions = props.Permissions,
			GroupMetadata = props.GroupMetadata,
			GroupCollaboratorAdded = props.GroupCollaboratorAdded,
			PermissionsChanged = props.PermissionsChanged,
		}),
		
		CollaboratorListWidget = Roact.createElement(CollaboratorsWidget, {
			LayoutOrder = 4,
			Enabled = props.IsActive ~= nil,
			GroupMetadata = props.GroupMetadata,
			Permissions = props.Permissions,
			PermissionsChanged = props.PermissionsChanged,
			GroupMetadataChanged = props.GroupMetadataChanged,
			Thumbnails = props.Thumbnails,
		}),
	}
end

local SettingsPage = createSettingsPage(PageName, loadValuesToProps, dispatchChanges)

local function AccessPermissions(props)
	return Roact.createElement(SettingsPage, {
		ContentHeightChanged = props.ContentHeightChanged,
		SetScrollbarEnabled = props.SetScrollbarEnabled,
		LayoutOrder = props.LayoutOrder,
		Content = displayContents,

		AddLayout = true,
	})
end

return AccessPermissions