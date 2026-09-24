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
       33 GETUPVAL                         R12 0
       34 GETTABLEKS                       R12 R12 K0 ["createSignal"]
       36 LOADNIL                          R13
       37 CALL                             R12 1 2
       38 GETUPVAL                         R14 0
       39 GETTABLEKS                       R14 R14 K0 ["createSignal"]
       41 LOADNIL                          R15
       42 CALL                             R14 1 2
       43 GETUPVAL                         R16 0
       44 GETTABLEKS                       R16 R16 K0 ["createSignal"]
       46 LOADB                            R17 0
       47 CALL                             R16 1 2
       48 LOADNIL                          R18
       49 LOADNIL                          R19
       50 GETUPVAL                         R20 2
       51 CALL                             R20 0 1
       52 JUMPIFNOT                        R20 ; [+7]
       53 GETUPVAL                         R20 0
       54 GETTABLEKS                       R20 R20 K0 ["createSignal"]
       56 LOADB                            R21 0
       57 CALL                             R20 1 2
       58 MOVE                             R18 R20
       59 MOVE                             R19 R21
       60 GETIMPORT                        R20 K4 [table.freeze]
       62 DUPTABLE                         R21 K25 [{"getType", "setType", "getTitle", "setTitle", "getDescription", "setDescription", "getPrimaryButton", "setPrimaryButton", "getSecondaryButton", "setSecondaryButton", "getTertiaryButton", "setTertiaryButton", "getImageUri", "setImageUri", "getEscapeButtonUri", "setEscapeButtonUri", "getShowIndeterminateProgressIndicator", "setShowIndeterminateProgressIndicator", "getSuppressible", "setSuppressible"}]
       63 SETTABLEKS                       R0 R21 K5 ["getType"]
       65 SETTABLEKS                       R1 R21 K6 ["setType"]
       67 SETTABLEKS                       R2 R21 K7 ["getTitle"]
       69 SETTABLEKS                       R3 R21 K8 ["setTitle"]
       71 SETTABLEKS                       R4 R21 K9 ["getDescription"]
       73 SETTABLEKS                       R5 R21 K10 ["setDescription"]
       75 SETTABLEKS                       R6 R21 K11 ["getPrimaryButton"]
       77 SETTABLEKS                       R7 R21 K12 ["setPrimaryButton"]
       79 SETTABLEKS                       R8 R21 K13 ["getSecondaryButton"]
       81 SETTABLEKS                       R9 R21 K14 ["setSecondaryButton"]
       83 SETTABLEKS                       R10 R21 K15 ["getTertiaryButton"]
       85 SETTABLEKS                       R11 R21 K16 ["setTertiaryButton"]
       87 SETTABLEKS                       R14 R21 K17 ["getImageUri"]
       89 SETTABLEKS                       R15 R21 K18 ["setImageUri"]
       91 SETTABLEKS                       R12 R21 K19 ["getEscapeButtonUri"]
       93 SETTABLEKS                       R13 R21 K20 ["setEscapeButtonUri"]
       95 SETTABLEKS                       R16 R21 K21 ["getShowIndeterminateProgressIndicator"]
       97 SETTABLEKS                       R17 R21 K22 ["setShowIndeterminateProgressIndicator"]
       99 GETUPVAL                         R23 2
      100 CALL                             R23 0 1
      101 JUMPIFNOT                        R23 ; [+2]
      102 MOVE                             R22 R18
      103 JUMP                             ; [+1]
      104 LOADNIL                          R22
      105 SETTABLEKS                       R22 R21 K23 ["getSuppressible"]
      107 GETUPVAL                         R23 2
      108 CALL                             R23 0 1
      109 JUMPIFNOT                        R23 ; [+2]
      110 MOVE                             R22 R19
      111 JUMP                             ; [+1]
      112 LOADNIL                          R22
      113 SETTABLEKS                       R22 R21 K24 ["setSuppressible"]
      115 CALL                             R20 1 -1
      116 RETURN                           R20 -1

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
       37 GETTABLEKS                       R5 R2 K13 ["Util"]
       39 GETTABLEKS                       R5 R5 K14 ["StudioUri"]
       41 DUPCLOSURE                       R6 K15 [PROTO_0]
       42 CAPTURE                          VAL R5
       43 DUPCLOSURE                       R7 K16 [PROTO_1]
       44 CAPTURE                          VAL R1
       45 CAPTURE                          VAL R6
       46 CAPTURE                          VAL R4
       47 RETURN                           R7 1
