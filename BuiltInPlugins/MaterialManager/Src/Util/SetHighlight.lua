local CoreGui = game:GetService("CoreGui")

return function(highlight: any, target: any): any
    if not highlight then
        highlight = Instance.new("Highlight")
        highlight.Parent = CoreGui
        highlight.FillTransparency = 1
    end
    local targetInstance = target
    if targetInstance and targetInstance:IsA("BasePart") then
        highlight.Adornee = targetInstance
    else
        highlight.Adornee = nil
    end

    return highlight
end
