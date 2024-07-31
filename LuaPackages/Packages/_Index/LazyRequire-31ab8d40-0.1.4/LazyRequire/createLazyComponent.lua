local LazyRequire = script:FindFirstAncestor("LazyRequire")
local Packages = LazyRequire.Parent
local Cryo = require(Packages.Cryo)
local React = require(Packages.React)

--[[
	Creates a lazy-computed component from a getter function. The getter function will typically wrap a require statement like so:

	local MyLazyButton = createLazyComponent(function()
		return require(script.Parent.MyButton)
	end)
]]
local function createLazyComponent<Props>(
	getComponent: () -> React.FC<Props> | React.ComponentType<Props>
): React.FC<Props> | React.React_FowardRefComponent<Props, Instance>
	return React.forwardRef(function(props, ref)
		return React.createElement(
			getComponent(),
			Cryo.Dictionary.join(props, {
				ref = ref,
			})
		)
	end)
end

return createLazyComponent
