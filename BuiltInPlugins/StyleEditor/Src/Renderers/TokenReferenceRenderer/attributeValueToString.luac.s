PROTO_0:
        0 GETIMPORT                        R1 K2 [string.format]
        2 LOADK                            R2 K3 ["'%s'"]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_1:
        0 GETIMPORT                        R1 K2 [string.format]
        2 LOADK                            R2 K3 ["%.3f"]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_2:
        0 GETIMPORT                        R1 K2 [string.format]
        2 LOADK                            R2 K3 ["{%.3f, %d}"]
        3 GETTABLEKS                       R3 R0 K4 ["Scale"]
        5 GETTABLEKS                       R4 R0 K5 ["Offset"]
        7 CALL                             R1 3 -1
        8 RETURN                           R1 -1

PROTO_3:
        0 GETIMPORT                        R1 K2 [string.format]
        2 LOADK                            R2 K3 ["{%.3f, %d}, {%.3f, %d}"]
        3 GETTABLEKS                       R3 R0 K4 ["X"]
        5 GETTABLEKS                       R3 R3 K5 ["Scale"]
        7 GETTABLEKS                       R4 R0 K4 ["X"]
        9 GETTABLEKS                       R4 R4 K6 ["Offset"]
       11 GETTABLEKS                       R5 R0 K7 ["Y"]
       13 GETTABLEKS                       R5 R5 K5 ["Scale"]
       15 GETTABLEKS                       R6 R0 K7 ["Y"]
       17 GETTABLEKS                       R6 R6 K6 ["Offset"]
       19 CALL                             R1 5 -1
       20 RETURN                           R1 -1

PROTO_4:
        0 GETIMPORT                        R1 K2 [string.format]
        2 LOADK                            R2 K3 ["{%.3f, %.3f}"]
        3 GETTABLEKS                       R3 R0 K4 ["X"]
        5 GETTABLEKS                       R4 R0 K5 ["Y"]
        7 CALL                             R1 3 -1
        8 RETURN                           R1 -1

PROTO_5:
        0 GETIMPORT                        R1 K2 [string.format]
        2 LOADK                            R2 K3 ["{%.3f, %.3f, %.3f}"]
        3 GETTABLEKS                       R3 R0 K4 ["X"]
        5 GETTABLEKS                       R4 R0 K5 ["Y"]
        7 GETTABLEKS                       R5 R0 K6 ["Z"]
        9 CALL                             R1 4 -1
       10 RETURN                           R1 -1

PROTO_6:
        0 GETIMPORT                        R1 K2 [string.format]
        2 LOADK                            R2 K3 ["{%.3f, %.3f}, {%.3f, %.3f}"]
        3 GETTABLEKS                       R3 R0 K4 ["Min"]
        5 GETTABLEKS                       R3 R3 K5 ["X"]
        7 GETTABLEKS                       R4 R0 K4 ["Min"]
        9 GETTABLEKS                       R4 R4 K6 ["Y"]
       11 GETTABLEKS                       R5 R0 K7 ["Max"]
       13 GETTABLEKS                       R5 R5 K5 ["X"]
       15 GETTABLEKS                       R6 R0 K7 ["Max"]
       17 GETTABLEKS                       R6 R6 K6 ["Y"]
       19 CALL                             R1 5 -1
       20 RETURN                           R1 -1

PROTO_7:
        0 GETIMPORT                        R1 K2 [string.format]
        2 LOADK                            R2 K3 ["#%s"]
        3 NAMECALL                         R3 R0 K4 ["ToHex"]
        5 CALL                             R3 1 -1
        6 CALL                             R1 -1 -1
        7 RETURN                           R1 -1

PROTO_8:
        0 GETTABLEKS                       R3 R1 K0 ["Fonts"]
        2 GETTABLEKS                       R4 R0 K1 ["Family"]
        4 GETTABLE                         R2 R3 R4
        5 JUMPIFNOT                        R2 ; [+3]
        6 GETTABLEKS                       R3 R2 K2 ["Name"]
        8 RETURN                           R3 1
        9 GETTABLEKS                       R3 R0 K1 ["Family"]
       11 LOADK                            R5 K3 ["/([^%s/]+)%.json"]
       12 NAMECALL                         R3 R3 K4 ["match"]
       14 CALL                             R3 2 1
       15 JUMPIF                           R3 ; [+2]
       16 GETTABLEKS                       R3 R0 K1 ["Family"]
       18 RETURN                           R3 1

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["Name"]
        2 RETURN                           R1 1

PROTO_10:
        0 NAMECALL                         R1 R0 K0 ["ToEulerAnglesXYZ"]
        2 CALL                             R1 1 3
        3 GETIMPORT                        R4 K3 [string.format]
        5 LOADK                            R5 K4 ["{%.3f, %.3f, %.3f}, {%.3f, %.3f, %.3f}"]
        6 GETTABLEKS                       R6 R0 K5 ["Position"]
        8 GETTABLEKS                       R6 R6 K6 ["X"]
       10 GETTABLEKS                       R7 R0 K5 ["Position"]
       12 GETTABLEKS                       R7 R7 K7 ["Y"]
       14 GETTABLEKS                       R8 R0 K5 ["Position"]
       16 GETTABLEKS                       R8 R8 K8 ["Z"]
       18 MOVE                             R9 R1
       19 MOVE                             R10 R2
       20 MOVE                             R11 R3
       21 CALL                             R4 7 -1
       22 RETURN                           R4 -1

