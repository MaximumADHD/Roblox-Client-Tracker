PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETUPVAL                         R2 0
        4 GETUPVAL                         R4 1
        5 MOVE                             R5 R1
        6 CALL                             R4 1 -1
        7 NAMECALL                         R2 R2 K1 ["dispatch"]
        9 CALL                             R2 -1 0
       10 RETURN                           R1 1
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R2 R2 K2 ["shouldDebugWarnings"]
       14 CALL                             R2 0 1
       15 JUMPIFNOT                        R2 ; [+4]
       16 GETIMPORT                        R2 K4 [warn]
       18 LOADK                            R3 K5 ["Fetching publishing requirement response body is empty"]
       19 CALL                             R2 1 0
       20 GETUPVAL                         R2 0
       21 GETUPVAL                         R4 3
       22 MOVE                             R5 R0
       23 CALL                             R4 1 -1
       24 NAMECALL                         R2 R2 K1 ["dispatch"]
       26 CALL                             R2 -1 0
       27 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["shouldDebugWarnings"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+9]
        5 GETIMPORT                        R1 K2 [warn]
        7 LOADK                            R2 K3 ["Fetching publishing requirement was unsuccessful:"]
        8 FASTCALL1                        TOSTRING R0 ; [+3]
        9 MOVE                             R4 R0
       10 GETIMPORT                        R3 K5 [tostring]
       12 CALL                             R3 1 1
       13 CALL                             R1 2 0
       14 GETUPVAL                         R1 1
       15 GETUPVAL                         R3 2
       16 MOVE                             R4 R0
       17 CALL                             R3 1 -1
       18 NAMECALL                         R1 R1 K6 ["dispatch"]
       20 CALL                             R1 -1 0
       21 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 0
        2 GETIMPORT                        R3 K3 [Enum.AssetType.Image]
        4 JUMPIFNOTEQ                      R2 R3 ; [+5]
        6 GETIMPORT                        R2 K5 [Enum.AssetType.Decal]
        8 SETUPVAL                         R2 0
        9 JUMP                             ; [+8]
       10 GETUPVAL                         R2 0
       11 GETIMPORT                        R3 K7 [Enum.AssetType.Mesh]
       13 JUMPIFNOTEQ                      R2 R3 ; [+4]
       15 GETIMPORT                        R2 K9 [Enum.AssetType.MeshPart]
       17 SETUPVAL                         R2 0
       18 GETUPVAL                         R2 1
       19 GETUPVAL                         R4 2
       20 GETUPVAL                         R5 0
       21 GETUPVAL                         R6 3
       22 NAMECALL                         R2 R2 K10 ["getPublishingRequirements"]
       24 CALL                             R2 4 1
       25 NEWCLOSURE                       R4 P0
       26 CAPTURE                          VAL R0
       27 CAPTURE                          UPVAL U4
       28 CAPTURE                          UPVAL U5
       29 CAPTURE                          UPVAL U6
       30 NEWCLOSURE                       R5 P1
       31 CAPTURE                          UPVAL U5
       32 CAPTURE                          VAL R0
       33 CAPTURE                          UPVAL U6
       34 NAMECALL                         R2 R2 K11 ["andThen"]
       36 CALL                             R2 3 -1
       37 RETURN                           R2 -1

PROTO_3:
        0 NEWCLOSURE                       R4 P0
        1 CAPTURE                          REF R2
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          VAL R3
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CLOSEUPVALS                      R2
        9 RETURN                           R4 1

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
       20 GETTABLEKS                       R2 R0 K5 ["Src"]
       22 GETTABLEKS                       R2 R2 K8 ["Actions"]
       24 GETIMPORT                        R3 K4 [require]
       26 GETTABLEKS                       R4 R2 K9 ["NetworkError"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K4 [require]
       31 GETTABLEKS                       R5 R2 K10 ["SetPublishingRequirements"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K4 [require]
       36 GETTABLEKS                       R6 R0 K5 ["Src"]
       38 GETTABLEKS                       R6 R6 K11 ["Types"]
       40 GETTABLEKS                       R6 R6 K12 ["AssetSubTypes"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K4 [require]
       45 GETTABLEKS                       R7 R0 K5 ["Src"]
       47 GETTABLEKS                       R7 R7 K11 ["Types"]
       49 GETTABLEKS                       R7 R7 K13 ["PublishingRequirementsType"]
       51 CALL                             R6 1 1
       52 DUPCLOSURE                       R7 K14 [PROTO_3]
       53 CAPTURE                          VAL R4
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R3
       56 RETURN                           R7 1
