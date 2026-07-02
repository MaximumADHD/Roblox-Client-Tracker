PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R2 0
        4 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        6 LOADK                            R3 K0 ["currentInstanceData was nil"]
        7 GETIMPORT                        R1 K2 [assert]
        9 CALL                             R1 2 0
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R1 R1 K3 ["DISTANCE"]
       13 JUMPIFEQ                         R0 R1 ; [+7]
       15 GETUPVAL                         R1 1
       16 GETTABLEKS                       R1 R1 K4 ["ANGLE"]
       18 JUMPIFEQ                         R0 R1 ; [+2]
       20 RETURN                           R0 0
       21 GETUPVAL                         R1 2
       22 GETTABLEKS                       R1 R1 K5 ["getInstanceData"]
       24 GETUPVAL                         R2 3
       25 CALL                             R1 1 1
       26 GETUPVAL                         R3 1
       27 GETTABLEKS                       R3 R3 K3 ["DISTANCE"]
       29 JUMPIFNOTEQ                      R0 R3 ; [+4]
       31 GETTABLEKS                       R2 R1 K6 ["DistanceCurve"]
       33 JUMP                             ; [+2]
       34 GETTABLEKS                       R2 R1 K7 ["AngleCurve"]
       36 GETUPVAL                         R4 1
       37 GETTABLEKS                       R4 R4 K3 ["DISTANCE"]
       39 JUMPIFNOTEQ                      R0 R4 ; [+5]
       41 GETUPVAL                         R3 0
       42 GETTABLEKS                       R3 R3 K6 ["DistanceCurve"]
       44 JUMP                             ; [+3]
       45 GETUPVAL                         R3 0
       46 GETTABLEKS                       R3 R3 K7 ["AngleCurve"]
       48 GETUPVAL                         R4 2
       49 GETTABLEKS                       R4 R4 K8 ["areKeypointsEqual"]
       51 GETUPVAL                         R5 2
       52 GETTABLEKS                       R5 R5 K9 ["strTableToKeypoints"]
       54 MOVE                             R6 R2
       55 CALL                             R5 1 1
       56 GETUPVAL                         R6 2
       57 GETTABLEKS                       R6 R6 K9 ["strTableToKeypoints"]
       59 MOVE                             R7 R3
       60 CALL                             R6 1 -1
       61 CALL                             R4 -1 1
       62 JUMPIFNOT                        R4 ; [+1]
       63 RETURN                           R0 0
       64 SETUPVAL                         R1 0
       65 GETIMPORT                        R4 K11 [plugin]
       67 LOADK                            R6 K12 ["OnInstanceChanged"]
       68 MOVE                             R7 R1
       69 GETUPVAL                         R8 4
       70 GETUPVAL                         R9 5
       71 NAMECALL                         R4 R4 K13 ["Invoke"]
       73 CALL                             R4 5 0
       74 RETURN                           R0 0

