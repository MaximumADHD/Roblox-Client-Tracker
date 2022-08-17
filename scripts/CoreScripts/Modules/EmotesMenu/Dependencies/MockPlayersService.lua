local MockPlayersService = {}
MockPlayersService.__index = MockPlayersService

local PRIMARY_PART_POSITION = Vector3.new(0, 0, 0)

local function mockHumanoid()
	return {
		RigType = Enum.HumanoidRigType.R15,
		PlayEmote = function(_)
			return true
		end,
		PlayEmoteById = function(_)
			return true
		end,
		PlayEmoteAndGetAnimTrackById = function(_)
			return true, nil
		end,
		GetPlayingAnimationTracks = function(_)
			local animTrack = {
				Stopped = {
					connect = function(_, callback)
						-- emulate a non-looping emote
						wait()
						callback()
					end,
				}
			}
			return {
				animTrack
			}
		end,
		FindFirstChildOfClass = function(_)
			return {
				GetEmotes = function(_)
					return {}
				end,
			}
		end,
	}
end

local function mockAnimate()
	local func = Instance.new("BindableFunction")
	return {
		FindFirstChild = function(_)
			return func
		end
	}
end

function MockPlayersService.new(): Players
	local self = {
		LocalPlayer = {
			Character = {
				FindFirstChildOfClass = function(_)
					return mockHumanoid()
				end,
				FindFirstChild = function(_)
					return mockAnimate()
				end,
				PrimaryPart = {
					Position = PRIMARY_PART_POSITION,
				}
			},
		},
	}

	setmetatable(self, {
		__index = MockPlayersService,
	})
	return (self :: any) :: Players
end

return MockPlayersService
