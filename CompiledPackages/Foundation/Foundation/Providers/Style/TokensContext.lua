local Style = script.Parent
local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Tokens = require(Style.Tokens)
type Tokens = Tokens.Tokens

local React = require(Packages.React)

return React.createContext({} :: Tokens) :: React.Context<Tokens>
