export type PropDescriptor = {
	Name: string,
	Editable: boolean,
	ShouldHide: () -> boolean,
	Dependencies: {string}?,
	ValueType: string,
}

export type Section = {
	Section: string,
	Properties: {PropDescriptor}
}

export type InstanceProperties = {Section}

export type SectionStatus = {
	StatusLevel: string,
	StatusMessage: string,
	GlobalStatus: boolean,
}

return {}
