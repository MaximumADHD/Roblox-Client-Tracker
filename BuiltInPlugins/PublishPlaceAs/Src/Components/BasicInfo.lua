--[[
	Publish page for Basic Info settings.
		- Game name and description
		- Game privacy settings (who is allowed to play the game)
		- Playable Devices (which devices can run this game)
		- Genre
		- Thumbnails (Screenshots and Video)
		- Game Icon

	Settings:
		string Name - The game name
		bool IsActive - Whether the game is public or private
		bool IsFriendsOnly - Whether the game is open to everyone or only friends/group members
		string Group - The name of the group that owns this game, if one does
		string Description - The game description
		string Genre - The genre of this game
		table Devices - A table of which devices are playable
		table Thumbnails - A table of this game's thumbnails
		list Order - The order in which this game's thumbnails display
		string GameIcon - The rbxassetid url of the game's icon, or "None" if no icon exists.

	Errors:
		name: "Empty", "TooLong"
		description: "TooLong"
		devices: "NoDevices"
]]


local MAX_NAME_LENGTH = 50
local MAX_DESCRIPTION_LENGTH = 1000

local nameErrors = {
	Moderated = "ErrorNameModerated",
	Empty = "ErrorNameEmpty",
	TooLong = "ErrorNameTooLong",
}

local descriptionErrors = {
	Moderated = "ErrorDescModerated",
	TooLong = "ErrorDescTooLong",
}

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Cryo = require(Plugin.Packages.Cryo)

local UILibrary = require(Plugin.Packages.UILibrary)
local TitledFrame = UILibrary.Component.TitledFrame
local RoundTextBox = UILibrary.Component.RoundTextBox
local StyledDropDown = UILibrary.Component.StyledDropdown
local Separator = UILibrary.Component.Separator

local CheckBoxSet = require(Plugin.Src.Components.CheckBoxSet)
local Header = require(Plugin.Src.Components.Header)

local AddChange = require(Plugin.Src.Actions.AddChange)
local AddErrors = require(Plugin.Src.Actions.AddErrors)
local Constants = require(Plugin.Src.Resources.Constants)
local Theming = require(Plugin.Src.ContextServices.Theming)

local createMenuPage = require(Plugin.Src.Components.createMenuPage)

