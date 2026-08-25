PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["You'll permanently lose:\n- ServerScriptService.ImportantScript\n- ServerScriptService.MoreImportantScript\n- Workspace.EvenMoreImportantModel"]
        2 CALL                             R0 1 2
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K13 [{["Intent"] = "Destructive", ["Heading"] = "Are you sure?", ["Body"] = "You cannot undo this action.", ["Contents"], ["ActionPrimary"], ["ActionSecondary"], ["ActionTertiary"], ["Modal"] = True}]
        5 MOVE                             R4 R1
        6 CALL                             R4 0 1
        7 SETTABLEKS                       R4 R3 K7 ["Contents"]
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R4 R4 K14 ["YES"]
       12 SETTABLEKS                       R4 R3 K8 ["ActionPrimary"]
       14 GETUPVAL                         R4 2
       15 GETTABLEKS                       R4 R4 K15 ["NO"]
       17 SETTABLEKS                       R4 R3 K9 ["ActionSecondary"]
       19 SETTABLEKS                       R0 R3 K10 ["ActionTertiary"]
       21 CALL                             R2 1 1
       22 GETUPVAL                         R3 1
       23 DUPTABLE                         R4 K19 [{["Intent"] = "Confirmation", ["Heading"] = "Success!", ["Body"] = "Experience \"Dialog Simulator\" was saved. You may now exit Roblox Studio.", ["ActionPrimary"], ["ActionSecondary"], ["Modal"] = True}]
       24 GETUPVAL                         R5 2
       25 GETTABLEKS                       R5 R5 K20 ["OK"]
       27 SETTABLEKS                       R5 R4 K8 ["ActionPrimary"]
       29 GETUPVAL                         R5 2
       30 GETTABLEKS                       R5 R5 K21 ["CANCEL"]
       32 SETTABLEKS                       R5 R4 K9 ["ActionSecondary"]
       34 CALL                             R3 1 1
       35 GETUPVAL                         R4 1
       36 DUPTABLE                         R5 K25 [{["Intent"] = "Warning", ["Heading"] = "You have unsaved changes.", ["Body"] = "Would you like to save before exiting Roblox Studio?", ["ActionPrimary"], ["ActionSecondary"], ["ActionTertiary"], ["Modal"] = True}]
       37 GETUPVAL                         R6 3
       38 GETTABLEKS                       R6 R6 K26 ["join"]
       40 GETUPVAL                         R7 2
       41 GETTABLEKS                       R7 R7 K27 ["SAVE"]
       43 DUPTABLE                         R8 K29 [{"OnActivated"}]
       44 SETTABLEKS                       R3 R8 K28 ["OnActivated"]
       46 CALL                             R6 2 1
       47 SETTABLEKS                       R6 R5 K8 ["ActionPrimary"]
       49 GETUPVAL                         R6 3
       50 GETTABLEKS                       R6 R6 K26 ["join"]
       52 GETUPVAL                         R7 2
       53 GETTABLEKS                       R7 R7 K15 ["NO"]
       55 DUPTABLE                         R8 K29 [{"OnActivated"}]
       56 SETTABLEKS                       R2 R8 K28 ["OnActivated"]
       58 CALL                             R6 2 1
       59 SETTABLEKS                       R6 R5 K9 ["ActionSecondary"]
       61 GETUPVAL                         R6 2
       62 GETTABLEKS                       R6 R6 K21 ["CANCEL"]
       64 SETTABLEKS                       R6 R5 K10 ["ActionTertiary"]
       66 CALL                             R4 1 1
       67 GETUPVAL                         R5 4
       68 GETTABLEKS                       R5 R5 K30 ["createElement"]
       70 GETUPVAL                         R6 5
       71 DUPTABLE                         R7 K34 [{["OnClick"], ["Text"] = "QUIT STUDIO WITHOUT SAVING 😱"}]
       72 SETTABLEKS                       R4 R7 K31 ["OnClick"]
       74 CALL                             R5 2 -1
       75 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K4 ["Parent"]
       20 GETTABLEKS                       R3 R3 K9 ["Dash"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K6 [require]
       25 GETTABLEKS                       R4 R0 K2 ["UI"]
       27 GETTABLEKS                       R4 R4 K10 ["Components"]
       29 GETTABLEKS                       R4 R4 K11 ["IconButton"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K6 [require]
       34 GETTABLEKS                       R5 R0 K2 ["UI"]
       36 GETTABLEKS                       R5 R5 K12 ["Hooks"]
       38 GETTABLEKS                       R5 R5 K13 ["useDialogDetailsAction"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K6 [require]
       43 GETTABLEKS                       R6 R0 K7 ["Util"]
       45 GETTABLEKS                       R6 R6 K14 ["DialogAction"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K6 [require]
       50 GETIMPORT                        R7 K1 [script]
       52 GETTABLEKS                       R7 R7 K4 ["Parent"]
       54 CALL                             R6 1 1
       55 DUPCLOSURE                       R7 K15 [PROTO_0]
       56 CAPTURE                          VAL R4
       57 CAPTURE                          VAL R6
       58 CAPTURE                          VAL R5
       59 CAPTURE                          VAL R2
       60 CAPTURE                          VAL R1
       61 CAPTURE                          VAL R3
       62 DUPTABLE                         R8 K17 [{"story"}]
       63 GETTABLEKS                       R9 R1 K18 ["createElement"]
       65 MOVE                             R10 R7
       66 CALL                             R9 1 1
       67 SETTABLEKS                       R9 R8 K16 ["story"]
       69 RETURN                           R8 1
