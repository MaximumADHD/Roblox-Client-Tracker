PROTO_0:
        0 JUMPIFEQKS                       R0 K0 ["DistanceAttenuation"] ; [+2]
        2 RETURN                           R0 0
        3 GETUPVAL                         R1 0
        4 JUMPIF                           R1 ; [+1]
        5 RETURN                           R0 0
        6 GETUPVAL                         R2 0
        7 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        9 LOADK                            R3 K1 ["currentCurve was nil"]
       10 GETIMPORT                        R1 K3 [assert]
       12 CALL                             R1 2 0
       13 GETUPVAL                         R1 1
       14 GETTABLEKS                       R1 R1 K4 ["getDistanceAttenuation"]
       16 GETUPVAL                         R2 2
       17 CALL                             R1 1 1
       18 GETUPVAL                         R2 1
       19 GETTABLEKS                       R2 R2 K5 ["areCurvesEqual"]
       21 GETUPVAL                         R3 0
       22 MOVE                             R4 R1
       23 CALL                             R2 2 1
       24 JUMPIFNOT                        R2 ; [+1]
       25 RETURN                           R0 0
       26 SETUPVAL                         R1 0
       27 GETIMPORT                        R2 K7 [plugin]
       29 LOADK                            R4 K8 ["OnInstanceChanged"]
       30 GETUPVAL                         R5 1
       31 GETTABLEKS                       R5 R5 K9 ["stringifyCurveTable"]
       33 MOVE                             R6 R1
       34 CALL                             R5 1 -1
       35 NAMECALL                         R2 R2 K10 ["Invoke"]
       37 CALL                             R2 -1 0
       38 RETURN                           R0 0

