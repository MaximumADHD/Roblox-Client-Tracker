--!strict

export type ControlModuleData = {
	isJumping: boolean,
	-- input move vector, not in world space
	moveVector: Vector2,

	-- world move vector
	worldMoveVector: Vector3,

	-- holds references to the InputActions that control this Player
	actions: { [string]: InputAction },
}

return {}
