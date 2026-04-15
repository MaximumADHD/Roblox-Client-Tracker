local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)
local ReactIs = require(Packages.ReactIs)

local Types = require(Foundation.Components.Types)
type Bindable<T> = Types.Bindable<T>
type Binding<T> = React.Binding<T>

local function getBindableValue<T>(bindable: Bindable<T>): T
	if ReactIs.isBinding(bindable) then
		return (bindable :: Binding<T>):getValue()
	else
		return bindable :: T
	end
end

return getBindableValue
