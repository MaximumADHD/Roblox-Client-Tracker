PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["You'll permanently lose:\n- ServerScriptService.ImportantScript\n- ServerScriptService.MoreImportantScript\n- Workspace.EvenMoreImportantModel"]
        2 CALL                             R0 1 2
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K9 [{"Intent", "Heading", "Body", "Contents", "ActionPrimary", "ActionSecondary", "ActionTertiary", "Modal"}]
        5 LOADK                            R4 K10 ["Destructive"]
        6 SETTABLEKS                       R4 R3 K1 ["Intent"]
        8 LOADK                            R4 K11 ["Are you sure?"]
        9 SETTABLEKS                       R4 R3 K2 ["Heading"]
       11 LOADK                            R4 K12 ["You cannot undo this action."]
       12 SETTABLEKS                       R4 R3 K3 ["Body"]
       14 MOVE                             R4 R1
       15 CALL                             R4 0 1
       16 SETTABLEKS                       R4 R3 K4 ["Contents"]
       18 GETUPVAL                         R5 2
       19 GETTABLEKS                       R4 R5 K13 ["YES"]
       21 SETTABLEKS                       R4 R3 K5 ["ActionPrimary"]
       23 GETUPVAL                         R5 2
       24 GETTABLEKS                       R4 R5 K14 ["NO"]
       26 SETTABLEKS                       R4 R3 K6 ["ActionSecondary"]
       28 SETTABLEKS                       R0 R3 K7 ["ActionTertiary"]
       30 LOADB                            R4 1
       31 SETTABLEKS                       R4 R3 K8 ["Modal"]
       33 CALL                             R2 1 1
       34 GETUPVAL                         R3 1
       35 DUPTABLE                         R4 K15 [{"Intent", "Heading", "Body", "ActionPrimary", "ActionSecondary", "Modal"}]
       36 LOADK                            R5 K16 ["Confirmation"]
       37 SETTABLEKS                       R5 R4 K1 ["Intent"]
       39 LOADK                            R5 K17 ["Success!"]
       40 SETTABLEKS                       R5 R4 K2 ["Heading"]
       42 LOADK                            R5 K18 ["Experience \"Dialog Simulator\" was saved. You may now exit Roblox Studio."]
       43 SETTABLEKS                       R5 R4 K3 ["Body"]
       45 GETUPVAL                         R6 2
       46 GETTABLEKS                       R5 R6 K19 ["OK"]
       48 SETTABLEKS                       R5 R4 K5 ["ActionPrimary"]
       50 GETUPVAL                         R6 2
       51 GETTABLEKS                       R5 R6 K20 ["CANCEL"]
       53 SETTABLEKS                       R5 R4 K6 ["ActionSecondary"]
       55 LOADB                            R5 1
       56 SETTABLEKS                       R5 R4 K8 ["Modal"]
       58 CALL                             R3 1 1
       59 GETUPVAL                         R4 1
       60 DUPTABLE                         R5 K21 [{"Intent", "Heading", "Body", "ActionPrimary", "ActionSecondary", "ActionTertiary", "Modal"}]
       61 LOADK                            R6 K22 ["Warning"]
       62 SETTABLEKS                       R6 R5 K1 ["Intent"]
       64 LOADK                            R6 K23 ["You have unsaved changes."]
       65 SETTABLEKS                       R6 R5 K2 ["Heading"]
       67 LOADK                            R6 K24 ["Would you like to save before exiting Roblox Studio?"]
       68 SETTABLEKS                       R6 R5 K3 ["Body"]
       70 GETUPVAL                         R7 3
       71 GETTABLEKS                       R6 R7 K25 ["join"]
       73 GETUPVAL                         R8 2
       74 GETTABLEKS                       R7 R8 K26 ["SAVE"]
       76 DUPTABLE                         R8 K28 [{"OnActivated"}]
       77 SETTABLEKS                       R3 R8 K27 ["OnActivated"]
       79 CALL                             R6 2 1
       80 SETTABLEKS                       R6 R5 K5 ["ActionPrimary"]
       82 GETUPVAL                         R7 3
       83 GETTABLEKS                       R6 R7 K25 ["join"]
       85 GETUPVAL                         R8 2
       86 GETTABLEKS                       R7 R8 K14 ["NO"]
       88 DUPTABLE                         R8 K28 [{"OnActivated"}]
       89 SETTABLEKS                       R2 R8 K27 ["OnActivated"]
       91 CALL                             R6 2 1
       92 SETTABLEKS                       R6 R5 K6 ["ActionSecondary"]
       94 GETUPVAL                         R7 2
       95 GETTABLEKS                       R6 R7 K20 ["CANCEL"]
       97 SETTABLEKS                       R6 R5 K7 ["ActionTertiary"]
       99 LOADB                            R6 1
      100 SETTABLEKS                       R6 R5 K8 ["Modal"]
      102 CALL                             R4 1 1
      103 GETUPVAL                         R6 4
      104 GETTABLEKS                       R5 R6 K29 ["createElement"]
      106 GETUPVAL                         R6 5
      107 DUPTABLE                         R7 K32 [{"OnClick", "Text"}]
      108 SETTABLEKS                       R4 R7 K30 ["OnClick"]
      110 LOADK                            R8 K33 ["QUIT STUDIO WITHOUT SAVING 😱"]
      111 SETTABLEKS                       R8 R7 K31 ["Text"]
      113 CALL                             R5 2 -1
      114 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Util"]
       13 GETTABLEKS                       R2 R3 K8 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R4 R0 K4 ["Parent"]
       20 GETTABLEKS                       R3 R4 K9 ["Dash"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K6 [require]
       25 GETTABLEKS                       R6 R0 K2 ["UI"]
       27 GETTABLEKS                       R5 R6 K10 ["Components"]
       29 GETTABLEKS                       R4 R5 K11 ["IconButton"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K6 [require]
       34 GETTABLEKS                       R7 R0 K2 ["UI"]
       36 GETTABLEKS                       R6 R7 K12 ["Hooks"]
       38 GETTABLEKS                       R5 R6 K13 ["useDialogDetailsAction"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K6 [require]
       43 GETTABLEKS                       R7 R0 K7 ["Util"]
       45 GETTABLEKS                       R6 R7 K14 ["DialogAction"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K6 [require]
       50 GETIMPORT                        R8 K1 [script]
       52 GETTABLEKS                       R7 R8 K4 ["Parent"]
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
