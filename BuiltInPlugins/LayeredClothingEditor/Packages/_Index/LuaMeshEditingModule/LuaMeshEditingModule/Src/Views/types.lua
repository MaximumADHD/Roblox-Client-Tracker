export type Vector3Array = {[number]: Vector3}

export type Edge = {
	Start: number,
	End: number,
}

export type EdgeArray = {[number]: Edge}

export type ControlEdgeViewsProps = {
	ControlPointPositions: {[string]: Vector3Array},
	ControlPointEdges: {[string]: EdgeArray},
	Transparency: number,
	SelectedMesh: string,
}

export type ControlPointViewsProps = {
	ControlPointPositions: {[string]: Vector3Array},
	Transparency: number,
	IsSelected: (meshName : string, id : string) -> boolean,
	isHovered: (meshName : string, id : string) -> boolean,
	SelectedMesh: string,
}

export type ControlPointViewProps = {
	Position: Vector3,
	Shape: string,
	Name: string,
	Transparency: number,
	PartParent: Instance,
	AdornmentParent: Instance,
	Hovered: boolean,
	Selected: boolean,
	Weight: number,
	Size: number,
}

export type ControlEdgeViewProps = {
	StartPoint: Vector3,
	EndPoint: Vector3,
	Adornee: Instance,
	Parent: Instance,
	Transparency: number,
	Color: Color3,
	Thickness: number,
}

return {}
