local Plugin = script.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)

local makeSettableValue = Framework.TestHelpers.makeSettableValue

local PartConverterVisuals = require(script.Parent.PartConverterVisuals)

local PartSelectionModel = require(script.Parent.PartSelectionModel)
local PartConverterUtil = require(script.Parent.PartConverterUtil)

return function()
	local function createPartSelectionModel()
		local selection = makeSettableValue({})
			local psm = PartSelectionModel.new({
				getSelection = selection.get,
				selectionChanged = selection.changed,
				getValidAndWarnings = PartConverterUtil.getValidInstancesAndWarnings,
			})
		return selection, psm
	end

	local function createMockPart(parent)
		local p = Instance.new("Part", parent)
		p.Transparency = 0
		p.Color = Color3.fromRGB(0, 0, 0)
		return p
	end

	local function verifyVisualsApplied(pcv, instance)
		local originalVisualsPerInstance = pcv:getOriginalVisualsPerInstanceRef()
		expect(instance.Transparency).to.never.equal(0)
		expect(originalVisualsPerInstance[instance]).to.be.ok()
		expect(originalVisualsPerInstance[instance].Transparency).to.equal(0)
	end

	local function verifyVisualsNotApplied(pcv, instance)
		local originalVisualsPerInstance = pcv:getOriginalVisualsPerInstanceRef()
		expect(instance.Transparency).to.equal(0)
		expect(originalVisualsPerInstance[instance]).to.never.be.ok()
	end

	local function verifyTrackingInstance(pcv, instance)
		local targetInstances = pcv:getTargetInstancesRef()
		expect(targetInstances[instance]).to.be.ok()
	end

	local function verifyNotTrackingInstance(pcv, instance)
		local targetInstances = pcv:getTargetInstancesRef()
		expect(targetInstances[instance]).to.never.be.ok()
	end

	describe("its constructor", function()
		it("should create a new instance", function()
			local pcv = PartConverterVisuals.new()
			expect(pcv).to.be.ok()
			expect(type(pcv)).to.equal("table")
			pcv:destroy()
		end)
	end)

	describe("its logic", function()
		it("should work with 1 part", function()
			local selection, psm = createPartSelectionModel()
			local pcv = PartConverterVisuals.new()
			local targetInstances = pcv:getTargetInstancesRef()
			selection.set({})

			local p = createMockPart()

			targetInstances[p] = true

			pcv:setSelectionModel(psm)

			-- p does not change as it's not selected
			verifyVisualsNotApplied(pcv, p)
			verifyTrackingInstance(pcv, p)

			-- Adding p to selection should change its visuals
			selection.set({p})
			verifyVisualsApplied(pcv, p)

			-- Deselecting p should reset its visuals
			selection.set({})
			verifyVisualsNotApplied(pcv, p)

			-- Remove the selection model from PartConverterVisuals should reset p
			selection.set({p})
			verifyVisualsApplied(pcv, p)

			pcv:setSelectionModel(nil)
			verifyVisualsNotApplied(pcv, p)
			verifyTrackingInstance(pcv, p)

			-- p is still selected, so adding the selection model back should change Transparency
			pcv:setSelectionModel(psm)
			verifyVisualsApplied(pcv, p)

			-- Finish the conversion
			-- Because a part is still selected, we've not finished completely yet
			pcv:enterCleanupMode()
			expect(pcv:hasFinished()).to.equal(false)

			-- Now that no target instances are selected, the pcv is finished with
			selection.set({})
			verifyNotTrackingInstance(pcv, p)
			expect(pcv:hasFinished()).to.equal(true)

			pcv:destroy()
			psm:destroy()
		end)

		it("should work with parts inside a model", function()
			local selection, psm = createPartSelectionModel()
			local pcv = PartConverterVisuals.new()
			local targetInstances = pcv:getTargetInstancesRef()
			selection.set({})

			local m = Instance.new("Model")
			local p1 = createMockPart(m)
			local p2 = createMockPart(m)
			local p3 = createMockPart(m)

			-- Emulate m being selected for conversion
			targetInstances[p1] = true
			targetInstances[p2] = true
			targetInstances[p3] = true

			-- Selecting the model should apply to all parts
			selection.set({m})
			pcv:setSelectionModel(psm)
			verifyVisualsApplied(pcv, p1)
			verifyVisualsApplied(pcv, p2)
			verifyVisualsApplied(pcv, p3)

			-- When selecting some of the parts, only those parts should have the transparency
			-- But all are still tracked
			selection.set({p2, p3})
			verifyTrackingInstance(pcv, p1)
			verifyTrackingInstance(pcv, p2)
			verifyTrackingInstance(pcv, p3)
			verifyVisualsNotApplied(pcv, p1)
			verifyVisualsApplied(pcv, p2)
			verifyVisualsApplied(pcv, p3)

			-- Same as above, only the selected instance gets the transparency
			selection.set({p1})
			verifyVisualsApplied(pcv, p1)
			verifyVisualsNotApplied(pcv, p2)
			verifyVisualsNotApplied(pcv, p3)

			-- Reselecting the parent model should apply to all
			selection.set({m})
			verifyVisualsApplied(pcv, p1)
			verifyVisualsApplied(pcv, p2)
			verifyVisualsApplied(pcv, p3)

			-- When conversion finishes, everything should still be tracked
			-- And visuals applied the same way
			selection.set({p2, p3})
			pcv:enterCleanupMode()
			verifyTrackingInstance(pcv, p1)
			verifyTrackingInstance(pcv, p2)
			verifyTrackingInstance(pcv, p3)
			verifyVisualsNotApplied(pcv, p1)
			verifyVisualsApplied(pcv, p2)
			verifyVisualsApplied(pcv, p3)
			expect(pcv:hasFinished()).to.equal(false)

			-- As everything is still tracked til its deselected, reselecting the model should apply transparency to all
			selection.set({m})
			verifyVisualsApplied(pcv, p1)
			verifyVisualsApplied(pcv, p2)
			verifyVisualsApplied(pcv, p3)
			expect(pcv:hasFinished()).to.equal(false)

			-- Deselecting one of the parts now conversion has finished should mean we stop tracking it
			-- But the others are unaffected
			selection.set({p2, p3})
			pcv:enterCleanupMode()
			verifyNotTrackingInstance(pcv, p1)
			verifyTrackingInstance(pcv, p2)
			verifyTrackingInstance(pcv, p3)
			verifyVisualsNotApplied(pcv, p1)
			verifyVisualsApplied(pcv, p2)
			verifyVisualsApplied(pcv, p3)
			expect(pcv:hasFinished()).to.equal(false)

			-- Reselecting parent model should not affect anything
			selection.set({m})
			verifyNotTrackingInstance(pcv, p1)
			verifyTrackingInstance(pcv, p2)
			verifyTrackingInstance(pcv, p3)
			verifyVisualsNotApplied(pcv, p1)
			verifyVisualsApplied(pcv, p2)
			verifyVisualsApplied(pcv, p3)
			expect(pcv:hasFinished()).to.equal(false)

			-- Deselecting part2 should stop tracking it
			selection.set({p3})
			verifyNotTrackingInstance(pcv, p1)
			verifyNotTrackingInstance(pcv, p2)
			verifyTrackingInstance(pcv, p3)
			verifyVisualsNotApplied(pcv, p1)
			verifyVisualsNotApplied(pcv, p2)
			verifyVisualsApplied(pcv, p3)
			expect(pcv:hasFinished()).to.equal(false)

			-- Removing the selection model should not do anything to our state
			pcv:setSelectionModel(nil)
			verifyNotTrackingInstance(pcv, p1)
			verifyNotTrackingInstance(pcv, p2)
			verifyTrackingInstance(pcv, p3)
			verifyVisualsNotApplied(pcv, p1)
			verifyVisualsNotApplied(pcv, p2)
			verifyVisualsNotApplied(pcv, p3)
			expect(pcv:hasFinished()).to.equal(false)

			-- Readding the selection model but with nothing selected should only mean we don't apply visuals
			-- Tracking state is the same
			selection.set({})
			pcv:setSelectionModel(psm)
			verifyNotTrackingInstance(pcv, p1)
			verifyNotTrackingInstance(pcv, p2)
			verifyTrackingInstance(pcv, p3)
			verifyVisualsNotApplied(pcv, p1)
			verifyVisualsNotApplied(pcv, p2)
			verifyVisualsNotApplied(pcv, p3)
			expect(pcv:hasFinished()).to.equal(false)

			-- Selecting parent model is like before: only apply visuals to the tracked element
			selection.set({m})
			verifyNotTrackingInstance(pcv, p1)
			verifyNotTrackingInstance(pcv, p2)
			verifyTrackingInstance(pcv, p3)
			verifyVisualsNotApplied(pcv, p1)
			verifyVisualsNotApplied(pcv, p2)
			verifyVisualsApplied(pcv, p3)
			expect(pcv:hasFinished()).to.equal(false)

			-- Finally deselecting all tracked instances whilst the pcv has a selection model
			-- This should mean we stop tracking everything, reset all transparencies, and mark ourself as finished
			selection.set({})
			verifyNotTrackingInstance(pcv, p1)
			verifyNotTrackingInstance(pcv, p2)
			verifyNotTrackingInstance(pcv, p3)
			verifyVisualsNotApplied(pcv, p1)
			verifyVisualsNotApplied(pcv, p2)
			verifyVisualsNotApplied(pcv, p3)
			expect(pcv:hasFinished()).to.equal(true)

			pcv:destroy()
			psm:destroy()
		end)
	end)
end
