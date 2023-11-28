local CharacterStateMachineTypes = {}

-- Event Data for "RegisterHumanoidSM"
export type RegisterHumanoidSMDataType = {
    characterModel: Model,
    humanoidInstance: Humanoid,
}

-- Data for "ContextDataHumanoidSM" and "StartHumanoidSM"
export type ContextTransferDataType = {
    oldOwner: Player?,
    character: Model,
    currentState: string,
    context: unknown,
}

-- Storage for humanoidUploadTransferInProgress
export type OwnerTransferDataType = {
    oldOwner: Player?,
    newOwner: Player?,
}

-- Storage for humanoidStartupTransferInProgress
export type OwnerContextTransferDataType = {
    oldOwner: Player?,
    newOwner: Player?,
    currentState: string,
    context: unknown,
}

export type RunningStateMachineRecord = {
    character: Model,
    humanoid: Humanoid,
    CCSM: any,
    moveToListenerInstance: Signal,
    heartbeatFunc: RBXScriptConnection?,
    characterSensors: any,
}

export type ChangeStateSMRecord = {
    character: Model,
    newState: string,
    newHumanoidState: string,
}

export type ChangeCollisionSettingsRecord = {
    character: Model,
    parts: Tables,
}

CharacterStateMachineTypes.StateAttribute = "Avatar_ControlState"

return CharacterStateMachineTypes
