MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["EnableTeamCreateCollaborators6"]
        4 LOADB                            R3 0
        5 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
        7 CALL                             R0 3 0
        8 GETIMPORT                        R0 K1 [game]
       10 LOADK                            R2 K4 ["StartPageTrustedConnectionSnackbar"]
       11 LOADB                            R3 0
       12 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
       14 CALL                             R0 3 0
       15 GETIMPORT                        R0 K1 [game]
       17 LOADK                            R2 K5 ["TeamCreateCollaboratorsRemindMeLater"]
       18 LOADB                            R3 0
       19 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
       21 CALL                             R0 3 0
       22 GETIMPORT                        R0 K1 [game]
       24 LOADK                            R2 K6 ["TeamCreateCollaboratorsNotFriendsBanner"]
       25 LOADB                            R3 0
       26 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
       28 CALL                             R0 3 0
       29 GETIMPORT                        R0 K1 [game]
       31 LOADK                            R2 K7 ["TeamCreateCollaboratorsUseUniverseMultiget"]
       32 LOADB                            R3 0
       33 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
       35 CALL                             R0 3 0
       36 GETIMPORT                        R0 K1 [game]
       38 LOADK                            R2 K8 ["TeamCreateCollaboratorsFeatureShownThrottleHundredthsPercent"]
       39 LOADN                            R3 0
       40 NAMECALL                         R0 R0 K9 ["DefineFastInt"]
       42 CALL                             R0 3 0
       43 GETIMPORT                        R0 K1 [game]
       45 LOADK                            R2 K10 ["TeamCreateCollaboratorsButtonClickedThrottleHundredthsPercent"]
       46 LOADN                            R3 0
       47 NAMECALL                         R0 R0 K9 ["DefineFastInt"]
       49 CALL                             R0 3 0
       50 GETIMPORT                        R0 K1 [game]
       52 LOADK                            R2 K11 ["StartVPCLinkTCollab"]
       53 LOADK                            R3 K12 ["https://www.roblox.com/my/account?creatorCollaboration"]
       54 NAMECALL                         R0 R0 K13 ["DefineFastString"]
       56 CALL                             R0 3 0
       57 GETIMPORT                        R0 K1 [game]
       59 LOADK                            R2 K14 ["TrustedConnectionsHelpdeskLinkTeamCreateCollaborators"]
       60 LOADK                            R3 K15 ["https://help.roblox.com/hc/en-us/articles/37725513985812-Unlocking-Trusted-Connections-Expressive-Chat-Features-Party-Voice-chat-without-filters"]
       61 NAMECALL                         R0 R0 K13 ["DefineFastString"]
       63 CALL                             R0 3 0
       64 GETIMPORT                        R0 K1 [game]
       66 LOADK                            R2 K16 ["TeamCreateCollaboratorsChallengeRequiredMessage"]
       67 LOADK                            R3 K17 ["Challenge required to authorize request"]
       68 NAMECALL                         R0 R0 K13 ["DefineFastString"]
       70 CALL                             R0 3 0
       71 DUPTABLE                         R0 K26 [{"FFlagEnableTeamCreateCollaborators", "FFlagStartPageTrustedConnectionSnackbar", "FFlagTeamCreateCollaboratorsRemindMeLater", "FFlagTeamCreateCollaboratorsNotFriendsBanner", "FFlagTeamCreateCollaboratorsUseUniverseMultiget", "FStringTrustedConnectionsHelpdesk", "FStringStartVPCLink", "FStringChallengeRequiredMessage"}]
       72 GETIMPORT                        R1 K1 [game]
       74 LOADK                            R3 K2 ["EnableTeamCreateCollaborators6"]
       75 NAMECALL                         R1 R1 K27 ["GetFastFlag"]
       77 CALL                             R1 2 1
       78 SETTABLEKS                       R1 R0 K18 ["FFlagEnableTeamCreateCollaborators"]
       80 GETIMPORT                        R1 K1 [game]
       82 LOADK                            R3 K4 ["StartPageTrustedConnectionSnackbar"]
       83 NAMECALL                         R1 R1 K27 ["GetFastFlag"]
       85 CALL                             R1 2 1
       86 SETTABLEKS                       R1 R0 K19 ["FFlagStartPageTrustedConnectionSnackbar"]
       88 GETIMPORT                        R1 K1 [game]
       90 LOADK                            R3 K5 ["TeamCreateCollaboratorsRemindMeLater"]
       91 NAMECALL                         R1 R1 K27 ["GetFastFlag"]
       93 CALL                             R1 2 1
       94 SETTABLEKS                       R1 R0 K20 ["FFlagTeamCreateCollaboratorsRemindMeLater"]
       96 GETIMPORT                        R1 K1 [game]
       98 LOADK                            R3 K6 ["TeamCreateCollaboratorsNotFriendsBanner"]
       99 NAMECALL                         R1 R1 K27 ["GetFastFlag"]
      101 CALL                             R1 2 1
      102 SETTABLEKS                       R1 R0 K21 ["FFlagTeamCreateCollaboratorsNotFriendsBanner"]
      104 GETIMPORT                        R1 K1 [game]
      106 LOADK                            R3 K7 ["TeamCreateCollaboratorsUseUniverseMultiget"]
      107 NAMECALL                         R1 R1 K27 ["GetFastFlag"]
      109 CALL                             R1 2 1
      110 SETTABLEKS                       R1 R0 K22 ["FFlagTeamCreateCollaboratorsUseUniverseMultiget"]
      112 GETIMPORT                        R1 K1 [game]
      114 LOADK                            R3 K14 ["TrustedConnectionsHelpdeskLinkTeamCreateCollaborators"]
      115 NAMECALL                         R1 R1 K28 ["GetFastString"]
      117 CALL                             R1 2 1
      118 SETTABLEKS                       R1 R0 K23 ["FStringTrustedConnectionsHelpdesk"]
      120 GETIMPORT                        R1 K1 [game]
      122 LOADK                            R3 K11 ["StartVPCLinkTCollab"]
      123 NAMECALL                         R1 R1 K28 ["GetFastString"]
      125 CALL                             R1 2 1
      126 SETTABLEKS                       R1 R0 K24 ["FStringStartVPCLink"]
      128 GETIMPORT                        R1 K1 [game]
      130 LOADK                            R3 K16 ["TeamCreateCollaboratorsChallengeRequiredMessage"]
      131 NAMECALL                         R1 R1 K28 ["GetFastString"]
      133 CALL                             R1 2 1
      134 SETTABLEKS                       R1 R0 K25 ["FStringChallengeRequiredMessage"]
      136 RETURN                           R0 1
