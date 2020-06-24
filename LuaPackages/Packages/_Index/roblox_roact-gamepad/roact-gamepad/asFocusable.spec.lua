return function()
	local Players = game:getService("Players")

	local Packages = script.Parent.Parent
	local Roact = require(Packages.Roact)

	local asFocusable = require(script.Parent.asFocusable)
	local FocusContext = require(script.Parent.FocusContext)
	local FocusNode = require(script.Parent.FocusNode)
	local MockEngine = require(script.Parent.Test.MockEngine)
	local createSpy = require(script.Parent.Test.createSpy)

	local function createRootNode(ref)
		local node = FocusNode.new({
			[Roact.Ref] = ref,
		})

		node:attachToTree(nil, function() end)

		return node
	end

	local function createTestContainer()
		local rootRef, _ = Roact.createBinding(Instance.new("Frame"))
		local focusNode = createRootNode(rootRef)
		local mockEngine, engineInterface = MockEngine.new()
		local focusManager = focusNode.focusManager
		focusManager:initialize(engineInterface)

		return {
			rootRef = rootRef,
			rootFocusNode = focusNode,
			focusManager = focusNode.focusManager,

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

			local focusManager = testContainer.focusManager

			expect(injectedRef:getValue()).to.be.ok()
			expect(focusManager.allNodes[injectedRef]).to.be.ok()
	
			local children = focusManager:getChildren(testContainer.rootFocusNode)
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

			local focusManager = testContainer.focusManager

			expect(injectedRef:getValue()).to.equal(nil)
			expect(focusManager.allNodes[injectedRef]).to.equal(nil)

			local children = focusManager:getChildren(testContainer.rootFocusNode)
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
			}))

			testContainer.focusManager:moveFocusTo(injectedRefA)

			expect(focusGainedSpy.callCount).to.equal(1)
			expect(focusChangedSpy.callCount).to.equal(1)
			focusChangedSpy:assertCalledWith(true)

			testContainer.focusManager:moveFocusTo(injectedRefB)

			expect(focusLostSpy.callCount).to.equal(1)
			expect(focusChangedSpy.callCount).to.equal(2)
			focusChangedSpy:assertCalledWith(false)

			Roact.unmount(tree)
		end)
	end)

	describe("Root vs non-root Focusable", function()
		it("should capture focus on mount if canBeRoot is true (and no root is above it)", function()
			local FocusableFrame = asFocusable("Frame")
			local focusGainedSpy = createSpy()

			local injectedRef = Roact.createRef()
			local tree = Roact.mount(Roact.createElement(FocusableFrame, {
				[Roact.Ref] = injectedRef,

				onFocusGained = focusGainedSpy.value,
				canBeRoot = true,
			}), Players.LocalPlayer.PlayerGui, "Test")

			expect(focusGainedSpy.callCount).to.equal(1)

			Roact.unmount(tree)
		end)

		it("should ignore focusable logic if canBeRoot is false (and no root is above it)", function()
			local FocusableFrame = asFocusable("Frame")
			local focusGainedSpy = createSpy()

			local injectedRef = Roact.createRef()
			local tree = Roact.mount(Roact.createElement(FocusableFrame, {
				[Roact.Ref] = injectedRef,

				onFocusGained = focusGainedSpy.value,
				canBeRoot = false,
			}))

			expect(focusGainedSpy.callCount).to.equal(0)

			Roact.unmount(tree)
		end)
	end)
end