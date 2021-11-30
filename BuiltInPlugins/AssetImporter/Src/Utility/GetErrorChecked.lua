--[[
    Return true if an error node is checked
]]

return function(rootSetting)
    local rootStatuses = rootSetting:GetStatuses()
    local rootErrors = rootStatuses.Errors

    if #rootErrors > 0 and rootSetting.ShouldImport then
        return true
    end

    for _, descendant in pairs(rootSetting:GetDescendants()) do
        local statuses = descendant:GetStatuses()
        local errors = statuses.Errors

        if #errors > 0 and descendant.ShouldImport then
            return true
        end
    end

    return false
end
