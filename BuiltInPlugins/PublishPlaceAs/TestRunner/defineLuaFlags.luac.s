MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["TeamCreateLink"]
        4 LOADK                            R3 K3 ["https://developer.roblox.com/articles/Team-Create"]
        5 NAMECALL                         R0 R0 K4 ["DefineFastString"]
        7 CALL                             R0 3 0
        8 GETIMPORT                        R0 K1 [game]
       10 LOADK                            R2 K5 ["StudioGenreOverhaulPlaceholder"]
       11 LOADB                            R3 0
       12 NAMECALL                         R0 R0 K6 ["DefineFastFlag"]
       14 CALL                             R0 3 0
       15 GETIMPORT                        R0 K1 [game]
       17 LOADK                            R2 K7 ["StudioGenreOverhaulExplainationLink"]
       18 LOADK                            R3 K8 ["https://devforum.roblox.com/t/testing-an-enhanced-discover-page-top-charts-and-new-sorts/2954676#genre-specific-sorts-4"]
       19 NAMECALL                         R0 R0 K4 ["DefineFastString"]
       21 CALL                             R0 3 0
       22 GETIMPORT                        R0 K1 [game]
       24 LOADK                            R2 K9 ["COLLAB6850FixTextInputCrash"]
       25 LOADB                            R3 0
       26 NAMECALL                         R0 R0 K6 ["DefineFastFlag"]
       28 CALL                             R0 3 0
       29 GETIMPORT                        R0 K1 [game]
       31 LOADK                            R2 K10 ["COLLAB9041NewTeamCreateDisabled"]
       32 LOADB                            R3 0
       33 NAMECALL                         R0 R0 K6 ["DefineFastFlag"]
       35 CALL                             R0 3 0
       36 GETIMPORT                        R0 K1 [game]
       38 LOADK                            R2 K11 ["StudioPublishEligibilityBannerLink"]
       39 LOADK                            R3 K12 ["https://create.roblox.com/settings/eligibility/public-publish"]
       40 NAMECALL                         R0 R0 K4 ["DefineFastString"]
       42 CALL                             R0 3 0
       43 LOADNIL                          R0
       44 RETURN                           R0 1
