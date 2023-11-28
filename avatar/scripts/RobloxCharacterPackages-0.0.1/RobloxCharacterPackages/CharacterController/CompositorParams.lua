-- Default params that all compositor layers can access
-- These are updated in the Animate runservice based on the state machine and other character properties

return {
    state = "Running",
    statePrevious = "Running",
    humanoidMoveDir = Vector3.zero,
    hrpCF = CFrame.identity,
    desiredVelocity = Vector3.zero,
    inputDir = Vector3.zero,
    inputDirCharSpace = Vector3.zero,
    moveDir = Vector2.zero,
    inputFacingDirection = Vector3.zero,
}