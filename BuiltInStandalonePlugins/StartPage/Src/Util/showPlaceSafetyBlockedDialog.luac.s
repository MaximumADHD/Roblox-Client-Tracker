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
       20 DUPTABLE                         R8 K8 [{"PluginId", "ItemId"}]
       21 LOADK                            R9 K9 ["StartPage"]
       22 SETTABLEKS                       R9 R8 K6 ["PluginId"]
       24 LOADK                            R9 K10 ["PlaceSafetyBlockedDialog"]
       25 SETTABLEKS                       R9 R8 K7 ["ItemId"]
       27 DUPTABLE                         R9 K16 [{"Type", "Title", "Description", "PrimaryButton", "SecondaryButton"}]
       28 LOADK                            R10 K17 ["Critical"]
       29 SETTABLEKS                       R10 R9 K11 ["Type"]
       31 SETTABLEKS                       R2 R9 K12 ["Title"]
       33 SETTABLEKS                       R3 R9 K13 ["Description"]
       35 DUPTABLE                         R10 K20 [{"Uri", "Text"}]
       36 DUPTABLE                         R11 K8 [{"PluginId", "ItemId"}]
       37 LOADK                            R12 K9 ["StartPage"]
       38 SETTABLEKS                       R12 R11 K6 ["PluginId"]
       40 LOADK                            R12 K21 ["PlaceSafetyBlockedDialog/OK"]
       41 SETTABLEKS                       R12 R11 K7 ["ItemId"]
       43 SETTABLEKS                       R11 R10 K18 ["Uri"]
       45 SETTABLEKS                       R4 R10 K19 ["Text"]
       47 SETTABLEKS                       R10 R9 K14 ["PrimaryButton"]
       49 DUPTABLE                         R10 K20 [{"Uri", "Text"}]
       50 DUPTABLE                         R11 K8 [{"PluginId", "ItemId"}]
       51 LOADK                            R12 K9 ["StartPage"]
       52 SETTABLEKS                       R12 R11 K6 ["PluginId"]
       54 LOADK                            R12 K22 ["PlaceSafetyBlockedDialog/ViewTermsOfUse"]
       55 SETTABLEKS                       R12 R11 K7 ["ItemId"]
       57 SETTABLEKS                       R11 R10 K18 ["Uri"]
       59 SETTABLEKS                       R5 R10 K19 ["Text"]
       61 SETTABLEKS                       R10 R9 K15 ["SecondaryButton"]
       63 NAMECALL                         R6 R0 K23 ["ShowDialogAsync"]
       65 CALL                             R6 3 1
       66 JUMPIFNOT                        R6 ; [+20]
       67 GETTABLEKS                       R7 R6 K24 ["SelectedButtonUri"]
       69 JUMPIFNOT                        R7 ; [+17]
       70 GETTABLEKS                       R7 R6 K24 ["SelectedButtonUri"]
       72 GETTABLEKS                       R7 R7 K7 ["ItemId"]
       74 JUMPIFNOT                        R7 ; [+12]
       75 GETTABLEKS                       R7 R6 K24 ["SelectedButtonUri"]
       77 GETTABLEKS                       R7 R7 K7 ["ItemId"]
       79 JUMPIFNOTEQKS                    R7 K22 ["PlaceSafetyBlockedDialog/ViewTermsOfUse"] ; [+7]
       81 GETUPVAL                         R7 0
       82 GETUPVAL                         R9 1
       83 CALL                             R9 0 -1
       84 NAMECALL                         R7 R7 K25 ["openLink"]
       86 CALL                             R7 -1 0
       87 RETURN                           R0 0

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
       27 DUPCLOSURE                       R4 K12 [PROTO_0]
       28 CAPTURE                          VAL R2
       29 CAPTURE                          VAL R3
       30 RETURN                           R4 1
