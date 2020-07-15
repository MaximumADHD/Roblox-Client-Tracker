return function()
	local Packages = script.Parent.Parent
	local Roact = require(Packages.Roact)

	local FocusNode = require(script.Parent.FocusNode)
	local FocusController = require(script.Parent.FocusController)
	local InternalApi = require(script.Parent.FocusControllerInternalApi)

	local MockEngine = require(script.Parent.Test.MockEngine)

	local function createRootNode(ref)
		local node = FocusNode.new({
			focusController = FocusController.createPublicApiWrapper(),
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
			focusNode:initializeRoot(engineInterface)

			focusNode:focus()
			expect(engineInterface.getSelection()).to.equal(rootRef:getValue())
		end)

		it("should redirect selection to a child when a non-leaf node is focused", function()
			local rootRef, _ = Roact.createBinding(Instance.new("Frame"))
			local _, engineInterface = MockEngine.new()

			local parentNode = createRootNode(rootRef)
			local _, childRef = addChildNode(parentNode)

			parentNode:initializeRoot(engineInterface)

			parentNode:focus()
			expect(engineInterface.getSelection()).to.equal(childRef:getValue())
		end)

		it("should redirect selection to a child when a non-leaf node gains selection", function()
			local rootRef, _ = Roact.createBinding(Instance.new("Frame"))
			local mockEngine, engineInterface = MockEngine.new()

			local parentNode = createRootNode(rootRef)
			local _, childRef = addChildNode(parentNode)

			parentNode:initializeRoot(engineInterface)

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

			local focusController = parentNode.focusController[InternalApi]
			parentNode:initializeRoot(engineInterface)

			parentNode:focus()
			expect(focusController:isNodeFocused(childNodeB)).to.equal(true)

			childNodeA:focus()
			parentNode:focus()
			expect(focusController:isNodeFocused(childNodeB)).to.equal(true)
		end)

		it("should restore previous selection when the option is enabled", function()
			local rootRef, _ = Roact.createBinding(Instance.new("Frame"))
			local _, engineInterface = MockEngine.new()

			local parentNode = createRootNode(rootRef)
			local childNodeA, _ = addChildNode(parentNode)
			local childNodeB, _ = addChildNode(parentNode)
			parentNode.restorePreviousChildFocus = true

			local focusController = parentNode.focusController[InternalApi]
			parentNode:initializeRoot(engineInterface)

			childNodeA:focus()
			parentNode:focus()
			expect(focusController:isNodeFocused(childNodeA)).to.equal(true)

			childNodeB:focus()
			parentNode:focus()
			expect(focusController:isNodeFocused(childNodeB)).to.equal(true)
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

			local focusController = parentNode.focusController[InternalApi]
			parentNode:initializeRoot(engineInterface)

			parentNode:focus()
			expect(focusController:isNodeFocused(childNodeC)).to.equal(true)

			childNodeA:focus()
			childNodeB:focus()
			parentNode:focus()
			expect(focusController:isNodeFocused(childNodeB)).to.equal(true)
		end)
	end)

	describe("initial selection logic when nothing is specified", function()
		local function addChildNested(parentNode, parentInstance)
			local instance = Instance.new("Frame")
			instance.Parent = parentInstance

			local childRef, _ = Roact.createBinding(instance)
			local childNode = FocusNode.new({
				parentFocusNode = parentNode,
				[Roact.Ref] = childRef,
			})
			childNode:attachToTree(parentNode, function() end)

			return childNode, childRef
		end

		it("should choose the child with the lowest LayoutOrder", function()
			local rootRef, _ = Roact.createBinding(Instance.new("Frame"))
			local _, engineInterface = MockEngine.new()

			local parentNode = createRootNode(rootRef)
			parentNode:initializeRoot(engineInterface)

			local childNode1, childRef1 = addChildNode(parentNode)
			childRef1:getValue().LayoutOrder = 1
			local _, childRef2 = addChildNode(parentNode)
			childRef2:getValue().LayoutOrder = 2
			local _, childRef3 = addChildNode(parentNode)
			childRef3:getValue().LayoutOrder = 3

			parentNode:focus()
			local focusController = parentNode.focusController[InternalApi]
			expect(focusController:isNodeFocused(childNode1)).to.equal(true)
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
			parentNode:initializeRoot(engineInterface)

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
			local focusController = parentNode.focusController[InternalApi]
			expect(focusController:isNodeFocused(childNode1)).to.equal(true)
		end)

		it("should only use the LayoutOrder closest to each child", function()
			local rootRef, _ = Roact.createBinding(Instance.new("Frame"))
			local _, engineInterface = MockEngine.new()

			local parentNode = createRootNode(rootRef)
			parentNode:initializeRoot(engineInterface)

			-- Insert an intermediate frame with LayoutOrder = 1; we want to
			-- make sure not to traverse back up to this and choose the wrong
			-- child
			local intermediateFrame = Instance.new("Frame")
			intermediateFrame.Parent = rootRef:getValue()
			intermediateFrame.LayoutOrder = 1

			local childNode1, childRef1 = addChildNested(parentNode, intermediateFrame)
			childRef1:getValue().LayoutOrder = 2
			local _, childRef2 = addChildNested(parentNode, intermediateFrame)
			childRef2:getValue().LayoutOrder = 3
			local _, childRef3 = addChildNested(parentNode, intermediateFrame)
			childRef3:getValue().LayoutOrder = 4

			parentNode:focus()
			local focusController = parentNode.focusController[InternalApi]
			expect(focusController:isNodeFocused(childNode1)).to.equal(true)
		end)

		it("should safely skip past non-GuiObjects", function()
			local rootRef, _ = Roact.createBinding(Instance.new("Frame"))
			local _, engineInterface = MockEngine.new()

			local parentNode = createRootNode(rootRef)
			parentNode:initializeRoot(engineInterface)

			-- Insert an intermediate frame with LayoutOrder = 1; we want to
			-- make sure not to traverse back up to this and choose the wrong
			-- child
			local intermediateFolder = Instance.new("Folder")
			intermediateFolder.Parent = rootRef:getValue()

			local childNode1, childRef1 = addChildNested(parentNode, intermediateFolder)
			childRef1:getValue().LayoutOrder = 1
			local _, childRef2 = addChildNested(parentNode, intermediateFolder)
			childRef2:getValue().LayoutOrder = 2

			-- None specified; this one will have to climb to the tree
			local _, _ = addChildNested(parentNode, intermediateFolder)

			expect(function()
				parentNode:focus()
			end).never.to.throw()

			local focusController = parentNode.focusController[InternalApi]
			expect(focusController:isNodeFocused(childNode1)).to.equal(true)
		end)
	end)
end