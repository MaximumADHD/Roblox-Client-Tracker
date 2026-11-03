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
       36 CALL                             R14 0 1
       37 JUMPIFNOT                        R14 ; [+7]
       38 GETUPVAL                         R14 0
       39 GETTABLEKS                       R14 R14 K0 ["createSignal"]
       41 LOADNIL                          R15
       42 CALL                             R14 1 2
       43 MOVE                             R12 R14
       44 MOVE                             R13 R15
       45 GETUPVAL                         R14 0
       46 GETTABLEKS                       R14 R14 K0 ["createSignal"]
       48 LOADNIL                          R15
       49 CALL                             R14 1 2
       50 GETUPVAL                         R16 0
       51 GETTABLEKS                       R16 R16 K0 ["createSignal"]
       53 LOADNIL                          R17
       54 CALL                             R16 1 2
       55 GETUPVAL                         R18 0
       56 GETTABLEKS                       R18 R18 K0 ["createSignal"]
       58 LOADB                            R19 0
       59 CALL                             R18 1 2
       60 LOADNIL                          R20
       61 LOADNIL                          R21
       62 GETUPVAL                         R22 3
       63 CALL                             R22 0 1
       64 JUMPIFNOT                        R22 ; [+7]
       65 GETUPVAL                         R22 0
       66 GETTABLEKS                       R22 R22 K0 ["createSignal"]
       68 LOADB                            R23 0
       69 CALL                             R22 1 2
       70 MOVE                             R20 R22
       71 MOVE                             R21 R23
       72 GETIMPORT                        R22 K4 [table.freeze]
       74 DUPTABLE                         R23 K27 [{"getType", "setType", "getTitle", "setTitle", "getDescription", "setDescription", "getPrimaryButton", "setPrimaryButton", "getSecondaryButton", "setSecondaryButton", "getTertiaryButton", "setTertiaryButton", "getTertiaryButtonVariant", "setTertiaryButtonVariant", "getImageUri", "setImageUri", "getEscapeButtonUri", "setEscapeButtonUri", "getShowIndeterminateProgressIndicator", "setShowIndeterminateProgressIndicator", "getSuppressible", "setSuppressible"}]
       75 SETTABLEKS                       R0 R23 K5 ["getType"]
       77 SETTABLEKS                       R1 R23 K6 ["setType"]
       79 SETTABLEKS                       R2 R23 K7 ["getTitle"]
       81 SETTABLEKS                       R3 R23 K8 ["setTitle"]
       83 SETTABLEKS                       R4 R23 K9 ["getDescription"]
       85 SETTABLEKS                       R5 R23 K10 ["setDescription"]
       87 SETTABLEKS                       R6 R23 K11 ["getPrimaryButton"]
       89 SETTABLEKS                       R7 R23 K12 ["setPrimaryButton"]
       91 SETTABLEKS                       R8 R23 K13 ["getSecondaryButton"]
       93 SETTABLEKS                       R9 R23 K14 ["setSecondaryButton"]
       95 SETTABLEKS                       R10 R23 K15 ["getTertiaryButton"]
       97 SETTABLEKS                       R11 R23 K16 ["setTertiaryButton"]
       99 GETUPVAL                         R25 2
      100 CALL                             R25 0 1
      101 JUMPIFNOT                        R25 ; [+2]
      102 MOVE                             R24 R12
      103 JUMP                             ; [+1]
      104 LOADNIL                          R24
      105 SETTABLEKS                       R24 R23 K17 ["getTertiaryButtonVariant"]
      107 GETUPVAL                         R25 2
      108 CALL                             R25 0 1
      109 JUMPIFNOT                        R25 ; [+2]
      110 MOVE                             R24 R13
      111 JUMP                             ; [+1]
      112 LOADNIL                          R24
      113 SETTABLEKS                       R24 R23 K18 ["setTertiaryButtonVariant"]
      115 SETTABLEKS                       R16 R23 K19 ["getImageUri"]
      117 SETTABLEKS                       R17 R23 K20 ["setImageUri"]
      119 SETTABLEKS                       R14 R23 K21 ["getEscapeButtonUri"]
      121 SETTABLEKS                       R15 R23 K22 ["setEscapeButtonUri"]
      123 SETTABLEKS                       R18 R23 K23 ["getShowIndeterminateProgressIndicator"]
      125 SETTABLEKS                       R19 R23 K24 ["setShowIndeterminateProgressIndicator"]
      127 GETUPVAL                         R25 3
      128 CALL                             R25 0 1
      129 JUMPIFNOT                        R25 ; [+2]
      130 MOVE                             R24 R20
      131 JUMP                             ; [+1]
      132 LOADNIL                          R24
      133 SETTABLEKS                       R24 R23 K25 ["getSuppressible"]
      135 GETUPVAL                         R25 3
      136 CALL                             R25 0 1
      137 JUMPIFNOT                        R25 ; [+2]
      138 MOVE                             R24 R21
      139 JUMP                             ; [+1]
      140 LOADNIL                          R24
      141 SETTABLEKS                       R24 R23 K26 ["setSuppressible"]
      143 CALL                             R22 1 -1
      144 RETURN                           R22 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Dialog"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Signals"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["StudioFoundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Types"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K9 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Flags"]
       34 GETTABLEKS                       R5 R5 K12 ["getFFlagStudioDialogManagerSuppression"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K9 ["Src"]
       41 GETTABLEKS                       R6 R6 K11 ["Flags"]
       43 GETTABLEKS                       R6 R6 K13 ["getFFlagStudioDialogManagerTertiaryButtonVariant"]
       45 CALL                             R5 1 1
       46 GETTABLEKS                       R6 R2 K14 ["Util"]
       48 GETTABLEKS                       R6 R6 K15 ["StudioUri"]
       50 DUPCLOSURE                       R7 K16 [PROTO_0]
       51 CAPTURE                          VAL R6
       52 DUPCLOSURE                       R8 K17 [PROTO_1]
       53 CAPTURE                          VAL R1
       54 CAPTURE                          VAL R7
       55 CAPTURE                          VAL R5
       56 CAPTURE                          VAL R4
       57 RETURN                           R8 1
