PROTO_0:
        0 GETTABLEKS                       R3 R0 K1 ["X"]
        2 MULK                             R2 R3 K0 [4]
        3 GETTABLEKS                       R4 R0 K2 ["Y"]
        5 MULK                             R3 R4 K0 [4]
        6 GETTABLEKS                       R5 R0 K3 ["Z"]
        8 MULK                             R4 R5 K0 [4]
        9 FASTCALL                         VECTOR ; [+2]
       10 GETIMPORT                        R1 K6 [Vector3.new]
       12 CALL                             R1 3 1
       13 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Payload"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["SelectionSettings"]
        6 GETTABLE                         R0 R1 R2
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["Payload"]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K2 ["HeightmapSettings"]
       13 GETTABLE                         R1 R2 R3
       14 GETUPVAL                         R3 2
       15 GETTABLEKS                       R3 R3 K3 ["Transform"]
       17 GETTABLE                         R2 R0 R3
       18 GETUPVAL                         R4 2
       19 GETTABLEKS                       R4 R4 K4 ["Size"]
       21 GETTABLE                         R3 R0 R4
       22 GETUPVAL                         R4 3
       23 MOVE                             R5 R2
       24 MOVE                             R6 R3
       25 LOADB                            R7 1
       26 CALL                             R4 3 1
       27 GETTABLEKS                       R6 R4 K5 ["Min"]
       29 GETTABLEKS                       R9 R6 K7 ["X"]
       31 MULK                             R8 R9 K6 [4]
       32 GETTABLEKS                       R10 R6 K8 ["Y"]
       34 MULK                             R9 R10 K6 [4]
       35 GETTABLEKS                       R11 R6 K9 ["Z"]
       37 MULK                             R10 R11 K6 [4]
       38 FASTCALL                         VECTOR ; [+2]
       39 GETIMPORT                        R7 K12 [Vector3.new]
       41 CALL                             R7 3 1
       42 MOVE                             R5 R7
       43 GETTABLEKS                       R7 R4 K13 ["Max"]
       45 GETTABLEKS                       R10 R7 K7 ["X"]
       47 MULK                             R9 R10 K6 [4]
       48 GETTABLEKS                       R11 R7 K8 ["Y"]
       50 MULK                             R10 R11 K6 [4]
       51 GETTABLEKS                       R12 R7 K9 ["Z"]
       53 MULK                             R11 R12 K6 [4]
       54 FASTCALL                         VECTOR ; [+2]
       55 GETIMPORT                        R8 K12 [Vector3.new]
       57 CALL                             R8 3 1
       58 MOVE                             R6 R8
       59 SUB                              R7 R6 R5
       60 GETTABLEKS                       R10 R7 K7 ["X"]
       62 GETTABLEKS                       R11 R7 K8 ["Y"]
       64 MUL                              R9 R10 R11
       65 GETTABLEKS                       R10 R7 K9 ["Z"]
       67 MUL                              R8 R9 R10
       68 GETUPVAL                         R9 4
       69 JUMPIFNOTLT                      R9 R8 ; [+3]
       71 LOADK                            R9 K14 [{4, 4, 4}]
       72 SUB                              R6 R6 R9
       73 GETIMPORT                        R9 K16 [Region3.new]
       75 MOVE                             R10 R5
       76 MOVE                             R11 R6
       77 CALL                             R9 2 1
       78 GETUPVAL                         R11 5
       79 GETTABLEKS                       R11 R11 K17 ["Heightmap"]
       81 GETTABLE                         R10 R1 R11
       82 GETTABLEKS                       R10 R10 K18 ["Image"]
       84 JUMPIF                           R10 ; [+7]
       85 GETUPVAL                         R10 0
       86 GETTABLEKS                       R10 R10 K19 ["State"]
       88 LOADN                            R11 1
       89 SETTABLEKS                       R11 R10 K20 ["Progress"]
       91 RETURN                           R0 0
       92 GETUPVAL                         R11 5
       93 GETTABLEKS                       R11 R11 K17 ["Heightmap"]
       95 GETTABLE                         R10 R1 R11
       96 GETTABLEKS                       R10 R10 K18 ["Image"]
       98 GETTABLEKS                       R10 R10 K21 ["File"]
      100 NAMECALL                         R10 R10 K22 ["GetTemporaryId"]
      102 CALL                             R10 1 1
      103 GETUPVAL                         R12 5
      104 GETTABLEKS                       R12 R12 K23 ["Colormap"]
      106 GETTABLE                         R11 R1 R12
      107 GETTABLEKS                       R11 R11 K18 ["Image"]
      109 JUMPIFNOT                        R11 ; [+6]
      110 GETTABLEKS                       R12 R11 K21 ["File"]
      112 NAMECALL                         R12 R12 K22 ["GetTemporaryId"]
      114 CALL                             R12 1 1
      115 JUMP                             ; [+1]
      116 LOADK                            R12 K24 [""]
      117 GETUPVAL                         R13 6
      118 MOVE                             R15 R9
      119 MOVE                             R16 R10
      120 MOVE                             R17 R12
      121 GETUPVAL                         R19 5
      122 GETTABLEKS                       R19 R19 K25 ["DefaultMaterial"]
      124 GETTABLE                         R18 R1 R19
      125 NAMECALL                         R13 R13 K26 ["ImportHeightmap"]
      127 CALL                             R13 5 0
      128 GETUPVAL                         R13 0
      129 GETTABLEKS                       R13 R13 K19 ["State"]
      131 LOADN                            R14 1
      132 SETTABLEKS                       R14 R13 K20 ["Progress"]
      134 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R1
        2 NAMECALL                         R2 R2 K0 ["setDescription"]
        4 CALL                             R2 2 0
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["State"]
        8 SETTABLEKS                       R0 R2 K2 ["Progress"]
       10 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U5
        8 DUPTABLE                         R3 K3 [{"Progress", "ProgressUpdateConnection", "StartTime"}]
        9 LOADN                            R4 0
       10 SETTABLEKS                       R4 R3 K0 ["Progress"]
       12 GETUPVAL                         R4 5
       13 GETTABLEKS                       R4 R4 K4 ["ProgressUpdate"]
       15 NEWCLOSURE                       R6 P1
       16 CAPTURE                          VAL R1
       17 CAPTURE                          VAL R0
       18 NAMECALL                         R4 R4 K5 ["Connect"]
       20 CALL                             R4 2 1
       21 SETTABLEKS                       R4 R3 K1 ["ProgressUpdateConnection"]
       23 GETIMPORT                        R4 K8 [os.clock]
       25 CALL                             R4 0 1
       26 SETTABLEKS                       R4 R3 K2 ["StartTime"]
       28 SETTABLEKS                       R3 R0 K9 ["State"]
       30 GETTABLEKS                       R3 R0 K10 ["Synchronous"]
       32 JUMPIFNOT                        R3 ; [+3]
       33 MOVE                             R3 R2
       34 CALL                             R3 0 0
       35 RETURN                           R0 0
       36 GETIMPORT                        R3 K13 [task.spawn]
       38 MOVE                             R4 R2
       39 CALL                             R3 1 0
       40 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["State"]
        2 GETTABLEKS                       R3 R2 K1 ["Progress"]
        4 JUMPIFNOT                        R3 ; [+7]
        5 GETTABLEKS                       R3 R2 K1 ["Progress"]
        7 JUMPIFNOTEQKN                    R3 K2 [1] ; [+4]
        9 LOADB                            R3 0
       10 LOADN                            R4 1
       11 RETURN                           R3 2
       12 LOADB                            R3 1
       13 GETTABLEKS                       R5 R2 K1 ["Progress"]
       15 ORK                              R4 R5 K3 [0]
       16 RETURN                           R3 2

