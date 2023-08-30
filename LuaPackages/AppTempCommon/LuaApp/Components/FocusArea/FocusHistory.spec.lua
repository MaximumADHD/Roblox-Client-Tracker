--!nonstrict
return function()
	local CorePackages = game:GetService("CorePackages")

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect
	local jest = JestGlobals.jest

	local Roact = require(CorePackages.Roact)
	local Cryo = require(CorePackages.Cryo)

	local FocusHistory = require(script.Parent.FocusHistory)

	local MockFocusArea = Roact.PureComponent:extend("MockFocusArea")

	function MockFocusArea:init()
		self.props.passBackTag(self.props.Name, self)

		self.handleFocus = function()
			self.props.handleFocus()
		end

		self.handleBlur = function()
			self.props.handleBlur()
		end
	end

	function MockFocusArea:render()
		return Roact.createElement("Frame", {
			key = self.props.Name,
		})
	end

	local function createFragment(passBackTag, context)
		local elementNames = { "MockFocusArea1", "MockFocusArea2", "MockFocusArea3" }

		local parent = Instance.new("Frame")
		local fragment = Roact.createFragment(Cryo.List.map(elementNames, function(name)
			local handleFocus = jest.fn()
			local handleBlur = jest.fn()

			context[name] = { handleFocus = handleFocus, handleBlur = handleBlur }

			return Roact.createElement(MockFocusArea, {
				Name = name,
				handleFocus = handleFocus,
				handleBlur = handleBlur,
				passBackTag = passBackTag,
			})
		end))

		local instance = Roact.mount(fragment, parent)

		context.cleanup = function()
			Roact.unmount(instance)
			parent:Destroy()
		end
	end

	beforeEach(function(c)
		c.tags = {}

		local function passBackTag(name, tag)
			c.tags[name] = tag
		end

		createFragment(passBackTag, c)
	end)

	it("should register three focus areas with unique tags", function(c)
		expect(c.tags.MockFocusArea1).never.toBe(c.tags.MockFocusArea2)
		expect(c.tags.MockFocusArea2).never.toBe(c.tags.MockFocusArea3)
		expect(c.tags.MockFocusArea1).never.toBe(c.tags.MockFocusArea3)

		c.cleanup()
	end)

	it("should request and cede the focus for focus area 1", function(c)
		FocusHistory.requestFocus(c.tags.MockFocusArea1)
		expect(c.MockFocusArea1.handleFocus).toHaveBeenCalledTimes(1)
		expect(c.MockFocusArea1.handleBlur).never.toHaveBeenCalled()

		FocusHistory.yieldFocus(c.tags.MockFocusArea1)
		expect(c.MockFocusArea1.handleBlur).toHaveBeenCalledTimes(1)

		c.cleanup()
	end)

	it("should check that when focus areas cede their focus, it's returned to priorly selected items", function(c)
		FocusHistory.requestFocus(c.tags.MockFocusArea1)
		expect(c.MockFocusArea1.handleFocus).toHaveBeenCalledTimes(1)
		expect(c.MockFocusArea1.handleBlur).never.toHaveBeenCalled()

		FocusHistory.requestFocus(c.tags.MockFocusArea2)
		expect(c.MockFocusArea1.handleFocus).toHaveBeenCalledTimes(1)
		expect(c.MockFocusArea1.handleBlur).toHaveBeenCalledTimes(1)
		expect(c.MockFocusArea2.handleFocus).toHaveBeenCalledTimes(1)
		expect(c.MockFocusArea2.handleBlur).never.toHaveBeenCalled()

		FocusHistory.requestFocus(c.tags.MockFocusArea3)
		expect(c.MockFocusArea1.handleFocus).toHaveBeenCalledTimes(1)
		expect(c.MockFocusArea1.handleBlur).toHaveBeenCalledTimes(1)
		expect(c.MockFocusArea2.handleFocus).toHaveBeenCalledTimes(1)
		expect(c.MockFocusArea2.handleBlur).toHaveBeenCalledTimes(1)
		expect(c.MockFocusArea3.handleFocus).toHaveBeenCalledTimes(1)
		expect(c.MockFocusArea3.handleBlur).never.toHaveBeenCalled()

		FocusHistory.yieldFocus(c.tags.MockFocusArea3)
		expect(c.MockFocusArea1.handleFocus).toHaveBeenCalledTimes(1)
		expect(c.MockFocusArea1.handleBlur).toHaveBeenCalledTimes(1)
		expect(c.MockFocusArea2.handleFocus).toHaveBeenCalledTimes(2)
		expect(c.MockFocusArea2.handleBlur).toHaveBeenCalledTimes(1)
		expect(c.MockFocusArea3.handleBlur).toHaveBeenCalledTimes(1)

		FocusHistory.yieldFocus(c.tags.MockFocusArea2)
		expect(c.MockFocusArea1.handleFocus).toHaveBeenCalledTimes(2)
		expect(c.MockFocusArea1.handleBlur).toHaveBeenCalledTimes(1)
		expect(c.MockFocusArea2.handleBlur).toHaveBeenCalledTimes(2)

		FocusHistory.yieldFocus(c.tags.MockFocusArea1)
		expect(c.MockFocusArea1.handleBlur).toHaveBeenCalledTimes(2)
	end)

	it("should check that when focus areas cannot duplicate in history", function(c)
		FocusHistory.requestFocus(c.tags.MockFocusArea1)
		FocusHistory.requestFocus(c.tags.MockFocusArea2)
		FocusHistory.requestFocus(c.tags.MockFocusArea3)

		FocusHistory.requestFocus(c.tags.MockFocusArea1)

		-- Check that got back focus
		expect(c.MockFocusArea1.handleFocus).toHaveBeenCalledTimes(2)

		-- Check that everything else blurred a little
		expect(c.MockFocusArea1.handleBlur).toHaveBeenCalledTimes(1)
		expect(c.MockFocusArea2.handleBlur).toHaveBeenCalledTimes(2)
		expect(c.MockFocusArea3.handleBlur).toHaveBeenCalledTimes(1)
	end)

	it("should check that when focus areas cannot cede if they don't have focus", function(c)
		FocusHistory.requestFocus(c.tags.MockFocusArea1)
		FocusHistory.requestFocus(c.tags.MockFocusArea2)
		FocusHistory.requestFocus(c.tags.MockFocusArea3)

		FocusHistory.yieldFocus(c.tags.MockFocusArea2)
		expect(c.MockFocusArea1.handleFocus).toHaveBeenCalledTimes(1)
		expect(c.MockFocusArea1.handleBlur).toHaveBeenCalledTimes(1)
		expect(c.MockFocusArea2.handleFocus).toHaveBeenCalledTimes(1)
		expect(c.MockFocusArea2.handleBlur).toHaveBeenCalledTimes(1)
		expect(c.MockFocusArea3.handleFocus).toHaveBeenCalledTimes(1)
		expect(c.MockFocusArea3.handleBlur).never.toHaveBeenCalled()
	end)
end
