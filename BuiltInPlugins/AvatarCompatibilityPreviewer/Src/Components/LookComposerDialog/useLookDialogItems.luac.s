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
       66 GETUPVAL                         R3 3
       67 GETTABLEKS                       R2 R3 K13 ["selectedCreatorId"]
       69 LOADK                            R4 K14 ["_"]
       70 NAMECALL                         R2 R2 K15 ["split"]
       72 CALL                             R2 2 1
       73 GETTABLEN                        R1 R2 1
       74 GETUPVAL                         R4 3
       75 GETTABLEKS                       R3 R4 K13 ["selectedCreatorId"]
       77 LOADK                            R5 K14 ["_"]
       78 NAMECALL                         R3 R3 K15 ["split"]
       80 CALL                             R3 2 1
       81 GETTABLEN                        R2 R3 2
       82 GETUPVAL                         R3 4
       83 NEWCLOSURE                       R4 P0
       84 CAPTURE                          UPVAL U0
       85 CAPTURE                          VAL R2
       86 CAPTURE                          VAL R1
       87 CALL                             R3 1 0
       88 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["useState"]
        7 NEWTABLE                         R3 0 0
        9 CALL                             R2 1 2
       10 GETUPVAL                         R5 1
       11 GETTABLEKS                       R4 R5 K1 ["useState"]
       13 NEWTABLE                         R5 0 0
       15 CALL                             R4 1 2
       16 GETUPVAL                         R6 2
       17 NEWCLOSURE                       R7 P0
       18 CAPTURE                          UPVAL U3
       19 CAPTURE                          VAL R0
       20 NEWTABLE                         R8 0 2
       22 GETTABLEKS                       R9 R0 K2 ["dialogLookType"]
       24 GETTABLEKS                       R10 R0 K3 ["equippedItems"]
       26 SETLIST                          R8 R9 2 [1]
       28 CALL                             R6 2 1
       29 GETUPVAL                         R8 1
       30 GETTABLEKS                       R7 R8 K4 ["useCallback"]
       32 NEWCLOSURE                       R8 P1
       33 CAPTURE                          VAL R3
       34 NEWTABLE                         R9 0 0
       36 CALL                             R7 2 1
       37 GETUPVAL                         R9 1
       38 GETTABLEKS                       R8 R9 K5 ["useEffect"]
       40 NEWCLOSURE                       R9 P2
       41 CAPTURE                          VAL R6
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R5
       44 CAPTURE                          VAL R0
       45 CAPTURE                          VAL R3
       46 NEWTABLE                         R10 0 2
       48 GETTABLEKS                       R11 R6 K6 ["state"]
       50 GETTABLEKS                       R12 R0 K7 ["selectedCreatorId"]
       52 SETLIST                          R10 R11 2 [1]
       54 CALL                             R8 2 0
       55 DUPTABLE                         R8 K12 [{"dialogItems", "setDialogItemRowState", "previewErrorMessages", "isDialogItemsInitialized"}]
       56 SETTABLEKS                       R2 R8 K8 ["dialogItems"]
       58 SETTABLEKS                       R7 R8 K9 ["setDialogItemRowState"]
       60 SETTABLEKS                       R4 R8 K10 ["previewErrorMessages"]
       62 GETTABLEKS                       R10 R6 K6 ["state"]
       64 JUMPIFEQKS                       R10 K13 ["ok"] ; [+2]
       66 LOADB                            R9 0 +1
       67 LOADB                            R9 1
       68 SETTABLEKS                       R9 R8 K11 ["isDialogItemsInitialized"]
       70 RETURN                           R8 1

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
       16 GETTABLEKS                       R2 R3 K9 ["Localization"]
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R5 R0 K6 ["Packages"]
       22 GETTABLEKS                       R4 R5 K10 ["React"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R6 R0 K11 ["Src"]
       29 GETTABLEKS                       R5 R6 K12 ["Types"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K5 [require]
       34 GETTABLEKS                       R8 R0 K11 ["Src"]
       36 GETTABLEKS                       R7 R8 K13 ["Util"]
       38 GETTABLEKS                       R6 R7 K14 ["LookComposerUtils"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K5 [require]
       43 GETTABLEKS                       R9 R0 K11 ["Src"]
       45 GETTABLEKS                       R8 R9 K15 ["Hooks"]
       47 GETTABLEKS                       R7 R8 K16 ["useAsync"]
       49 CALL                             R6 1 1
       50 DUPCLOSURE                       R7 K17 [PROTO_5]
       51 CAPTURE                          VAL R2
       52 CAPTURE                          VAL R3
       53 CAPTURE                          VAL R6
       54 CAPTURE                          VAL R5
       55 RETURN                           R7 1
