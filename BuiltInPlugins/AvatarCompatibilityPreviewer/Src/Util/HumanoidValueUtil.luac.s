PROTO_0:
        0 MOVE                             R5 R1
        1 NAMECALL                         R3 R0 K0 ["FindFirstChild"]
        3 CALL                             R3 2 1
        4 JUMPIFNOTEQKNIL                  R3 ; [+10]
        6 GETIMPORT                        R4 K3 [Instance.new]
        8 LOADK                            R5 K4 ["Vector3Value"]
        9 CALL                             R4 1 1
       10 MOVE                             R3 R4
       11 SETTABLEKS                       R1 R3 K5 ["Name"]
       13 SETTABLEKS                       R0 R3 K6 ["Parent"]
       15 LOADK                            R6 K4 ["Vector3Value"]
       16 NAMECALL                         R4 R3 K7 ["IsA"]
       18 CALL                             R4 2 1
       19 JUMPIFNOT                        R4 ; [+2]
       20 SETTABLEKS                       R2 R3 K8 ["Value"]
       22 RETURN                           R0 0

PROTO_1:
        0 MOVE                             R5 R1
        1 NAMECALL                         R3 R0 K0 ["FindFirstChild"]
        3 CALL                             R3 2 1
        4 JUMPIFNOTEQKNIL                  R3 ; [+10]
        6 GETIMPORT                        R4 K3 [Instance.new]
        8 LOADK                            R5 K4 ["NumberValue"]
        9 CALL                             R4 1 1
       10 MOVE                             R3 R4
       11 SETTABLEKS                       R1 R3 K5 ["Name"]
       13 SETTABLEKS                       R0 R3 K6 ["Parent"]
       15 LOADK                            R6 K4 ["NumberValue"]
       16 NAMECALL                         R4 R3 K7 ["IsA"]
       18 CALL                             R4 2 1
       19 JUMPIFNOT                        R4 ; [+2]
       20 SETTABLEKS                       R2 R3 K8 ["Value"]
       22 RETURN                           R0 0

PROTO_2:
        0 MOVE                             R5 R1
        1 NAMECALL                         R3 R0 K0 ["FindFirstChild"]
        3 CALL                             R3 2 1
        4 JUMPIFNOTEQKNIL                  R3 ; [+10]
        6 GETIMPORT                        R4 K3 [Instance.new]
        8 LOADK                            R5 K4 ["StringValue"]
        9 CALL                             R4 1 1
       10 MOVE                             R3 R4
       11 SETTABLEKS                       R1 R3 K5 ["Name"]
       13 SETTABLEKS                       R0 R3 K6 ["Parent"]
       15 LOADK                            R6 K4 ["StringValue"]
       16 NAMECALL                         R4 R3 K7 ["IsA"]
       18 CALL                             R4 2 1
       19 JUMPIFNOT                        R4 ; [+2]
       20 SETTABLEKS                       R2 R3 K8 ["Value"]
       22 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["setVector3Value"]
        3 MOVE                             R3 R0
        4 LOADK                            R4 K1 ["OriginalSize"]
        5 MOVE                             R5 R1
        6 CALL                             R2 3 0
        7 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["setVector3Value"]
        3 MOVE                             R3 R0
        4 LOADK                            R4 K1 ["OriginalPosition"]
        5 MOVE                             R5 R1
        6 CALL                             R2 3 0
        7 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["setNumberValue"]
        3 MOVE                             R3 R0
        4 LOADK                            R4 K1 ["BodyProportionScale"]
        5 MOVE                             R5 R1
        6 CALL                             R2 3 0
        7 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["setNumberValue"]
        3 MOVE                             R3 R0
        4 LOADK                            R4 K1 ["BodyTypeScale"]
        5 MOVE                             R5 R1
        6 CALL                             R2 3 0
        7 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["setStringValue"]
        3 MOVE                             R3 R0
        4 LOADK                            R4 K1 ["AvatarPartScaleType"]
        5 MOVE                             R5 R1
        6 CALL                             R2 3 0
        7 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["setVector3Value"]
        6 DUPCLOSURE                       R1 K2 [PROTO_1]
        7 SETTABLEKS                       R1 R0 K3 ["setNumberValue"]
        9 DUPCLOSURE                       R1 K4 [PROTO_2]
       10 SETTABLEKS                       R1 R0 K5 ["setStringValue"]
       12 DUPCLOSURE                       R1 K6 [PROTO_3]
       13 CAPTURE                          VAL R0
       14 SETTABLEKS                       R1 R0 K7 ["setOriginalSize"]
       16 DUPCLOSURE                       R1 K8 [PROTO_4]
       17 CAPTURE                          VAL R0
       18 SETTABLEKS                       R1 R0 K9 ["setOriginalPosition"]
       20 DUPCLOSURE                       R1 K10 [PROTO_5]
       21 CAPTURE                          VAL R0
       22 SETTABLEKS                       R1 R0 K11 ["setBodyProportionScale"]
       24 DUPCLOSURE                       R1 K12 [PROTO_6]
       25 CAPTURE                          VAL R0
       26 SETTABLEKS                       R1 R0 K13 ["setBodyTypeScale"]
       28 DUPCLOSURE                       R1 K14 [PROTO_7]
       29 CAPTURE                          VAL R0
       30 SETTABLEKS                       R1 R0 K15 ["setAvatarPartScaleType"]
       32 RETURN                           R0 1
