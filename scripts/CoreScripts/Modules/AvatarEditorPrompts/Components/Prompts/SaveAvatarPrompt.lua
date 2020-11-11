local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.UIBlox)

local InteractiveAlert = UIBlox.App.Dialog.Alert.InteractiveAlert
local ButtonType = UIBlox.App.Button.Enum.ButtonType

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local RobloxTranslator = require(RobloxGui.Modules.RobloxTranslator)

local Components = script.Parent.Parent
local AvatarEditorPrompts = Components.Parent

local HumanoidViewport = require(Components.HumanoidViewport)
local ItemsList = require(Components.ItemsList)

local SignalSaveAvatarPermissionDenied = require(AvatarEditorPrompts.Thunks.SignalSaveAvatarPermissionDenied)
local PerformSaveAvatar = require(AvatarEditorPrompts.Thunks.PerformSaveAvatar)

local Modules = AvatarEditorPrompts.Parent
local FFlagAESPromptsSupportGamepad = require(Modules.Flags.FFlagAESPromptsSupportGamepad)

local SCREEN_SIZE_PADDING = 30
local VIEWPORT_MAX_TOP_PADDING = 40
local VIEWPORT_SIDE_PADDING = 5

local ITEMS_LIST_WIDTH_PERCENT = 0.45
local HUMANOID_VIEWPORT_WIDTH_PERCENT = 0.55

local SaveAvatarPrompt = Roact.PureComponent:extend("SaveAvatarPrompt")

SaveAvatarPrompt.validateProps = t.strictInterface({
	--State
	gameName = t.string,
	screenSize = t.Vector2,
	humanoidDescription = t.instanceOf("HumanoidDescription"),
	rigType = t.enum(Enum.HumanoidRigType),
	--Dispatch
	performSaveAvatar = t.callback,
	signalSaveAvatarPermissionDenied = t.callback,
})

function SaveAvatarPrompt:init()
	self:setState({
		itemListScrollable = false,
	})

	self.middleContentRef = Roact.createRef()
	self.contentSize, self.updateContentSize = Roact.createBinding(UDim2.new(1, 0, 0, 200))

	self.onAlertSizeChanged = function(rbx)
		local alertSize = rbx.AbsoluteSize

		if not self.middleContentRef:getValue() then
			return
		end

		local currentHeight = self.middleContentRef:getValue().AbsoluteSize.Y
		local alertNoContentHeight = alertSize.Y - currentHeight
		local maxAllowedContentHeight = self.props.screenSize.Y - (SCREEN_SIZE_PADDING * 2) - alertNoContentHeight

		local halfWidth = self.middleContentRef:getValue().AbsoluteSize.X / 2
		local viewportMaxSize = halfWidth - ( VIEWPORT_SIDE_PADDING * 2) + (VIEWPORT_MAX_TOP_PADDING * 2)

		if maxAllowedContentHeight > viewportMaxSize then
			maxAllowedContentHeight = viewportMaxSize
		end

		if currentHeight ~= maxAllowedContentHeight then
			self.updateContentSize(UDim2.new(1, 0, 0, maxAllowedContentHeight))
		end
	end

	self.itemListScrollableUpdated = function(itemListScrollable, currentListHeight)
		if currentListHeight == self.contentSize:getValue().Y.Offset then
			self:setState({
				itemListScrollable = itemListScrollable,
			})
		end
	end

	self.renderAlertMiddleContent = function()
		return Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			Size = self.contentSize,

			[Roact.Ref] = self.middleContentRef,
		}, {
			ItemsListFrame = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.fromScale(ITEMS_LIST_WIDTH_PERCENT, 1),
			}, {
				ItemsList = Roact.createElement(ItemsList, {
					humanoidDescription = self.props.humanoidDescription,
					itemListScrollableUpdated = self.itemListScrollableUpdated,
				}),
			}),

			HumanoidViewportFrame = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.fromScale(HUMANOID_VIEWPORT_WIDTH_PERCENT, 1),
				Position = UDim2.fromScale(ITEMS_LIST_WIDTH_PERCENT, 0),
				LayoutOrder = 2,
			}, {
				UIPadding = Roact.createElement("UIPadding", {
					PaddingLeft = UDim.new(0, VIEWPORT_SIDE_PADDING),
					PaddingRight = UDim.new(0, VIEWPORT_SIDE_PADDING),
				}),

				HumanoidViewport = Roact.createElement(HumanoidViewport, {
					humanoidDescription = self.props.humanoidDescription,
					rigType = self.props.rigType,
				}),
			}),

			UISizeConstraint = Roact.createElement("UISizeConstraint", {
				MaxSize = self.contentMaxSize,
			}),
		})
	end
end

function SaveAvatarPrompt:render()
	return Roact.createElement(InteractiveAlert, {
		title = RobloxTranslator:FormatByKey("CoreScripts.AvatarEditorPrompts.SaveAvatarPromptTitle"),
		bodyText = RobloxTranslator:FormatByKey("CoreScripts.AvatarEditorPrompts.SaveAvatarPromptText", {
			RBX_NAME = self.props.gameName,
		}),
		buttonStackInfo = {
			buttons = {
				{
					props = {
						onActivated = self.props.signalSaveAvatarPermissionDenied,
						text = RobloxTranslator:FormatByKey("CoreScripts.AvatarEditorPrompts.SaveAvatarPromptNo"),
					},
				},
				{
					buttonType = ButtonType.PrimarySystem,
					props = {
						onActivated = self.props.performSaveAvatar,
						text = RobloxTranslator:FormatByKey("CoreScripts.AvatarEditorPrompts.SaveAvatarPromptYes"),
					},
				},
			},
		},
		position = UDim2.fromScale(0.5, 0.5),
		screenSize = self.props.screenSize,
		middleContent = self.renderAlertMiddleContent,
		onAbsoluteSizeChanged = self.onAlertSizeChanged,
		isMiddleContentFocusable = FFlagAESPromptsSupportGamepad and self.state.itemListScrollable,
	})
end

local function mapStateToProps(state)
	return {
		gameName = state.gameName,
		screenSize = state.screenSize,
		humanoidDescription = state.promptInfo.humanoidDescription,
		rigType = state.promptInfo.rigType,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		signalSaveAvatarPermissionDenied = function()
			return dispatch(SignalSaveAvatarPermissionDenied)
		end,

		performSaveAvatar = function()
			return dispatch(PerformSaveAvatar)
		end,
	}
end

return RoactRodux.UNSTABLE_connect2(mapStateToProps, mapDispatchToProps)(SaveAvatarPrompt)