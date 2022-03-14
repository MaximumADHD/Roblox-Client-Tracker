local UserInputService = game:GetService("UserInputService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Packages = ReplicatedStorage.Packages
local UIBlox = Packages.UIBlox
local Roact = require(Packages.Roact)

local withStyle = require(UIBlox.Core.Style.withStyle)
local KeyLabel = require(UIBlox.App.Menu.KeyLabel)

local KeyLabelStory = Roact.PureComponent:extend("KeyLabelStory")

function KeyLabelStory:init()
	self:setState({
		lastInputKeyCode = Enum.KeyCode.ButtonA,
	})
end

function KeyLabelStory:didMount()
	self.mounted = true
	self.inputConnection = UserInputService.InputBegan:Connect(function(input)
		if self.mounted then
			self:setState({
				lastInputKeyCode = input.KeyCode,
			})
		end
	end)
end

function KeyLabelStory:willUnmount()
	self.inputConnection:Disconnect()
	self.inputConnection = nil
	self.mounted = false
end

function KeyLabelStory:render()
	return withStyle(function(style)
		return Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
		}, {
			Layout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				FillDirection = Enum.FillDirection.Vertical,
			}),
			KeyLabel = Roact.createElement(KeyLabel, {
				keyCode = self.state.lastInputKeyCode,
				LayoutOrder = 1,
			}),
			Tip = Roact.createElement("TextLabel", {
				Text = "Try pressing keyboard keys or gamepad buttons to change the key label",
				TextColor3 = style.Theme.TextEmphasis.Color,
				TextTransparency = style.Theme.TextEmphasis.Transparency,
				TextXAlignment = Enum.TextXAlignment.Left,
				LayoutOrder = 2,
				TextSize = 12,
			}, {
				Padding = Roact.createElement("UIPadding", {
					PaddingTop = UDim.new(0, 50),
				}),
			}),
		})
	end)
end

return KeyLabelStory
