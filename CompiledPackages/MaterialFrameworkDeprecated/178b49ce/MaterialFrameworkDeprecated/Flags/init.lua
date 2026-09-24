local flags = {}

for _, flagScript in script:GetChildren() do
	flags[flagScript.Name] = require(flagScript)
end

return flags
