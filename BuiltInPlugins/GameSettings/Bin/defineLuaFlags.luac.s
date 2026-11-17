MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["GameSettingsExperienceGuidelines"]
        4 LOADB                            R3 0
        5 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
        7 CALL                             R0 3 0
        8 GETIMPORT                        R0 K1 [game]
       10 LOADK                            R2 K4 ["RemoveGameSettingsMonetizationPage"]
       11 LOADB                            R3 0
       12 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
       14 CALL                             R0 3 0
       15 GETIMPORT                        R0 K1 [game]
       17 LOADK                            R2 K5 ["RemoveGameSettingsPermissionsBanner"]
       18 LOADB                            R3 0
       19 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
       21 CALL                             R0 3 0
       22 GETIMPORT                        R0 K1 [game]
       24 LOADK                            R2 K6 ["GameSettingsAddCreatorHubLinkToFooter"]
       25 LOADB                            R3 0
       26 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
       28 CALL                             R0 3 0
       29 GETIMPORT                        R0 K1 [game]
       31 LOADK                            R2 K7 ["GameSettingsCreatorHubManageExperienceLink"]
       32 LOADK                            R3 K8 ["https://create.roblox.com/dashboard/creations/experiences/{}/configure"]
       33 NAMECALL                         R0 R0 K9 ["DefineFastString"]
       35 CALL                             R0 3 0
       36 GETIMPORT                        R0 K1 [game]
       38 LOADK                            R2 K10 ["StudioGenreOverhaulExplainationLink"]
       39 LOADK                            R3 K11 ["https://devforum.roblox.com/t/testing-an-enhanced-discover-page-top-charts-and-new-sorts/2954676#genre-specific-sorts-4"]
       40 NAMECALL                         R0 R0 K9 ["DefineFastString"]
       42 CALL                             R0 3 0
       43 LOADNIL                          R0
       44 RETURN                           R0 1
