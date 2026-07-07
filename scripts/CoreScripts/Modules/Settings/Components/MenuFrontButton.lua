-- Create a new component for in-game menu: “MenuFrontButton.lua”
local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local Roact = require(CorePackages.Packages.Roact)
local UIBlox = require(CorePackages.Packages.UIBlox)
local t = require(CorePackages.Packages.t)
local Images = UIBlox.App.ImageSet.Images
local ImageSetLabel = UIBlox.Core.ImageSet.ImageSetLabel

local Foundation = require(CorePackages.Packages.Foundation)

local FFlagCoreUiMigrateUIBloxToFoundation =
	require(CorePackages.Workspace.Packages.SharedFlags).FFlagCoreUiMigrateUIBloxToFoundation
local ExternalEventConnection = require(CorePackages.Workspace.Packages.RoactUtils).ExternalEventConnection

local utility = require(RobloxGui.Modules.Settings.Utility)
local FrontButtonController = require(RobloxGui.Modules.Settings.FrontButtonController)

local MenuFrontButton = Roact.PureComponent:extend("MenuFrontButton")
local isTenFootInterface = require(RobloxGui.Modules.TenFootInterface):IsEnabled()
local Theme = require(RobloxGui.Modules.Settings.Theme)

local FFlagShowTeleportHistoryFrontButton = game:DefineFastFlag("ShowTeleportHistoryFrontButton", false)

local yPadding = 6

MenuFrontButton.validateProps = t.strictInterface({
	HubBar = t.instanceOf("ImageLabel"),
	frontEnabled = t.boolean,
	FrontBarRef = t.optional(t.table),
	LayoutOrder = t.optional(t.integer),
})
MenuFrontButton.defaultProps = {
	frontEnabled = FFlagShowTeleportHistoryFrontButton and FrontButtonController.hasReturnUniverse(),
}
function MenuFrontButton:init()
	self:setState({
		text = FrontButtonController.getMenuText(),
	})
	self.sizeBinding, self.updateSizeBinding = Roact.createBinding(nil)
	self.sizeConstraintBinding, self.updateSizeConstraintBinding = Roact.createBinding(nil)
	self.visibleBinding, self.updateVisibleBinding = Roact.createBinding(nil)
	self.buttonHeightBinding, self.updateButtonHeightBinding = Roact.createBinding(nil)
	self.textSizeBinding, self.updateTextSizeBinding = Roact.createBinding(nil)
	self.textSizeConstraintBinding, self.updateTextSizeConstraintBinding = Roact.createBinding(nil)
	self.textLabelRef = Roact.createRef()
end
function MenuFrontButton:didMount()
	self.updateSizeBinding(self.props.HubBar.Size)
	self.updateVisibleBinding(self.props.HubBar.Visible)
	self:updateViewport()
end
function MenuFrontButton:didUpdate(oldProps)
	if self.props.HubBar ~= oldProps.HubBar then
		self.updateSizeBinding(self.props.HubBar.Size)
		self.updateVisibleBinding(self.props.HubBar.Visible)
	end
end
function MenuFrontButton:updateViewport()
	local textSize = Theme.textSize(24)
	if utility:IsSmallTouchScreen() then
		textSize = Theme.textSize(18)
	elseif isTenFootInterface then
		textSize = Theme.textSize(36)
	end
	self.updateTextSizeConstraintBinding(textSize)
	local isPortrait = utility:IsPortrait()
	local buttonHeight = isTenFootInterface and 120 or Theme.LargeButtonHeight
	if isPortrait or utility:IsSmallTouchScreen() then
		buttonHeight = Theme.ButtonHeight
		textSize = isPortrait and Theme.textSize(16) or Theme.textSize(24)
	end
	self.updateTextSizeBinding(textSize)
	self.updateButtonHeightBinding(buttonHeight)
	if self.textLabelRef:getValue() and self.props.FrontBarRef:getValue() then
		local offset = self.textLabelRef:getValue().AbsolutePosition.X
			- self.props.FrontBarRef:getValue().AbsolutePosition.X
		self.updateSizeConstraintBinding(
			Vector2.new(self.props.FrontBarRef:getValue().AbsoluteSize.X - offset, math.huge)
		)
	end
