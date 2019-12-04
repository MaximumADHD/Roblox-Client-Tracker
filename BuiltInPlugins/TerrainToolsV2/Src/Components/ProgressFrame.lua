--[[
	A simple port of Src/Components/Functions/ProgressFrame.lua into Roact
	TODO: Replace with a new component that uses theme and localization correctly
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

-- TODO: Fix all these constants
local kWidth = 400
local kHeight = 160

local kStandardHMargin = 10
local kStandardVMargin = 5
local kBarHeight = 25
local kButtonHeight = 30

local kTitleBarHeight = 25

local progressBarImage = "rbxasset://textures/TerrainTools/progress_bar.png"

local ProgressFrame = Roact.PureComponent:extend(script.Name)

function ProgressFrame:render()
	local anchorPoint = self.props.AnchorPoint or Vector2.new(0, 0)
	local position = self.props.Position or UDim2.new(0, 0, 0, 0)
	local size = self.props.Size or UDim2.new(0, kWidth, 0, kHeight)

	local progress = self.props.Progress or 0

	local isPaused = self.props.IsPaused

	local onPauseButtonClicked = self.props.OnPauseButtonClicked
	local onCancelButtonClicked = self.props.OnCancelButtonClicked
	local pausable = type(onPauseButtonClicked) == "function"
	local cancelable = type(onCancelButtonClicked) == "function"

	return Roact.createElement("Frame", {
		AnchorPoint = anchorPoint,
		Position = position,
		Size = size,

		-- TODO: Styling
		Style = Enum.FrameStyle.DropShadow,
	}, {
		TitleLabel = Roact.createElement("TextLabel", {
			Size = UDim2.new(1, 0, 0, kTitleBarHeight),

			-- TODO: Styling
			BackgroundTransparency = 0.75,
			BackgroundColor3 = Color3.new(1, 1, 1),
			Font = Enum.Font.SourceSansBold,
			TextColor3 = Color3.new(1, 1, 1),
			TextSize = 18,

			-- TODO: Localization
			Text = "Progress",
		}),

		Bar = Roact.createElement("Frame", {
			Position = UDim2.new(0, kStandardHMargin, 0.39, 0),
			Size = UDim2.new(1, -2 * kStandardHMargin, 0, kBarHeight),

			-- TODO: Styling
		}, {
			Fill = Roact.createElement("ImageLabel", {
				Image = progressBarImage,
				ImageColor3 = Color3.new(0, 0.9, 0.4),
				ImageRectOffset = Vector2.new(0, 256),
				ImageRectSize = Vector2.new(0, -100),
				ScaleType = Enum.ScaleType.Stretch,

				Size = UDim2.new(progress, 0, 1, 0),
			})
		}),

		PauseButton = pausable and Roact.createElement("TextButton", {
			Position = UDim2.new(0, kStandardHMargin, 1, -kStandardVMargin - kButtonHeight),
			Size = UDim2.new(0.5, -2 * kStandardHMargin, 0, kButtonHeight),

			-- TODO: Styling
			Style = isPaused and Enum.ButtonStyle.RobloxRoundButton or Enum.ButtonStyle.RobloxRoundDefaultButton,
			Font = Enum.Font.SourceSansBold,
			TextColor3 = Color3.new(1, 1, 1),
			TextSize = 18,

			-- TODO: Localization
			Text = isPaused and "Resume" or "Pause",

			[Roact.Event.Activated] = onPauseButtonClicked,
		}),

		CancelButton = cancelable and Roact.createElement("TextButton", {
			AnchorPoint = Vector2.new(1, 0),
			Position = UDim2.new(1, -kStandardHMargin, 1, -kStandardVMargin - kButtonHeight),
			Size = UDim2.new(0.5, -2 * kStandardHMargin, 0, kButtonHeight),

			-- TODO: Styling
			Style = Enum.ButtonStyle.RobloxRoundDefaultButton,
			Font = Enum.Font.SourceSansBold,
			TextColor3 = Color3.new(1, 1, 1),
			TextSize = 18,

			-- TODO: Localization
			Text = "Cancel",

			[Roact.Event.Activated] = onCancelButtonClicked,
		})
	})
end

return ProgressFrame
