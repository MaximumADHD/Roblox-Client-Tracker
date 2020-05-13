return function()
	local SpringAnimatedItem = require(script.Parent.SpringAnimatedItem)
	local Packages = script.Parent.Parent.Parent
	local Roact = require(Packages.Roact)

	describe("SpringAnimatedItem", function()
		local function testAnimatedComponent(component)
			local element = Roact.createElement(component, {
				animatedValues = {
					positionY = 100,
				},
				mapValuesToProps = function(values)
					return {
						Position = UDim2.new(0, 0, 0, values.positionY),
					}
				end,
			})

			local instance = Roact.mount(element)

			Roact.update(instance, Roact.createElement(component, {
				animatedValues = {
					positionY = 200,
				},
				mapValuesToProps = function(values)
					return {
						Position = UDim2.new(0, 0, 0, values.positionY),
					}
				end,
			}))

			Roact.unmount(instance)
		end

		local function testAnimatedUIScale()
			local element = Roact.createElement(SpringAnimatedItem.AnimatedUIScale, {
				animatedValues = {
					Scale = 0.8,
				},
				mapValuesToProps = function(values)
					return {
						Scale = UDim2.new(0, 0, 0, values.Scale),
					}
				end,
			})

			local instance = Roact.mount(element)

			Roact.update(instance, Roact.createElement(SpringAnimatedItem.AnimatedUIScale, {
				animatedValues = {
					Scale = 1,
				},
				mapValuesToProps = function(values)
					return {
						Scale = UDim2.new(0, 0, 0, values.Scale),
					}
				end,
			}))

			Roact.unmount(instance)
		end

		it("should throw if prop types are not correct", function()
			local function testShouldThrow(props)
				expect(function()
					local element = Roact.createElement(SpringAnimatedItem.AnimatedFrame, props)

					Roact.mount(element)
				end).to.throw()
			end

			testShouldThrow({
				animatedValues = 1,
			})

			testShouldThrow({
				animatedValues = {},
			})

			testShouldThrow({
				animatedValues = {},
				mapValuesToProps = "string",
			})

			testShouldThrow({
				animatedValues = {},
				mapValuesToProps = function() end,
				springOptions = "string",
			})

			testShouldThrow({
				animatedValues = {},
				mapValuesToProps = function() end,
				onComplete = "string",
			})

			testShouldThrow({
				animatedValues = {},
				mapValuesToProps = function() end,
				regularProps = "string",
			})
		end)

		it("should create/destroy/update pre-made components without errors", function()
			testAnimatedComponent(SpringAnimatedItem.AnimatedFrame)
			testAnimatedComponent(SpringAnimatedItem.AnimatedImageLabel)
			testAnimatedComponent(SpringAnimatedItem.AnimatedTextButton)
			testAnimatedUIScale()
		end)

		it(".wrap() should generate a component successfully", function()
			local AnimatedImageButton = SpringAnimatedItem.wrap("ImageButton")

			testAnimatedComponent(AnimatedImageButton)
		end)

		it("should support children in the regularProps table", function()
			local container = Instance.new("Folder")
			local element = Roact.createElement(SpringAnimatedItem.AnimatedFrame, {
				animatedValues = {},
				mapValuesToProps = function()
					return {}
				end,
				regularProps = {
					[Roact.Children] = {
						Foo = Roact.createElement("StringValue"),
					},
				},
			})

			local tree = Roact.mount(element, container)
			local instance = container:GetChildren()[1]
			expect(instance.ClassName).to.equal("Frame")

			local child = instance:FindFirstChild("Foo")
			expect(child).to.be.ok()
			expect(child.ClassName).to.equal("StringValue")
			Roact.unmount(tree)
		end)

		it("should support children in the top-level table", function()
			local container = Instance.new("Folder")
			local element = Roact.createElement(SpringAnimatedItem.AnimatedFrame, {
				animatedValues = {},
				mapValuesToProps = function()
					return {}
				end,
			}, {
				Foo = Roact.createElement("StringValue"),
			})

			local tree = Roact.mount(element, container)
			local instance = container:GetChildren()[1]
			expect(instance.ClassName).to.equal("Frame")

			local child = instance:FindFirstChild("Foo")
			expect(child).to.be.ok()
			expect(child.ClassName).to.equal("StringValue")
			Roact.unmount(tree)
		end)

		it("should throw if children are specified in multiple ways", function()
			local element = Roact.createElement(SpringAnimatedItem.AnimatedFrame, {
				animatedValues = {},
				mapValuesToProps = function()
					return {}
				end,
				regularProps = {
					[Roact.Children] = {
						Bar = Roact.createElement("IntValue"),
					}
				},
			}, {
				Foo = Roact.createElement("StringValue"),
			})

			local success = pcall(Roact.mount, element)
			assert(not success, "Roact.mount should have thrown an error, but it did not")
		end)
	end)
end
