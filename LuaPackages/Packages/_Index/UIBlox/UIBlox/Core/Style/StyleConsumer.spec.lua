return function()
	local Style = script.Parent
	local Core = Style.Parent
	local UIBlox = Core.Parent
	--Note: remove along with styleRefactorConfig
	local UIBloxConfig = require(UIBlox.UIBloxConfig)
	local styleRefactorConfig = UIBloxConfig.styleRefactorConfig

	if not styleRefactorConfig then
		return
	end
	---
	local Packages = UIBlox.Parent
	local Roact = require(Packages.Roact)
	local StyleProvider = require(Style.StyleProvider)

	local StyleConsumer = require(script.Parent.StyleConsumer)


	it("should create and destroy without errors", function()
		local renderFunction = function(style)
			expect(style).to.be.a("table")
			return Roact.createElement("Frame", {
				Size = UDim2.new(0, 100, 0, 100),
			})
		end
		local element = Roact.createElement(StyleProvider, {
			style = {},
		}, {
			StyleConsumer = Roact.createElement(StyleConsumer, {
				render = renderFunction
			}),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end

