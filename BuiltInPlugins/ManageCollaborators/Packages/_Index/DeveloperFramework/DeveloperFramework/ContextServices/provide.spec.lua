return function()

	local FFlagDevFrameworkUseCreateContext = game:GetFastFlag("DevFrameworkUseCreateContext")
	
	local Framework = script.Parent.Parent
	local Roact = require(Framework.Parent.Roact)
	local provide = require(script.Parent.provide)
	local withContext = require(script.Parent.withContext)
	-- TODO: When FFlagDevFrameworkUseCreateContext is retired remove this require
	local Provider = require(script.Parent.Provider)
	local ContextItem = require(script.Parent.ContextItem)

	it("should expect a ContextItems list and Children table", function()
		expect(function()
			provide()
		end).to.throw()

		expect(function()
			provide({})
		end).to.throw()

		provide({}, {})
	end)

	it("should expect each entry to be a ContextItem", function()
		local testTable = {}
		local element = provide({testTable}, {
			Frame = Roact.createElement("Frame"),
		})

		expect(function()
			local instance = Roact.mount(element)
			Roact.unmount(instance)
		end).to.throw()
	end)

	if FFlagDevFrameworkUseCreateContext then
		it("should allow holes in the input array", function()
			local One = ContextItem:extend("One")
			One.value = "one"
			local Two = ContextItem:extend("Two")
			Two.value = "two"

			local Consumer = Roact.PureComponent:extend("Consumer")
			local result = nil
			function Consumer:render()
				local props = self.props
				result = ("%s,%s"):format(props.One.value, props.Two.value)
			end
			Consumer = withContext({
				One = One,
				Two = Two,
			})(Consumer)

			local element = provide({One, nil, Two}, {
				Frame = Roact.createElement(Consumer),
			})

			local instance = Roact.mount(element)
			Roact.unmount(instance)

			expect(result).to.equal("one,two")
		end)
	end

	it("should render the components in Children", function()
		local container = Instance.new("Folder")

		local element = provide({}, {
			Frame = Roact.createElement("Frame"),
			Frame2 = Roact.createElement("Frame"),
		})

		local instance = Roact.mount(element, container)
		local frame = container:FindFirstChild("Frame")
		local frame2 = container:FindFirstChild("Frame2")
		expect(frame).to.be.ok()
		expect(frame2).to.be.ok()

		Roact.unmount(instance)
	end)

	-- TODO: Remove when FFlagDevFrameworkUseCreateContext is retired
	-- ContextItems can no longer cross-rely on each other as this
	-- breaks Roact's onion-skin context model
	if not FFlagDevFrameworkUseCreateContext then
		it("should provide each ContextItem to context", function()
			local confirmed = false

			local testItem = ContextItem:extend("TestItem")
			function testItem:createProvider(root)
				return Roact.createElement(Provider, {
					ContextItem = self,
					UpdateSignal = self.update,
				}, {root})
			end

			local otherItem = ContextItem:extend("OtherItem")
			function otherItem:createProvider(root)
				return Roact.createElement(Provider, {
					ContextItem = self,
					UpdateSignal = self.update,
				}, {root})
			end

			local Component = Roact.PureComponent:extend("TestComponent")

			function Component:render()
				if self._context[testItem.Key]
					and self._context[otherItem.Key] then
					confirmed = true
				end
			end

			local element = provide({testItem, otherItem}, {
				Component = Roact.createElement(Component),
			})

			local folder = Instance.new("Folder")
			local instance = Roact.mount(element, folder)
			Roact.unmount(instance)

			expect(confirmed).to.equal(true)
		end)
	end
end