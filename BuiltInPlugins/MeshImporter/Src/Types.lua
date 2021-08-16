export type PropDescriptor = {
	Name: string,
	Editable: boolean,
}

export type Section = {
	Section: string,
	Properties: {PropDescriptor}
}

export type InstanceProperties = {Section}

return {}
