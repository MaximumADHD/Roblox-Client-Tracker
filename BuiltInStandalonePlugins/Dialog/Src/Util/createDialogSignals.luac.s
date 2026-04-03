PROTO_0:
        0 JUMPIFNOTEQKNIL                  R0 ; [+5]
        2 JUMPIFNOTEQKNIL                  R1 ; [+3]
        4 LOADB                            R2 1
        5 RETURN                           R2 1
        6 JUMPIFEQKNIL                     R0 ; [+3]
        8 JUMPIFNOTEQKNIL                  R1 ; [+3]
       10 LOADB                            R2 0
       11 RETURN                           R2 1
       12 LOADB                            R2 0
       13 GETTABLEKS                       R3 R0 K0 ["Text"]
       15 GETTABLEKS                       R4 R1 K0 ["Text"]
       17 JUMPIFNOTEQ                      R3 R4 ; [+18]
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R2 R3 K1 ["equals"]
       22 GETTABLEKS                       R3 R0 K2 ["Uri"]
       24 GETTABLEKS                       R4 R1 K2 ["Uri"]
       26 CALL                             R2 2 1
       27 JUMPIFNOT                        R2 ; [+8]
       28 GETTABLEKS                       R3 R0 K3 ["Disabled"]
       30 GETTABLEKS                       R4 R1 K3 ["Disabled"]
       32 JUMPIFEQ                         R3 R4 ; [+2]
       34 LOADB                            R2 0 +1
       35 LOADB                            R2 1
       36 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createSignal"]
        3 LOADK                            R1 K1 ["Default"]
        4 CALL                             R0 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K0 ["createSignal"]
        8 LOADNIL                          R3
        9 CALL                             R2 1 2
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R4 R5 K0 ["createSignal"]
       13 LOADNIL                          R5
       14 CALL                             R4 1 2
       15 GETUPVAL                         R7 0
       16 GETTABLEKS                       R6 R7 K0 ["createSignal"]
       18 LOADNIL                          R7
       19 GETUPVAL                         R8 1
       20 CALL                             R6 2 2
       21 GETUPVAL                         R9 0
       22 GETTABLEKS                       R8 R9 K0 ["createSignal"]
       24 LOADNIL                          R9
       25 GETUPVAL                         R10 1
       26 CALL                             R8 2 2
       27 GETUPVAL                         R11 0
       28 GETTABLEKS                       R10 R11 K0 ["createSignal"]
       30 LOADNIL                          R11
       31 GETUPVAL                         R12 1
       32 CALL                             R10 2 2
       33 LOADNIL                          R12
       34 LOADNIL                          R13
       35 LOADNIL                          R14
       36 LOADNIL                          R15
       37 GETUPVAL                         R16 2
       38 JUMPIFNOT                        R16 ; [+14]
       39 GETUPVAL                         R17 0
       40 GETTABLEKS                       R16 R17 K0 ["createSignal"]
       42 LOADNIL                          R17
       43 CALL                             R16 1 2
       44 MOVE                             R12 R16
       45 MOVE                             R13 R17
       46 GETUPVAL                         R17 0
       47 GETTABLEKS                       R16 R17 K0 ["createSignal"]
       49 LOADB                            R17 0
       50 CALL                             R16 1 2
       51 MOVE                             R14 R16
       52 MOVE                             R15 R17
       53 GETIMPORT                        R16 K4 [table.freeze]
       55 DUPTABLE                         R17 K21 [{"getType", "setType", "getTitle", "setTitle", "getDescription", "setDescription", "getPrimaryButton", "setPrimaryButton", "getSecondaryButton", "setSecondaryButton", "getTertiaryButton", "setTertiaryButton", "getImageUri", "setImageUri", "getShowIndeterminateProgressIndicator", "setShowIndeterminateProgressIndicator"}]
       56 SETTABLEKS                       R0 R17 K5 ["getType"]
       58 SETTABLEKS                       R1 R17 K6 ["setType"]
       60 SETTABLEKS                       R2 R17 K7 ["getTitle"]
       62 SETTABLEKS                       R3 R17 K8 ["setTitle"]
       64 SETTABLEKS                       R4 R17 K9 ["getDescription"]
       66 SETTABLEKS                       R5 R17 K10 ["setDescription"]
       68 SETTABLEKS                       R6 R17 K11 ["getPrimaryButton"]
       70 SETTABLEKS                       R7 R17 K12 ["setPrimaryButton"]
       72 SETTABLEKS                       R8 R17 K13 ["getSecondaryButton"]
       74 SETTABLEKS                       R9 R17 K14 ["setSecondaryButton"]
       76 SETTABLEKS                       R10 R17 K15 ["getTertiaryButton"]
       78 SETTABLEKS                       R11 R17 K16 ["setTertiaryButton"]
       80 GETUPVAL                         R19 2
       81 JUMPIFNOT                        R19 ; [+2]
       82 MOVE                             R18 R12
       83 JUMP                             ; [+1]
       84 LOADNIL                          R18
       85 SETTABLEKS                       R18 R17 K17 ["getImageUri"]
       87 GETUPVAL                         R19 2
       88 JUMPIFNOT                        R19 ; [+2]
       89 MOVE                             R18 R13
       90 JUMP                             ; [+1]
       91 LOADNIL                          R18
       92 SETTABLEKS                       R18 R17 K18 ["setImageUri"]
       94 GETUPVAL                         R19 2
       95 JUMPIFNOT                        R19 ; [+2]
       96 MOVE                             R18 R14
       97 JUMP                             ; [+1]
       98 LOADNIL                          R18
       99 SETTABLEKS                       R18 R17 K19 ["getShowIndeterminateProgressIndicator"]
      101 GETUPVAL                         R19 2
      102 JUMPIFNOT                        R19 ; [+2]
      103 MOVE                             R18 R15
      104 JUMP                             ; [+1]
      105 LOADNIL                          R18
      106 SETTABLEKS                       R18 R17 K20 ["setShowIndeterminateProgressIndicator"]
      108 CALL                             R16 1 -1
      109 RETURN                           R16 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Dialog"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Signals"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["StudioFoundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R5 K10 ["Types"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R7 R0 K9 ["Src"]
       32 GETTABLEKS                       R6 R7 K11 ["Flags"]
       34 GETTABLEKS                       R5 R6 K12 ["getFFlagDialogManagerUpdateSemantics"]
       36 CALL                             R4 1 1
       37 MOVE                             R5 R4
       38 CALL                             R5 0 1
       39 GETTABLEKS                       R7 R2 K13 ["Util"]
       41 GETTABLEKS                       R6 R7 K14 ["StudioUri"]
       43 DUPCLOSURE                       R7 K15 [PROTO_0]
       44 CAPTURE                          VAL R6
       45 DUPCLOSURE                       R8 K16 [PROTO_1]
       46 CAPTURE                          VAL R1
       47 CAPTURE                          VAL R7
       48 CAPTURE                          VAL R5
       49 RETURN                           R8 1
