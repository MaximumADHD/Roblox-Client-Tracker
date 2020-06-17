return function()
	local Packages = script.Parent.Parent
	local Roact = require(Packages.Roact)

	local FocusNode = require(script.Parent.FocusNode)

	local MockEngine = require(script.Parent.Test.MockEngine)
	local createSpy = require(script.Parent.Test.createSpy)

	local function addChildNode(parentNode)
		local instance = Instance.new("Frame")
		instance.Parent = parentNode.ref:getValue()

		local childRef, _ = Roact.createBinding(instance)
		local childNode = FocusNode.new({
			parentFocusNode = parentNode,
			[Roact.Ref] = childRef,
		})
		parentNode:registerChild(childRef, childNode)

		return childNode, childRef
	end

	describe("basic selection behavior", function()
		it("should set selection to a ref when the ref's node is focused", function()
			local rootRef, _ = Roact.createBinding(Instance.new("Frame"))
			local _, engineInterface = MockEngine.new()

			local focusNode = FocusNode.newRoot(rootRef)
			focusNode.focusManager:initialize(engineInterface)

			focusNode:focus()
			expect(engineInterface.getSelection()).to.equal(rootRef:getValue())
		end)

		it("should redirect selection to a child when a non-leaf node is focused", function()
			local rootRef, _ = Roact.createBinding(Instance.new("Frame"))
			local _, engineInterface = MockEngine.new()

			local parentNode = FocusNode.newRoot(rootRef)
			local _, childRef = addChildNode(parentNode)

			parentNode.focusManager:initialize(engineInterface)

			parentNode:focus()
			expect(engineInterface.getSelection()).to.equal(childRef:getValue())
		end)

		it("should redirect selection to a child when a non-leaf node's ref gains selection", function()
			local rootRef, _ = Roact.createBinding(Instance.new("Frame"))
			local mockEngine, engineInterface = MockEngine.new()

			local parentNode = FocusNode.newRoot(rootRef)
			local _, childRef = addChildNode(parentNode)

			parentNode.focusManager:initialize(engineInterface)
			-- FIXME: We need to set up the initialization a bit better here;
			-- can we tie this to registering children?
			parentNode:subscribeToFocusChange(function() end)

			mockEngine:simulateSelectionChanged(rootRef:getValue())
			expect(engineInterface.getSelection()).to.equal(childRef:getValue())
		end)
	end)

	describe("selectionRule behavior", function()
		it("should not call selectionRule on leaf focus nodes", function()
			local rootRef, _ = Roact.createBinding(Instance.new("Frame"))
			local selectionRuleSpy = createSpy()
			local _, engineInterface = MockEngine.new()

			local focusNode = FocusNode.newRoot(rootRef, selectionRuleSpy.value)
			focusNode.focusManager:initialize(engineInterface)

			expect(selectionRuleSpy.callCount).to.equal(0)
			focusNode:focus()
			expect(selectionRuleSpy.callCount).to.equal(0)
		end)

		it("should call selectionRule when a node with children gains focus", function()
			local rootRef, _ = Roact.createBinding(Instance.new("Frame"))
			local selectionRuleSpy = createSpy()
			local _, engineInterface = MockEngine.new()

			local parentNode = FocusNode.newRoot(rootRef, selectionRuleSpy.value)
			addChildNode(parentNode)

			local focusManager = parentNode.focusManager
			focusManager:initialize(engineInterface)

			expect(selectionRuleSpy.callCount).to.equal(0)
			parentNode:focus()
			expect(selectionRuleSpy.callCount).to.equal(1)
		end)

		it("should call selectionRule with the previously focused child", function()
			local rootRef, _ = Roact.createBinding(Instance.new("Frame"))
			local selectionRuleSpy = createSpy()
			local _, engineInterface = MockEngine.new()

			local parentNode = FocusNode.newRoot(rootRef, selectionRuleSpy.value)
			local childNodeA, childRefA = addChildNode(parentNode)
			local childNodeB, childRefB = addChildNode(parentNode)

			local focusManager = parentNode.focusManager
			focusManager:initialize(engineInterface)
			parentNode:subscribeToFocusChange(function() end)

			childNodeA:focus()
			parentNode:focus()
			expect(selectionRuleSpy.callCount).to.equal(1)
			selectionRuleSpy:assertCalledWith(childRefA)

			childNodeB:focus()
			parentNode:focus()
			expect(selectionRuleSpy.callCount).to.equal(2)
			selectionRuleSpy:assertCalledWith(childRefB)
		end)
	end)

	describe("default initial selection logic", function()
		it("should choose the child with the lowest LayoutOrder", function()
			local rootRef, _ = Roact.createBinding(Instance.new("Frame"))
			local _, engineInterface = MockEngine.new()

			local parentNode = FocusNode.newRoot(rootRef)
			local focusManager = parentNode.focusManager
			focusManager:initialize(engineInterface)

			local childNode1, childRef1 = addChildNode(parentNode)
			childRef1:getValue().LayoutOrder = 1
			local _, childRef2 = addChildNode(parentNode)
			childRef2:getValue().LayoutOrder = 2
			local _, childRef3 = addChildNode(parentNode)
			childRef3:getValue().LayoutOrder = 3

			parentNode:focus()
			expect(focusManager:isNodeFocused(childNode1)).to.equal(true)
		end)

		it("should choose the lowest layout order even of nested elements", function()
			local function insertAncestor(instance)
				local newParent = Instance.new("Frame")
				local grandparent = instance.Parent
				instance.Parent = newParent
				newParent.Parent = grandparent
			end

			local rootRef, _ = Roact.createBinding(Instance.new("Frame"))
			local _, engineInterface = MockEngine.new()

			local parentNode = FocusNode.newRoot(rootRef)
			local focusManager = parentNode.focusManager
			focusManager:initialize(engineInterface)

			local childNode1, childRef1 = addChildNode(parentNode)
			insertAncestor(childRef1:getValue())
			childRef1:getValue().Parent.LayoutOrder = 1
			local _, childRef2 = addChildNode(parentNode)
			insertAncestor(childRef2:getValue())
			childRef2:getValue().Parent.LayoutOrder = 2
			local _, childRef3 = addChildNode(parentNode)
			insertAncestor(childRef3:getValue())
			childRef3:getValue().Parent.LayoutOrder = 3

			parentNode:focus()
			expect(focusManager:isNodeFocused(childNode1)).to.equal(true)
		end)
	end)
end