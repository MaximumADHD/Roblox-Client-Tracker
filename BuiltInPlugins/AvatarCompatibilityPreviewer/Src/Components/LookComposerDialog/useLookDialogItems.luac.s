PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["lookPreviewAsync"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["dialogLookType"]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["equippedItems"]
        9 GETUPVAL                         R3 2
       10 CALL                             R0 3 -1
       11 RETURN                           R0 -1

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
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K3 ["value"]
        5 GETTABLEKS                       R1 R1 K4 ["lookItems"]
        7 CALL                             R0 1 1
        8 GETUPVAL                         R1 1
        9 CALL                             R1 0 1
       10 JUMPIFNOT                        R1 ; [+7]
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R2 R2 K5 ["dialogLookType"]
       14 JUMPIFEQKS                       R2 K6 ["AvatarLook"] ; [+2]
       16 LOADB                            R1 0 +1
       17 LOADB                            R1 1
       18 MOVE                             R2 R0
       19 LOADNIL                          R3
       20 LOADNIL                          R4
       21 FORGPREP                         R2
       22 GETTABLEKS                       R7 R6 K7 ["itemRowType"]
       24 JUMPIFEQKS                       R7 K8 ["Asset"] ; [+5]
       26 GETTABLEKS                       R7 R6 K7 ["itemRowType"]
       28 JUMPIFNOTEQKS                    R7 K9 ["Bundle"] ; [+21]
       30 JUMPIF                           R1 ; [+10]
       31 GETTABLEKS                       R7 R6 K10 ["creatorId"]
       33 GETUPVAL                         R8 3
       34 JUMPIFNOTEQ                      R7 R8 ; [+11]
       36 GETTABLEKS                       R7 R6 K11 ["creatorType"]
       38 GETUPVAL                         R8 4
       39 JUMPIFNOTEQ                      R7 R8 ; [+6]
       41 GETTABLE                         R7 R0 R5
       42 LOADK                            R8 K12 ["Selected"]
       43 SETTABLEKS                       R8 R7 K13 ["rowState"]
       45 JUMP                             ; [+4]
       46 GETTABLE                         R7 R0 R5
       47 LOADK                            R8 K14 ["Disabled"]
       48 SETTABLEKS                       R8 R7 K13 ["rowState"]
       50 FORGLOOP                         R2 2 ; [-29]
       52 GETUPVAL                         R2 1
       53 CALL                             R2 0 1
       54 JUMPIFNOT                        R2 ; [+45]
       55 GETUPVAL                         R2 2
       56 GETTABLEKS                       R2 R2 K5 ["dialogLookType"]
       58 JUMPIFNOTEQKS                    R2 K6 ["AvatarLook"] ; [+41]
       60 LOADNIL                          R2
       61 GETUPVAL                         R3 2
       62 GETTABLEKS                       R3 R3 K15 ["equippedItems"]
       64 LOADNIL                          R4
       65 LOADNIL                          R5
       66 FORGPREP                         R3
       67 GETTABLEKS                       R8 R7 K16 ["palette"]
       69 GETTABLEKS                       R8 R8 K17 ["Key"]
       71 JUMPIFNOTEQKS                    R8 K18 ["Skin"] ; [+15]
       73 GETTABLEKS                       R8 R7 K19 ["item"]
       75 GETTABLEKS                       R8 R8 K20 ["source"]
       77 GETUPVAL                         R9 5
       78 GETTABLEKS                       R9 R9 K21 ["SOURCE_BUILTIN"]
       80 JUMPIFNOTEQ                      R8 R9 ; [+6]
       82 GETTABLEKS                       R8 R7 K19 ["item"]
       84 GETTABLEKS                       R2 R8 K22 ["builtinItem"]
       86 JUMP                             ; [+2]
       87 FORGLOOP                         R3 2 ; [-21]
       89 JUMPIFNOT                        R2 ; [+10]
       90 LOADN                            R5 1
       91 DUPTABLE                         R6 K25 [{["itemRowType"] = "BodyColor", ["color"], ["rowState"] = "Selected"}]
       92 SETTABLEKS                       R2 R6 K24 ["color"]
       94 FASTCALL3                        TABLE_INSERT R0 R5 R6
       96 MOVE                             R4 R0
       97 GETIMPORT                        R3 K27 [table.insert]
       99 CALL                             R3 3 0
      100 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["state"]
        3 JUMPIFNOTEQKS                    R0 K1 ["loading"] ; [+2]
        5 RETURN                           R0 0
        6 NEWTABLE                         R0 0 0
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K2 ["value"]
       11 GETTABLEKS                       R1 R1 K3 ["errorMessages"]
       13 LOADNIL                          R2
       14 LOADNIL                          R3
       15 FORGPREP                         R1
       16 GETTABLEKS                       R6 R5 K4 ["isLocalized"]
       18 JUMPIFNOT                        R6 ; [+16]
       19 DUPTABLE                         R8 K8 [{["message"], ["isBlocking"], ["isLocalized"] = True}]
       20 GETTABLEKS                       R9 R5 K5 ["message"]
       22 SETTABLEKS                       R9 R8 K5 ["message"]
       24 GETTABLEKS                       R9 R5 K6 ["isBlocking"]
       26 SETTABLEKS                       R9 R8 K6 ["isBlocking"]
       28 FASTCALL2                        TABLE_INSERT R0 R8 ; [+4]
       30 MOVE                             R7 R0
       31 GETIMPORT                        R6 K11 [table.insert]
       33 CALL                             R6 2 0
       34 JUMP                             ; [+20]
       35 DUPTABLE                         R8 K8 [{["message"], ["isBlocking"], ["isLocalized"] = True}]
       36 GETUPVAL                         R9 1
       37 LOADK                            R11 K12 ["LookComposerDialog"]
       38 GETTABLEKS                       R12 R5 K5 ["message"]
       40 NAMECALL                         R9 R9 K13 ["getText"]
       42 CALL                             R9 3 1
       43 SETTABLEKS                       R9 R8 K5 ["message"]
       45 GETTABLEKS                       R9 R5 K6 ["isBlocking"]
       47 SETTABLEKS                       R9 R8 K6 ["isBlocking"]
       49 FASTCALL2                        TABLE_INSERT R0 R8 ; [+4]
       51 MOVE                             R7 R0
       52 GETIMPORT                        R6 K11 [table.insert]
       54 CALL                             R6 2 0
       55 FORGLOOP                         R1 2 ; [-40]
       57 GETUPVAL                         R1 2
       58 MOVE                             R2 R0
       59 CALL                             R1 1 0
       60 LENGTH                           R1 R0
       61 LOADN                            R2 0
       62 JUMPIFNOTLT                      R2 R1 ; [+7]
       64 GETUPVAL                         R1 3
       65 LOADK                            R3 K14 ["marketplaceLookPreviewError"]
       66 NAMECALL                         R1 R1 K15 ["report"]
       68 CALL                             R1 2 0
       69 JUMP                             ; [+5]
       70 GETUPVAL                         R1 3
       71 LOADK                            R3 K16 ["marketplaceLookPreviewSuccess"]
       72 NAMECALL                         R1 R1 K15 ["report"]
       74 CALL                             R1 2 0
       75 GETUPVAL                         R2 4
       76 GETTABLEKS                       R2 R2 K17 ["selectedCreatorId"]
       78 LOADK                            R4 K18 ["_"]
       79 NAMECALL                         R2 R2 K19 ["split"]
       81 CALL                             R2 2 1
       82 GETTABLEN                        R1 R2 1
       83 GETUPVAL                         R3 4
       84 GETTABLEKS                       R3 R3 K17 ["selectedCreatorId"]
       86 LOADK                            R5 K18 ["_"]
       87 NAMECALL                         R3 R3 K19 ["split"]
       89 CALL                             R3 2 1
       90 GETTABLEN                        R2 R3 2
       91 GETUPVAL                         R3 5
       92 NEWCLOSURE                       R4 P0
       93 CAPTURE                          UPVAL U0
       94 CAPTURE                          UPVAL U6
       95 CAPTURE                          UPVAL U4
       96 CAPTURE                          VAL R2
       97 CAPTURE                          VAL R1
       98 CAPTURE                          UPVAL U7
       99 CALL                             R3 1 0
      100 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 NAMECALL                         R2 R2 K0 ["use"]
        7 CALL                             R2 1 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K1 ["useState"]
       11 NEWTABLE                         R4 0 0
       13 CALL                             R3 1 2
       14 GETUPVAL                         R5 2
       15 GETTABLEKS                       R5 R5 K1 ["useState"]
       17 NEWTABLE                         R6 0 0
       19 CALL                             R5 1 2
       20 GETUPVAL                         R7 2
       21 GETTABLEKS                       R7 R7 K2 ["useContext"]
       23 GETUPVAL                         R8 3
       24 CALL                             R7 1 1
       25 GETUPVAL                         R8 4
       26 NEWCLOSURE                       R9 P0
       27 CAPTURE                          UPVAL U5
       28 CAPTURE                          VAL R0
       29 CAPTURE                          VAL R7
       30 NEWTABLE                         R10 0 4
       32 GETTABLEKS                       R11 R0 K3 ["dialogLookType"]
       34 GETTABLEKS                       R12 R0 K4 ["equippedItems"]
       36 GETTABLEKS                       R13 R7 K5 ["getBatchAssetDetailsAsync"]
       38 GETTABLEKS                       R14 R7 K6 ["getBatchBundleDetailsAsync"]
       40 SETLIST                          R10 R11 4 [1]
       42 CALL                             R8 2 1
       43 GETUPVAL                         R9 2
       44 GETTABLEKS                       R9 R9 K7 ["useCallback"]
       46 NEWCLOSURE                       R10 P1
       47 CAPTURE                          VAL R4
       48 NEWTABLE                         R11 0 0
       50 CALL                             R9 2 1
       51 GETUPVAL                         R10 2
       52 GETTABLEKS                       R10 R10 K8 ["useEffect"]
       54 NEWCLOSURE                       R11 P2
       55 CAPTURE                          VAL R8
       56 CAPTURE                          VAL R1
       57 CAPTURE                          VAL R6
       58 CAPTURE                          VAL R2
       59 CAPTURE                          VAL R0
       60 CAPTURE                          VAL R4
       61 CAPTURE                          UPVAL U6
       62 CAPTURE                          UPVAL U7
       63 NEWTABLE                         R12 0 2
       65 GETTABLEKS                       R13 R8 K9 ["state"]
       67 GETTABLEKS                       R14 R0 K10 ["selectedCreatorId"]
       69 SETLIST                          R12 R13 2 [1]
       71 CALL                             R10 2 0
       72 DUPTABLE                         R10 K15 [{"dialogItems", "setDialogItemRowState", "previewErrorMessages", "isDialogItemsInitialized"}]
       73 SETTABLEKS                       R3 R10 K11 ["dialogItems"]
       75 SETTABLEKS                       R9 R10 K12 ["setDialogItemRowState"]
       77 SETTABLEKS                       R5 R10 K13 ["previewErrorMessages"]
       79 GETTABLEKS                       R12 R8 K9 ["state"]
       81 JUMPIFEQKS                       R12 K16 ["ok"] ; [+2]
       83 LOADB                            R11 0 +1
       84 LOADB                            R11 1
       85 SETTABLEKS                       R11 R10 K14 ["isDialogItemsInitialized"]
       87 RETURN                           R10 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["ContextServices"]
       16 GETTABLEKS                       R2 R2 K9 ["Analytics"]
       18 GETTABLEKS                       R3 R1 K8 ["ContextServices"]
       20 GETTABLEKS                       R3 R3 K10 ["Localization"]
       22 GETIMPORT                        R4 K5 [require]
       24 GETTABLEKS                       R5 R0 K6 ["Packages"]
       26 GETTABLEKS                       R5 R5 K11 ["React"]
       28 CALL                             R4 1 1
       29 GETIMPORT                        R5 K5 [require]
       31 GETTABLEKS                       R6 R0 K12 ["Src"]
       33 GETTABLEKS                       R6 R6 K13 ["Types"]
       35 CALL                             R5 1 1
       36 GETIMPORT                        R6 K5 [require]
       38 GETTABLEKS                       R7 R0 K12 ["Src"]
       40 GETTABLEKS                       R7 R7 K14 ["Components"]
       42 GETTABLEKS                       R7 R7 K15 ["AvatarEditorServiceContext"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K5 [require]
       47 GETTABLEKS                       R8 R0 K12 ["Src"]
       49 GETTABLEKS                       R8 R8 K16 ["Util"]
       51 GETTABLEKS                       R8 R8 K17 ["Constants"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R9 R0 K12 ["Src"]
       58 GETTABLEKS                       R9 R9 K16 ["Util"]
       60 GETTABLEKS                       R9 R9 K18 ["LookComposerUtils"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R10 R0 K12 ["Src"]
       67 GETTABLEKS                       R10 R10 K19 ["Flags"]
       69 GETTABLEKS                       R10 R10 K20 ["getFFlagAvatarPreviewerAvatarLooksEnabled"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R11 R0 K12 ["Src"]
       76 GETTABLEKS                       R11 R11 K21 ["Hooks"]
       78 GETTABLEKS                       R11 R11 K22 ["useAsync"]
       80 CALL                             R10 1 1
       81 DUPCLOSURE                       R11 K23 [PROTO_5]
       82 CAPTURE                          VAL R3
       83 CAPTURE                          VAL R2
       84 CAPTURE                          VAL R4
       85 CAPTURE                          VAL R6
       86 CAPTURE                          VAL R10
       87 CAPTURE                          VAL R8
       88 CAPTURE                          VAL R9
       89 CAPTURE                          VAL R7
       90 RETURN                           R11 1
