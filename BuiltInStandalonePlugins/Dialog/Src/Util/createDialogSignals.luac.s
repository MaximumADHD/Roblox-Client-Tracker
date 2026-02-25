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
       17 JUMPIFNOTEQ                      R3 R4 ; [+9]
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R2 R3 K1 ["equals"]
       22 GETTABLEKS                       R3 R0 K2 ["Uri"]
       24 GETTABLEKS                       R4 R1 K2 ["Uri"]
       26 CALL                             R2 2 1
       27 RETURN                           R2 1

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
       33 GETIMPORT                        R12 K4 [table.freeze]
       35 DUPTABLE                         R13 K17 [{"getType", "setType", "getTitle", "setTitle", "getDescription", "setDescription", "getPrimaryButton", "setPrimaryButton", "getSecondaryButton", "setSecondaryButton", "getTertiaryButton", "setTertiaryButton"}]
       36 SETTABLEKS                       R0 R13 K5 ["getType"]
       38 SETTABLEKS                       R1 R13 K6 ["setType"]
       40 SETTABLEKS                       R2 R13 K7 ["getTitle"]
       42 SETTABLEKS                       R3 R13 K8 ["setTitle"]
       44 SETTABLEKS                       R4 R13 K9 ["getDescription"]
       46 SETTABLEKS                       R5 R13 K10 ["setDescription"]
       48 SETTABLEKS                       R6 R13 K11 ["getPrimaryButton"]
       50 SETTABLEKS                       R7 R13 K12 ["setPrimaryButton"]
       52 SETTABLEKS                       R8 R13 K13 ["getSecondaryButton"]
       54 SETTABLEKS                       R9 R13 K14 ["setSecondaryButton"]
       56 SETTABLEKS                       R10 R13 K15 ["getTertiaryButton"]
       58 SETTABLEKS                       R11 R13 K16 ["setTertiaryButton"]
       60 CALL                             R12 1 -1
       61 RETURN                           R12 -1

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
       28 GETTABLEKS                       R5 R2 K11 ["Util"]
       30 GETTABLEKS                       R4 R5 K12 ["StudioUri"]
       32 DUPCLOSURE                       R5 K13 [PROTO_0]
       33 CAPTURE                          VAL R4
       34 DUPCLOSURE                       R6 K14 [PROTO_1]
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R5
       37 RETURN                           R6 1
