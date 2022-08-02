return function()
	local FocusArea = require(script.Parent.FocusArea)
	local CorePackages = game:GetService("CorePackages")
	local GuiService = game:GetService("GuiService")
	local ReactRoblox = require(CorePackages.Packages.ReactRoblox)
	local act = ReactRoblox.act
	local Roact = require(CorePackages.Roact)
	local common = require(script.Parent.common)
	local GetGuiServiceSelectEnabled = require(script.Parent.GetGuiServiceSelectEnabled)

	local guiServiceSelectEnabled

	local function createElement(name, props, children)
		local parentFrame = Instance.new("ScreenGui")
		parentFrame.Parent = game:GetService("CoreGui")
		local element = Roact.createFragment({ [name] = Roact.createElement(FocusArea, props, children) })

		return parentFrame, Roact.mount(element, parentFrame)
	end

	local function focus(focusAreaRef)
		act(function()
			focusAreaRef.current:requestFocus()
		end)
	end

	local function blur(focusAreaRef)
		act(function()
			focusAreaRef.current:yieldFocus()
		end)
	end

	beforeAll(function()
		guiServiceSelectEnabled = GetGuiServiceSelectEnabled()
	end)

	it("should create and destroy without errors (no props, one child)", function()
		if not guiServiceSelectEnabled then
			return
		end

		local _p, instance = createElement("EmptyFocusArea", {}, {
			Roact.createElement("Frame"),
		})
		Roact.unmount(instance)
	end)

	it("should create and destroy without errors (all props, multiple children)", function()
		if not guiServiceSelectEnabled then
			return
		end

		local focusAreaRef = Roact.createRef()

		local _p, instance = createElement("TestFocusArea1", {
			SelectionBehavior = Enum.SelectionBehavior.Escape,
			subscribeToNavigationEvents = false,
			requestOnMount = true,
			[Roact.Ref] = focusAreaRef,
		}, {
			ChildFrame = Roact.createElement("Frame"),
			SiblingFrame = Roact.createElement("Frame"),
		})

		expect(focusAreaRef.current).to.be.ok()

		Roact.unmount(instance)
	end)

	it("should check restoration behavior", function()
		if not guiServiceSelectEnabled then
			return
		end

		local focusAreaRef = Roact.createRef()

		local parentFrame, instance = createElement("TestFocusArea2", {
			SelectionBehavior = Enum.SelectionBehavior.Escape,
			requestOnMount = true,
			[Roact.Ref] = focusAreaRef,
		}, {
			ChildFrame = Roact.createElement("Frame"),
			SiblingFrame = Roact.createElement("Frame"),
			AnotherSibling = Roact.createElement("Frame"),
		})

		-- Check that the focus area exists
		expect(common.getSelection().Name).to.equal("TestFocusArea2")

		-- Change the selection
		GuiService.SelectedCoreObject = parentFrame:FindFirstChild("SiblingFrame", true)
		expect(common.getSelection().Name).to.equal("SiblingFrame")

		-- Blur the focus area
		expect(focusAreaRef.current).to.be.ok()
		blur(focusAreaRef)
		expect(common.getSelection()).to.equal(nil)

		-- Expect the selection state to be restored when refocused
		focus(focusAreaRef)
		expect(common.getSelection().Name).to.equal("SiblingFrame")

		Roact.unmount(instance)
	end)

	it("should check selection when no selectable children", function()
		if not guiServiceSelectEnabled then
			return
		end

		local focusAreaRef = Roact.createRef()

		local _p, instance = createElement("TestFocusArea3", {
			SelectionBehavior = Enum.SelectionBehavior.Escape,
			[Roact.Ref] = focusAreaRef,
		}, {
			ChildFrame = Roact.createElement("Frame"),
			SiblingFrame = Roact.createElement("Frame"),
			AnotherSibling = Roact.createElement("Frame"),
		})

		-- Check that if the default doesn't exist, the focus area is correctly selected
		expect(focusAreaRef.current).to.be.ok()
		focus(focusAreaRef)
		expect(common.getSelection().Name).to.equal("TestFocusArea3")

		Roact.unmount(instance)
	end)
end
