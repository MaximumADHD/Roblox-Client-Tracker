local Dash = {}

-- Require and add the Dash functions to the Dash table
for _, child in pairs(script:GetChildren()) do
	if child.ClassName == 'ModuleScript' then
		Dash[child.Name] = require(child)
	end
end

return Dash.freeze("Dash", Dash, true)
