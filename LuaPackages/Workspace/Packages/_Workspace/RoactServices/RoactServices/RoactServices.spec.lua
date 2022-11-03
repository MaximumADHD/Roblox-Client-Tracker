--!nonstrict
return function()
	--[[
	These tests will throw warnings into the console. These warnings include :
	> "props[Children] was defined but was overriden by third parameter to createElement!"
		This is because RoactServices and RoactServices.ServiceProvider are not meant to be initialized this often.
		This is fine.s
]]
	local RoactServices = require(script.Parent.RoactServices)

	local Root = script.Parent
	local Packages = Root.Parent
	local Roact = require(Packages.Roact)
	local act = require(Packages.Dev.ReactRoblox).act

	describe("ServiceProvider", function()
		it("should render the provided children", function()
			local testComponentRendered = false
			local testComponent = function()
				testComponentRendered = true
			end

			-- the whole point of ServiceProvider is that you would pass in service definitions as props,
			--  but that functionality will be tested elsewhere. This test should just cover that it
			--  can properly render components and its internal init() and render() functions don't throw.
			local element = Roact.createElement(RoactServices.ServiceProvider, nil, {
				test = Roact.createElement(testComponent),
			})
			local instance = Roact.mount(element)
			Roact.unmount(instance)

			expect(testComponentRendered).to.equal(true)
		end)
	end)

	describe("createService()", function()
		it("should create an object with a get and set function", function()
			local service = RoactServices.createService("test")
			expect(service).to.be.ok()
			expect(type(service.get)).to.equal("function")
			expect(type(service.set)).to.equal("function")
		end)
	end)

	describe("connect()", function()
		it("should construct a component with the stored services exposed to the provided props", function()
			-- This test needs to be read from the bottom upwards
			local testService1 = RoactServices.createService("test1")
			local testService2 = RoactServices.createService("test2")
			local testService3 = RoactServices.createService("test3")

			local testService1Value = {
				a = 1,
				b = 2,
				c = 3,
			}
			local testService2Value = "someKindOfString"
			local testService3Value = 1

			local testValue1Matches = false
			local testValue2Matches = false
			local testValue3Matches = false

			-- create a component to read the test values
			local testComponent = Roact.Component:extend("test")

			function testComponent:render()
				testValue1Matches = self.props.value1 == testService1Value
				testValue2Matches = self.props.value2 == testService2Value
				testValue3Matches = self.props.value3 == testService3Value
				return Roact.createElement("Frame")
			end

			-- assign the values from the service into the props
			testComponent = RoactServices.connect({
				value1 = testService1,
				value2 = testService2,
				value3 = testService3,
			})(testComponent)

			-- initialize the heirarchy and the values the services should return
			local element = Roact.createElement(RoactServices.ServiceProvider, {
				services = {
					[testService1] = testService1Value,
					[testService2] = testService2Value,
					[testService3] = testService3Value,
				},
			}, {
				test = Roact.createElement(testComponent),
			})
			local instance = Roact.mount(element)
			Roact.unmount(instance)

			expect(testValue1Matches).to.equal(true)
			expect(testValue2Matches).to.equal(true)
			expect(testValue3Matches).to.equal(true)
		end)

		it("should throw if no services are provided to connect", function()
			expect(function()
				-- create a simple test component
				local testComponent = Roact.Component:exend("test")
				function testComponent.render()
					return Roact.createElement("Frame")
				end

				-- improperly hook it up to RoactServices
				testComponent = (RoactServices :: any).connect()(testComponent)

				-- attempt to render this failure
				local element = Roact.createElement(RoactServices.ServiceProvider, nil, {
					test = Roact.createElement(testComponent),
				})
				local instance = Roact.mount(element)
				Roact.unmount(instance)
			end).to.throw()
		end)

		it("should throw if no component is provided to connect", function()
			expect(function()
				-- create a service to hook up
				local testService = RoactServices.createService("test")

				-- attempt to connect it to nothing
				local testComponent = (RoactServices :: any).connect({
					testProp1 = testService,
				})()

				-- attempt to render this failure
				local element = Roact.createElement(RoactServices.ServiceProvider, {
					services = {
						[testService] = "foo",
					},
				}, {
					test = Roact.createElement(testComponent),
				})
				local instance = Roact.mount(element)
				Roact.unmount(instance)
			end).to.throw()
		end)

		it("should pass props down through its connection", function()
			-- This test needs to be read from the bottom upwards
			local testService = RoactServices.createService("test")
			local testPropNameValue = "testName"

			local testPropExists = false
			local testPropMatches = false

			-- create a component to read the test values
			local testComponent = Roact.Component:extend("test")

			function testComponent:render()
				-- check that the props passed to the testComponent
				testPropExists = self.props.name ~= nil
				testPropMatches = self.props.name == testPropNameValue

				return Roact.createElement("Frame")
			end

			-- wrap the component in a connection
			testComponent = RoactServices.connect({
				testServiceProp = testService,
			})(testComponent)

			-- initialize the heirarchy and the values the services should return
			local element = Roact.createElement(RoactServices.ServiceProvider, {
				services = {
					-- this value doesn't matter for this test
					[testService] = "",
				},
			}, {
				-- add some props to the created component
				testComponentWithProps = Roact.createElement(testComponent, {
					-- double check that these props exist on the created component
					name = testPropNameValue,
				}),
			})
			local instance = Roact.mount(element)
			Roact.unmount(instance)

			expect(testPropExists).to.equal(true)
			expect(testPropMatches).to.equal(true)
		end)

		it("should update props passed down through its connection", function()
			local testService = RoactServices.createService("test")

			local capturedNameProp
			local testComponent = Roact.Component:extend("test")

			function testComponent:render()
				capturedNameProp = self.props.name
				return Roact.createElement("Frame")
			end

			-- wrap the component in a connection
			testComponent = RoactServices.connect({
				testServiceProp = testService,
			})(testComponent)

			local update
			local testComponentWrapper = Roact.Component:extend("testWrapper")

			function testComponentWrapper:init()
				self:setState({
					name = "name1",
				})

				update = function()
					self:setState({
						name = "name2",
					})
				end
			end

			function testComponentWrapper:render()
				return Roact.createElement(testComponent, {
					name = self.state.name,
				})
			end

			-- initialize the heirarchy and the values the services should return
			local element = Roact.createElement(RoactServices.ServiceProvider, {
				services = {
					-- this value doesn't matter for this test
					[testService] = "",
				},
			}, {
				testComponentWrapper = Roact.createElement(testComponentWrapper),
			})
			local instance = Roact.mount(element)

			expect(capturedNameProp).to.equal("name1")
			act(function()
				update()
			end)
			expect(capturedNameProp).to.equal("name2")

			Roact.unmount(instance)
		end)

		it("should apply services to updated props", function()
			local testService = RoactServices.createService("test")
			local testServiceValue = {
				testServiceFunc = function(inputString)
					return inputString .. "Served"
				end,
			}

			local capturedNameProp
			local capturedServiceResult
			local testComponent = Roact.Component:extend("test")

			function testComponent:render()
				capturedNameProp = self.props.name
				local serviceFunc = self.props.testServiceProp.testServiceFunc
				expect(serviceFunc).to.be.ok()
				capturedServiceResult = serviceFunc(self.props.name)
			end

			-- wrap the component in a connection
			testComponent = RoactServices.connect({
				testServiceProp = testService,
			})(testComponent)

			local update
			local testComponentWrapper = Roact.Component:extend("testWrapper")

			function testComponentWrapper:init()
				self:setState({
					name = "name1",
				})

				update = function()
					self:setState({
						name = "name2",
					})
				end
			end

			function testComponentWrapper:render()
				return Roact.createElement(testComponent, {
					name = self.state.name,
				})
			end

			local element = Roact.createElement(RoactServices.ServiceProvider, {
				services = {
					[testService] = testServiceValue,
				},
			}, {
				testComponentWrapper = Roact.createElement(testComponentWrapper),
			})
			local instance = Roact.mount(element)

			expect(capturedNameProp).to.equal("name1")
			expect(capturedServiceResult).to.equal("name1Served")
			act(function()
				update()
			end)
			expect(capturedNameProp).to.equal("name2")
			expect(capturedServiceResult).to.equal("name2Served")

			Roact.unmount(instance)
		end)

		it("should throw if there is a naming conflict in the component's props", function()
			-- This test needs to be read from the bottom upwards
			local testService = RoactServices.createService("test")

			-- create a component to read the test values
			local testComponent = Roact.Component:extend("test")
			function testComponent:render()
				return Roact.createElement("Frame")
			end

			-- store the service into a prop that will conflict with a supplied prop
			testComponent = RoactServices.connect({
				badPropName = testService,
			})(testComponent)

			-- initialize the heirarchy
			local element = Roact.createElement(RoactServices.ServiceProvider, {
				services = {
					-- this value doesn't matter for this test
					[testService] = "",
				},
			}, {
				-- add a prop that will conflict with the service value
				testComponentWithProps = Roact.createElement(testComponent, {
					badPropName = 1,
				}),
			})

			expect(function()
				local instance = Roact.mount(element)
				Roact.unmount(instance)
			end).to.throw()
		end)
	end)
end
