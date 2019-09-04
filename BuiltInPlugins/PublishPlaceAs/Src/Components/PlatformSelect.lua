--[[
	An implementation of StyledDialog that adds UILibrary Buttons to the bottom.
	To use the component, the consumer supplies an array of buttons, optionally
	defining a Style for each button if it should display differently and a list
	of entries to display along with a header text.

	Props:
        int LayoutOrder = The layout order PlatformSelect will be placed in layout
        bool DevicesError = Controls whether or not to display error message
        table Devices = Table to set selection state of devices in set
		
        function DeviceSelected(id, selected) = Callback for when device is selected. Accepts the id 
            of box and selection state to set in store
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local UILibrary = require(Plugin.Packages.UILibrary)

local CheckBoxSet = require(Plugin.Src.Components.CheckBoxSet)
local ListDialog = require(Plugin.Src.Components.ListDialog)

local Localizing = UILibrary.Localizing

local PlatformSelect = Roact.PureComponent:extend("PlatformSelect")

function PlatformSelect:init()
    self.state = {
        dialogEnabled = false,
    }

    self.showDialog = function()
        self:setState({
            dialogEnabled = true,
        })
    end

    self.closeDialog = function(accepted)
        if accepted then
            self.props.DeviceSelected("Console", accepted)
        end

        self:setState({
            dialogEnabled = false,
        })
    end
end

function PlatformSelect:render()
    return Localizing.withLocalization(function(localization)
        local props = self.props

        local layoutOrder = props.LayoutOrder or 0
        local devicesError = props.DevicesError
        local deviceSelected = props.DeviceSelected
        local devices = props.Devices

        return Roact.createElement(CheckBoxSet, {
                Title = localization:getText("PageTitle", "Devices"),
                LayoutOrder = layoutOrder,
                Boxes = {
                    {
                        Id = "Computer",
                        Title = localization:getText("Devices", "Computer"),
                        Selected = devices.Computer,
                    }, {
                        Id = "Phone",
                        Title = localization:getText("Devices", "Phone"),
                        Selected = devices.Phone,
                    }, {
                        Id = "Tablet",
                        Title = localization:getText("Devices", "Tablet"),
                        Selected = devices.Tablet,
                    }, {
                        Id = "Console",
                        Title = localization:getText("Devices", "Console"),
                        Selected = devices.Console,
                    },
                },
                ErrorMessage = (devicesError and localization:getText("Error", "NoDevices")) or nil,
                EntryClicked = function(box)
                    if box.Id == "Console" and not box.Selected then
                        self.showDialog()
                    else 
                        deviceSelected(box.Id, not box.Selected)
                    end
                end,
            }, {
                ListDialog = self.state.dialogEnabled and Roact.createElement(ListDialog, {
                    Title = localization:getText("General", "ContentDialogTitle"),
                    Header = localization:getText("General", "ContentDialogHeader"),
                    Entries = {
                        localization:getText("General", "ContentDialogItem1"),
                        localization:getText("General", "ContentDialogItem2"),
                        localization:getText("General", "ContentDialogItem3"),
                        localization:getText("General", "ContentDialogItem4"),
                        localization:getText("General", "ContentDialogItem5"),
                    },
                    Buttons = {
                        { Key = "Disagree", Text = localization:getText("Button", "ReplyDisagree") },
                        { Key = "Agree", Text = localization:getText("Button", "ReplyAgree"), Style = "Primary" },
                    },
                    OnButtonClicked = function(key)
                        if key == "Agree" then
                            self.closeDialog(true)
                        else
                            self.closeDialog(false)
                        end
                    end,
                    OnClose = function()
                        self.closeDialog(false)
                    end,
            }),
        })
    end)
end

return PlatformSelect