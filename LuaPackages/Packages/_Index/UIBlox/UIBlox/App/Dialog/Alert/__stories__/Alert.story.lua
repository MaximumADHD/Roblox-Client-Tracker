local ReplicatedStorage = game:GetService("ReplicatedStorage")

local StoryView = require(ReplicatedStorage.Packages.StoryComponents.StoryView)
local StoryItem = require(ReplicatedStorage.Packages.StoryComponents.StoryItem)

local AlertRoot = script.Parent.Parent
local DialogRoot = AlertRoot.Parent
local AppRoot = DialogRoot.Parent
local UIBlox = AppRoot.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)

local Images = require(UIBlox.App.ImageSet.Images)

local BACKGROUND_IMAGE = "icons/status/premium_small"

local Alert = require(AlertRoot.Alert)
local AlertType = require(AlertRoot.Enum.AlertType)
local ButtonType = require(AppRoot.Button.Enum.ButtonType)

local UIBloxConfig = require(UIBlox.UIBloxConfig)
local enableAlertTitleIconConfig = UIBloxConfig.enableAlertTitleIconConfig

local function close()
	print("close")
end

local function confirm()
	print("confirm")
end

local AlertContainer = Roact.PureComponent:extend("AlertContainer")

function AlertContainer:init()
	self.screenSize = nil
	self.screenRef = Roact.createRef()
	self.state = {
		screenSize = Vector2.new(0, 0),
	}

	self.changeScreenSize = function(rbx)
		if self.state.screenSize ~= rbx.AbsoluteSize then
			self:setState({
				screenSize = rbx.AbsoluteSize
			})
		end
	end

	self.renderMiddle = function()
		return Roact.createElement("Frame", {
			BorderSizePixel = 0,
			BackgroundColor3 = Color3.fromRGB(164, 86, 78),
			LayoutOrder = 3,
			Size = UDim2.new(1, 0, 0, 60),
		},{
			CustomInner = Roact.createElement("TextLabel", {
				BackgroundTransparency = 1,
				LayoutOrder = 3,
				Text = "Put any component you want here.",
				TextSize = 13,
				TextWrapped = true,
				Size = UDim2.new(1, 0, 1, 0),
			}),
		})
	end
end

function AlertContainer:didMount()
	self.screenSize = self.screenRef and self.screenRef.current.AbsoluteSize
end

function AlertContainer:render()
	return Roact.createElement(StoryItem, {
		size = UDim2.new(1, 0, 1, 0),
		title = "AlertContainer",
		subTitle = "<<internal>>",
	}, {
		Screen = Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
			[Roact.Ref] = self.screenRef,
			[Roact.Change.AbsoluteSize] = self.changeScreenSize,
		}, {
			Alert = Roact.createElement(Alert, {
				anchorPoint = Vector2.new(0.5, 0),
				alertType = AlertType.Interactive,
				bodyText = "Body text goes here. Both InformativeAlert and "..
					"InteractiveAlert use this component.",
				buttonStackInfo = {
					buttons = {
						{
							props = {
								isDisabled = false,
								onActivated = close,
								text = "Cancel",
							},
						},
						{
							buttonType = ButtonType.PrimarySystem,
							props = {
								isDisabled = true,
								onActivated = confirm,
								text = "Confirm",
							},
						},
					},
				},
				middleContent = self.renderMiddle,
				position = UDim2.new(0.5, 0, 0, 10),
				screenSize = self.state.screenSize,
				title = "Alert Component. Title goes up to 2 lines max.",
				titleIcon = enableAlertTitleIconConfig and Images[BACKGROUND_IMAGE] or nil,
			})
		})
	})
end

return function(target)
	local story = Roact.createElement(StoryView, {}, {
		Roact.createElement(AlertContainer)
	})
	local handle = Roact.mount(story, target, "Alert")
	return function()
		Roact.unmount(handle)
	end
end
