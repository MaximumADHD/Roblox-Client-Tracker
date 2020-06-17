return function()
	local Packages = script.Parent.Parent
	local Roact = require(Packages.Roact)

	local FocusNode = require(script.Parent.FocusNode)

	local MockEngine = require(script.Parent.Test.MockEngine)
	local createSpy = require(script.Parent.Test.createSpy)

	local function addChildNode(parentNode)
		local childRef, _ = Roact.createBinding(Instance.new("Frame"))
		local childNode = FocusNode.new({
			parentFocusNode = parentNode,
			[Roact.Ref] = childRef,
		})
		parentNode:registerChild(childRef, childNode)

		return childNode, childRef
	end

	describe("event management", function()
		it("should not fire subscribed signals before it's initialized", function()
			local ref, _ = Roact.createBinding(Instance.new("Frame"))
			local focusNode = FocusNode.newRoot(ref)

			local focusManager = focusNode.focusManager
			local selectionChangeSpy = createSpy()
			focusManager:subscribeToSelectionChange(selectionChangeSpy.value)

			local mockEngine, _ = MockEngine.new()

			mockEngine:simulateSelectionChanged(Instance.new("Frame"))
			expect(selectionChangeSpy.callCount).to.equal(0)
		end)

		it("should fire subscribed signals when selection changes occur once initialized", function()
			local ref, _ = Roact.createBinding(Instance.new("Frame"))
			local focusNode = FocusNode.newRoot(ref)

			local focusManager = focusNode.focusManager
			local selectionChangeSpy = createSpy()
			focusManager:subscribeToSelectionChange(selectionChangeSpy.value)
			local mockEngine, engineInterface = MockEngine.new()

			expect(selectionChangeSpy.callCount).to.equal(0)

			focusManager:initialize(engineInterface)
			mockEngine:simulateSelectionChanged(ref:getValue())
			expect(selectionChangeSpy.callCount).to.equal(1)
		end)
	end)

	describe("focus logic", function()
		it("should consider selected objects to be in focus", function()
			local ref, _ = Roact.createBinding(Instance.new("Frame"))
			local focusNode = FocusNode.newRoot(ref)

			local _, engineInterface = MockEngine.new()
			local focusManager = focusNode.focusManager
			focusManager:initialize(engineInterface)

			expect(focusManager:isNodeFocused(focusNode)).to.equal(false)
			focusNode:focus()
			expect(focusManager:isNodeFocused(focusNode)).to.equal(true)
		end)

		it("should consider parent nodes of selected objects to be in focus", function()
			local rootRef, _ = Roact.createBinding(Instance.new("Frame"))
			local parentNode = FocusNode.newRoot(rootRef)
			local childNode, _ = addChildNode(parentNode)

			local _, engineInterface = MockEngine.new()
			local focusManager = parentNode.focusManager
			focusManager:initialize(engineInterface)

			expect(focusManager:isNodeFocused(parentNode)).to.equal(false)
			expect(focusManager:isNodeFocused(childNode)).to.equal(false)
			childNode:focus()
			expect(focusManager:isNodeFocused(parentNode)).to.equal(true)
			expect(focusManager:isNodeFocused(childNode)).to.equal(true)
		end)

		it("should change its notion of focus when selection is changed", function()
			local rootRef, _ = Roact.createBinding(Instance.new("Frame"))
			local parentNode = FocusNode.newRoot(rootRef)

			local childNodeA, _ = addChildNode(parentNode)
			local childNodeB, childRefB = addChildNode(parentNode)

			local _, engineInterface = MockEngine.new()
			local focusManager = parentNode.focusManager
			focusManager:initialize(engineInterface)
			childNodeA:focus()

			expect(focusManager:isNodeFocused(childNodeA)).to.equal(true)
			expect(focusManager:isNodeFocused(childNodeB)).to.equal(false)

			engineInterface.setSelection(childRefB:getValue())
			expect(focusManager:isNodeFocused(childNodeA)).to.equal(false)
			expect(focusManager:isNodeFocused(childNodeB)).to.equal(true)
		end)

		it("should change its notion of focus when selection changes via the engine", function()
			local rootRef, _ = Roact.createBinding(Instance.new("Frame"))
			local parentNode = FocusNode.newRoot(rootRef)

			local childNodeA, _ = addChildNode(parentNode)
			local childNodeB, childRefB = addChildNode(parentNode)

			local mockEngine, engineInterface = MockEngine.new()
			local focusManager = parentNode.focusManager
			focusManager:initialize(engineInterface)
			childNodeA:focus()

			expect(focusManager:isNodeFocused(childNodeA)).to.equal(true)
			expect(focusManager:isNodeFocused(childNodeB)).to.equal(false)

			mockEngine:simulateSelectionChanged(childRefB:getValue())
			expect(focusManager:isNodeFocused(childNodeA)).to.equal(false)
			expect(focusManager:isNodeFocused(childNodeB)).to.equal(true)
		end)
	end)

	describe("Input binding", function()
		it("should only call bound inputs when the element is in focus", function()
			local rootRef, _ = Roact.createBinding(Instance.new("Frame"))
			local parentNode = FocusNode.newRoot(rootRef)

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
			local focusManager = parentNode.focusManager
			focusManager:initialize(engineInterface)
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
			local parentNode = FocusNode.newRoot(rootRef)
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
			local focusManager = parentNode.focusManager
			focusManager:initialize(engineInterface)
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
end