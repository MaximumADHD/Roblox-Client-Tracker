local CorePackages = game:GetService("CorePackages")

local function recursivePrint(node, indent)
	indent = indent or ""
	for _, child in pairs(node:GetChildren()) do
		print("|"..indent..tostring( child.Name ))
		recursivePrint(child, indent.."  ")
	end
end

return function()
	local Roact = require(CorePackages.Roact)
	local LocaleSelector = require(script.Parent.Parent.Components.LocaleSelector)

	it("mounts and unmounts", function()
		local element = Roact.createElement(LocaleSelector)
		local handle = Roact.mount(element)
		Roact.unmount(handle)
	end)

	it("inits with a selected locale and displays that locale", function()
		local container = Instance.new("Frame")

		local element = Roact.createElement(LocaleSelector, {
			InitialLocaleId = "kw-gb"
		})

		local handle = Roact.mount(element, container)
		expect(container.Frame.LocaleIdTextBox.TextboxInternal.Text).to.equal("kw-gb")
		Roact.unmount(handle)
	end)
end
