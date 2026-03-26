PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["lookPreviewAsync"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["dialogLookType"]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R2 R3 K2 ["equippedItems"]
        9 CALL                             R0 2 -1
       10 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R3 0
        5 GETTABLE                         R2 R1 R3
        6 GETUPVAL                         R3 1
        7 SETTABLEKS                       R3 R2 K3 ["rowState"]
        9 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R0 K2 [table.clone]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K3 ["value"]
        5 GETTABLEKS                       R1 R2 K4 ["lookItems"]
        7 CALL                             R0 1 1
        8 MOVE                             R1 R0
        9 LOADNIL                          R2
       10 LOADNIL                          R3
       11 FORGPREP                         R1
       12 GETTABLEKS                       R6 R5 K5 ["itemRowType"]
       14 JUMPIFEQKS                       R6 K6 ["Asset"] ; [+5]
       16 GETTABLEKS                       R6 R5 K5 ["itemRowType"]
       18 JUMPIFNOTEQKS                    R6 K7 ["Bundle"] ; [+20]
       20 GETTABLEKS                       R6 R5 K8 ["creatorId"]
       22 GETUPVAL                         R7 1
       23 JUMPIFNOTEQ                      R6 R7 ; [+11]
       25 GETTABLEKS                       R6 R5 K9 ["creatorType"]
       27 GETUPVAL                         R7 2
       28 JUMPIFNOTEQ                      R6 R7 ; [+6]
       30 GETTABLE                         R6 R0 R4
       31 LOADK                            R7 K10 ["Selected"]
       32 SETTABLEKS                       R7 R6 K11 ["rowState"]
       34 JUMP                             ; [+4]
       35 GETTABLE                         R6 R0 R4
       36 LOADK                            R7 K12 ["Disabled"]
       37 SETTABLEKS                       R7 R6 K11 ["rowState"]
       39 FORGLOOP                         R1 2 ; [-28]
       41 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["state"]
        3 JUMPIFNOTEQKS                    R0 K1 ["loading"] ; [+2]
        5 RETURN                           R0 0
        6 NEWTABLE                         R0 0 0
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R4 R5 K2 ["value"]
       11 GETTABLEKS                       R1 R4 K3 ["errorMessages"]
       13 LOADNIL                          R2
       14 LOADNIL                          R3
       15 FORGPREP                         R1
       16 GETTABLEKS                       R6 R5 K4 ["isLocalized"]
       18 JUMPIFNOT                        R6 ; [+19]
       19 DUPTABLE                         R8 K7 [{"message", "isBlocking", "isLocalized"}]
       20 GETTABLEKS                       R9 R5 K5 ["message"]
       22 SETTABLEKS                       R9 R8 K5 ["message"]
       24 GETTABLEKS                       R9 R5 K6 ["isBlocking"]
       26 SETTABLEKS                       R9 R8 K6 ["isBlocking"]
       28 LOADB                            R9 1
       29 SETTABLEKS                       R9 R8 K4 ["isLocalized"]
       31 FASTCALL2                        TABLE_INSERT R0 R8 ; [+4]
       33 MOVE                             R7 R0
       34 GETIMPORT                        R6 K10 [table.insert]
       36 CALL                             R6 2 0
       37 JUMP                             ; [+23]
       38 DUPTABLE                         R8 K7 [{"message", "isBlocking", "isLocalized"}]
       39 GETUPVAL                         R9 1
       40 LOADK                            R11 K11 ["LookComposerDialog"]
       41 GETTABLEKS                       R12 R5 K5 ["message"]
       43 NAMECALL                         R9 R9 K12 ["getText"]
       45 CALL                             R9 3 1
       46 SETTABLEKS                       R9 R8 K5 ["message"]
       48 GETTABLEKS                       R9 R5 K6 ["isBlocking"]
       50 SETTABLEKS                       R9 R8 K6 ["isBlocking"]
       52 LOADB                            R9 1
       53 SETTABLEKS                       R9 R8 K4 ["isLocalized"]
       55 FASTCALL2                        TABLE_INSERT R0 R8 ; [+4]
       57 MOVE                             R7 R0
       58 GETIMPORT                        R6 K10 [table.insert]
       60 CALL                             R6 2 0
       61 FORGLOOP                         R1 2 ; [-46]
       63 GETUPVAL                         R1 2
       64 MOVE                             R2 R0
       65 CALL                             R1 1 0
       66 LENGTH                           R1 R0
       67 LOADN                            R2 0
       68 JUMPIFNOTLT                      R2 R1 ; [+7]
       70 GETUPVAL                         R1 3
       71 LOADK                            R3 K13 ["marketplaceLookPreviewError"]
       72 NAMECALL                         R1 R1 K14 ["report"]
       74 CALL                             R1 2 0
       75 JUMP                             ; [+5]
       76 GETUPVAL                         R1 3
       77 LOADK                            R3 K15 ["marketplaceLookPreviewSuccess"]
       78 NAMECALL                         R1 R1 K14 ["report"]
       80 CALL                             R1 2 0
       81 GETUPVAL                         R3 4
       82 GETTABLEKS                       R2 R3 K16 ["selectedCreatorId"]
       84 LOADK                            R4 K17 ["_"]
       85 NAMECALL                         R2 R2 K18 ["split"]
       87 CALL                             R2 2 1
       88 GETTABLEN                        R1 R2 1
       89 GETUPVAL                         R4 4
       90 GETTABLEKS                       R3 R4 K16 ["selectedCreatorId"]
       92 LOADK                            R5 K17 ["_"]
       93 NAMECALL                         R3 R3 K18 ["split"]
       95 CALL                             R3 2 1
       96 GETTABLEN                        R2 R3 2
       97 GETUPVAL                         R3 5
       98 NEWCLOSURE                       R4 P0
       99 CAPTURE                          UPVAL U0
      100 CAPTURE                          VAL R2
      101 CAPTURE                          VAL R1
      102 CALL                             R3 1 0
      103 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 NAMECALL                         R2 R2 K0 ["use"]
        7 CALL                             R2 1 1
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R3 R4 K1 ["useState"]
       11 NEWTABLE                         R4 0 0
       13 CALL                             R3 1 2
       14 GETUPVAL                         R6 2
       15 GETTABLEKS                       R5 R6 K1 ["useState"]
       17 NEWTABLE                         R6 0 0
       19 CALL                             R5 1 2
       20 GETUPVAL                         R7 3
       21 NEWCLOSURE                       R8 P0
       22 CAPTURE                          UPVAL U4
       23 CAPTURE                          VAL R0
       24 NEWTABLE                         R9 0 2
       26 GETTABLEKS                       R10 R0 K2 ["dialogLookType"]
       28 GETTABLEKS                       R11 R0 K3 ["equippedItems"]
       30 SETLIST                          R9 R10 2 [1]
       32 CALL                             R7 2 1
       33 GETUPVAL                         R9 2
       34 GETTABLEKS                       R8 R9 K4 ["useCallback"]
       36 NEWCLOSURE                       R9 P1
       37 CAPTURE                          VAL R4
       38 NEWTABLE                         R10 0 0
       40 CALL                             R8 2 1
       41 GETUPVAL                         R10 2
       42 GETTABLEKS                       R9 R10 K5 ["useEffect"]
       44 NEWCLOSURE                       R10 P2
       45 CAPTURE                          VAL R7
       46 CAPTURE                          VAL R1
       47 CAPTURE                          VAL R6
       48 CAPTURE                          VAL R2
       49 CAPTURE                          VAL R0
       50 CAPTURE                          VAL R4
       51 NEWTABLE                         R11 0 2
       53 GETTABLEKS                       R12 R7 K6 ["state"]
       55 GETTABLEKS                       R13 R0 K7 ["selectedCreatorId"]
       57 SETLIST                          R11 R12 2 [1]
       59 CALL                             R9 2 0
       60 DUPTABLE                         R9 K12 [{"dialogItems", "setDialogItemRowState", "previewErrorMessages", "isDialogItemsInitialized"}]
       61 SETTABLEKS                       R3 R9 K8 ["dialogItems"]
       63 SETTABLEKS                       R8 R9 K9 ["setDialogItemRowState"]
       65 SETTABLEKS                       R5 R9 K10 ["previewErrorMessages"]
       67 GETTABLEKS                       R11 R7 K6 ["state"]
       69 JUMPIFEQKS                       R11 K13 ["ok"] ; [+2]
       71 LOADB                            R10 0 +1
       72 LOADB                            R10 1
       73 SETTABLEKS                       R10 R9 K11 ["isDialogItemsInitialized"]
       75 RETURN                           R9 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R3 R1 K8 ["ContextServices"]
       16 GETTABLEKS                       R2 R3 K9 ["Analytics"]
       18 GETTABLEKS                       R4 R1 K8 ["ContextServices"]
       20 GETTABLEKS                       R3 R4 K10 ["Localization"]
       22 GETIMPORT                        R4 K5 [require]
       24 GETTABLEKS                       R6 R0 K6 ["Packages"]
       26 GETTABLEKS                       R5 R6 K11 ["React"]
       28 CALL                             R4 1 1
       29 GETIMPORT                        R5 K5 [require]
       31 GETTABLEKS                       R7 R0 K12 ["Src"]
       33 GETTABLEKS                       R6 R7 K13 ["Types"]
       35 CALL                             R5 1 1
       36 GETIMPORT                        R6 K5 [require]
       38 GETTABLEKS                       R9 R0 K12 ["Src"]
       40 GETTABLEKS                       R8 R9 K14 ["Util"]
       42 GETTABLEKS                       R7 R8 K15 ["LookComposerUtils"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K5 [require]
       47 GETTABLEKS                       R10 R0 K12 ["Src"]
       49 GETTABLEKS                       R9 R10 K16 ["Hooks"]
       51 GETTABLEKS                       R8 R9 K17 ["useAsync"]
       53 CALL                             R7 1 1
       54 DUPCLOSURE                       R8 K18 [PROTO_5]
       55 CAPTURE                          VAL R3
       56 CAPTURE                          VAL R2
       57 CAPTURE                          VAL R4
       58 CAPTURE                          VAL R7
       59 CAPTURE                          VAL R6
       60 RETURN                           R8 1
