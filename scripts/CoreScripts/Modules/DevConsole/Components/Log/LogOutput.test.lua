local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Packages.Roact)
local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local expect = JestGlobals.expect
local it = JestGlobals.it
local afterEach = JestGlobals.afterEach

local CircularBuffer = require(script.Parent.Parent.Parent.CircularBuffer)
local Constants = require(script.Parent.Parent.Parent.Constants)
local Signal = require(script.Parent.Parent.Parent.Signal)
local LogOutput = require(script.Parent.LogOutput)

local mountedInstance: any
local container: any

afterEach(function()
	if mountedInstance then
		Roact.unmount(mountedInstance)
		mountedInstance = nil
	end
	if container then
		container:Destroy()
		container = nil
	end
end)

it("reserves height for multiline leaves in expanded context", function()
	local messageText = "warning"
	local logData = CircularBuffer.new(1)
	logData:push_back({
		Message = messageText,
		CharCount = #messageText,
		Type = Enum.MessageType.MessageWarning.Value,
		Dims = Vector2.new(100, Constants.DefaultFontSize.MainWindow),
		Context = {
			first = "one\ntwo",
			nested = {
				_expanded = true,
				child = "one\ntwo\nthree",
			},
		},
		Expanded = true,
	})

	container = Instance.new("ScreenGui")
	container.Parent = game:GetService("CoreGui")
	Roact.act(function()
		mountedInstance = Roact.mount(
			Roact.createElement(LogOutput, {
				targetSignal = Signal.new(),
				initLogOutput = function()
					return logData
				end,
				size = UDim2.fromOffset(500, 500),
			}),
			container,
			"LogOutputTest"
		)
	end)

	local contextFrame = container.LogOutputTest["2"].context
	local expectedContextLines = if game:GetFastFlag("DevConsoleFixMultilineContext") then 6 else 3
	local lineHeight = Constants.DefaultFontSize.MainWindow + Constants.LogFormatting.TextFramePadding

	expect(contextFrame.Size.Y.Offset).toBe((expectedContextLines + 1) * lineHeight)
end)
