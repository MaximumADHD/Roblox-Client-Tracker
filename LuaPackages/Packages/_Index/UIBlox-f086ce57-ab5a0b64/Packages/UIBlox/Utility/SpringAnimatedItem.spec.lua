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

			Roact.reconcile(instance, Roact.createElement(component, {
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

			Roact.reconcile(instance, Roact.createElement(SpringAnimatedItem.AnimatedUIScale, {
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
	end)
end
