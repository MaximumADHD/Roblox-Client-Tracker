PROTO_0:
        0 LOADK                            R4 K0 ["AudioEmitter"]
        1 NAMECALL                         R2 R0 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 JUMPIFNOT                        R2 ; [+5]
        5 MOVE                             R4 R1
        6 NAMECALL                         R2 R0 K2 ["SetDistanceAttenuation"]
        8 CALL                             R2 2 0
        9 RETURN                           R0 0
       10 LOADK                            R4 K3 ["AudioListener"]
       11 NAMECALL                         R2 R0 K1 ["IsA"]
       13 CALL                             R2 2 1
       14 JUMPIFNOT                        R2 ; [+4]
       15 MOVE                             R4 R1
       16 NAMECALL                         R2 R0 K2 ["SetDistanceAttenuation"]
       18 CALL                             R2 2 0
       19 RETURN                           R0 0

PROTO_1:
        0 LOADK                            R3 K0 ["AudioEmitter"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+4]
        5 NAMECALL                         R1 R0 K2 ["GetDistanceAttenuation"]
        7 CALL                             R1 1 -1
        8 RETURN                           R1 -1
        9 LOADK                            R3 K3 ["AudioListener"]
       10 NAMECALL                         R1 R0 K1 ["IsA"]
       12 CALL                             R1 2 1
       13 JUMPIFNOT                        R1 ; [+4]
       14 NAMECALL                         R1 R0 K2 ["GetDistanceAttenuation"]
       16 CALL                             R1 1 -1
       17 RETURN                           R1 -1
       18 NEWTABLE                         R1 0 0
       20 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["tableToCurve"]
        3 MOVE                             R4 R0
        4 CALL                             R3 1 1
        5 GETTABLEKS                       R2 R3 K1 ["Keypoints"]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R4 R5 K0 ["tableToCurve"]
       10 MOVE                             R5 R1
       11 CALL                             R4 1 1
       12 GETTABLEKS                       R3 R4 K1 ["Keypoints"]
       14 LENGTH                           R4 R2
       15 LENGTH                           R5 R3
       16 JUMPIFEQ                         R4 R5 ; [+3]
       18 LOADB                            R6 0
       19 RETURN                           R6 1
       20 LOADN                            R8 1
       21 MOVE                             R6 R4
       22 LOADN                            R7 1
       23 FORNPREP                         R6
       24 GETTABLE                         R11 R2 R8
       25 GETTABLE                         R12 R3 R8
       26 SUB                              R10 R11 R12
       27 GETTABLEKS                       R9 R10 K2 ["Magnitude"]
       29 LOADK                            R10 K3 [0.001]
       30 JUMPIFNOTLT                      R10 R9 ; [+3]
       32 LOADB                            R9 0
       33 RETURN                           R9 1
       34 FORNLOOP                         R6
       35 LOADB                            R6 1
       36 RETURN                           R6 1

PROTO_3:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 FASTCALL1                        TOSTRING R5 ; [+3]
        7 MOVE                             R8 R5
        8 GETIMPORT                        R7 K1 [tostring]
       10 CALL                             R7 1 1
       11 JUMPIF                           R7 ; [+10]
       12 GETIMPORT                        R8 K3 [print]
       14 LOADK                            R10 K4 ["%* couldn't be converted to a string!"]
       15 MOVE                             R12 R5
       16 NAMECALL                         R10 R10 K5 ["format"]
       18 CALL                             R10 2 1
       19 MOVE                             R9 R10
       20 CALL                             R8 1 0
       21 JUMP                             ; [+1]
       22 SETTABLE                         R6 R1 R7
       23 FORGLOOP                         R2 2 ; [-18]
       25 RETURN                           R1 1

PROTO_4:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 FASTCALL1                        TONUMBER R5 ; [+3]
        7 MOVE                             R8 R5
        8 GETIMPORT                        R7 K1 [tonumber]
       10 CALL                             R7 1 1
       11 JUMPIF                           R7 ; [+10]
       12 GETIMPORT                        R8 K3 [print]
       14 LOADK                            R10 K4 ["%* couldn't be converted to a number!"]
       15 MOVE                             R12 R5
       16 NAMECALL                         R10 R10 K5 ["format"]
       18 CALL                             R10 2 1
       19 MOVE                             R9 R10
       20 CALL                             R8 1 0
       21 JUMP                             ; [+1]
       22 SETTABLE                         R6 R1 R7
       23 FORGLOOP                         R2 2 ; [-18]
       25 RETURN                           R1 1

