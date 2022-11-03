type Symbol = typeof(newproxy(true))

export type Context<T = any> = {
	[Symbol]: T,
}

export type StaticService<T> = {
	get: (context: Context<T>?) -> T?,
}

export type Service<T> = StaticService<T> & {
	set: (context: Context<T>, value: T) -> (),
}

return nil
