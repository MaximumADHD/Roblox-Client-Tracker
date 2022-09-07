export type PropDescriptor = {
	Name: string,
	Editable: boolean,
	ShouldHide: (Instance, Instance) -> boolean,
	Dependencies: {string}?,
	ValueType: string,
	AllowPickFile: boolean,
}

export type Section = {
	Section: string,
	Properties: {PropDescriptor}
}

export type InstanceProperties = {Section}

export type SectionStatus = {
	StatusLevel: string,
	StatusMessage: string,
	StatusContext: {[string] : any}?,
	GlobalStatus: boolean,
}

return {}
