PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 CALL                             R3 1 -1
        4 NAMECALL                         R1 R1 K0 ["dispatch"]
        6 CALL                             R1 -1 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["shouldDebugWarnings"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+8]
        5 GETIMPORT                        R1 K2 [warn]
        7 FASTCALL1                        TOSTRING R0 ; [+3]
        8 MOVE                             R3 R0
        9 GETIMPORT                        R2 K4 [tostring]
       11 CALL                             R2 1 1
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 CALL                             R1 2 1
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U3
        7 DUPCLOSURE                       R4 K0 [PROTO_1]
        8 CAPTURE                          UPVAL U4
        9 NAMECALL                         R1 R1 K1 ["andThen"]
       11 CALL                             R1 3 -1
       12 RETURN                           R1 -1

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
       11 GETTABLEKS                       R1 R0 K3 ["Src"]
       13 GETTABLEKS                       R1 R1 K4 ["Util"]
       15 GETIMPORT                        R2 K6 [require]
       17 GETTABLEKS                       R3 R1 K7 ["PreviewModelGetter"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K6 [require]
       22 GETTABLEKS                       R4 R1 K8 ["DebugFlags"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R5 R0 K3 ["Src"]
       29 GETTABLEKS                       R5 R5 K9 ["Actions"]
       31 GETTABLEKS                       R5 R5 K10 ["SetPreviewModel"]
       33 CALL                             R4 1 1
       34 DUPCLOSURE                       R5 K11 [PROTO_3]
       35 CAPTURE                          VAL R2
       36 CAPTURE                          VAL R4
       37 CAPTURE                          VAL R3
       38 RETURN                           R5 1
