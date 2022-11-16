local CorePackages = game:GetService("CorePackages")
local HttpService = game:GetService("HttpService")
local RunService = game:GetService("RunService")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local Players = game:GetService("Players")

local React = require(CorePackages.Packages.React)

local InGameMenu = script.Parent.Parent
local Assets = require(InGameMenu.Resources.Assets)

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local UIBlox = InGameMenuDependencies.UIBlox
local ImageSetLabel = UIBlox.Core.ImageSet.Label
local StyledTextLabel = UIBlox.App.Text.StyledTextLabel

local useRef = React.useRef
local useStyle = UIBlox.Core.Style.useStyle
local useSelector = require(CorePackages.Workspace.Packages.RoactUtils).Hooks.RoactRodux.useSelector
local useVoiceState = require(RobloxGui.Modules.VoiceChat.Hooks.useVoiceState)
local VoiceConstants = require(RobloxGui.Modules.InGameChat.BubbleChat.Constants)

local WIDTH = 33;
local HEIGHT = 14;
local SIZE = UDim2.new(0, WIDTH, 0, HEIGHT);
local CORNER_ROUNDING = UDim.new(0, 4);
local RED_DOT_COLOR = Color3.new(0.918, 0.2, 0.137);
local RED_DOT_SIZE = UDim2.new(0, 6, 0, 6);
local RED_DOT_GLOW_SIZE = UDim2.new(0, 12, 0, 12);
local RED_DOT_POS =  UDim2.new(0, 7, 0.5, 0);
local REC_TEXT_POS =   UDim2.new(0, 12, 0, 0);

local baseSize = 16
local TEXT_FONT = {
	Font = Enum.Font.GothamBold,
	RelativeSize = 7 / baseSize,
	RelativeMinSize = 7 / baseSize,
};

local function GenerateGUID() return HttpService:GenerateGUID() end

local function menuOpenSelector(state)
	return state.isMenuOpen
end

function RECIcon(props):any

	local bgRef = useRef(nil)
	local redDot = useRef(nil)
	local redGlow = useRef(nil)

	local renderStepName = React.useRef(GenerateGUID()).current or ""

	local menuOpen:boolean = useSelector(menuOpenSelector)
	local voiceState = useVoiceState(Players.LocalPlayer and Players.LocalPlayer.UserId or 0)
	local micActive = voiceState == VoiceConstants.VOICE_STATE.INACTIVE or
						voiceState == VoiceConstants.VOICE_STATE.TALKING

	local priorMenuOpen = useRef(menuOpen)

	React.useEffect(function()
		local txtLabel = bgRef.current and bgRef.current:FindFirstChildWhichIsA("TextLabel", true) or nil
		local menuOpened = menuOpen and menuOpen ~= priorMenuOpen.current
		priorMenuOpen.current = menuOpen

		-- Animation to pusle the red dot. 5.5s loop
		if micActive and menuOpen and bgRef.current and redGlow.current and redDot.current and txtLabel then
			local PI = math.pi
			local sin = math.sin
			local tick = 0;
			local totalTick = 0;
			RunService:BindToRenderStep(renderStepName, 1, function(frameTick)
				if not bgRef.current then
					return
				end
				local bgTrans = bgRef.current.BackgroundTransparency

				-- momentary hidden when first activated; rodux delays the tooltip text (lags behind)
				bgRef.current.Visible = totalTick > 0.15 or menuOpened

				if bgTrans > 0 then -- handle component fade-in-out; bypass pulse
					redGlow.current.ImageTransparency = bgTrans
					redDot.current.BackgroundTransparency = bgTrans
					txtLabel.TextTransparency = bgTrans
					return
				end
				tick += frameTick;
				totalTick += frameTick;
				txtLabel.TextTransparency = 0


				-- dot pulse
				if (tick > 3.5) then
					local x = (tick - 3.5) / 2.0
					redDot.current.BackgroundTransparency = sin(PI*x) * 0.2
					if (tick > 5.5) then
						-- loop; reset
						tick = 0
					end
				else
					redDot.current.BackgroundTransparency = 0
				end

				-- glow pulse
				if (tick < 4.5) then
					local x = tick / 4.5
					redGlow.current.ImageTransparency = 1 - sin(PI*x)
				else
					redGlow.current.ImageTransparency = 1
				end
			end)
			return function()
				-- menu closing
				-- nil checks for early exit case: micActive == false
				if redGlow.current then redGlow.current.ImageTransparency = 1 end
				if redDot.current then redDot.current.BackgroundTransparency = 1 end
				if bgRef.current and txtLabel then txtLabel.TextTransparency = 1 end
				RunService:UnbindFromRenderStep(renderStepName)
			end
		else
			return function() end
		end
	end, {micActive or false, menuOpen or false })

	local stylePalette = useStyle()
	local theme = stylePalette.Theme

	if not micActive then
		return nil
	end

	return React.createElement("Frame", {
		ref = bgRef,
		Position = props.Position,
		AnchorPoint = props.AnchorPoint,
		Size = SIZE,
		BackgroundTransparency = if props.hidden then 1 else props.transparency,
		BackgroundColor3 = stylePalette.Theme.UIMuted.Color,
	}, {
		UICorner = React.createElement("UICorner", {
			CornerRadius = CORNER_ROUNDING,
		}),
		RedDot = React.createElement("Frame", {
			ref = redDot,
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = RED_DOT_POS,
			Size = RED_DOT_SIZE,
			BackgroundColor3 = RED_DOT_COLOR,
		}, {
			UICorner = React.createElement("UICorner", {
				CornerRadius = UDim.new(0, 3),
			}),
		}),
		RedDotGlow = React.createElement(ImageSetLabel, {
			ref = redGlow,
			AnchorPoint = Vector2.new(0.5, 0.5),
			Size = RED_DOT_GLOW_SIZE,
			Position = RED_DOT_POS,
			Image = Assets.Images.RadialGlowStrong,
			ImageColor3 = RED_DOT_COLOR,
			BackgroundTransparency = 1,
		}),
		TextFrame = Roact.createElement("Frame", {
			Position = REC_TEXT_POS,
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
		}, {
			Text = Roact.createElement(StyledTextLabel, {
				text = "REC",
				size = UDim2.new(1, 0, 1, 0),
				fontStyle = TEXT_FONT,
				colorStyle = theme.ContextualPrimaryContent,
			}),
		})

	})
end


return RECIcon
