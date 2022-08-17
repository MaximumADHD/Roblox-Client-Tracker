--!nonstrict
--[[
	Displays a prompt with a viewport frame containing a model created with the given
	HumanoidDescription.
	The viewport is sized so that it square and the max height allowed based on the screen size and alert content size.
]]
local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.UIBlox)

local InteractiveAlert = UIBlox.App.Dialog.Alert.InteractiveAlert

local Components = script.Parent.Parent
local AvatarEditorPrompts = Components.Parent

local HumanoidViewport = require(Components.HumanoidViewport)

local GetConformedHumanoidDescription = require(AvatarEditorPrompts.GetConformedHumanoidDescription)

local VIEWPORT_SIDE_PADDING = 10
local SCREEN_SIZE_PADDING = 30

local PromptWithAvatarViewport = Roact.PureComponent:extend("PromptWithAvatarViewport")

PromptWithAvatarViewport.validateProps = t.strictInterface({
	humanoidDescription = t.instanceOf("HumanoidDescription"),
	rigType = t.enum(Enum.HumanoidRigType),

	-- Props passed to Alert
	title = t.string,
	bodyText = t.optional(t.string),
	buttonStackInfo = t.table,

	-- mapStateToProps
	screenSize = t.Vector2,
})

function PromptWithAvatarViewport:init()
	self.mounted = false

	self.middleContentRef = Roact.createRef()
	self.contentSize, self.updateContentSize = Roact.createBinding(UDim2.new(1, 0, 0, 200))

	self:setState({
		conformedHumanoidDescription = nil,
		getConformedDescriptionFailed = false,
	})

	self.onAlertSizeChanged = function(rbx)
		local alertSize = rbx.AbsoluteSize

		if not self.middleContentRef:getValue() then
			return
		end

		local currentHeight = self.middleContentRef:getValue().AbsoluteSize.Y
		local alertNoContentHeight = alertSize.Y - currentHeight
		local maxAllowedContentHeight = self.props.screenSize.Y - (SCREEN_SIZE_PADDING * 2) - alertNoContentHeight

		local viewportMaxSize = self.middleContentRef:getValue().AbsoluteSize.X - ( VIEWPORT_SIDE_PADDING * 2)

		if maxAllowedContentHeight > viewportMaxSize then
			maxAllowedContentHeight = viewportMaxSize
		end

		if currentHeight ~= maxAllowedContentHeight then
			self.updateContentSize(UDim2.new(1, 0, 0, maxAllowedContentHeight))
		end
	end

	self.retryLoadDescription = function()
		self:setState({
			getConformedDescriptionFailed = false,
		})

		self:getConformedHumanoidDescription()
	end
end

function PromptWithAvatarViewport:renderAlertMiddleContent()
	local humanoidDescription = self.state.conformedHumanoidDescription
	local loadingFailed = self.state.getConformedDescriptionFailed

	return Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		Size = self.contentSize,

		[Roact.Ref] = self.middleContentRef,
	}, {
		HumanoidViewport = Roact.createElement(HumanoidViewport, {
			humanoidDescription = humanoidDescription,
			loadingFailed = loadingFailed,
			retryLoadDescription = self.retryLoadDescription,
			rigType = self.props.rigType,
		}),
	})
end

function PromptWithAvatarViewport:render()
	return Roact.createElement(InteractiveAlert, {
		title = self.props.title,
		bodyText = self.props.bodyText,
		buttonStackInfo = self.props.buttonStackInfo,
		position = UDim2.fromScale(0.5, 0.5),
		screenSize = self.props.screenSize,
		middleContent = function()
			return self:renderAlertMiddleContent()
		end,
		onAbsoluteSizeChanged = self.onAlertSizeChanged,
		isMiddleContentFocusable = false,
	})
end

function PromptWithAvatarViewport:getConformedHumanoidDescription(humanoidDescription)
	local includeDefaultClothing = true
	GetConformedHumanoidDescription(humanoidDescription, includeDefaultClothing):andThen(function(conformedDescription)
		if not self.mounted then
			return
		end

		self:setState({
			conformedHumanoidDescription = conformedDescription,
		})
	end, function(err)
		if not self.mounted then
			return
		end

		self:setState({
			getConformedDescriptionFailed = true,
		})
	end)
end

function PromptWithAvatarViewport:didMount()
	self.mounted = true

	self:getConformedHumanoidDescription(self.props.humanoidDescription)
end

function PromptWithAvatarViewport:didUpdate(prevProps, prevState)
	if prevProps.humanoidDescription ~= self.props.humanoidDescription then
		self:setState({
			conformedHumanoidDescription = Roact.None,
			getConformedDescriptionFailed = false,
		})

		self:getConformedHumanoidDescription(self.props.humanoidDescription)
	end
end

function PromptWithAvatarViewport:willUnmount()
	self.mounted = false
end

local function mapStateToProps(state)
	return {
		screenSize = state.screenSize,
	}
end

PromptWithAvatarViewport = RoactRodux.connect(mapStateToProps, nil)(PromptWithAvatarViewport)

return PromptWithAvatarViewport
