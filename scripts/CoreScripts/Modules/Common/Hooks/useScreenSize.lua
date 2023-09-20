local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)

return function()
  local cameraSignal: RBXScriptConnection | nil = nil
  local viewportSizeSignal: RBXScriptConnection | nil = nil
  local screenSize, setScreenSize = React.useState(Vector2.new(0, 0))

  local onViewportChanged = function()
    local camera = workspace.CurrentCamera
    if camera then
      setScreenSize(Vector2.new(camera.ViewportSize.X, camera.ViewportSize.Y))
    end
  end

  local onCameraChanged = function()
    local camera = workspace.CurrentCamera

    if viewportSizeSignal then
      pcall(function ()
        viewportSizeSignal:Disconnect()
      end)
      viewportSizeSignal = nil
    end

    if camera then
      viewportSizeSignal = camera:GetPropertyChangedSignal("ViewportSize"):Connect(onViewportChanged)
    end
  end

  React.useEffect(function ()
    cameraSignal = workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(onCameraChanged)
    onCameraChanged()
    onViewportChanged()

    return function()
      if cameraSignal then
        cameraSignal:Disconnect()
      end
      if viewportSizeSignal then
        viewportSizeSignal:Disconnect()
      end
    end
  end, {})

  return screenSize
end
