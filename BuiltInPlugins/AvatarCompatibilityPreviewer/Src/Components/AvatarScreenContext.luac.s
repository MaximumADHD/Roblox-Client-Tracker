PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onIsColorableAcquired"]
        3 NAMECALL                         R0 R0 K1 ["Fire"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["selectedAvatar"]
        4 CALL                             R0 1 1
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R1 R2 K1 ["onIsColorableAcquired"]
        8 JUMPIFEQKNIL                     R1 ; [+6]
       10 GETIMPORT                        R1 K4 [task.defer]
       12 NEWCLOSURE                       R2 P0
       13 CAPTURE                          UPVAL U2
       14 CALL                             R1 1 0
       15 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K2 ["useState"]
       10 NEWTABLE                         R3 0 0
       12 CALL                             R2 1 2
       13 GETUPVAL                         R4 2
       14 CALL                             R4 0 1
       15 GETUPVAL                         R5 3
       16 NEWCLOSURE                       R6 P0
       17 CAPTURE                          UPVAL U4
       18 CAPTURE                          VAL R0
       19 CAPTURE                          VAL R1
       20 NEWTABLE                         R7 0 2
       22 GETTABLEKS                       R8 R0 K3 ["selectedAvatar"]
       24 GETTABLEKS                       R9 R1 K4 ["onIsColorableAcquired"]
       26 SETLIST                          R7 R8 2 [1]
       28 CALL                             R5 2 1
       29 DUPTABLE                         R6 K14 [{"openPalette", "focusedAttachments", "setFocusedAttachments", "dummyPreviewLocked", "incrementDummyPreviewLock", "decrementDummyPreviewLock", "resetCamera", "stage", "isColorable"}]
       30 GETTABLEKS                       R7 R0 K5 ["openPalette"]
       32 SETTABLEKS                       R7 R6 K5 ["openPalette"]
       34 SETTABLEKS                       R2 R6 K6 ["focusedAttachments"]
       36 SETTABLEKS                       R3 R6 K7 ["setFocusedAttachments"]
       38 GETTABLEKS                       R8 R4 K15 ["amount"]
       40 LOADN                            R9 0
       41 JUMPIFLT                         R9 R8 ; [+2]
       43 LOADB                            R7 0 +1
       44 LOADB                            R7 1
       45 SETTABLEKS                       R7 R6 K8 ["dummyPreviewLocked"]
       47 GETTABLEKS                       R7 R4 K16 ["increment"]
       49 SETTABLEKS                       R7 R6 K9 ["incrementDummyPreviewLock"]
       51 GETTABLEKS                       R7 R4 K17 ["decrement"]
       53 SETTABLEKS                       R7 R6 K10 ["decrementDummyPreviewLock"]
       55 GETTABLEKS                       R7 R0 K11 ["resetCamera"]
       57 SETTABLEKS                       R7 R6 K11 ["resetCamera"]
       59 GETTABLEKS                       R7 R0 K12 ["stage"]
       61 SETTABLEKS                       R7 R6 K12 ["stage"]
       63 GETTABLEKS                       R8 R5 K18 ["state"]
       65 JUMPIFNOTEQKS                    R8 K19 ["ok"] ; [+4]
       67 GETTABLEKS                       R7 R5 K20 ["value"]
       69 JUMP                             ; [+1]
       70 LOADB                            R7 1
       71 SETTABLEKS                       R7 R6 K13 ["isColorable"]
       73 GETUPVAL                         R8 0
       74 GETTABLEKS                       R7 R8 K21 ["createElement"]
       76 GETUPVAL                         R9 5
       77 GETTABLEKS                       R8 R9 K22 ["Provider"]
       79 DUPTABLE                         R9 K23 [{"value"}]
       80 SETTABLEKS                       R6 R9 K20 ["value"]
       82 GETTABLEKS                       R10 R0 K24 ["children"]
       84 CALL                             R7 3 -1
       85 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R8 R0 K8 ["Src"]
       18 GETTABLEKS                       R7 R8 K9 ["Components"]
       20 GETTABLEKS                       R6 R7 K10 ["Screens"]
       22 GETTABLEKS                       R5 R6 K11 ["AvatarScreen"]
       24 GETTABLEKS                       R4 R5 K12 ["Stages"]
       26 GETTABLEKS                       R3 R4 K13 ["StageType"]
       28 CALL                             R2 1 1
       29 GETIMPORT                        R3 K5 [require]
       31 GETTABLEKS                       R6 R0 K8 ["Src"]
       33 GETTABLEKS                       R5 R6 K9 ["Components"]
       35 GETTABLEKS                       R4 R5 K14 ["TestingInterfaceContext"]
       37 CALL                             R3 1 1
       38 GETIMPORT                        R4 K5 [require]
       40 GETTABLEKS                       R6 R0 K8 ["Src"]
       42 GETTABLEKS                       R5 R6 K15 ["Types"]
       44 CALL                             R4 1 1
       45 GETIMPORT                        R5 K5 [require]
       47 GETTABLEKS                       R8 R0 K8 ["Src"]
       49 GETTABLEKS                       R7 R8 K16 ["Util"]
       51 GETTABLEKS                       R6 R7 K17 ["createUnimplemented"]
       53 CALL                             R5 1 1
       54 GETIMPORT                        R6 K5 [require]
       56 GETTABLEKS                       R9 R0 K8 ["Src"]
       58 GETTABLEKS                       R8 R9 K16 ["Util"]
       60 GETTABLEKS                       R7 R8 K18 ["skinToneAvailableAsync"]
       62 CALL                             R6 1 1
       63 GETIMPORT                        R7 K5 [require]
       65 GETTABLEKS                       R10 R0 K8 ["Src"]
       67 GETTABLEKS                       R9 R10 K19 ["Hooks"]
       69 GETTABLEKS                       R8 R9 K20 ["useAsync"]
       71 CALL                             R7 1 1
       72 GETIMPORT                        R8 K5 [require]
       74 GETTABLEKS                       R11 R0 K8 ["Src"]
       76 GETTABLEKS                       R10 R11 K19 ["Hooks"]
       78 GETTABLEKS                       R9 R10 K21 ["useIncrementedState"]
       80 CALL                             R8 1 1
       81 DUPTABLE                         R9 K31 [{"openPalette", "focusedAttachments", "setFocusedAttachments", "dummyPreviewLocked", "incrementDummyPreviewLock", "decrementDummyPreviewLock", "resetCamera", "stage", "isColorable"}]
       82 MOVE                             R10 R5
       83 LOADK                            R11 K22 ["openPalette"]
       84 CALL                             R10 1 1
       85 SETTABLEKS                       R10 R9 K22 ["openPalette"]
       87 NEWTABLE                         R10 0 0
       89 SETTABLEKS                       R10 R9 K23 ["focusedAttachments"]
       91 MOVE                             R10 R5
       92 LOADK                            R11 K24 ["setFocusedAttachments"]
       93 CALL                             R10 1 1
       94 SETTABLEKS                       R10 R9 K24 ["setFocusedAttachments"]
       96 LOADB                            R10 0
       97 SETTABLEKS                       R10 R9 K25 ["dummyPreviewLocked"]
       99 MOVE                             R10 R5
      100 LOADK                            R11 K26 ["incrementDummyPreviewLock"]
      101 CALL                             R10 1 1
      102 SETTABLEKS                       R10 R9 K26 ["incrementDummyPreviewLock"]
      104 MOVE                             R10 R5
      105 LOADK                            R11 K27 ["decrementDummyPreviewLock"]
      106 CALL                             R10 1 1
      107 SETTABLEKS                       R10 R9 K27 ["decrementDummyPreviewLock"]
      109 DUPCLOSURE                       R10 K32 [PROTO_0]
      110 SETTABLEKS                       R10 R9 K28 ["resetCamera"]
      112 NEWTABLE                         R10 0 0
      114 SETTABLEKS                       R10 R9 K29 ["stage"]
      116 LOADB                            R10 1
      117 SETTABLEKS                       R10 R9 K30 ["isColorable"]
      119 GETTABLEKS                       R10 R1 K33 ["createContext"]
      121 MOVE                             R11 R9
      122 CALL                             R10 1 1
      123 DUPCLOSURE                       R11 K34 [PROTO_3]
      124 CAPTURE                          VAL R1
      125 CAPTURE                          VAL R3
      126 CAPTURE                          VAL R8
      127 CAPTURE                          VAL R7
      128 CAPTURE                          VAL R6
      129 CAPTURE                          VAL R10
      130 DUPTABLE                         R12 K37 [{"Context", "Provider"}]
      131 SETTABLEKS                       R10 R12 K35 ["Context"]
      133 SETTABLEKS                       R11 R12 K36 ["Provider"]
      135 RETURN                           R12 1
