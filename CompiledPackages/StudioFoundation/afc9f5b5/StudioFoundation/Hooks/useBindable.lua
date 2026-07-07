local Main = script:FindFirstAncestor("StudioFoundation")
local Packages = Main.Parent

local Foundation = require(Packages.Foundation)
local React = require(Packages.React)
local ReactIs = require(Packages.ReactIs)

local function useBindable<T>(bindable: Foundation.Bindable<T>): React.Binding<T>
	local binding, updateBinding = React.useBinding(nil :: T?)

	if ReactIs.isBinding(bindable) then
		return bindable :: React.Binding<T>
	else
		updateBinding(bindable :: T)
		return binding :: React.Binding<T>
	end
end

return useBindable
