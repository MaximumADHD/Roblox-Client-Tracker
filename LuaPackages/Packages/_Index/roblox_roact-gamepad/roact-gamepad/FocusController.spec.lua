return function()
	local Packages = script.Parent.Parent
	local Roact = require(Packages.Roact)

	local FocusNode = require(script.Parent.FocusNode)
	local FocusController = require(script.Parent.FocusController)
	local InternalApi = require(script.Parent.FocusControllerInternalApi)
	local Input = require(script.Parent.Input)

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

			focusController:initialize(engineInterface)
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
			focusController:initialize(engineInterface)

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
			focusController:initialize(engineInterface)

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
			focusController:initialize(engineInterface)
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
			focusController:initialize(engineInterface)
			childNodeA:focus()

			expect(focusController:isNodeFocused(childNodeA)).to.equal(true)
			expect(focusController:isNodeFocused(childNodeB)).to.equal(false)

			mockEngine:simulateSelectionChanged(childRefB:getValue())
			expect(focusController:isNodeFocused(childNodeA)).to.equal(false)
			expect(focusController:isNodeFocused(childNodeB)).to.equal(true)
		end)

		it("should only track selection changes inside its hierarchy", function()
			local rootRef, _ = Roact.createBinding(Instance.new("Frame"))
			local parentNode = createRootNode(rootRef)

			local childNodeA, _ = addChildNode(parentNode)
			local childNodeB, _ = addChildNode(parentNode)

			local mockEngine, engineInterface = MockEngine.new()
			local focusController = parentNode.focusController[InternalApi]
			focusController:initialize(engineInterface)

			local selectionChangedSpy = createSpy()
			focusController:subscribeToSelectionChange(selectionChangedSpy.value)

			childNodeA:focus()
			expect(focusController:isNodeFocused(childNodeA)).to.equal(true)
			expect(selectionChangedSpy.callCount).to.equal(1)

			-- Moving selection within the hierarchy should trigger fire events
			childNodeB:focus()
			expect(selectionChangedSpy.callCount).to.equal(2)

			-- When selection changes from _inside_ this hierarchy to nil,
			-- notify accordingly
			mockEngine:simulateSelectionChanged(nil)
			expect(selectionChangedSpy.callCount).to.equal(3)

			-- Moving back into the hierarchy should once again trigger events
			childNodeA:focus()
			expect(selectionChangedSpy.callCount).to.equal(4)

			-- When selection changes from inside the hierarchy to outside the
			-- hierarchy, events should fire
			local unconnectedFrame = Instance.new("Frame")
			mockEngine:simulateSelectionChanged(unconnectedFrame)
			expect(selectionChangedSpy.callCount).to.equal(5)

			-- When selection changes between elements outside the hierarchy,
			-- no events should be triggered
			local unconnectedFrame2 = Instance.new("Frame")
			mockEngine:simulateSelectionChanged(unconnectedFrame2)
			expect(selectionChangedSpy.callCount).to.equal(5)

			-- When selection changes from an element outside the hierarchy to
			-- nil, no events should be triggered
			mockEngine:simulateSelectionChanged(nil)
			expect(selectionChangedSpy.callCount).to.equal(5)
		end)
	end)

	describe("Tree-level focus management", function()
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
			local focusController = parentNode.focusController[InternalApi]
			focusController:initialize(engineInterface)

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
			local focusControllerInternal = parentNode.focusController[InternalApi]
			focusControllerInternal:initialize(engineInterface)

			expect(focusControllerInternal:isNodeFocused(parentNode)).to.equal(true)
		end)

		it("should set selection to nil when focus is released", function()
			local rootRef, _ = Roact.createBinding(Instance.new("Frame"))
			local parentNode = createRootNode(rootRef)

			local _, engineInterface = MockEngine.new()
			local focusController = parentNode.focusController[InternalApi]
			focusController:initialize(engineInterface)

			parentNode.focusController.captureFocus()
			expect(engineInterface.getSelection()).to.equal(rootRef:getValue())

			parentNode.focusController.releaseFocus()
			expect(engineInterface.getSelection()).to.equal(nil)
		end)
	end)

	describe("Input binding", function()
		it("should only call bound inputs when the element is in focus", function()
			local rootRef, _ = Roact.createBinding(Instance.new("Frame"))
			local parentNode = createRootNode(rootRef)

			local childNodeA, _ = addChildNode(parentNode)
			local callbackSpyA = createSpy()
			childNodeA.inputBindings = {
				action = Input.PublicInterface.onBegin(Enum.KeyCode.ButtonX, callbackSpyA.value),
			}
			local childNodeB, _ = addChildNode(parentNode)
			local callbackSpyB = createSpy()
			childNodeB.inputBindings = {
				action = Input.PublicInterface.onBegin(Enum.KeyCode.ButtonX, callbackSpyB.value),
			}

			local mockEngine, engineInterface = MockEngine.new()
			local focusControllerInternal = parentNode.focusController[InternalApi]
			focusControllerInternal:initialize(engineInterface)
			expect(callbackSpyA.callCount).to.equal(0)
			expect(callbackSpyB.callCount).to.equal(0)

			childNodeA:focus()
			mockEngine:simulateInput({
				UserInputType = Enum.UserInputType.Gamepad1,
				UserInputState = Enum.UserInputState.Begin,
				KeyCode = Enum.KeyCode.ButtonX,
			})
			expect(callbackSpyA.callCount).to.equal(1)
			expect(callbackSpyB.callCount).to.equal(0)

			childNodeB:focus()
			mockEngine:simulateInput({
				UserInputType = Enum.UserInputType.Gamepad1,
				UserInputState = Enum.UserInputState.Begin,
				KeyCode = Enum.KeyCode.ButtonX,
			})
			expect(callbackSpyA.callCount).to.equal(1)
			expect(callbackSpyB.callCount).to.equal(1)
		end)

		it("should allow input bindings to override parent input bindings", function()
			local rootRef, _ = Roact.createBinding(Instance.new("Frame"))
			local parentNode = createRootNode(rootRef)
			local callbackSpyParent = createSpy()
			parentNode.inputBindings = {
				action = Input.PublicInterface.onBegin(Enum.KeyCode.ButtonX, callbackSpyParent.value),
			}

			-- ChildA does not override the parent's binding
			local childNodeA, _ = addChildNode(parentNode)

			-- ChildB has a binding to the same button, which overrides the parent
			local childNodeB, _ = addChildNode(parentNode)
			local callbackSpyChild = createSpy()
			childNodeB.inputBindings = {
				action = Input.PublicInterface.onBegin(Enum.KeyCode.ButtonX, callbackSpyChild.value),
			}

			local mockEngine, engineInterface = MockEngine.new()
			local focusControllerInternal = parentNode.focusController[InternalApi]
			focusControllerInternal:initialize(engineInterface)
			expect(callbackSpyParent.callCount).to.equal(0)
			expect(callbackSpyChild.callCount).to.equal(0)

			-- When A is focused, we should use the parent's input binding
			childNodeA:focus()
			mockEngine:simulateInput({
				UserInputType = Enum.UserInputType.Gamepad1,
				UserInputState = Enum.UserInputState.Begin,
				KeyCode = Enum.KeyCode.ButtonX,
			})
			expect(callbackSpyParent.callCount).to.equal(1)
			expect(callbackSpyChild.callCount).to.equal(0)

			-- When B is focused, we should use child B's input binding
			childNodeB:focus()
			mockEngine:simulateInput({
				UserInputType = Enum.UserInputType.Gamepad1,
				UserInputState = Enum.UserInputState.Begin,
				KeyCode = Enum.KeyCode.ButtonX,
			})
			expect(callbackSpyParent.callCount).to.equal(1)
			expect(callbackSpyChild.callCount).to.equal(1)
		end)

		it("should override onStep bindings the same as begin and end", function()
			local rootRef, _ = Roact.createBinding(Instance.new("Frame"))
			local parentNode = createRootNode(rootRef)
			local callbackSpyParent = createSpy()
			parentNode.inputBindings = {
				action = Input.PublicInterface.onStep(Enum.KeyCode.ButtonX, callbackSpyParent.value),
			}

			-- ChildA does not override the parent's binding
			local childNodeA, _ = addChildNode(parentNode)

			-- ChildB has a binding to the same button, which overrides the parent
			local childNodeB, _ = addChildNode(parentNode)
			local callbackSpyChild = createSpy()
			childNodeB.inputBindings = {
				action = Input.PublicInterface.onStep(Enum.KeyCode.ButtonX, callbackSpyChild.value),
			}

			local mockEngine, engineInterface = MockEngine.new()
			local focusControllerInternal = parentNode.focusController[InternalApi]
			focusControllerInternal:initialize(engineInterface)
			expect(callbackSpyParent.callCount).to.equal(0)
			expect(callbackSpyChild.callCount).to.equal(0)

			-- When A is focused, we should use the parent's input binding
			childNodeA:focus()
			mockEngine:renderStep(0.03)
			expect(callbackSpyParent.callCount).to.equal(1)
			expect(callbackSpyChild.callCount).to.equal(0)

			-- When B is focused, both it and the parent's binding run
			childNodeB:focus()
			mockEngine:renderStep(0.03)
			expect(callbackSpyParent.callCount).to.equal(1)
			expect(callbackSpyChild.callCount).to.equal(1)
		end)

		it("should override onMoveStep bindings wholesale, since they don't differ by keycode", function()
			local rootRef, _ = Roact.createBinding(Instance.new("Frame"))
			local parentNode = createRootNode(rootRef)
			local callbackSpyParent = createSpy()
			parentNode.inputBindings = {
				action = Input.PublicInterface.onMoveStep(callbackSpyParent.value),
			}

			-- ChildA does not override the parent's binding
			local childNodeA, _ = addChildNode(parentNode)

			-- ChildB has a binding to the same button, which overrides the parent
			local childNodeB, _ = addChildNode(parentNode)
			local callbackSpyChild = createSpy()
			childNodeB.inputBindings = {
				action = Input.PublicInterface.onMoveStep(callbackSpyChild.value),
			}

			local mockEngine, engineInterface = MockEngine.new()
			local focusControllerInternal = parentNode.focusController[InternalApi]
			focusControllerInternal:initialize(engineInterface)
			expect(callbackSpyParent.callCount).to.equal(0)
			expect(callbackSpyChild.callCount).to.equal(0)

			-- When A is focused, we should use the parent's input binding
			childNodeA:focus()
			mockEngine:renderStep(0.03)
			expect(callbackSpyParent.callCount).to.equal(1)
			expect(callbackSpyChild.callCount).to.equal(0)

			-- When B is focused, its binding is run instead
			childNodeB:focus()
			mockEngine:renderStep(0.03)
			expect(callbackSpyParent.callCount).to.equal(1)
			expect(callbackSpyChild.callCount).to.equal(1)
		end)

		it("should update input bindings when focus changes", function()
			local rootRef, _ = Roact.createBinding(Instance.new("Frame"))
			local parentNode = createRootNode(rootRef)

			local boundInputsChangedSpy = createSpy()
			local disconnect = parentNode.focusController.subscribeToBoundInputsChanged(boundInputsChangedSpy.value)

			local childNodeA, _ = addChildNode(parentNode)
			childNodeA.inputBindings = {
				action = Input.PublicInterface.onBegin(Enum.KeyCode.ButtonX, function() end, {
					key = "actionX"
				}),
			}
			local childNodeB, _ = addChildNode(parentNode)
			childNodeB.inputBindings = {
				action1 = Input.PublicInterface.onBegin(Enum.KeyCode.ButtonY, function() end, {
					key = "actionY"
				}),
				action2 = Input.PublicInterface.onBegin(Enum.KeyCode.ButtonA, function() end),
			}

			local _, engineInterface = MockEngine.new()
			local focusControllerInternal = parentNode.focusController[InternalApi]
			focusControllerInternal:initialize(engineInterface)

			expect(boundInputsChangedSpy.callCount).to.equal(0)
			childNodeA:focus()
			expect(boundInputsChangedSpy.callCount).to.equal(1)

			local boundInputs = parentNode.focusController.getBoundInputs()
			expect(boundInputs[Enum.KeyCode.ButtonY]).to.equal(nil)
			expect(boundInputs[Enum.KeyCode.ButtonA]).to.equal(nil)
			expect(boundInputs[Enum.KeyCode.ButtonX].key).to.equal("actionX")

			childNodeB:focus()
			expect(boundInputsChangedSpy.callCount).to.equal(2)

			boundInputs = parentNode.focusController.getBoundInputs()
			expect(boundInputs[Enum.KeyCode.ButtonY].key).to.equal("actionY")
			expect(boundInputs[Enum.KeyCode.ButtonX]).to.equal(nil)
			-- expect a binding without a meta table field to return an empty table rather than nil
			expect(#boundInputs[Enum.KeyCode.ButtonA]).to.equal(0)

			disconnect()
			childNodeA:focus()
			expect(boundInputsChangedSpy.callCount).to.equal(2)
		end)
	end)
end