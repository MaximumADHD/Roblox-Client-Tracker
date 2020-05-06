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

local Framework = Plugin.Framework

local UI = require(Framework.UI)
local Button = UI.Button
local HoverArea = UI.HoverArea

local UILibrary = require(Plugin.UILibrary)
local GetTextSize = UILibrary.Util.GetTextSize

local Header = require(Plugin.Src.Components.Header)

local AddChange = require(Plugin.Src.Actions.AddChange)
local AddErrors = require(Plugin.Src.Actions.AddErrors)
local AddWarning = require(Plugin.Src.Actions.AddWarning)
local DiscardWarning = require(Plugin.Src.Actions.DiscardWarning)

local createSettingsPage = require(Plugin.Src.Components.SettingsPages.DEPRECATED_createSettingsPage)

local FFlagStudioConvertGameSettingsToDevFramework = game:GetFastFlag("StudioConvertGameSettingsToDevFramework")

local AssetManagerService = game:GetService("AssetManagerService")

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
	local props = page.props
	local theme = props.Theme:get("Plugin")

	local buttonText = FFlagStudioConvertGameSettingsToDevFramework and localized:getText("General", "ButtonCreate") or localized.Button.Create
    local buttonTextExtents = GetTextSize(buttonText, theme.fontStyle.Header.TextSize, theme.fontStyle.Header.Font)

	return {
		Header = Roact.createElement(Header, {
			Title = FFlagStudioConvertGameSettingsToDevFramework and localized:getText("General", "Category"..PageName) or localized.Category[PageName],
			LayoutOrder = 0,
		}),

		CreateButton = Roact.createElement(Button, {
			Style = "RoundPrimary",
			Text = buttonText,
			Size = UDim2.new(0, buttonTextExtents.X + theme.createButton.PaddingX,
			0, buttonTextExtents.Y + theme.createButton.PaddingY),
			LayoutOrder = 1,
			OnClick = function()
				AssetManagerService:AddNewPlace()
			end,
		}, {
			Roact.createElement(HoverArea, {Cursor = "PointingHand"}),
		}),
	}
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
