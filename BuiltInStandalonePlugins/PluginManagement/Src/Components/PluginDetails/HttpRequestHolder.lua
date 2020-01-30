local Plugin = script.Parent.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local UILibrary = require(Plugin.Packages.UILibrary)
local FitFrame = require(Plugin.Packages.FitFrame)
local ContextServices = require(Plugin.Packages.Framework.ContextServices)

local UpdatePluginPermission = require(Plugin.Src.Thunks.UpdatePluginPermission)
local FluidFitTextLabel = require(Plugin.Src.Components.FluidFitTextLabel)

local PluginAPI2 = require(Plugin.Src.ContextServices.PluginAPI2)

local FitFrameVertical = FitFrame.FitFrameVertical
local CheckBox = UILibrary.Component.CheckBox

local HttpRequestHolder = Roact.Component:extend("HttpRequestHolder")

local CHECKBOX_PADDING = 8
local CONTENT_PADDING = 20

HttpRequestHolder.defaultProps = {
	httpPermissions = {},
}

function HttpRequestHolder:init()
	self.onCheckboxActivated = function()
		local apiImpl = self.props.API:get()
		return self.props.updatePluginPermission(apiImpl)
	end
end

function HttpRequestHolder:render()
	local localization = self.props.Localization
	local httpPermissions = self.props.httpPermissions
	local layoutOrder = self.props.LayoutOrder

	local theme = self.props.Theme:get("Plugin")

	table.sort(httpPermissions, function(first, second)
		return string.lower(first.data.domain) < string.lower(second.data.domain)
	end)

	local checkboxItems = {}
	for index, permission in pairs(httpPermissions) do
		local elem = Roact.createElement(CheckBox, {
			Id = index,
			LayoutOrder = index,
			Title = permission.data and permission.data.domain or "",
			Selected = true,
			Enabled = permission.enabled,
			Height = 14,
			TextSize = 14,
			OnActivated = self.onCheckboxActivated,
			titlePadding = 8,
		})
		table.insert(checkboxItems, elem)
	end

	return Roact.createElement(FitFrameVertical, {
		BackgroundTransparency = 1,
        contentPadding = UDim.new(0, CONTENT_PADDING),
		LayoutOrder = layoutOrder,
        width = UDim.new(1, 0)
	}, {
		Checkboxes = Roact.createElement(FitFrameVertical, {
			BackgroundTransparency = 1,
			contentPadding = UDim.new(0, CHECKBOX_PADDING),
			LayoutOrder = 0,
			width = UDim.new(1, 0)
		}, checkboxItems ),

		InfoText = Roact.createElement(FluidFitTextLabel, {
			BackgroundTransparency = 1,
            Font = theme.Font,
			LayoutOrder = 1,
			TextSize = 14,
			Text = localization:getText("Details", "HttpRequestInfo"),
			TextXAlignment = Enum.TextXAlignment.Left,
			TextColor3 = theme.InfoTextColor,
		}),
	})
end

ContextServices.mapToProps(HttpRequestHolder, {
	API = PluginAPI2,
	Localization = ContextServices.Localization,
	Theme = ContextServices.Theme,
})

local function mapDispatchToProps(dispatch)
	return {
		updatePluginPermission = function(apiImpl)
			dispatch(UpdatePluginPermission(apiImpl))
		end,
	}
end

return RoactRodux.connect(nil, mapDispatchToProps)(HttpRequestHolder)