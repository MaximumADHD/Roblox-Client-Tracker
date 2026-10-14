PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["DistanceAttenuationMode"]
        2 GETIMPORT                        R2 K3 [Enum.DistanceAttenuationMode.Custom]
        4 JUMPIFEQ                         R1 R2 ; [+4]
        6 GETTABLEKS                       R1 R0 K4 ["DistanceAttenuationBounds"]
        8 RETURN                           R1 1
        9 NAMECALL                         R1 R0 K5 ["GetDistanceAttenuation"]
       11 CALL                             R1 1 1
       12 LOADK                            R2 K6 [∞]
       13 LOADK                            R3 K7 [-∞]
       14 GETIMPORT                        R4 K9 [pairs]
       16 MOVE                             R5 R1
       17 CALL                             R4 1 3
       18 FORGPREP_NEXT                    R4
       19 FASTCALL2                        MATH_MIN R2 R7 ; [+5]
       21 MOVE                             R10 R2
       22 MOVE                             R11 R7
       23 GETIMPORT                        R9 K12 [math.min]
       25 CALL                             R9 2 1
       26 MOVE                             R2 R9
       27 FASTCALL2                        MATH_MAX R3 R7 ; [+5]
       29 MOVE                             R10 R3
       30 MOVE                             R11 R7
       31 GETIMPORT                        R9 K14 [math.max]
       33 CALL                             R9 2 1
       34 MOVE                             R3 R9
       35 FORGLOOP                         R4 1 ; [-17]
       37 JUMPIFNOTEQKN                    R2 K6 [∞] ; [+31]
       39 GETIMPORT                        R5 K16 [game]
       41 LOADK                            R7 K17 ["AudioEmitterPannerMinDistanceNumerator"]
       42 NAMECALL                         R5 R5 K18 ["GetFastInt"]
       44 CALL                             R5 2 1
       45 LOADN                            R7 1
       46 GETIMPORT                        R8 K16 [game]
       48 LOADK                            R10 K19 ["AudioEmitterPannerMinDistanceDenominator"]
       49 NAMECALL                         R8 R8 K18 ["GetFastInt"]
       51 CALL                             R8 2 -1
       52 FASTCALL                         MATH_MAX ; [+2]
       53 GETIMPORT                        R6 K14 [math.max]
       55 CALL                             R6 -1 1
       56 DIV                              R4 R5 R6
       57 GETIMPORT                        R5 K16 [game]
       59 LOADK                            R7 K20 ["AudioEmitterPannerMaxDistance"]
       60 NAMECALL                         R5 R5 K18 ["GetFastInt"]
       62 CALL                             R5 2 1
       63 GETIMPORT                        R6 K23 [NumberRange.new]
       65 MOVE                             R7 R4
       66 MOVE                             R8 R5
       67 CALL                             R6 2 -1
       68 RETURN                           R6 -1
       69 GETIMPORT                        R4 K23 [NumberRange.new]
       71 MOVE                             R5 R2
       72 MOVE                             R6 R3
       73 CALL                             R4 2 -1
       74 RETURN                           R4 -1

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 LOADK                            R4 K0 ["Input"]
        3 NAMECALL                         R2 R0 K1 ["GetConnectedWires"]
        5 CALL                             R2 2 3
        6 FORGPREP                         R2
        7 GETTABLEKS                       R7 R6 K2 ["SourceInstance"]
        9 JUMPIFNOT                        R7 ; [+8]
       10 GETTABLEKS                       R9 R6 K2 ["SourceInstance"]
       12 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       14 MOVE                             R8 R1
       15 GETIMPORT                        R7 K5 [table.insert]
       17 CALL                             R7 2 0
       18 FORGLOOP                         R2 2 ; [-12]
       20 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R1 R0 K0 ["Active"]
        3 JUMPIFNOT                        R1 ; [+3]
        4 GETTABLEKS                       R2 R0 K1 ["Muted"]
        6 NOT                              R1 R2
        7 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["IsPlaying"]
        3 RETURN                           R0 1

