return function()
	local LinkedList = require(script.Parent.LinkedList)

	describe("it should initialize properly", function()
		local node = LinkedList.createNode(456)
		local emptyNode = LinkedList.createNode()

		it("given a value", function()
			expect(node.value).to.equal(456)
		end)

		it("given nothing", function()
			expect(emptyNode.value).to.equal(nil)
		end)
	end)

	describe("it should properly link nodes", function()
		it("when calling createNext on the end of a list", function()
			local nodeA = LinkedList.createNode("a")
			local nodeB = nodeA:CreateNext("b")

			expect(nodeA.next).to.equal(nodeB)
			expect(nodeA.next.value).to.equal(nodeB.value)

			expect(nodeB.previous).to.equal(nodeA)
			expect(nodeB.previous.value).to.equal(nodeA.value)
		end)

		it("when calling createNext inbetween Nodes", function()
			local nodeA = LinkedList.createNode("a")
			local nodeC = nodeA:CreateNext("c")
			local nodeB = nodeA:CreateNext("b")

			expect(nodeA.next).to.equal(nodeB)
			expect(nodeB.previous).to.equal(nodeA)
			expect(nodeB.next).to.equal(nodeC)
			expect(nodeC.previous).to.equal(nodeB)
		end)

		it("when calling createPrevious on the beginning of a list", function()
			local nodeA = LinkedList.createNode("a")
			local nodeZ = nodeA:CreatePrevious("z")

			expect(nodeA.previous).to.equal(nodeZ)
			expect(nodeA.previous.value).to.equal(nodeZ.value)

			expect(nodeZ.next).to.equal(nodeA)
			expect(nodeZ.next.value).to.equal(nodeA.value)
		end)

		it("when calling createPrevious inbetween Nodes", function()
			local nodeA = LinkedList.createNode("a")
			local nodeY = nodeA:CreatePrevious("y")
			local nodeZ = nodeA:CreatePrevious("z")

			expect(nodeA.previous).to.equal(nodeZ)
			expect(nodeZ.previous).to.equal(nodeY)
			expect(nodeZ.next).to.equal(nodeA)
			expect(nodeY.next).to.equal(nodeZ)
		end)



	end)

end