PROTO_1:
        0 NEWTABLE                         R2 0 0
        2 SETUPVAL                         R2 0
        3 LENGTH                           R4 R0
        4 LOADN                            R2 1
        5 LOADN                            R3 -1
        6 FORNPREP                         R2
        7 GETTABLE                         R5 R0 R4
        8 JUMPIFNOT                        R5 ; [+21]
        9 GETUPVAL                         R8 1
       10 GETTABLEKS                       R8 R8 K0 ["EMITTER"]
       12 NAMECALL                         R6 R5 K1 ["IsA"]
       14 CALL                             R6 2 1
       15 JUMPIF                           R6 ; [+7]
       16 GETUPVAL                         R8 1
       17 GETTABLEKS                       R8 R8 K2 ["LISTENER"]
       19 NAMECALL                         R6 R5 K1 ["IsA"]
       21 CALL                             R6 2 1
       22 JUMPIFNOT                        R6 ; [+7]
       23 GETUPVAL                         R7 0
       24 FASTCALL2                        TABLE_INSERT R7 R5 ; [+4]
       26 MOVE                             R8 R5
       27 GETIMPORT                        R6 K5 [table.insert]
       29 CALL                             R6 2 0
       30 FORNLOOP                         R2
       31 GETUPVAL                         R3 0
       32 LENGTH                           R2 R3
       33 JUMPIFNOTEQKN                    R2 K6 [0] ; [+2]
       35 RETURN                           R0 0
       36 GETUPVAL                         R3 0
       37 GETTABLEN                        R2 R3 1
       38 LOADK                            R4 K7 ["%* \"%*\""]
       39 GETTABLEKS                       R6 R2 K8 ["ClassName"]
       41 GETTABLEKS                       R7 R2 K9 ["Name"]
       43 NAMECALL                         R4 R4 K10 ["format"]
       45 CALL                             R4 3 1
       46 MOVE                             R3 R4
       47 GETUPVAL                         R5 0
       48 LENGTH                           R4 R5
       49 LOADN                            R5 1
       50 JUMPIFNOTLT                      R5 R4 ; [+9]
       52 LOADK                            R4 K11 ["%* (%* items)"]
       53 GETTABLEKS                       R6 R2 K8 ["ClassName"]
       55 LENGTH                           R7 R0
       56 NAMECALL                         R4 R4 K10 ["format"]
       58 CALL                             R4 3 1
       59 MOVE                             R3 R4
       60 GETUPVAL                         R4 3
       61 GETTABLEKS                       R4 R4 K12 ["getInstanceData"]
       63 MOVE                             R5 R2
       64 CALL                             R4 1 1
       65 SETUPVAL                         R4 2
       66 GETIMPORT                        R4 K14 [plugin]
       68 LOADK                            R6 K15 ["OnOpen"]
       69 GETUPVAL                         R7 2
       70 MOVE                             R8 R1
       71 GETUPVAL                         R9 4
       72 MOVE                             R10 R3
       73 NAMECALL                         R4 R4 K16 ["Invoke"]
       75 CALL                             R4 6 0
       76 GETUPVAL                         R4 5
       77 JUMPIFNOT                        R4 ; [+4]
       78 GETUPVAL                         R4 5
       79 NAMECALL                         R4 R4 K17 ["Disconnect"]
       81 CALL                             R4 1 0
       82 GETUPVAL                         R4 4
       83 GETTABLEKS                       R5 R2 K18 ["Changed"]
       85 NEWCLOSURE                       R7 P0
       86 CAPTURE                          UPVAL U2
       87 CAPTURE                          UPVAL U1
       88 CAPTURE                          UPVAL U3
       89 CAPTURE                          VAL R2
       90 CAPTURE                          VAL R4
       91 CAPTURE                          REF R3
       92 NAMECALL                         R5 R5 K19 ["Connect"]
       94 CALL                             R5 2 1
       95 SETUPVAL                         R5 5
       96 GETUPVAL                         R5 4
       97 ADDK                             R5 R5 K20 [1]
       98 SETUPVAL                         R5 4
       99 CLOSEUPVALS                      R3
      100 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 LOADK                            R3 K0 ["AngleAttenuation"]
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+17]
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["DISTANCE"]
        5 JUMPIFNOTEQ                      R1 R2 ; [+5]
        7 GETUPVAL                         R2 0
        8 SETTABLEKS                       R0 R2 K1 ["DistanceCurve"]
       10 JUMP                             ; [+8]
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R2 R2 K2 ["ANGLE"]
       14 JUMPIFNOTEQ                      R1 R2 ; [+4]
       16 GETUPVAL                         R2 0
       17 SETTABLEKS                       R0 R2 K3 ["AngleCurve"]
       19 GETUPVAL                         R2 2
       20 GETTABLEKS                       R2 R2 K4 ["destringifyCurveTable"]
       22 MOVE                             R3 R0
       23 CALL                             R2 1 1
       24 GETUPVAL                         R3 3
       25 LOADNIL                          R4
       26 LOADNIL                          R5
       27 FORGPREP                         R3
       28 GETUPVAL                         R8 1
       29 GETTABLEKS                       R8 R8 K0 ["DISTANCE"]
       31 JUMPIFNOTEQ                      R1 R8 ; [+8]
       33 GETUPVAL                         R8 2
       34 GETTABLEKS                       R8 R8 K5 ["setDistanceAttenuation"]
       36 MOVE                             R9 R7
       37 MOVE                             R10 R2
       38 CALL                             R8 2 0
       39 JUMP                             ; [+11]
       40 GETUPVAL                         R8 1
       41 GETTABLEKS                       R8 R8 K2 ["ANGLE"]
       43 JUMPIFNOTEQ                      R1 R8 ; [+7]
       45 GETUPVAL                         R8 2
       46 GETTABLEKS                       R8 R8 K6 ["setAngleAttenuation"]
       48 MOVE                             R9 R7
       49 MOVE                             R10 R2
       50 CALL                             R8 2 0
       51 FORGLOOP                         R3 2 ; [-24]
       53 RETURN                           R0 0

