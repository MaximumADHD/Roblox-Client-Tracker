-- Create a new component for in-game menu: “MenuBackButton.lua” for Immersive Ads back button AB test
local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local Roact = require(CorePackages.Roact)
local UIBlox = require(CorePackages.UIBlox)
local t = require(CorePackages.Packages.t)
local Images = UIBlox.App.ImageSet.Images
local ImageSetLabel = UIBlox.Core.ImageSet.ImageSetLabel
local ExternalEventConnection = require(CorePackages.Workspace.Packages.RoactUtils).ExternalEventConnection

local utility = require(RobloxGui.Modules.Settings.Utility)
local BackButtonController = require(RobloxGui.Modules.Settings.BackButtonController)

local MenuBackButton = Roact.PureComponent:extend("MenuBackButton")
local isTenFootInterface = require(RobloxGui.Modules.TenFootInterface):IsEnabled()
local Theme = require(RobloxGui.Modules.Settings.Theme)

local yPadding = 6

MenuBackButton.validateProps = t.strictInterface({
	HubBar = t.instanceOf("ImageLabel"),
	backEnabled = t.boolean,
	BackBarRef = t.optional(t.table),
})

MenuBackButton.defaultProps = {
	backEnabled = BackButtonController.hasReturnUniverse(),
}

function MenuBackButton:init()
	self:setState({
		text = BackButtonController.getMenuText(),
	})
	self.sizeBinding, self.updateSizeBinding = Roact.createBinding(nil)
	self.sizeConstraintBinding, self.updateSizeConstraintBinding = Roact.createBinding(nil)
	self.visibleBinding, self.updateVisibleBinding = Roact.createBinding(nil)
	self.buttonHeightBinding, self.updateButtonHeightBinding = Roact.createBinding(nil)
	self.textSizeBinding, self.updateTextSizeBinding = Roact.createBinding(nil)
	self.textSizeConstraintBinding, self.updateTextSizeConstraintBinding = Roact.createBinding(nil)

	self.textLabelRef = Roact.createRef()
end

function MenuBackButton:didMount()
	self.updateSizeBinding(self.props.HubBar.Size)
	self.updateVisibleBinding(self.props.HubBar.Visible)
	self:updateViewport()
end

function MenuBackButton:didUpdate(oldProps)
	if self.props.HubBar ~= oldProps.HubBar then
		self.updateSizeBinding(self.props.HubBar.Size)
		self.updateVisibleBinding(self.props.HubBar.Visible)
	end
end

function MenuBackButton:updateViewport()
	local textSize = Theme.textSize(24)
	if utility:IsSmallTouchScreen() then
		textSize = Theme.textSize(18)
	elseif isTenFootInterface then
		textSize =Theme.textSize(36)
	end

	self.updateTextSizeConstraintBinding(textSize)

	local isPortrait = utility:IsPortrait()
	local buttonHeight = isTenFootInterface and 120 or Theme.LargeButtonHeight
	if isPortrait or utility:IsSmallTouchScreen() then
		if Theme.UIBloxThemeEnabled then
			buttonHeight = Theme.ButtonHeight
			textSize = isPortrait and Theme.textSize(16) or Theme.textSize(24)
		else
			textSize = isPortrait and Theme.textSize(18) or Theme.textSize(24)
			buttonHeight = isPortrait and 50 or 62
		end
	end
	self.updateTextSizeBinding(textSize)
	self.updateButtonHeightBinding(buttonHeight)

	if self.textLabelRef:getValue() and self.props.BackBarRef:getValue() then
		local offset = self.textLabelRef:getValue().AbsolutePosition.X
			- self.props.BackBarRef:getValue().AbsolutePosition.X
		self.updateSizeConstraintBinding(
			Vector2.new(self.props.BackBarRef:getValue().AbsoluteSize.X - offset, math.huge)
		)
	end
end

