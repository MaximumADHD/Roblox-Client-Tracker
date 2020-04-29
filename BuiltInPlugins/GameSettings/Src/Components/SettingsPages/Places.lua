--[[
    Settings page for Places settings:
        - Create place
        - List of places in game
        - Edit Place

	Settings:
        - Name
        - Server Fill
        - Max Players
        - Version History

	Errors:
		name: "Empty", "TooLong"
		description: "TooLong"
		devices: "NoDevices"
]]

local PageName = "Places"

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local Cryo = require(Plugin.Cryo)
local UILibrary = require(Plugin.UILibrary)

local showDialog = require(Plugin.Src.Consumers.showDialog)
local getMouse = require(Plugin.Src.Consumers.getMouse)

local AddChange = require(Plugin.Src.Actions.AddChange)
local AddErrors = require(Plugin.Src.Actions.AddErrors)
local AddWarning = require(Plugin.Src.Actions.AddWarning)
local DiscardWarning = require(Plugin.Src.Actions.DiscardWarning)

local createSettingsPage = require(Plugin.Src.Components.SettingsPages.createSettingsPage)

--Loads settings values into props by key
local function loadValuesToProps(getValue, state)
	local loadedProps = {

	}
	return loadedProps
end

--Implements dispatch functions for when the user changes values
local function dispatchChanges(setValue, dispatch)

end

--Uses props to display current settings values
local function displayContents(page, localized)


end

local SettingsPage = createSettingsPage(PageName, loadValuesToProps, dispatchChanges)

local function Places(props)
	return Roact.createElement(SettingsPage, {
		ContentHeightChanged = props.ContentHeightChanged,
		SetScrollbarEnabled = props.SetScrollbarEnabled,
		LayoutOrder = props.LayoutOrder,
		Content = displayContents,

		AddLayout = true,
	})
end

return Places
