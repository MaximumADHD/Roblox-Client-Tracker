return function<T, U>(obj: { [T]: U }, callback: (T) -> ())
	for key, _ in obj do
		callback(key)
	end
end
