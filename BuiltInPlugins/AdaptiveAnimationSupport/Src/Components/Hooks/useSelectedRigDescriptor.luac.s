PROTO_0:
        0 LOADNIL                          R0
        1 LOADNIL                          R1
        2 GETUPVAL                         R2 0
        3 NAMECALL                         R2 R2 K0 ["Get"]
        5 CALL                             R2 1 3
        6 FORGPREP                         R2
        7 LOADK                            R9 K1 ["HumanoidRigDescription"]
        8 NAMECALL                         R7 R6 K2 ["IsA"]
       10 CALL                             R7 2 1
       11 JUMPIFNOT                        R7 ; [+3]
       12 MOVE                             R0 R6
       13 LOADK                            R1 K3 ["body"]
       14 JUMP                             ; [+18]
       15 GETUPVAL                         R7 1
       16 CALL                             R7 0 1
       17 JUMPIFNOT                        R7 ; [+13]
       18 LOADK                            R9 K4 ["DigitsRigDescription"]
       19 NAMECALL                         R7 R6 K2 ["IsA"]
       21 CALL                             R7 2 1
       22 JUMPIFNOT                        R7 ; [+8]
       23 MOVE                             R0 R6
       24 GETUPVAL                         R7 2
       25 GETTABLEKS                       R7 R7 K5 ["getDescriptionKind"]
       27 MOVE                             R8 R6
       28 CALL                             R7 1 1
       29 MOVE                             R1 R7
       30 JUMP                             ; [+2]
       31 FORGLOOP                         R2 2 ; [-25]
       33 JUMPIFNOTEQKNIL                  R0 ; [+40]
       35 GETUPVAL                         R2 3
       36 GETTABLEKS                       R2 R2 K6 ["current"]
       38 JUMPIFNOT                        R2 ; [+35]
       39 LOADK                            R5 K7 ["Model"]
       40 NAMECALL                         R3 R2 K8 ["FindFirstAncestorOfClass"]
       42 CALL                             R3 2 1
       43 JUMPIFNOT                        R3 ; [+30]
       44 GETIMPORT                        R4 K10 [workspace]
       46 JUMPIFEQ                         R3 R4 ; [+27]
       48 LOADB                            R4 1
       49 GETUPVAL                         R5 0
       50 NAMECALL                         R5 R5 K0 ["Get"]
       52 CALL                             R5 1 1
       53 LENGTH                           R6 R5
       54 JUMPIFNOTEQKN                    R6 K11 [0] ; [+2]
       56 LOADB                            R4 0
       57 MOVE                             R6 R5
       58 LOADNIL                          R7
       59 LOADNIL                          R8
       60 FORGPREP                         R6
       61 JUMPIFEQ                         R10 R3 ; [+8]
       63 MOVE                             R13 R3
       64 NAMECALL                         R11 R10 K12 ["IsDescendantOf"]
       66 CALL                             R11 2 1
       67 JUMPIF                           R11 ; [+2]
       68 LOADB                            R4 0
       69 JUMP                             ; [+2]
       70 FORGLOOP                         R6 2 ; [-10]
       72 JUMPIFNOT                        R4 ; [+1]
       73 RETURN                           R0 0
       74 GETUPVAL                         R2 4
       75 MOVE                             R3 R0
       76 CALL                             R2 1 0
       77 GETUPVAL                         R2 5
       78 MOVE                             R3 R1
       79 CALL                             R2 1 0
       80 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADNIL                          R1
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+4]
        6 GETUPVAL                         R0 1
        7 NAMECALL                         R0 R0 K0 ["Disconnect"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          UPVAL U5
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K0 ["SelectionChanged"]
       10 MOVE                             R3 R0
       11 NAMECALL                         R1 R1 K1 ["Connect"]
       13 CALL                             R1 2 1
       14 MOVE                             R2 R0
       15 CALL                             R2 0 0
       16 LOADNIL                          R2
       17 GETUPVAL                         R3 6
       18 JUMPIFNOT                        R3 ; [+10]
       19 GETUPVAL                         R3 6
       20 GETTABLEKS                       R3 R3 K2 ["Destroying"]
       22 NEWCLOSURE                       R5 P1
       23 CAPTURE                          UPVAL U4
       24 CAPTURE                          UPVAL U5
       25 NAMECALL                         R3 R3 K1 ["Connect"]
       27 CALL                             R3 2 1
       28 MOVE                             R2 R3
       29 NEWCLOSURE                       R3 P2
       30 CAPTURE                          VAL R1
       31 CAPTURE                          REF R2
       32 CLOSEUPVALS                      R2
       33 RETURN                           R3 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useState"]
        3 LOADNIL                          R1
        4 CALL                             R0 1 2
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["useState"]
        8 LOADNIL                          R3
        9 CALL                             R2 1 2
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K1 ["useRef"]
       13 LOADNIL                          R5
       14 CALL                             R4 1 1
       15 SETTABLEKS                       R0 R4 K2 ["current"]
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R5 R5 K3 ["useEffect"]
       20 NEWCLOSURE                       R6 P0
       21 CAPTURE                          UPVAL U1
       22 CAPTURE                          UPVAL U2
       23 CAPTURE                          UPVAL U3
       24 CAPTURE                          VAL R4
       25 CAPTURE                          VAL R1
       26 CAPTURE                          VAL R3
       27 CAPTURE                          VAL R0
       28 NEWTABLE                         R7 0 1
       30 MOVE                             R8 R0
       31 SETLIST                          R7 R8 1 [1]
       33 CALL                             R5 2 0
       34 MOVE                             R5 R0
       35 MOVE                             R6 R2
       36 RETURN                           R5 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Selection"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AdaptiveAnimationSupport"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["React"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K12 ["Src"]
       24 GETTABLEKS                       R4 R4 K13 ["Types"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R1 K12 ["Src"]
       31 GETTABLEKS                       R5 R5 K14 ["Utils"]
       33 GETTABLEKS                       R5 R5 K15 ["DigitsRigUtils"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K9 [require]
       38 GETTABLEKS                       R6 R1 K12 ["Src"]
       40 GETTABLEKS                       R6 R6 K16 ["Flags"]
       42 GETTABLEKS                       R6 R6 K17 ["getFFlagAdaptiveAnimationHandRig"]
       44 CALL                             R5 1 1
       45 DUPCLOSURE                       R6 K18 [PROTO_4]
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R0
       48 CAPTURE                          VAL R5
       49 CAPTURE                          VAL R4
       50 RETURN                           R6 1
