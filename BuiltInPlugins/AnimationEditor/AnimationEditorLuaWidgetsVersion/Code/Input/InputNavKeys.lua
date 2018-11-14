local NavKeys = {}
NavKeys.__index = NavKeys

function NavKeys:navKeyDown()
  for _, keyDown in pairs(self.Keys) do
    if keyDown then
      return true
    end
  end
  return false
end

function NavKeys:forward()
  return self.Keys.ForwardArrow or self.Keys.ForwardWASD
end

function NavKeys:backward()
  return self.Keys.BackwardArrow or self.Keys.BackwardWASD
end

function NavKeys:left()
  return self.Keys.LeftArrow or self.Keys.LeftWASD
end

function NavKeys:right()
  return self.Keys.RightArrow or self.Keys.RightWASD
end

function NavKeys:up()
  return self.Keys.StrafeLeftQ
end

function NavKeys:down()
  return self.Keys.StrafeRightE
end

function NavKeys:shiftKeyDown()
  return self.Keys.Shift
end

function NavKeys:new(InputKeyboard)
	local self = setmetatable({}, NavKeys)

  self.Keys = {
    ForwardArrow  = InputKeyboard:isKeyDownForPluginGui(Enum.KeyCode.Up),
    BackwardArrow = InputKeyboard:isKeyDownForPluginGui(Enum.KeyCode.Down),
    LeftArrow     = InputKeyboard:isKeyDownForPluginGui(Enum.KeyCode.Left),
    RightArrow    = InputKeyboard:isKeyDownForPluginGui(Enum.KeyCode.Right),

    StrafeRightE = InputKeyboard:isKeyDownForPluginGui(Enum.KeyCode.E),
    StrafeLeftQ  = InputKeyboard:isKeyDownForPluginGui(Enum.KeyCode.Q),

    ForwardWASD  = InputKeyboard:isKeyDownForPluginGui(Enum.KeyCode.W),
    BackwardWASD = InputKeyboard:isKeyDownForPluginGui(Enum.KeyCode.S),
    LeftWASD     = InputKeyboard:isKeyDownForPluginGui(Enum.KeyCode.A),
    RightWASD    = InputKeyboard:isKeyDownForPluginGui(Enum.KeyCode.D),

    Space     = InputKeyboard:isKeyDownForPluginGui(Enum.KeyCode.Space),
    Backspace = InputKeyboard:isKeyDownForPluginGui(Enum.KeyCode.Backspace),
    Shift     = InputKeyboard:isKeyDownForPluginGui(Enum.KeyCode.LeftShift) or
                InputKeyboard:isKeyDownForPluginGui(Enum.KeyCode.RightShift)
  }

	return self
end

return NavKeys
