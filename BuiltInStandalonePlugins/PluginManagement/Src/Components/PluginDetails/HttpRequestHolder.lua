local Plugin = script.Parent.Parent.Parent.Parent
local TextService = game:GetService("TextService")

local PermissionsService = game:GetService("PermissionsService")

local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local UILibrary = require(Plugin.Packages.UILibrary)
local FitFrame = require(Plugin.Packages.FitFrame)
local ContextServices = require(Plugin.Packages.Framework.ContextServices)

local SetPluginPermission = require(Plugin.Src.Thunks.SetPluginPermission)
local FluidFitTextLabel = require(Plugin.Src.Components.FluidFitTextLabel)

local PluginAPI2 = require(Plugin.Src.ContextServices.PluginAPI2)

local FitFrameVertical = FitFrame.FitFrameVertical
local CheckBox = UILibrary.Component.CheckBox
local Tooltip = UILibrary.Component.Tooltip
local Constants = require(Plugin.Src.Util.Constants)

local truncateMiddleText = require(Plugin.Src.Util.truncateMiddleText)

local HttpRequestHolder = Roact.Component:extend("HttpRequestHolder")

local CHECKBOX_PADDING = 8
local CHECKBOX_WIDTH = 16
local CONTENT_PADDING = 20

HttpRequestHolder.defaultProps = {
	httpPermissions = {},
}

function HttpRequestHolder:init()
	self.frameRef = Roact.createRef()

	self.state = {
		frameWidth = 0,
	}

	self.onCheckboxActivated = function(permission)
		local apiImpl = self.props.API:get()
		local assetId = self.props.assetId
		return self.props.setPluginPermission(apiImpl, assetId, permission)
	end

	self.resizeFrame = function()
		local frameRef = self.frameRef.current
		if not frameRef then
			return
		end
		if self.state.frameWidth ~= frameRef.AbsoluteSize.X then
			self:setState({
				frameWidth = frameRef.AbsoluteSize.X,
			})
		end
	end

	self.getTruncatedText = function(urlText, theme)
		local result = ""
		local titleSize = TextService:GetTextSize(
			urlText,
			16, -- textSize
			theme.Font,
			Vector2.new()
		)

		local maxFrameWidth = self.state.frameWidth - CHECKBOX_WIDTH - Constants.SCROLLBAR_WIDTH_ADJUSTMENT
		if (maxFrameWidth > 0) and (titleSize.X > maxFrameWidth) then
			result = truncateMiddleText(urlText, 16, theme.Font, maxFrameWidth)
		else
			result = urlText
		end
		return result
	end
end

function HttpRequestHolder:didMount()
	self.resizeFrame()
end

function HttpRequestHolder:render()
	local localization = self.props.Localization
	local httpPermissions = self.props.httpPermissions
	local layoutOrder = self.props.LayoutOrder

	local theme = self.props.Theme:get("Plugin")

	local checkboxItems = {}
	for index, permission in pairs(httpPermissions) do
		local fullUrlText = permission.data and permission.data.domain or ""
		local urlText = self.getTruncatedText(fullUrlText, theme)

		local elem = Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 0, CHECKBOX_WIDTH)
		}, {
			CheckBox = Roact.createElement(CheckBox, {
				Id = index,
				Enabled = true,
				Height = CHECKBOX_WIDTH,
				LayoutOrder = index,
				TextSize = 16,
				Title = urlText,
				titlePadding = 8,
				Selected = permission.allowed,
				OnActivated = function() return self.onCheckboxActivated(permission) end,
			}),
		})
		table.insert(checkboxItems, elem)
	end

	return Roact.createElement(FitFrameVertical, {
		BackgroundTransparency = 1,
        contentPadding = UDim.new(0, CONTENT_PADDING),
		LayoutOrder = layoutOrder,
		width = UDim.new(1, 0),
		[Roact.Ref] = self.frameRef,
		[Roact.Change.AbsoluteSize] = self.resizeFrame,
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
			TextSize = 16,
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
		setPluginPermission = function(apiImpl, assetId, permission)
			dispatch(SetPluginPermission(PermissionsService, apiImpl, assetId, permission))
		end,
	}
end

return RoactRodux.connect(nil, mapDispatchToProps)(HttpRequestHolder)