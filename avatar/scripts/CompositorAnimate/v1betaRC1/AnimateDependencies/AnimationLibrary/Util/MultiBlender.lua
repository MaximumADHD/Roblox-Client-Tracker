export type MultiBlender = MultiBlenderT<{}>
type MultiBlenderT<T> = T & {
    new: () -> MultiBlenderT<T>,
    addPose: (self: MultiBlenderT<T>, pose: AnimationPose, weight: number) -> MultiBlenderT<T>,
    blend: (self: MultiBlenderT<T>, mask: AnimationMask) -> AnimationPose,
}

type MultiBlenderInternal = MultiBlenderT<{
    __animationPoseClass: typeof(AnimationPose),

    __poses: { AnimationPose },
    __weights: { number },
    __index: MultiBlenderInternal,
}>

local MultiBlender = {} :: MultiBlenderInternal
MultiBlender.__index = MultiBlender

MultiBlender.__animationPoseClass = AnimationPose

function MultiBlender.new(): MultiBlenderInternal
    local newMultiBlender = setmetatable({
        __poses = {},
        __weights = {},
    }, MultiBlender)

    return newMultiBlender :: any
end

function MultiBlender:addPose(pose: AnimationPose, weight: number): MultiBlenderInternal
    table.insert(self.__poses, pose)
    table.insert(self.__weights, weight)
    return self
end

function MultiBlender:blend(mask: AnimationMask): AnimationPose
    assert(#self.__poses == #self.__weights)

    local resultPose
    if #self.__poses == 0 then
        resultPose = self.__animationPoseClass.createRest(mask)
    elseif #self.__poses == 1 then
        resultPose = self.__poses[1]
    elseif #self.__poses == 2 then
        resultPose = self.__poses[1]:Blend(self.__poses[2], self.__weights[2])
    else
        resultPose = self.__animationPoseClass.MultiBlend(self.__poses, self.__weights)
            or self.__animationPoseClass.createRest(mask)
    end

    table.clear(self.__poses)
    table.clear(self.__weights)
    return resultPose
end

return MultiBlender :: MultiBlender
