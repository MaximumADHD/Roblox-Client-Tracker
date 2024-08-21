local Foundation = script:FindFirstAncestor("Foundation")

local Packages = Foundation.Parent
local React = require(Packages.React)
local ReactIs = require(Packages.ReactIs)

local Types = require(Foundation.Components.Types)
type ColorStyle = Types.ColorStyle
type Bindable<T> = Types.Bindable<T>

local function getOriginalBackgroundStyle(
	backgroundColor: Bindable<Color3>,
	backgroundTransparency: Bindable<number>
): ColorStyle
	if ReactIs.isBinding(backgroundColor) and ReactIs.isBinding(backgroundTransparency) then
		return React.joinBindings({
			backgroundColor3 = backgroundColor,
			backgroundTransparency = backgroundTransparency,
		}):map(function(values)
			return { Color3 = values.backgroundColor3, Transparency = values.backgroundTransparency }
		end)
	elseif ReactIs.isBinding(backgroundColor) then
		return (backgroundColor :: React.Binding<Color3>):map(function(backgroundColor3)
			return { Color3 = backgroundColor3 :: Color3, Transparency = backgroundTransparency :: number }
		end)
	elseif ReactIs.isBinding(backgroundTransparency) then
		return (backgroundTransparency :: React.Binding<number>):map(function(backgroundTransparency)
			return { Color3 = backgroundColor :: Color3, Transparency = backgroundTransparency :: number }
		end)
	else
		return { Color3 = backgroundColor :: Color3, Transparency = backgroundTransparency :: number }
	end
end

return getOriginalBackgroundStyle
