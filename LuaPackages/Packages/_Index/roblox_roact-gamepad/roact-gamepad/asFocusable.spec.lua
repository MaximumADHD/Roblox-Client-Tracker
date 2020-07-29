return function()
	local Players = game:GetService("Players")

	local Packages = script.Parent.Parent
	local Roact = require(Packages.Roact)

	local asFocusable = require(script.Parent.asFocusable)
	local createRefCache = require(script.Parent.createRefCache)
	local FocusContext = require(script.Parent.FocusContext)
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

	local function createTestContainer()
		local rootRef, _ = Roact.createBinding(Instance.new("Frame"))
		local focusNode = createRootNode(rootRef)
		local mockEngine, engineInterface = MockEngine.new()
		focusNode.focusController[InternalApi]:initialize(engineInterface)

		return {
			rootRef = rootRef,
			rootFocusNode = focusNode,
			focusController = focusNode.focusController[InternalApi],

			mockEngine = mockEngine,
			engineInterface = engineInterface,
			getNode = function(ref)
				return focusNode.focusController[InternalApi].allNodes[ref]
			end,
			FocusProvider = function(props)
				return Roact.createElement(FocusContext.Provider, {
					value = focusNode
				}, props[Roact.Children])
			end
		}
	end

	describe("Focusable component basics", function()
		it("adds a new node to the focus tree when it mounts", function()
			local testContainer = createTestContainer()

			local FocusableFrame = asFocusable("Frame")

			local injectedRef = Roact.createRef()
			local tree = Roact.mount(Roact.createElement(testContainer.FocusProvider, {}, {
				FocusChild = Roact.createElement(FocusableFrame, {
					[Roact.Ref] = injectedRef,
				}),
			}))

			local focusController = testContainer.focusController

			expect(injectedRef:getValue()).to.be.ok()
			expect(focusController.allNodes[injectedRef]).to.be.ok()

			local children = focusController:getChildren(testContainer.rootFocusNode)
			expect(children[injectedRef]).to.be.ok()

			Roact.unmount(tree)
		end)

		it("removes nodes from the focus tree when the component unmounts", function()
			local testContainer = createTestContainer()

			local FocusableFrame = asFocusable("Frame")

			local injectedRef = Roact.createRef()
			local tree = Roact.mount(Roact.createElement(testContainer.FocusProvider, {}, {
				FocusChild = Roact.createElement(FocusableFrame, {
					[Roact.Ref] = injectedRef,
				}),
			}))

			-- Update the tree with the child focusable frame absent, which will
			-- unmount it from the tree
			Roact.update(tree, Roact.createElement(testContainer.FocusProvider))

			local focusController = testContainer.focusController

			expect(injectedRef:getValue()).to.equal(nil)
			expect(focusController.allNodes[injectedRef]).to.equal(nil)

			local children = focusController:getChildren(testContainer.rootFocusNode)
			expect(children[injectedRef]).to.equal(nil)

			Roact.unmount(tree)
		end)

		it("triggers callbacks when focus changes", function()
			local testContainer = createTestContainer()
			local FocusableFrame = asFocusable("Frame")

			local focusGainedSpy = createSpy()
			local focusLostSpy = createSpy()
			local focusChangedSpy = createSpy()

			local childRefA = Roact.createRef()
			local childRefB = Roact.createRef()
			local tree = Roact.mount(Roact.createElement(testContainer.FocusProvider, {}, {
				FocusChildA = Roact.createElement(FocusableFrame, {
					[Roact.Ref] = childRefA,

					onFocusGained = focusGainedSpy.value,
					onFocusLost = focusLostSpy.value,
					onFocusChanged = focusChangedSpy.value,
				}),
				FocusChildB = Roact.createElement(FocusableFrame, {
					[Roact.Ref] = childRefB,
				})
			}), testContainer.rootRef:getValue())

			testContainer.focusController:moveFocusTo(childRefA)

			expect(focusGainedSpy.callCount).to.equal(1)
			expect(focusChangedSpy.callCount).to.equal(1)
			focusChangedSpy:assertCalledWith(true)

			testContainer.focusController:moveFocusTo(childRefB)

			expect(focusLostSpy.callCount).to.equal(1)
			expect(focusChangedSpy.callCount).to.equal(2)
			focusChangedSpy:assertCalledWith(false)

			Roact.unmount(tree)
		end)
	end)

	describe("Root vs non-root Focusable", function()
		it("should ignore focusable logic if no parent or controller is provided", function()
			local FocusableFrame = asFocusable("Frame")
			local focusGainedSpy = createSpy()

			local tree = Roact.mount(Roact.createElement(FocusableFrame, {
				onFocusGained = focusGainedSpy.value,
			}))

			expect(focusGainedSpy.callCount).to.equal(0)

			Roact.unmount(tree)
		end)

		it("should initialize and teardown focusController when it's the root", function()
			local FocusableFrame = asFocusable("Frame")

			-- This test is testing the automatic initialization of the internal
			-- focusController based on the instance tree it's attached to. To
			-- do this, we depend on the using a PlayerGui instance to avoid
			-- simulate the real-world use case instead of the mock engine
			expect(Players.LocalPlayer.PlayerGui).to.be.ok()

			local focusController = FocusController.createPublicApiWrapper()
			local tree = Roact.mount(Roact.createElement(FocusableFrame, {
				focusController = focusController,
			}), Players.LocalPlayer.PlayerGui)

			expect(focusController[InternalApi].engineInterface).never.to.equal(nil)

			Roact.unmount(tree)

			expect(focusController[InternalApi].engineInterface).to.equal(nil)
		end)
	end)

	-- These tests rely on the fact that a FocusController passed to a Focusable
	-- component will _not_ be automatically initialized if it's not mounted
	-- under a PlayerGui. We leverage this technicality to initialize it
	-- ourselves with the mock engine interface.
	describe("Refresh focus logic", function()
		it("Should redirect focus to the parent when a focused child is detached", function()
			local FocusableFrame = asFocusable("Frame")
			local focusController = FocusController.createPublicApiWrapper()
			local function getNode(ref)
				return focusController[InternalApi].allNodes[ref]
			end

			local refs = createRefCache()

			local tree = Roact.mount(Roact.createElement(FocusableFrame, {
				focusController = focusController,
				[Roact.Ref] = refs.root,
			}, {
				FocusChild = Roact.createElement(FocusableFrame, {
					[Roact.Ref] = refs.child,
				}),
			}), nil)

			local focusControllerInternal = focusController[InternalApi]
			local _, engineInterface = MockEngine.new()
			focusControllerInternal:initialize(engineInterface)

			local childNode = getNode(refs.child)
			childNode:focus()
			expect(focusControllerInternal:isNodeFocused(childNode)).to.equal(true)

			tree = Roact.update(tree, Roact.createElement(FocusableFrame, {
				focusController = focusController,
				[Roact.Ref] = refs.root,
			}))

			local rootNode = getNode(refs.root)
			expect(focusControllerInternal:isNodeFocused(rootNode)).to.equal(true)

			Roact.unmount(tree)
		end)

		it("Should trigger parent focus logic when a focused child is detached", function()
			local FocusableFrame = asFocusable("Frame")
			local focusController = FocusController.createPublicApiWrapper()
			local function getNode(ref)
				return focusController[InternalApi].allNodes[ref]
			end

			local refs = createRefCache()

			local tree = Roact.mount(Roact.createElement(FocusableFrame, {
				focusController = focusController,
			}, {
				FocusChildA = Roact.createElement(FocusableFrame, {
					[Roact.Ref] = refs.childA,
				}),
				FocusChildB = Roact.createElement(FocusableFrame, {
					[Roact.Ref] = refs.childB,
				}),
			}), nil)

			local focusControllerInternal = focusController[InternalApi]
			local _, engineInterface = MockEngine.new()
			focusControllerInternal:initialize(engineInterface)

			local childNodeA = getNode(refs.childA)
			childNodeA:focus()
			expect(focusControllerInternal:isNodeFocused(childNodeA)).to.equal(true)

			tree = Roact.update(tree, Roact.createElement(FocusableFrame, {
				focusController = focusController,
			}, {
				FocusChildB = Roact.createElement(FocusableFrame, {
					[Roact.Ref] = refs.childB,
				}),
			}))

			local childNodeB = getNode(refs.childB)
			expect(focusControllerInternal:isNodeFocused(childNodeB)).to.equal(true)

			Roact.unmount(tree)
		end)

		it("Should trigger parent focus logic when a node has children added to it", function()
			local FocusableFrame = asFocusable("Frame")
			local focusController = FocusController.createPublicApiWrapper()
			local function getNode(ref)
				return focusController[InternalApi].allNodes[ref]
			end

			local refs = createRefCache()

			local tree = Roact.mount(Roact.createElement(FocusableFrame, {
				focusController = focusController,
				[Roact.Ref] = refs.root,
			}), nil)

			local focusControllerInternal = focusController[InternalApi]
			local _, engineInterface = MockEngine.new()
			focusControllerInternal:initialize(engineInterface)

			focusController.captureFocus()
			local rootNode = getNode(refs.root)
			expect(focusControllerInternal:isNodeFocused(rootNode)).to.equal(true)

			tree = Roact.update(tree, Roact.createElement(FocusableFrame, {
				focusController = focusController,
				[Roact.Ref] = refs.root,
			}, {
				FocusChild = Roact.createElement(FocusableFrame, {
					[Roact.Ref] = refs.child,
				}),
			}))

			local childNode = getNode(refs.child)
			expect(focusControllerInternal:isNodeFocused(childNode)).to.equal(true)

			Roact.unmount(tree)
		end)

		it("Should not refocus when adding children to a parent that already has at least one child", function()
			local FocusableFrame = asFocusable("Frame")
			local focusController = FocusController.createPublicApiWrapper()
			local function getNode(ref)
				return focusController[InternalApi].allNodes[ref]
			end

			local childRefA = Roact.createRef()

			local tree = Roact.mount(Roact.createElement(FocusableFrame, {
				focusController = focusController,
			}, {
				FocusChildA = Roact.createElement(FocusableFrame, {
					[Roact.Ref] = childRefA,
				}),
			}), nil)

			local focusControllerInternal = focusController[InternalApi]
			local _, engineInterface = MockEngine.new()
			focusControllerInternal:initialize(engineInterface)

			local childNodeA = getNode(childRefA)
			childNodeA:focus()
			expect(focusControllerInternal:isNodeFocused(childNodeA)).to.equal(true)

			tree = Roact.update(tree, Roact.createElement(FocusableFrame, {
				focusController = focusController,
			}, {
				FocusChildA = Roact.createElement(FocusableFrame, {
					[Roact.Ref] = childRefA,
				}),
				FocusChildB = Roact.createElement(FocusableFrame),
			}))

			-- Focus should not have moved as a result of the above change
			expect(focusControllerInternal:isNodeFocused(childNodeA)).to.equal(true)

			Roact.unmount(tree)
		end)
	end)

	describe("Component behavior", function()
		it("should not replace any provided event handlers", function()
			local FocusableFrame = asFocusable("Frame")
			local focusController = FocusController.createPublicApiWrapper()

			local ancestryChangedSpy = createSpy()
			local descendantAddedSpy = createSpy()
			local descendantRemovedSpy = createSpy()
			local rootRef = Roact.createRef()

			local tree = Roact.mount(Roact.createElement(FocusableFrame, {
				focusController = focusController,
				[Roact.Ref] = rootRef,

				[Roact.Event.AncestryChanged] = ancestryChangedSpy.value,
				[Roact.Event.DescendantAdded] = descendantAddedSpy.value,
				[Roact.Event.DescendantRemoving] = descendantRemovedSpy.value,
			}), nil)

			expect(ancestryChangedSpy.callCount).to.equal(0)
			expect(descendantAddedSpy.callCount).to.equal(0)
			expect(descendantRemovedSpy.callCount).to.equal(0)

			local newParentFrame = Instance.new("Frame")
			rootRef:getValue().Parent = newParentFrame
			expect(ancestryChangedSpy.callCount).to.equal(1)

			local newChildFrame = Instance.new("Frame")
			newChildFrame.Parent = rootRef:getValue()
			expect(descendantAddedSpy.callCount).to.equal(1)

			newChildFrame.Parent = nil
			expect(descendantRemovedSpy.callCount).to.equal(1)

			Roact.unmount(tree)
		end)
	end)
end