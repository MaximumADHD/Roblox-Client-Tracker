local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)

return React.createContext({
	fireEvent = function()
        error("Analytics not implemented")
    end,
})