PROTO_11:
        0 GETTABLEKS                       R2 R0 K0 ["Keypoints"]
        2 LENGTH                           R1 R2
        3 LOADN                            R2 2
        4 JUMPIFLT                         R2 R1 ; [+13]
        6 GETTABLEKS                       R2 R0 K0 ["Keypoints"]
        8 GETTABLEN                        R1 R2 1
        9 GETTABLEKS                       R1 R1 K1 ["Value"]
       11 GETTABLEKS                       R3 R0 K0 ["Keypoints"]
       13 GETTABLEN                        R2 R3 2
       14 GETTABLEKS                       R2 R2 K1 ["Value"]
       16 JUMPIFEQ                         R1 R2 ; [+3]
       18 LOADK                            R1 K2 ["<NumberSequence>"]
       19 RETURN                           R1 1
       20 GETIMPORT                        R1 K5 [string.format]
       22 LOADK                            R2 K6 ["%.3f"]
       23 GETTABLEKS                       R4 R0 K0 ["Keypoints"]
       25 GETTABLEN                        R3 R4 1
       26 GETTABLEKS                       R3 R3 K1 ["Value"]
       28 CALL                             R1 2 -1
       29 RETURN                           R1 -1

PROTO_12:
        0 GETTABLEKS                       R2 R0 K0 ["Keypoints"]
        2 LENGTH                           R1 R2
        3 LOADN                            R2 2
        4 JUMPIFLT                         R2 R1 ; [+13]
        6 GETTABLEKS                       R2 R0 K0 ["Keypoints"]
        8 GETTABLEN                        R1 R2 1
        9 GETTABLEKS                       R1 R1 K1 ["Value"]
       11 GETTABLEKS                       R3 R0 K0 ["Keypoints"]
       13 GETTABLEN                        R2 R3 2
       14 GETTABLEKS                       R2 R2 K1 ["Value"]
       16 JUMPIFEQ                         R1 R2 ; [+3]
       18 LOADK                            R1 K2 ["<ColorSequence>"]
       19 RETURN                           R1 1
       20 GETIMPORT                        R1 K5 [string.format]
       22 LOADK                            R2 K6 ["#%s"]
       23 GETTABLEKS                       R4 R0 K0 ["Keypoints"]
       25 GETTABLEN                        R3 R4 1
       26 GETTABLEKS                       R3 R3 K1 ["Value"]
       28 NAMECALL                         R3 R3 K7 ["ToHex"]
       30 CALL                             R3 1 -1
       31 CALL                             R1 -1 -1
       32 RETURN                           R1 -1

PROTO_13:
        0 GETUPVAL                         R3 0
        1 FASTCALL1                        TYPEOF R0 ; [+3]
        2 MOVE                             R5 R0
        3 GETIMPORT                        R4 K1 [typeof]
        5 CALL                             R4 1 1
        6 GETTABLE                         R2 R3 R4
        7 JUMPIFNOT                        R2 ; [+5]
        8 MOVE                             R3 R2
        9 MOVE                             R4 R0
       10 MOVE                             R5 R1
       11 CALL                             R3 2 -1
       12 RETURN                           R3 -1
       13 FASTCALL1                        TOSTRING R0 ; [+3]
       14 MOVE                             R4 R0
       15 GETIMPORT                        R3 K3 [tostring]
       17 CALL                             R3 1 1
       18 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Src"]
       15 GETTABLEKS                       R2 R2 K6 ["Types"]
       17 CALL                             R1 1 1
       18 DUPTABLE                         R2 K20 [{"string", "number", "UDim", "UDim2", "Vector2", "Vector3", "Rect", "Color3", "Font", "BrickColor", "CFrame", "NumberSequence", "ColorSequence"}]
       19 DUPCLOSURE                       R3 K21 [PROTO_0]
       20 SETTABLEKS                       R3 R2 K7 ["string"]
       22 DUPCLOSURE                       R3 K22 [PROTO_1]
       23 SETTABLEKS                       R3 R2 K8 ["number"]
       25 DUPCLOSURE                       R3 K23 [PROTO_2]
       26 SETTABLEKS                       R3 R2 K9 ["UDim"]
       28 DUPCLOSURE                       R3 K24 [PROTO_3]
       29 SETTABLEKS                       R3 R2 K10 ["UDim2"]
       31 DUPCLOSURE                       R3 K25 [PROTO_4]
       32 SETTABLEKS                       R3 R2 K11 ["Vector2"]
       34 DUPCLOSURE                       R3 K26 [PROTO_5]
       35 SETTABLEKS                       R3 R2 K12 ["Vector3"]
       37 DUPCLOSURE                       R3 K27 [PROTO_6]
       38 SETTABLEKS                       R3 R2 K13 ["Rect"]
       40 DUPCLOSURE                       R3 K28 [PROTO_7]
       41 SETTABLEKS                       R3 R2 K14 ["Color3"]
       43 DUPCLOSURE                       R3 K29 [PROTO_8]
       44 SETTABLEKS                       R3 R2 K15 ["Font"]
       46 DUPCLOSURE                       R3 K30 [PROTO_9]
       47 SETTABLEKS                       R3 R2 K16 ["BrickColor"]
       49 DUPCLOSURE                       R3 K31 [PROTO_10]
       50 SETTABLEKS                       R3 R2 K17 ["CFrame"]
       52 DUPCLOSURE                       R3 K32 [PROTO_11]
       53 SETTABLEKS                       R3 R2 K18 ["NumberSequence"]
       55 DUPCLOSURE                       R3 K33 [PROTO_12]
       56 SETTABLEKS                       R3 R2 K19 ["ColorSequence"]
       58 DUPCLOSURE                       R3 K34 [PROTO_13]
       59 CAPTURE                          VAL R2
       60 RETURN                           R3 1
