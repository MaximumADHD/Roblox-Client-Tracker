local ShellModules = script.Parent.Parent

local ActionType = require(script.Parent.ActionType)
local Http = require(ShellModules.Http)

local ActiveUserActions = {}

local AgeBracket = {
	Over13 = 0;
	Under13 = 1;
}

function ActiveUserActions.GetUnder13()
    return function(store)
        spawn(function()
            local isUnder13 = true

            local result = Http.GetRobloxAccountInfo()
            if result then
                local ageBracket = result["AgeBracket"]
                if ageBracket == AgeBracket.Over13 then
                    isUnder13 = false
                end
            end

            store:Dispatch(ActiveUserActions.SetUnder13(isUnder13))
        end)
    end
end

function ActiveUserActions.SetUnder13(value)
    return {
        type = ActionType.SetUnder13Status,
        status = value
    }
end

return ActiveUserActions