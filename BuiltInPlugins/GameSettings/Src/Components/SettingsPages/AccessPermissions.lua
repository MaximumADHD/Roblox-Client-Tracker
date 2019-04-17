if not settings():GetFFlag("StudioGameSettingsAccessPermissions") then return nil end

local PageName = "Access Permissions"

local FFlagGameSettingsReorganizeHeaders = settings():GetFFlag("GameSettingsReorganizeHeaders")

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)

local Header = require(Plugin.Src.Components.Header)
local RadioButtonSet = require(Plugin.Src.Components.RadioButtonSet)
local Separator = require(Plugin.Src.Components.Separator)

local WarningDialog = require(Plugin.Src.Components.Dialog.WarningDialog)
local ListDialog = require(Plugin.Src.Components.Dialog.ListDialog)

local AddChange = require(Plugin.Src.Actions.AddChange)
local AddErrors = require(Plugin.Src.Actions.AddErrors)
local AddWarning = require(Plugin.Src.Actions.AddWarning)
local DiscardWarning = require(Plugin.Src.Actions.DiscardWarning)

local createSettingsPage = require(Plugin.Src.Components.SettingsPages.createSettingsPage)

--Loads settings values into props by key
local function loadValuesToProps(getValue, state)
	local loadedProps = {
		IsActive = getValue("isActive"),
		IsFriendsOnly = getValue("isFriendsOnly"),
	}

	return loadedProps
end

--Implements dispatch functions for when the user changes values
local function dispatchChanges(setValue, dispatch)
	local dispatchFuncs = {
		IsFriendsOnlyChanged = setValue("isFriendsOnly"),
		IsActiveChanged = function(button, willShutdown)
			if willShutdown then
				dispatch(AddWarning("isActive"))
			else
				dispatch(DiscardWarning("isActive"))
			end
			dispatch(AddChange("isActive", button.Id))
		end
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
		
		-- TODO replace with a component. Pure label for demo purposes
		Debug_Owner = Roact.createElement("TextLabel", {
			LayoutOrder = 1,
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			Size = UDim2.new(1, 0, 0, 16),

			Font = Enum.Font.SourceSans,
			TextSize = 22,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Top,
			Text = "Game Owner",
		}),

		Playability = Roact.createElement(RadioButtonSet, {
			Title = localized.Title.Playability,
			Description = localized.Playability.Header,
			LayoutOrder = 2,
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
					local willShutdown = props.IsActive and not button.Id
					props.IsActiveChanged(button, willShutdown)
				end
			end,
		}),
		
		Separator = Roact.createElement(Separator, {
			LayoutOrder = 3,
		}),
		
		-- TODO replace with a component. Pure label for demo purposes
		Debug_Collaborators = Roact.createElement("TextLabel", {
			LayoutOrder = 4,
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			Size = UDim2.new(1, 0, 0, 16),

			Font = Enum.Font.SourceSans,
			TextSize = 22,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Top,
			Text = "Collaborators",
		}),
		
		-- TODO replace with a component. Pure label for demo purposes
		Debug_CollaboratorsInfo = Roact.createElement("TextLabel", {
			LayoutOrder = 5,
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			Size = UDim2.new(1, 0, 0, 16),

			Font = Enum.Font.SourceSans,
			TextSize = 22,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Top,
			Text = "Add users or groups to play or edit this game.",
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