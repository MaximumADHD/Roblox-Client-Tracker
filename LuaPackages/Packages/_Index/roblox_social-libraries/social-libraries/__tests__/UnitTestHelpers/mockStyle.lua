local dependencies = require(script.Parent.Parent.Parent.dependencies)
local UIBlox = dependencies.UIBlox
local Roact = dependencies.Roact

return function(element)
	return Roact.createElement(UIBlox.App.Style.AppStyleProvider, {
		style = {
			themeName = "Dark",
			fontName = "Gotham",
		},
    }, {
        TestElement = element,
    })
end
