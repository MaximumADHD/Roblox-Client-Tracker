PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onIsColorableAcquired"]
        3 NAMECALL                         R0 R0 K1 ["Fire"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_4:
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

PROTO_5:
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
       15 LOADNIL                          R5
       16 LOADNIL                          R6
       17 GETUPVAL                         R7 3
       18 CALL                             R7 0 1
       19 JUMPIFNOT                        R7 ; [+8]
       20 GETUPVAL                         R8 0
       21 GETTABLEKS                       R7 R8 K2 ["useState"]
       23 LOADB                            R8 0
       24 CALL                             R7 1 2
       25 MOVE                             R5 R7
       26 MOVE                             R6 R8
       27 JUMP                             ; [+2]
       28 LOADB                            R5 0
       29 DUPCLOSURE                       R6 K3 [PROTO_2]
       30 GETUPVAL                         R7 4
       31 NEWCLOSURE                       R8 P1
       32 CAPTURE                          UPVAL U5
       33 CAPTURE                          VAL R0
       34 CAPTURE                          VAL R1
       35 NEWTABLE                         R9 0 2
       37 GETTABLEKS                       R10 R0 K4 ["selectedAvatar"]
       39 GETTABLEKS                       R11 R1 K5 ["onIsColorableAcquired"]
       41 SETLIST                          R9 R10 2 [1]
       43 CALL                             R7 2 1
       44 DUPTABLE                         R8 K17 [{"openPalette", "focusedAttachments", "setFocusedAttachments", "dummyPreviewLocked", "incrementDummyPreviewLock", "decrementDummyPreviewLock", "resetCamera", "stage", "isColorable", "foundationMenuOpen", "setFoundationMenuOpen"}]
       45 GETTABLEKS                       R9 R0 K6 ["openPalette"]
       47 SETTABLEKS                       R9 R8 K6 ["openPalette"]
       49 SETTABLEKS                       R2 R8 K7 ["focusedAttachments"]
       51 SETTABLEKS                       R3 R8 K8 ["setFocusedAttachments"]
       53 GETTABLEKS                       R10 R4 K18 ["amount"]
       55 LOADN                            R11 0
       56 JUMPIFLT                         R11 R10 ; [+2]
       58 LOADB                            R9 0 +1
       59 LOADB                            R9 1
       60 SETTABLEKS                       R9 R8 K9 ["dummyPreviewLocked"]
       62 GETTABLEKS                       R9 R4 K19 ["increment"]
       64 SETTABLEKS                       R9 R8 K10 ["incrementDummyPreviewLock"]
       66 GETTABLEKS                       R9 R4 K20 ["decrement"]
       68 SETTABLEKS                       R9 R8 K11 ["decrementDummyPreviewLock"]
       70 GETTABLEKS                       R9 R0 K12 ["resetCamera"]
       72 SETTABLEKS                       R9 R8 K12 ["resetCamera"]
       74 GETTABLEKS                       R9 R0 K13 ["stage"]
       76 SETTABLEKS                       R9 R8 K13 ["stage"]
       78 GETTABLEKS                       R10 R7 K21 ["state"]
       80 JUMPIFNOTEQKS                    R10 K22 ["ok"] ; [+4]
       82 GETTABLEKS                       R9 R7 K23 ["value"]
       84 JUMP                             ; [+1]
       85 LOADB                            R9 1
       86 SETTABLEKS                       R9 R8 K14 ["isColorable"]
       88 SETTABLEKS                       R5 R8 K15 ["foundationMenuOpen"]
       90 SETTABLEKS                       R6 R8 K16 ["setFoundationMenuOpen"]
       92 GETUPVAL                         R10 0
       93 GETTABLEKS                       R9 R10 K24 ["createElement"]
       95 GETUPVAL                         R11 6
       96 GETTABLEKS                       R10 R11 K25 ["Provider"]
       98 DUPTABLE                         R11 K26 [{"value"}]
       99 SETTABLEKS                       R8 R11 K23 ["value"]
      101 GETTABLEKS                       R12 R0 K27 ["children"]
      103 CALL                             R9 3 -1
      104 RETURN                           R9 -1

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
       67 GETTABLEKS                       R9 R10 K19 ["Flags"]
       69 GETTABLEKS                       R8 R9 K20 ["getFFlagAvatarPreviewerCatalogButtonUpdatedUi"]
       71 CALL                             R7 1 1
       72 GETIMPORT                        R8 K5 [require]
       74 GETTABLEKS                       R11 R0 K8 ["Src"]
       76 GETTABLEKS                       R10 R11 K21 ["Hooks"]
       78 GETTABLEKS                       R9 R10 K22 ["useAsync"]
       80 CALL                             R8 1 1
       81 GETIMPORT                        R9 K5 [require]
       83 GETTABLEKS                       R12 R0 K8 ["Src"]
       85 GETTABLEKS                       R11 R12 K21 ["Hooks"]
       87 GETTABLEKS                       R10 R11 K23 ["useIncrementedState"]
       89 CALL                             R9 1 1
       90 DUPTABLE                         R10 K35 [{"openPalette", "focusedAttachments", "setFocusedAttachments", "dummyPreviewLocked", "incrementDummyPreviewLock", "decrementDummyPreviewLock", "resetCamera", "stage", "isColorable", "foundationMenuOpen", "setFoundationMenuOpen"}]
       91 MOVE                             R11 R5
       92 LOADK                            R12 K24 ["openPalette"]
       93 CALL                             R11 1 1
       94 SETTABLEKS                       R11 R10 K24 ["openPalette"]
       96 NEWTABLE                         R11 0 0
       98 SETTABLEKS                       R11 R10 K25 ["focusedAttachments"]
      100 MOVE                             R11 R5
      101 LOADK                            R12 K26 ["setFocusedAttachments"]
      102 CALL                             R11 1 1
      103 SETTABLEKS                       R11 R10 K26 ["setFocusedAttachments"]
      105 LOADB                            R11 0
      106 SETTABLEKS                       R11 R10 K27 ["dummyPreviewLocked"]
      108 MOVE                             R11 R5
      109 LOADK                            R12 K28 ["incrementDummyPreviewLock"]
      110 CALL                             R11 1 1
      111 SETTABLEKS                       R11 R10 K28 ["incrementDummyPreviewLock"]
      113 MOVE                             R11 R5
      114 LOADK                            R12 K29 ["decrementDummyPreviewLock"]
      115 CALL                             R11 1 1
      116 SETTABLEKS                       R11 R10 K29 ["decrementDummyPreviewLock"]
      118 DUPCLOSURE                       R11 K36 [PROTO_0]
      119 SETTABLEKS                       R11 R10 K30 ["resetCamera"]
      121 NEWTABLE                         R11 0 0
      123 SETTABLEKS                       R11 R10 K31 ["stage"]
      125 LOADB                            R11 1
      126 SETTABLEKS                       R11 R10 K32 ["isColorable"]
      128 LOADB                            R11 0
      129 SETTABLEKS                       R11 R10 K33 ["foundationMenuOpen"]
      131 DUPCLOSURE                       R11 K37 [PROTO_1]
      132 SETTABLEKS                       R11 R10 K34 ["setFoundationMenuOpen"]
      134 GETTABLEKS                       R11 R1 K38 ["createContext"]
      136 MOVE                             R12 R10
      137 CALL                             R11 1 1
      138 DUPCLOSURE                       R12 K39 [PROTO_5]
      139 CAPTURE                          VAL R1
      140 CAPTURE                          VAL R3
      141 CAPTURE                          VAL R9
      142 CAPTURE                          VAL R7
      143 CAPTURE                          VAL R8
      144 CAPTURE                          VAL R6
      145 CAPTURE                          VAL R11
      146 DUPTABLE                         R13 K42 [{"Context", "Provider"}]
      147 SETTABLEKS                       R11 R13 K40 ["Context"]
      149 SETTABLEKS                       R12 R13 K41 ["Provider"]
      151 RETURN                           R13 1
