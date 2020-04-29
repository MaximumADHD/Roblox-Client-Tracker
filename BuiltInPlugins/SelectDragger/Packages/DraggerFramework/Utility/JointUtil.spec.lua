local Framework = script.Parent.Parent
local JointUtil = require(Framework.Utility.JointUtil)

return function()
	describe("getConstraintCounterpart", function()
		local function createTestConstraint()
			local partA = Instance.new("Part")
			local partB = Instance.new("Part")
			local constraint = Instance.new("RodConstraint", partB)
			constraint.Attachment0 = Instance.new("Attachment", partA)
			constraint.Attachment1 = Instance.new("Attachment", partB)
			return constraint
		end

		it("should return the other part", function()
			local constraint = createTestConstraint()
			local partA = constraint.Attachment0.Parent
			local partB = constraint.Attachment1.Parent
			expect(JointUtil.getConstraintCounterpart(constraint, partA)).to.equal(partB)
			expect(JointUtil.getConstraintCounterpart(constraint, partB)).to.equal(partA)
		end)

		it("should return nil if constraint and part are unrelated", function()
			local constraint = createTestConstraint()
			local part = Instance.new("Part")
			expect(JointUtil.getConstraintCounterpart(constraint, part)).to.equal(nil)
		end)
	end)

	describe("getJointInstanceCounterpart", function()
		local function createTestJointInstance()
			local joint = Instance.new("Weld")
			joint.Part0 = Instance.new("Part")
			joint.Part1 = Instance.new("Part")
			joint.Parent = joint.Part1
			return joint
		end

		it("should return the other part", function()
			local joint = createTestJointInstance()
			local partA = joint.Part0
			local partB = joint.Part1
			expect(JointUtil.getJointInstanceCounterpart(joint, partA)).to.equal(partB)
			expect(JointUtil.getJointInstanceCounterpart(joint, partB)).to.equal(partA)
		end)

		it("should return nil if joint and part are unrelated", function()
			local joint = createTestJointInstance()
			local part = Instance.new("Part")
			expect(JointUtil.getJointInstanceCounterpart(joint, part)).to.equal(nil)
		end)
	end)

	describe("getWeldConstraintCounterpart", function()
		local function createTestWeldConstraint()
			local joint = Instance.new("WeldConstraint")
			joint.Part0 = Instance.new("Part")
			joint.Part1 = Instance.new("Part")
			joint.Parent = joint.Part1
			return joint
		end

		it("should return the other part", function()
			local weldConstraint = createTestWeldConstraint()
			local partA = weldConstraint.Part0
			local partB = weldConstraint.Part1
			expect(JointUtil.getWeldConstraintCounterpart(weldConstraint, partA)).to.equal(partB)
			expect(JointUtil.getWeldConstraintCounterpart(weldConstraint, partB)).to.equal(partA)
		end)

		it("should return nil if weld constraint and part are unrelated", function()
			local weldConstraint = createTestWeldConstraint()
			local part = Instance.new("Part")
			expect(JointUtil.getJointInstanceCounterpart(weldConstraint, part)).to.equal(nil)
		end)
	end)
end
