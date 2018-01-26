
local CoreGui = game:GetService("CoreGui")
local HttpService = game:GetService("HttpService")
local VirtualInputManager = game:GetService("VirtualInputManager")
local RunService = game:GetService("RunService")
local Stats = game:GetService("Stats")

local LuaChat = CoreGui.RobloxGui.Modules.LuaChat
local Config = require(LuaChat.Config)
local Constants = require(LuaChat.Constants)
local Create = require(LuaChat.Create)

local PerformanceTesting = {}

PerformanceTesting.Mode = {
	None = "None",
	Playing = "Playing",
	Recording = "Recording",
}

function PerformanceTesting:LuaState()
	local frm = Stats:FindFirstChild("FrameRateManager")
	if not frm then
		warn("FrameRateManager not present in Stats")
		return {
			AverageFPS = 0,
			FrameTimeVariance = 0,
		}
	end
	return {
		AverageFPS = frm:FindFirstChild("AverageFPS"):GetValue(),
		FrameTimeVariance = frm:FindFirstChild("FrameTimeVariance"):GetValue(),
	}
end

function PerformanceTesting:ShowResults(expected)
	local actual = PerformanceTesting:LuaState()

	local gui = Create.new "ScreenGui" {
		Name = "TestResults",
		DisplayOrder = 5,

		Create.new "Frame" {

			BackgroundTransparency = 0,
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundColor3 = Constants.Color.WHITE,
			BorderSizePixel = 0,

			Create.new "UIListLayout" {
				SortOrder = "LayoutOrder",
			},

			Create.new "TextLabel" {

				Name = "Title",
				BackgroundTransparency = 1,
				TextSize = Constants.Font.FONT_SIZE_14,
				Size = UDim2.new(1, 0, 0, 100),
				Text = "Test: "..Config.PerformanceTestFilename
			},

			Create.new "TextLabel" {

				Name = "AverageFPS",
				TextXAlignment = Enum.TextXAlignment.Left,
				BackgroundTransparency = 1,
				TextSize = Constants.Font.FONT_SIZE_14,
				Size = UDim2.new(1, 0, 0, 50),
				Text = "AverageFPS:",
			},
			Create.new "TextLabel" {

				Name = "ExpectedAverageFPS",
				TextXAlignment = Enum.TextXAlignment.Left,
				BackgroundTransparency = 1,
				TextSize = Constants.Font.FONT_SIZE_14,
				Size = UDim2.new(1, 0, 0, 30),
				Text = string.format("Expected: %g", expected.AverageFPS),
			},
			Create.new "TextLabel" {

				Name = "ActualAverageFPS",
				TextXAlignment = Enum.TextXAlignment.Left,
				BackgroundTransparency = 1,
				TextSize = Constants.Font.FONT_SIZE_14,
				Size = UDim2.new(1, 0, 0, 30),
				Text = string.format("Actual  : %g", actual.AverageFPS),
			},
			Create.new "TextLabel" {

				Name = "ActualAverageFPS",
				TextXAlignment = Enum.TextXAlignment.Left,
				BackgroundTransparency = 1,
				TextSize = Constants.Font.FONT_SIZE_14,
				Size = UDim2.new(1, 0, 0, 30),
				Text = string.format("Delta   : %g", actual.AverageFPS-expected.AverageFPS),
			},

			Create.new "TextLabel" {

				Name = "FrameTimeVariance",
				TextXAlignment = Enum.TextXAlignment.Left,
				BackgroundTransparency = 1,
				TextSize = Constants.Font.FONT_SIZE_14,
				Size = UDim2.new(1, 0, 0, 50),
				Text = "FrameTimeVariance:",
			},
			Create.new "TextLabel" {

				Name = "ExpectedAFrameTimeVariance",
				TextXAlignment = Enum.TextXAlignment.Left,
				BackgroundTransparency = 1,
				TextSize = Constants.Font.FONT_SIZE_14,
				Size = UDim2.new(1, 0, 0, 30),
				Text = string.format("Expected: %g", expected.FrameTimeVariance),
			},
			Create.new "TextLabel" {

				Name = "ActualFrameTimeVariance",
				TextXAlignment = Enum.TextXAlignment.Left,
				BackgroundTransparency = 1,
				TextSize = Constants.Font.FONT_SIZE_14,
				Size = UDim2.new(1, 0, 0, 30),
				Text = string.format("Actual  : %g", actual.FrameTimeVariance),
			},
			Create.new "TextLabel" {

				Name = "ActualFrameTimeVariance",
				TextXAlignment = Enum.TextXAlignment.Left,
				BackgroundTransparency = 1,
				TextSize = Constants.Font.FONT_SIZE_14,
				Size = UDim2.new(1, 0, 0, 30),
				Text = string.format("Delta   : %g", actual.FrameTimeVariance-expected.FrameTimeVariance),
			},
		}
	}
	gui.Parent = CoreGui
end

function PerformanceTesting:Record()
	RunService:setThrottleFramerateEnabled(false)
	VirtualInputManager.RecordingCompleted:Connect(function(json)
		print("*** Finished Recording Test ***")
		VirtualInputManager.AdditionalLuaState = HttpService:JSONEncode(self:LuaState())
		print("~~~           DUMP          ~~~")
		VirtualInputManager:Dump()
	end)
	VirtualInputManager:StartRecording()
end

function PerformanceTesting:Play(filename)
	print("PerformanceTesting:Play")
	RunService:setThrottleFramerateEnabled(false)
	VirtualInputManager.PlaybackCompleted:Connect(function()
		print("*** Finished Playing Test ***")
		local expectedState = HttpService:JSONDecode(VirtualInputManager.AdditionalLuaState)
		self:ShowResults(expectedState)
	end)
	VirtualInputManager:StartPlaying(filename)
end

function PerformanceTesting:Stop()
	if Config.PerformanceTestingMode == Enum.VirtualInputMode.Recording then
		VirtualInputManager:StopRecording()
	end
end

function PerformanceTesting:Initialize(appState)

	if Config.PerformanceTestingMode == Enum.VirtualInputMode.None then
		return
	end

	self.appState = appState

	if Config.PerformanceTestingMode == Enum.VirtualInputMode.Recording then
		self:Record()
	elseif Config.PerformanceTestingMode == Enum.VirtualInputMode.Playing then
		self:Play(Config.PerformanceTestFilename)
	end
end

return PerformanceTesting
