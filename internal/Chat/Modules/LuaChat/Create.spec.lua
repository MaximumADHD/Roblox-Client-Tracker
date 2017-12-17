return function()
	local Create = require(script.Parent.Create)

	describe("merge", function()
		it("should merge lists", function()
			local a = {1, 2}
			local b = {3, 4}
			local c = {5, 6}

			local d = Create.merge(a, b, c)

			for index, value in ipairs(d) do
				expect(value).to.equal(index)
			end
		end)

		it("should merge dictionaries", function()
			local a = {
				hello = "world",
				foo = "bar"
			}

			local b = {
				hello = "mom",
				baz = "qux"
			}

			local c = Create.merge(a, b)

			expect(c.foo).to.equal(a.foo)
			expect(c.hello).to.equal(b.hello)
			expect(c.baz).to.equal(b.baz)
		end)

		it("should merge mixed tables", function()
			local a = {
				1, 2, 3,
				foo = "foo",
				bar = "bar"
			}

			local b = {
				4, 5, 6,
				foo = "hello",
				baz = "baz"
			}

			local c = Create.merge(a, b)

			for index, value in ipairs(c) do
				expect(value).to.equal(index)
			end

			expect(c.bar).to.equal(a.bar)
			expect(c.foo).to.equal(b.foo)
			expect(c.baz).to.equal(b.baz)
		end)
	end)

	describe("new", function()
		it("should create objects with the correct type", function()
			local created = Create.new("StringValue")()

			expect(created).to.be.ok()
			expect(created.ClassName).to.equal("StringValue")
		end)

		it("should assign properties", function()
			local created = Create.new("StringValue")({
				Name = "Created"
			})

			expect(created).to.be.ok()
			expect(created.Name).to.equal("Created")
		end)

		it("should merge multiple property declarations", function()
			local created = Create.new("StringValue")({
				Name = "Foo",
				Value = "Some Value"
			}, {
				Name = "Bar"
			})

			expect(created).to.be.ok()
			expect(created.Name).to.equal("Bar")
			expect(created.Value).to.equal("Some Value")
		end)

		it("should throw on assignment of Parent", function()
			expect(function()
				local root = Instance.new("StringValue")

				Create.new("StringValue")({
					Parent = root
				})
			end).to.throw()
		end)

		it("should add children from construction", function()
			local marker = Instance.new("StringValue")
			marker.Name = "Marker"

			local created = Create.new("StringValue")({
				Name = "Created",
				marker
			})

			expect(marker.Parent).to.equal(created)
		end)
	end)
end