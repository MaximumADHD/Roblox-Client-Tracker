local flags = {}

for _, flagScript in ipairs(script:GetChildren()) do
	flags[flagScript.Name] = require(flagScript)
end

return flags
