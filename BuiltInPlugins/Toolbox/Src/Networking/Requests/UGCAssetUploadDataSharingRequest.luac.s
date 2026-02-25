PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["shouldDebugWarnings"]
        3 CALL                             R3 0 1
        4 JUMPIFNOT                        R3 ; [+5]
        5 GETIMPORT                        R3 K2 [warn]
        7 LOADK                            R4 K3 ["Failed here -- Could not post UGC Asset consent and received response:"]
        8 MOVE                             R5 R2
        9 CALL                             R3 2 0
       10 GETUPVAL                         R5 1
       11 LOADK                            R8 K4 ["AssetConfig"]
       12 LOADK                            R9 K5 ["ValidationErrorUnknown"]
       13 NAMECALL                         R6 R1 K6 ["getText"]
       15 CALL                             R6 3 -1
       16 CALL                             R5 -1 -1
       17 NAMECALL                         R3 R0 K7 ["dispatch"]
       19 CALL                             R3 -1 0
       20 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["shouldDebugWarnings"]
        3 CALL                             R0 0 1
        4 JUMPIFNOT                        R0 ; [+4]
        5 GETIMPORT                        R0 K2 [warn]
        7 LOADK                            R1 K3 ["UGC Asset consent post succeeded"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R4 2
        3 GETTABLEKS                       R3 R4 K0 ["shouldDebugWarnings"]
        5 CALL                             R3 0 1
        6 JUMPIFNOT                        R3 ; [+5]
        7 GETIMPORT                        R3 K2 [warn]
        9 LOADK                            R4 K3 ["Failed here -- Could not post UGC Asset consent and received response:"]
       10 MOVE                             R5 R0
       11 CALL                             R3 2 0
       12 GETUPVAL                         R5 3
       13 LOADK                            R8 K4 ["AssetConfig"]
       14 LOADK                            R9 K5 ["ValidationErrorUnknown"]
       15 NAMECALL                         R6 R2 K6 ["getText"]
       17 CALL                             R6 3 -1
       18 CALL                             R5 -1 -1
       19 NAMECALL                         R3 R1 K7 ["dispatch"]
       21 CALL                             R3 -1 0
       22 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 NAMECALL                         R1 R1 K0 ["postCreateAvatarAssetDataSharing"]
        5 CALL                             R1 3 1
        6 DUPCLOSURE                       R3 K1 [PROTO_1]
        7 CAPTURE                          UPVAL U3
        8 NAMECALL                         R1 R1 K2 ["andThen"]
       10 CALL                             R1 2 1
       11 NEWCLOSURE                       R3 P1
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U4
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          UPVAL U5
       16 NAMECALL                         R1 R1 K3 ["catch"]
       18 CALL                             R1 2 -1
       19 RETURN                           R1 -1

PROTO_4:
        0 NEWCLOSURE                       R4 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 CAPTURE                          VAL R2
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          VAL R3
        6 CAPTURE                          UPVAL U1
        7 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R2 R0 K4 ["Src"]
        9 GETTABLEKS                       R1 R2 K5 ["Actions"]
       11 GETIMPORT                        R2 K7 [require]
       13 GETTABLEKS                       R3 R1 K8 ["NetworkError"]
       15 CALL                             R2 1 1
       16 GETTABLEKS                       R4 R0 K4 ["Src"]
       18 GETTABLEKS                       R3 R4 K9 ["Util"]
       20 GETIMPORT                        R4 K7 [require]
       22 GETTABLEKS                       R5 R3 K10 ["DebugFlags"]
       24 CALL                             R4 1 1
       25 DUPCLOSURE                       R5 K11 [PROTO_0]
       26 CAPTURE                          VAL R4
       27 CAPTURE                          VAL R2
       28 DUPCLOSURE                       R6 K12 [PROTO_4]
       29 CAPTURE                          VAL R4
       30 CAPTURE                          VAL R2
       31 RETURN                           R6 1
