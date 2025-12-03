local CorePackages = game:GetService("CorePackages")
local UserInputService = game:GetService("UserInputService")
local LogService = game:GetService("LogService")
local Roact = require(CorePackages.Packages.Roact)

local DataConsumer = require(script.Parent.Parent.DataConsumer)

local ScrollingTextBox = require(script.Parent.Parent.ScrollingTextBox)

local Constants = require(script.Parent.Parent.Parent.Constants)
local COMMANDLINE_INDENT = Constants.LogFormatting.CommandLineIndent
local COMMANDLINE_FONTSIZE = Constants.DefaultFontSize.CommandLine
local FONT = Constants.Font.Log

local DevConsoleCommandLine = Roact.PureComponent:extend("DevConsoleCommandLine")

function DevConsoleCommandLine:init()
	self.onFocusLost = function(rbx, enterPressed, inputThatCausedFocusLoss)
		if enterPressed then
			LogService:ExecuteScript(rbx.Text)
			rbx:CaptureFocus()
		end
	end

	self.textbox = Roact.createRef()
end

function DevConsoleCommandLine:didMount()
	if not self.onFocusConnection then
		self.onFocusConnection = UserInputService.InputBegan:Connect(function(input)
			if self.textbox.current and self.textbox.current:IsFocused() then
				local rbx = self.textbox.current
				local serverLogData = self.props.ServerLogData
				local cmdHistory = serverLogData:getCommandLineHistory()
				local cmdIndex = serverLogData:getCommandLineIndex()

				if input.KeyCode == Enum.KeyCode.Up then
					local newIndex = cmdIndex + 1
					newIndex = math.min(cmdHistory:getSize(), newIndex)
					cmdIndex = newIndex

					rbx.Text = cmdHistory:reverseAt(newIndex) or ""
				elseif input.KeyCode == Enum.KeyCode.Down then
					local newIndex = cmdIndex - 1
					newIndex = math.max(0, newIndex)
					cmdIndex = newIndex

					rbx.Text = cmdHistory:reverseAt(newIndex) or ""
				elseif input.KeyCode == Enum.KeyCode.Return then
					if #rbx.Text:gsub("%s+", "") > 0 then
						local prevText = cmdHistory:reverseAt(1)
						if prevText ~= rbx.Text then
							cmdHistory:push_back(rbx.Text)
						end
					end
					cmdIndex = 0
				elseif cmdIndex ~= 0 then
					cmdIndex = 0
				end
				serverLogData:setCommandLineIndex(cmdIndex)
			end
		end)
	end

	-- theres an unwanted behavior here
	-- if you recapture the same textbox in the onFocuslost event,
	-- the "\r" character that triggerd the onFocusLost will not be consumed yet
	-- and will subsequently be put into the textbox. This event is meant to fix that.
	if not self.fixUnwantedReturnCapture then
		self.fixUnwantedReturnCapture = UserInputService.InputEnded:Connect(function(input)
			if self.textbox.current and self.textbox.current:IsFocused() then
				if input.KeyCode == Enum.KeyCode.Return then
					self.textbox.current.Text = ""
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

	local initText = ""

	local cmdIndex = self.props.ServerLogData:getCommandLineIndex()
	if cmdIndex ~= 0 then
		local cmdHistory = self.props.ServerLogData:getCommandLineHistory()
		initText = cmdHistory:reverseAt(cmdIndex) or ""
	end

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

		InputField = Roact.createElement(ScrollingTextBox, {
			Position = UDim2.new(0, COMMANDLINE_INDENT, 0, 0),
			Size = UDim2.new(1, -COMMANDLINE_INDENT, 0, height),

			ShowNativeInput = true,
			ClearTextOnFocus = false,
			TextColor3 = Constants.Color.Text,
			TextXAlignment = 0,
			TextSize = COMMANDLINE_FONTSIZE,
			Text = initText,
			Font = FONT,
			PlaceholderText = "command line",

			[Roact.Ref] = self.textbox,
			TextBoxFocusLost = self.onFocusLost,
		}),
	})
end

return DataConsumer(DevConsoleCommandLine, "ServerLogData")
