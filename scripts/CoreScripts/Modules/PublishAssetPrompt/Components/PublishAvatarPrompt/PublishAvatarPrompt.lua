--[[
	The prompt UI opened for Avatar body part outfit publishing.
]]
local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local t = require(CorePackages.Packages.t)
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local RobloxTranslator = require(RobloxGui.Modules.RobloxTranslator)

local LocalPlayer = Players.LocalPlayer

local Components = script.Parent.Parent
local BasePublishPrompt = require(Components.BasePublishPrompt)
local TITLE_TEXT = "title"
local BODY_TEXT = "body"

local PublishAvatarPrompt = Roact.PureComponent:extend("PublishAvatarPrompt")

PublishAvatarPrompt.validateProps = t.strictInterface({
	screenSize = t.Vector2,
	humanoidDescription = t.any,
})

function PublishAvatarPrompt:renderPromptBody()
	assert(LocalPlayer, "Assert LocalPlayer not nil to silence type checker")
	return Roact.createFragment({
		layout = Roact.createElement("UIListLayout", {
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Vertical,
		}),
		-- TODO AVBURST-12722, AVBURST-12723, add working Object Viewport and Item Cards when ready
		-- For now pass a placeholder frame to show how to pass prompt body
		Frame = Roact.createElement("Frame", {
			BackgroundTransparency = 0,
			BackgroundColor3 = Color3.new(1, 1, 1),
			Size = UDim2.new(1, 0, 0, 300),
		}),
	})
end

local function GetLocalizedStrings()
	local strings = {}
	strings[BODY_TEXT] = RobloxTranslator:FormatByKey("Feature.Catalog.Label.Body")

	-- TODO: AVBURST-12954 placeholder title
	strings[TITLE_TEXT] = RobloxTranslator:FormatByKey("CoreScripts.PublishAssetPrompt.TitleTextClothing")

	return strings
end

function PublishAvatarPrompt:render()
	local localized = GetLocalizedStrings()
	assert(Players, "Players should always be defined, silence type checker")
	assert(LocalPlayer, "LocalPlayer should always be defined, silence type checker")
	return Roact.createElement(BasePublishPrompt, {
		promptBody = self:renderPromptBody(),
		screenSize = self.props.screenSize,
		nameLabel = "Body Name", -- TODO AVBURST-12954 localize
		defaultName = LocalPlayer.Name .. "'s Body", -- TODO AVBURST-12954 localize
		typeData = localized[BODY_TEXT],
		titleText = localized[TITLE_TEXT],
	})
end

local function mapStateToProps(state)
	return {
		-- Currently humanoidDescription is just a string, so the viewport uses a placeholder
		humanoidDescription = state.promptRequest.promptInfo.humanoidDescription,
	}
end

return RoactRodux.connect(mapStateToProps)(PublishAvatarPrompt)
