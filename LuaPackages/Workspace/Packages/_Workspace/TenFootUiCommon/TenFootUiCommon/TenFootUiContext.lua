local Packages = script:FindFirstAncestor("TenFootUiCommon").Parent
local React = require(Packages.React)

local TenFootUiContext = React.createContext(nil)

return TenFootUiContext
