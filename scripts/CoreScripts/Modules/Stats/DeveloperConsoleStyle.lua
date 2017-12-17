--[[
  Filename: DeveloperConsolePrimitives.lua
  Written by: dbanks
  Description: Refactoring code from DeveloperConsoleModule.
--]]

local Style; 

do
	local function c3(r, g, b)
		return Color3.new(r / 255, g / 255, b / 255)
	end
	local frameColor = Color3.new(0.1, 0.1, 0.1)
	local textColor = Color3.new(1, 1, 1)
	local optionsFrameColor = Color3.new(1, 1, 1)
	
	pcall(function() -- Fun window colors for cool people
		local Players = game:GetService("Players")
		if not Players or not Players.LocalPlayer then
			return
		end
		local FunColors = {
			[56449]   = {c3(255, 63,  127)}; -- ReeseMcBlox
			[6949935] = {c3(255, 63,  127)}; -- NobleDragon
		}
		local funColor = FunColors[Players.LocalPlayer.UserId]
		if funColor then
			frameColor = funColor[1] or frameColor
			textColor = funColor[2] or textColor
		end
	end)
	
	Style = {
		ZINDEX = 6;
		Font = Enum.Font.SourceSans;
		FontBold = Enum.Font.SourceSansBold;
		
		HandleHeight = 24; -- How tall the top window handle is, as well as the width of the scroll bar
		TabHeight = 28;
		GearSize = 24;
		BorderSize = 2;
		CommandLineHeight = 22;
		
		OptionAreaHeight = 56;
		
		FrameColor = frameColor; -- Applies to pretty much everything, including buttons
		FrameTransparency = 0.5;
		OptionsFrameColor = optionsFrameColor;
		
		TextColor = textColor;
		
		MessageColors = {
			[0] = Color3.new(1, 1, 1); -- Enum.MessageType.MessageOutput
			[1] = Color3.new(0.4, 0.5, 1); -- Enum.MessageType.MessageInfo
			[2] = Color3.new(1, 0.6, 0.4); -- Enum.MessageType.MessageWarning
			[3] = Color3.new(1, 0, 0); -- Enum.MessageType.MessageError
		};
		
		ScrollbarFrameColor = frameColor;
		ScrollbarBarColor = frameColor;
		
		ScriptButtonHeight = 32;
		ScriptButtonColor = Color3.new(0, 1/3, 2/3);
		ScriptButtonTransparency = 0.5;
		
		CheckboxSize = 24;
		
		ChartTitleHeight = 20;
		ChartGraphHeight = 64;
		ChartDataHeight = 24;
		ChartHeight = 0; -- This gets added up at end and set at end of block
		ChartWidth = 620;
		
		-- (-1) means right to left
		-- (1) means left to right
		ChartGraphDirection = 1; -- the direction the bars move
		
		
		GetButtonDownColor = function(normalColor)
			local r, g, b = normalColor.r, normalColor.g, normalColor.b
			return Color3.new(1 - 0.75 * (1 - r), 1 - 0.75 * (1 - g), 1 - 0.75 * (1 - b))
		end;
		GetButtonHoverColor = function(normalColor)
			local r, g, b = normalColor.r, normalColor.g, normalColor.b
			return Color3.new(1 - 0.875 * (1 - r), 1 - 0.875 * (1 - g), 1 - 0.875 * (1 - b))
		end;

	}
	
	Style.ChartHeight = Style.ChartTitleHeight + Style.ChartGraphHeight + Style.ChartDataHeight + Style.BorderSize

end

return Style