--Uses props to display current settings values
local function displayContents(props, localized)
	local description = props.Description or ""
	local descriptionChanged = props.DescriptionChanged
	local descriptionError = props.DescriptionError
	local devices = props.Devices
	local devicesChanged = props.DevicesChanged
	local devicesError = props.DevicesError
	local genreText = props.Genre and props.Genre.Text or "Choose a Genre"
	local genreChanged = props.GenreChanged
	local name = props.Name or ""
	local nameChanged = props.NameChanged
	local nameError = props.NameError
	local pageName = props.PageName

	local genreIds = {
		"All", "Adventure", "Tutorial", "Funny", "Ninja", "FPS", "Scary", "Fantasy",
		"War", "Pirate", "RPG", "SciFi", "Sports", "TownAndCity", "WildWest",
	}
	local genres = Cryo.List.map(genreIds, function(name)
		return {Key = name, Text = localized:getText("General", "Genre"..name)}
	end)

	return {
		Header = Roact.createElement(Header, {
			Title = localized:getText("General", "MenuItem"..pageName),
			LayoutOrder = 0,
		}),

		Name = Roact.createElement(TitledFrame, {
			Title = localized:getText("General", "Name"),
			MaxHeight = 60,
			LayoutOrder = 1,
			TextSize = Constants.TEXT_SIZE,
		}, {
			TextBox = Roact.createElement(RoundTextBox, {
				Active = true,
				ErrorMessage = nameError and localized:getText("General", nameErrors[nameError]),
				MaxLength = MAX_NAME_LENGTH,
				Text = name,
				TextSize = Constants.TEXT_SIZE,
				SetText = nameChanged,
			}),
		}),

		Description = Roact.createElement(TitledFrame, {
			Title = "Description",
			MaxHeight = 150,
			LayoutOrder = 2,
			TextSize = Constants.TEXT_SIZE,
		}, {
			TextBox = Roact.createElement(RoundTextBox, {
				Active = true,
				Height = 130,
				Multiline = true,
				MaxLength = MAX_DESCRIPTION_LENGTH,
				Text = description,
				TextSize = Constants.TEXT_SIZE,
				SetText = descriptionChanged,
				ErrorMessage = descriptionError and localized:getText("General", descriptionErrors[descriptionError]),
			}),
		}),

		Separator = Roact.createElement(Separator, {
			LayoutOrder = 3,
		}),

		Genre = Roact.createElement(TitledFrame, {
			Title = localized:getText("General", "Genre"),
			MaxHeight = 38,
			TextSize = Constants.TEXT_SIZE,
			ZIndex = 2,
			LayoutOrder = 4,
		}, {
			Selector = Theming.withTheme(function(theme)
				return Roact.createElement(StyledDropDown, {
					Size = UDim2.new(0, 220, 0, 38),
					Position = UDim2.new(0, 0, 0, 0),
					ItemHeight = 38,
					ButtonText = genreText,
					Items = genres,
					MaxItems = 4,
					TextSize = Constants.TEXT_SIZE,

					OnItemClicked = genreChanged,
					DescriptionTextSize = Constants.TEXT_SIZE - 2,

				})
			end),
		}),

		Separator2 = Roact.createElement(Separator, {
			LayoutOrder = 5,
		}),

		Devices = Roact.createElement(CheckBoxSet, {
			Title = "Devices",
			LayoutOrder = 6,
			Boxes = {
				{
					Id = "Computer",
					Title = localized:getText("Devices", "Computer"),
					Selected = devices.Computer,
				}, {
					Id = "Phone",
					Title = localized:getText("Devices", "Phone"),
					Selected = devices.Phone,
				}, {
					Id = "Tablet",
					Title = localized:getText("Devices", "Tablet"),
					Selected = devices.Tablet,
				}, {
					Id = "Console",
					Title = localized:getText("Devices", "Console"),
					Selected = devices.Console,
				},
			},
			ErrorMessage = (devicesError and localized:getText("General", "ErrorNoDevices")) or nil,
			EntryClicked = function(box)
				local newDevices = Cryo.Dictionary.join(devices, {
					[box.Id] = not box.Selected,
				})
				devicesChanged(newDevices)
			end,
		}),
	}
end

--Loads settings values into props by key
local function loadValuesToProps(getValue, state)
	-- Set in settings reducer.
	local errors = state.NewGameSettings.errors
	return {
		NameError = errors.name,
		DescriptionError = errors.description,
		DevicesError = errors.playableDevices,
		IsCurrentlyActive = state.NewGameSettings.current.isActive,

		Name = getValue("name"),
		Description = getValue("description"),
		Genre = getValue("genre"),
		Devices = getValue("playableDevices") or {},
		RootPlaceId = getValue("rootPlaceId"),
		IsActive = getValue("isActive"),
		IsFriendsOnly = getValue("isFriendsOnly"),
	}
end

--Implements dispatch functions for when the user changes values
local function dispatchForProps(setValue, dispatch)
	return {
		GenreChanged = setValue("genre"),

		NameChanged = function(text)
			dispatch(AddChange("name", text))
			local nameLength = string.len(text)
			if nameLength == 0 or string.len(string.gsub(text, " ", "")) == 0 then
				dispatch(AddErrors({name = "Empty"}))
			elseif nameLength > MAX_NAME_LENGTH then
				dispatch(AddErrors({name = "TooLong"}))
			end
		end,

		DescriptionChanged = function(text)
			dispatch(AddChange("description", text))
			if string.len(text) > MAX_DESCRIPTION_LENGTH then
				dispatch(AddErrors({description = "TooLong"}))
			end
		end,

		DevicesChanged = function(devices)
			dispatch(AddChange("playableDevices", devices))
			for _, value in pairs(devices) do
				if value then
					return
				end
			end
			dispatch(AddErrors({playableDevices = "NoDevices"}))
		end,
	}
end

local function BasicInfo(props)
	local page = createMenuPage(loadValuesToProps, dispatchForProps)

	return Roact.createElement(page, {
		PageName = props.PageName,
		ContentHeightChanged = props.ContentHeightChanged,
		LayoutOrder = props.LayoutOrder,
		Content = displayContents,
		AddLayout = true,
	})
end

return BasicInfo