PROTO_1:
        0 LENGTH                           R3 R0
        1 LOADN                            R1 1
        2 LOADN                            R2 -1
        3 FORNPREP                         R1
        4 GETTABLE                         R4 R0 R3
        5 JUMPIFNOT                        R4 ; [+10]
        6 LOADK                            R7 K0 ["AudioEmitter"]
        7 NAMECALL                         R5 R4 K1 ["IsA"]
        9 CALL                             R5 2 1
       10 JUMPIF                           R5 ; [+10]
       11 LOADK                            R7 K2 ["AudioListener"]
       12 NAMECALL                         R5 R4 K1 ["IsA"]
       14 CALL                             R5 2 1
       15 JUMPIF                           R5 ; [+5]
       16 GETIMPORT                        R5 K5 [table.remove]
       18 MOVE                             R6 R0
       19 MOVE                             R7 R3
       20 CALL                             R5 2 0
       21 FORNLOOP                         R1
       22 LENGTH                           R1 R0
       23 JUMPIFNOTEQKN                    R1 K6 [0] ; [+2]
       25 RETURN                           R0 0
       26 SETUPVAL                         R0 0
       27 GETTABLEN                        R1 R0 1
       28 LOADK                            R3 K7 ["%* \"%*\""]
       29 GETTABLEKS                       R5 R1 K8 ["ClassName"]
       31 GETTABLEKS                       R6 R1 K9 ["Name"]
       33 NAMECALL                         R3 R3 K10 ["format"]
       35 CALL                             R3 3 1
       36 MOVE                             R2 R3
       37 LENGTH                           R3 R0
       38 LOADN                            R4 1
       39 JUMPIFNOTLT                      R4 R3 ; [+9]
       41 LOADK                            R3 K11 ["%* (%* items)"]
       42 GETTABLEKS                       R5 R1 K8 ["ClassName"]
       44 LENGTH                           R6 R0
       45 NAMECALL                         R3 R3 K10 ["format"]
       47 CALL                             R3 3 1
       48 MOVE                             R2 R3
       49 GETUPVAL                         R3 2
       50 GETTABLEKS                       R3 R3 K12 ["getDistanceAttenuation"]
       52 MOVE                             R4 R1
       53 CALL                             R3 1 1
       54 SETUPVAL                         R3 1
       55 GETUPVAL                         R4 1
       56 FASTCALL2K                       ASSERT R4 K13 ; [+4]
       58 LOADK                            R5 K13 ["currentCurve was nil"]
       59 GETIMPORT                        R3 K15 [assert]
       61 CALL                             R3 2 0
       62 GETIMPORT                        R3 K17 [plugin]
       64 LOADK                            R5 K18 ["OnOpen"]
       65 GETUPVAL                         R6 2
       66 GETTABLEKS                       R6 R6 K19 ["stringifyCurveTable"]
       68 GETUPVAL                         R7 1
       69 CALL                             R6 1 1
       70 MOVE                             R7 R2
       71 NAMECALL                         R3 R3 K20 ["Invoke"]
       73 CALL                             R3 4 0
       74 GETUPVAL                         R3 3
       75 JUMPIFNOT                        R3 ; [+4]
       76 GETUPVAL                         R3 3
       77 NAMECALL                         R3 R3 K21 ["Disconnect"]
       79 CALL                             R3 1 0
       80 GETTABLEKS                       R3 R1 K22 ["Changed"]
       82 NEWCLOSURE                       R5 P0
       83 CAPTURE                          UPVAL U1
       84 CAPTURE                          UPVAL U2
       85 CAPTURE                          VAL R1
       86 NAMECALL                         R3 R3 K23 ["Connect"]
       88 CALL                             R3 2 1
       89 SETUPVAL                         R3 3
       90 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["destringifyCurveTable"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 SETUPVAL                         R1 1
        6 GETUPVAL                         R2 2
        7 LOADNIL                          R3
        8 LOADNIL                          R4
        9 FORGPREP                         R2
       10 JUMPIFNOT                        R6 ; [+16]
       11 LOADK                            R9 K1 ["AudioEmitter"]
       12 NAMECALL                         R7 R6 K2 ["IsA"]
       14 CALL                             R7 2 1
       15 JUMPIF                           R7 ; [+5]
       16 LOADK                            R9 K3 ["AudioListener"]
       17 NAMECALL                         R7 R6 K2 ["IsA"]
       19 CALL                             R7 2 1
       20 JUMPIFNOT                        R7 ; [+6]
       21 GETUPVAL                         R7 0
       22 GETTABLEKS                       R7 R7 K4 ["setDistanceAttenuation"]
       24 MOVE                             R8 R6
       25 MOVE                             R9 R1
       26 CALL                             R7 2 0
       27 FORGLOOP                         R2 2 ; [-18]
       29 RETURN                           R0 0

PROTO_3:
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
        7 LOADK                            R2 K4 ["AttenuationCurveEditor"]
        8 NAMECALL                         R0 R0 K5 ["FindFirstAncestor"]
       10 CALL                             R0 2 1
       11 GETIMPORT                        R1 K7 [require]
       13 GETTABLEKS                       R2 R0 K8 ["Packages"]
       15 GETTABLEKS                       R2 R2 K9 ["TestLoader"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R2 R1 K10 ["launch"]
       20 LOADK                            R3 K4 ["AttenuationCurveEditor"]
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
       57 LOADNIL                          R7
       58 NEWCLOSURE                       R8 P0
       59 CAPTURE                          REF R5
       60 CAPTURE                          REF R7
       61 CAPTURE                          VAL R4
       62 CAPTURE                          REF R6
       63 GETIMPORT                        R9 K1 [plugin]
       65 LOADK                            R11 K19 ["OnEdit"]
       66 NEWCLOSURE                       R12 P1
       67 CAPTURE                          VAL R4
       68 CAPTURE                          REF R7
       69 CAPTURE                          REF R5
       70 NAMECALL                         R9 R9 K20 ["OnInvoke"]
       72 CALL                             R9 3 0
       73 GETIMPORT                        R9 K1 [plugin]
       75 LOADK                            R11 K21 ["OnStopEditing"]
       76 NEWCLOSURE                       R12 P2
       77 CAPTURE                          REF R5
       78 CAPTURE                          REF R6
       79 CAPTURE                          REF R7
       80 NAMECALL                         R9 R9 K20 ["OnInvoke"]
       82 CALL                             R9 3 0
       83 LOADNIL                          R9
       84 GETIMPORT                        R10 K23 [game]
       86 LOADK                            R12 K24 ["SoundService"]
       87 NAMECALL                         R10 R10 K25 ["GetService"]
       89 CALL                             R10 2 1
       90 GETTABLEKS                       R11 R10 K26 ["OpenAttenuationCurveEditorSignal"]
       92 MOVE                             R13 R8
       93 NAMECALL                         R11 R11 K27 ["Connect"]
       95 CALL                             R11 2 1
       96 MOVE                             R9 R11
       97 GETTABLEKS                       R11 R2 K28 ["get"]
       99 CALL                             R11 0 1
      100 GETTABLEKS                       R12 R2 K29 ["asset"]
      102 JUMPIFEQ                         R11 R12 ; [+3]
      104 CLOSEUPVALS                      R5
      105 RETURN                           R0 0
      106 GETIMPORT                        R11 K7 [require]
      108 GETTABLEKS                       R12 R0 K13 ["Bin"]
      110 GETTABLEKS                       R12 R12 K14 ["Common"]
      112 GETTABLEKS                       R12 R12 K30 ["setup"]
      114 CALL                             R11 1 1
      115 GETIMPORT                        R12 K7 [require]
      117 GETTABLEKS                       R13 R0 K13 ["Bin"]
      119 GETTABLEKS                       R13 R13 K14 ["Common"]
      121 GETTABLEKS                       R13 R13 K31 ["setupMain"]
      123 CALL                             R12 1 1
      124 MOVE                             R13 R11
      125 GETIMPORT                        R14 K1 [plugin]
      127 MOVE                             R15 R12
      128 CALL                             R13 2 0
      129 CLOSEUPVALS                      R5
      130 RETURN                           R0 0
