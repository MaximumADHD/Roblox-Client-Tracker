export type PropDescriptor = {
	Name: string,
	Editable: boolean,
	ShouldHide: () -> boolean,
	Dependencies: {string}?,
}

export type Section = {
	Section: string,
	Properties: {PropDescriptor}
}

export type InstanceProperties = {Section}

return {}
