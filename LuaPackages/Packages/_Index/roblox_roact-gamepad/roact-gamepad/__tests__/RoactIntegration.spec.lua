return function()
	local Packages = script.Parent.Parent.Parent
	local Roact = require(Packages.Roact)
	local Cryo = require(Packages.Cryo)

	local asFocusable = require(script.Parent.Parent.asFocusable)
	local createRefCache = require(script.Parent.Parent.createRefCache)
	local FocusController = require(script.Parent.Parent.FocusController)
	local InternalApi = require(script.Parent.Parent.FocusControllerInternalApi)
	local MockEngine = require(script.Parent.Parent.Test.MockEngine)

	local FocusableFrame = asFocusable("Frame")

	-- Assigns a ref only after a re-render on a subsequent frame
	local LateBind = Roact.Component:extend("AssignsRefOnReRender")
	function LateBind:init()
		self:setState({ hasMounted = false })
	end
	function LateBind:didMount()
		self:setState({ hasMounted = true })
	end
	function LateBind:render()
		if not self.state.hasMounted then
			return nil
		end

		return Roact.createElement("Frame", {
			LayoutOrder = self.props.LayoutOrder,
			[Roact.Ref] = self.props.forwardRef
		})
	end

	local FocusableLateBind = asFocusable(Roact.forwardRef(function(props, ref)
		return Roact.createElement(LateBind, Cryo.Dictionary.join(props, {
			forwardRef = ref,
		}))
	end))

	local FocusRoot = Roact.Component:extend("FocusRoot")
	function FocusRoot:render()
		return Roact.createElement(FocusableFrame, {
			onFocusGained = self.props.onFocusGained,
			focusController = self.props.focusController,
			defaultChild = self.props.defaultChild,
		}, self.props[Roact.Children])
	end

	function FocusRoot:didMount()
		local focusControllerInternal = self.props.focusController[InternalApi]
		focusControllerInternal:initialize(self.props.engineInterface)
	end

	describe("default focus cascading", function()
		it("waits for default target on capture", function()
			local refs = createRefCache()
			local focusController = FocusController.createPublicApiWrapper()
			local _, engineInterface = MockEngine.new()

			-- Queue up focus capture
			focusController:captureFocus()

			local tree = Roact.mount(Roact.createElement(FocusRoot, {
				focusController = focusController,
				engineInterface = engineInterface,
				defaultChild = refs.secondChild,
			}, {
				FirstChild = Roact.createElement(FocusableFrame, {
					[Roact.Ref] = refs.firstChild,
				}),
			}))

			-- We've mounted the tree, but default selection cannot be made yet
			expect(engineInterface.getSelection()).never.to.be.ok()

			Roact.update(tree, Roact.createElement(FocusRoot, {
				focusController = focusController,
				defaultChild = refs.secondChild,
				[Roact.Ref] = refs.root,
			}, {
				FirstChild = Roact.createElement(FocusableFrame, {
					[Roact.Ref] = refs.firstChild,
				}),
				SecondChild = Roact.createElement(FocusableFrame, {
					[Roact.Ref] = refs.secondChild,
				}),
			}))

			-- wait a frame for the focus capturing to kick in
			wait()

			-- Now that the default child exists, focus can continue to cascade
			-- down to it
			expect(refs.secondChild.current).to.be.ok()
			expect(engineInterface.getSelection()).to.equal(refs.secondChild.current)

			Roact.unmount(tree)
		end)

		it("times out and picks an arbitrary child if the specified default never materializes", function()
			local refs = createRefCache()
			local focusController = FocusController.createPublicApiWrapper()
			local _, engineInterface = MockEngine.new()

			-- Queue up focus capture
			focusController:captureFocus()

			local tree = Roact.mount(Roact.createElement(FocusRoot, {
				focusController = focusController,
				engineInterface = engineInterface,
				-- Doesn't mount just yet, so we should wait some time for it to
				-- exist after we mount
				defaultChild = refs.childThatIsNotRealAndNeverWillBe,
			}, {
				RealChild = Roact.createElement(FocusableFrame, {
					[Roact.Ref] = refs.realChild,
				}),
			}))

			-- Check that focus has not yet been resolved
			expect(refs.childThatIsNotRealAndNeverWillBe.current).never.to.be.ok()
			expect(engineInterface.getSelection()).never.to.be.ok()

			-- Wait long enough for the timeout to trigger
			-- FIXME: tune timeout or make it configurable
			wait(0.6)

			-- After a while, just focus a child that's actually valid
			expect(refs.realChild.current).to.be.ok()
			expect(engineInterface.getSelection()).to.equal(refs.realChild.current)

			Roact.unmount(tree)
		end)

		it("will not capture focus for nil refs", function()
			local refs = createRefCache()
			local focusController = FocusController.createPublicApiWrapper()
			local _, engineInterface = MockEngine.new()

			-- Queue up focus capture
			focusController:captureFocus()

			-- Add a whole bunch of children that _could_ capture focus, but
			-- won't assign their refs until after they've mounted and
			-- re-rendered
			local children = {}
			for i = 1, 50 do
				local name = "LateChild" .. tostring(i)
				children[name] = Roact.createElement(FocusableLateBind, {
					[Roact.Ref] = refs[name],
				})
			end
			children.ValidChild = Roact.createElement(FocusableFrame, {
				[Roact.Ref] = refs.ValidChild,
			})

			local didFocusRoot = false
			local tree = Roact.mount(Roact.createElement(FocusRoot, {
				focusController = focusController,
				engineInterface = engineInterface,
				onFocusGained = function()
					didFocusRoot = true
				end
			}, children))

			-- Make sure we tried to capture focus to begin with
			expect(didFocusRoot).to.be.ok()
			-- In legacy Roact, we don't render till the whole tree has finished
			-- resolving, including re-rendering children if the queued the
			-- re-render in place; so any of the 51 children will have a valid
			-- ref. But in Roact 17, we'll mount and initialize the
			-- focusController after one (or fewer) passes at the children. The
			-- odds that we grab an invalid arbitrary one are much higher unless
			-- we explicitly avoid `nil` refs.
			expect(engineInterface.getSelection()).to.be.ok()

			Roact.unmount(tree)
		end)

		it("will wait to capture focus if the root node has not been added yet", function()
			local rootRef = Roact.createRef()
			local focusController = FocusController.createPublicApiWrapper()
			local _, engineInterface = MockEngine.new()

			-- Queue up focus capture and initialize the focus controller; even
			-- though it'll be initialized, no root will have yet been attached
			focusController:captureFocus()
			local focusControllerInternal = focusController[InternalApi]
			focusControllerInternal:initialize(engineInterface)

			local tree = Roact.mount(Roact.createElement(FocusableFrame, {
				focusController = focusController,
				[Roact.Ref] = rootRef,
			}))

			expect(rootRef.current).to.be.ok()
			expect(engineInterface.getSelection()).to.equal(rootRef.current)

			Roact.unmount(tree)
		end)
	end)
end