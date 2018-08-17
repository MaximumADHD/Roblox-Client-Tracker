local CorePackages = game:GetService("CorePackages")
local UserInputService = game:GetService("UserInputService")
local LogService =  game:GetService("LogService")
local Roact = require(CorePackages.Roact)

local CircularBuffer = require(script.Parent.Parent.Parent.CircularBuffer)

local Constants = require(script.Parent.Parent.Parent.Constants)
local COMMANDLINE_INDENT = Constants.LogFormatting.CommandLineIndent
local COMMANDLINE_FONTSIZE = Constants.DefaultFontSize.CommandLine
local FONT = Constants.Font.MainWindow

local MAX_HISTORY = 100

local DevConsoleCommandLine = Roact.PureComponent:extend("DevConsoleCommandLine")

function DevConsoleCommandLine:init()
	self.onFocusLost = function(rbx, enterPressed, inputThatCausedFocusLoss)
		if enterPressed then
			LogService:ExecuteScript(rbx.Text)
			rbx:CaptureFocus()
		end
	end

	self.ref = Roact.createRef()

	self.state = {
		commandHistory = CircularBuffer.new(MAX_HISTORY),
	}
end

function DevConsoleCommandLine:didMount()
	if not self.onFocusConnection then
		self.currCommandIndex = 0
		self.onFocusConnection = UserInputService.InputBegan:Connect(function(input)
			if self.ref.current and self.ref.current:IsFocused() then
				local rbx = self.ref.current
				if input.KeyCode == Enum.KeyCode.Up then
					local newIndex = self.currCommandIndex + 1
					newIndex = math.min(self.state.commandHistory:getSize(), newIndex)
					self.currCommandIndex = newIndex

					rbx.Text = self.state.commandHistory:reverseAt(newIndex) or ""

				elseif input.KeyCode == Enum.KeyCode.Down then
					local newIndex = self.currCommandIndex - 1
					newIndex = math.max(0, newIndex)
					self.currCommandIndex = newIndex

					rbx.Text = self.state.commandHistory:reverseAt(newIndex) or ""

				elseif input.KeyCode == Enum.KeyCode.Return then
					if #rbx.Text:gsub("%s+", "") > 0 then
						local prevText = self.state.commandHistory:reverseAt(1)
						if prevText ~= rbx.Text then
							self.state.commandHistory:push_back(rbx.Text)
						end
					end
					self.currCommandIndex = 0
				elseif self.currCommandIndex ~= 0 then
					self.currCommandIndex = 0
				end
			end
		end)
	end

	-- theres an unwanted behavior here
	-- if you recapture the same textbox in the onFocuslost event,
	-- the "\r" character that triggerd the onFocusLost will not be consumed yet
	-- and will subsequently be put into the textbox. This event is meant to fix that.
	if not self.fixUnwantedReturnCapture then
		self.fixUnwantedReturnCapture = UserInputService.InputEnded:Connect(function(input)
			if self.ref.current and self.ref.current:IsFocused() then
				if input.KeyCode == Enum.KeyCode.Return then
					self.ref.current.Text = ""
				end
			end
		end)
	end
end

function DevConsoleCommandLine:willUnmount()
	if self.onFocusConnection then
		self.onFocusConnection:Disconnect()
		self.onFocusConnection = nil
	end
	if self.fixUnwantedReturnCapture then
		self.fixUnwantedReturnCapture:Disconnect()
		self.fixUnwantedReturnCapture = nil
	end
end

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
			ClearTextOnFocus = false,
			TextColor3 = Constants.Color.Text,
			TextXAlignment = 0,
			TextSize = COMMANDLINE_FONTSIZE,
			Text = "",
			Font = FONT,
			PlaceholderText = "command line",

			[Roact.Ref] = self.ref,

			[Roact.Event.FocusLost] = self.onFocusLost,
		})
	})
end

return DevConsoleCommandLine