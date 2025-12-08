export type LodAdornment = LodAdornmentT<{}>
type LodAdornmentT<T> = {
    new: (character: Model) -> LodAdornmentT<T>,
    setCurrentLod: (self: T, lod: number) -> (),
    destroy: (self: T) -> (),
}

type LodAdornmentInternal = LodAdornmentT<LodAdornmentInternal> & {
    __billboardGui: BillboardGui,
    __label: TextLabel,
    __index: LodAdornmentInternal,
}

local LodAdorment = {} :: LodAdornmentInternal
LodAdorment.__index = LodAdorment

function LodAdorment.new(character: Model): LodAdornmentInternal
    local billboardGui = Instance.new("BillboardGui")
    billboardGui.Name = "LodGui"
    billboardGui.Size = UDim2.fromOffset(100, 30)
    billboardGui.StudsOffset = Vector3.new(0, 2, 0)

    local lodLabel = Instance.new("TextLabel")
    lodLabel.Name = "LodLabel"
    lodLabel.Size = UDim2.fromScale(1, 1)
    lodLabel.BackgroundTransparency = 1
    lodLabel.TextSize = 12
    lodLabel.Text = "Lod: 0"
    lodLabel.Parent = billboardGui

    billboardGui.Parent = character:FindFirstChild("Head") or character

    local newAdorment = setmetatable({
        __billboardGui = billboardGui,
        __label = lodLabel,
    }, LodAdorment)
    return newAdorment :: any
end

function LodAdorment:setCurrentLod(lod: number)
    self.__label.Text = "Lod: " .. lod
end

function LodAdorment:destroy()
    self.__billboardGui:Destroy()
end

return (LodAdorment :: any) :: LodAdornment
