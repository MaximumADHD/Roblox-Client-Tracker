return function()
	local Players = game:GetService("Players")

	local Packages = script.Parent.Parent
	local Roact = require(Packages.Roact)

	local asFocusable = require(script.Parent.asFocusable)
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
		focusNode:initializeRoot(engineInterface)

		return {
			rootRef = rootRef,
			rootFocusNode = focusNode,
			focusController = focusNode.focusController[InternalApi],

			mockEngine = mockEngine,
			engineInterface = engineInterface,
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

			local injectedRefA = Roact.createRef()
			local injectedRefB = Roact.createRef()
			local tree = Roact.mount(Roact.createElement(testContainer.FocusProvider, {}, {
				FocusChildA = Roact.createElement(FocusableFrame, {
					[Roact.Ref] = injectedRefA,

					onFocusGained = focusGainedSpy.value,
					onFocusLost = focusLostSpy.value,
					onFocusChanged = focusChangedSpy.value,
				}),
				FocusChildB = Roact.createElement(FocusableFrame, {
					[Roact.Ref] = injectedRefB,
				})
			}), testContainer.rootRef:getValue())

			testContainer.focusController:moveFocusTo(injectedRefA)

			expect(focusGainedSpy.callCount).to.equal(1)
			expect(focusChangedSpy.callCount).to.equal(1)
			focusChangedSpy:assertCalledWith(true)

			testContainer.focusController:moveFocusTo(injectedRefB)

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
end