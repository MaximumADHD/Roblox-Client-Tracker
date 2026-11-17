PROTO_0:
        0 LOADNIL                          R0
        1 LOADNIL                          R1
        2 LOADB                            R2 0
        3 GETUPVAL                         R3 0
        4 NAMECALL                         R3 R3 K0 ["Get"]
        6 CALL                             R3 1 3
        7 FORGPREP                         R3
        8 LOADK                            R11 K1 ["Model"]
        9 NAMECALL                         R9 R7 K2 ["IsA"]
       11 CALL                             R9 2 1
       12 JUMPIFNOT                        R9 ; [+2]
       13 MOVE                             R8 R7
       14 JUMP                             ; [+4]
       15 LOADK                            R10 K1 ["Model"]
       16 NAMECALL                         R8 R7 K3 ["FindFirstAncestorOfClass"]
       18 CALL                             R8 2 1
       19 JUMPIFNOT                        R8 ; [+14]
       20 MOVE                             R1 R8
       21 LOADK                            R11 K4 ["HumanoidRigDescription"]
       22 NAMECALL                         R9 R8 K5 ["FindFirstChildOfClass"]
       24 CALL                             R9 2 1
       25 JUMPIFNOT                        R9 ; [+1]
       26 MOVE                             R0 R9
       27 LOADK                            R12 K6 ["Humanoid"]
       28 NAMECALL                         R10 R8 K5 ["FindFirstChildOfClass"]
       30 CALL                             R10 2 1
       31 JUMPIFNOT                        R10 ; [+4]
       32 LOADB                            R2 1
       33 JUMP                             ; [+2]
       34 FORGLOOP                         R3 2 ; [-27]
       36 GETUPVAL                         R3 1
       37 MOVE                             R4 R0
       38 CALL                             R3 1 0
       39 GETUPVAL                         R3 2
       40 MOVE                             R4 R1
       41 CALL                             R3 1 0
       42 GETUPVAL                         R3 3
       43 MOVE                             R4 R2
       44 CALL                             R3 1 0
       45 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["SelectionChanged"]
        8 MOVE                             R3 R0
        9 NAMECALL                         R1 R1 K1 ["Connect"]
       11 CALL                             R1 2 1
       12 MOVE                             R2 R0
       13 CALL                             R2 0 0
       14 NEWCLOSURE                       R2 P1
       15 CAPTURE                          VAL R1
       16 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useState"]
        3 LOADNIL                          R1
        4 CALL                             R0 1 2
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["useState"]
        8 LOADNIL                          R3
        9 CALL                             R2 1 2
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K0 ["useState"]
       13 LOADB                            R5 0
       14 CALL                             R4 1 2
       15 GETUPVAL                         R6 0
       16 GETTABLEKS                       R6 R6 K1 ["useEffect"]
       18 NEWCLOSURE                       R7 P0
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          VAL R1
       21 CAPTURE                          VAL R3
       22 CAPTURE                          VAL R5
       23 NEWTABLE                         R8 0 0
       25 CALL                             R6 2 0
       26 MOVE                             R6 R0
       27 MOVE                             R7 R2
       28 MOVE                             R8 R4
       29 RETURN                           R6 3

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
       20 DUPCLOSURE                       R3 K12 [PROTO_3]
       21 CAPTURE                          VAL R2
       22 CAPTURE                          VAL R0
       23 RETURN                           R3 1