PROTO_5:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R2 R2 K0 ["CancelImportHeightmap"]
        3 CALL                             R2 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 LOADB                            R4 1
        2 NAMECALL                         R2 R2 K0 ["SetImportHeightmapPaused"]
        4 CALL                             R2 2 0
        5 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 LOADB                            R4 0
        2 NAMECALL                         R2 R2 K0 ["SetImportHeightmapPaused"]
        4 CALL                             R2 2 0
        5 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R2 R0 K0 ["State"]
        2 GETTABLEKS                       R3 R2 K1 ["ProgressUpdateConnection"]
        4 JUMPIFNOT                        R3 ; [+11]
        5 GETTABLEKS                       R3 R2 K1 ["ProgressUpdateConnection"]
        7 NAMECALL                         R3 R3 K2 ["Disconnect"]
        9 CALL                             R3 1 0
       10 LOADNIL                          R3
       11 SETTABLEKS                       R3 R2 K1 ["ProgressUpdateConnection"]
       13 LOADN                            R3 0
       14 SETTABLEKS                       R3 R2 K3 ["Progress"]
       16 GETTABLEKS                       R4 R0 K4 ["Payload"]
       18 GETUPVAL                         R5 0
       19 GETTABLEKS                       R5 R5 K5 ["SelectionSettings"]
       21 GETTABLE                         R3 R4 R5
       22 GETUPVAL                         R5 1
       23 GETTABLEKS                       R5 R5 K6 ["Size"]
       25 GETTABLE                         R4 R3 R5
       26 GETTABLEKS                       R5 R4 K7 ["X"]
       28 GETUPVAL                         R6 2
       29 JUMPIFNOTLE                      R6 R5 ; [+21]
       31 GETTABLEKS                       R5 R4 K8 ["Y"]
       33 GETUPVAL                         R6 2
       34 JUMPIFNOTLE                      R6 R5 ; [+16]
       36 GETTABLEKS                       R5 R4 K9 ["Z"]
       38 GETUPVAL                         R6 2
       39 JUMPIFNOTLE                      R6 R5 ; [+11]
       41 GETUPVAL                         R7 3
       42 GETTABLEKS                       R7 R7 K10 ["NormalizeRegionTimer"]
       44 GETTABLEKS                       R8 R2 K11 ["StartTime"]
       46 MOVE                             R9 R4
       47 CALL                             R7 2 -1
       48 NAMECALL                         R5 R1 K12 ["addTimeStatistic"]
       50 CALL                             R5 -1 0
       51 GETUPVAL                         R5 4
       52 GETTABLEKS                       R5 R5 K13 ["ChangeHistoryService"]
       54 LOADK                            R7 K14 ["ImportAction"]
       55 NAMECALL                         R5 R5 K15 ["SetWaypoint"]
       57 CALL                             R5 2 0
       58 RETURN                           R0 0