function MenuBackButton:render()
	local borderColor = "DefaultButtonStroke"
	local backgroundColor = "DefaultButton"

	return Roact.createElement("Frame", {
		BorderSizePixel = 0,
		BackgroundTransparency = 1,
		AnchorPoint = Vector2.new(0.5, 0),
		LayoutOrder = -1,
		Visible = Roact.joinBindings({ self.state.text, self.visibleBinding }):map(function(value)
			return self.props.backEnabled and value[1] ~= nil and value[2]
		end),
		Size = Roact.joinBindings({ self.sizeBinding, self.buttonHeightBinding }):map(function(value)
			local size: any = value[1]
			local buttonHeight: number = value[2]
			if size and buttonHeight then
				return UDim2.new(size.X, UDim.new(0, buttonHeight + yPadding))
			else
				return UDim2.new()
			end
		end),
		[Roact.Ref] = self.props.BackBarRef,
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
			PaddingTop = if Theme.UIBloxThemeEnabled then UDim.new(0, 10) else UDim.new(0, 0),
		}),
		ImageButton = Roact.createElement("ImageButton", {
			Image = if Theme.UIBloxThemeEnabled then "" else "rbxasset://textures/ui/Settings/MenuBarAssets/MenuButton.png",
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
			ScaleType = if Theme.UIBloxThemeEnabled then Enum.ScaleType.Stretch else Enum.ScaleType.Slice,
			SliceCenter = Rect.new(8, 6, 46, 44),
			[Roact.Event.MouseEnter] = function(rbx)
				if Theme.UIBloxThemeEnabled then
					rbx.BackgroundColor3 = Theme.color("DefaultButtonHover")
					rbx.BackgroundTransparency = Theme.transparency("DefaultButtonHover")
				else
					rbx.Image = "rbxasset://textures/ui/Settings/MenuBarAssets/MenuButtonSelected.png"
				end
			end,
			[Roact.Event.MouseLeave] = function(rbx)
				if Theme.UIBloxThemeEnabled then
					rbx.BackgroundColor3 = Theme.color("DefaultButton")
					rbx.BackgroundTransparency = Theme.transparency("DefaultButton")
				else
					rbx.Image = "rbxasset://textures/ui/Settings/MenuBarAssets/MenuButton.png"
				end
			end,
			[Roact.Event.Activated] = function(rbx)
				BackButtonController.initiateBackButtonTeleport((Enum :: any).AdTeleportMethod.InGameMenuBackButton)
			end,
		}, {
			UICorner = Theme.UIBloxThemeEnabled and Roact.createElement("UICorner", {
				CornerRadius = Theme.DefaultCornerRadius,
			}) or nil,
			UIStroke = Theme.UIBloxThemeEnabled and Roact.createElement("UIStroke", {
				Color = Theme.color(borderColor),
				Transparency = Theme.transparency(borderColor),
				Thickness = Theme.DefaultStokeThickness,
			}) or nil,
			Frame = Roact.createElement("Frame", {
				Size = if Theme.UIBloxThemeEnabled then UDim2.new(1, 0, 1, 0) else UDim2.new(1, 0, 1, -8),
				Position = if Theme.UIBloxThemeEnabled then UDim2.new(0, 4, 0, 0) else UDim2.new(0, 4, 0, 2),
				BorderSizePixel = 0,
				BackgroundTransparency = 1,
			}, {
				UIPadding = Roact.createElement("UIPadding", {
					PaddingRight = UDim.new(0, 12),
				}),
				Container = Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Horizontal,
					HorizontalAlignment = Enum.HorizontalAlignment.Left,
					VerticalAlignment = Enum.VerticalAlignment.Center,
					SortOrder = Enum.SortOrder.LayoutOrder,
				}),
				ImageLabel = Roact.createElement(ImageSetLabel, {
					Image = Images["icons/actions/cycleLeft"],
					Size = UDim2.new(1, 0, 0.75, 0),
					BorderSizePixel = 0,
					BackgroundTransparency = 1,
					LayoutOrder = 1,
				}, {
					UIAspectRatioConstraint = Roact.createElement("UIAspectRatioConstraint", {}),
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
					LayoutOrder = 2,
					[Roact.Ref] = self.textLabelRef,
				}, {
					UITextSizeConstraint = Roact.createElement("UITextSizeConstraint", {
						MaxTextSize = self.textSizeConstraintBinding,
					}),
					UISizeConstraint = Roact.createElement("UISizeConstraint", {
						MaxSize = self.sizeConstraintBinding,
					}),
				}),
			}),
		}),
	})
end

return MenuBackButton
