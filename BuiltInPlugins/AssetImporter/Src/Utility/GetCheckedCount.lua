--[[
    Return the number of checked instances
]]

return function(rootSettings)
    local count = rootSettings.ShouldImport and 1 or 0
    for _, descendant in pairs(rootSettings:GetDescendants()) do
        if descendant.ShouldImport then
            count += 1
        end
    end

    return count
end