PROTO_9:
        0 DUPCLOSURE                       R3 K0 [PROTO_3]
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          UPVAL U5
        7 DUPCLOSURE                       R4 K1 [PROTO_4]
        8 DUPCLOSURE                       R5 K2 [PROTO_5]
        9 CAPTURE                          UPVAL U5
       10 DUPCLOSURE                       R6 K3 [PROTO_6]
       11 CAPTURE                          UPVAL U5
       12 DUPCLOSURE                       R7 K4 [PROTO_7]
       13 CAPTURE                          UPVAL U5
       14 NEWCLOSURE                       R8 P5
       15 CAPTURE                          UPVAL U0
       16 CAPTURE                          UPVAL U1
       17 CAPTURE                          UPVAL U6
       18 CAPTURE                          UPVAL U7
       19 CAPTURE                          VAL R2
       20 GETUPVAL                         R9 8
       21 GETTABLEKS                       R9 R9 K5 ["new"]
       23 DUPTABLE                         R10 K16 [{"AllowPause", "AllowCancel", "Description", "Name", "OnCancel", "OnFinish", "OnPause", "OnResume", "OnStart", "OnStep"}]
       24 LOADB                            R11 1
       25 SETTABLEKS                       R11 R10 K6 ["AllowPause"]
       27 LOADB                            R11 1
       28 SETTABLEKS                       R11 R10 K7 ["AllowCancel"]
       30 SETTABLEKS                       R1 R10 K8 ["Description"]
       32 SETTABLEKS                       R0 R10 K9 ["Name"]
       34 SETTABLEKS                       R5 R10 K10 ["OnCancel"]
       36 SETTABLEKS                       R8 R10 K11 ["OnFinish"]
       38 SETTABLEKS                       R6 R10 K12 ["OnPause"]
       40 SETTABLEKS                       R7 R10 K13 ["OnResume"]
       42 SETTABLEKS                       R3 R10 K14 ["OnStart"]
       44 SETTABLEKS                       R4 R10 K15 ["OnStep"]
       46 CALL                             R9 1 -1
       47 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["Operations"]
       15 GETTABLEKS                       R2 R2 K9 ["BaseOperation"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K11 [game]
       20 LOADK                            R4 K12 ["HeightmapImporterService"]
       21 NAMECALL                         R2 R2 K13 ["GetService"]
       23 CALL                             R2 2 1
       24 GETIMPORT                        R3 K5 [require]
       26 GETTABLEKS                       R4 R0 K6 ["Src"]
       28 GETTABLEKS                       R4 R4 K14 ["Types"]
       30 CALL                             R3 1 1
       31 GETTABLEKS                       R4 R3 K15 ["Category"]
       33 GETTABLEKS                       R5 R3 K16 ["HeightmapSettings"]
       35 GETTABLEKS                       R6 R3 K17 ["SelectionSettings"]
       37 GETIMPORT                        R7 K5 [require]
       39 GETTABLEKS                       R8 R0 K6 ["Src"]
       41 GETTABLEKS                       R8 R8 K18 ["Resources"]
       43 GETTABLEKS                       R8 R8 K19 ["Constants"]
       45 CALL                             R7 1 1
       46 GETTABLEKS                       R8 R7 K20 ["RegionNormalization"]
       48 GETTABLEKS                       R9 R7 K21 ["MaxImportVolume"]
       50 GETTABLEKS                       R10 R0 K6 ["Src"]
       52 GETTABLEKS                       R10 R10 K7 ["Util"]
       54 GETIMPORT                        R11 K5 [require]
       56 GETTABLEKS                       R12 R10 K22 ["AnalyticsHelper"]
       58 CALL                             R11 1 1
       59 GETIMPORT                        R12 K5 [require]
       61 GETTABLEKS                       R13 R10 K23 ["ConvertTransformToRegion"]
       63 CALL                             R12 1 1
       64 DUPCLOSURE                       R13 K24 [PROTO_0]
       65 DUPCLOSURE                       R14 K25 [PROTO_9]
       66 CAPTURE                          VAL R4
       67 CAPTURE                          VAL R6
       68 CAPTURE                          VAL R12
       69 CAPTURE                          VAL R9
       70 CAPTURE                          VAL R5
       71 CAPTURE                          VAL R2
       72 CAPTURE                          VAL R8
       73 CAPTURE                          VAL R11
       74 CAPTURE                          VAL R1
       75 RETURN                           R14 1
