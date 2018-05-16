--[[
		Creates a component for sidebar
		Props:
			buttons : array An array of the buttons to be added on the sidebar.
				key - string The text to be shown on the sidebar button.
				value - function() A callback which will be called when the button is activated.
			text: string - The text to be shown on the sidebar.
			isOpen: bool - The boolean which indicates whether the sidebar is open.
			selectIndex: int - The button index we try to select when the sidebar is open.
			paddingTop : UDim - The padding to apply on the top side relative to the sidebar's normal size.
			paddingBottom : UDim - The padding to apply on the bottom side relative to the sidebar's normal size.
			displayOrder: int - The order that the sidebar ScreenGui is drawn.
			onHide : function() - Callback function when the sidebar hides, will pass in the current selected index as the first parameter.
			onClose: function() - Callback function when the sidebar is closed.

		State:
			selectedIndex : int - The current selected button's index. If it's 0, nothing is selected.
]]
local CoreGui = game:GetService("CoreGui")
local GuiService = game:GetService('GuiService')
local Modules = CoreGui.RobloxGui.Modules
local Roact = require(Modules.Common.Roact)
local GlobalSettings = require(Modules.Shell.GlobalSettings)
local RoactMotion = require(Modules.LuaApp.RoactMotion)
local SoundManager = require(Modules.Shell.SoundManager)
local Utility = require(Modules.Shell.Utility)
local Components = Modules.Shell.Components
local RoundedButton = require(Components.Common.RoundedButton)
local ContextActionEvent = require(Components.ContextActionEvent)
local INSET_X = 65
local BUTTON_SIZE_Y = 75
local SIDEBAR_SELECTION_GROUP_NAME = "SideBar"

local SideBar = Roact.PureComponent:extend("SideBar")
function SideBar:init()
	self.state =
	{
		selectedIndex = 0
	}
	local function defaultOnHideFunc()
		self:setState(
		{
			selectedIndex = 0
		})
	end
	if self.props.onHide then
		self.onHide = function(...)
			local savedSelectedIndex = self.state.selectedIndex
			defaultOnHideFunc()
			self.props.onHide(savedSelectedIndex)
		end
	else
		self.onHide = defaultOnHideFunc
	end

	self.onBack = function(actionName, inputState, inputObject)
		if inputState == Enum.UserInputState.Begin then
			self.seenPressed = true
		elseif inputState == Enum.UserInputState.End and self.seenPressed then
			self.onHide()
		end
	end
end

