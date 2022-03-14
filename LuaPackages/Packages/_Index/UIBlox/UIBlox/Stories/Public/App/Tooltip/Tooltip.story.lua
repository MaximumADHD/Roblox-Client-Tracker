local Stories = script.Parent.Parent.Parent.Parent
local Packages = Stories.Parent.Parent
local Roact = require(Packages.Roact)
local UIBlox = require(Packages.UIBlox)
local ImageSetComponent = UIBlox.Core.ImageSet
local Images = UIBlox.App.ImageSet.Images

local UIBloxConfig = require(Stories.UIBloxStorybookConfig)

local StoryView = require(Packages.StoryComponents.StoryView)
local StoryItem = require(Packages.StoryComponents.StoryItem)

local Tooltip = UIBlox.App.Dialog.Tooltip
local TooltipOrientation = UIBlox.App.Dialog.Enum.TooltipOrientation

local TooltipWithTrigger = Roact.PureComponent:extend("TooltipWithTrigger")

local ICON = Images["icons/common/robux"]
local BODY_TEXT = "Try to keep the body text under 5 lines. "
	.. "If you're trying to convey a long message, try shortening it or use a modal instead."

function TooltipWithTrigger:init()
	self.triggerSize, self.setTriggerSize = Roact.createBinding(Vector2.new(0, 0))
	self.state = {
		showModal = false,
		triggerPosition = Vector2.new(0, 0),
	}
end

function TooltipWithTrigger:render()
	local modalRoot = self.props.modalRoot
	local showModal = self.state.showModal

	return Roact.createFragment({
		ControlButton = Roact.createElement("TextButton", {
			Text = "Show Tooltip",
			Size = UDim2.fromOffset(100, 50),
			[Roact.Event.Activated] = function()
				self:setState({
					showModal = true,
				})
			end,
		}),
		Trigger = Roact.createElement(ImageSetComponent.Label, {
			Position = self.props.triggerPos,
			Size = UDim2.fromOffset(36, 36),
			Image = ICON,
			BackgroundTransparency = 1,
			[Roact.Change.AbsolutePosition] = function(rbx)
				self:setState({
					triggerPosition = rbx.AbsolutePosition,
				})
			end,
			[Roact.Change.AbsoluteSize] = function(rbx)
				self.setTriggerSize(rbx.AbsoluteSize)
			end,
		}, {
			Modal = showModal and Roact.createElement(Roact.Portal, {
				target = modalRoot,
			}, {
				Tooltip = Roact.createElement(Tooltip, {
					triggerPosition = self.state.triggerPosition,
					triggerSize = self.triggerSize:getValue(),
					screenSize = self.props.screenSize,
					onDismiss = function()
						self:setState({
							showModal = false,
						})
					end,
					bodyText = self.props.bodyText,
					headerText = self.props.headerText,
					orientation = self.props.orientation,
					forceClickTriggerPoint = self.props.forceClickTriggerPoint,
				}),
			}),
		}),
	})
end

