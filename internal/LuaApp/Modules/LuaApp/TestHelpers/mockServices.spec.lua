return function()
	local mockServices = require(script.Parent.mockServices)

	local Modules = game:GetService("CoreGui").RobloxGui.Modules
	local Roact = require(Modules.Common.Roact)
	local RoactServices = require(Modules.LuaApp.RoactServices)

	it("should construct a Roact element that contains an initialized RoactServices", function()
		local testComponent = function() end
		local element = mockServices({
			tc = Roact.createElement(testComponent)
		})
		local instance = Roact.reify(element)
		Roact.teardown(instance)
	end)

	it("should throw if no components are provided to render", function()
		expect(function()
			local element = mockServices()
			local instance = Roact.reify(element)
			Roact.teardown(instance)
		end).to.throw()
	end)

	describe("should accept a table of additional args...", function()
		describe("extraArgs.includeStoreProvider", function()
			it("should expect a boolean", function()
				local function testValue(value)
					local testComponent = function() end
					local element = mockServices({
						tc = Roact.createElement(testComponent)
					}, {
						includeStoreProvider = value
					})
					local instance = Roact.reify(element)
					Roact.teardown(instance)
				end

				expect(function()
					testValue(false)
				end).to.be.ok()

				expect(function()
					testValue("hello world")
				end).to.throw()

				expect(function()
					testValue({})
				end).to.throw()
			end)

			it("should add a StoreProvider into the returned Roact element", function()
				local testComponent = function() end
				local element = mockServices({
					tc = Roact.createElement(testComponent)
				}, {
					includeStoreProvider = true
				})

				local children = element.props[Roact.Children]
				expect(children["StoreProvider"]).to.be.ok()

				local instance = Roact.reify(element)
				Roact.teardown(instance)
			end)
		end)

		describe("extraArgs.store", function()
			it("should do nothing if extraArgs.includeStoreProvider is false or not included", function()
				local testComponent = function() end
				local element = mockServices({
					tc = Roact.createElement(testComponent)
				}, {
					store = {}
				})

				local children = element.props[Roact.Children]
				expect(children["StoreProvider"]).to.equal(nil)

				local instance = Roact.reify(element)
				Roact.teardown(instance)
			end)

			it("should expect a table", function()
				local function testValue(value)
					local testComponent = function() end
					local element = mockServices({
						tc = Roact.createElement(testComponent)
					}, {
						store = value
					})
					local instance = Roact.reify(element)
					Roact.teardown(instance)
				end

				expect(function()
					testValue({})
				end).to.be.ok()

				expect(function()
					testValue("hello world")
				end).to.throw()

				expect(function()
					testValue(false)
				end).to.throw()
			end)

			it("should initialize the Rodux Store", function()
				local testStore = {
					testValue = "hello world"
				}

				local testComponent = function() end
				local element = mockServices({
					tc = Roact.createElement(testComponent)
				}, {
					includeStoreProvider = true,
					store = testStore
				})

				local children = element.props[Roact.Children]
				local storeProvider = children["StoreProvider"]
				expect(storeProvider).to.be.ok()

				local elementStore = storeProvider.props["store"]
				expect(elementStore).to.equal(testStore)

				local instance = Roact.reify(element)
				Roact.teardown(instance)
			end)
		end)

		describe("extraArgs.extraServices", function()
			it("should expect a table", function()
				local function testValue(value)
					local testComponent = function() end
					local element = mockServices({
						tc = Roact.createElement(testComponent)
					}, {
						extraServices = value
					})
					local instance = Roact.reify(element)
					Roact.teardown(instance)
				end

				expect(function()
					testValue({})
				end).to.be.ok()

				expect(function()
					testValue("hello world")
				end).to.throw()

				expect(function()
					testValue(false)
				end).to.throw()
			end)

			it("should expect a valid extraServices map with table keys", function()
				local fakeService = RoactServices.createService("test")
				local validFakeService = {
					[fakeService] = "test",
				}

				local invalidFakeService = {
					test1 = "haha",
				}

				local function testValue(value)
					local testComponent = function() end
					local element = mockServices({
						tc = Roact.createElement(testComponent)
					}, {
						extraServices = value
					})
					local instance = Roact.reify(element)
					Roact.teardown(instance)
				end

				expect(function()
					testValue(invalidFakeService)
				end).to.throw()

				expect(function()
					testValue(validFakeService)
				end).to.be.ok()
			end)

			it("should map extraServices to the services prop", function()
				local fakeService = RoactServices.createService("test")
				local validFakeService = {
					[fakeService] = {},
				}

				local function createElement(fakeServices)
					local testComponent = function() end
					local element = mockServices({
						tc = Roact.createElement(testComponent)
					}, {
						extraServices = fakeServices
					})

					return element
				end

				local element = createElement(validFakeService)
				local instance = Roact.reify(element)

				expect(element.props.services[fakeService]).to.equal(validFakeService[fakeService])

				Roact.teardown(instance)
			end)
		end)
	end)
end
