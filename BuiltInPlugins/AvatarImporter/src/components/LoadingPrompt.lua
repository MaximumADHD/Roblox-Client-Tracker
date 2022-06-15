--[[
	LoadingPrompt - Screen that is displayed while importing process is running
]]

local root = script.Parent.Parent.Parent

-- imports
local Roact = require(root.Packages.Roact)

local Studio = settings().Studio

local Constants = require(root.src.Constants)

-- component
local LoadingPrompt = Roact.Component:extend("LoadingPrompt")

function LoadingPrompt:render()
	return Roact.createElement("ImageLabel", {
		Name = "LoadingPrompt",
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundColor3 = Studio.Theme:GetColor(
			Enum.StudioStyleGuideColor.MainBackground,
			Enum.StudioStyleGuideModifier.Default
		),
	}, {
		description = Roact.createElement("TextLabel", {
			AnchorPoint = Vector2.new(0.5, 0.5),
			BackgroundTransparency = 1,
			Font = Constants.FONT,
			Name = "Description",
			Position = UDim2.new(0.5, 0, 0.5, 0),
			Size = UDim2.new(1, 0, 1, 0),
			Text = "Importing Avatar, please wait...",
			TextSize = Constants.FONT_SIZE_MEDIUM,
			TextXAlignment = Enum.TextXAlignment.Center,
			TextYAlignment = Enum.TextYAlignment.Center,
			TextColor3 = Studio.Theme:GetColor(
				Enum.StudioStyleGuideColor.MainText,
				Enum.StudioStyleGuideModifier.Default
			),
		})
	})
end

return LoadingPrompt