return function(target)
	local function TooltipDemo(props)
		return Roact.createElement("ScrollingFrame", {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
		}, {
			Grid = Roact.createElement("UIGridLayout", {
				CellSize = UDim2.new(1, 0, 0, 200),
				FillDirectionMaxCells = 2,
				SortOrder = Enum.SortOrder.LayoutOrder,
			}),
			Padding = Roact.createElement("UIPadding", {
				PaddingTop = UDim.new(0, 10),
			}),
			DefaultOverview = Roact.createElement(StoryItem, {
				size = UDim2.new(1, 0, 0, 128),
				layoutOrder = 1,
				title = "Tooltip Default",
				subTitle = "Dialog.Tooltip",
				showDivider = true,
			}, {
				TooltipWithTrigger = Roact.createElement(TooltipWithTrigger, {
					modalRoot = props.modalRoot,
					screenSize = props.modalRoot.AbsoluteSize,
					triggerPos = UDim2.new(0.5, 0, 0, 20),
					bodyText = BODY_TEXT,
					headerText = "The Header Has a Maximum of Two Lines",
				}),
			}),
			ForceClickTrigger = Roact.createElement(StoryItem, {
				size = UDim2.new(1, 0, 0, 128),
				layoutOrder = 2,
				title = "Tooltip Force Click Trigger Point",
				subTitle = "Dialog.Tooltip",
				showDivider = true,
			}, {
				TooltipWithTrigger = Roact.createElement(TooltipWithTrigger, {
					modalRoot = props.modalRoot,
					screenSize = props.modalRoot.AbsoluteSize,
					triggerPos = UDim2.fromOffset(200, 0),
					bodyText = "This is a one line Tooltip",
					orientation = TooltipOrientation.Right,
					forceClickTriggerPoint = true,
				}),
			}),
			ForceClickTriggerDefault = Roact.createElement(StoryItem, {
				size = UDim2.new(1, 0, 0, 128),
				layoutOrder = 3,
				title = "Tooltip Force Click Trigger Point (Bottom)",
				subTitle = "Dialog.Tooltip",
				showDivider = true,
			}, {
				TooltipWithTrigger = Roact.createElement(TooltipWithTrigger, {
					modalRoot = props.modalRoot,
					screenSize = props.modalRoot.AbsoluteSize,
					triggerPos = UDim2.fromOffset(200, 0),
					bodyText = "This is a one line Tooltip",
					forceClickTriggerPoint = true,
				}),
			}),
			CloseToEdge = Roact.createElement(StoryItem, {
				size = UDim2.new(1, 0, 0, 128),
				layoutOrder = 4,
				title = "Tooltip Close to Edge",
				subTitle = "Dialog.Tooltip",
				showDivider = true,
			}, {
				TooltipWithTrigger = Roact.createElement(TooltipWithTrigger, {
					modalRoot = props.modalRoot,
					screenSize = props.modalRoot.AbsoluteSize,
					triggerPos = UDim2.new(0.9, 0, 0, 0),
					bodyText = BODY_TEXT,
					headerText = "The Header Has a Maximum of Two Lines",
				}),
			}),
			OnEdge = Roact.createElement(StoryItem, {
				size = UDim2.new(1, 0, 0, 128),
				layoutOrder = 5,
				title = "Tooltip Right Edge",
				subTitle = "Dialog.Tooltip",
				showDivider = true,
			}, {
				TooltipWithTrigger = Roact.createElement(TooltipWithTrigger, {
					modalRoot = props.modalRoot,
					screenSize = props.modalRoot.AbsoluteSize,
					triggerPos = UDim2.new(1, -48, 0, 0),
					bodyText = BODY_TEXT,
					headerText = "The Header Has a Maximum of Two Lines",
				}),
			}),
			LongTitle = UIBloxConfig.tooltipWidthUsesHeaderToo and Roact.createElement(StoryItem, {
				size = UDim2.new(1, 0, 0, 128),
				layoutOrder = 6,
				title = "Tooltip with long title",
				subTitle = "Dialog.Tooltip",
				showDivider = true,
			}, {
				TooltipWithTrigger = Roact.createElement(TooltipWithTrigger, {
					modalRoot = props.modalRoot,
					screenSize = props.modalRoot.AbsoluteSize,
					triggerPos = UDim2.new(0.9, 0, 0, 0),
					bodyText = "This is a short body",
					headerText = "This title should be on one line",
				}),
			}) or nil,
		})
	end

	local uiBloxApp = target:FindFirstAncestor("App") -- play mode

	local ModalRoot = Roact.createElement("Frame", {
		-- Horsecat title bar and border correction for ModalRoot in plugin mode
		Size = uiBloxApp and UDim2.fromScale(1, 1) or UDim2.new(1, 1, 1, 41),
		Position = uiBloxApp and UDim2.fromOffset(0, 0) or UDim2.fromOffset(-1, -41),
		BackgroundTransparency = 1,
		ZIndex = 10,
	})

	if uiBloxApp then
		Roact.mount(ModalRoot, uiBloxApp, "ModalRoot")
	else
		Roact.mount(ModalRoot, target, "ModalRoot")
	end

	local handle = Roact.mount(
		Roact.createElement(StoryView, {}, {
			Roact.createElement(TooltipDemo, {
				modalRoot = uiBloxApp and uiBloxApp.ModalRoot or target:FindFirstChild("ModalRoot"),
			}),
		}),
		target,
		"TooltipStory"
	)

	local connection = target:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
		local tree = Roact.createElement(StoryView, {}, {
			Roact.createElement(TooltipDemo, {
				modalRoot = uiBloxApp and uiBloxApp.ModalRoot or target:FindFirstChild("ModalRoot"),
			}),
		})
		Roact.update(handle, tree)
	end)

	return function()
		connection:Disconnect()
		Roact.unmount(handle)
	end
end