PROTO_4:
        0 LOADK                            R3 K0 ["AudioDeviceInput"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+7]
        5 GETIMPORT                        R1 K3 [pcall]
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          VAL R0
        9 CALL                             R1 1 2
       10 AND                              R3 R1 R2
       11 RETURN                           R3 1
       12 GETIMPORT                        R1 K3 [pcall]
       14 NEWCLOSURE                       R2 P1
       15 CAPTURE                          VAL R0
       16 CALL                             R1 1 2
       17 AND                              R3 R1 R2
       18 RETURN                           R3 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Input"]
        2 NAMECALL                         R0 R0 K1 ["GetConnectedWires"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_6:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 2
        5 JUMPIF                           R1 ; [+2]
        6 LOADB                            R3 0
        7 RETURN                           R3 1
        8 MOVE                             R3 R2
        9 LOADNIL                          R4
       10 LOADNIL                          R5
       11 FORGPREP                         R3
       12 GETTABLEKS                       R8 R7 K2 ["SourceInstance"]
       14 JUMPIFNOT                        R8 ; [+18]
       15 GETUPVAL                         R10 0
       16 GETTABLE                         R9 R10 R8
       17 JUMPIF                           R9 ; [+15]
       18 GETUPVAL                         R9 0
       19 LOADB                            R10 1
       20 SETTABLE                         R10 R9 R8
       21 GETUPVAL                         R9 1
       22 MOVE                             R10 R8
       23 CALL                             R9 1 1
       24 JUMPIFNOT                        R9 ; [+2]
       25 LOADB                            R9 1
       26 RETURN                           R9 1
       27 GETUPVAL                         R9 2
       28 MOVE                             R10 R8
       29 CALL                             R9 1 1
       30 JUMPIFNOT                        R9 ; [+2]
       31 LOADB                            R9 1
       32 RETURN                           R9 1
       33 FORGLOOP                         R3 2 ; [-22]
       35 LOADB                            R3 0
       36 RETURN                           R3 1

PROTO_7:
        0 LOADK                            R3 K0 ["Sound"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+3]
        5 GETTABLEKS                       R1 R0 K2 ["IsPlaying"]
        7 RETURN                           R1 1
        8 LOADK                            R3 K3 ["AudioEmitter"]
        9 NAMECALL                         R1 R0 K1 ["IsA"]
       11 CALL                             R1 2 1
       12 JUMPIF                           R1 ; [+2]
       13 LOADB                            R1 0
       14 RETURN                           R1 1
       15 NEWTABLE                         R1 0 0
       17 DUPCLOSURE                       R2 K4 [PROTO_4]
       18 NEWCLOSURE                       R3 P1
       19 CAPTURE                          VAL R1
       20 CAPTURE                          VAL R2
       21 CAPTURE                          VAL R3
       22 MOVE                             R4 R3
       23 MOVE                             R5 R0
       24 CALL                             R4 1 1
       25 RETURN                           R4 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+17]
        2 LOADK                            R3 K0 ["AudioEmitter"]
        3 NAMECALL                         R1 R0 K1 ["IsA"]
        5 CALL                             R1 2 1
        6 JUMPIFNOT                        R1 ; [+12]
        7 GETTABLEKS                       R1 R0 K2 ["PositionType"]
        9 GETIMPORT                        R2 K6 [Enum.EmitterPositionType.Instance]
       11 JUMPIFNOTEQ                      R1 R2 ; [+7]
       13 GETTABLEKS                       R1 R0 K7 ["PositionInstance"]
       15 JUMPIFNOT                        R1 ; [+3]
       16 GETTABLEKS                       R1 R0 K7 ["PositionInstance"]
       18 RETURN                           R1 1
       19 GETTABLEKS                       R1 R0 K8 ["Parent"]
       21 JUMPIF                           R1 ; [+2]
       22 LOADNIL                          R2
       23 RETURN                           R2 1
       24 LOADK                            R4 K0 ["AudioEmitter"]
       25 NAMECALL                         R2 R0 K1 ["IsA"]
       27 CALL                             R2 2 1
       28 JUMPIFNOT                        R2 ; [+17]
       29 LOADK                            R4 K9 ["Attachment"]
       30 NAMECALL                         R2 R1 K1 ["IsA"]
       32 CALL                             R2 2 1
       33 JUMPIF                           R2 ; [+10]
       34 LOADK                            R4 K10 ["PVInstance"]
       35 NAMECALL                         R2 R1 K1 ["IsA"]
       37 CALL                             R2 2 1
       38 JUMPIF                           R2 ; [+5]
       39 LOADK                            R4 K11 ["Camera"]
       40 NAMECALL                         R2 R1 K1 ["IsA"]
       42 CALL                             R2 2 1
       43 JUMPIFNOT                        R2 ; [+18]
       44 RETURN                           R1 1
       45 JUMP                             ; [+16]
       46 LOADK                            R4 K12 ["Sound"]
       47 NAMECALL                         R2 R0 K1 ["IsA"]
       49 CALL                             R2 2 1
       50 JUMPIFNOT                        R2 ; [+11]
       51 LOADK                            R4 K13 ["BasePart"]
       52 NAMECALL                         R2 R1 K1 ["IsA"]
       54 CALL                             R2 2 1
       55 JUMPIF                           R2 ; [+5]
       56 LOADK                            R4 K9 ["Attachment"]
       57 NAMECALL                         R2 R1 K1 ["IsA"]
       59 CALL                             R2 2 1
       60 JUMPIFNOT                        R2 ; [+1]
       61 RETURN                           R1 1
       62 LOADNIL                          R2
       63 RETURN                           R2 1

