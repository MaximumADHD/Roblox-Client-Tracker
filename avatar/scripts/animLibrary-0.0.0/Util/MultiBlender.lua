export type MultiBlender = MultiBlenderT<{}>
type MultiBlenderT<T> = T & {
    new: (mask: AnimationMask) -> MultiBlenderT<T>,
    addPose: (self: MultiBlenderT<T>, pose: AnimationPose, weight: number) -> MultiBlenderT<T>,
    blend: (self: MultiBlenderT<T>) -> AnimationPose,
}

type MultiBlenderInternal = MultiBlenderT<{
    __mask: AnimationMask,
    __poses: { AnimationPose },
    __weights: { number },
    __index: MultiBlenderInternal,
}>

local MultiBlender = {} :: MultiBlenderInternal
MultiBlender.__index = MultiBlender

function MultiBlender.new(mask: AnimationMask): MultiBlenderInternal
    local newMultiBlender = setmetatable({
        __poses = {},
        __weights = {},
        __mask = mask,
    }, MultiBlender)

    return newMultiBlender :: any
end

function MultiBlender:addPose(pose: AnimationPose, weight: number): MultiBlenderInternal
    table.insert(self.__poses, pose)
    table.insert(self.__weights, weight)
    return self
end

function MultiBlender:blend(): AnimationPose
    assert(#self.__poses == #self.__weights)

    if #self.__poses == 0 then
        return self.__mask:CreateRestPose()
    elseif #self.__poses == 1 then
        return self.__poses[1]
    end

    local res = AnimationPose.MultiBlend(self.__poses, self.__weights)
    if res == nil then
        return self.__mask:CreateRestPose()
    end
    return res
end

return MultiBlender :: MultiBlender
