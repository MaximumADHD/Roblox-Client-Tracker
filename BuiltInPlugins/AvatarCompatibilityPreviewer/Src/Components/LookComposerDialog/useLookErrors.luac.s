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
       59 LOADNIL                          R9
       60 GETUPVAL                         R10 1
       61 CALL                             R10 0 1
       62 JUMPIFNOT                        R10 ; [+13]
       63 LOADB                            R10 1
       64 GETTABLEKS                       R11 R8 K9 ["itemRowType"]
       66 JUMPIFEQKS                       R11 K10 ["Asset"] ; [+7]
       68 GETTABLEKS                       R11 R8 K9 ["itemRowType"]
       70 JUMPIFEQKS                       R11 K11 ["Bundle"] ; [+2]
       72 LOADB                            R10 0 +1
       73 LOADB                            R10 1
       74 MOVE                             R9 R10
       75 JUMP                             ; [+6]
       76 GETTABLEKS                       R10 R8 K9 ["itemRowType"]
       78 JUMPIFEQKS                       R10 K10 ["Asset"] ; [+2]
       80 LOADB                            R9 0 +1
       81 LOADB                            R9 1
       82 JUMPIFNOT                        R9 ; [+6]
       83 GETTABLEKS                       R10 R8 K12 ["rowState"]
       85 JUMPIFNOTEQKS                    R10 K13 ["Disabled"] ; [+3]
       87 LOADB                            R3 1
       88 JUMP                             ; [+6]
       89 JUMPIFNOT                        R9 ; [+5]
       90 GETTABLEKS                       R10 R8 K12 ["rowState"]
       92 JUMPIFNOTEQKS                    R10 K14 ["Selected"] ; [+2]
       94 ADDK                             R2 R2 K15 [1]
       95 FORGLOOP                         R4 2 ; [-37]
       97 LOADN                            R4 3
       98 JUMPIFNOTLT                      R2 R4 ; [+18]
      100 GETUPVAL                         R5 0
      101 GETTABLEKS                       R4 R5 K16 ["dialogLookType"]
      103 JUMPIFNOTEQKS                    R4 K17 ["MakeupLook"] ; [+13]
      105 MOVE                             R5 R1
      106 GETUPVAL                         R6 2
      107 LOADK                            R8 K18 ["LookComposerDialog"]
      108 LOADK                            R9 K19 ["MinimumMakeupItems"]
      109 NAMECALL                         R6 R6 K20 ["getText"]
      111 CALL                             R6 3 -1
      112 FASTCALL                         TABLE_INSERT ; [+2]
      113 GETIMPORT                        R4 K5 [table.insert]
      115 CALL                             R4 -1 0
      116 LOADB                            R0 1
      117 JUMPIFNOT                        R3 ; [+11]
      118 MOVE                             R5 R1
      119 GETUPVAL                         R6 2
      120 LOADK                            R8 K18 ["LookComposerDialog"]
      121 LOADK                            R9 K21 ["MakeupLookDifferentCreator"]
      122 NAMECALL                         R6 R6 K20 ["getText"]
      124 CALL                             R6 3 -1
      125 FASTCALL                         TABLE_INSERT ; [+2]
      126 GETIMPORT                        R4 K5 [table.insert]
      128 CALL                             R4 -1 0
      129 MOVE                             R4 R1
      130 MOVE                             R5 R0
      131 RETURN                           R4 2

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["useMemo"]
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          VAL R1
       11 NEWTABLE                         R4 0 5
       13 GETTABLEKS                       R5 R0 K2 ["previewErrorMessages"]
       15 GETTABLEKS                       R6 R0 K3 ["validationErrorMessages"]
       17 GETTABLEKS                       R7 R0 K4 ["dialogItems"]
       19 GETTABLEKS                       R8 R0 K5 ["dialogLookType"]
       21 GETTABLEKS                       R9 R0 K6 ["isDialogItemsInitialized"]
       23 SETLIST                          R4 R5 5 [1]
       25 CALL                             R2 2 2
       26 DUPTABLE                         R4 K9 [{"errorBannerMessages", "hasBlockingError"}]
       27 SETTABLEKS                       R2 R4 K7 ["errorBannerMessages"]
       29 SETTABLEKS                       R3 R4 K8 ["hasBlockingError"]
       31 RETURN                           R4 1

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
       36 GETTABLEKS                       R7 R8 K13 ["Flags"]
       38 GETTABLEKS                       R6 R7 K14 ["getFFlagAvatarPreviewerAvatarLooksEnabled"]
       40 CALL                             R5 1 1
       41 DUPCLOSURE                       R6 K15 [PROTO_1]
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R3
       44 CAPTURE                          VAL R5
       45 RETURN                           R6 1
