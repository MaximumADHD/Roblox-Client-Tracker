return function()
	local Packages = script.Parent.Parent
	local Roact = require(Packages.Roact)

	local FocusNode = require(script.Parent.FocusNode)

	local MockEngine = require(script.Parent.Test.MockEngine)

	local function createRootNode(ref)
		local node = FocusNode.new({
			[Roact.Ref] = ref,
		})

		node:attachToTree(nil, function() end)

		return node
	end

	local function addChildNode(parentNode)
		local instance = Instance.new("Frame")
		instance.Parent = parentNode.ref:getValue()

		local childRef, _ = Roact.createBinding(instance)
		local childNode = FocusNode.new({
			parentFocusNode = parentNode,
			[Roact.Ref] = childRef,
		})
		childNode:attachToTree(parentNode, function() end)

		return childNode, childRef
	end

	describe("basic selection behavior", function()
		it("should set selection to a ref when the ref's node is focused", function()
			local rootRef, _ = Roact.createBinding(Instance.new("Frame"))
			local _, engineInterface = MockEngine.new()

			local focusNode = createRootNode(rootRef)
			focusNode.focusManager:initialize(engineInterface)

			focusNode:focus()
			expect(engineInterface.getSelection()).to.equal(rootRef:getValue())
		end)

		it("should redirect selection to a child when a non-leaf node is focused", function()
			local rootRef, _ = Roact.createBinding(Instance.new("Frame"))
			local _, engineInterface = MockEngine.new()

			local parentNode = createRootNode(rootRef)
			local _, childRef = addChildNode(parentNode)

			parentNode.focusManager:initialize(engineInterface)

			parentNode:focus()
			expect(engineInterface.getSelection()).to.equal(childRef:getValue())
		end)

		it("should redirect selection to a child when a non-leaf node gains selection", function()
			local rootRef, _ = Roact.createBinding(Instance.new("Frame"))
			local mockEngine, engineInterface = MockEngine.new()

			local parentNode = createRootNode(rootRef)
			local _, childRef = addChildNode(parentNode)

			parentNode.focusManager:initialize(engineInterface)

			mockEngine:simulateSelectionChanged(rootRef:getValue())
			expect(engineInterface.getSelection()).to.equal(childRef:getValue())
		end)
	end)

	describe("child auto-selection behavior", function()
		it("should select the provided default when present", function()
			local rootRef, _ = Roact.createBinding(Instance.new("Frame"))
			local _, engineInterface = MockEngine.new()

			local parentNode = createRootNode(rootRef)
			local childNodeA, _ = addChildNode(parentNode)
			local childNodeB, childRefB = addChildNode(parentNode)
			parentNode.defaultChildRef = childRefB

			local focusManager = parentNode.focusManager
			focusManager:initialize(engineInterface)

			parentNode:focus()
			expect(focusManager:isNodeFocused(childNodeB)).to.equal(true)

			childNodeA:focus()
			parentNode:focus()
			expect(focusManager:isNodeFocused(childNodeB)).to.equal(true)
		end)

		it("should restore previous selection when the option is enabled", function()
			local rootRef, _ = Roact.createBinding(Instance.new("Frame"))
			local _, engineInterface = MockEngine.new()

			local parentNode = createRootNode(rootRef)
			local childNodeA, _ = addChildNode(parentNode)
			local childNodeB, _ = addChildNode(parentNode)
			parentNode.restorePreviousChildFocus = true

			local focusManager = parentNode.focusManager
			focusManager:initialize(engineInterface)

			childNodeA:focus()
			parentNode:focus()
			expect(focusManager:isNodeFocused(childNodeA)).to.equal(true)

			childNodeB:focus()
			parentNode:focus()
			expect(focusManager:isNodeFocused(childNodeB)).to.equal(true)
		end)

		it("should defer to the default child ref when no child was previously focused", function()
			local rootRef, _ = Roact.createBinding(Instance.new("Frame"))
			local _, engineInterface = MockEngine.new()

			local parentNode = createRootNode(rootRef)
			local childNodeA, _ = addChildNode(parentNode)
			local childNodeB, _ = addChildNode(parentNode)
			local childNodeC, childRefC = addChildNode(parentNode)
			parentNode.defaultChildRef = childRefC
			parentNode.restorePreviousChildFocus = true

			local focusManager = parentNode.focusManager
			focusManager:initialize(engineInterface)

			parentNode:focus()
			expect(focusManager:isNodeFocused(childNodeC)).to.equal(true)

			childNodeA:focus()
			childNodeB:focus()
			parentNode:focus()
			expect(focusManager:isNodeFocused(childNodeB)).to.equal(true)
		end)
	end)

	describe("initial selection logic when nothing is specified", function()
		it("should choose the child with the lowest LayoutOrder", function()
			local rootRef, _ = Roact.createBinding(Instance.new("Frame"))
			local _, engineInterface = MockEngine.new()

			local parentNode = createRootNode(rootRef)
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

			local parentNode = createRootNode(rootRef)
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