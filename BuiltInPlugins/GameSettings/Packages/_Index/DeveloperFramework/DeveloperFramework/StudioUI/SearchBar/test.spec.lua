return function()
	local Framework = script.Parent.Parent.Parent
	local Roact = require(Framework.Parent.Roact)
	local TestHelpers = require(Framework.TestHelpers)
	-- TODO STUDIOPLAT-27078 Replace with Roact.act when all plugins use Roact 17 
	local act = if Roact.Ref == "ref" then Roact.act else function(fn) fn() end
	local SearchBar = require(script.Parent)

	local function createTestSearchBar(props)
		props = props or {}

		return TestHelpers.provideMockContext(nil, {
			SearchBar = Roact.createElement(SearchBar, props),
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestSearchBar()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("overrides search term state with prop if prop has changed", function()
		local element = createTestSearchBar({
			SearchTerm = "abc"
		})
		local container = Instance.new("Folder")
		local instance = Roact.mount(element, container)

		expect(container:FindFirstChild("TextBox", true).Text).to.equal("abc")

		container:FindFirstChild("TextBox", true).Text = "blah"

		Roact.update(instance, createTestSearchBar({
			SearchTerm = "abc"
		}))

		-- Should not have changed since the prop has not changed
		expect(container:FindFirstChild("TextBox", true).Text).to.equal("blah")

		Roact.update(instance, createTestSearchBar({
			SearchTerm = "def"
		}))

		expect(container:FindFirstChild("TextBox", true).Text).to.equal("def")

		Roact.unmount(instance)
	end)

	it("replaces newlines with spaces", function()

		local element = createTestSearchBar()
		local container = Instance.new("Folder")
		local instance = Roact.mount(element, container)

		act(function()
			container:FindFirstChild("TextBox", true).Text = "foo\nbar"
		end)

		expect(container:FindFirstChild("TextBox", true).Text).to.equal("foo bar")

		Roact.unmount(instance)
	end)
end