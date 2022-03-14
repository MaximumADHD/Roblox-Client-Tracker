return function()
	local SocialLibraries = script:FindFirstAncestor("social-libraries")
	local dependencies = require(SocialLibraries.dependencies)
	local Roact = dependencies.Roact
	local Packages = SocialLibraries.Parent
	local JestGlobals = require(Packages.Dev.JestGlobals)
	local jestExpect = JestGlobals.expect

	local getConnect = require(script.Parent.getConnect)

	it("SHOULD allow mapper to inject prop into lower component", function(c)
		local context = Roact.createContext("contextObject")

		local capturedContext = nil
		local capturedProps = nil

		local component = function(props)
			capturedContext = props.contextText
			capturedProps = props.propsText
			return nil
		end

		local connect = getConnect(context)
		local connectedComponent = connect(function(value)
			return { contextText = value }
		end)(component)

		local tree = Roact.createElement(connectedComponent, {
			propsText = "propsObject"
		})
		Roact.mount(tree)

		jestExpect(capturedContext).toBe("contextObject")
		jestExpect(capturedProps).toBe("propsObject")
	end)
end
