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
       33 JUMPIFNOTEQKNIL                  R0 ; [+43]
       35 GETUPVAL                         R2 3
       36 CALL                             R2 0 1
       37 JUMPIFNOT                        R2 ; [+39]
       38 GETUPVAL                         R2 4
       39 GETTABLEKS                       R2 R2 K6 ["current"]
       41 JUMPIFNOT                        R2 ; [+35]
       42 LOADK                            R5 K7 ["Model"]
       43 NAMECALL                         R3 R2 K8 ["FindFirstAncestorOfClass"]
       45 CALL                             R3 2 1
       46 JUMPIFNOT                        R3 ; [+30]
       47 GETIMPORT                        R4 K10 [workspace]
       49 JUMPIFEQ                         R3 R4 ; [+27]
       51 LOADB                            R4 1
       52 GETUPVAL                         R5 0
       53 NAMECALL                         R5 R5 K0 ["Get"]
       55 CALL                             R5 1 1
       56 LENGTH                           R6 R5
       57 JUMPIFNOTEQKN                    R6 K11 [0] ; [+2]
       59 LOADB                            R4 0
       60 MOVE                             R6 R5
       61 LOADNIL                          R7
       62 LOADNIL                          R8
       63 FORGPREP                         R6
       64 JUMPIFEQ                         R10 R3 ; [+8]
       66 MOVE                             R13 R3
       67 NAMECALL                         R11 R10 K12 ["IsDescendantOf"]
       69 CALL                             R11 2 1
       70 JUMPIF                           R11 ; [+2]
       71 LOADB                            R4 0
       72 JUMP                             ; [+2]
       73 FORGLOOP                         R6 2 ; [-10]
       75 JUMPIFNOT                        R4 ; [+1]
       76 RETURN                           R0 0
       77 GETUPVAL                         R2 5
       78 MOVE                             R3 R0
       79 CALL                             R2 1 0
       80 GETUPVAL                         R2 6
       81 MOVE                             R3 R1
       82 CALL                             R2 1 0
       83 RETURN                           R0 0

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
        7 CAPTURE                          UPVAL U6
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K0 ["SelectionChanged"]
       11 MOVE                             R3 R0
       12 NAMECALL                         R1 R1 K1 ["Connect"]
       14 CALL                             R1 2 1
       15 MOVE                             R2 R0
       16 CALL                             R2 0 0
       17 LOADNIL                          R2
       18 GETUPVAL                         R3 7
       19 JUMPIFNOT                        R3 ; [+10]
       20 GETUPVAL                         R3 7
       21 GETTABLEKS                       R3 R3 K2 ["Destroying"]
       23 NEWCLOSURE                       R5 P1
       24 CAPTURE                          UPVAL U5
       25 CAPTURE                          UPVAL U6
       26 NAMECALL                         R3 R3 K1 ["Connect"]
       28 CALL                             R3 2 1
       29 MOVE                             R2 R3
       30 NEWCLOSURE                       R3 P2
       31 CAPTURE                          VAL R1
       32 CAPTURE                          REF R2
       33 CLOSEUPVALS                      R2
       34 RETURN                           R3 1

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
       24 CAPTURE                          UPVAL U4
       25 CAPTURE                          VAL R4
       26 CAPTURE                          VAL R1
       27 CAPTURE                          VAL R3
       28 CAPTURE                          VAL R0
       29 NEWTABLE                         R7 0 1
       31 MOVE                             R8 R0
       32 SETLIST                          R7 R8 1 [1]
       34 CALL                             R5 2 0
       35 MOVE                             R5 R0
       36 MOVE                             R6 R2
       37 RETURN                           R5 2

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
       45 GETIMPORT                        R6 K9 [require]
       47 GETTABLEKS                       R7 R1 K12 ["Src"]
       49 GETTABLEKS                       R7 R7 K16 ["Flags"]
       51 GETTABLEKS                       R7 R7 K18 ["getFFlagAdaptiveAnimationActivationImprovement"]
       53 CALL                             R6 1 1
       54 DUPCLOSURE                       R7 K19 [PROTO_4]
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R0
       57 CAPTURE                          VAL R5
       58 CAPTURE                          VAL R4
       59 CAPTURE                          VAL R6
       60 RETURN                           R7 1
