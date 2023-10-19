--!strict
return function()
  local CorePackages = game:GetService("CorePackages")
  local CoreGui = game:GetService("CoreGui")
  local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals)
  local expect = JestGlobals.expect

  local PlayerListMaster = require(script.Parent.PlayerListMaster)

  it("should render PlayerList", function()
    local _list = PlayerListMaster.new()
    local PlayerList = CoreGui:FindFirstChild("PlayerScrollList", true) :: Frame

    expect(PlayerList).toBeDefined()
    expect(PlayerList:IsA("Frame")).toEqual(true)

    -- Player ID associated with roblox-cli LocalPlayer
    expect(PlayerList:FindFirstChild("p_12345678", true)).toBeDefined()
  end)
end
