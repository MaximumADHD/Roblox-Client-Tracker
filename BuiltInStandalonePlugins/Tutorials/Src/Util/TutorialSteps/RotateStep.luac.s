PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["CFrame"]
        4 GETTABLEKS                       R1 R2 K1 ["LookVector"]
        6 JUMPIFNOTEQ                      R0 R1 ; [+2]
        8 RETURN                           R0 0
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R1 R2 K2 ["data"]
       12 GETTABLEKS                       R0 R1 K3 ["distance"]
       14 JUMPIFNOT                        R0 ; [+56]
       15 GETUPVAL                         R2 2
       16 GETTABLEKS                       R1 R2 K2 ["data"]
       18 GETTABLEKS                       R0 R1 K4 ["rotation"]
       20 GETIMPORT                        R1 K6 [CFrame.Angles]
       22 GETTABLEKS                       R3 R0 K7 ["X"]
       24 FASTCALL1                        MATH_RAD R3 ; [+2]
       25 GETIMPORT                        R2 K10 [math.rad]
       27 CALL                             R2 1 1
       28 GETTABLEKS                       R4 R0 K11 ["Y"]
       30 FASTCALL1                        MATH_RAD R4 ; [+2]
       31 GETIMPORT                        R3 K10 [math.rad]
       33 CALL                             R3 1 1
       34 GETTABLEKS                       R5 R0 K12 ["Z"]
       36 FASTCALL1                        MATH_RAD R5 ; [+2]
       37 GETIMPORT                        R4 K10 [math.rad]
       39 CALL                             R4 1 1
       40 CALL                             R1 3 1
       41 GETUPVAL                         R6 1
       42 GETTABLEKS                       R5 R6 K0 ["CFrame"]
       44 GETTABLEKS                       R4 R5 K1 ["LookVector"]
       46 GETTABLEKS                       R6 R1 K1 ["LookVector"]
       48 NAMECALL                         R4 R4 K13 ["Dot"]
       50 CALL                             R4 2 1
       51 FASTCALL1                        MATH_ACOS R4 ; [+2]
       52 GETIMPORT                        R3 K15 [math.acos]
       54 CALL                             R3 1 1
       55 FASTCALL1                        MATH_DEG R3 ; [+2]
       56 GETIMPORT                        R2 K17 [math.deg]
       58 CALL                             R2 1 1
       59 GETUPVAL                         R5 2
       60 GETTABLEKS                       R4 R5 K2 ["data"]
       62 GETTABLEKS                       R3 R4 K3 ["distance"]
       64 JUMPIFNOTLT                      R2 R3 ; [+10]
       66 GETUPVAL                         R3 2
       67 NAMECALL                         R3 R3 K18 ["complete"]
       69 CALL                             R3 1 0
       70 RETURN                           R0 0
       71 GETUPVAL                         R0 2
       72 NAMECALL                         R0 R0 K18 ["complete"]
       74 CALL                             R0 1 0
       75 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["tutorial"]
        2 GETTABLEKS                       R2 R3 K1 ["instances"]
        4 GETTABLEKS                       R4 R0 K2 ["data"]
        6 GETTABLEKS                       R3 R4 K3 ["instanceId"]
        8 GETTABLE                         R1 R2 R3
        9 JUMPIFNOT                        R1 ; [+17]
       10 GETTABLEKS                       R3 R1 K4 ["CFrame"]
       12 GETTABLEKS                       R2 R3 K5 ["LookVector"]
       14 LOADK                            R5 K4 ["CFrame"]
       15 NAMECALL                         R3 R1 K6 ["GetPropertyChangedSignal"]
       17 CALL                             R3 2 1
       18 NEWCLOSURE                       R5 P0
       19 CAPTURE                          VAL R2
       20 CAPTURE                          VAL R1
       21 CAPTURE                          VAL R0
       22 NAMECALL                         R3 R3 K7 ["Connect"]
       24 CALL                             R3 2 1
       25 SETTABLEKS                       R3 R0 K8 ["connection"]
       27 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["connection"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["connection"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["TutorialStep"]
        9 CALL                             R0 1 1
       10 GETTABLEKS                       R1 R0 K6 ["extend"]
       12 LOADK                            R2 K7 ["Rotate"]
       13 CALL                             R1 1 1
       14 LOADB                            R2 1
       15 SETTABLEKS                       R2 R1 K8 ["showComplete"]
       17 DUPCLOSURE                       R2 K9 [PROTO_1]
       18 SETTABLEKS                       R2 R1 K10 ["bind"]
       20 DUPCLOSURE                       R2 K11 [PROTO_2]
       21 SETTABLEKS                       R2 R1 K12 ["unbind"]
       23 RETURN                           R1 1