function SideBar:render()
	local props = self.props
	local contents =
	{
		--Make it inside the title safe container
		UIPadding = Roact.createElement("UIPadding",
		{
			PaddingTop = props.paddingTop or UDim.new(0, 156),
			PaddingBottom = props.paddingBottom or UDim.new(0, 39)
		})
	}

	if props.buttons then
		local index = 1
		for buttonText, callback in pairs(props.buttons) do
			local btIndex = index
			index = index + 1
			local focused = self.state.selectedIndex and self.state.selectedIndex == btIndex
			contents["Button"..btIndex] = Roact.createElement(RoundedButton,
			{
				Button =
				{
					Size = UDim2.new(1, 0, 0, BUTTON_SIZE_Y),
					LayoutOrder = btIndex,
				},
				Text =
				{
					Size = UDim2.new(1, -INSET_X, 1, 0),
					Position = UDim2.new(0, INSET_X, 0, 0),
					AnchorPoint = Vector2.new(0, 0),
					Text = buttonText,
					FontSize = GlobalSettings.TextSizes.Medium,
				},
				DefaultProps =
				{
					ImageTransparency = 1,
				},
				FocusedProps =
				{
					ImageTransparency = 0,
				},
				HideSelectionImage = true,
				Focused = focused,
				OnSelectionGained = function()
					self:setState(
					{
						selectedIndex = btIndex
					})
				end,
				OnSelectionLost = function()
					self:setState(
					{
						selectedIndex = 0
					})
				end,
				OnActivated = function()
					SoundManager:Play('ButtonPress')
					self.onHide()
					callback()
				end,
				OnCreate = function(bt)
					self.buttons = self.buttons or {}
					self.buttons[btIndex] = bt
				end
			})
		end

		if index > 0 then
			contents.UIListLayout = Roact.createElement("UIListLayout",
			{
				Padding = UDim.new(0, 0),
				SortOrder = Enum.SortOrder.LayoutOrder,
				HorizontalAlignment = Enum.HorizontalAlignment.Left,
				VerticalAlignment = Enum.VerticalAlignment.Top,
			})
		end
	else
		contents.TextLabel = Roact.createElement("TextLabel",
		{
			Size = UDim2.new(1, -INSET_X - 100, 1, 0),
			Position = UDim2.new(0, INSET_X, 0, 0),
			BorderSizePixel = 0,
			BackgroundTransparency = 1,
			Text = props.text,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Top,
			TextColor3 = GlobalSettings.WhiteTextColor,
			Font = GlobalSettings.RegularFont,
			FontSize = GlobalSettings.DescriptionSize,
			TextWrapped = true,
		})
	end

	local isOpen = props.isOpen
	local modalBackgroundTransparency = isOpen and GlobalSettings.ModalBackgroundTransparency or 1
	local containerPositionXScale = isOpen and 0.7 or 1

	local onClose = nil
	local BackConnector = nil
	if not isOpen then
		onClose = function()
			self.buttons = {}
			GuiService:RemoveSelectionGroup(SIDEBAR_SELECTION_GROUP_NAME)
			props.onClose()
		end
	else
		BackConnector = Roact.createElement(ContextActionEvent,
		{
			name = "CloseSideBar",
			callback = self.onBack,
			binds = { Enum.KeyCode.ButtonB },
		})
	end

	return Roact.createElement(RoactMotion.SimpleMotion,
	{
		defaultStyle =
		{
			modalBackgroundTransparency = 1,
			containerPositionXScale = 1,
		},
		style =
		{
			modalBackgroundTransparency = RoactMotion.spring(modalBackgroundTransparency, 100, 40),
			containerPositionXScale = RoactMotion.spring(containerPositionXScale, 100, 40),
		},
		onRested = onClose,
		render = function(values)
			return Roact.createElement(Roact.Portal, { target = CoreGui },
			{
				SideBarGui = Roact.createElement("ScreenGui",
				{
					ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
					DisplayOrder = props.displayOrder or 1
				},
				{
					BackConnector = BackConnector,
					ModalOverlay = Roact.createElement("Frame",
					{
						Size = UDim2.new(1, 0, 1, 0),
						BackgroundTransparency = values.modalBackgroundTransparency,
						BackgroundColor3 = GlobalSettings.ModalBackgroundColor,
						BorderSizePixel = 0,
					},
					{
						SideBarContainer = Roact.createElement("Frame",
						{
							Size = UDim2.new(0.3, 0, 1, 0),
							Position = UDim2.new(values.containerPositionXScale, 0, 0, 0),
							BorderSizePixel = 0,
							BackgroundColor3 = GlobalSettings.OverlayColor,
							[Roact.Ref] = function(container)
								self.container = container
							end
						}, contents)
					})
				}),
			})
		end
	})
end

function SideBar:didMount()
	delay(0, function()
		if self.props.isOpen and self.container then
			GuiService:RemoveSelectionGroup(SIDEBAR_SELECTION_GROUP_NAME)
			GuiService:AddSelectionParent(SIDEBAR_SELECTION_GROUP_NAME, self.container)
			if self.buttons and next(self.buttons) then
				local trySelectIndex = math.max(1, math.min(#self.buttons, self.props.selectIndex))
				if self.state.selectedIndex == 0 then
					Utility.SetSelectedCoreObject(self.buttons[trySelectIndex])
				end
			else
				Utility.SetSelectedCoreObject(nil)
			end
		end
	end)
end

function SideBar:didUpdate()
	delay(0, function()
		if self.props.isOpen and self.container then
			if self.buttons and next(self.buttons) then
				local trySelectIndex = math.max(1, math.min(#self.buttons, self.props.selectIndex))
				if self.state.selectedIndex == 0 then
					Utility.SetSelectedCoreObject(self.buttons[trySelectIndex])
				end
			else
				Utility.SetSelectedCoreObject(nil)
			end
		end
	end)
end

return SideBar