--[[
	The prompt UI opened for Avatar body part outfit publishing.
]]
local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local ExperienceAuthService = game:GetService("ExperienceAuthService")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local t = require(CorePackages.Packages.t)
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local RobloxTranslator = require(RobloxGui.Modules.RobloxTranslator)
local AvatarPartGrid = require(script.Parent.AvatarParts.AvatarPartGrid)

local Components = script.Parent.Parent
local BasePublishPrompt = require(Components.BasePublishPrompt)
local ObjectViewport = require(Components.Common.ObjectViewport)

local PADDING = UDim.new(0, 20)
local CAMERA_FOV = 30

local NAME_METADATA_STRING = "avatarName"

local TITLE_TEXT = "title"
local BODY_TEXT = "body"

local PublishAvatarPrompt = Roact.PureComponent:extend("PublishAvatarPrompt")

PublishAvatarPrompt.validateProps = t.strictInterface({
	screenSize = t.Vector2,
	humanoidDescription = t.any,

	-- Mapped state
	guid = t.any,
	scopes = t.any,
})

function PublishAvatarPrompt:init()
	local LocalPlayer = Players.LocalPlayer
	assert(LocalPlayer, "Assert LocalPlayer is not nil to silence type checker")

	self:setState({
		showingPreviewView = false,
		name = LocalPlayer.Name .. "'s Body", -- TODO AVBURST-12954 localize
		isNameValid = true,
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

	self.confirmUploadReady = function(): boolean
		if not self.state.isNameValid then
			return false
		end
		local metadata = {}
		metadata[NAME_METADATA_STRING] = self.state.name

		-- We should never get to this point if this engine feature is off, but just in case:
		if game:GetEngineFeature("ExperienceAuthReflectionFixes") then
			ExperienceAuthService:ScopeCheckUIComplete(
				self.props.guid,
				self.props.scopes,
				Enum.ScopeCheckResult.ConsentAccepted,
				metadata
			)
		end

		return true
	end

	self.onNameUpdated = function(newName, isNameValid)
		self:setState({
			name = newName,
			isNameValid = isNameValid,
		})
	end
end

function PublishAvatarPrompt:renderPromptBody()
	-- TODO: Replace placeholder HD AVBURST-13327
	-- Note it's nice to use LocalPlayer.Character.Humanoid.HumanoidDescription for debugging
	local model =
		Players:CreateHumanoidModelFromDescription(Instance.new("HumanoidDescription"), Enum.HumanoidRigType.R15)
	return Roact.createFragment({
		UIListLayout = Roact.createElement("UIListLayout", {
			Padding = PADDING,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Vertical,
		}),
		UIPadding = Roact.createElement("UIPadding", {
			PaddingBottom = PADDING,
			PaddingTop = PADDING,
		}),
		EmbeddedPreview = Roact.createElement(ObjectViewport, {
			openPreviewView = self.openPreviewView,
			model = model,
			useFullBodyCameraSettings = true,
			fieldOfView = CAMERA_FOV,
			LayoutOrder = 1,
		}),
		AvatarPartGrid = Roact.createElement(AvatarPartGrid, {
			-- TODO: AVBURST-13327 Placeholder until Humanoid Model can be passed to frontend
			humanoidModel = Players:CreateHumanoidModelFromDescription(
				Instance.new("HumanoidDescription"),
				Enum.HumanoidRigType.R15
			),
			name = self.state.name,
			LayoutOrder = 2,
			screenSize = self.props.screenSize,
		}),
	})
end

local function GetLocalizedStrings()
	local strings = {}
	strings[BODY_TEXT] = RobloxTranslator:FormatByKey("Feature.Catalog.Label.Body")

	-- TODO: AVBURST-12954 placeholder title
	strings[TITLE_TEXT] = "Submit Creation"

	return strings
end

function PublishAvatarPrompt:render()
	local localized = GetLocalizedStrings()
	assert(Players, "Players should always be defined, silence type checker")
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
		defaultName = self.state.name,
		typeData = localized[BODY_TEXT],
		titleText = localized[TITLE_TEXT],
		onNameUpdated = self.onNameUpdated,
		confirmUploadReady = self.confirmUploadReady,
	})
end

local function mapStateToProps(state)
	return {
		-- TODO: Replace placeholder HD AVBURST-13327
		-- Currently humanoidDescription is just a string, so the viewport uses a placeholder
		humanoidDescription = state.promptRequest.promptInfo.humanoidDescription,
		guid = state.promptRequest.promptInfo.guid,
		scopes = state.promptRequest.promptInfo.scopes,
	}
end

return RoactRodux.connect(mapStateToProps)(PublishAvatarPrompt)
