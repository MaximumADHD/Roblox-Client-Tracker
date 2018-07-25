local CorePackages = game:GetService("CorePackages")
local LogService =  game:GetService("LogService")
local Roact = require(CorePackages.Roact)

local Constants = require(script.Parent.Parent.Parent.Constants)
local COMMANDLINE_INDENT = Constants.LogFormatting.CommandLineIndent
local COMMANDLINE_FONTSIZE = Constants.DefaultFontSize.CommandLine
local FONT = Constants.Font.MainWindow

local DevConsoleCommandLine = Roact.Component:extend("DevConsoleCommandLine")

function DevConsoleCommandLine:render()
	local height = self.props.height
	local pos = self.props.pos

	return Roact.createElement("Frame", {
		Position = pos,
		Size = UDim2.new(1, 0, 0, height),
		BackgroundTransparency = 0,
		BackgroundColor3 = Constants.Color.TextBoxGray,
		BorderColor3 = Constants.Color.BorderGray,
		BorderSizePixel = 1,
	}, {
		Arrow = Roact.createElement("TextLabel", {
			Size = UDim2.new(0, COMMANDLINE_INDENT, 1, 0),
			BackgroundTransparency = 1,
			TextSize = COMMANDLINE_FONTSIZE,
			Font = FONT,
			Text = "> ",
			TextColor3 = Constants.Color.Text,
			TextXAlignment = Enum.TextXAlignment.Right,
		}),

		TextBox = Roact.createElement("TextBox", {
			Position = UDim2.new(0, COMMANDLINE_INDENT, 0, 0),
			Size = UDim2.new(1, -COMMANDLINE_INDENT, 0, height),
			BackgroundTransparency = 1,

			ShowNativeInput = true,
			TextColor3 = Constants.Color.Text,
			TextXAlignment = 0,
			TextSize = COMMANDLINE_FONTSIZE,
			Text = "",
			Font = FONT,
			PlaceholderText = "command line",

			[Roact.Event.FocusLost] = function(rbx, enterPressed, inputThatCausedFocusLoss)
				if enterPressed then
					if #rbx.text > 0 then
						LogService:ExecuteScript(rbx.text)
					end
					rbx.Text = ""
				end
			end,
		})
	})
end

return DevConsoleCommandLine