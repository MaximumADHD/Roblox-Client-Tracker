PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["isDialogItemsInitialized"]
        3 JUMPIF                           R0 ; [+4]
        4 NEWTABLE                         R0 0 0
        6 LOADB                            R1 1
        7 RETURN                           R0 2
        8 LOADB                            R0 0
        9 NEWTABLE                         R1 0 0
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R2 R5 K1 ["previewErrorMessages"]
       14 LOADNIL                          R3
       15 LOADNIL                          R4
       16 FORGPREP                         R2
       17 GETTABLEKS                       R9 R6 K2 ["message"]
       19 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       21 MOVE                             R8 R1
       22 GETIMPORT                        R7 K5 [table.insert]
       24 CALL                             R7 2 0
       25 GETTABLEKS                       R7 R6 K6 ["isBlocking"]
       27 JUMPIFNOT                        R7 ; [+1]
       28 LOADB                            R0 1
       29 FORGLOOP                         R2 2 ; [-13]
       31 GETUPVAL                         R5 0
       32 GETTABLEKS                       R2 R5 K7 ["validationErrorMessages"]
       34 LOADNIL                          R3
       35 LOADNIL                          R4
       36 FORGPREP                         R2
       37 GETTABLEKS                       R9 R6 K2 ["message"]
       39 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       41 MOVE                             R8 R1
       42 GETIMPORT                        R7 K5 [table.insert]
       44 CALL                             R7 2 0
       45 GETTABLEKS                       R7 R6 K6 ["isBlocking"]
       47 JUMPIFNOT                        R7 ; [+1]
       48 LOADB                            R0 1
       49 FORGLOOP                         R2 2 ; [-13]
       51 LOADN                            R2 0
       52 LOADB                            R3 0
       53 GETUPVAL                         R7 0
       54 GETTABLEKS                       R4 R7 K8 ["dialogItems"]
       56 LOADNIL                          R5
       57 LOADNIL                          R6
       58 FORGPREP                         R4
       59 GETTABLEKS                       R9 R8 K9 ["itemRowType"]
       61 JUMPIFNOTEQKS                    R9 K10 ["Asset"] ; [+7]
       63 GETTABLEKS                       R9 R8 K11 ["rowState"]
       65 JUMPIFNOTEQKS                    R9 K12 ["Disabled"] ; [+3]
       67 LOADB                            R3 1
       68 JUMP                             ; [+9]
       69 GETTABLEKS                       R9 R8 K9 ["itemRowType"]
       71 JUMPIFNOTEQKS                    R9 K10 ["Asset"] ; [+6]
       73 GETTABLEKS                       R9 R8 K11 ["rowState"]
       75 JUMPIFNOTEQKS                    R9 K13 ["Selected"] ; [+2]
       77 ADDK                             R2 R2 K14 [1]
       78 FORGLOOP                         R4 2 ; [-20]
       80 LOADN                            R4 3
       81 JUMPIFNOTLT                      R2 R4 ; [+18]
       83 GETUPVAL                         R5 0
       84 GETTABLEKS                       R4 R5 K15 ["dialogLookType"]
       86 JUMPIFNOTEQKS                    R4 K16 ["MakeupLook"] ; [+13]
       88 MOVE                             R5 R1
       89 GETUPVAL                         R6 1
       90 LOADK                            R8 K17 ["LookComposerDialog"]
       91 LOADK                            R9 K18 ["MinimumMakeupItems"]
       92 NAMECALL                         R6 R6 K19 ["getText"]
       94 CALL                             R6 3 -1
       95 FASTCALL                         TABLE_INSERT ; [+2]
       96 GETIMPORT                        R4 K5 [table.insert]
       98 CALL                             R4 -1 0
       99 LOADB                            R0 1
      100 JUMPIFNOT                        R3 ; [+11]
      101 MOVE                             R5 R1
      102 GETUPVAL                         R6 1
      103 LOADK                            R8 K17 ["LookComposerDialog"]
      104 LOADK                            R9 K20 ["MakeupLookDifferentCreator"]
      105 NAMECALL                         R6 R6 K19 ["getText"]
      107 CALL                             R6 3 -1
      108 FASTCALL                         TABLE_INSERT ; [+2]
      109 GETIMPORT                        R4 K5 [table.insert]
      111 CALL                             R4 -1 0
      112 MOVE                             R4 R1
      113 MOVE                             R5 R0
      114 RETURN                           R4 2

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["useMemo"]
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          VAL R0
        9 CAPTURE                          VAL R1
       10 NEWTABLE                         R4 0 5
       12 GETTABLEKS                       R5 R0 K2 ["previewErrorMessages"]
       14 GETTABLEKS                       R6 R0 K3 ["validationErrorMessages"]
       16 GETTABLEKS                       R7 R0 K4 ["dialogItems"]
       18 GETTABLEKS                       R8 R0 K5 ["dialogLookType"]
       20 GETTABLEKS                       R9 R0 K6 ["isDialogItemsInitialized"]
       22 SETLIST                          R4 R5 5 [1]
       24 CALL                             R2 2 2
       25 DUPTABLE                         R4 K9 [{"errorBannerMessages", "hasBlockingError"}]
       26 SETTABLEKS                       R2 R4 K7 ["errorBannerMessages"]
       28 SETTABLEKS                       R3 R4 K8 ["hasBlockingError"]
       30 RETURN                           R4 1

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
       32 DUPCLOSURE                       R5 K13 [PROTO_1]
       33 CAPTURE                          VAL R2
       34 CAPTURE                          VAL R3
       35 RETURN                           R5 1
