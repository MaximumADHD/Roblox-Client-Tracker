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
       19 GETUPVAL                         R2 0
       20 GETTABLEKS                       R2 R2 K1 ["equals"]
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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createSignal"]
        3 LOADK                            R1 K1 ["Default"]
        4 CALL                             R0 1 2
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["createSignal"]
        8 LOADNIL                          R3
        9 CALL                             R2 1 2
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K0 ["createSignal"]
       13 LOADNIL                          R5
       14 CALL                             R4 1 2
       15 GETUPVAL                         R6 0
       16 GETTABLEKS                       R6 R6 K0 ["createSignal"]
       18 LOADNIL                          R7
       19 GETUPVAL                         R8 1
       20 CALL                             R6 2 2
       21 GETUPVAL                         R8 0
       22 GETTABLEKS                       R8 R8 K0 ["createSignal"]
       24 LOADNIL                          R9
       25 GETUPVAL                         R10 1
       26 CALL                             R8 2 2
       27 GETUPVAL                         R10 0
       28 GETTABLEKS                       R10 R10 K0 ["createSignal"]
       30 LOADNIL                          R11
       31 GETUPVAL                         R12 1
       32 CALL                             R10 2 2
       33 LOADNIL                          R12
       34 LOADNIL                          R13
       35 GETUPVAL                         R14 2
       36 JUMPIFNOT                        R14 ; [+7]
       37 GETUPVAL                         R14 0
       38 GETTABLEKS                       R14 R14 K0 ["createSignal"]
       40 LOADNIL                          R15
       41 CALL                             R14 1 2
       42 MOVE                             R12 R14
       43 MOVE                             R13 R15
       44 LOADNIL                          R14
       45 LOADNIL                          R15
       46 LOADNIL                          R16
       47 LOADNIL                          R17
       48 GETUPVAL                         R18 3
       49 JUMPIFNOT                        R18 ; [+14]
       50 GETUPVAL                         R18 0
       51 GETTABLEKS                       R18 R18 K0 ["createSignal"]
       53 LOADNIL                          R19
       54 CALL                             R18 1 2
       55 MOVE                             R14 R18
       56 MOVE                             R15 R19
       57 GETUPVAL                         R18 0
       58 GETTABLEKS                       R18 R18 K0 ["createSignal"]
       60 LOADB                            R19 0
       61 CALL                             R18 1 2
       62 MOVE                             R16 R18
       63 MOVE                             R17 R19
       64 GETIMPORT                        R18 K4 [table.freeze]
       66 DUPTABLE                         R19 K23 [{"getType", "setType", "getTitle", "setTitle", "getDescription", "setDescription", "getPrimaryButton", "setPrimaryButton", "getSecondaryButton", "setSecondaryButton", "getTertiaryButton", "setTertiaryButton", "getImageUri", "setImageUri", "getEscapeButtonUri", "setEscapeButtonUri", "getShowIndeterminateProgressIndicator", "setShowIndeterminateProgressIndicator"}]
       67 SETTABLEKS                       R0 R19 K5 ["getType"]
       69 SETTABLEKS                       R1 R19 K6 ["setType"]
       71 SETTABLEKS                       R2 R19 K7 ["getTitle"]
       73 SETTABLEKS                       R3 R19 K8 ["setTitle"]
       75 SETTABLEKS                       R4 R19 K9 ["getDescription"]
       77 SETTABLEKS                       R5 R19 K10 ["setDescription"]
       79 SETTABLEKS                       R6 R19 K11 ["getPrimaryButton"]
       81 SETTABLEKS                       R7 R19 K12 ["setPrimaryButton"]
       83 SETTABLEKS                       R8 R19 K13 ["getSecondaryButton"]
       85 SETTABLEKS                       R9 R19 K14 ["setSecondaryButton"]
       87 SETTABLEKS                       R10 R19 K15 ["getTertiaryButton"]
       89 SETTABLEKS                       R11 R19 K16 ["setTertiaryButton"]
       91 GETUPVAL                         R21 3
       92 JUMPIFNOT                        R21 ; [+2]
       93 MOVE                             R20 R14
       94 JUMP                             ; [+1]
       95 LOADNIL                          R20
       96 SETTABLEKS                       R20 R19 K17 ["getImageUri"]
       98 GETUPVAL                         R21 3
       99 JUMPIFNOT                        R21 ; [+2]
      100 MOVE                             R20 R15
      101 JUMP                             ; [+1]
      102 LOADNIL                          R20
      103 SETTABLEKS                       R20 R19 K18 ["setImageUri"]
      105 GETUPVAL                         R21 2
      106 JUMPIFNOT                        R21 ; [+2]
      107 MOVE                             R20 R12
      108 JUMP                             ; [+1]
      109 LOADNIL                          R20
      110 SETTABLEKS                       R20 R19 K19 ["getEscapeButtonUri"]
      112 GETUPVAL                         R21 2
      113 JUMPIFNOT                        R21 ; [+2]
      114 MOVE                             R20 R13
      115 JUMP                             ; [+1]
      116 LOADNIL                          R20
      117 SETTABLEKS                       R20 R19 K20 ["setEscapeButtonUri"]
      119 GETUPVAL                         R21 3
      120 JUMPIFNOT                        R21 ; [+2]
      121 MOVE                             R20 R16
      122 JUMP                             ; [+1]
      123 LOADNIL                          R20
      124 SETTABLEKS                       R20 R19 K21 ["getShowIndeterminateProgressIndicator"]
      126 GETUPVAL                         R21 3
      127 JUMPIFNOT                        R21 ; [+2]
      128 MOVE                             R20 R17
      129 JUMP                             ; [+1]
      130 LOADNIL                          R20
      131 SETTABLEKS                       R20 R19 K22 ["setShowIndeterminateProgressIndicator"]
      133 CALL                             R18 1 -1
      134 RETURN                           R18 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Dialog"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Flags"]
       13 GETTABLEKS                       R2 R2 K8 ["getFFlagDialogManagerAddEscapeTitleButton"]
       15 CALL                             R1 1 1
       16 CALL                             R1 0 1
       17 GETIMPORT                        R2 K5 [require]
       19 GETTABLEKS                       R3 R0 K9 ["Packages"]
       21 GETTABLEKS                       R3 R3 K10 ["Signals"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K5 [require]
       26 GETTABLEKS                       R4 R0 K9 ["Packages"]
       28 GETTABLEKS                       R4 R4 K11 ["StudioFoundation"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K5 [require]
       33 GETTABLEKS                       R5 R0 K6 ["Src"]
       35 GETTABLEKS                       R5 R5 K12 ["Types"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K5 [require]
       40 GETTABLEKS                       R6 R0 K6 ["Src"]
       42 GETTABLEKS                       R6 R6 K7 ["Flags"]
       44 GETTABLEKS                       R6 R6 K13 ["getFFlagDialogManagerUpdateSemantics"]
       46 CALL                             R5 1 1
       47 MOVE                             R6 R5
       48 CALL                             R6 0 1
       49 GETTABLEKS                       R7 R3 K14 ["Util"]
       51 GETTABLEKS                       R7 R7 K15 ["StudioUri"]
       53 DUPCLOSURE                       R8 K16 [PROTO_0]
       54 CAPTURE                          VAL R7
       55 DUPCLOSURE                       R9 K17 [PROTO_1]
       56 CAPTURE                          VAL R2
       57 CAPTURE                          VAL R8
       58 CAPTURE                          VAL R1
       59 CAPTURE                          VAL R6
       60 RETURN                           R9 1