end
function MenuFrontButton:render()
	local borderColor = "DefaultButtonStroke"
	local backgroundColor = "DefaultButton"
	return Roact.createElement("Frame", {
		BorderSizePixel = 0,
		BackgroundTransparency = 1,
		AnchorPoint = Vector2.new(1, 0),
		Position = UDim2.new(1, 0, 0, 0),
		LayoutOrder = self.props.LayoutOrder,
		Visible = Roact.joinBindings({ self.state.text, self.visibleBinding }):map(function(value)
			return self.props.frontEnabled and value[1] ~= nil and value[2]
		end),
		Size = Roact.joinBindings({ self.sizeBinding, self.buttonHeightBinding }):map(function(value)
			local size: any = value[1]
			local buttonHeight: number = value[2]
			if size and buttonHeight then
				return UDim2.new(
					UDim.new(size.X.Scale * 0.5, size.X.Offset * 0.5), -- Half of the original width
					UDim.new(0, (buttonHeight + yPadding)) -- Half of the original height
				)
			else
				return UDim2.new()
			end
		end),
		[Roact.Ref] = self.props.FrontBarRef,
	}, {
		SizeConnection = Roact.createElement(ExternalEventConnection, {
			event = self.props.HubBar:GetPropertyChangedSignal("Size"),
			callback = function()
				self.updateSizeBinding(self.props.HubBar.Size)
			end,
		}),
		VisibleConnection = Roact.createElement(ExternalEventConnection, {
			event = self.props.HubBar:GetPropertyChangedSignal("Visible"),
			callback = function()
				self.updateVisibleBinding(self.props.HubBar.Visible)
			end,
		}),
		ViewportSizeChangedConnection = Roact.createElement(ExternalEventConnection, {
			event = (workspace.CurrentCamera :: Camera):GetPropertyChangedSignal("ViewportSize"),
			callback = function()
				self:updateViewport()
			end,
		}),
		UIPadding = Roact.createElement("UIPadding", {
			PaddingBottom = UDim.new(0, yPadding),
			PaddingTop = UDim.new(0, 10),
		}),
		ImageButton = Roact.createElement("ImageButton", {
			Image = "",
			BorderSizePixel = 0,
			BackgroundColor3 = Theme.color(backgroundColor),
			BackgroundTransparency = Theme.transparency(backgroundColor, 1),
			Position = UDim2.new(0, 0, 0, 0),
			Size = self.buttonHeightBinding:map(function(value)
				if value then
					return UDim2.new(0, 0, 0, value)
				else
					return UDim2.new()
				end
			end),
			AutomaticSize = Enum.AutomaticSize.X,
			ScaleType = Enum.ScaleType.Stretch,
			SliceCenter = Rect.new(8, 6, 46, 44),
			[Roact.Event.MouseEnter] = function(rbx)
				rbx.BackgroundColor3 = Theme.color("DefaultButtonHover")
				rbx.BackgroundTransparency = Theme.transparency("DefaultButtonHover")
			end,
			[Roact.Event.MouseLeave] = function(rbx)
				rbx.BackgroundColor3 = Theme.color("DefaultButton")
				rbx.BackgroundTransparency = Theme.transparency("DefaultButton")
			end,
			[Roact.Event.Activated] = function(rbx)
				FrontButtonController.initiateFrontButtonTeleport()
			end,
		}, {
			UICorner = Roact.createElement("UICorner", {
				CornerRadius = Theme.DefaultCornerRadius,
			}),
			UIStroke = Roact.createElement("UIStroke", {
				Color = Theme.color(borderColor),
				Transparency = Theme.transparency(borderColor),
				Thickness = Theme.DefaultStokeThickness,
			}),
			Frame = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, 0),
				Position = UDim2.new(0, 4, 0, 0),
				BorderSizePixel = 0,
				BackgroundTransparency = 1,
			}, {
				UIPadding = Roact.createElement("UIPadding", {
					PaddingRight = UDim.new(0, 12),
				}),
				Container = Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Horizontal,
					HorizontalAlignment = Enum.HorizontalAlignment.Right,
					VerticalAlignment = Enum.VerticalAlignment.Center,
					SortOrder = Enum.SortOrder.LayoutOrder,
				}),
				TextLabel = Roact.createElement("TextLabel", {
					Text = self.state.text,
					Size = UDim2.new(0, 0, 1, 0),
					AutomaticSize = Enum.AutomaticSize.X,
					BorderSizePixel = 0,
					BackgroundTransparency = 1,
					TextXAlignment = Enum.TextXAlignment.Left,
					TextColor3 = Color3.fromRGB(255, 255, 255),
					TextYAlignment = Enum.TextYAlignment.Center,
					Font = Theme.font(Enum.Font.SourceSansBold, "Bold"),
					TextSize = self.textSizeBinding,
					TextScaled = true,
					TextWrapped = true,
					LayoutOrder = 1,
					[Roact.Ref] = self.textLabelRef,
				}, {
					UITextSizeConstraint = Roact.createElement("UITextSizeConstraint", {
						MaxTextSize = self.textSizeConstraintBinding,
					}),
					UISizeConstraint = Roact.createElement("UISizeConstraint", {
						MaxSize = self.sizeConstraintBinding,
					}),
				}),
				ImageLabel = if FFlagCoreUiMigrateUIBloxToFoundation
					then Roact.createElement(Foundation.Icon, {
						name = "icons/actions/cycleRight",
						size = Foundation.Enums.IconSize.Large,
						LayoutOrder = 2,
					})
					else Roact.createElement(ImageSetLabel, {
						Image = Images["icons/actions/cycleRight"],
						Size = UDim2.new(1, 0, 0.75, 0),
						BorderSizePixel = 0,
						BackgroundTransparency = 1,
						LayoutOrder = 2,
					}, {
						UIAspectRatioConstraint = Roact.createElement("UIAspectRatioConstraint", {}),
					}),
			}),
		}),
	})
end
return MenuFrontButton
