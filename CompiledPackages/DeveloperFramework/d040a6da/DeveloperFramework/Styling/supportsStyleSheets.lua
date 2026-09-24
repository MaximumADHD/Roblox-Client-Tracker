local Framework = script.Parent.Parent

local FFlagDebugDevFrameworkForceSupportsStyleSheets =
	game:DefineFastFlag("DebugDevFrameworkForceSupportsStyleSheets", false)
if FFlagDebugDevFrameworkForceSupportsStyleSheets then
	return true
end

local React = if Framework.Parent:FindFirstChild("React") then require(Framework.Parent.React) else nil
local Plugin = Framework:FindFirstAncestorWhichIsA("Plugin")
local Root = if Plugin
	then Plugin:FindFirstChildWhichIsA("Folder")
	-- If we're not in a plugin, try to get DeveloperStorybook embed
	else Framework.Parent:FindFirstChild("DeveloperStorybook") or nil
local Src = if Root then Root:FindFirstChild("Src") else nil
local EnableStyleSheets = if Src then Src:FindFirstChild("EnableStyleSheets") else nil
local supportsStyleSheets = if React
		and React.Tag ~= nil
		and EnableStyleSheets
		and EnableStyleSheets.Value
	then true
	else false
if game:GetFastFlag("DebugDeveloperFrameworkSdk") and Root then
	print(`[DebugDeveloperFrameworkSdk] {Root.Name} StyleSheets supported: {supportsStyleSheets}`)
end
return supportsStyleSheets