PROTO_4:
        0 NEWTABLE                         R0 0 0
        2 SETUPVAL                         R0 0
        3 GETUPVAL                         R0 1
        4 JUMPIFNOT                        R0 ; [+6]
        5 GETUPVAL                         R0 1
        6 NAMECALL                         R0 R0 K0 ["Disconnect"]
        8 CALL                             R0 1 0
        9 LOADNIL                          R0
       10 SETUPVAL                         R0 1
       11 LOADNIL                          R0
       12 SETUPVAL                         R0 2
       13 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [plugin]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETIMPORT                        R0 K3 [script]
        7 LOADK                            R2 K4 ["DirectionalCurveEditor"]
        8 NAMECALL                         R0 R0 K5 ["FindFirstAncestor"]
       10 CALL                             R0 2 1
       11 GETIMPORT                        R1 K7 [require]
       13 GETTABLEKS                       R2 R0 K8 ["Packages"]
       15 GETTABLEKS                       R2 R2 K9 ["TestLoader"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R2 R1 K10 ["launch"]
       20 LOADK                            R3 K4 ["DirectionalCurveEditor"]
       21 GETTABLEKS                       R4 R0 K11 ["Src"]
       23 CALL                             R2 2 0
       24 GETTABLEKS                       R2 R1 K12 ["isCli"]
       26 CALL                             R2 0 1
       27 JUMPIFNOT                        R2 ; [+1]
       28 RETURN                           R0 0
       29 GETIMPORT                        R2 K7 [require]
       31 GETTABLEKS                       R3 R0 K13 ["Bin"]
       33 GETTABLEKS                       R3 R3 K14 ["Common"]
       35 GETTABLEKS                       R3 R3 K15 ["pluginType"]
       37 CALL                             R2 1 1
       38 GETIMPORT                        R3 K7 [require]
       40 GETTABLEKS                       R4 R0 K11 ["Src"]
       42 GETTABLEKS                       R4 R4 K16 ["Types"]
       44 CALL                             R3 1 1
       45 GETIMPORT                        R4 K7 [require]
       47 GETTABLEKS                       R5 R0 K11 ["Src"]
       49 GETTABLEKS                       R5 R5 K17 ["Util"]
       51 GETTABLEKS                       R5 R5 K18 ["AttenuationUtil"]
       53 CALL                             R4 1 1
       54 NEWTABLE                         R5 0 0
       56 LOADNIL                          R6
       57 LOADN                            R7 0
       58 LOADNIL                          R8
       59 NEWCLOSURE                       R9 P0
       60 CAPTURE                          REF R5
       61 CAPTURE                          VAL R3
       62 CAPTURE                          REF R8
       63 CAPTURE                          VAL R4
       64 CAPTURE                          REF R7
       65 CAPTURE                          REF R6
       66 DUPCLOSURE                       R10 K19 [PROTO_2]
       67 CAPTURE                          VAL R9
       68 GETIMPORT                        R11 K1 [plugin]
       70 LOADK                            R13 K20 ["OnEdit"]
       71 NEWCLOSURE                       R14 P2
       72 CAPTURE                          REF R8
       73 CAPTURE                          VAL R3
       74 CAPTURE                          VAL R4
       75 CAPTURE                          REF R5
       76 NAMECALL                         R11 R11 K21 ["OnInvoke"]
       78 CALL                             R11 3 0
       79 GETIMPORT                        R11 K1 [plugin]
       81 LOADK                            R13 K22 ["OnStopEditing"]
       82 NEWCLOSURE                       R14 P3
       83 CAPTURE                          REF R5
       84 CAPTURE                          REF R6
       85 CAPTURE                          REF R8
       86 NAMECALL                         R11 R11 K21 ["OnInvoke"]
       88 CALL                             R11 3 0
       89 LOADNIL                          R11
       90 GETIMPORT                        R12 K24 [game]
       92 LOADK                            R14 K25 ["SoundService"]
       93 NAMECALL                         R12 R12 K26 ["GetService"]
       95 CALL                             R12 2 1
       96 GETTABLEKS                       R13 R12 K27 ["OpenDirectionalCurveEditorSignal"]
       98 MOVE                             R15 R10
       99 NAMECALL                         R13 R13 K28 ["Connect"]
      101 CALL                             R13 2 1
      102 MOVE                             R11 R13
      103 GETTABLEKS                       R13 R2 K29 ["get"]
      105 CALL                             R13 0 1
      106 GETTABLEKS                       R14 R2 K30 ["asset"]
      108 JUMPIFEQ                         R13 R14 ; [+3]
      110 CLOSEUPVALS                      R5
      111 RETURN                           R0 0
      112 GETIMPORT                        R13 K7 [require]
      114 GETTABLEKS                       R14 R0 K13 ["Bin"]
      116 GETTABLEKS                       R14 R14 K14 ["Common"]
      118 GETTABLEKS                       R14 R14 K31 ["setup"]
      120 CALL                             R13 1 1
      121 GETIMPORT                        R14 K7 [require]
      123 GETTABLEKS                       R15 R0 K13 ["Bin"]
      125 GETTABLEKS                       R15 R15 K14 ["Common"]
      127 GETTABLEKS                       R15 R15 K32 ["setupMain"]
      129 CALL                             R14 1 1
      130 MOVE                             R15 R13
      131 GETIMPORT                        R16 K1 [plugin]
      133 MOVE                             R17 R14
      134 CALL                             R15 2 0
      135 CLOSEUPVALS                      R5
      136 RETURN                           R0 0
