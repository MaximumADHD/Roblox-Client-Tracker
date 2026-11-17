PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["shouldDebugWarnings"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+4]
        5 GETIMPORT                        R1 K2 [warn]
        7 LOADK                            R2 K3 ["Patch make asset public unsuccessful"]
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 1
       10 GETUPVAL                         R3 2
       11 MOVE                             R4 R0
       12 CALL                             R3 1 -1
       13 NAMECALL                         R1 R1 K4 ["dispatch"]
       15 CALL                             R1 -1 0
       16 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R1 4 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["SubjectType"]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["All"]
        8 SETTABLE                         R3 R1 R2
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K2 ["SubjectId"]
       12 LOADK                            R3 K3 [""]
       13 SETTABLE                         R3 R1 R2
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K4 ["Action"]
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R3 R3 K5 ["UseAction"]
       20 SETTABLE                         R3 R1 R2
       21 GETUPVAL                         R2 1
       22 GETUPVAL                         R4 2
       23 MOVE                             R5 R1
       24 NAMECALL                         R2 R2 K6 ["grantAssetPermissions"]
       26 CALL                             R2 3 1
       27 DUPCLOSURE                       R4 K7 [PROTO_0]
       28 NEWCLOSURE                       R5 P1
       29 CAPTURE                          UPVAL U3
       30 CAPTURE                          VAL R0
       31 CAPTURE                          UPVAL U4
       32 NAMECALL                         R2 R2 K8 ["andThen"]
       34 CALL                             R2 3 -1
       35 RETURN                           R2 -1

PROTO_3:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Src"]
       15 GETTABLEKS                       R2 R2 K6 ["Util"]
       17 GETTABLEKS                       R2 R2 K7 ["DebugFlags"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K4 [require]
       22 GETTABLEKS                       R3 R0 K5 ["Src"]
       24 GETTABLEKS                       R3 R3 K8 ["Actions"]
       26 GETTABLEKS                       R3 R3 K9 ["NetworkError"]
       28 CALL                             R2 1 1
       29 GETIMPORT                        R3 K4 [require]
       31 GETTABLEKS                       R4 R0 K5 ["Src"]
       33 GETTABLEKS                       R4 R4 K6 ["Util"]
       35 GETTABLEKS                       R4 R4 K10 ["Permissions"]
       37 GETTABLEKS                       R4 R4 K11 ["Constants"]
       39 CALL                             R3 1 1
       40 GETTABLEKS                       R3 R3 K12 ["webKeys"]
       42 DUPCLOSURE                       R4 K13 [PROTO_3]
       43 CAPTURE                          VAL R3
       44 CAPTURE                          VAL R1
       45 CAPTURE                          VAL R2
       46 RETURN                           R4 1
