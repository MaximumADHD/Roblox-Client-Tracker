local Framework = script.Parent.Parent
local Roact = require(Framework.Parent.Roact)
local Dash = require(Framework.packages.Dash)
local omit = Dash.omit
local join = Dash.join

-- STUDIOPLAT-27078 Remove this check when all plugins are using Roact >= 1.4
local ok, forwardRef = pcall(function()
	return Roact.forwardRef
end)

local function withForwardRef(component)
	if ok and forwardRef then
		return forwardRef(function(props, ref)
			return Roact.createElement(component, join(props, {ForwardRef = ref}))
		end)
	else
		return function(props)
			local ref = props[Roact.Ref]
			local nextProps = omit(props, {Roact.Ref})
			nextProps.ForwardRef = ref
			return Roact.createElement(component, nextProps)
		end
	end
end

return withForwardRef
