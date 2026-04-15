local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)
local ReactIs = require(Packages.ReactIs)

local Types = require(Foundation.Components.Types)
type Bindable<T> = Types.Bindable<T>
type Binding<T> = React.Binding<T>

local function mapBindable<T, M>(bindable: Bindable<T>, mapFunction: (T) -> M): Bindable<M>
	if ReactIs.isBinding(bindable) then
		return (bindable :: Binding<T>):map(mapFunction)
	else
		return mapFunction(bindable :: T)
	end
end

return mapBindable
