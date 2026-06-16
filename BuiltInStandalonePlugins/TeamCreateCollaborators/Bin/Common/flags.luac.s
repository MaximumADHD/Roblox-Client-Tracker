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
       31 LOADK                            R2 K7 ["TeamCreateCollaboratorsFeatureShownThrottleHundredthsPercent"]
       32 LOADN                            R3 0
       33 NAMECALL                         R0 R0 K8 ["DefineFastInt"]
       35 CALL                             R0 3 0
       36 GETIMPORT                        R0 K1 [game]
       38 LOADK                            R2 K9 ["TeamCreateCollaboratorsButtonClickedThrottleHundredthsPercent"]
       39 LOADN                            R3 0
       40 NAMECALL                         R0 R0 K8 ["DefineFastInt"]
       42 CALL                             R0 3 0
       43 GETIMPORT                        R0 K1 [game]
       45 LOADK                            R2 K10 ["StartVPCLinkTCollab"]
       46 LOADK                            R3 K11 ["https://www.roblox.com/my/account?creatorCollaboration"]
       47 NAMECALL                         R0 R0 K12 ["DefineFastString"]
       49 CALL                             R0 3 0
       50 GETIMPORT                        R0 K1 [game]
       52 LOADK                            R2 K13 ["TrustedConnectionsHelpdeskLinkTeamCreateCollaborators"]
       53 LOADK                            R3 K14 ["https://help.roblox.com/hc/en-us/articles/37725513985812-Unlocking-Trusted-Connections-Expressive-Chat-Features-Party-Voice-chat-without-filters"]
       54 NAMECALL                         R0 R0 K12 ["DefineFastString"]
       56 CALL                             R0 3 0
       57 GETIMPORT                        R0 K1 [game]
       59 LOADK                            R2 K15 ["TeamCreateCollaboratorsChallengeRequiredMessage"]
       60 LOADK                            R3 K16 ["Challenge required to authorize request"]
       61 NAMECALL                         R0 R0 K12 ["DefineFastString"]
       63 CALL                             R0 3 0
       64 DUPTABLE                         R0 K24 [{"FFlagEnableTeamCreateCollaborators", "FFlagStartPageTrustedConnectionSnackbar", "FFlagTeamCreateCollaboratorsRemindMeLater", "FFlagTeamCreateCollaboratorsNotFriendsBanner", "FStringTrustedConnectionsHelpdesk", "FStringStartVPCLink", "FStringChallengeRequiredMessage"}]
       65 GETIMPORT                        R1 K1 [game]
       67 LOADK                            R3 K2 ["EnableTeamCreateCollaborators6"]
       68 NAMECALL                         R1 R1 K25 ["GetFastFlag"]
       70 CALL                             R1 2 1
       71 SETTABLEKS                       R1 R0 K17 ["FFlagEnableTeamCreateCollaborators"]
       73 GETIMPORT                        R1 K1 [game]
       75 LOADK                            R3 K4 ["StartPageTrustedConnectionSnackbar"]
       76 NAMECALL                         R1 R1 K25 ["GetFastFlag"]
       78 CALL                             R1 2 1
       79 SETTABLEKS                       R1 R0 K18 ["FFlagStartPageTrustedConnectionSnackbar"]
       81 GETIMPORT                        R1 K1 [game]
       83 LOADK                            R3 K5 ["TeamCreateCollaboratorsRemindMeLater"]
       84 NAMECALL                         R1 R1 K25 ["GetFastFlag"]
       86 CALL                             R1 2 1
       87 SETTABLEKS                       R1 R0 K19 ["FFlagTeamCreateCollaboratorsRemindMeLater"]
       89 GETIMPORT                        R1 K1 [game]
       91 LOADK                            R3 K6 ["TeamCreateCollaboratorsNotFriendsBanner"]
       92 NAMECALL                         R1 R1 K25 ["GetFastFlag"]
       94 CALL                             R1 2 1
       95 SETTABLEKS                       R1 R0 K20 ["FFlagTeamCreateCollaboratorsNotFriendsBanner"]
       97 GETIMPORT                        R1 K1 [game]
       99 LOADK                            R3 K13 ["TrustedConnectionsHelpdeskLinkTeamCreateCollaborators"]
      100 NAMECALL                         R1 R1 K26 ["GetFastString"]
      102 CALL                             R1 2 1
      103 SETTABLEKS                       R1 R0 K21 ["FStringTrustedConnectionsHelpdesk"]
      105 GETIMPORT                        R1 K1 [game]
      107 LOADK                            R3 K10 ["StartVPCLinkTCollab"]
      108 NAMECALL                         R1 R1 K26 ["GetFastString"]
      110 CALL                             R1 2 1
      111 SETTABLEKS                       R1 R0 K22 ["FStringStartVPCLink"]
      113 GETIMPORT                        R1 K1 [game]
      115 LOADK                            R3 K15 ["TeamCreateCollaboratorsChallengeRequiredMessage"]
      116 NAMECALL                         R1 R1 K26 ["GetFastString"]
      118 CALL                             R1 2 1
      119 SETTABLEKS                       R1 R0 K23 ["FStringChallengeRequiredMessage"]
      121 RETURN                           R0 1