PROTO_5:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["Keypoints"]
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 GETUPVAL                         R7 0
        8 GETTABLEKS                       R8 R6 K1 ["X"]
       10 LOADN                            R9 3
       11 CALL                             R7 2 1
       12 GETUPVAL                         R8 0
       13 GETTABLEKS                       R9 R6 K2 ["Y"]
       15 LOADN                            R10 3
       16 CALL                             R8 2 1
       17 SETTABLE                         R8 R1 R7
       18 FORGLOOP                         R2 2 ; [-12]
       20 RETURN                           R1 1

PROTO_6:
        0 GETTABLEKS                       R3 R0 K0 ["X"]
        2 GETTABLEKS                       R4 R1 K0 ["X"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_7:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 MOVE                             R8 R1
        7 GETIMPORT                        R9 K2 [Vector2.new]
        9 MOVE                             R10 R5
       10 MOVE                             R11 R6
       11 CALL                             R9 2 -1
       12 FASTCALL                         TABLE_INSERT ; [+2]
       13 GETIMPORT                        R7 K5 [table.insert]
       15 CALL                             R7 -1 0
       16 FORGLOOP                         R2 2 ; [-11]
       18 GETIMPORT                        R2 K7 [table.sort]
       20 MOVE                             R3 R1
       21 DUPCLOSURE                       R4 K8 [PROTO_6]
       22 CALL                             R2 2 0
       23 DUPTABLE                         R2 K10 [{"Keypoints"}]
       24 SETTABLEKS                       R1 R2 K9 ["Keypoints"]
       26 RETURN                           R2 1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["stringifyCurveTable"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R2 R3 K1 ["curveToTable"]
        6 DUPTABLE                         R3 K3 [{"Keypoints"}]
        7 SETTABLEKS                       R0 R3 K2 ["Keypoints"]
        9 CALL                             R2 1 -1
       10 CALL                             R1 -1 -1
       11 RETURN                           R1 -1

PROTO_9:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["tableToCurve"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R3 R4 K1 ["destringifyCurveTable"]
        6 MOVE                             R4 R0
        7 CALL                             R3 1 -1
        8 CALL                             R2 -1 1
        9 GETTABLEKS                       R1 R2 K2 ["Keypoints"]
       11 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AttenuationCurveEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R3 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K6 ["Src"]
       18 GETTABLEKS                       R4 R5 K8 ["Util"]
       20 GETTABLEKS                       R3 R4 K9 ["roundDecimal"]
       22 CALL                             R2 1 1
       23 NEWTABLE                         R3 16 0
       25 DUPCLOSURE                       R4 K10 [PROTO_0]
       26 SETTABLEKS                       R4 R3 K11 ["setDistanceAttenuation"]
       28 DUPCLOSURE                       R4 K12 [PROTO_1]
       29 SETTABLEKS                       R4 R3 K13 ["getDistanceAttenuation"]
       31 DUPCLOSURE                       R4 K14 [PROTO_2]
       32 CAPTURE                          VAL R3
       33 SETTABLEKS                       R4 R3 K15 ["areCurvesEqual"]
       35 DUPCLOSURE                       R4 K16 [PROTO_3]
       36 SETTABLEKS                       R4 R3 K17 ["stringifyCurveTable"]
       38 DUPCLOSURE                       R4 K18 [PROTO_4]
       39 SETTABLEKS                       R4 R3 K19 ["destringifyCurveTable"]
       41 DUPCLOSURE                       R4 K20 [PROTO_5]
       42 CAPTURE                          VAL R2
       43 SETTABLEKS                       R4 R3 K21 ["curveToTable"]
       45 DUPCLOSURE                       R4 K22 [PROTO_7]
       46 SETTABLEKS                       R4 R3 K23 ["tableToCurve"]
       48 DUPCLOSURE                       R4 K24 [PROTO_8]
       49 CAPTURE                          VAL R3
       50 SETTABLEKS                       R4 R3 K25 ["keypointsToStrTable"]
       52 DUPCLOSURE                       R4 K26 [PROTO_9]
       53 CAPTURE                          VAL R3
       54 SETTABLEKS                       R4 R3 K27 ["strTableToKeypoints"]
       56 RETURN                           R3 1
