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
local ObjectViewport = require(Components.Common.ObjectViewport)

local CAMERA_FOV = 30

local TITLE_TEXT = "title"
local BODY_TEXT = "body"

local PublishAvatarPrompt = Roact.PureComponent:extend("PublishAvatarPrompt")

PublishAvatarPrompt.validateProps = t.strictInterface({
	screenSize = t.Vector2,
	humanoidDescription = t.any,
})

function PublishAvatarPrompt:init()
	self:setState({
		showingPreviewView = false,
	})
	self.openPreviewView = function()
		self:setState({
			showingPreviewView = true,
		})
	end
	self.closePreviewView = function()
		self:setState({
			showingPreviewView = false,
		})
	end
end

function PublishAvatarPrompt:renderPromptBody()
	assert(LocalPlayer, "Assert LocalPlayer not nil to silence type checker")
	-- TODO: Replace placeholder HD AVBURST-13327
	-- Note it's nice to use LocalPlayer.Character.Humanoid.HumanoidDescription for debugging
	local model =
		Players:CreateHumanoidModelFromDescription(Instance.new("HumanoidDescription"), Enum.HumanoidRigType.R15)
	return Roact.createFragment({
		layout = Roact.createElement("UIListLayout", {
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Vertical,
		}),
		-- TODO AVBURST-13271, AVBURST-12723, add Item Cards when ready and tooltip to ObjectViewport
		EmbeddedPreview = Roact.createElement(ObjectViewport, {
			openPreviewView = self.openPreviewView,
			model = model,
			useFullBodyCameraSettings = true,
			fieldOfView = CAMERA_FOV,
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
		showingPreviewView = self.state.showingPreviewView,
		closePreviewView = self.closePreviewView,
		-- TODO: Replace placeholder HD AVBURST-13327
		-- Note it's nice to use LocalPlayer.Character.Humanoid.HumanoidDescription for debugging
		asset = Players:CreateHumanoidModelFromDescription(
			Instance.new("HumanoidDescription"),
			Enum.HumanoidRigType.R15
		),
		nameLabel = "Body Name", -- TODO AVBURST-12954 localize
		nameMetadataString = "avatarName",
		defaultName = LocalPlayer.Name .. "'s Body", -- TODO AVBURST-12954 localize
		typeData = localized[BODY_TEXT],
		titleText = localized[TITLE_TEXT],
	})
end

local function mapStateToProps(state)
	return {
		-- TODO: Replace placeholder HD AVBURST-13327
		-- Currently humanoidDescription is just a string, so the viewport uses a placeholder
		humanoidDescription = state.promptRequest.promptInfo.humanoidDescription,
	}
end

return RoactRodux.connect(mapStateToProps)(PublishAvatarPrompt)
