PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["EMITTER"]
        3 NAMECALL                         R2 R0 K1 ["IsA"]
        5 CALL                             R2 2 1
        6 JUMPIFNOT                        R2 ; [+5]
        7 MOVE                             R4 R1
        8 NAMECALL                         R2 R0 K2 ["SetDistanceAttenuation"]
       10 CALL                             R2 2 0
       11 RETURN                           R0 0
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R4 R4 K3 ["LISTENER"]
       15 NAMECALL                         R2 R0 K1 ["IsA"]
       17 CALL                             R2 2 1
       18 JUMPIFNOT                        R2 ; [+1]
       19 RETURN                           R0 0
       20 LOADB                            R3 0
       21 FASTCALL2K                       ASSERT R3 K4 ; [+4]
       23 LOADK                            R4 K4 ["DirectionalCurveEditor only supports emitters and listeners"]
       24 GETIMPORT                        R2 K6 [assert]
       26 CALL                             R2 2 0
       27 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["EMITTER"]
        3 NAMECALL                         R1 R0 K1 ["IsA"]
        5 CALL                             R1 2 1
        6 JUMPIFNOT                        R1 ; [+4]
        7 NAMECALL                         R1 R0 K2 ["GetDistanceAttenuation"]
        9 CALL                             R1 1 1
       10 RETURN                           R1 1
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K3 ["LISTENER"]
       14 NAMECALL                         R1 R0 K1 ["IsA"]
       16 CALL                             R1 2 1
       17 JUMPIFNOT                        R1 ; [+3]
       18 NEWTABLE                         R1 0 0
       20 RETURN                           R1 1
       21 LOADB                            R2 0
       22 FASTCALL2K                       ASSERT R2 K4 ; [+4]
       24 LOADK                            R3 K4 ["DirectionalCurveEditor only supports emitters and listeners"]
       25 GETIMPORT                        R1 K6 [assert]
       27 CALL                             R1 2 0
       28 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["EMITTER"]
        3 NAMECALL                         R2 R0 K1 ["IsA"]
        5 CALL                             R2 2 1
        6 JUMPIFNOT                        R2 ; [+5]
        7 MOVE                             R4 R1
        8 NAMECALL                         R2 R0 K2 ["SetAngleAttenuation"]
       10 CALL                             R2 2 0
       11 RETURN                           R0 0
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R4 R4 K3 ["LISTENER"]
       15 NAMECALL                         R2 R0 K1 ["IsA"]
       17 CALL                             R2 2 1
       18 JUMPIFNOT                        R2 ; [+5]
       19 MOVE                             R4 R1
       20 NAMECALL                         R2 R0 K2 ["SetAngleAttenuation"]
       22 CALL                             R2 2 0
       23 RETURN                           R0 0
       24 LOADB                            R3 0
       25 FASTCALL2K                       ASSERT R3 K4 ; [+4]
       27 LOADK                            R4 K4 ["DirectionalCurveEditor only supports emitters and listeners"]
       28 GETIMPORT                        R2 K6 [assert]
       30 CALL                             R2 2 0
       31 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["EMITTER"]
        3 NAMECALL                         R1 R0 K1 ["IsA"]
        5 CALL                             R1 2 1
        6 JUMPIFNOT                        R1 ; [+4]
        7 NAMECALL                         R1 R0 K2 ["GetAngleAttenuation"]
        9 CALL                             R1 1 1
       10 RETURN                           R1 1
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K3 ["LISTENER"]
       14 NAMECALL                         R1 R0 K1 ["IsA"]
       16 CALL                             R1 2 1
       17 JUMPIFNOT                        R1 ; [+4]
       18 NAMECALL                         R1 R0 K2 ["GetAngleAttenuation"]
       20 CALL                             R1 1 1
       21 RETURN                           R1 1
       22 LOADB                            R2 0
       23 FASTCALL2K                       ASSERT R2 K4 ; [+4]
       25 LOADK                            R3 K4 ["DirectionalCurveEditor only supports emitters and listeners"]
       26 GETIMPORT                        R1 K6 [assert]
       28 CALL                             R1 2 0
       29 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["NO_INSTANCE"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R4 R4 K1 ["EMITTER"]
        6 NAMECALL                         R2 R0 K2 ["IsA"]
        8 CALL                             R2 2 1
        9 JUMPIFNOT                        R2 ; [+4]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R1 R2 K1 ["EMITTER"]
       13 JUMP                             ; [+18]
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R4 R4 K3 ["LISTENER"]
       17 NAMECALL                         R2 R0 K2 ["IsA"]
       19 CALL                             R2 2 1
       20 JUMPIFNOT                        R2 ; [+4]
       21 GETUPVAL                         R2 0
       22 GETTABLEKS                       R1 R2 K3 ["LISTENER"]
       24 JUMP                             ; [+7]
       25 LOADB                            R3 0
       26 FASTCALL2K                       ASSERT R3 K4 ; [+4]
       28 LOADK                            R4 K4 ["DirectionalCurveEditor only supports emitters and listeners"]
       29 GETIMPORT                        R2 K6 [assert]
       31 CALL                             R2 2 0
       32 DUPTABLE                         R2 K10 [{"InstanceType", "DistanceCurve", "AngleCurve"}]
       33 SETTABLEKS                       R1 R2 K7 ["InstanceType"]
       35 GETUPVAL                         R3 1
       36 GETTABLEKS                       R3 R3 K11 ["stringifyCurveTable"]
       38 GETUPVAL                         R4 1
       39 GETTABLEKS                       R4 R4 K12 ["getDistanceAttenuation"]
       41 MOVE                             R5 R0
       42 CALL                             R4 1 -1
       43 CALL                             R3 -1 1
       44 SETTABLEKS                       R3 R2 K8 ["DistanceCurve"]
       46 GETUPVAL                         R3 1
       47 GETTABLEKS                       R3 R3 K11 ["stringifyCurveTable"]
       49 GETUPVAL                         R4 1
       50 GETTABLEKS                       R4 R4 K13 ["getAngleAttenuation"]
       52 MOVE                             R5 R0
       53 CALL                             R4 1 -1
       54 CALL                             R3 -1 1
       55 SETTABLEKS                       R3 R2 K9 ["AngleCurve"]
       57 RETURN                           R2 1

PROTO_5:
        0 LENGTH                           R2 R0
        1 LENGTH                           R3 R1
        2 JUMPIFEQ                         R2 R3 ; [+3]
        4 LOADB                            R4 0
        5 RETURN                           R4 1
        6 LOADN                            R6 1
        7 MOVE                             R4 R2
        8 LOADN                            R5 1
        9 FORNPREP                         R4
       10 GETTABLE                         R8 R0 R6
       11 GETTABLE                         R9 R1 R6
       12 SUB                              R7 R8 R9
       13 GETTABLEKS                       R7 R7 K0 ["Magnitude"]
       15 LOADK                            R8 K1 [0.001]
       16 JUMPIFNOTLT                      R8 R7 ; [+3]
       18 LOADB                            R7 0
       19 RETURN                           R7 1
       20 FORNLOOP                         R4
       21 LOADB                            R4 1
       22 RETURN                           R4 1

PROTO_6:
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

PROTO_7:
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

PROTO_8:
        0 GETTABLEKS                       R3 R0 K0 ["X"]
        2 GETTABLEKS                       R4 R1 K0 ["X"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_9:
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
       21 DUPCLOSURE                       R4 K8 [PROTO_8]
       22 CALL                             R2 2 0
       23 RETURN                           R1 1

PROTO_10:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETUPVAL                         R7 0
        7 GETTABLEKS                       R8 R6 K0 ["X"]
        9 LOADN                            R9 3
       10 CALL                             R7 2 1
       11 GETUPVAL                         R8 0
       12 GETTABLEKS                       R9 R6 K1 ["Y"]
       14 LOADN                            R10 3
       15 CALL                             R8 2 1
       16 SETTABLE                         R8 R1 R7
       17 FORGLOOP                         R2 2 ; [-12]
       19 RETURN                           R1 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["stringifyCurveTable"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["keypointsToTable"]
        6 MOVE                             R3 R0
        7 CALL                             R2 1 -1
        8 CALL                             R1 -1 -1
        9 RETURN                           R1 -1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["tableToKeypoints"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["destringifyCurveTable"]
        6 MOVE                             R3 R0
        7 CALL                             R2 1 -1
        8 CALL                             R1 -1 -1
        9 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DirectionalCurveEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Src"]
       18 GETTABLEKS                       R3 R3 K8 ["Util"]
       20 GETTABLEKS                       R3 R3 K9 ["roundDecimal"]
       22 CALL                             R2 1 1
       23 NEWTABLE                         R3 16 0
       25 DUPCLOSURE                       R4 K10 [PROTO_0]
       26 CAPTURE                          VAL R1
       27 SETTABLEKS                       R4 R3 K11 ["setDistanceAttenuation"]
       29 DUPCLOSURE                       R4 K12 [PROTO_1]
       30 CAPTURE                          VAL R1
       31 SETTABLEKS                       R4 R3 K13 ["getDistanceAttenuation"]
       33 DUPCLOSURE                       R4 K14 [PROTO_2]
       34 CAPTURE                          VAL R1
       35 SETTABLEKS                       R4 R3 K15 ["setAngleAttenuation"]
       37 DUPCLOSURE                       R4 K16 [PROTO_3]
       38 CAPTURE                          VAL R1
       39 SETTABLEKS                       R4 R3 K17 ["getAngleAttenuation"]
       41 DUPCLOSURE                       R4 K18 [PROTO_4]
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R3
       44 SETTABLEKS                       R4 R3 K19 ["getInstanceData"]
       46 DUPCLOSURE                       R4 K20 [PROTO_5]
       47 SETTABLEKS                       R4 R3 K21 ["areKeypointsEqual"]
       49 DUPCLOSURE                       R4 K22 [PROTO_6]
       50 SETTABLEKS                       R4 R3 K23 ["stringifyCurveTable"]
       52 DUPCLOSURE                       R4 K24 [PROTO_7]
       53 SETTABLEKS                       R4 R3 K25 ["destringifyCurveTable"]
       55 DUPCLOSURE                       R4 K26 [PROTO_9]
       56 SETTABLEKS                       R4 R3 K27 ["tableToKeypoints"]
       58 DUPCLOSURE                       R4 K28 [PROTO_10]
       59 CAPTURE                          VAL R2
       60 SETTABLEKS                       R4 R3 K29 ["keypointsToTable"]
       62 DUPCLOSURE                       R4 K30 [PROTO_11]
       63 CAPTURE                          VAL R3
       64 SETTABLEKS                       R4 R3 K31 ["keypointsToStrTable"]
       66 DUPCLOSURE                       R4 K32 [PROTO_12]
       67 CAPTURE                          VAL R3
       68 SETTABLEKS                       R4 R3 K33 ["strTableToKeypoints"]
       70 RETURN                           R3 1
