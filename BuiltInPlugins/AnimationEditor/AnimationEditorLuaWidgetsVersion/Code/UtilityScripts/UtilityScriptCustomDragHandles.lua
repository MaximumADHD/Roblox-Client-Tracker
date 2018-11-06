local CustomDragHandles = {}
CustomDragHandles.__index = CustomDragHandles

local function connectMoveCallbacks(self)
	self.Connections:add(self.DragHandleX.MouseDrag:connect(function(face, dist)
		self.DragEvent:fire(face, dist)
	end))
	self.Connections:add(self.DragHandleX.MouseButton1Down:connect(function()
		self.DragBeginEvent:fire()
	end))
	self.Connections:add(self.DragHandleX.MouseButton1Up:connect(function()
		self.DragEndEvent:fire()
	end))

	self.Connections:add(self.DragHandleY.MouseDrag:connect(function(face, dist)
		self.DragEvent:fire(face, dist)
	end))
	self.Connections:add(self.DragHandleY.MouseButton1Down:connect(function()
		self.DragBeginEvent:fire()
	end))
	self.Connections:add(self.DragHandleY.MouseButton1Up:connect(function()
		self.DragEndEvent:fire()
	end))

	self.Connections:add(self.DragHandleZ.MouseDrag:connect(function(face, dist)
		self.DragEvent:fire(face, dist)
	end))
	self.Connections:add(self.DragHandleZ.MouseButton1Down:connect(function()
		self.DragBeginEvent:fire()
	end))
	self.Connections:add(self.DragHandleZ.MouseButton1Up:connect(function()
		self.DragEndEvent:fire()
	end))
end

function CustomDragHandles:new(Paths)
	local self = setmetatable({}, CustomDragHandles)
	self.Paths = Paths
	self.Connections = self.Paths.UtilityScriptConnections:new(self.Paths)
	self.DragEvent = self.Paths.UtilityScriptEvent:new()
	self.DragBeginEvent = self.Paths.UtilityScriptEvent:new()
	self.DragEndEvent = self.Paths.UtilityScriptEvent:new()

	self.DragHandleX = self.Paths.HelperFunctionsCreation:make('Handles', {
		Faces = Faces.new(Enum.NormalId.Left, Enum.NormalId.Right),
		Color = BrickColor.new(1004),
		Style = 'Movement',
		Parent = self.Paths.Globals.CoreGUI,
		Archivable = false,
	})

	self.DragHandleY = self.Paths.HelperFunctionsCreation:make('Handles', {
		Faces = Faces.new(Enum.NormalId.Top, Enum.NormalId.Bottom),
		Color = BrickColor.new(1020),
		Style = 'Movement',
		Parent = self.Paths.Globals.CoreGUI,
		Archivable = false,
	})

	self.DragHandleZ = self.Paths.HelperFunctionsCreation:make('Handles', {
		Faces = Faces.new(Enum.NormalId.Front, Enum.NormalId.Back),
		Color = BrickColor.new(1010),
		Style = 'Movement',
		Parent = self.Paths.Globals.CoreGUI,
		Archivable = false,
	})

	connectMoveCallbacks(self)

	return self
end

function CustomDragHandles:changeAdornee(Adornee)
	self.DragHandleX.Adornee = Adornee
	self.DragHandleY.Adornee = Adornee
	self.DragHandleZ.Adornee = Adornee
end

function CustomDragHandles:terminate()
	self.Connections:terminate()
	self.Connections = nil

	self.DragHandleX.Adornee = nil
	self.DragHandleX.Parent = nil
	self.DragHandleX = nil

	self.DragHandleY.Adornee = nil
	self.DragHandleY.Parent = nil
	self.DragHandleY = nil

	self.DragHandleZ.Adornee = nil
	self.DragHandleZ.Parent = nil
	self.DragHandleZ = nil
end

return CustomDragHandles
