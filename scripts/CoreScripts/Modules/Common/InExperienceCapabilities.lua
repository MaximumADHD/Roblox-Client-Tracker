local CorePackages = game:GetService("CorePackages")
local UniversalAppPolicy = require(CorePackages.Workspace.Packages.UniversalAppPolicy)
local getAppFeaturePolicies = UniversalAppPolicy.getAppFeaturePolicies

export type InExperienceCapabilities = {
  canNavigateHome: boolean, -- if true, allows leaving the current experience and navigating to the UApp.
  canListPeopleInSameServer: boolean, -- if true, allows displaying the People tab and showing the list of people in the same server.
}

local appFeaturePolicies = getAppFeaturePolicies()

local inExperienceCapabilities: InExperienceCapabilities = {
  canNavigateHome = appFeaturePolicies.getInExperienceCanNavigateHome(),
  canListPeopleInSameServer = appFeaturePolicies.getInExperienceCanListPeopleInSameServer(),
}

return inExperienceCapabilities
