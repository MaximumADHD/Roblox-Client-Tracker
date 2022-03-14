return function()
	local Framework = script.Parent.Parent
	local Roact = require(Framework.Parent.Roact)
	-- TODO STUDIOPLAT-27078 Replace with Roact.act when all plugins use Roact 17 
	local act = if Roact.Ref == "ref" then Roact.act else function(fn) fn() end
	local withContext = require(script.Parent.withContext)
	local ContextItem = require(script.Parent.ContextItem)
	local provide = require(script.Parent.provide)

	local Util = require(Framework.Util)
	local Signal = Util.Signal

	local FFlagDevFrameworkUseCreateContext = game:GetFastFlag("DevFrameworkUseCreateContext")
	if not FFlagDevFrameworkUseCreateContext then
		return
	end

	it("should throw if called before defining Render", function()
		expect(function()
			local Component = Roact.PureComponent:extend("TestComponent")

			withContext({})(Component)

			function Component:render()
			end

		end).to.throw()
	end)

	it("should expect a ContextMap table", function()
		expect(function()
			local Component = Roact.PureComponent:extend("TestComponent")
			function Component:render()
			end

			withContext()(Component)
		end).to.throw()
	end)

	it("should pass items into props according to the ContextMap table", function()
		local confirmed = false

		local testItem = ContextItem:extend("TestItem")
		function testItem:confirm()
			confirmed = true
		end

		local Component = Roact.PureComponent:extend("TestComponent")
		function Component:render()
			local props = self.props
			local test = props.Test
			test:confirm()
		end
		local ComponentWithContext = withContext({
			Test = testItem,
		})(Component)

		local tree = provide({testItem}, {
			Component = Roact.createElement(ComponentWithContext),
		})
		local instance = Roact.mount(tree)
		Roact.unmount(instance)

		expect(confirmed).to.equal(true)
	end)

	it("should re-render the component when any ContextItem changes", function()
		local renders = 0

		local testItem = ContextItem:extend("TestItem")
		testItem.update = Signal.new()
		function testItem:fireUpdate()
			self.update:Fire(self)
		end
		function testItem:getSignal()
			return self.update
		end

		local otherItem = ContextItem:extend("OtherItem")
		otherItem.update = Signal.new()
		function otherItem:fireUpdate()
			self.update:Fire(self)
		end
		function otherItem:getSignal()
			return self.update
		end

		local Component = Roact.PureComponent:extend("TestComponent")
		function Component:render()
			renders = renders + 1
		end
		local ComponentWithContext = withContext({
			Test = testItem,
			Other = otherItem,
		})(Component)

		local tree = provide({testItem, otherItem}, {
			Component = Roact.createElement(ComponentWithContext),
		})
		local instance = Roact.mount(tree)

		expect(renders).to.equal(1)
		act(function()
			testItem:fireUpdate()
		end)
		expect(renders).to.equal(2)
		act(function()
			otherItem:fireUpdate()
		end)
		expect(renders).to.equal(3)
		Roact.unmount(instance)
	end)
end
