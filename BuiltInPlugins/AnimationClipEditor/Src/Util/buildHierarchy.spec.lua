return function()
	local buildHierarchy = require(script.Parent.buildHierarchy)

	it("should build a hierarchy table", function()
		local children = {
			Root = {"LeftArm", "RightArm", "Neck", "LeftLeg", "RightLeg"},
			Neck = {"Head"},
			LeftArm = {"LeftHand"},
			RightArm = {"RightHand"},
		}
		local firstNode = "Root"
		local hierarchy = buildHierarchy(firstNode, function(node)
			return children[node] or {}
		end)

		expect(hierarchy).to.be.ok()
		expect(hierarchy.LeftArm).to.be.ok()
		expect(hierarchy.RightArm).to.be.ok()
		expect(hierarchy.Neck).to.be.ok()
		expect(hierarchy.LeftLeg).to.be.ok()
		expect(hierarchy.RightLeg).to.be.ok()
		expect(hierarchy.Neck.Head).to.be.ok()
		expect(hierarchy.LeftArm.LeftHand).to.be.ok()
		expect(hierarchy.RightArm.RightHand).to.be.ok()
	end)
end