PROTO_9:
        0 LOADNIL                          R1
        1 LOADK                            R4 K0 ["AudioEmitter"]
        2 NAMECALL                         R2 R0 K1 ["IsA"]
        4 CALL                             R2 2 1
        5 JUMPIFNOT                        R2 ; [+5]
        6 NAMECALL                         R2 R0 K2 ["GetWorldCFrame"]
        8 CALL                             R2 1 1
        9 MOVE                             R1 R2
       10 JUMP                             ; [+9]
       11 LOADK                            R4 K3 ["Sound"]
       12 NAMECALL                         R2 R0 K1 ["IsA"]
       14 CALL                             R2 2 1
       15 JUMPIFNOT                        R2 ; [+4]
       16 NAMECALL                         R2 R0 K2 ["GetWorldCFrame"]
       18 CALL                             R2 1 1
       19 MOVE                             R1 R2
       20 JUMPIFNOT                        R1 ; [+3]
       21 GETTABLEKS                       R2 R1 K4 ["Position"]
       23 RETURN                           R2 1
       24 LOADNIL                          R2
       25 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 GETIMPORT                        R1 K1 [game]
        5 LOADK                            R3 K2 ["EmitterListenerPositionTypeEnabled"]
        6 NAMECALL                         R1 R1 K3 ["GetFastFlag"]
        8 CALL                             R1 2 1
        9 DUPCLOSURE                       R2 K4 [PROTO_0]
       10 SETTABLEKS                       R2 R0 K5 ["getDistanceAttenuationRange"]
       12 DUPCLOSURE                       R2 K6 [PROTO_1]
       13 SETTABLEKS                       R2 R0 K7 ["getInputs"]
       15 DUPCLOSURE                       R2 K8 [PROTO_7]
       16 SETTABLEKS                       R2 R0 K9 ["isPlaying"]
       18 DUPCLOSURE                       R2 K10 [PROTO_8]
       19 CAPTURE                          VAL R1
       20 SETTABLEKS                       R2 R0 K11 ["getEmissionSource"]
       22 DUPCLOSURE                       R2 K12 [PROTO_9]
       23 SETTABLEKS                       R2 R0 K13 ["getEmissionPosition"]
       25 RETURN                           R0 1
