local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)

local LabeledLocaleSelector = require(script.Parent.LabeledLocaleSelector)

local PlayerLocaleView = Roact.Component:extend("PlayerLocaleView")
local StudioEnableLuaAPIsForThemes = settings():GetFFlag("StudioEnableLuaAPIsForThemes")

function PlayerLocaleView:init()
	if StudioEnableLuaAPIsForThemes then
		self.state = {
			Theme = settings().Studio.Theme,
		}
	end
end

function PlayerLocaleView:render()
	local TextColor3
	local BorderColor3
	local BackgroundColor3
	local ButtonHoverColor3
	local ButtonDownColor3

	if StudioEnableLuaAPIsForThemes then
		TextColor3 = self.state.Theme:GetColor(Enum.StudioStyleGuideColor.BrightText)
		BorderColor3 = self.state.Theme:GetColor(Enum.StudioStyleGuideColor.Border)
		BackgroundColor3 = self.state.Theme:GetColor(Enum.StudioStyleGuideColor.MainBackground)
		ButtonHoverColor3 = self.state.Theme:GetColor(Enum.StudioStyleGuideColor.Button, Enum.StudioStyleGuideModifier.Hover)
		ButtonDownColor3 = self.state.Theme:GetColor(Enum.StudioStyleGuideColor.Button, Enum.StudioStyleGuideModifier.Pressed)
	else
		TextColor3 = Color3.new( 0, 0, 0 )
		BorderColor3 = Color3.new( 0.713726, 0.713726, 0.713726 )
		BackgroundColor3 = Color3.new( 1, 1, 1 )
		ButtonHoverColor3 = Color3.new( 0.894118, 0.933333, 0.996078 )
		ButtonDownColor3 = Color3.new( 0.858824, 0.858824, 0.858824 )
	end

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 0,
		BackgroundColor3 = BackgroundColor3,
		BorderSizePixel = 0,
	}, {
		Layout = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Vertical,
			Padding = UDim.new(0, 5),
		}),

		Padding = Roact.createElement("UIPadding", {
			PaddingTop = UDim.new(0, 10),
		}),

		Roblox = Roact.createElement(LabeledLocaleSelector, {
			Window = self.props.Window,
			LabelText = "Roblox",
			TextColor3 = TextColor3,
			BorderColor3 = BorderColor3,
			BackgroundColor3 = BackgroundColor3,
			ButtonHoverColor3 = ButtonHoverColor3,
			ButtonDownColor3 = ButtonDownColor3,
			InitialLocaleId = self.props.InitialRobloxLocaleId,
			SetLocaleId = self.props.SetRobloxLocaleId,
			LayoutOrder = 0,
		}),

		Game = Roact.createElement(LabeledLocaleSelector, {
			Window = self.props.Window,
			LabelText = "Game",
			TextColor3 = TextColor3,
			BorderColor3 = BorderColor3,
			BackgroundColor3 = BackgroundColor3,
			ButtonHoverColor3 = ButtonHoverColor3,
			ButtonDownColor3 = ButtonDownColor3,
			InitialLocaleId = self.props.InitialGameLocaleId,
			SetLocaleId = self.props.SetGameLocaleId,
			LayoutOrder = 1,
		}),
	})
end

function PlayerLocaleView:didMount()
	if StudioEnableLuaAPIsForThemes then
		settings().Studio.ThemeChanged:Connect(
			function()
				self:setState({
					Theme = settings().Studio.Theme,
				})
			end
		)
	end
end

return PlayerLocaleView
