--!strict
export type EngineInterface = {
	getSelection: () -> GuiObject?,
	setSelection: (guiObject: GuiObject?) -> (),
	SelectionChanged: RBXScriptSignal,
	InputBegan: RBXScriptSignal,
	InputChanged: RBXScriptSignal,
	InputEnded: RBXScriptSignal,
}

export type InputEvent = {
	KeyCode: Enum.KeyCode,
	UserInputState: Enum.UserInputState,
	UserInputType: Enum.UserInputType,
	Position: Vector3?,
	Delta: Vector3?,
	wasProcessed: boolean?,
}

-- TODO: Union with whatever data we end up using for focus/blur events
export type EventData = InputEvent | nil

export type EventMap = {
	[Enum.KeyCode]: string,
}

-- ContainerFocusBehavior is implemented using refs in ReactFocusNavigation, but
-- can be generalized for use with FocusNavigationService if desired
export type ContainerFocusBehavior = {
	onDescendantFocusChanged: nil | (GuiObject?) -> (),
	getTargets: () -> { GuiObject },
}

return {}
