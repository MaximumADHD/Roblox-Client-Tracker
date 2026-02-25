PROTO_0:
        0 NAMECALL                         R2 R0 K0 ["getState"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R1 R2 K1 ["AnimationData"]
        5 NAMECALL                         R4 R0 K0 ["getState"]
        7 CALL                             R4 1 1
        8 GETTABLEKS                       R3 R4 K2 ["Status"]
       10 GETTABLEKS                       R2 R3 K3 ["SelectedEvents"]
       12 JUMPIFNOT                        R1 ; [+1]
       13 JUMPIF                           R2 ; [+1]
       14 RETURN                           R0 0
       15 GETTABLEKS                       R3 R1 K4 ["Events"]
       17 JUMPIFNOTEQKNIL                  R3 ; [+2]
       19 RETURN                           R0 0
       20 GETUPVAL                         R4 0
       21 MOVE                             R5 R2
       22 CALL                             R4 1 1
       23 JUMPIF                           R4 ; [+49]
       24 NEWTABLE                         R4 0 0
       26 GETIMPORT                        R5 K6 [pairs]
       28 MOVE                             R6 R2
       29 CALL                             R5 1 3
       30 FORGPREP_NEXT                    R5
       31 GETUPVAL                         R10 1
       32 JUMPIFNOT                        R10 ; [+21]
       33 GETIMPORT                        R10 K8 [next]
       35 GETUPVAL                         R11 1
       36 CALL                             R10 1 1
       37 JUMPIFNOT                        R10 ; [+16]
       38 NEWTABLE                         R10 0 0
       40 SETTABLE                         R10 R4 R8
       41 GETUPVAL                         R10 1
       42 LOADNIL                          R11
       43 LOADNIL                          R12
       44 FORGPREP                         R10
       45 GETTABLE                         R15 R4 R8
       46 GETTABLEKS                       R18 R3 K9 ["Data"]
       48 GETTABLE                         R17 R18 R8
       49 GETTABLE                         R16 R17 R13
       50 SETTABLE                         R16 R15 R13
       51 FORGLOOP                         R10 1 ; [-7]
       53 JUMP                             ; [+6]
       54 GETUPVAL                         R10 2
       55 GETTABLEKS                       R12 R3 K9 ["Data"]
       57 GETTABLE                         R11 R12 R8
       58 CALL                             R10 1 1
       59 SETTABLE                         R10 R4 R8
       60 FORGLOOP                         R5 2 ; [-30]
       62 GETUPVAL                         R7 3
       63 MOVE                             R8 R4
       64 GETUPVAL                         R11 4
       65 GETTABLEKS                       R10 R11 K10 ["CLIPBOARD_TYPE"]
       67 GETTABLEKS                       R9 R10 K4 ["Events"]
       69 CALL                             R7 2 -1
       70 NAMECALL                         R5 R0 K11 ["dispatch"]
       72 CALL                             R5 -1 0
       73 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Util"]
       13 GETTABLEKS                       R2 R3 K8 ["isEmpty"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R5 R0 K6 ["Src"]
       20 GETTABLEKS                       R4 R5 K7 ["Util"]
       22 GETTABLEKS                       R3 R4 K9 ["deepCopy"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R6 R0 K6 ["Src"]
       29 GETTABLEKS                       R5 R6 K10 ["Actions"]
       31 GETTABLEKS                       R4 R5 K11 ["SetClipboard"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R7 R0 K6 ["Src"]
       38 GETTABLEKS                       R6 R7 K7 ["Util"]
       40 GETTABLEKS                       R5 R6 K12 ["Constants"]
       42 CALL                             R4 1 1
       43 DUPCLOSURE                       R5 K13 [PROTO_1]
       44 CAPTURE                          VAL R1
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R3
       47 CAPTURE                          VAL R4
       48 RETURN                           R5 1
