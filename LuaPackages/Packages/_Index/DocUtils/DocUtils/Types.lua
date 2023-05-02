export type Prop = {
	Name: string,
	Type: string,
	IsOptional: boolean,
	Default: any?,
	Comment: string?,
}

export type Array<T> = { [number]: T }

export type Props = Array<Prop>

return {}
