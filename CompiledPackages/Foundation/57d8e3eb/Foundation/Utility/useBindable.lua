local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)
local ReactIs = require(Packages.ReactIs)

local Types = require(Foundation.Components.Types)
type Bindable<T> = Types.Bindable<T>

local function useBindable<T>(bindable: Bindable<T>): React.Binding<T>
	local binding, updateBinding = React.useBinding(nil :: T?)

	if ReactIs.isBinding(bindable) then
		return bindable :: React.Binding<T>
	else
		updateBinding(bindable :: T)
		return binding :: React.Binding<T>
	end
end

return useBindable
