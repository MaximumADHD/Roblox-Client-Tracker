local Main = script:FindFirstAncestor("StudioFoundation")
local Packages = Main.Parent

local React = require(Packages.React)

-- Carries the owning DataModel id for a dialog so DialogPanel can namespace its native panel id when
-- the same URI is shown by more than one DataModel. This lets custom dialogs — rendered through arbitrary
-- components that can't forward a prop — get a distinct panel id without threading it everywhere.
local Context = React.createContext(nil :: number?)

return table.freeze({
	Context = Context,
	Provider = Context.Provider,
})
