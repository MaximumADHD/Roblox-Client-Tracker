--!nonstrict
local CorePackages = game:GetService("CorePackages")
local SoundService = game:GetService("SoundService") :: any
local VoiceChatService: VoiceChatService = game:GetService("VoiceChatService")
local Players: Players = game:GetService("Players")

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local expect = JestGlobals.expect
local describe = JestGlobals.describe
local it = JestGlobals.it
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach
local jest = JestGlobals.jest

local function requireFresh()
	jest.resetModules()
	return require(script.Parent.DefaultListenerLocation)
end

local function cleanListeners()
	for _, child in SoundService:GetChildren() do
		if child:IsA("AudioListener") then
			child:Destroy()
		end
	end
	local camera = workspace.CurrentCamera
	if camera then
		for _, child in camera:GetChildren() do
			if child:IsA("AudioListener") then
				child:Destroy()
			end
		end
	end
end

beforeEach(function()
	SoundService.DefaultListenerLocation = Enum.ListenerLocation.Default
	VoiceChatService.UseAudioApi = Enum.AudioApiRollout.Disabled
	VoiceChatService.EnableDefaultVoice = false
	cleanListeners()
end)

describe("DefaultListenerLocation=Camera", function()
	it("spawns AudioListener under CurrentCamera", function()
		SoundService.DefaultListenerLocation = Enum.ListenerLocation.Camera
		requireFresh()
		expect((workspace.CurrentCamera :: Camera):FindFirstChildWhichIsA("AudioListener")).never.toBeNil()
	end)
end)

describe("DefaultListenerLocation=None", function()
	it("does not spawn any AudioListener", function()
		SoundService.DefaultListenerLocation = Enum.ListenerLocation.None
		requireFresh()
		expect(SoundService:FindFirstChildWhichIsA("AudioListener")).toBeNil()
		expect((workspace.CurrentCamera :: Camera):FindFirstChildWhichIsA("AudioListener")).toBeNil()
	end)
end)

describe("DefaultListenerLocation=Default", function()
	it("spawns AudioListener under CurrentCamera when voice conditions met", function()
		VoiceChatService.UseAudioApi = Enum.AudioApiRollout.Enabled
		VoiceChatService.EnableDefaultVoice = true
		requireFresh()
		expect((workspace.CurrentCamera :: Camera):FindFirstChildWhichIsA("AudioListener")).never.toBeNil()
	end)

	it("does not spawn when voice conditions not met", function()
		requireFresh()
		expect(SoundService:FindFirstChildWhichIsA("AudioListener")).toBeNil()
		expect((workspace.CurrentCamera :: Camera):FindFirstChildWhichIsA("AudioListener")).toBeNil()
	end)
end)

describe("DefaultListenerLocation=Character", function()
	local function makeMockCharacter()
		local character = Instance.new("Model")
		local rootPart = Instance.new("Part")
		rootPart.Name = "HumanoidRootPart"
		rootPart.Parent = character
		character.PrimaryPart = rootPart
		return character
	end

	afterEach(function()
		local localPlayer = Players.LocalPlayer :: Player
		localPlayer.Character = nil
	end)

	it("spawns AudioListener on PrimaryPart when character already present", function()
		local character = makeMockCharacter()
		local localPlayer = Players.LocalPlayer :: Player
		localPlayer.Character = character
		SoundService.DefaultListenerLocation = Enum.ListenerLocation.Character
		requireFresh()
		local attachment = character.PrimaryPart:FindFirstChildWhichIsA("Attachment")
		expect(attachment).never.toBeNil()
		expect(attachment:FindFirstChildWhichIsA("AudioListener")).never.toBeNil()
	end)

	it("spawns AudioListener on PrimaryPart when character added after Initialize", function()
		local localPlayer = Players.LocalPlayer :: Player
		SoundService.DefaultListenerLocation = Enum.ListenerLocation.Character
		localPlayer.Character = nil
		requireFresh()
		local character = makeMockCharacter()
		localPlayer.Character = character
		task.wait() -- yield so CharacterAdded callback runs under both legacy and deferred signal behavior
		local attachment = character.PrimaryPart:FindFirstChildWhichIsA("Attachment")
		expect(attachment).never.toBeNil()
		expect(attachment:FindFirstChildWhichIsA("AudioListener")).never.toBeNil()
	end)
end)
