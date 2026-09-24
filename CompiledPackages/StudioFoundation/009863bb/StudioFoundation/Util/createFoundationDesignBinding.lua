local Main = script:FindFirstAncestor("StudioFoundation")
local Packages = Main.Parent
local Framework = require(Packages.Framework)

-- A copy of type from DF, export of types is too complicated.
type Connection = {
	Disconnect: () -> (),
}
type Observable<T> = {
	Connect: (self: Observable<T>, fn: (T) -> ()) -> Connection,
}

type StyleSheetBinding = {
	GetStyleSheet: ((name: string) -> StyleSheet)?,
	GetCurrentName: () -> string?,
	GetNames: () -> { string },
	Changed: Observable<nil>?,
}
-- End of copy

--[[
  Creates a StyleSheetBinding to be used with the new stylesheet registartion system

  Instead of `registerPluginStyles(props.Plugin)` you can call
  ```
  local binding, onStyleSheetChange = createFoundationDesignBinding()
  self.onFoundationStyleSheetChange = onStyleSheetChange
  self.design = registerPluginStyles(props.Plugin, nil, nil, {
  	FoundationBinging = binding,
  })

  ...

  function MainPlugin:render()
  ...
  	return React.createElement(
  		FoundationProvider,
  		{ onStyleSheetChange = self.onFoundationStyleSheetChange },
  		React.createElement(YourPlugin)
  	)
  end
  ```
]]
function createFoundationDesignBinding(): (StyleSheetBinding, (styleSheet: StyleSheet?) -> ())
	local foundationStyleSheetSignal = Framework.Util.Signal.new()
	local foundationStyleSheet = nil
	local function onStyleSheetChange(styleSheet: StyleSheet?)
		foundationStyleSheet = styleSheet
		foundationStyleSheetSignal:Fire()
	end

	return {
		GetNames = function()
			return { "Foundation" }
		end,
		GetCurrentName = function()
			return if foundationStyleSheet then "Foundation" else nil
		end,
		Changed = (foundationStyleSheetSignal :: unknown) :: Observable<nil>,
		GetStyleSheet = function()
			-- Result of GetStyleSheet is not used if GetCurrentName returns nil, so runtime wise we are safe to cast.
			return foundationStyleSheet :: StyleSheet
		end,
	},
		onStyleSheetChange
end

return createFoundationDesignBinding
