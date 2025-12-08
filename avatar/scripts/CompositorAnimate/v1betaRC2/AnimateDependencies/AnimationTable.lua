-- Animation config table.
-- This default configuration can get overwritten by animations injected under "Animate" in the Datamodel.

local DefaultAnimationTable = {
    idle = {
        { id = "rbxassetid://507766666", selectionProbabilityWeight = 1 },
        { id = "rbxassetid://507766951", selectionProbabilityWeight = 1 },
        { id = "rbxassetid://507766388", selectionProbabilityWeight = 9 },
    },
    walk = {
        { id = "rbxassetid://10921541949", selectionProbabilityWeight = 10 },
    },
    run = {
        { id = "rbxassetid://10899968825", selectionProbabilityWeight = 10 },
    },
    swim = {
        { id = "rbxassetid://507784897", selectionProbabilityWeight = 10 },
    },
    swimidle = {
        { id = "rbxassetid://507785072", selectionProbabilityWeight = 10 },
    },
    jump = {
        { id = "rbxassetid://507765000", selectionProbabilityWeight = 10 },
    },
    fall = {
        { id = "rbxassetid://507767968", selectionProbabilityWeight = 10 },
    },
    climb = {
        { id = "rbxassetid://507765644", selectionProbabilityWeight = 10 },
    },
    sit = {
        { id = "rbxassetid://2506281703", selectionProbabilityWeight = 10 },
    },
    toolnone = {
        { id = "rbxassetid://507768375", selectionProbabilityWeight = 10 },
    },
    toolslash = {
        { id = "rbxassetid://522635514", selectionProbabilityWeight = 10 },
    },
    toollunge = {
        { id = "rbxassetid://522638767", selectionProbabilityWeight = 10 },
    },
    wave = {
        { id = "rbxassetid://507770239", selectionProbabilityWeight = 10 },
    },
    point = {
        { id = "rbxassetid://507770453", selectionProbabilityWeight = 10 },
    },
    dance = {
        { id = "rbxassetid://507771019", selectionProbabilityWeight = 10 },
        { id = "rbxassetid://507771955", selectionProbabilityWeight = 10 },
        { id = "rbxassetid://507772104", selectionProbabilityWeight = 10 },
    },
    dance2 = {
        { id = "rbxassetid://507776043", selectionProbabilityWeight = 10 },
        { id = "rbxassetid://507776720", selectionProbabilityWeight = 10 },
        { id = "rbxassetid://507776879", selectionProbabilityWeight = 10 },
    },
    dance3 = {
        { id = "rbxassetid://507777268", selectionProbabilityWeight = 10 },
        { id = "rbxassetid://507777451", selectionProbabilityWeight = 10 },
        { id = "rbxassetid://507777623", selectionProbabilityWeight = 10 },
    },
    laugh = {
        { id = "rbxassetid://507770818", selectionProbabilityWeight = 10 },
    },
    cheer = {
        { id = "rbxassetid://507770677", selectionProbabilityWeight = 10 },
    },
}

return DefaultAnimationTable
