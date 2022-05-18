--[[
	For interacting with the Image Localization feature
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local UI = Framework.UI
local Pane = UI.Pane
local TitledFrame = Framework.StudioUI.TitledFrame
local Button = UI.Button
local HoverArea = UI.HoverArea

local AnalyticsContext = require(Plugin.Src.ContextServices.AnalyticsContext)

local ImageLocalizationSection = Roact.PureComponent:extend("ImageLocalizationSection")

local HttpService = game:GetService("HttpService")
local INGEST_URL = "https://apis.sitetest1.robloxlabs.com/image-localization-api/v1/image-localization/ingest"

local function sendPostRequest(requestBody)
	local httpRequest = HttpService:RequestInternal({
		Url = INGEST_URL,
		Method = "POST",
		Headers =
			{
				["Content-Type"] = "application/json",
			},
		Body = requestBody,
	})

	httpRequest:Start(function(success, result)
		if not success then
			warn("Error on request: " .. result)
			return
		end

		if not result.Success then
			warn("Error returned: " ..
				result.StatusCode .. " " .. result.StatusMessage .. " " .. result.Body)
			return
		end
	end)
end

local function sendImageAssetIds(assetList)
	local requestBody = HttpService:JSONEncode(
		{
			assetIds = assetList,
			universeId = game.GameId,
		}
	)

	sendPostRequest(requestBody)
end

local function onUploadButtonClicked()
	local assetList = {}

	for i,v in pairs(workspace:GetDescendants()) do
		if v:IsA("ImageLabel") or v:IsA("ImageButton") then
			table.insert(assetList, v.Image)
		end
	end

	if (#assetList > 0) then
		sendImageAssetIds(assetList)
	end
end

function ImageLocalizationSection:init()
	self.uploadImageAssetIds = function ()
		onUploadButtonClicked()
	end
end

function ImageLocalizationSection:render()
	if not game:GetFastFlag("ImageLocalizationFeatureEnabled") then
		return
	end

	local props = self.props
	local theme = props.Stylizer
	local localization = props.Localization
	local layoutOrder = props.LayoutOrder

	local content = Roact.createElement(Pane, {
		LayoutOrder = 2,
		AutomaticSize = Enum.AutomaticSize.XY,
		Padding = {
			Top = theme.PaddingTop,
			Left = theme.LeftIndent,
		},
	}, {
		Upload = Roact.createElement(TitledFrame, {
			Title = localization:getText("ImageLocalizationSection", "UploadButtonLabel"),
			TitleWidth = theme.LabelWidth,
		}, {
			ButtonContainer = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.new(0, theme.ButtonWidth, 1, 0),
			}, {
				Button = Roact.createElement(Button, {
					AnchorPoint = Vector2.new(0.5, 0.5),
					OnClick = self.uploadImageAssetIds,
					Position = UDim2.new(0.5, 0, 0.5, 0),
					Size = UDim2.new(1, 0, 0, theme.ButtonHeight),
					Style = "TextButton",
					Text = localization:getText("ImageLocalizationSection", "UploadButton"),
				}, {
					Roact.createElement(HoverArea, {Cursor = "PointingHand"}),
				}),
			}),
		}),
	})
	return Roact.createElement(Pane, {
		LayoutOrder = layoutOrder,
		AutomaticSize = Enum.AutomaticSize.XY,
		Padding = {
			Top = theme.PaddingTop,
		},
		Spacing = theme.Spacing,
	}, {
		SectionLabel = Roact.createElement("TextLabel", {
			BackgroundTransparency = 1,
			LayoutOrder = 1,
			Size = UDim2.new(1, 0, 0, theme.SectionLabelSize),
			Text = localization:getText("ImageLocalizationSection", "SectionLabel"),
			TextColor3 = theme.TextColor,
			TextSize = theme.SectionLabelTextSize,
			TextXAlignment = Enum.TextXAlignment.Left,
		}),
		Content = content,
	})
end

local function mapStateToProps(state, _)
	return {
		IsBusy = state.CloudTable.IsBusy,
	}
end

--[[
	Theme update covered by ticket CLI-38105
]]
ImageLocalizationSection = withContext({
	Plugin = ContextServices.Plugin,
	Stylizer = ContextServices.Stylizer,
	Localization = ContextServices.Localization,
	Analytics = AnalyticsContext,
})(ImageLocalizationSection)

return RoactRodux.connect(mapStateToProps)(ImageLocalizationSection)
