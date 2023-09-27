--!nonstrict
local ProximityPromptService = game:GetService("ProximityPromptService")
local CorePackages = game:GetService("CorePackages")

local JestGlobals = require(CorePackages.JestGlobals)
local expect = JestGlobals.expect
local jest = JestGlobals.jest

local PlayerHelper = require(script.Parent.PlayerHelper)

return function()
	local function makePartWithPrompt(arg)
		local part = PlayerHelper.AddInstance("Part")
		part.Size = arg.Size or Vector3.new(2,2,2)
		part.Position = arg.Position or Vector3.new()
		part.Anchored = true
		local prompt = Instance.new("ProximityPrompt")
		prompt.Parent = part
		return part
	end

	if not game:GetEngineFeature("ProximityPrompts") then
		return
	end

	beforeAll(function()
		PlayerHelper.Init()
		PlayerHelper.SetCameraFOV(70.0)
		PlayerHelper.hrp.Anchored = true -- Anchor hrp so it doesn't fall away!
		PlayerHelper.hrp.CFrame = CFrame.new(Vector3.new(0, 0, 0))
		PlayerHelper.SetPlayerCamera(Vector3.new(0, -0.2, -1), 10)
		PlayerHelper.WaitNFrames(1)
	end)

	describe("Activation Radius", function()
		local part, prompt
		local promptShownMock, promptShownFn = jest.fn()
		local promptHiddenMock, promptHiddenFn = jest.fn()

		beforeAll(function()
			part = makePartWithPrompt{Position=Vector3.new(5,0,-5)}
			prompt = part.ProximityPrompt
			promptShownMock.mockClear()
			promptHiddenMock.mockClear()
			prompt.PromptShown:Connect(promptShownFn)
			prompt.PromptHidden:Connect(promptHiddenFn)
			PlayerHelper.WaitNFrames(1)

			prompt.Enabled = true
			prompt.RequiresLineOfSight = false
		end)

		afterAll(function()
			PlayerHelper.CleanUpAfterTest()
		end)

		local function refreshPromptVisibleSignals()
			promptShownMock.mockClear() -- Reset counters
			promptHiddenMock.mockClear()
			PlayerHelper.WaitNFrames(2) -- Wait for onHeartbeat()
		end

		it("PromptHidden triggered on player going inside activation radius", function()
			prompt.RequiresLineOfSight = true
			prompt.Enabled = true
			part.Position = Vector3.new(0, 0, -7)
			PlayerHelper.WaitNFrames(1)
			expect(PlayerHelper.IsPartOnscreen(part)).toBe(true)

			prompt.MaxActivationDistance = 6
			local dist = part.Position - PlayerHelper.hrp.Position
			expect(dist.Magnitude < prompt.MaxActivationDistance).toBe(false) -- should be outside of radius

			PlayerHelper.WaitNFrames(2)

			part.Position = Vector3.new(0, 0, -5)
			expect(PlayerHelper.IsPartOnscreen(part)).toBe(true)
			refreshPromptVisibleSignals()

			expect(promptShownMock).toHaveBeenCalledTimes(1)
			expect(promptHiddenMock).never.toHaveBeenCalled()
		end)

		it("PromptHidden triggered on player going out of activation but still visible", function()
			prompt.RequiresLineOfSight = true
			prompt.Enabled = true
			part.Position = Vector3.new(0, 0, -5)
			PlayerHelper.WaitNFrames(1)
			expect(PlayerHelper.IsPartOnscreen(part)).toBe(true)

			prompt.MaxActivationDistance = 6
			local dist = part.Position - PlayerHelper.hrp.Position
			expect(dist.Magnitude).toBeLessThan(prompt.MaxActivationDistance) -- should be within radius

			PlayerHelper.WaitNFrames(2)

			part.Position = Vector3.new(0, 0, -7)
			refreshPromptVisibleSignals()
			expect(PlayerHelper.IsPartOnscreen(part)).toBe(true)

			expect(promptShownMock).never.toHaveBeenCalled()
			expect(promptHiddenMock).toHaveBeenCalledTimes(1)
		end)
	end)

	describe("PromptHidden Signal", function()
		local part, prompt
		local promptHiddenMock, promptHiddenFn = jest.fn()

		beforeAll(function()
			part = makePartWithPrompt{Position=Vector3.new(5,0,-5)}
			prompt = part.ProximityPrompt
			promptHiddenMock.mockClear()
			prompt.PromptHidden:Connect(promptHiddenFn)
			PlayerHelper.WaitNFrames(1)

			prompt.Enabled = true
			prompt.RequiresLineOfSight = false
		end)

		afterAll(function()
			PlayerHelper.CleanUpAfterTest()
		end)

		local function refreshPromptVisibleSignals()
			promptHiddenMock.mockClear() -- Reset counter
			PlayerHelper.WaitNFrames(1) -- Wait for onHeartbeat()
		end

		it("PromptHidden triggered on going out of frame", function()
			prompt.RequiresLineOfSight = false
			prompt.Enabled = true
			part.Position = Vector3.new(0, 0, -5)
			PlayerHelper.WaitNFrames(1)
			expect(PlayerHelper.IsPartOnscreen(part)).toBe(true)

			prompt.MaxActivationDistance = 15
			local dist = part.Position - PlayerHelper.hrp.Position
			expect(dist.Magnitude).toBeLessThan(prompt.MaxActivationDistance)

			part.Position = Vector3.new(100, 0, -5)
			refreshPromptVisibleSignals()
			expect(promptHiddenMock).toHaveBeenCalledTimes(1)
		end)

		it("PromptHidden triggered on line of sight blocked for .RequiresLineOfSight=true", function()
			prompt.RequiresLineOfSight = true
			prompt.Enabled = true
			part.Position = Vector3.new(0, 0, -10)
			PlayerHelper.WaitNFrames(1)
			expect(PlayerHelper.IsPartOnscreen(part)).toBe(true)

			prompt.MaxActivationDistance = 15
			local dist = part.Position - PlayerHelper.hrp.Position
			expect(dist.Magnitude).toBeLessThan(prompt.MaxActivationDistance)

			local blockerPart = PlayerHelper.AddInstance("Part")
			blockerPart.Shape = Enum.PartType.Block
			blockerPart.Size = Vector3.new(10,10,2)
			blockerPart.Position = Vector3.new(0, 0, -5)
			blockerPart.Anchored = true

			refreshPromptVisibleSignals()
			expect(promptHiddenMock).toHaveBeenCalledTimes(1)
		end)

		it("PromptHidden not triggered on line of sight blocked for .RequiresLineOfSight=false", function()
			prompt.RequiresLineOfSight = false
			prompt.Enabled = true
			part.Position = Vector3.new(0, 0, -10)
			PlayerHelper.WaitNFrames(1)
			expect(PlayerHelper.IsPartOnscreen(part)).toBe(true)

			prompt.MaxActivationDistance = 15
			local dist = part.Position - PlayerHelper.hrp.Position
			expect(dist.Magnitude).toBeLessThan(prompt.MaxActivationDistance)

			local blockerPart = PlayerHelper.AddInstance("Part")
			blockerPart.Shape = Enum.PartType.Block
			blockerPart.Size = Vector3.new(10,10,2)
			blockerPart.Position = Vector3.new(0, 0, -5)
			blockerPart.Anchored = true

			refreshPromptVisibleSignals()
			expect(promptHiddenMock).never.toHaveBeenCalled()
		end)

		it("PromptHidden triggered when setting .Enabled=false", function()
			prompt.RequiresLineOfSight = false
			prompt.Enabled = true
			part.Position = Vector3.new(0, 0, -5)
			PlayerHelper.WaitNFrames(1)
			expect(PlayerHelper.IsPartOnscreen(part)).toBe(true)

			prompt.MaxActivationDistance = 15
			local dist = part.Position - PlayerHelper.hrp.Position
			expect(dist.Magnitude).toBeLessThan(prompt.MaxActivationDistance)

			prompt.Enabled = false
			refreshPromptVisibleSignals()
			expect(promptHiddenMock).toHaveBeenCalledTimes(1)
		end)

		it("PromptHidden triggered when setting ProximityPromptService.Enabled=false", function()
			prompt.RequiresLineOfSight = false
			prompt.Enabled = true
			part.Position = Vector3.new(0, 0, -5)
			PlayerHelper.WaitNFrames(1)
			expect(PlayerHelper.IsPartOnscreen(part)).toBe(true)

			prompt.MaxActivationDistance = 15
			local dist = part.Position - PlayerHelper.hrp.Position
			expect(dist.Magnitude).toBeLessThan(prompt.MaxActivationDistance)

			ProximityPromptService.Enabled = false
			refreshPromptVisibleSignals()
			expect(promptHiddenMock).toHaveBeenCalledTimes(1)

			PlayerHelper.WaitNFrames(1)
			ProximityPromptService.Enabled = true -- Re-enable prompts for other tests.
		end)
	end)

	describe("Enabled/Disabled", function()
		local part1, prompt1
		local prompt1Mock, prompt1Fn = jest.fn()
		local promptUIs, promptGuiConnection

		beforeAll(function()
			part1 = makePartWithPrompt{Position=Vector3.new(5,0,-5)}
			prompt1 = part1.ProximityPrompt
			prompt1Mock.mockClear()
			prompt1.PromptShown:Connect(prompt1Fn)
			PlayerHelper.WaitNFrames(1)

			prompt1.Enabled = true
			prompt1.RequiresLineOfSight = false

			promptUIs = {}
			local promptScreenGui = PlayerHelper.PlayerGui:WaitForChild("ProximityPrompts", 10)
			promptGuiConnection = promptScreenGui.ChildAdded:Connect(function(child)
				table.insert(promptUIs, child)
			end)

		end)

		afterAll(function()
			PlayerHelper.CleanUpAfterTest()
		end)

		local function refreshPromptVisibleSignals()
			ProximityPromptService.Enabled = false -- Disable all prompts
			PlayerHelper.WaitNFrames(2) -- wait for onHeartbeat()

			prompt1Mock.mockClear() -- Reset counter
			promptUIs = {}

			ProximityPromptService.Enabled = true -- Enable all prompts
			PlayerHelper.WaitNFrames(2) -- Wait for onHeartbeat()
		end

		it("enabled prompt with custom style shouldn't have default UI shown", function()
			prompt1.RequiresLineOfSight = false
			prompt1.Enabled = true

			part1.Position = Vector3.new(0, 0, -5)
			prompt1.Style = Enum.ProximityPromptStyle.Default
			PlayerHelper.WaitNFrames(1)
			expect(PlayerHelper.IsPartOnscreen(part1)).toBe(true)

			prompt1.MaxActivationDistance = 15
			local dist1 = part1.Position - PlayerHelper.hrp.Position
			expect(dist1.Magnitude).toBeLessThan(prompt1.MaxActivationDistance)

			refreshPromptVisibleSignals()
			expect(prompt1Mock).toHaveBeenCalledTimes(1)
			expect(#promptUIs).toBe(1)

			prompt1.Style = Enum.ProximityPromptStyle.Custom
			PlayerHelper.WaitWallTime(0.25)
			refreshPromptVisibleSignals()
			expect(prompt1Mock).toHaveBeenCalledTimes(1)
			expect(#promptUIs).toBe(0) -- No UI should be shown!
			prompt1.Style = Enum.ProximityPromptStyle.Default -- reset for other tests.
		end)

		it("enabled prompt should be shown", function()
			prompt1.RequiresLineOfSight = false
			prompt1.Enabled = true
			part1.Position = Vector3.new(0, 0, -5)
			PlayerHelper.WaitNFrames(1)
			expect(PlayerHelper.IsPartOnscreen(part1)).toBe(true)

			prompt1.MaxActivationDistance = 15
			local dist1 = part1.Position - PlayerHelper.hrp.Position
			expect(dist1.Magnitude).toBeLessThan(prompt1.MaxActivationDistance)

			refreshPromptVisibleSignals()
			expect(prompt1Mock).toHaveBeenCalledTimes(1)
		end)

		it("disabled prompt shouldn't be shown", function()
			prompt1.RequiresLineOfSight = false
			prompt1.Enabled = false
			part1.Position = Vector3.new(0, 0, -5)
			PlayerHelper.WaitNFrames(1)
			expect(PlayerHelper.IsPartOnscreen(part1)).toBe(true)

			prompt1.MaxActivationDistance = 15
			local dist1 = part1.Position - PlayerHelper.hrp.Position
			expect(dist1.Magnitude).toBeLessThan(prompt1.MaxActivationDistance)

			refreshPromptVisibleSignals()
			expect(prompt1Mock).never.toHaveBeenCalled()
		end)

		it("enabled prompt with disabled ProximityPromptService shouldn't be shown", function()
			prompt1.RequiresLineOfSight = false
			prompt1.Enabled = true
			part1.Position = Vector3.new(0, 0, -5)
			PlayerHelper.WaitNFrames(1)
			expect(PlayerHelper.IsPartOnscreen(part1)).toBe(true)

			prompt1.MaxActivationDistance = 15
			local dist1 = part1.Position - PlayerHelper.hrp.Position
			expect(dist1.Magnitude).toBeLessThan(prompt1.MaxActivationDistance)

			ProximityPromptService.Enabled = false

			PlayerHelper.WaitNFrames(2)
			prompt1Mock.mockClear()
			PlayerHelper.WaitNFrames(2)
			expect(prompt1Mock).never.toHaveBeenCalled()

			ProximityPromptService.Enabled = true
		end)
	end)

	describe("Line Of Sight", function()
		local part1, prompt1
		local prompt1Mock, prompt1Fn = jest.fn()

		beforeAll(function()
			part1 = makePartWithPrompt{Position=Vector3.new(5,0,-5)}
			prompt1 = part1.ProximityPrompt
			prompt1Mock.mockClear()
			prompt1.PromptShown:Connect(prompt1Fn)
			PlayerHelper.WaitNFrames(1)

			prompt1.Enabled = true
			prompt1.RequiresLineOfSight = false
		end)

		afterAll(function()
			PlayerHelper.CleanUpAfterTest()
		end)

		local function refreshPromptVisibleSignals()
			prompt1.Enabled = false -- Disable prompts
			PlayerHelper.WaitNFrames(2) -- wait for onHeartbeat()

			prompt1Mock.mockClear() -- Reset counter

			prompt1.Enabled = true -- Enable prompts
			PlayerHelper.WaitNFrames(2) -- Wait for onHeartbeat()
		end

		it("unblocked prompt with .RequiresLineOfSight=true should be shown", function()
			prompt1.RequiresLineOfSight = true
			part1.Position = Vector3.new(0, 0, -5)
			PlayerHelper.WaitNFrames(1)
			expect(PlayerHelper.IsPartOnscreen(part1)).toBe(true)

			prompt1.MaxActivationDistance = 15
			local dist1 = part1.Position - PlayerHelper.hrp.Position
			expect(dist1.Magnitude).toBeLessThan(prompt1.MaxActivationDistance)

			refreshPromptVisibleSignals()
			expect(prompt1Mock).toHaveBeenCalledTimes(1)
		end)

		it("offscreen prompt shouldn't be shown", function()
			prompt1.RequiresLineOfSight = false
			part1.Position = Vector3.new(500, 0, -5)
			PlayerHelper.WaitNFrames(1)
			expect(PlayerHelper.IsPartOnscreen(part1)).toBe(false)

			refreshPromptVisibleSignals()
			expect(prompt1Mock).never.toHaveBeenCalled()
		end)

		it("blocked prompt with .RequiresLineOfSight=true shouldn't be shown", function()
			prompt1.RequiresLineOfSight = true
			part1.Position = Vector3.new(0, 0, -10)
			PlayerHelper.WaitNFrames(1)
			expect(PlayerHelper.IsPartOnscreen(part1)).toBe(true)

			prompt1.MaxActivationDistance = 15
			local dist1 = part1.Position - PlayerHelper.hrp.Position
			expect(dist1.Magnitude).toBeLessThan(prompt1.MaxActivationDistance)

			refreshPromptVisibleSignals()
			expect(prompt1Mock).toHaveBeenCalledTimes(1)

			local blockerPart = PlayerHelper.AddInstance("Part")
			blockerPart.Shape = Enum.PartType.Block
			blockerPart.Size = Vector3.new(10,10,2)
			blockerPart.Position = Vector3.new(0, 0, -5)
			blockerPart.Anchored = true
			PlayerHelper.WaitNFrames(1)

			refreshPromptVisibleSignals()
			-- Prompt shouldn't be shown because Line of Sight is blocked.
			expect(prompt1Mock).never.toHaveBeenCalled()

			prompt1.RequiresLineOfSight = false
			refreshPromptVisibleSignals()
			-- Now, the prompt *should* be shown because Line of Sight isn't required.
			expect(prompt1Mock).toHaveBeenCalledTimes(1)

			blockerPart:Destroy()
		end)
	end)

	describe("Exclusivity", function()
		local part1, part2, prompt1, prompt2
		local prompt1Mock, prompt1Fn = jest.fn()
		local prompt2Mock, prompt2Fn = jest.fn()

		beforeAll(function()
			part1 = makePartWithPrompt{Position=Vector3.new(5,0,-5)}
			part2 = makePartWithPrompt{Position=Vector3.new(-5,0,-5)}
			prompt1 = part1.ProximityPrompt
			prompt2 = part2.ProximityPrompt
			prompt1Mock.mockClear()
			prompt2Mock.mockClear()
			prompt1.PromptShown:Connect(prompt1Fn)
			prompt2.PromptShown:Connect(prompt2Fn)
			prompt1.Enabled = true
			prompt2.Enabled = true
			prompt1.RequiresLineOfSight = false
			prompt2.RequiresLineOfSight = false

			PlayerHelper.WaitNFrames(2)
		end)

		afterAll(function()
			PlayerHelper.CleanUpAfterTest()
		end)

		local function refreshPromptVisibleSignals()
			prompt1.Enabled = false -- Disable prompts
			prompt2.Enabled = false
			PlayerHelper.WaitNFrames(1) -- wait for onHeartbeat()

			prompt1Mock.mockClear()
			prompt2Mock.mockClear() -- Reset counters

			prompt1.Enabled = true -- Enable prompts
			prompt2.Enabled = true
			PlayerHelper.WaitNFrames(1) -- Wait for onHeartbeat()
		end

		it("testing context should be set up correctly", function()
			expect(PlayerHelper.hrp).never.toBeNil()

			-- Both parts should be onscreen
			expect(PlayerHelper.IsPartOnscreen(part1)).toBe(true)
			expect(PlayerHelper.IsPartOnscreen(part2)).toBe(true)

			-- Both parts should be within activation distance
			prompt1.MaxActivationDistance = 10
			prompt2.MaxActivationDistance = 10
			local dist1 = part1.Position - PlayerHelper.hrp.Position
			local dist2 = part2.Position - PlayerHelper.hrp.Position

			expect(dist1.Magnitude).toBeLessThan(prompt1.MaxActivationDistance)
			expect(dist2.Magnitude).toBeLessThan(prompt2.MaxActivationDistance)
		end)

		it("should only show 1 prompt for Exclusivity = OneGlobally", function()
			prompt1.Exclusivity = Enum.ProximityPromptExclusivity.OneGlobally
			prompt2.Exclusivity = Enum.ProximityPromptExclusivity.OneGlobally

			refreshPromptVisibleSignals()

			-- Only 1 prompt should be shown, even though there are two in view.
			expect(#prompt1Mock.mock.calls + #prompt2Mock.mock.calls).toBe(1)
		end)

		it("should only show 1 prompt for Exclusivity = OnePerButton", function()
			prompt1.Exclusivity = Enum.ProximityPromptExclusivity.OnePerButton
			prompt2.Exclusivity = Enum.ProximityPromptExclusivity.OnePerButton
			prompt1.KeyboardKeyCode = Enum.KeyCode.A
			prompt2.KeyboardKeyCode = Enum.KeyCode.A

			refreshPromptVisibleSignals()

			-- Only 1 prompt should be shown, even though there are two in view.
			expect(#prompt1Mock.mock.calls + #prompt2Mock.mock.calls).toBe(1)
		end)

		it("should show 2 prompts for Exclusivity = OnePerButton and different keycodes", function()
			prompt1.Exclusivity = Enum.ProximityPromptExclusivity.OnePerButton
			prompt2.Exclusivity = Enum.ProximityPromptExclusivity.OnePerButton
			prompt1.KeyboardKeyCode = Enum.KeyCode.A
			prompt2.KeyboardKeyCode = Enum.KeyCode.B

			refreshPromptVisibleSignals()

			-- Both prompts should be shown
			expect(prompt1Mock).toHaveBeenCalledTimes(1)
			expect(prompt2Mock).toHaveBeenCalledTimes(1)
		end)

		it("should show 2 prompts for Exclusivity = AlwaysShow and same keycodes", function()
			prompt1.Exclusivity = Enum.ProximityPromptExclusivity.AlwaysShow
			prompt2.Exclusivity = Enum.ProximityPromptExclusivity.AlwaysShow
			prompt1.KeyboardKeyCode = Enum.KeyCode.A
			prompt2.KeyboardKeyCode = Enum.KeyCode.A

			refreshPromptVisibleSignals()

			-- Both prompts should be shown
			expect(prompt1Mock).toHaveBeenCalledTimes(1)
			expect(prompt2Mock).toHaveBeenCalledTimes(1)
		end)
	end)

	describe("Max Prompts Visible", function()
		local part1, part2, prompt1, prompt2
		local prompt1Mock, prompt1Fn = jest.fn()
		local prompt2Mock, prompt2Fn = jest.fn()
		local promptUIs, promptGuiConnection

		beforeAll(function()
			part1 = makePartWithPrompt{Position=Vector3.new(5,0,-5)}
			part2 = makePartWithPrompt{Position=Vector3.new(-5,0,-5)}
			prompt1 = part1.ProximityPrompt
			prompt2 = part2.ProximityPrompt
			jest.clearAllMocks()
			prompt1.PromptShown:Connect(prompt1Fn)
			prompt2.PromptShown:Connect(prompt2Fn)
			prompt1.Enabled = true
			prompt2.Enabled = true
			prompt1.RequiresLineOfSight = false
			prompt2.RequiresLineOfSight = false
			prompt1.MaxActivationDistance = 15
			prompt2.MaxActivationDistance = 15
			prompt1.Exclusivity = Enum.ProximityPromptExclusivity.AlwaysShow
			prompt2.Exclusivity = Enum.ProximityPromptExclusivity.AlwaysShow

			promptUIs = {}
			local promptScreenGui = PlayerHelper.PlayerGui:WaitForChild("ProximityPrompts", 10)
			promptGuiConnection = promptScreenGui.ChildAdded:Connect(function(child)
				table.insert(promptUIs, child)
			end)

			PlayerHelper.WaitNFrames(2)
		end)

		afterAll(function()
			PlayerHelper.CleanUpAfterTest()
			promptGuiConnection:Disconnect()
		end)

		local function refreshPromptVisibleSignals()
			prompt1.Enabled = false -- Disable prompts
			prompt2.Enabled = false
			PlayerHelper.WaitNFrames(1) -- wait for onHeartbeat()

			jest.clearAllMocks() -- Reset counters
			promptUIs = {}

			prompt1.Enabled = true -- Enable prompts
			prompt2.Enabled = true
			PlayerHelper.WaitNFrames(1) -- Wait for onHeartbeat()
		end

		it("testing context should be set up correctly", function()
			expect(PlayerHelper.hrp).never.toBeNil()

			-- Both parts should be onscreen
			expect(PlayerHelper.IsPartOnscreen(part1)).toBe(true)
			expect(PlayerHelper.IsPartOnscreen(part2)).toBe(true)

			-- Both parts should be within activation distance
			local dist1 = part1.Position - PlayerHelper.hrp.Position
			local dist2 = part2.Position - PlayerHelper.hrp.Position
			expect(dist1.Magnitude).toBeLessThan(prompt1.MaxActivationDistance)
			expect(dist2.Magnitude).toBeLessThan(prompt2.MaxActivationDistance)
		end)

		it("should only show 1 prompt if MaxPromptsVisible=1 but there are 2 prompts", function()
			refreshPromptVisibleSignals()
			expect(#prompt1Mock.mock.calls + #prompt2Mock.mock.calls).toBe(2)

			ProximityPromptService.MaxPromptsVisible = 1
			refreshPromptVisibleSignals()
			-- Only 1 prompt should be shown now
			expect(#prompt1Mock.mock.calls + #prompt2Mock.mock.calls).toBe(1)

			PlayerHelper.WaitWallTime(0.25)
			expect(#promptUIs).toBe(1) -- Check actual number of default UIs

			PlayerHelper.WaitNFrames(1)
			ProximityPromptService.MaxPromptsVisible = 16 -- reset to original
		end)
	end)
end
