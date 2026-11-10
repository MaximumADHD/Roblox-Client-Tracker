PROTO_0:
        0 LOADK                            R4 K0 ["Plugin"]
        1 LOADK                            R5 K1 ["PlaceSafetyBlockedDialog.Title"]
        2 NAMECALL                         R2 R1 K2 ["getText"]
        4 CALL                             R2 3 1
        5 LOADK                            R5 K0 ["Plugin"]
        6 LOADK                            R6 K3 ["PlaceSafetyBlockedDialog.Description"]
        7 NAMECALL                         R3 R1 K2 ["getText"]
        9 CALL                             R3 3 1
       10 LOADK                            R6 K0 ["Plugin"]
       11 LOADK                            R7 K4 ["PlaceSafetyBlockedDialog.PrimaryAction"]
       12 NAMECALL                         R4 R1 K2 ["getText"]
       14 CALL                             R4 3 1
       15 LOADK                            R7 K0 ["Plugin"]
       16 LOADK                            R8 K5 ["PlaceSafetyBlockedDialog.SecondaryAction"]
       17 NAMECALL                         R5 R1 K2 ["getText"]
       19 CALL                             R5 3 1
       20 DUPTABLE                         R8 K10 [{["PluginId"] = "StartPage", ["ItemId"] = "PlaceSafetyBlockedDialog"}]
       21 DUPTABLE                         R9 K17 [{["Type"] = "Critical", ["Title"], ["Description"], ["PrimaryButton"], ["SecondaryButton"]}]
       22 SETTABLEKS                       R2 R9 K13 ["Title"]
       24 SETTABLEKS                       R3 R9 K14 ["Description"]
       26 DUPTABLE                         R10 K20 [{"Uri", "Text"}]
       27 DUPTABLE                         R11 K22 [{["PluginId"] = "StartPage", ["ItemId"] = "PlaceSafetyBlockedDialog/OK"}]
       28 SETTABLEKS                       R11 R10 K18 ["Uri"]
       30 SETTABLEKS                       R4 R10 K19 ["Text"]
       32 SETTABLEKS                       R10 R9 K15 ["PrimaryButton"]
       34 GETUPVAL                         R11 0
       35 CALL                             R11 0 1
       36 JUMPIFNOT                        R11 ; [+2]
       37 LOADNIL                          R10
       38 JUMP                             ; [+6]
       39 DUPTABLE                         R10 K20 [{"Uri", "Text"}]
       40 DUPTABLE                         R11 K24 [{["PluginId"] = "StartPage", ["ItemId"] = "PlaceSafetyBlockedDialog/ViewTermsOfUse"}]
       41 SETTABLEKS                       R11 R10 K18 ["Uri"]
       43 SETTABLEKS                       R5 R10 K19 ["Text"]
       45 SETTABLEKS                       R10 R9 K16 ["SecondaryButton"]
       47 NAMECALL                         R6 R0 K25 ["ShowDialogAsync"]
       49 CALL                             R6 3 1
       50 JUMPIFNOT                        R6 ; [+20]
       51 GETTABLEKS                       R7 R6 K26 ["SelectedButtonUri"]
       53 JUMPIFNOT                        R7 ; [+17]
       54 GETTABLEKS                       R7 R6 K26 ["SelectedButtonUri"]
       56 GETTABLEKS                       R7 R7 K8 ["ItemId"]
       58 JUMPIFNOT                        R7 ; [+12]
       59 GETTABLEKS                       R7 R6 K26 ["SelectedButtonUri"]
       61 GETTABLEKS                       R7 R7 K8 ["ItemId"]
       63 JUMPIFNOTEQKS                    R7 K23 ["PlaceSafetyBlockedDialog/ViewTermsOfUse"] ; [+7]
       65 GETUPVAL                         R7 1
       66 GETUPVAL                         R9 2
       67 CALL                             R9 0 -1
       68 NAMECALL                         R7 R7 K27 ["openLink"]
       70 CALL                             R7 -1 0
       71 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["Services"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K9 ["StartPageManager"]
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R0 K6 ["Src"]
       22 GETTABLEKS                       R4 R4 K10 ["SharedFlags"]
       24 GETTABLEKS                       R4 R4 K11 ["getFStringLuaStartPageTermsOfUseLink"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K5 [require]
       29 GETTABLEKS                       R5 R0 K6 ["Src"]
       31 GETTABLEKS                       R5 R5 K10 ["SharedFlags"]
       33 GETTABLEKS                       R5 R5 K12 ["getFFlagIsLuobuBuild"]
       35 CALL                             R4 1 1
       36 DUPCLOSURE                       R5 K13 [PROTO_0]
       37 CAPTURE                          VAL R4
       38 CAPTURE                          VAL R2
       39 CAPTURE                          VAL R3
       40 RETURN                           R5 1
