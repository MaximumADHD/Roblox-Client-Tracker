PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["CloseStudioInstance"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K2 [table.freeze]
        2 DUPTABLE                         R1 K5 [{"Label", "OnActivated"}]
        3 GETUPVAL                         R2 0
        4 LOADK                            R4 K6 ["Buttons"]
        5 LOADK                            R5 K7 ["Quit"]
        6 NAMECALL                         R2 R2 K8 ["getText"]
        8 CALL                             R2 3 1
        9 SETTABLEKS                       R2 R1 K3 ["Label"]
       11 NEWCLOSURE                       R2 P0
       12 CAPTURE                          UPVAL U1
       13 SETTABLEKS                       R2 R1 K4 ["OnActivated"]
       15 CALL                             R0 1 -1
       16 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OpenModerationDialog"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R0 K2 [table.freeze]
        2 DUPTABLE                         R1 K5 [{"Label", "OnActivated"}]
        3 GETUPVAL                         R2 0
        4 LOADK                            R4 K6 ["Buttons"]
        5 LOADK                            R5 K7 ["ReviewToU"]
        6 NAMECALL                         R2 R2 K8 ["getText"]
        8 CALL                             R2 3 1
        9 SETTABLEKS                       R2 R1 K3 ["Label"]
       11 NEWCLOSURE                       R2 P0
       12 CAPTURE                          UPVAL U1
       13 SETTABLEKS                       R2 R1 K4 ["OnActivated"]
       15 CALL                             R0 1 -1
       16 RETURN                           R0 -1

PROTO_4:
        0 DUPTABLE                         R0 K2 [{"DialogComponent", "DialogUri"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["DialogComponent"]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K3 ["join"]
        7 GETUPVAL                         R2 2
        8 NAMECALL                         R2 R2 K4 ["GetUri"]
       10 CALL                             R2 1 1
       11 DUPTABLE                         R3 K9 [{["Category"] = "Widget", ["ItemId"] = "Dialog/Quit"}]
       12 CALL                             R1 2 1
       13 SETTABLEKS                       R1 R0 K1 ["DialogUri"]
       15 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 NAMECALL                         R2 R2 K0 ["use"]
        7 CALL                             R2 1 1
        8 NAMECALL                         R2 R2 K1 ["get"]
       10 CALL                             R2 1 1
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R3 R3 K2 ["useMemo"]
       14 NEWCLOSURE                       R4 P0
       15 CAPTURE                          VAL R1
       16 CAPTURE                          VAL R0
       17 NEWTABLE                         R5 0 1
       19 GETTABLEKS                       R6 R1 K3 ["locale"]
       21 SETLIST                          R5 R6 1 [1]
       23 CALL                             R3 2 1
       24 GETUPVAL                         R4 2
       25 GETTABLEKS                       R4 R4 K2 ["useMemo"]
       27 NEWCLOSURE                       R5 P1
       28 CAPTURE                          VAL R1
       29 CAPTURE                          VAL R0
       30 NEWTABLE                         R6 0 1
       32 GETTABLEKS                       R7 R1 K3 ["locale"]
       34 SETLIST                          R6 R7 1 [1]
       36 CALL                             R4 2 1
       37 GETUPVAL                         R6 3
       38 JUMPIFNOT                        R6 ; [+14]
       39 GETUPVAL                         R5 2
       40 GETTABLEKS                       R5 R5 K2 ["useMemo"]
       42 NEWCLOSURE                       R6 P2
       43 CAPTURE                          UPVAL U4
       44 CAPTURE                          UPVAL U5
       45 CAPTURE                          VAL R2
       46 NEWTABLE                         R7 0 1
       48 MOVE                             R8 R2
       49 SETLIST                          R7 R8 1 [1]
       51 CALL                             R5 2 1
       52 JUMP                             ; [+1]
       53 LOADNIL                          R5
       54 GETUPVAL                         R6 6
       55 DUPTABLE                         R7 K16 [{["Intent"] = "Warning", ["Heading"], ["Contents"], ["ActionPrimary"], ["ActionSecondary"], ["Modal"] = True, ["DisableTitleBar"] = True, ["Width"] = 510, ["MigrateToStudioFoundation"]}]
       56 LOADK                            R10 K17 ["QuitConfirmationDialog"]
       57 LOADK                            R11 K18 ["Title"]
       58 NAMECALL                         R8 R1 K19 ["getText"]
       60 CALL                             R8 3 1
       61 SETTABLEKS                       R8 R7 K6 ["Heading"]
       63 DUPTABLE                         R8 K21 [{"Body"}]
       64 GETUPVAL                         R9 2
       65 GETTABLEKS                       R9 R9 K22 ["createElement"]
       67 LOADK                            R10 K23 ["TextLabel"]
       68 NEWTABLE                         R11 2 0
       70 LOADK                            R14 K17 ["QuitConfirmationDialog"]
       71 LOADK                            R15 K24 ["Text"]
       72 NAMECALL                         R12 R1 K19 ["getText"]
       74 CALL                             R12 3 1
       75 SETTABLEKS                       R12 R11 K24 ["Text"]
       77 GETUPVAL                         R12 2
       78 GETTABLEKS                       R12 R12 K25 ["Tag"]
       80 LOADK                            R13 K26 ["X-FitY"]
       81 SETTABLE                         R13 R11 R12
       82 CALL                             R9 2 1
       83 SETTABLEKS                       R9 R8 K20 ["Body"]
       85 SETTABLEKS                       R8 R7 K7 ["Contents"]
       87 SETTABLEKS                       R4 R7 K8 ["ActionPrimary"]
       89 SETTABLEKS                       R3 R7 K9 ["ActionSecondary"]
       91 SETTABLEKS                       R5 R7 K15 ["MigrateToStudioFoundation"]
       93 CALL                             R6 1 1
       94 GETUPVAL                         R7 2
       95 GETTABLEKS                       R7 R7 K27 ["useEffect"]
       97 MOVE                             R8 R6
       98 NEWTABLE                         R9 0 0
      100 CALL                             R7 2 0
      101 LOADNIL                          R7
      102 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ModerationDialog"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["StudioFoundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R2 K10 ["ContextServices"]
       30 GETTABLEKS                       R5 R4 K11 ["Localization"]
       32 GETTABLEKS                       R6 R4 K12 ["Plugin"]
       34 GETTABLEKS                       R7 R2 K13 ["UI"]
       36 GETTABLEKS                       R7 R7 K14 ["Hooks"]
       38 GETTABLEKS                       R7 R7 K15 ["RESTRICTED_useDialog"]
       40 GETTABLEKS                       R8 R3 K16 ["Components"]
       42 GETTABLEKS                       R8 R8 K17 ["Dialog"]
       44 GETTABLEKS                       R9 R3 K18 ["Util"]
       46 GETTABLEKS                       R9 R9 K19 ["StudioUri"]
       48 GETIMPORT                        R10 K5 [require]
       50 GETTABLEKS                       R11 R0 K20 ["Src"]
       52 GETTABLEKS                       R11 R11 K21 ["SharedFlags"]
       54 GETTABLEKS                       R11 R11 K22 ["getFFlagModerationDialogMigrateUseDialog"]
       56 CALL                             R10 1 1
       57 CALL                             R10 0 1
       58 DUPCLOSURE                       R11 K23 [PROTO_5]
       59 CAPTURE                          VAL R5
       60 CAPTURE                          VAL R6
       61 CAPTURE                          VAL R1
       62 CAPTURE                          VAL R10
       63 CAPTURE                          VAL R8
       64 CAPTURE                          VAL R9
       65 CAPTURE                          VAL R7
       66 RETURN                           R11 1
