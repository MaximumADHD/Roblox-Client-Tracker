--[[
    Return the number of checked instances
]]

return function(checked)
    local count = 0
    for _, isChecked in pairs(checked) do
        if isChecked then
            count += 1
        end
    end
    return count
end
