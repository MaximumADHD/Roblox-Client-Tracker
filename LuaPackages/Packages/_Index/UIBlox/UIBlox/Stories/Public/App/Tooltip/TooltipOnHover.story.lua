local Packages = script.Parent.Parent.Parent.Parent.Parent.Parent
local Roact = require(Packages.Roact)
local UIBlox = require(Packages.UIBlox)
local ImageSetComponent = UIBlox.Core.ImageSet
local Images = UIBlox.App.ImageSet.Images

local StoryView = require(Packages.StoryComponents.StoryView)
local StoryItem = require(Packages.StoryComponents.StoryItem)

local Tooltip = UIBlox.App.Dialog.Tooltip

local ICON = Images["icons/common/robux"]
local HOVER_DURATION = 2.0

local TooltipWithTrigger = Roact.PureComponent:extend("TooltipWithTrigger")

function TooltipWithTrigger:init()
	self.triggerRef = Roact.createRef()
	self.state = {
		showModal = false,
	}
	self.onActivated = function()
		self:setState({
			showModal = true,
		})
	end

	self.onDismiss = function()
		self:setState({
			showModal = false,
		})
	end
	self.startHover = function()
		delay(HOVER_DURATION, self.onActivated)
	end
end

function TooltipWithTrigger:render()
	local modalRoot = self.props.modalRoot
	local showModal = self.state.showModal

	return Roact.createElement(ImageSetComponent.Button, {
		Position = self.props.triggerPos,
		Size = UDim2.fromOffset(36, 36),
		Image = ICON,
		BackgroundTransparency = 1,
		[Roact.Ref] = self.triggerRef,
		[Roact.Event.Activated] = function()
			print("Trigger Point clicked")
		end,
		[Roact.Event.MouseEnter] = self.startHover,
		[Roact.Event.MouseLeave] = self.onDismiss,
	}, {
		Modal = showModal and Roact.createElement(Roact.Portal, {
			target = modalRoot,
		}, {
			Tooltip = Roact.createElement(Tooltip, {
				triggerPosition = self.triggerRef.current and self.triggerRef.current.AbsolutePosition or Vector2.new(
					0,
					0
				),
				triggerSize = self.triggerRef.current and self.triggerRef.current.AbsoluteSize or Vector2.new(0, 0),
				screenSize = self.props.screenSize,
				onDismiss = self.onDismiss,
				bodyText = self.props.bodyText,
				headerText = self.props.headerText,
				orientation = self.props.orientation,
				triggerOnHover = true,
			}),
		}),
	})
end

return function(target)
	local function TooltipDemo(props)
		return Roact.createElement(StoryItem, {
			size = UDim2.new(1, 0, 0, 128),
			layoutOrder = 3,
			title = "Tooltip: Trigger On Hover",
			subTitle = "Dialog.Tooltip",
			showDivider = true,
		}, {
			Tooltip = Roact.createElement(TooltipWithTrigger, {
				modalRoot = props.modalRoot,
				screenSize = props.modalRoot.AbsoluteSize,
				bodyText = "Triggered onHover",
				triggerOnHover = true,
			}),
		})
	end

	local uiBloxApp = target:FindFirstAncestor("App") -- play mode

	local ModalRoot = Roact.createElement("Frame", {
		-- Horsecat title bar and boarder correction for ModalRoot in plugin mode
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
		"Tooltip"
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
