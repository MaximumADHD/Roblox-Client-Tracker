return function()
	local Plugin = script.Parent.Parent
	local UILibrary = require(Plugin.UILibrary)

	local GetFFlagMigrateIkSolve = require(Plugin.LuaFlags.GetFFlagMigrateIkSolve)

	local Workspace = game:GetService("Workspace")
	local PhysicsService = game:GetService("PhysicsService")
	if GetFFlagMigrateIkSolve() then
		-- Enforce that PhysicsService is no longer a dependency
		PhysicsService = nil
	end

	local makeSpider = require(Plugin.RhodiumTests.makeSpider)
	local TestHelpers = require(Plugin.RhodiumTests.TestHelpers)
	local TestPaths = require(Plugin.RhodiumTests.TestPaths)

	local runTest = TestHelpers.runTest

	local LoadAnimationData = require(Plugin.Src.Thunks.LoadAnimationData)
	local SetRootInstance = require(Plugin.Src.Actions.SetRootInstance)
	local AnimationData = require(Plugin.Src.Util.AnimationData)
	local ToggleIKEnabled = require(Plugin.Src.Thunks.ToggleIKEnabled)
	local RigUtils = require(Plugin.Src.Util.RigUtils)
	local Constants = require(Plugin.Src.Util.Constants)
	local SetMotorData = require(Plugin.Src.Actions.SetMotorData)
	local SetAnimationData = require(Plugin.Src.Actions.SetAnimationData)
	local SetSelectedTracks = require(Plugin.Src.Actions.SetSelectedTracks)
	local SetIKMode = require(Plugin.Src.Actions.SetIKMode)

	local MathUtil = UILibrary.Util.MathUtils

	local function setupInstance(store, instance)
		expect(instance).to.be.ok()

		store:dispatch(SetRootInstance(instance))
		store:dispatch(LoadAnimationData(AnimationData.newRigAnimation("Test")))
		TestHelpers.delay()
	end

	local function cleanupInstance(store, instance)
		TestHelpers:delay()
		store:dispatch(SetRootInstance(nil))
		store:dispatch(SetAnimationData(nil))
		TestHelpers:delay()

		instance:Destroy()
	end

	local function openIKWindow(test)
		local container = test:getContainer()

		local ikButton = TestPaths.getIKButton(container)
		TestHelpers.clickInstance(ikButton)

		local ikDockWidget = test:getSubWindow(1)
		expect(ikDockWidget).to.be.ok()

		local enableButton = TestPaths.getIKEnableButton(ikDockWidget)
		expect(enableButton).to.be.ok()
		TestHelpers.clickInstance(enableButton)

		return ikDockWidget
	end

	local function closeIKWindow(test)
		local ikDockWidget = test:getSubWindow(1)
		local enableButton = TestPaths.getIKEnableButton(ikDockWidget)
		TestHelpers.clickInstance(enableButton)
	end

	it("ik button should appear for valid R15 rig", function()
		runTest(function(test)
			local store = test:getStore()
			local container = test:getContainer()

			TestHelpers.loadAnimation(store, AnimationData.newRigAnimation("Test"))

			local ikButton = TestPaths.getIKButton(container)
			expect(ikButton).to.be.ok()
		end)
	end)

	it("ik button should appear for a custom rig with constraints", function()
		runTest(function(test)
			local store = test:getStore()
			local container = test:getContainer()

			local spider = makeSpider()
			setupInstance(store, spider)

			local ikButton = TestPaths.getIKButton(container)
			expect(ikButton).to.be.ok()

			cleanupInstance(store, spider)
		end)
	end)

	it("ik button should not appear for invalid rig", function()
		runTest(function(test)
			local store = test:getStore()
			local container = test:getContainer()

			local model = Instance.new("Model", game.Workspace)
			local root = Instance.new("Part", model)
			root.Name = "Root"
			local part = Instance.new("Part", model)
			local motor = Instance.new("Motor6D")
			motor.Part0 = root
			motor.Part1 = part
			motor.Parent = part
			Instance.new("AnimationController", model)

			setupInstance(store, model)
			local ikButton = TestPaths.getTrackList(container).SummaryTrack:FindFirstChild("IKButton")
			expect(ikButton).never.to.be.ok()

			cleanupInstance(store, model)
		end)
	end)

	it("R15 should have IK Mode Controls", function()
		runTest(function(test)
			local store = test:getStore()
			TestHelpers.loadAnimation(store, AnimationData.newRigAnimation("Test"))

			local ikDockWidget = openIKWindow(test)

			local ikWindow = TestPaths.getIKWindow(ikDockWidget)
			local ikModeControl = ikWindow:WaitForChild("IKModeControls")
			expect(ikModeControl).to.be.ok()

			closeIKWindow(test)
		end)
	end)

	it("Custom rig should not have IK Mode Controls", function()
		runTest(function(test)
			local store = test:getStore()

			local spider = makeSpider()
			setupInstance(store, spider)

			local ikDockWidget = openIKWindow(test)

			local ikWindow = TestPaths.getIKWindow(ikDockWidget)
			local ikModeControl = ikWindow:FindFirstChild("IKModeControls")
			expect(ikModeControl).never.to.be.ok()

			closeIKWindow(test)

			cleanupInstance(store, spider)
		end)
	end)

	it("selecting a joint in tree view should select track in editor", function()
		runTest(function(test)
			local store = test:getStore()

			TestHelpers.loadAnimation(store, AnimationData.newRigAnimation("Test"))

			local ikDockWidget = openIKWindow(test)
			local lowerTorsoJoint = TestPaths.getTreeViewJoint(ikDockWidget, "Node-1")
			TestHelpers.clickInstance(lowerTorsoJoint)

			local status = store:getState().Status
			expect(status.SelectedTracks[1]).to.equal("LowerTorso")
		end)
	end)

	it("should be able to activate IK from window", function()
		runTest(function(test)
			local store = test:getStore()

			TestHelpers.loadAnimation(store, AnimationData.newRigAnimation("Test"))

			openIKWindow(test)
			local status = store:getState().Status
			expect(status.IKEnabled).to.equal(true)
		end)
	end)

	it("should be able to deactivate IK from window", function()
		runTest(function(test)
			local store = test:getStore()

			TestHelpers.loadAnimation(store, AnimationData.newRigAnimation("Test"))

			openIKWindow(test)
			closeIKWindow(test)

			local status = store:getState().Status
			expect(status.IKEnabled).to.equal(false)
		end)
	end)

	it("clicking a pin on a joint should toggle that part pinned", function()
		runTest(function(test)
			local store = test:getStore()

			local dummy = Workspace.Dummy
			TestHelpers.loadAnimation(store, AnimationData.newRigAnimation("Test"))

			local ikDockWidget = openIKWindow(test)
			store:dispatch(SetIKMode(Constants.IK_MODE.FullBody))
			local pin = TestPaths.getTreeViewJointPin(ikDockWidget, "Node-1")
			TestHelpers.clickInstance(pin)

			local status = store:getState().Status
			local pinnedParts = status.PinnedParts
			expect(pinnedParts[dummy.LowerTorso]).to.equal(true)

			TestHelpers.clickInstance(pin)

			status = store:getState().Status
			pinnedParts = status.PinnedParts
			expect(pinnedParts[dummy.LowerTorso]).to.equal(false)
		end)
	end)

	it("should manipulate proper chains for BodyPart mode", function()
		runTest(function(test)
			local store = test:getStore()

			local dummy = Workspace.Dummy
			TestHelpers.loadAnimation(store, AnimationData.newRigAnimation("Test"))

			store:dispatch(ToggleIKEnabled())
			TestHelpers:delay()

			store:dispatch(SetIKMode(Constants.IK_MODE.BodyPart))
			TestHelpers:delay()

			store:dispatch(SetSelectedTracks({"LeftHand"}))
			TestHelpers:delay()

			store:dispatch(SetMotorData(RigUtils.ikDragStart(dummy, dummy.LeftHand, true)))
			TestHelpers:delay()

			expect(game:GetService("CoreGui"):FindFirstChild("Adornee")).to.be.ok()

			local status = store:getState().Status
			local motorData = status.MotorData

			for _, child in ipairs(dummy:GetChildren()) do
				if child:IsA("Part") then
					if child.Name == "HumanoidRootPart" or child.Name == "UpperTorso" or child.Name == "LowerTorso" then
						expect(child.Anchored).to.equal(true)
					else
						expect(child.Anchored).to.equal(false)
					end
				end
			end

			if GetFFlagMigrateIkSolve() then
				Workspace:IKMoveTo(dummy.LeftHand, CFrame.new(), 0.5, 0.5, Enum.IKCollisionsMode.NoCollisions)
			else
				PhysicsService:ikSolve(dummy.LeftHand, CFrame.new(), 0.5, 0.5)
			end
			TestHelpers:delay()

			RigUtils.ikDragEnd(dummy, motorData)
			TestHelpers:delay()

			store:dispatch(SetSelectedTracks({"LowerTorso"}))
			TestHelpers:delay()

			store:dispatch(SetMotorData(RigUtils.ikDragStart(dummy, dummy.LowerTorso, true)))
			TestHelpers:delay()

			status = store:getState().Status
			motorData = status.MotorData

			for _, child in ipairs(dummy:GetChildren()) do
				if child:IsA("Part") then
					if child.Name == "HumanoidRootPart" or child.Name == "LeftFoot" or child.Name == "RightFoot" then
						expect(child.Anchored).to.equal(true)
					else
						expect(child.Anchored).to.equal(false)
					end
				end
			end

			if GetFFlagMigrateIkSolve() then
				Workspace:IKMoveTo(dummy.LowerTorso, CFrame.new(), 0.5, 0.5, Enum.IKCollisionsMode.NoCollisions)
			else
				PhysicsService:ikSolve(dummy.LowerTorso, CFrame.new(), 0.5, 0.5)
			end
			TestHelpers:delay()

			RigUtils.ikDragEnd(dummy, motorData)
			TestHelpers:delay()
		end)
	end)

	it("StartingPose should be saved for an R15", function()
		runTest(function(test)
			local store = test:getStore()

			local dummy = Workspace.Dummy
			TestHelpers.loadAnimation(store, AnimationData.newRigAnimation("Test"))
			TestHelpers:delay()

			local state = store:getState()
			local startingPose = state.Status.StartingPose
			for _, part in ipairs(dummy:GetChildren()) do
				if part:IsA("BasePart") and part.Name ~= "HumanoidRootPart" then
					expect(startingPose[part.Name]).to.equal(part.CFrame)
				end
			end
		end)
	end)

	it("Rig Attachment Axes should be adjusted for R15", function()
		runTest(function(test)
			local store = test:getStore()

			local dummy = Workspace.Dummy
			TestHelpers.loadAnimation(store, AnimationData.newRigAnimation("Test"))

			store:dispatch(ToggleIKEnabled())
			TestHelpers:delay()

			store:dispatch(SetIKMode(Constants.IK_MODE.BodyPart))
			TestHelpers:delay()

			local startingPose = store:getState().Status.StartingPose

			local oldAxis = dummy.LeftHand.LeftWristRigAttachment.Axis
			store:dispatch(SetMotorData(RigUtils.ikDragStart(dummy, dummy.LeftHand, true, startingPose, {})))
			TestHelpers:delay()

			local newAxis = dummy.LeftHand.LeftWristRigAttachment.Axis
			expect(MathUtil:fuzzyEq(oldAxis.X, newAxis.X)).to.equal(false)
			expect(MathUtil:fuzzyEq(oldAxis.Y, newAxis.Y)).to.equal(false)

			local status = store:getState().Status
			local motorData = status.MotorData

			RigUtils.ikDragEnd(dummy, motorData)
			TestHelpers:delay()

			local originalAxis = dummy.LeftHand.LeftWristRigAttachment.Axis
			expect(MathUtil:fuzzyEq(oldAxis.X, originalAxis.X)).to.equal(true)
			expect(MathUtil:fuzzyEq(oldAxis.Y, originalAxis.Y)).to.equal(true)
			expect(MathUtil:fuzzyEq(oldAxis.Z, originalAxis.Z)).to.equal(true)
		end)
	end)

	it("motors and constraints should be properly swapped during manipulation", function()
		runTest(function(test)
			local store = test:getStore()

			local spider = makeSpider()
			setupInstance(store, spider)

			store:dispatch(ToggleIKEnabled())
			TestHelpers:delay()

			-- cache old motor data before it gets deleted
			local _, nameToMotor = RigUtils.getRigInfo(spider)
			local oldMotorMap = {}
			for _, motor in pairs(nameToMotor) do
				oldMotorMap[motor.Name] = {
					p0 = motor.Part0,
					p1 = motor.Part1,
				}
			end

			store:dispatch(SetMotorData(RigUtils.ikDragStart(spider, spider.Tip3, false, nil, {
				[spider.Tip1] = true,
				[spider.Tip2] = true,
			})))
			TestHelpers:delay()

			local activeConstraints = {
				["UpperLeg1Constraint"] = {},
				["LowerLeg1Constraint"] = {},
				["Tip1Constraint"] = {},
				["UpperLeg2Constraint"] = {},
				["LowerLeg2Constraint"] = {},
				["Tip2Constraint"] = {},
				["UpperLeg3Constraint"] = {},
				["LowerLeg3Constraint"] = {},
				["Tip3Constraint"] = {},
			}

			local deletedMotors = {
				["UpperLeg1"] = {},
				["LowerLeg1"] = {},
				["Tip1"] = {},
				["UpperLeg2"] = {},
				["LowerLeg2"] = {},
				["Tip2"] = {},
				["UpperLeg3"] = {},
				["LowerLeg3"] = {},
				["Tip3"] = {},
				["Body"] = {},
			}

			--verify proper constraints are enabled and proper motors are deleted
			for _, child in ipairs(spider:GetChildren()) do
				if child:IsA("BallSocketConstraint") or child:IsA("HingeConstraint") then
					if activeConstraints[child.Name] then
						expect(child.Enabled).to.equal(true)
					else
						expect(child.Enabled).to.equal(false)
					end
				elseif child:IsA("Part") then
					local motor = child:FindFirstChildOfClass("Motor6D")
					if child.Name ~= "Root" then
						if deletedMotors[child.Name] then
							expect(motor).to.equal(nil)
						else
							expect(motor).to.be.ok()
						end
					end
				end
			end

			local status = store:getState().Status
			local motorData = status.MotorData

			if GetFFlagMigrateIkSolve() then
				Workspace:IKMoveTo(spider.Tip3, CFrame.new(), 0.5, 0.5, Enum.IKCollisionsMode.NoCollisions)
			else
				PhysicsService:ikSolve(spider.Tip3, CFrame.new(), 0.5, 0.5)
			end
			TestHelpers:delay()

			RigUtils.ikDragEnd(spider, motorData)
			TestHelpers:delay()

			--verify all constraints are off and motors restored properly
			for _, child in ipairs(spider:GetChildren()) do
				if child:IsA("BallSocketConstraint") or child:IsA("HingeConstraint") then
					expect(child.Enabled).to.equal(false)
				elseif child:IsA("Part") then
					local motor = child:FindFirstChildOfClass("Motor6D")
					if child.Name ~= "Root" then
						expect(motor).to.be.ok()
						expect(motor.Part0).to.equal(oldMotorMap[motor.Name].p0)
						expect(motor.Part1).to.equal(oldMotorMap[motor.Name].p1)
					end
				end
			end

			store:dispatch(ToggleIKEnabled())
			TestHelpers:delay()

			cleanupInstance(store, spider)
		end)
	end)
end