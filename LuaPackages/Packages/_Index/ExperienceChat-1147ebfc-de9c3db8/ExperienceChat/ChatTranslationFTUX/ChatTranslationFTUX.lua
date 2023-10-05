--!nonstrict
--Needed for Roact.Event.InputEnded to take input parameters
local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local Roact = require(Packages.Roact)
local Otter = require(Packages.Otter)
local Timer = require(ExperienceChat.Timer)

local UIBlox = require(Packages.UIBlox)
local Images = UIBlox.App.ImageSet.Images
local ImageSetLabel = UIBlox.Core.ImageSet.Label

local Localization = require(ExperienceChat.Localization)

local ChatTranslationFTUX = Roact.Component:extend("ChatTranslationFTUX")
ChatTranslationFTUX.defaultProps = {
	timer = Timer.new(10),
}
local FTUXTitleFont = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)

local FTUXFont = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal)

local config = {
	dampingRatio = 1,
	frequency = 2,
}

function ChatTranslationFTUX:init()
	self.transparency, self.updateTransparency = Roact.createBinding(1)
	self.transparencyMotor = Otter.createSingleMotor(1)
	self.transparencyMotor:onStep(self.updateTransparency)
end

function ChatTranslationFTUX:render()
	return Roact.createElement("Frame", {
		AutomaticSize = Enum.AutomaticSize.XY,
		Position = UDim2.new(0, 50, 0, 20),
		Size = UDim2.new(0.25, 0, 0, 0),
		BackgroundTransparency = 1,
	}, {
		BubbleTail = Roact.createElement(ImageSetLabel, {
			Size = UDim2.new(0, 15, 0, 10),
			BackgroundTransparency = 1,
			ImageTransparency = self.transparency,
			ImageColor3 = Color3.new(0.5, 0.5, 0.5),
			Image = Images["component_assets/triangleUp_16"],
			Position = UDim2.new(0, 15, 0, -10),
			ZIndex = 100,
		}),
		BubbleBody = Roact.createElement("Frame", {
			Active = true,
			BackgroundTransparency = self.transparency,
			BackgroundColor3 = Color3.new(0.5, 0.5, 0.5),
			AutomaticSize = Enum.AutomaticSize.XY,
			ZIndex = 100,
			Style = Enum.FrameStyle.Custom,
			[Roact.Event.TouchTap] = function()
				self:fadeOut()
			end,
			[Roact.Event.InputEnded] = function(_, input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 then
					self:fadeOut()
				end
			end,
		}, {
			RoundCorners = Roact.createElement("UICorner", {
				CornerRadius = UDim.new(0, 5),
			}),
			SizeConstraint = Roact.createElement("UISizeConstraint", {
				MaxSize = Vector2.new(300, 400),
			}),
			Padding = Roact.createElement("UIPadding", {
				PaddingRight = UDim.new(0, 10),
				PaddingTop = UDim.new(0, 10),
				PaddingBottom = UDim.new(0, 10),
				PaddingLeft = UDim.new(0, 10),
			}),
			Layout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				FillDirection = Enum.FillDirection.Vertical,
				Padding = UDim.new(0, 10),
			}),
			Title = Roact.createElement("TextLabel", {
				AutomaticSize = Enum.AutomaticSize.Y,
				Size = UDim2.new(1, 0, 0, 0),
				Text = if self.props.FTUXTitle ~= ""
					then self.props.FTUXTitle
					else "Chat translation is on for supported languages",
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Top,
				TextTransparency = self.transparency,
				FontFace = FTUXTitleFont,
				TextSize = 16,
				TextWrapped = true,
				BackgroundTransparency = 1,
				TextColor3 = Color3.new(1, 1, 1),
				ZIndex = 101,
				LayoutOrder = 1,
			}),
			Body = Roact.createElement("TextLabel", {
				AutomaticSize = Enum.AutomaticSize.Y,
				Size = UDim2.new(1, 0, 0, 0),
				Text = if self.props.FTUXBody ~= ""
					then self.props.FTUXBody
					else "Messages you send and receive will be translated automatically",
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Top,
				TextTransparency = self.transparency,
				FontFace = FTUXFont,
				TextSize = 16,
				TextWrapped = true,
				BackgroundTransparency = 1,
				TextColor3 = Color3.new(1, 1, 1),
				ZIndex = 101,
				LayoutOrder = 2,
			}),
		}),
	})
end

function ChatTranslationFTUX:fadeOut()
	if not self.isFadingOut then
		self.isFadingOut = true

		local transparencySpring = function(targetValue)
			return Otter.spring(targetValue, config)
		end
		self.transparencyMotor:setGoal(transparencySpring(1))
	end
end

function ChatTranslationFTUX:didMount()
	local transparencySpring = function(targetValue)
		return Otter.spring(targetValue, config)
	end

	self.transparencyMotor:setGoal(transparencySpring(0))

	self.props.timer:start():andThen(function()
		self:fadeOut()
	end)
end

function ChatTranslationFTUX:willUnmount()
	self.transparencyMotor:destroy()
end

return Localization.connect(function()
	return {
		FTUXTitle = "CoreScripts.TextChat.ChatTranslation.FTUX.TitleNew",
		FTUXBody = "CoreScripts.TextChat.ChatTranslation.FTUX.BodyNew",
	}
end)(ChatTranslationFTUX)
