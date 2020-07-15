return function()
	local Packages = script.Parent.Parent
	local Roact = require(Packages.Roact)

	local FocusNode = require(script.Parent.FocusNode)
	local FocusController = require(script.Parent.FocusController)
	local InternalApi = require(script.Parent.FocusControllerInternalApi)

	local MockEngine = require(script.Parent.Test.MockEngine)
	local createSpy = require(script.Parent.Test.createSpy)

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

	describe("event management", function()
		it("should not fire subscribed signals before it's initialized", function()
			local ref, _ = Roact.createBinding(Instance.new("Frame"))
			local focusNode = createRootNode(ref)

			local focusController = focusNode.focusController[InternalApi]
			local selectionChangeSpy = createSpy()
			focusController:subscribeToSelectionChange(selectionChangeSpy.value)

			local mockEngine, _ = MockEngine.new()

			mockEngine:simulateSelectionChanged(Instance.new("Frame"))
			expect(selectionChangeSpy.callCount).to.equal(0)
		end)

		it("should fire subscribed signals when selection changes occur once initialized", function()
			local ref, _ = Roact.createBinding(Instance.new("Frame"))
			local focusNode = createRootNode(ref)

			local focusController = focusNode.focusController[InternalApi]
			local selectionChangeSpy = createSpy()
			focusController:subscribeToSelectionChange(selectionChangeSpy.value)
			local mockEngine, engineInterface = MockEngine.new()

			expect(selectionChangeSpy.callCount).to.equal(0)

			focusNode:initializeRoot(engineInterface)
			mockEngine:simulateSelectionChanged(ref:getValue())
			expect(selectionChangeSpy.callCount).to.equal(1)
		end)
	end)

	describe("focus logic", function()
		it("should consider selected objects to be in focus", function()
			local ref, _ = Roact.createBinding(Instance.new("Frame"))
			local focusNode = createRootNode(ref)

			local _, engineInterface = MockEngine.new()
			local focusController = focusNode.focusController[InternalApi]
			focusNode:initializeRoot(engineInterface)

			expect(focusController:isNodeFocused(focusNode)).to.equal(false)
			focusNode:focus()
			expect(focusController:isNodeFocused(focusNode)).to.equal(true)
		end)

		it("should consider parent nodes of selected objects to be in focus", function()
			local rootRef, _ = Roact.createBinding(Instance.new("Frame"))
			local parentNode = createRootNode(rootRef)
			local childNode, _ = addChildNode(parentNode)

			local _, engineInterface = MockEngine.new()
			local focusController = parentNode.focusController[InternalApi]
			parentNode:initializeRoot(engineInterface)

			expect(focusController:isNodeFocused(parentNode)).to.equal(false)
			expect(focusController:isNodeFocused(childNode)).to.equal(false)
			childNode:focus()
			expect(focusController:isNodeFocused(parentNode)).to.equal(true)
			expect(focusController:isNodeFocused(childNode)).to.equal(true)
		end)

		it("should change its notion of focus when selection is changed", function()
			local rootRef, _ = Roact.createBinding(Instance.new("Frame"))
			local parentNode = createRootNode(rootRef)

			local childNodeA, _ = addChildNode(parentNode)
			local childNodeB, childRefB = addChildNode(parentNode)

			local _, engineInterface = MockEngine.new()
			local focusController = parentNode.focusController[InternalApi]
			parentNode:initializeRoot(engineInterface)
			childNodeA:focus()

			expect(focusController:isNodeFocused(childNodeA)).to.equal(true)
			expect(focusController:isNodeFocused(childNodeB)).to.equal(false)

			engineInterface.setSelection(childRefB:getValue())
			expect(focusController:isNodeFocused(childNodeA)).to.equal(false)
			expect(focusController:isNodeFocused(childNodeB)).to.equal(true)
		end)

		it("should change its notion of focus when selection changes via the engine", function()
			local rootRef, _ = Roact.createBinding(Instance.new("Frame"))
			local parentNode = createRootNode(rootRef)

			local childNodeA, _ = addChildNode(parentNode)
			local childNodeB, childRefB = addChildNode(parentNode)

			local mockEngine, engineInterface = MockEngine.new()
			local focusController = parentNode.focusController[InternalApi]
			parentNode:initializeRoot(engineInterface)
			childNodeA:focus()

			expect(focusController:isNodeFocused(childNodeA)).to.equal(true)
			expect(focusController:isNodeFocused(childNodeB)).to.equal(false)

			mockEngine:simulateSelectionChanged(childRefB:getValue())
			expect(focusController:isNodeFocused(childNodeA)).to.equal(false)
			expect(focusController:isNodeFocused(childNodeB)).to.equal(true)
		end)
	end)

	describe("Initial focus", function()
		it("should not automatically capture focus", function()
			local rootRef, _ = Roact.createBinding(Instance.new("Frame"))
			local parentNode = createRootNode(rootRef)

			local focusControllerInternal = parentNode.focusController[InternalApi]
			expect(focusControllerInternal:isNodeFocused(parentNode)).to.equal(false)
		end)

		it("should focus the top-level node when captureFocus is called", function()
			local rootRef, _ = Roact.createBinding(Instance.new("Frame"))
			local parentNode = createRootNode(rootRef)

			local _, engineInterface = MockEngine.new()
			parentNode:initializeRoot(engineInterface)

			parentNode.focusController.captureFocus()
			local focusControllerInternal = parentNode.focusController[InternalApi]
			expect(focusControllerInternal:isNodeFocused(parentNode)).to.equal(true)
		end)

		it("should focus the top-level node when captureFocus is called, even if initialized afterwards", function()
			local rootRef, _ = Roact.createBinding(Instance.new("Frame"))
			local parentNode = createRootNode(rootRef)

			local _, engineInterface = MockEngine.new()

			-- Capture focus first, then initialize the node afterwards. This
			-- simulates scenarios in which a component wants to captureFocus on
			-- didMount, but is not yet parented to the DataModel
			parentNode.focusController.captureFocus()
			parentNode:initializeRoot(engineInterface)

			local focusControllerInternal = parentNode.focusController[InternalApi]
			expect(focusControllerInternal:isNodeFocused(parentNode)).to.equal(true)
		end)
	end)

	describe("Input binding", function()
		it("should only call bound inputs when the element is in focus", function()
			local rootRef, _ = Roact.createBinding(Instance.new("Frame"))
			local parentNode = createRootNode(rootRef)

			local childNodeA, _ = addChildNode(parentNode)
			local callbackSpyA = createSpy()
			childNodeA.inputBindings = {
				[Enum.KeyCode.ButtonX] = callbackSpyA.value
			}
			local childNodeB, _ = addChildNode(parentNode)
			local callbackSpyB = createSpy()
			childNodeB.inputBindings = {
				[Enum.KeyCode.ButtonX] = callbackSpyB.value
			}

			local mockEngine, engineInterface = MockEngine.new()
			parentNode:initializeRoot(engineInterface)
			expect(callbackSpyA.callCount).to.equal(0)
			expect(callbackSpyB.callCount).to.equal(0)

			childNodeA:focus()
			mockEngine:simulateInput(Enum.KeyCode.ButtonX)
			expect(callbackSpyA.callCount).to.equal(1)
			expect(callbackSpyB.callCount).to.equal(0)

			childNodeB:focus()
			mockEngine:simulateInput(Enum.KeyCode.ButtonX)
			expect(callbackSpyA.callCount).to.equal(1)
			expect(callbackSpyB.callCount).to.equal(1)
		end)

		it("should allow input bindings to override parent input bindings", function()
			local rootRef, _ = Roact.createBinding(Instance.new("Frame"))
			local parentNode = createRootNode(rootRef)
			local callbackSpyParent = createSpy()
			parentNode.inputBindings = {
				[Enum.KeyCode.ButtonX] = callbackSpyParent.value
			}

			-- ChildA does not override the parent's binding
			local childNodeA, _ = addChildNode(parentNode)

			-- ChildB has a binding to the same button, which overrides the parent
			local childNodeB, _ = addChildNode(parentNode)
			local callbackSpyChild = createSpy()
			childNodeB.inputBindings = {
				[Enum.KeyCode.ButtonX] = callbackSpyChild.value
			}

			local mockEngine, engineInterface = MockEngine.new()
			parentNode:initializeRoot(engineInterface)
			expect(callbackSpyParent.callCount).to.equal(0)
			expect(callbackSpyChild.callCount).to.equal(0)

			-- When A is focused, we should use the parent's input binding
			childNodeA:focus()
			mockEngine:simulateInput(Enum.KeyCode.ButtonX)
			expect(callbackSpyParent.callCount).to.equal(1)
			expect(callbackSpyChild.callCount).to.equal(0)

			-- When B is focused, we should use child B's input binding
			childNodeB:focus()
			mockEngine:simulateInput(Enum.KeyCode.ButtonX)
			expect(callbackSpyParent.callCount).to.equal(1)
			expect(callbackSpyChild.callCount).to.equal(1)
		end)
	end)

	describe("Refocusing", function()
		it("Should redirect focus to the parent when a focused child is detached", function()
			local rootRef, _ = Roact.createBinding(Instance.new("Frame"))
			local parentNode = createRootNode(rootRef)

			local childNodeA, _ = addChildNode(parentNode)

			local _, engineInterface = MockEngine.new()
			parentNode:initializeRoot(engineInterface)

			local focusController = parentNode.focusController[InternalApi]

			-- First, we initialize focus to A
			childNodeA:focus()
			expect(focusController:isNodeFocused(childNodeA)).to.equal(true)

			-- When A is removed, focus should move to the parent and be
			-- redirected to B
			childNodeA:detachFromTree()
			expect(focusController:isNodeFocused(parentNode)).to.equal(true)
		end)

		it("Should trigger parent focus logic when a focused child is detached", function()
			local rootRef, _ = Roact.createBinding(Instance.new("Frame"))
			local parentNode = createRootNode(rootRef)

			local childNodeA, _ = addChildNode(parentNode)
			local childNodeB, _ = addChildNode(parentNode)

			local _, engineInterface = MockEngine.new()
			parentNode:initializeRoot(engineInterface)

			local focusController = parentNode.focusController[InternalApi]

			-- First, we initialize focus to A
			childNodeA:focus()
			expect(focusController:isNodeFocused(childNodeA)).to.equal(true)

			-- When A is removed, focus should move to the parent and be
			-- redirected to B (its only remaining child)
			childNodeA:detachFromTree()
			expect(focusController:isNodeFocused(childNodeB)).to.equal(true)
		end)

		it("Should trigger parent focus logic when a node has children added to it", function()
			local rootRef, _ = Roact.createBinding(Instance.new("Frame"))
			local parentNode = createRootNode(rootRef)

			local _, engineInterface = MockEngine.new()
			parentNode:initializeRoot(engineInterface)

			local focusController = parentNode.focusController[InternalApi]

			-- First, we initialize focus to the parent node
			parentNode:focus()
			expect(focusController:isNodeFocused(parentNode)).to.equal(true)

			-- When A is added to the hierarchy, it should capture focus from
			-- the parent (which is no longer a leaf of the focus tree)
			local childNodeA, _ = addChildNode(parentNode)
			expect(focusController:isNodeFocused(childNodeA)).to.equal(true)
		end)


		it("Should not refocus when adding children to a parent that already has at least one child", function()
			local rootRef, _ = Roact.createBinding(Instance.new("Frame"))
			local parentNode = createRootNode(rootRef)

			local childNodeA, _ = addChildNode(parentNode)
			local _, engineInterface = MockEngine.new()
			parentNode:initializeRoot(engineInterface)

			local focusController = parentNode.focusController[InternalApi]

			-- First, we initialize focus to the parent node
			parentNode:focus()
			expect(focusController:isNodeFocused(parentNode)).to.equal(true)

			-- When A is added to the hierarchy, it should capture focus from
			-- the parent (which is no longer a leaf of the focus tree)
			expect(focusController:isNodeFocused(childNodeA)).to.equal(true)
		end)
	end)
end