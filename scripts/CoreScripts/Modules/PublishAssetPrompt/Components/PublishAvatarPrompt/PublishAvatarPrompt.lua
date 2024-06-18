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
local DELAYED_INPUT_ANIM_SEC = 3

local NAME_METADATA_STRING = "avatarName"

local PublishAvatarPrompt = Roact.PureComponent:extend("PublishAvatarPrompt")

PublishAvatarPrompt.validateProps = t.strictInterface({
	screenSize = t.Vector2,
	humanoidModel = t.instanceOf("Model"),

	-- Mapped state
	guid = t.any,
	scopes = t.any,
})

function PublishAvatarPrompt:init()
	local LocalPlayer = Players.LocalPlayer
	assert(LocalPlayer, "Assert LocalPlayer is not nil to silence type checker")

	self:setState({
		showingPreviewView = false,
		-- UGC body creation does not localize similar text, so we don't localize here
		name = LocalPlayer.Name .. "'s Body",
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

	-- Prompt can submit as long as name is valid
	self.canSubmit = function(): boolean
		return self.state.isNameValid and self.props.humanoidModel ~= nil
	end

	self.onSubmit = function()
		local metadata = {}
		metadata[NAME_METADATA_STRING] = self.state.name

		ExperienceAuthService:ScopeCheckUIComplete(
			self.props.guid,
			self.props.scopes,
			Enum.ScopeCheckResult.ConsentAccepted,
			metadata
		)
	end

	self.onNameUpdated = function(newName, isNameValid)
		self:setState({
			name = newName,
			isNameValid = isNameValid,
		})
	end
end

function PublishAvatarPrompt:renderPromptBody()
	local isLoading = self.props.humanoidModel == nil
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
			model = self.props.humanoidModel,
			isLoading = isLoading,
			useFullBodyCameraSettings = true,
			fieldOfView = CAMERA_FOV,
			LayoutOrder = 1,
		}),
		AvatarPartGrid = if not isLoading
			then Roact.createElement(AvatarPartGrid, {
				humanoidModel = self.props.humanoidModel,
				name = self.state.name,
				LayoutOrder = 2,
				screenSize = self.props.screenSize,
			})
			else nil,
	})
end

function PublishAvatarPrompt:render()
	assert(Players, "Players should always be defined, silence type checker")
	return Roact.createElement(BasePublishPrompt, {
		promptBody = self:renderPromptBody(),
		screenSize = self.props.screenSize,
		showingPreviewView = self.state.showingPreviewView,
		closePreviewView = self.closePreviewView,
		asset = self.props.humanoidModel,
		nameLabel = RobloxTranslator:FormatByKey("CoreScripts.PublishAvatarPrompt.BodyName"),
		defaultName = self.state.name,
		typeData = RobloxTranslator:FormatByKey("Feature.Catalog.Label.Body"),
		titleText = RobloxTranslator:FormatByKey("CoreScripts.PublishAvatarPrompt.SubmitCreation"),
		onNameUpdated = self.onNameUpdated,
		canSubmit = self.canSubmit,
		onSubmit = self.onSubmit,
		enableInputDelayed = true,
		isDelayedInput = true,
		delayInputSeconds = DELAYED_INPUT_ANIM_SEC,
	})
end

local function mapStateToProps(state)
	return {
		humanoidModel = state.promptRequest.promptInfo.humanoidModel,
		guid = state.promptRequest.promptInfo.guid,
		scopes = state.promptRequest.promptInfo.scopes,
	}
end

return RoactRodux.connect(mapStateToProps)(PublishAvatarPrompt)
