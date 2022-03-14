local ProximityPromptService = game:GetService("ProximityPromptService")

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
		local promptShownCount, promptHiddenCount

		beforeAll(function()
			part = makePartWithPrompt{Position=Vector3.new(5,0,-5)}
			prompt = part.ProximityPrompt
			promptShownCount = 0
			promptHiddenCount = 0
			prompt.PromptShown:Connect(function(inputType)
				promptShownCount += 1
			end)
			prompt.PromptHidden:Connect(function(inputType)
				promptHiddenCount += 1
			end)
			PlayerHelper.WaitNFrames(1)

			prompt.Enabled = true
			prompt.RequiresLineOfSight = false
		end)

		afterAll(function()
			PlayerHelper.CleanUpAfterTest()
		end)

		local function refreshPromptVisibleSignals()
			promptShownCount = 0 -- Reset counters
			promptHiddenCount = 0
			PlayerHelper.WaitNFrames(2) -- Wait for onHeartbeat()
		end

		it("PromptHidden triggered on player going inside activation radius", function()
			prompt.RequiresLineOfSight = true
			prompt.Enabled = true
			part.Position = Vector3.new(0, 0, -7)
			PlayerHelper.WaitNFrames(1)
			expect(PlayerHelper.IsPartOnscreen(part)).to.equal(true)

			prompt.MaxActivationDistance = 6
			local dist = part.Position - PlayerHelper.hrp.Position
			expect(dist.Magnitude < prompt.MaxActivationDistance).to.equal(false) -- should be outside of radius

			PlayerHelper.WaitNFrames(2)

			part.Position = Vector3.new(0, 0, -5)
			expect(PlayerHelper.IsPartOnscreen(part)).to.equal(true)
			refreshPromptVisibleSignals()

			expect(promptShownCount).to.equal(1)
			expect(promptHiddenCount).to.equal(0)
		end)

		it("PromptHidden triggered on player going out of activation but still visible", function()
			prompt.RequiresLineOfSight = true
			prompt.Enabled = true
			part.Position = Vector3.new(0, 0, -5)
			PlayerHelper.WaitNFrames(1)
			expect(PlayerHelper.IsPartOnscreen(part)).to.equal(true)

			prompt.MaxActivationDistance = 6
			local dist = part.Position - PlayerHelper.hrp.Position
			expect(dist.Magnitude < prompt.MaxActivationDistance).to.equal(true) -- should be within radius

			PlayerHelper.WaitNFrames(2)

			part.Position = Vector3.new(0, 0, -7)
			refreshPromptVisibleSignals()
			expect(PlayerHelper.IsPartOnscreen(part)).to.equal(true)

			expect(promptShownCount).to.equal(0)
			expect(promptHiddenCount).to.equal(1)
		end)
	end)

	describe("PromptHidden Signal", function()
		local part, prompt
		local promptHiddenCount

		beforeAll(function()
			part = makePartWithPrompt{Position=Vector3.new(5,0,-5)}
			prompt = part.ProximityPrompt
			promptHiddenCount = 0
			prompt.PromptHidden:Connect(function(inputType)
				promptHiddenCount += 1
			end)
			PlayerHelper.WaitNFrames(1)

			prompt.Enabled = true
			prompt.RequiresLineOfSight = false
		end)

		afterAll(function()
			PlayerHelper.CleanUpAfterTest()
		end)

		local function refreshPromptVisibleSignals()
			promptHiddenCount = 0 -- Reset counter
			PlayerHelper.WaitNFrames(1) -- Wait for onHeartbeat()
		end

		it("PromptHidden triggered on going out of frame", function()
			prompt.RequiresLineOfSight = false
			prompt.Enabled = true
			part.Position = Vector3.new(0, 0, -5)
			PlayerHelper.WaitNFrames(1)
			expect(PlayerHelper.IsPartOnscreen(part)).to.equal(true)

			prompt.MaxActivationDistance = 15
			local dist = part.Position - PlayerHelper.hrp.Position
			expect(dist.Magnitude < prompt.MaxActivationDistance).to.equal(true)

			part.Position = Vector3.new(100, 0, -5)
			refreshPromptVisibleSignals()
			expect(promptHiddenCount).to.equal(1)
		end)

		it("PromptHidden triggered on line of sight blocked for .RequiresLineOfSight=true", function()
			prompt.RequiresLineOfSight = true
			prompt.Enabled = true
			part.Position = Vector3.new(0, 0, -10)
			PlayerHelper.WaitNFrames(1)
			expect(PlayerHelper.IsPartOnscreen(part)).to.equal(true)

			prompt.MaxActivationDistance = 15
			local dist = part.Position - PlayerHelper.hrp.Position
			expect(dist.Magnitude < prompt.MaxActivationDistance).to.equal(true)

			local blockerPart = PlayerHelper.AddInstance("Part")
			blockerPart.Shape = Enum.PartType.Block
			blockerPart.Size = Vector3.new(10,10,2)
			blockerPart.Position = Vector3.new(0, 0, -5)
			blockerPart.Anchored = true

			refreshPromptVisibleSignals()
			expect(promptHiddenCount).to.equal(1)
		end)

		it("PromptHidden not triggered on line of sight blocked for .RequiresLineOfSight=false", function()
			prompt.RequiresLineOfSight = false
			prompt.Enabled = true
			part.Position = Vector3.new(0, 0, -10)
			PlayerHelper.WaitNFrames(1)
			expect(PlayerHelper.IsPartOnscreen(part)).to.equal(true)

			prompt.MaxActivationDistance = 15
			local dist = part.Position - PlayerHelper.hrp.Position
			expect(dist.Magnitude < prompt.MaxActivationDistance).to.equal(true)

			local blockerPart = PlayerHelper.AddInstance("Part")
			blockerPart.Shape = Enum.PartType.Block
			blockerPart.Size = Vector3.new(10,10,2)
			blockerPart.Position = Vector3.new(0, 0, -5)
			blockerPart.Anchored = true

			refreshPromptVisibleSignals()
			expect(promptHiddenCount).to.equal(0)
		end)

		it("PromptHidden triggered when setting .Enabled=false", function()
			prompt.RequiresLineOfSight = false
			prompt.Enabled = true
			part.Position = Vector3.new(0, 0, -5)
			PlayerHelper.WaitNFrames(1)
			expect(PlayerHelper.IsPartOnscreen(part)).to.equal(true)

			prompt.MaxActivationDistance = 15
			local dist = part.Position - PlayerHelper.hrp.Position
			expect(dist.Magnitude < prompt.MaxActivationDistance).to.equal(true)

			prompt.Enabled = false
			refreshPromptVisibleSignals()
			expect(promptHiddenCount).to.equal(1)
		end)

		it("PromptHidden triggered when setting ProximityPromptService.Enabled=false", function()
			prompt.RequiresLineOfSight = false
			prompt.Enabled = true
			part.Position = Vector3.new(0, 0, -5)
			PlayerHelper.WaitNFrames(1)
			expect(PlayerHelper.IsPartOnscreen(part)).to.equal(true)

			prompt.MaxActivationDistance = 15
			local dist = part.Position - PlayerHelper.hrp.Position
			expect(dist.Magnitude < prompt.MaxActivationDistance).to.equal(true)

			ProximityPromptService.Enabled = false
			refreshPromptVisibleSignals()
			expect(promptHiddenCount).to.equal(1)

			PlayerHelper.WaitNFrames(1)
			ProximityPromptService.Enabled = true -- Re-enable prompts for other tests.
		end)
	end)

	describe("Enabled/Disabled", function()
		local part1, prompt1
		local prompt1ShownCount
		local promptUIs, promptGuiConnection

		beforeAll(function()
			part1 = makePartWithPrompt{Position=Vector3.new(5,0,-5)}
			prompt1 = part1.ProximityPrompt
			prompt1ShownCount = 0
			prompt1.PromptShown:Connect(function(inputType)
				prompt1ShownCount += 1
			end)
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
	
			prompt1ShownCount = 0 -- Reset counter
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
			expect(PlayerHelper.IsPartOnscreen(part1)).to.equal(true)

			prompt1.MaxActivationDistance = 15
			local dist1 = part1.Position - PlayerHelper.hrp.Position
			expect(dist1.Magnitude < prompt1.MaxActivationDistance).to.equal(true)

			refreshPromptVisibleSignals()
			expect(prompt1ShownCount).to.equal(1)
			expect(#promptUIs).to.equal(1)

			prompt1.Style = Enum.ProximityPromptStyle.Custom
			PlayerHelper.WaitWallTime(0.25)
			refreshPromptVisibleSignals()
			expect(prompt1ShownCount).to.equal(1)
			expect(#promptUIs).to.equal(0) -- No UI should be shown!
			prompt1.Style = Enum.ProximityPromptStyle.Default -- reset for other tests.
		end)

		it("enabled prompt should be shown", function()
			prompt1.RequiresLineOfSight = false
			prompt1.Enabled = true
			part1.Position = Vector3.new(0, 0, -5)
			PlayerHelper.WaitNFrames(1)
			expect(PlayerHelper.IsPartOnscreen(part1)).to.equal(true)

			prompt1.MaxActivationDistance = 15
			local dist1 = part1.Position - PlayerHelper.hrp.Position
			expect(dist1.Magnitude < prompt1.MaxActivationDistance).to.equal(true)

			refreshPromptVisibleSignals()
			expect(prompt1ShownCount).to.equal(1)
		end)

		it("disabled prompt shouldn't be shown", function()
			prompt1.RequiresLineOfSight = false
			prompt1.Enabled = false
			part1.Position = Vector3.new(0, 0, -5)
			PlayerHelper.WaitNFrames(1)
			expect(PlayerHelper.IsPartOnscreen(part1)).to.equal(true)

			prompt1.MaxActivationDistance = 15
			local dist1 = part1.Position - PlayerHelper.hrp.Position
			expect(dist1.Magnitude < prompt1.MaxActivationDistance).to.equal(true)

			refreshPromptVisibleSignals()
			expect(prompt1ShownCount).to.equal(0)
		end)

		it("enabled prompt with disabled ProximityPromptService shouldn't be shown", function()
			prompt1.RequiresLineOfSight = false
			prompt1.Enabled = true
			part1.Position = Vector3.new(0, 0, -5)
			PlayerHelper.WaitNFrames(1)
			expect(PlayerHelper.IsPartOnscreen(part1)).to.equal(true)

			prompt1.MaxActivationDistance = 15
			local dist1 = part1.Position - PlayerHelper.hrp.Position
			expect(dist1.Magnitude < prompt1.MaxActivationDistance).to.equal(true)

			ProximityPromptService.Enabled = false

			PlayerHelper.WaitNFrames(2)
			prompt1ShownCount = 0
			PlayerHelper.WaitNFrames(2)
			expect(prompt1ShownCount).to.equal(0)

			ProximityPromptService.Enabled = true
		end)
	end)

	describe("Line Of Sight", function()
		local part1, prompt1
		local prompt1ShownCount

		beforeAll(function()
			part1 = makePartWithPrompt{Position=Vector3.new(5,0,-5)}
			prompt1 = part1.ProximityPrompt
			prompt1ShownCount = 0
			prompt1.PromptShown:Connect(function(inputType)
				prompt1ShownCount += 1
			end)
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
	
			prompt1ShownCount = 0 -- Reset counter
	
			prompt1.Enabled = true -- Enable prompts
			PlayerHelper.WaitNFrames(2) -- Wait for onHeartbeat()
		end

		it("unblocked prompt with .RequiresLineOfSight=true should be shown", function()
			prompt1.RequiresLineOfSight = true
			part1.Position = Vector3.new(0, 0, -5)
			PlayerHelper.WaitNFrames(1)
			expect(PlayerHelper.IsPartOnscreen(part1)).to.equal(true)

			prompt1.MaxActivationDistance = 15
			local dist1 = part1.Position - PlayerHelper.hrp.Position
			expect(dist1.Magnitude < prompt1.MaxActivationDistance).to.equal(true)

			refreshPromptVisibleSignals()
			expect(prompt1ShownCount).to.equal(1)
		end)

		it("offscreen prompt shouldn't be shown", function()
			prompt1.RequiresLineOfSight = false
			part1.Position = Vector3.new(500, 0, -5)
			PlayerHelper.WaitNFrames(1)
			expect(PlayerHelper.IsPartOnscreen(part1)).to.equal(false)

			refreshPromptVisibleSignals()
			expect(prompt1ShownCount).to.equal(0)
		end)

		it("blocked prompt with .RequiresLineOfSight=true shouldn't be shown", function()
			prompt1.RequiresLineOfSight = true
			part1.Position = Vector3.new(0, 0, -10)
			PlayerHelper.WaitNFrames(1)
			expect(PlayerHelper.IsPartOnscreen(part1)).to.equal(true)

			prompt1.MaxActivationDistance = 15
			local dist1 = part1.Position - PlayerHelper.hrp.Position
			expect(dist1.Magnitude < prompt1.MaxActivationDistance).to.equal(true)

			refreshPromptVisibleSignals()
			expect(prompt1ShownCount).to.equal(1)

			local blockerPart = PlayerHelper.AddInstance("Part")
			blockerPart.Shape = Enum.PartType.Block
			blockerPart.Size = Vector3.new(10,10,2)
			blockerPart.Position = Vector3.new(0, 0, -5)
			blockerPart.Anchored = true
			PlayerHelper.WaitNFrames(1)

			refreshPromptVisibleSignals()
			-- Prompt shouldn't be shown because Line of Sight is blocked.
			expect(prompt1ShownCount).to.equal(0)

			prompt1.RequiresLineOfSight = false
			refreshPromptVisibleSignals()
			-- Now, the prompt *should* be shown because Line of Sight isn't required.
			expect(prompt1ShownCount).to.equal(1)

			blockerPart:Destroy()
		end)
	end)

	describe("Exclusivity", function()
		local part1, part2, prompt1, prompt2
		local prompt1ShownCount, prompt2ShownCount

		beforeAll(function()
			part1 = makePartWithPrompt{Position=Vector3.new(5,0,-5)}
			part2 = makePartWithPrompt{Position=Vector3.new(-5,0,-5)}
			prompt1 = part1.ProximityPrompt
			prompt2 = part2.ProximityPrompt
			prompt1ShownCount = 0
			prompt2ShownCount = 0
			prompt1.PromptShown:Connect(function(inputType)
				prompt1ShownCount += 1
			 end)
			prompt2.PromptShown:Connect(function(inputType)
				prompt2ShownCount += 1
			 end)
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
	
			prompt1ShownCount = 0
			prompt2ShownCount = 0 -- Reset counters
	
			prompt1.Enabled = true -- Enable prompts
			prompt2.Enabled = true
			PlayerHelper.WaitNFrames(1) -- Wait for onHeartbeat()
		end

		it("testing context should be set up correctly", function()
			expect(PlayerHelper.hrp).to.be.ok()
			
			-- Both parts should be onscreen
			expect(PlayerHelper.IsPartOnscreen(part1)).to.equal(true)
			expect(PlayerHelper.IsPartOnscreen(part2)).to.equal(true)

			-- Both parts should be within activation distance
			prompt1.MaxActivationDistance = 10
			prompt2.MaxActivationDistance = 10
			local dist1 = part1.Position - PlayerHelper.hrp.Position
			local dist2 = part2.Position - PlayerHelper.hrp.Position

			expect(dist1.Magnitude < prompt1.MaxActivationDistance).to.equal(true)
			expect(dist2.Magnitude < prompt2.MaxActivationDistance).to.equal(true)
		end)
		
		it("should only show 1 prompt for Exclusivity = OneGlobally", function()
			prompt1.Exclusivity = Enum.ProximityPromptExclusivity.OneGlobally
			prompt2.Exclusivity = Enum.ProximityPromptExclusivity.OneGlobally

			refreshPromptVisibleSignals()

			-- Only 1 prompt should be shown, even though there are two in view.
			local numPromptsShown = prompt1ShownCount + prompt2ShownCount
			expect(numPromptsShown).to.equal(1)
		end)
		
		it("should only show 1 prompt for Exclusivity = OnePerButton", function()
			prompt1.Exclusivity = Enum.ProximityPromptExclusivity.OnePerButton
			prompt2.Exclusivity = Enum.ProximityPromptExclusivity.OnePerButton
			prompt1.KeyboardKeyCode = Enum.KeyCode.A
			prompt2.KeyboardKeyCode = Enum.KeyCode.A

			refreshPromptVisibleSignals()

			-- Only 1 prompt should be shown, even though there are two in view.
			local numPromptsShown = prompt1ShownCount + prompt2ShownCount
			expect(numPromptsShown).to.equal(1)
		end)

		it("should show 2 prompts for Exclusivity = OnePerButton and different keycodes", function()
			prompt1.Exclusivity = Enum.ProximityPromptExclusivity.OnePerButton
			prompt2.Exclusivity = Enum.ProximityPromptExclusivity.OnePerButton
			prompt1.KeyboardKeyCode = Enum.KeyCode.A
			prompt2.KeyboardKeyCode = Enum.KeyCode.B

			refreshPromptVisibleSignals()

			-- Both prompts should be shown
			expect(prompt1ShownCount).to.equal(1)
			expect(prompt2ShownCount).to.equal(1)
		end)

		it("should show 2 prompts for Exclusivity = AlwaysShow and same keycodes", function()
			prompt1.Exclusivity = Enum.ProximityPromptExclusivity.AlwaysShow
			prompt2.Exclusivity = Enum.ProximityPromptExclusivity.AlwaysShow
			prompt1.KeyboardKeyCode = Enum.KeyCode.A
			prompt2.KeyboardKeyCode = Enum.KeyCode.A

			refreshPromptVisibleSignals()

			-- Both prompts should be shown
			expect(prompt1ShownCount).to.equal(1)
			expect(prompt2ShownCount).to.equal(1)
		end)


		
	end)
	
	describe("Max Prompts Visible", function()
		local part1, part2, prompt1, prompt2
		local prompt1ShownCount, prompt2ShownCount
		local promptUIs, promptGuiConnection

		beforeAll(function()
			part1 = makePartWithPrompt{Position=Vector3.new(5,0,-5)}
			part2 = makePartWithPrompt{Position=Vector3.new(-5,0,-5)}
			prompt1 = part1.ProximityPrompt
			prompt2 = part2.ProximityPrompt
			prompt1ShownCount = 0
			prompt2ShownCount = 0
			prompt1.PromptShown:Connect(function(inputType)
				prompt1ShownCount += 1
			end)
			prompt2.PromptShown:Connect(function(inputType)
				prompt2ShownCount += 1
			end)
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
	
			prompt1ShownCount = 0
			prompt2ShownCount = 0 -- Reset counters
			promptUIs = {}
	
			prompt1.Enabled = true -- Enable prompts
			prompt2.Enabled = true
			PlayerHelper.WaitNFrames(1) -- Wait for onHeartbeat()
		end

		it("testing context should be set up correctly", function()
			expect(PlayerHelper.hrp).to.be.ok()
			
			-- Both parts should be onscreen
			expect(PlayerHelper.IsPartOnscreen(part1)).to.equal(true)
			expect(PlayerHelper.IsPartOnscreen(part2)).to.equal(true)

			-- Both parts should be within activation distance
			local dist1 = part1.Position - PlayerHelper.hrp.Position
			local dist2 = part2.Position - PlayerHelper.hrp.Position
			expect(dist1.Magnitude < prompt1.MaxActivationDistance).to.equal(true)
			expect(dist2.Magnitude < prompt2.MaxActivationDistance).to.equal(true)
		end)

		it("should only show 1 prompt if MaxPromptsVisible=1 but there are 2 prompts", function()
			refreshPromptVisibleSignals()
			expect(prompt1ShownCount + prompt2ShownCount).to.equal(2)

			ProximityPromptService.MaxPromptsVisible = 1
			refreshPromptVisibleSignals()
			-- Only 1 prompt should be shown now
			expect(prompt1ShownCount + prompt2ShownCount).to.equal(1)

			PlayerHelper.WaitWallTime(0.25)
			expect(#promptUIs).to.equal(1) -- Check actual number of default UIs

			PlayerHelper.WaitNFrames(1)
			ProximityPromptService.MaxPromptsVisible = 16 -- reset to original
		end)


	end)
end
