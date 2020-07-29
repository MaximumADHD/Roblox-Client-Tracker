local FFlagPluginManagementRemoveUILibrary = game:GetFastFlag("PluginManagementRemoveUILibrary2")

local Plugin = script.Parent.Parent.Parent.Parent
local TextService = game:GetService("TextService")

local PermissionsService = game:GetService("PermissionsService")

local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local UILibrary = require(Plugin.Packages.UILibrary) -- remove with FFlagPluginManagementRemoveUILibrary
local FitFrame = require(Plugin.Packages.FitFrame)
local ContextServices = require(Plugin.Packages.Framework.ContextServices)
local UI = require(Plugin.Packages.Framework.UI)

local SetPluginPermission = require(Plugin.Src.Thunks.SetPluginPermission)
local FluidFitTextLabel = require(Plugin.Src.Components.FluidFitTextLabel)

local PluginAPI2 = require(Plugin.Src.ContextServices.PluginAPI2)

local FitFrameVertical = FitFrame.FitFrameVertical
local CheckBox = UILibrary.Component.CheckBox -- remove with FFlagPluginManagementRemoveUILibrary
local Constants = require(Plugin.Src.Util.Constants)
local ToggleButton = UI.ToggleButton

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

function HttpRequestHolder:renderCheckbox(theme, index, permission)
	local fullUrlText = permission.data and permission.data.domain or ""
	local urlText = self.getTruncatedText(fullUrlText, theme)
	local isChecked = permission.allowed

	if FFlagPluginManagementRemoveUILibrary then
		local elem = Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 0, CHECKBOX_WIDTH),
			LayoutOrder = index,
		}, {
			Layout = Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal,
				Padding = UDim.new(0, 8),
			}),

			Checkbox = Roact.createElement(ToggleButton, {
				Style = "Checkbox",
				LayoutOrder = 1,
				Selected = isChecked,
				Size = UDim2.new(0, CHECKBOX_WIDTH, 0, CHECKBOX_WIDTH),
				OnClick = function()
					return self.onCheckboxActivated(permission)
				end,
			}),

			TitleLabel = Roact.createElement("TextButton", {
				Text = urlText,
				Size = UDim2.new(1, -CHECKBOX_WIDTH, 1, 0),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				TextColor3 = theme.TextColor,
				Font = theme.Font,
				TextSize = 16,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Center,
				TextTransparency = 0,

				[Roact.Event.Activated] = function()
					return self.onCheckboxActivated(permission)
				end,
			})
		})
		return elem
	else
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
				Selected = isChecked,
				OnActivated = function() 
					return self.onCheckboxActivated(permission)
				end,
			}),
		})
		return elem
	end
end

function HttpRequestHolder:render()
	local localization = self.props.Localization
	local httpPermissions = self.props.httpPermissions
	local layoutOrder = self.props.LayoutOrder

	local theme = self.props.Theme:get("Plugin")

	local checkboxItems = {}
	for index, permission in pairs(httpPermissions) do
		table.insert(checkboxItems, self:renderCheckbox(theme, index, permission))
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