PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Get"]
        3 CALL                             R0 1 1
        4 NEWTABLE                         R1 0 0
        6 MOVE                             R2 R0
        7 LOADNIL                          R3
        8 LOADNIL                          R4
        9 FORGPREP                         R2
       10 LOADB                            R7 1
       11 SETTABLE                         R7 R1 R6
       12 FORGLOOP                         R2 2 ; [-3]
       14 NEWTABLE                         R2 0 0
       16 MOVE                             R3 R0
       17 LOADNIL                          R4
       18 LOADNIL                          R5
       19 FORGPREP                         R3
       20 LOADB                            R8 0
       21 GETTABLEKS                       R9 R7 K1 ["Parent"]
       23 JUMPIFNOT                        R9 ; [+7]
       24 GETTABLE                         R10 R1 R9
       25 JUMPIFNOT                        R10 ; [+2]
       26 LOADB                            R8 1
       27 JUMP                             ; [+3]
       28 GETTABLEKS                       R9 R9 K1 ["Parent"]
       30 JUMPBACK                         ; [-8]
       31 JUMPIF                           R8 ; [+7]
       32 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       34 MOVE                             R11 R2
       35 MOVE                             R12 R7
       36 GETIMPORT                        R10 K4 [table.insert]
       38 CALL                             R10 2 0
       39 FORGLOOP                         R3 2 ; [-20]
       41 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 JUMPIFNOT                        R4 ; [+3]
        5 NAMECALL                         R5 R4 K0 ["Disconnect"]
        7 CALL                             R5 1 0
        8 FORGLOOP                         R0 2 ; [-5]
       10 GETIMPORT                        R0 K3 [table.clear]
       12 GETUPVAL                         R1 0
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_2:
        0 LOADK                            R3 K0 ["UGC_Validation"]
        1 NAMECALL                         R1 R0 K1 ["FindFirstChild"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+1]
        5 RETURN                           R1 1
        6 GETIMPORT                        R2 K4 [Instance.new]
        8 LOADK                            R3 K5 ["Folder"]
        9 CALL                             R2 1 1
       10 LOADK                            R3 K0 ["UGC_Validation"]
       11 SETTABLEKS                       R3 R2 K6 ["Name"]
       13 LOADB                            R3 0
       14 SETTABLEKS                       R3 R2 K7 ["Archivable"]
       16 SETTABLEKS                       R0 R2 K8 ["Parent"]
       18 GETUPVAL                         R4 0
       19 FASTCALL2                        TABLE_INSERT R4 R2 ; [+4]
       21 MOVE                             R5 R2
       22 GETIMPORT                        R3 K11 [table.insert]
       24 CALL                             R3 2 0
       25 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 SETTABLEKS                       R1 R0 K0 ["Parent"]
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["Parent"]
        4 RETURN                           R0 0

PROTO_5:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 LOADB                            R7 1
        7 SETTABLE                         R7 R1 R6
        8 FORGLOOP                         R2 2 ; [-3]
       10 GETUPVAL                         R2 0
       11 LOADNIL                          R3
       12 LOADNIL                          R4
       13 FORGPREP                         R2
       14 GETTABLE                         R7 R1 R6
       15 JUMPIF                           R7 ; [+5]
       16 GETIMPORT                        R7 K1 [pcall]
       18 NEWCLOSURE                       R8 P0
       19 CAPTURE                          VAL R6
       20 CALL                             R7 1 0
       21 FORGLOOP                         R2 2 ; [-8]
       23 NEWTABLE                         R2 0 0
       25 MOVE                             R3 R0
       26 LOADNIL                          R4
       27 LOADNIL                          R5
       28 FORGPREP                         R3
       29 GETUPVAL                         R8 1
       30 JUMPIFNOT                        R8 ; [+41]
       31 LOADK                            R12 K2 ["UGC_Validation"]
       32 NAMECALL                         R10 R8 K3 ["FindFirstChild"]
       34 CALL                             R10 2 1
       35 JUMPIFNOT                        R10 ; [+2]
       36 MOVE                             R9 R10
       37 JUMP                             ; [+20]
       38 GETIMPORT                        R11 K6 [Instance.new]
       40 LOADK                            R12 K7 ["Folder"]
       41 CALL                             R11 1 1
       42 LOADK                            R12 K2 ["UGC_Validation"]
       43 SETTABLEKS                       R12 R11 K8 ["Name"]
       45 LOADB                            R12 0
       46 SETTABLEKS                       R12 R11 K9 ["Archivable"]
       48 SETTABLEKS                       R8 R11 K10 ["Parent"]
       50 GETUPVAL                         R13 2
       51 FASTCALL2                        TABLE_INSERT R13 R11 ; [+4]
       53 MOVE                             R14 R11
       54 GETIMPORT                        R12 K13 [table.insert]
       56 CALL                             R12 2 0
       57 MOVE                             R9 R11
       58 GETIMPORT                        R10 K1 [pcall]
       60 NEWCLOSURE                       R11 P1
       61 CAPTURE                          VAL R7
       62 CAPTURE                          VAL R9
       63 CALL                             R10 1 1
       64 JUMPIFNOT                        R10 ; [+7]
       65 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       67 MOVE                             R12 R2
       68 MOVE                             R13 R7
       69 GETIMPORT                        R11 K13 [table.insert]
       71 CALL                             R11 2 0
       72 FORGLOOP                         R3 2 ; [-44]
       74 SETUPVAL                         R2 0
       75 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R4 R4 K0 ["MEASURE_VIS_EXCLUSIONS"]
        5 GETTABLE                         R3 R4 R0
        6 JUMPIFNOT                        R1 ; [+6]
        7 NEWTABLE                         R4 0 1
        9 MOVE                             R5 R1
       10 SETLIST                          R4 R5 1 [1]
       12 JUMP                             ; [+5]
       13 GETUPVAL                         R5 2
       14 GETTABLE                         R4 R5 R0
       15 JUMPIF                           R4 ; [+2]
       16 NEWTABLE                         R4 0 0
       18 NEWTABLE                         R5 0 0
       20 MOVE                             R6 R4
       21 LOADNIL                          R7
       22 LOADNIL                          R8
       23 FORGPREP                         R6
       24 GETUPVAL                         R11 3
       25 LOADNIL                          R12
       26 LOADNIL                          R13
       27 FORGPREP                         R11
       28 JUMPIFNOTEQ                      R14 R10 ; [+10]
       30 JUMPIF                           R2 ; [+8]
       31 FASTCALL2                        TABLE_INSERT R5 R15 ; [+5]
       33 MOVE                             R17 R5
       34 MOVE                             R18 R15
       35 GETIMPORT                        R16 K3 [table.insert]
       37 CALL                             R16 2 0
       38 JUMP                             ; [+61]
       39 LOADN                            R18 1
       40 LENGTH                           R20 R10
       41 ADDK                             R19 R20 K4 [1]
       42 FASTCALL3                        STRING_SUB R14 R18 R19
       44 MOVE                             R17 R14
       45 GETIMPORT                        R16 K7 [string.sub]
       47 CALL                             R16 3 1
       48 MOVE                             R18 R10
       49 LOADK                            R19 K8 ["_"]
       50 CONCAT                           R17 R18 R19
       51 JUMPIFNOTEQ                      R16 R17 ; [+48]
       53 LENGTH                           R19 R10
       54 ADDK                             R18 R19 K9 [2]
       55 FASTCALL2                        STRING_SUB R14 R18 ; [+4]
       57 MOVE                             R17 R14
       58 GETIMPORT                        R16 K7 [string.sub]
       60 CALL                             R16 2 1
       61 NOT                              R17 R2
       62 JUMPIF                           R17 ; [+12]
       63 LOADN                            R20 1
       64 LENGTH                           R21 R2
       65 FASTCALL3                        STRING_SUB R16 R20 R21
       67 MOVE                             R19 R16
       68 GETIMPORT                        R18 K7 [string.sub]
       70 CALL                             R18 3 1
       71 JUMPIFEQ                         R18 R2 ; [+2]
       73 LOADB                            R17 0 +1
       74 LOADB                            R17 1
       75 JUMPIFNOT                        R17 ; [+24]
       76 LOADB                            R18 0
       77 JUMPIFNOT                        R3 ; [+14]
       78 MOVE                             R19 R3
       79 LOADNIL                          R20
       80 LOADNIL                          R21
       81 FORGPREP                         R19
       82 GETIMPORT                        R24 K11 [string.find]
       84 MOVE                             R25 R16
       85 MOVE                             R26 R22
       86 CALL                             R24 2 1
       87 JUMPIFNOT                        R24 ; [+2]
       88 LOADB                            R18 1
       89 JUMP                             ; [+2]
       90 FORGLOOP                         R19 1 ; [-9]
       92 JUMPIF                           R18 ; [+7]
       93 FASTCALL2                        TABLE_INSERT R5 R15 ; [+5]
       95 MOVE                             R20 R5
       96 MOVE                             R21 R15
       97 GETIMPORT                        R19 K3 [table.insert]
       99 CALL                             R19 2 0
      100 FORGLOOP                         R11 2 ; [-73]
      102 FORGLOOP                         R6 2 ; [-79]
      104 RETURN                           R5 1

PROTO_7:
        0 JUMPIF                           R0 ; [+5]
        1 GETUPVAL                         R1 0
        2 NEWTABLE                         R2 0 0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 0
        7 GETUPVAL                         R2 1
        8 MOVE                             R3 R0
        9 LOADNIL                          R4
       10 CALL                             R2 2 1
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R4 0
        1 GETTABLE                         R3 R4 R0
        2 JUMPIFNOT                        R3 ; [+1]
        3 RETURN                           R3 1
        4 GETIMPORT                        R4 K2 [Instance.new]
        6 LOADK                            R5 K3 ["Part"]
        7 CALL                             R4 1 1
        8 SETTABLEKS                       R0 R4 K4 ["Name"]
       10 LOADB                            R5 1
       11 SETTABLEKS                       R5 R4 K5 ["Anchored"]
       13 LOADB                            R5 0
       14 SETTABLEKS                       R5 R4 K6 ["CanCollide"]
       16 LOADB                            R5 0
       17 SETTABLEKS                       R5 R4 K7 ["CanQuery"]
       19 LOADB                            R5 0
       20 SETTABLEKS                       R5 R4 K8 ["CanTouch"]
       22 LOADN                            R5 1
       23 SETTABLEKS                       R5 R4 K9 ["Transparency"]
       25 LOADK                            R5 K10 [{0.01, 0.01, 0.01}]
       26 SETTABLEKS                       R5 R4 K11 ["Size"]
       28 SETTABLEKS                       R1 R4 K12 ["CFrame"]
       30 LOADB                            R5 0
       31 SETTABLEKS                       R5 R4 K13 ["Archivable"]
       33 LOADNIL                          R5
       34 SETTABLEKS                       R5 R4 K14 ["Parent"]
       36 GETUPVAL                         R5 0
       37 SETTABLE                         R4 R5 R0
       38 RETURN                           R4 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 NAMECALL                         R5 R4 K0 ["Destroy"]
        6 CALL                             R5 1 0
        7 FORGLOOP                         R0 2 ; [-4]
        9 GETUPVAL                         R0 1
       10 LOADNIL                          R1
       11 LOADNIL                          R2
       12 FORGPREP                         R0
       13 NAMECALL                         R5 R4 K0 ["Destroy"]
       15 CALL                             R5 1 0
       16 FORGLOOP                         R0 2 ; [-4]
       18 GETUPVAL                         R0 2
       19 LOADNIL                          R1
       20 LOADNIL                          R2
       21 FORGPREP                         R0
       22 NAMECALL                         R5 R4 K0 ["Destroy"]
       24 CALL                             R5 1 0
       25 FORGLOOP                         R0 2 ; [-4]
       27 GETIMPORT                        R0 K3 [table.clear]
       29 GETUPVAL                         R1 2
       30 CALL                             R0 1 0
       31 GETIMPORT                        R0 K3 [table.clear]
       33 GETUPVAL                         R1 0
       34 CALL                             R0 1 0
       35 GETIMPORT                        R0 K3 [table.clear]
       37 GETUPVAL                         R1 3
       38 CALL                             R0 1 0
       39 GETIMPORT                        R0 K3 [table.clear]
       41 GETUPVAL                         R1 4
       42 CALL                             R0 1 0
       43 GETIMPORT                        R0 K3 [table.clear]
       45 GETUPVAL                         R1 1
       46 CALL                             R0 1 0
       47 NEWTABLE                         R0 0 0
       49 SETUPVAL                         R0 5
       50 LOADNIL                          R0
       51 SETUPVAL                         R0 6
       52 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["instance3DMesh"]
        2 JUMPIF                           R1 ; [+2]
        3 LOADNIL                          R2
        4 RETURN                           R2 1
        5 GETTABLEKS                       R2 R0 K1 ["instanceVisualizationData"]
        7 JUMPIF                           R2 ; [+2]
        8 NEWTABLE                         R2 0 0
       10 LENGTH                           R3 R2
       11 JUMPIFNOTEQKN                    R3 K2 [0] ; [+3]
       13 LOADNIL                          R3
       14 RETURN                           R3 1
       15 NAMECALL                         R3 R1 K3 ["GetVertices"]
       17 CALL                             R3 1 1
       18 GETIMPORT                        R4 K6 [Instance.new]
       20 LOADK                            R5 K7 ["Part"]
       21 CALL                             R4 1 1
       22 GETTABLEKS                       R7 R0 K9 ["stateName"]
       24 ORK                              R6 R7 K8 ["ValidationMesh"]
       25 FASTCALL1                        TOSTRING R6 ; [+2]
       26 GETIMPORT                        R5 K11 [tostring]
       28 CALL                             R5 1 1
       29 SETTABLEKS                       R5 R4 K12 ["Name"]
       31 LOADB                            R5 1
       32 SETTABLEKS                       R5 R4 K13 ["Anchored"]
       34 LOADB                            R5 0
       35 SETTABLEKS                       R5 R4 K14 ["CanCollide"]
       37 LOADB                            R5 0
       38 SETTABLEKS                       R5 R4 K15 ["CanQuery"]
       40 LOADB                            R5 0
       41 SETTABLEKS                       R5 R4 K16 ["CanTouch"]
       43 LOADN                            R5 1
       44 SETTABLEKS                       R5 R4 K17 ["Transparency"]
       46 LOADK                            R5 K18 [{0.01, 0.01, 0.01}]
       47 SETTABLEKS                       R5 R4 K19 ["Size"]
       49 LOADB                            R5 0
       50 SETTABLEKS                       R5 R4 K20 ["Archivable"]
       52 GETIMPORT                        R5 K22 [pcall]
       54 GETUPVAL                         R6 0
       55 GETTABLEKS                       R6 R6 K23 ["build"]
       57 DUPTABLE                         R7 K28 [{"editableMesh", "vertexIds", "indices", "adornee"}]
       58 SETTABLEKS                       R1 R7 K24 ["editableMesh"]
       60 SETTABLEKS                       R3 R7 K25 ["vertexIds"]
       62 SETTABLEKS                       R2 R7 K26 ["indices"]
       64 SETTABLEKS                       R4 R7 K27 ["adornee"]
       66 CALL                             R5 2 2
       67 JUMPIF                           R5 ; [+5]
       68 GETIMPORT                        R7 K30 [warn]
       70 LOADK                            R8 K31 ["[AssetQualityValidation] VertexIncidentEdges failed:"]
       71 MOVE                             R9 R6
       72 CALL                             R7 2 0
       73 GETIMPORT                        R7 K22 [pcall]
       75 GETUPVAL                         R8 1
       76 GETTABLEKS                       R8 R8 K23 ["build"]
       78 DUPTABLE                         R9 K28 [{"editableMesh", "vertexIds", "indices", "adornee"}]
       79 SETTABLEKS                       R1 R9 K24 ["editableMesh"]
       81 SETTABLEKS                       R3 R9 K25 ["vertexIds"]
       83 SETTABLEKS                       R2 R9 K26 ["indices"]
       85 SETTABLEKS                       R4 R9 K27 ["adornee"]
       87 CALL                             R7 2 2
       88 JUMPIF                           R7 ; [+5]
       89 GETIMPORT                        R9 K30 [warn]
       91 LOADK                            R10 K32 ["[AssetQualityValidation] VertexSphereMarkers failed:"]
       92 MOVE                             R11 R8
       93 CALL                             R9 2 0
       94 GETIMPORT                        R9 K22 [pcall]
       96 GETUPVAL                         R10 2
       97 GETTABLEKS                       R10 R10 K23 ["build"]
       99 DUPTABLE                         R11 K28 [{"editableMesh", "vertexIds", "indices", "adornee"}]
      100 SETTABLEKS                       R1 R11 K24 ["editableMesh"]
      102 SETTABLEKS                       R3 R11 K25 ["vertexIds"]
      104 SETTABLEKS                       R2 R11 K26 ["indices"]
      106 SETTABLEKS                       R4 R11 K27 ["adornee"]
      108 CALL                             R9 2 2
      109 JUMPIF                           R9 ; [+5]
      110 GETIMPORT                        R11 K30 [warn]
      112 LOADK                            R12 K33 ["[AssetQualityValidation] FaceColorHeatmap failed:"]
      113 MOVE                             R13 R10
      114 CALL                             R11 2 0
      115 RETURN                           R4 1

PROTO_11:
        0 GETUPVAL                         R0 1
        1 NAMECALL                         R0 R0 K0 ["Get"]
        3 CALL                             R0 1 1
        4 SETUPVAL                         R0 0
        5 GETUPVAL                         R0 2
        6 CALL                             R0 0 1
        7 NEWTABLE                         R1 0 0
        9 MOVE                             R2 R0
       10 LOADNIL                          R3
       11 LOADNIL                          R4
       12 FORGPREP                         R2
       13 DUPTABLE                         R9 K3 [{"Name", "ClassName"}]
       14 GETTABLEKS                       R10 R6 K1 ["Name"]
       16 SETTABLEKS                       R10 R9 K1 ["Name"]
       18 GETTABLEKS                       R10 R6 K2 ["ClassName"]
       20 SETTABLEKS                       R10 R9 K2 ["ClassName"]
       22 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       24 MOVE                             R8 R1
       25 GETIMPORT                        R7 K6 [table.insert]
       27 CALL                             R7 2 0
       28 FORGLOOP                         R2 2 ; [-16]
       30 GETIMPORT                        R2 K8 [plugin]
       32 LOADK                            R4 K9 ["SetStateAndRefresh"]
       33 NEWTABLE                         R5 4 0
       35 GETUPVAL                         R8 0
       36 GETTABLEN                        R7 R8 1
       37 JUMPIFNOT                        R7 ; [+5]
       38 GETUPVAL                         R7 0
       39 GETTABLEN                        R6 R7 1
       40 GETTABLEKS                       R6 R6 K2 ["ClassName"]
       42 JUMPIF                           R6 ; [+1]
       43 LOADNIL                          R6
       44 SETTABLEKS                       R6 R5 K2 ["ClassName"]
       46 GETUPVAL                         R8 0
       47 GETTABLEN                        R7 R8 1
       48 JUMPIFNOT                        R7 ; [+5]
       49 GETUPVAL                         R7 0
       50 GETTABLEN                        R6 R7 1
       51 GETTABLEKS                       R6 R6 K1 ["Name"]
       53 JUMPIF                           R6 ; [+1]
       54 LOADNIL                          R6
       55 SETTABLEKS                       R6 R5 K1 ["Name"]
       57 SETTABLEKS                       R1 R5 K10 ["selectedModels"]
       59 NAMECALL                         R2 R2 K11 ["Invoke"]
       61 CALL                             R2 3 0
       62 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 JUMPIFNOTEQ                      R0 R1 ; [+38]
        4 GETUPVAL                         R0 2
        5 JUMPIFNOT                        R0 ; [+35]
        6 GETUPVAL                         R0 1
        7 ADDK                             R0 R0 K0 [1]
        8 SETUPVAL                         R0 1
        9 LOADB                            R0 0
       10 SETUPVAL                         R0 2
       11 GETIMPORT                        R0 K2 [plugin]
       13 LOADK                            R2 K3 ["SetStateAndRefresh"]
       14 NEWTABLE                         R3 2 0
       16 LOADB                            R4 0
       17 SETTABLEKS                       R4 R3 K4 ["isValidationRunning"]
       19 NEWTABLE                         R4 0 1
       21 DUPTABLE                         R5 K9 [{"entryIndex", "groupKey", "validationEnum", "severity"}]
       22 LOADN                            R6 1
       23 SETTABLEKS                       R6 R5 K5 ["entryIndex"]
       25 LOADK                            R6 K10 ["Error"]
       26 SETTABLEKS                       R6 R5 K6 ["groupKey"]
       28 LOADK                            R6 K11 ["Validation timed out. Please try again."]
       29 SETTABLEKS                       R6 R5 K7 ["validationEnum"]
       31 LOADK                            R6 K10 ["Error"]
       32 SETTABLEKS                       R6 R5 K8 ["severity"]
       34 SETLIST                          R4 R5 1 [1]
       36 SETTABLEKS                       R4 R3 K12 ["validationEntries"]
       38 NAMECALL                         R0 R0 K13 ["Invoke"]
       40 CALL                             R0 3 0
       41 RETURN                           R0 0

PROTO_13:
        0 LOADK                            R3 K0 ["_OuterCage$"]
        1 LOADK                            R4 K1 [""]
        2 NAMECALL                         R1 R0 K2 ["gsub"]
        4 CALL                             R1 3 1
        5 LOADK                            R3 K3 ["_InnerCage$"]
        6 LOADK                            R4 K1 [""]
        7 NAMECALL                         R1 R1 K2 ["gsub"]
        9 CALL                             R1 3 1
       10 GETIMPORT                        R2 K6 [string.split]
       12 MOVE                             R3 R1
       13 LOADK                            R4 K7 ["_"]
       14 CALL                             R2 2 1
       15 LOADNIL                          R3
       16 LENGTH                           R4 R2
       17 LOADN                            R5 0
       18 JUMPIFNOTLT                      R5 R4 ; [+25]
       20 GETIMPORT                        R4 K10 [table.concat]
       22 MOVE                             R5 R2
       23 LOADK                            R6 K7 ["_"]
       24 CALL                             R4 2 1
       25 GETUPVAL                         R5 0
       26 MOVE                             R7 R4
       27 LOADB                            R8 1
       28 NAMECALL                         R5 R5 K11 ["FindFirstChild"]
       30 CALL                             R5 3 1
       31 JUMPIFNOT                        R5 ; [+7]
       32 LOADK                            R8 K12 ["BasePart"]
       33 NAMECALL                         R6 R5 K13 ["IsA"]
       35 CALL                             R6 2 1
       36 JUMPIFNOT                        R6 ; [+2]
       37 MOVE                             R3 R5
       38 JUMP                             ; [+5]
       39 GETIMPORT                        R6 K15 [table.remove]
       41 MOVE                             R7 R2
       42 CALL                             R6 1 0
       43 JUMPBACK                         ; [-28]
       44 JUMPIFNOT                        R3 ; [+27]
       45 LOADK                            R6 K16 ["MeshPart"]
       46 NAMECALL                         R4 R3 K13 ["IsA"]
       48 CALL                             R4 2 1
       49 JUMPIFNOT                        R4 ; [+22]
       50 GETTABLEKS                       R4 R3 K17 ["MeshSize"]
       52 LOADNIL                          R5
       53 GETTABLEKS                       R6 R4 K18 ["Magnitude"]
       55 LOADN                            R7 0
       56 JUMPIFNOTLT                      R7 R6 ; [+4]
       58 GETTABLEKS                       R6 R3 K19 ["Size"]
       60 DIV                              R5 R6 R4
       61 GETUPVAL                         R6 1
       62 JUMPIFNOT                        R6 ; [+4]
       63 GETUPVAL                         R6 2
       64 MOVE                             R7 R3
       65 MOVE                             R8 R5
       66 RETURN                           R6 3
       67 GETTABLEKS                       R6 R3 K20 ["CFrame"]
       69 MOVE                             R7 R3
       70 MOVE                             R8 R5
       71 RETURN                           R6 3
       72 JUMPIFNOT                        R3 ; [+4]
       73 GETUPVAL                         R4 2
       74 MOVE                             R5 R3
       75 LOADNIL                          R6
       76 RETURN                           R4 3
       77 GETUPVAL                         R4 2
       78 GETUPVAL                         R5 3
       79 LOADNIL                          R6
       80 RETURN                           R4 3

PROTO_14:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R1 1
        4 ADDK                             R1 R1 K0 [1]
        5 SETUPVAL                         R1 1
        6 GETUPVAL                         R1 1
        7 LOADB                            R2 1
        8 SETUPVAL                         R2 0
        9 GETIMPORT                        R2 K2 [plugin]
       11 LOADK                            R4 K3 ["SetStateAndRefresh"]
       12 NEWTABLE                         R5 2 0
       14 LOADB                            R6 1
       15 SETTABLEKS                       R6 R5 K4 ["isValidationRunning"]
       17 LOADB                            R6 0
       18 SETTABLEKS                       R6 R5 K5 ["validationCompleted"]
       20 NAMECALL                         R2 R2 K6 ["Invoke"]
       22 CALL                             R2 3 0
       23 GETIMPORT                        R2 K9 [task.delay]
       25 GETUPVAL                         R3 2
       26 GETTABLEKS                       R3 R3 K10 ["getFIntAssetQualityValidationTimeoutSeconds"]
       28 CALL                             R3 0 1
       29 NEWCLOSURE                       R4 P0
       30 CAPTURE                          VAL R1
       31 CAPTURE                          UPVAL U1
       32 CAPTURE                          UPVAL U0
       33 CALL                             R2 2 0
       34 FASTCALL1                        TYPEOF R0 ; [+3]
       35 MOVE                             R4 R0
       36 GETIMPORT                        R3 K12 [typeof]
       38 CALL                             R3 1 1
       39 JUMPIFNOTEQKS                    R3 K13 ["table"] ; [+12]
       41 GETTABLEKS                       R4 R0 K14 ["models"]
       43 FASTCALL1                        TYPEOF R4 ; [+2]
       44 GETIMPORT                        R3 K12 [typeof]
       46 CALL                             R3 1 1
       47 JUMPIFNOTEQKS                    R3 K13 ["table"] ; [+4]
       49 GETTABLEKS                       R2 R0 K14 ["models"]
       51 JUMP                             ; [+2]
       52 NEWTABLE                         R2 0 0
       54 GETUPVAL                         R3 3
       55 CALL                             R3 0 1
       56 LENGTH                           R4 R3
       57 JUMPIFNOTEQKN                    R4 K15 [0] ; [+19]
       59 GETIMPORT                        R4 K17 [warn]
       61 LOADK                            R5 K18 ["[AssetQualityValidation] RunValidation requires at least one instance to be selected in the workspace"]
       62 CALL                             R4 1 0
       63 LOADB                            R4 0
       64 SETUPVAL                         R4 0
       65 GETIMPORT                        R4 K2 [plugin]
       67 LOADK                            R6 K3 ["SetStateAndRefresh"]
       68 NEWTABLE                         R7 1 0
       70 LOADB                            R8 0
       71 SETTABLEKS                       R8 R7 K4 ["isValidationRunning"]
       73 NAMECALL                         R4 R4 K6 ["Invoke"]
       75 CALL                             R4 3 0
       76 RETURN                           R0 0
       77 LENGTH                           R4 R2
       78 LENGTH                           R5 R3
       79 JUMPIFEQ                         R4 R5 ; [+19]
       81 GETIMPORT                        R4 K17 [warn]
       83 LOADK                            R5 K19 ["[AssetQualityValidation] selection changed since the dialog opened; reopen UGC Validation and resubmit"]
       84 CALL                             R4 1 0
       85 LOADB                            R4 0
       86 SETUPVAL                         R4 0
       87 GETIMPORT                        R4 K2 [plugin]
       89 LOADK                            R6 K3 ["SetStateAndRefresh"]
       90 NEWTABLE                         R7 1 0
       92 LOADB                            R8 0
       93 SETTABLEKS                       R8 R7 K4 ["isValidationRunning"]
       95 NAMECALL                         R4 R4 K6 ["Invoke"]
       97 CALL                             R4 3 0
       98 RETURN                           R0 0
       99 MOVE                             R4 R3
      100 LOADNIL                          R5
      101 LOADNIL                          R6
      102 FORGPREP                         R4
      103 GETTABLE                         R9 R2 R7
      104 JUMPIFNOT                        R9 ; [+12]
      105 GETTABLEKS                       R10 R9 K20 ["Name"]
      107 GETTABLEKS                       R11 R8 K20 ["Name"]
      109 JUMPIFNOTEQ                      R10 R11 ; [+7]
      111 GETTABLEKS                       R10 R9 K21 ["ClassName"]
      113 GETTABLEKS                       R11 R8 K21 ["ClassName"]
      115 JUMPIFEQ                         R10 R11 ; [+19]
      117 GETIMPORT                        R10 K17 [warn]
      119 LOADK                            R11 K19 ["[AssetQualityValidation] selection changed since the dialog opened; reopen UGC Validation and resubmit"]
      120 CALL                             R10 1 0
      121 LOADB                            R10 0
      122 SETUPVAL                         R10 0
      123 GETIMPORT                        R10 K2 [plugin]
      125 LOADK                            R12 K3 ["SetStateAndRefresh"]
      126 NEWTABLE                         R13 1 0
      128 LOADB                            R14 0
      129 SETTABLEKS                       R14 R13 K4 ["isValidationRunning"]
      131 NAMECALL                         R10 R10 K6 ["Invoke"]
      133 CALL                             R10 3 0
      134 RETURN                           R0 0
      135 FORGLOOP                         R4 2 ; [-33]
      137 FASTCALL1                        TYPEOF R0 ; [+3]
      138 MOVE                             R6 R0
      139 GETIMPORT                        R5 K12 [typeof]
      141 CALL                             R5 1 1
      142 JUMPIFNOTEQKS                    R5 K13 ["table"] ; [+12]
      144 GETTABLEKS                       R6 R0 K22 ["allowedBundleTypeSettings"]
      146 FASTCALL1                        TYPEOF R6 ; [+2]
      147 GETIMPORT                        R5 K12 [typeof]
      149 CALL                             R5 1 1
      150 JUMPIFNOTEQKS                    R5 K13 ["table"] ; [+4]
      152 GETTABLEKS                       R4 R0 K22 ["allowedBundleTypeSettings"]
      154 JUMP                             ; [+2]
      155 NEWTABLE                         R4 0 0
      157 MOVE                             R5 R2
      158 LOADNIL                          R6
      159 LOADNIL                          R7
      160 FORGPREP                         R5
      161 GETTABLE                         R10 R3 R8
      162 GETTABLEKS                       R11 R9 K23 ["assetTypeId"]
      164 LOADB                            R12 0
      165 FASTCALL1                        TYPEOF R11 ; [+3]
      166 MOVE                             R14 R11
      167 GETIMPORT                        R13 K12 [typeof]
      169 CALL                             R13 1 1
      170 JUMPIFNOTEQKS                    R13 K24 ["string"] ; [+5]
      172 JUMPIFNOTEQKS                    R11 K25 ["bundle:Body"] ; [+3]
      174 LOADB                            R12 1
      175 JUMP                             ; [+25]
      176 FASTCALL1                        TYPEOF R11 ; [+3]
      177 MOVE                             R14 R11
      178 GETIMPORT                        R13 K12 [typeof]
      180 CALL                             R13 1 1
      181 JUMPIFNOTEQKS                    R13 K24 ["string"] ; [+5]
      183 JUMPIFNOTEQKS                    R11 K26 ["bundle:DynamicHead"] ; [+3]
      185 LOADB                            R12 1
      186 JUMP                             ; [+14]
      187 FASTCALL1                        TYPEOF R11 ; [+3]
      188 MOVE                             R14 R11
      189 GETIMPORT                        R13 K12 [typeof]
      191 CALL                             R13 1 1
      192 JUMPIFNOTEQKS                    R13 K27 ["number"] ; [+8]
      194 GETIMPORT                        R13 K31 [Enum.AssetType.DynamicHead]
      196 GETTABLEKS                       R13 R13 K32 ["Value"]
      198 JUMPIFNOTEQ                      R11 R13 ; [+2]
      200 LOADB                            R12 1
      201 JUMPIFNOT                        R12 ; [+2]
      202 LOADK                            R13 K33 ["Model"]
      203 JUMP                             ; [+1]
      204 LOADK                            R13 K34 ["Accessory"]
      205 MOVE                             R16 R13
      206 NAMECALL                         R14 R10 K35 ["IsA"]
      208 CALL                             R14 2 1
      209 JUMPIF                           R14 ; [+42]
      210 LOADB                            R15 0
      211 SETUPVAL                         R15 0
      212 GETIMPORT                        R15 K2 [plugin]
      214 LOADK                            R17 K3 ["SetStateAndRefresh"]
      215 NEWTABLE                         R18 2 0
      217 LOADB                            R19 0
      218 SETTABLEKS                       R19 R18 K4 ["isValidationRunning"]
      220 NEWTABLE                         R19 0 1
      222 DUPTABLE                         R20 K40 [{"entryIndex", "groupKey", "validationEnum", "severity"}]
      223 LOADN                            R21 1
      224 SETTABLEKS                       R21 R20 K36 ["entryIndex"]
      226 LOADK                            R21 K41 ["Error"]
      227 SETTABLEKS                       R21 R20 K37 ["groupKey"]
      229 LOADK                            R22 K42 ["Incorrect instance type: expected %* for \"%*\" but got %*."]
      230 MOVE                             R24 R13
      231 GETTABLEKS                       R25 R10 K20 ["Name"]
      233 GETTABLEKS                       R26 R10 K21 ["ClassName"]
      235 NAMECALL                         R22 R22 K43 ["format"]
      237 CALL                             R22 4 1
      238 MOVE                             R21 R22
      239 SETTABLEKS                       R21 R20 K38 ["validationEnum"]
      241 LOADK                            R21 K41 ["Error"]
      242 SETTABLEKS                       R21 R20 K39 ["severity"]
      244 SETLIST                          R19 R20 1 [1]
      246 SETTABLEKS                       R19 R18 K44 ["validationEntries"]
      248 NAMECALL                         R15 R15 K6 ["Invoke"]
      250 CALL                             R15 3 0
      251 RETURN                           R0 0
      252 FORGLOOP                         R5 2 ; [-92]
      254 GETUPVAL                         R5 4
      255 GETTABLEKS                       R5 R5 K45 ["buildValidationInputs"]
      257 MOVE                             R6 R3
      258 MOVE                             R7 R2
      259 MOVE                             R8 R4
      260 CALL                             R5 3 3
      261 GETUPVAL                         R8 4
      262 GETTABLEKS                       R8 R8 K46 ["buildValidationSettings"]
      264 MOVE                             R9 R7
      265 CALL                             R8 1 1
      266 GETUPVAL                         R9 5
      267 CALL                             R9 0 0
      268 GETIMPORT                        R9 K2 [plugin]
      270 LOADK                            R11 K3 ["SetStateAndRefresh"]
      271 NEWTABLE                         R12 1 0
      273 NEWTABLE                         R13 0 0
      275 SETTABLEKS                       R13 R12 K44 ["validationEntries"]
      277 NAMECALL                         R9 R9 K6 ["Invoke"]
      279 CALL                             R9 3 0
      280 GETTABLEN                        R9 R3 1
      281 SETUPVAL                         R9 6
      282 GETIMPORT                        R10 K49 [CFrame.new]
      284 CALL                             R10 0 1
      285 LOADB                            R11 0
      286 JUMPIF                           R7 ; [+14]
      287 MOVE                             R12 R6
      288 LOADNIL                          R13
      289 LOADNIL                          R14
      290 FORGPREP                         R12
      291 GETIMPORT                        R17 K31 [Enum.AssetType.DynamicHead]
      293 GETTABLEKS                       R17 R17 K32 ["Value"]
      295 JUMPIFNOTEQ                      R16 R17 ; [+3]
      297 LOADB                            R11 1
      298 JUMP                             ; [+2]
      299 FORGLOOP                         R12 2 ; [-9]
      301 JUMPIFNOT                        R11 ; [+14]
      302 LOADK                            R14 K50 ["Head"]
      303 LOADB                            R15 1
      304 NAMECALL                         R12 R9 K51 ["FindFirstChild"]
      306 CALL                             R12 3 1
      307 JUMPIFNOT                        R12 ; [+28]
      308 LOADK                            R15 K52 ["BasePart"]
      309 NAMECALL                         R13 R12 K35 ["IsA"]
      311 CALL                             R13 2 1
      312 JUMPIFNOT                        R13 ; [+23]
      313 GETTABLEKS                       R10 R12 K47 ["CFrame"]
      315 JUMP                             ; [+20]
      316 LOADK                            R14 K33 ["Model"]
      317 NAMECALL                         R12 R9 K35 ["IsA"]
      319 CALL                             R12 2 1
      320 JUMPIFNOT                        R12 ; [+8]
      321 GETTABLEKS                       R12 R9 K53 ["PrimaryPart"]
      323 JUMPIFNOT                        R12 ; [+5]
      324 GETTABLEKS                       R12 R9 K53 ["PrimaryPart"]
      326 GETTABLEKS                       R10 R12 K47 ["CFrame"]
      328 JUMP                             ; [+7]
      329 LOADK                            R14 K52 ["BasePart"]
      330 NAMECALL                         R12 R9 K35 ["IsA"]
      332 CALL                             R12 2 1
      333 JUMPIFNOT                        R12 ; [+2]
      334 GETTABLEKS                       R10 R9 K47 ["CFrame"]
      336 NEWCLOSURE                       R12 P1
      337 CAPTURE                          VAL R9
      338 CAPTURE                          VAL R7
      339 CAPTURE                          REF R10
      340 CAPTURE                          VAL R9
      341 GETUPVAL                         R13 7
      342 MOVE                             R15 R5
      343 MOVE                             R16 R6
      344 MOVE                             R17 R8
      345 NAMECALL                         R13 R13 K54 ["FetchAssetQualityValidationEntriesFromModelsAsync"]
      347 CALL                             R13 4 1
      348 MOVE                             R14 R5
      349 LOADNIL                          R15
      350 LOADNIL                          R16
      351 FORGPREP                         R14
      352 JUMPIFEQ                         R18 R9 ; [+4]
      354 NAMECALL                         R19 R18 K55 ["Destroy"]
      356 CALL                             R19 1 0
      357 FORGLOOP                         R14 2 ; [-6]
      359 GETUPVAL                         R14 1
      360 JUMPIFEQ                         R1 R14 ; [+5]
      362 GETUPVAL                         R14 5
      363 CALL                             R14 0 0
      364 CLOSEUPVALS                      R10
      365 RETURN                           R0 0
      366 GETTABLEKS                       R15 R13 K56 ["error"]
      368 FASTCALL1                        TYPEOF R15 ; [+2]
      369 GETIMPORT                        R14 K12 [typeof]
      371 CALL                             R14 1 1
      372 JUMPIFNOTEQKS                    R14 K24 ["string"] ; [+36]
      374 NEWTABLE                         R14 0 1
      376 DUPTABLE                         R15 K40 [{"entryIndex", "groupKey", "validationEnum", "severity"}]
      377 LOADN                            R16 1
      378 SETTABLEKS                       R16 R15 K36 ["entryIndex"]
      380 LOADK                            R16 K41 ["Error"]
      381 SETTABLEKS                       R16 R15 K37 ["groupKey"]
      383 GETTABLEKS                       R16 R13 K56 ["error"]
      385 SETTABLEKS                       R16 R15 K38 ["validationEnum"]
      387 LOADK                            R16 K41 ["Error"]
      388 SETTABLEKS                       R16 R15 K39 ["severity"]
      390 SETLIST                          R14 R15 1 [1]
      392 LOADB                            R15 0
      393 SETUPVAL                         R15 0
      394 GETIMPORT                        R15 K2 [plugin]
      396 LOADK                            R17 K3 ["SetStateAndRefresh"]
      397 NEWTABLE                         R18 2 0
      399 LOADB                            R19 0
      400 SETTABLEKS                       R19 R18 K4 ["isValidationRunning"]
      402 SETTABLEKS                       R14 R18 K44 ["validationEntries"]
      404 NAMECALL                         R15 R15 K6 ["Invoke"]
      406 CALL                             R15 3 0
      407 CLOSEUPVALS                      R10
      408 RETURN                           R0 0
      409 JUMPIFNOT                        R13 ; [+43]
      410 GETTABLEKS                       R15 R13 K57 ["measurements"]
      412 FASTCALL1                        TYPEOF R15 ; [+2]
      413 GETIMPORT                        R14 K12 [typeof]
      415 CALL                             R14 1 1
      416 JUMPIFNOTEQKS                    R14 K13 ["table"] ; [+36]
      418 GETTABLEKS                       R14 R13 K57 ["measurements"]
      420 LOADNIL                          R15
      421 LOADNIL                          R16
      422 FORGPREP                         R14
      423 FASTCALL1                        TYPEOF R18 ; [+3]
      424 MOVE                             R20 R18
      425 GETIMPORT                        R19 K12 [typeof]
      427 CALL                             R19 1 1
      428 JUMPIFNOTEQKS                    R19 K13 ["table"] ; [+22]
      430 NEWTABLE                         R19 0 0
      432 MOVE                             R20 R18
      433 LOADNIL                          R21
      434 LOADNIL                          R22
      435 FORGPREP                         R20
      436 FASTCALL2                        TABLE_INSERT R19 R23 ; [+5]
      438 MOVE                             R26 R19
      439 MOVE                             R27 R23
      440 GETIMPORT                        R25 K59 [table.insert]
      442 CALL                             R25 2 0
      443 FORGLOOP                         R20 1 ; [-8]
      445 LENGTH                           R20 R19
      446 LOADN                            R21 0
      447 JUMPIFNOTLT                      R21 R20 ; [+3]
      449 GETUPVAL                         R20 8
      450 SETTABLE                         R19 R20 R17
      451 FORGLOOP                         R14 2 ; [-29]
      453 GETUPVAL                         R14 4
      454 GETTABLEKS                       R14 R14 K60 ["processValidationEntries"]
      456 MOVE                             R15 R13
      457 DUPTABLE                         R16 K65 [{"entriesByIndex", "measureNameToMeshNames", "entryVisualMeshParts", "buildVertexVisualizationMeshPart"}]
      458 GETUPVAL                         R17 9
      459 SETTABLEKS                       R17 R16 K61 ["entriesByIndex"]
      461 GETUPVAL                         R17 8
      462 SETTABLEKS                       R17 R16 K62 ["measureNameToMeshNames"]
      464 GETUPVAL                         R17 10
      465 SETTABLEKS                       R17 R16 K63 ["entryVisualMeshParts"]
      467 GETUPVAL                         R17 11
      468 SETTABLEKS                       R17 R16 K64 ["buildVertexVisualizationMeshPart"]
      470 CALL                             R14 2 2
      471 GETUPVAL                         R16 4
      472 GETTABLEKS                       R16 R16 K66 ["buildMeasurementVisualization"]
      474 MOVE                             R17 R13
      475 MOVE                             R18 R15
      476 MOVE                             R19 R12
      477 GETUPVAL                         R20 12
      478 GETUPVAL                         R21 8
      479 CALL                             R16 5 0
      480 GETUPVAL                         R16 9
      481 LOADNIL                          R17
      482 LOADNIL                          R18
      483 FORGPREP                         R16
      484 GETTABLEKS                       R21 R20 K67 ["measureName"]
      486 JUMPIFNOTEQKS                    R21 K68 ["Measure_Dynamic_Head"] ; [+31]
      488 GETTABLE                         R21 R14 R19
      489 JUMPIFNOT                        R21 ; [+28]
      490 GETUPVAL                         R23 8
      491 GETTABLEKS                       R22 R23 K68 ["Measure_Dynamic_Head"]
      493 JUMPIF                           R22 ; [+2]
      494 NEWTABLE                         R22 0 0
      496 GETTABLEKS                       R24 R21 K39 ["severity"]
      498 JUMPIFNOTEQKS                    R24 K41 ["Error"] ; [+3]
      500 LOADK                            R23 K69 ["_DynHead_Colored"]
      501 JUMP                             ; [+1]
      502 LOADK                            R23 K70 ["_DynHead_Gray"]
      503 MOVE                             R24 R22
      504 LOADNIL                          R25
      505 LOADNIL                          R26
      506 FORGPREP                         R24
      507 GETUPVAL                         R30 13
      508 MOVE                             R32 R28
      509 MOVE                             R33 R23
      510 CONCAT                           R31 R32 R33
      511 GETTABLE                         R29 R30 R31
      512 JUMPIFNOT                        R29 ; [+3]
      513 GETUPVAL                         R30 10
      514 SETTABLE                         R29 R30 R19
      515 JUMP                             ; [+2]
      516 FORGLOOP                         R24 2 ; [-10]
      518 FORGLOOP                         R16 2 ; [-35]
      520 LOADB                            R16 0
      521 SETUPVAL                         R16 0
      522 GETIMPORT                        R16 K2 [plugin]
      524 LOADK                            R18 K3 ["SetStateAndRefresh"]
      525 NEWTABLE                         R19 4 0
      527 LOADB                            R20 0
      528 SETTABLEKS                       R20 R19 K4 ["isValidationRunning"]
      530 LOADB                            R20 1
      531 SETTABLEKS                       R20 R19 K5 ["validationCompleted"]
      533 SETTABLEKS                       R14 R19 K44 ["validationEntries"]
      535 NAMECALL                         R16 R16 K6 ["Invoke"]
      537 CALL                             R16 3 0
      538 CLOSEUPVALS                      R10
      539 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+16]
        2 GETUPVAL                         R1 1
        3 ADDK                             R1 R1 K0 [1]
        4 SETUPVAL                         R1 1
        5 LOADB                            R1 0
        6 SETUPVAL                         R1 0
        7 GETIMPORT                        R1 K2 [plugin]
        9 LOADK                            R3 K3 ["SetStateAndRefresh"]
       10 NEWTABLE                         R4 1 0
       12 LOADB                            R5 0
       13 SETTABLEKS                       R5 R4 K4 ["isValidationRunning"]
       15 NAMECALL                         R1 R1 K5 ["Invoke"]
       17 CALL                             R1 3 0
       18 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R1 R0 K0 ["entryIndex"]
        2 MOVE                             R2 R1
        3 JUMPIFNOT                        R2 ; [+2]
        4 GETUPVAL                         R3 0
        5 GETTABLE                         R2 R3 R1
        6 JUMPIFNOT                        R2 ; [+8]
        7 GETUPVAL                         R3 1
        8 NEWTABLE                         R4 0 1
       10 MOVE                             R5 R2
       11 SETLIST                          R4 R5 1 [1]
       13 CALL                             R3 1 0
       14 RETURN                           R0 0
       15 MOVE                             R3 R1
       16 JUMPIFNOT                        R3 ; [+2]
       17 GETUPVAL                         R4 2
       18 GETTABLE                         R3 R4 R1
       19 JUMPIF                           R3 ; [+5]
       20 GETUPVAL                         R4 1
       21 NEWTABLE                         R5 0 0
       23 CALL                             R4 1 0
       24 RETURN                           R0 0
       25 GETTABLEKS                       R4 R3 K1 ["meshName"]
       27 JUMPIFNOT                        R4 ; [+14]
       28 GETUPVAL                         R4 3
       29 GETTABLEKS                       R5 R3 K2 ["measureName"]
       31 GETTABLEKS                       R6 R3 K1 ["meshName"]
       33 CALL                             R4 2 1
       34 LENGTH                           R5 R4
       35 LOADN                            R6 0
       36 JUMPIFNOTLT                      R6 R5 ; [+5]
       38 GETUPVAL                         R5 1
       39 MOVE                             R6 R4
       40 CALL                             R5 1 0
       41 RETURN                           R0 0
       42 GETTABLEKS                       R4 R3 K2 ["measureName"]
       44 JUMPIF                           R4 ; [+5]
       45 GETUPVAL                         R5 1
       46 NEWTABLE                         R6 0 0
       48 CALL                             R5 1 0
       49 RETURN                           R0 0
       50 GETUPVAL                         R5 1
       51 GETUPVAL                         R6 3
       52 MOVE                             R7 R4
       53 LOADNIL                          R8
       54 CALL                             R6 2 1
       55 CALL                             R5 1 0
       56 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R1 R0 K0 ["groupKey"]
        2 JUMPIF                           R1 ; [+5]
        3 GETUPVAL                         R2 0
        4 NEWTABLE                         R3 0 0
        6 CALL                             R2 1 0
        7 RETURN                           R0 0
        8 GETUPVAL                         R2 0
        9 GETUPVAL                         R3 1
       10 MOVE                             R4 R1
       11 LOADNIL                          R5
       12 CALL                             R3 2 1
       13 CALL                             R2 1 0
       14 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 NEWTABLE                         R2 0 0
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 LOADB                            R0 1
        4 SETUPVAL                         R0 0
        5 NEWCLOSURE                       R0 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 MOVE                             R1 R0
       10 CALL                             R1 0 0
       11 GETUPVAL                         R1 2
       12 GETTABLEKS                       R1 R1 K0 ["SelectionChanged"]
       14 MOVE                             R3 R0
       15 NAMECALL                         R1 R1 K1 ["Connect"]
       17 CALL                             R1 2 1
       18 GETUPVAL                         R3 4
       19 FASTCALL2                        TABLE_INSERT R3 R1 ; [+4]
       21 MOVE                             R4 R1
       22 GETIMPORT                        R2 K4 [table.insert]
       24 CALL                             R2 2 0
       25 GETIMPORT                        R2 K6 [plugin]
       27 LOADK                            R4 K7 ["RunValidation"]
       28 NEWCLOSURE                       R5 P1
       29 CAPTURE                          UPVAL U5
       30 CAPTURE                          UPVAL U6
       31 CAPTURE                          UPVAL U7
       32 CAPTURE                          UPVAL U3
       33 CAPTURE                          UPVAL U8
       34 CAPTURE                          UPVAL U9
       35 CAPTURE                          UPVAL U10
       36 CAPTURE                          UPVAL U11
       37 CAPTURE                          UPVAL U12
       38 CAPTURE                          UPVAL U13
       39 CAPTURE                          UPVAL U14
       40 CAPTURE                          UPVAL U15
       41 CAPTURE                          UPVAL U16
       42 CAPTURE                          UPVAL U17
       43 NAMECALL                         R2 R2 K8 ["OnInvoke"]
       45 CALL                             R2 3 1
       46 JUMPIFNOT                        R2 ; [+10]
       47 LOADK                            R3 K9 ["runValidationConnection"]
       48 SETTABLEKS                       R3 R2 K10 ["Name"]
       50 GETUPVAL                         R4 4
       51 FASTCALL2                        TABLE_INSERT R4 R2 ; [+4]
       53 MOVE                             R5 R2
       54 GETIMPORT                        R3 K4 [table.insert]
       56 CALL                             R3 2 0
       57 GETIMPORT                        R3 K6 [plugin]
       59 LOADK                            R5 K11 ["CancelValidation"]
       60 NEWCLOSURE                       R6 P2
       61 CAPTURE                          UPVAL U5
       62 CAPTURE                          UPVAL U6
       63 NAMECALL                         R3 R3 K8 ["OnInvoke"]
       65 CALL                             R3 3 1
       66 JUMPIFNOT                        R3 ; [+10]
       67 LOADK                            R4 K12 ["cancelValidationConnection"]
       68 SETTABLEKS                       R4 R3 K10 ["Name"]
       70 GETUPVAL                         R5 4
       71 FASTCALL2                        TABLE_INSERT R5 R3 ; [+4]
       73 MOVE                             R6 R3
       74 GETIMPORT                        R4 K4 [table.insert]
       76 CALL                             R4 2 0
       77 GETIMPORT                        R4 K6 [plugin]
       79 LOADK                            R6 K13 ["ShowMesh"]
       80 DUPCLOSURE                       R7 K14 [PROTO_16]
       81 CAPTURE                          UPVAL U14
       82 CAPTURE                          UPVAL U18
       83 CAPTURE                          UPVAL U13
       84 CAPTURE                          UPVAL U19
       85 NAMECALL                         R4 R4 K8 ["OnInvoke"]
       87 CALL                             R4 3 1
       88 JUMPIFNOT                        R4 ; [+10]
       89 LOADK                            R5 K15 ["showMeshConnection"]
       90 SETTABLEKS                       R5 R4 K10 ["Name"]
       92 GETUPVAL                         R6 4
       93 FASTCALL2                        TABLE_INSERT R6 R4 ; [+4]
       95 MOVE                             R7 R4
       96 GETIMPORT                        R5 K4 [table.insert]
       98 CALL                             R5 2 0
       99 GETIMPORT                        R5 K6 [plugin]
      101 LOADK                            R7 K16 ["ExplorerSelect"]
      102 DUPCLOSURE                       R8 K17 [PROTO_17]
      103 CAPTURE                          UPVAL U18
      104 CAPTURE                          UPVAL U19
      105 NAMECALL                         R5 R5 K8 ["OnInvoke"]
      107 CALL                             R5 3 1
      108 JUMPIFNOT                        R5 ; [+10]
      109 LOADK                            R6 K18 ["explorerSelectConnection"]
      110 SETTABLEKS                       R6 R5 K10 ["Name"]
      112 GETUPVAL                         R7 4
      113 FASTCALL2                        TABLE_INSERT R7 R5 ; [+4]
      115 MOVE                             R8 R5
      116 GETIMPORT                        R6 K4 [table.insert]
      118 CALL                             R6 2 0
      119 GETIMPORT                        R6 K6 [plugin]
      121 LOADK                            R8 K19 ["HideMesh"]
      122 DUPCLOSURE                       R9 K20 [PROTO_18]
      123 CAPTURE                          UPVAL U18
      124 NAMECALL                         R6 R6 K8 ["OnInvoke"]
      126 CALL                             R6 3 1
      127 JUMPIFNOT                        R6 ; [+10]
      128 LOADK                            R7 K21 ["hideMeshConnection"]
      129 SETTABLEKS                       R7 R6 K10 ["Name"]
      131 GETUPVAL                         R8 4
      132 FASTCALL2                        TABLE_INSERT R8 R6 ; [+4]
      134 MOVE                             R9 R6
      135 GETIMPORT                        R7 K4 [table.insert]
      137 CALL                             R7 2 0
      138 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 LOADB                            R0 0
        4 SETUPVAL                         R0 0
        5 GETUPVAL                         R0 1
        6 LOADNIL                          R1
        7 LOADNIL                          R2
        8 FORGPREP                         R0
        9 JUMPIFNOT                        R4 ; [+3]
       10 NAMECALL                         R5 R4 K0 ["Disconnect"]
       12 CALL                             R5 1 0
       13 FORGLOOP                         R0 2 ; [-5]
       15 GETIMPORT                        R0 K3 [table.clear]
       17 GETUPVAL                         R1 1
       18 CALL                             R0 1 0
       19 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+1]
        2 RETURN                           R0 0
        3 LOADB                            R1 0
        4 SETUPVAL                         R1 0
        5 GETUPVAL                         R1 1
        6 LOADNIL                          R2
        7 LOADNIL                          R3
        8 FORGPREP                         R1
        9 JUMPIFNOT                        R5 ; [+3]
       10 NAMECALL                         R6 R5 K0 ["Disconnect"]
       12 CALL                             R6 1 0
       13 FORGLOOP                         R1 2 ; [-5]
       15 GETIMPORT                        R1 K3 [table.clear]
       17 GETUPVAL                         R2 1
       18 CALL                             R1 1 0
       19 RETURN                           R0 0

PROTO_22:
        0 GETIMPORT                        R0 K1 [plugin]
        2 GETTABLEKS                       R0 R0 K2 ["HostDataModelTypeIsCurrent"]
        4 JUMPIFNOT                        R0 ; [+2]
        5 GETUPVAL                         R0 0
        6 CALL                             R0 0 0
        7 RETURN                           R0 0

PROTO_23:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 GETTABLEKS                       R1 R0 K0 ["CurrentDataModelTypeAboutToChange"]
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          UPVAL U1
        7 NAMECALL                         R1 R1 K1 ["Connect"]
        9 CALL                             R1 2 0
       10 GETTABLEKS                       R1 R0 K2 ["CurrentDataModelTypeChanged"]
       12 DUPCLOSURE                       R3 K3 [PROTO_22]
       13 CAPTURE                          UPVAL U2
       14 NAMECALL                         R1 R1 K1 ["Connect"]
       16 CALL                             R1 2 0
       17 GETIMPORT                        R1 K5 [plugin]
       19 GETTABLEKS                       R1 R1 K6 ["HostDataModelTypeIsCurrent"]
       21 JUMPIFNOT                        R1 ; [+2]
       22 GETUPVAL                         R1 2
       23 CALL                             R1 0 0
       24 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [plugin]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETIMPORT                        R0 K3 [script]
        7 LOADK                            R2 K4 ["AssetQualityValidation"]
        8 NAMECALL                         R0 R0 K5 ["FindFirstAncestor"]
       10 CALL                             R0 2 1
       11 GETIMPORT                        R1 K7 [game]
       13 LOADK                            R3 K8 ["Selection"]
       14 NAMECALL                         R1 R1 K9 ["GetService"]
       16 CALL                             R1 2 1
       17 GETIMPORT                        R2 K7 [game]
       19 LOADK                            R4 K10 ["AssetQualityService"]
       20 NAMECALL                         R2 R2 K9 ["GetService"]
       22 CALL                             R2 2 1
       23 GETIMPORT                        R3 K12 [require]
       25 GETTABLEKS                       R4 R0 K13 ["Src"]
       27 GETTABLEKS                       R4 R4 K14 ["Util"]
       29 GETTABLEKS                       R4 R4 K15 ["validationHelpers"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K12 [require]
       34 GETTABLEKS                       R5 R0 K13 ["Src"]
       36 GETTABLEKS                       R5 R5 K14 ["Util"]
       38 GETTABLEKS                       R5 R5 K16 ["Visualization"]
       40 GETTABLEKS                       R5 R5 K17 ["VertexIncidentEdges"]
       42 GETTABLEKS                       R5 R5 K17 ["VertexIncidentEdges"]
       44 CALL                             R4 1 1
       45 GETIMPORT                        R5 K12 [require]
       47 GETTABLEKS                       R6 R0 K13 ["Src"]
       49 GETTABLEKS                       R6 R6 K14 ["Util"]
       51 GETTABLEKS                       R6 R6 K16 ["Visualization"]
       53 GETTABLEKS                       R6 R6 K18 ["VertexSphereMarkers"]
       55 GETTABLEKS                       R6 R6 K18 ["VertexSphereMarkers"]
       57 CALL                             R5 1 1
       58 GETIMPORT                        R6 K12 [require]
       60 GETTABLEKS                       R7 R0 K13 ["Src"]
       62 GETTABLEKS                       R7 R7 K14 ["Util"]
       64 GETTABLEKS                       R7 R7 K16 ["Visualization"]
       66 GETTABLEKS                       R7 R7 K19 ["FaceColorHeatmap"]
       68 GETTABLEKS                       R7 R7 K19 ["FaceColorHeatmap"]
       70 CALL                             R6 1 1
       71 GETIMPORT                        R7 K12 [require]
       73 GETTABLEKS                       R8 R0 K20 ["Packages"]
       75 GETTABLEKS                       R8 R8 K21 ["TestLoader"]
       77 CALL                             R7 1 1
       78 GETTABLEKS                       R8 R7 K22 ["launch"]
       80 LOADK                            R9 K4 ["AssetQualityValidation"]
       81 GETTABLEKS                       R10 R0 K13 ["Src"]
       83 CALL                             R8 2 0
       84 GETTABLEKS                       R8 R7 K23 ["isCli"]
       86 CALL                             R8 0 1
       87 JUMPIFNOT                        R8 ; [+1]
       88 RETURN                           R0 0
       89 GETIMPORT                        R8 K12 [require]
       91 GETTABLEKS                       R9 R0 K24 ["Bin"]
       93 GETTABLEKS                       R9 R9 K25 ["Common"]
       95 GETTABLEKS                       R9 R9 K26 ["defineLuaFlags"]
       97 CALL                             R8 1 1
       98 GETTABLEKS                       R9 R8 K27 ["getFFlagEnableAssetQualityValidation"]
      100 CALL                             R9 0 1
      101 JUMPIF                           R9 ; [+1]
      102 RETURN                           R0 0
      103 GETIMPORT                        R9 K7 [game]
      105 LOADK                            R11 K28 ["EngineAssetQualityValidationV2"]
      106 NAMECALL                         R9 R9 K29 ["GetEngineFeature"]
      108 CALL                             R9 2 1
      109 JUMPIF                           R9 ; [+1]
      110 RETURN                           R0 0
      111 LOADB                            R9 0
      112 NEWTABLE                         R10 0 0
      114 NAMECALL                         R11 R1 K30 ["Get"]
      116 CALL                             R11 1 1
      117 DUPCLOSURE                       R12 K31 [PROTO_0]
      118 CAPTURE                          VAL R1
      119 NEWTABLE                         R13 0 0
      121 NEWTABLE                         R14 0 0
      123 NEWTABLE                         R15 0 0
      125 NEWTABLE                         R16 0 0
      127 NEWTABLE                         R17 0 0
      129 LOADNIL                          R18
      130 NEWTABLE                         R19 0 0
      132 LOADB                            R20 0
      133 LOADN                            R21 0
      134 DUPCLOSURE                       R22 K32 [PROTO_1]
      135 CAPTURE                          VAL R10
      136 DUPCLOSURE                       R23 K33 [PROTO_2]
      137 CAPTURE                          VAL R19
      138 NEWCLOSURE                       R24 P3
      139 CAPTURE                          REF R17
      140 CAPTURE                          REF R18
      141 CAPTURE                          VAL R19
      142 NEWTABLE                         R25 8 0
      144 LOADK                            R26 K34 ["CageDist"]
      145 SETTABLEKS                       R26 R25 K35 ["Measure_Cage_Mesh_Distance"]
      147 LOADK                            R26 K36 ["CageRelevancy"]
      148 SETTABLEKS                       R26 R25 K37 ["Measure_Cage_Relevancy"]
      150 LOADK                            R26 K38 ["DegenTriangles"]
      151 SETTABLEKS                       R26 R25 K39 ["Measure_Degen_Triangles"]
      153 LOADK                            R26 K40 ["TriIntersection"]
      154 SETTABLEKS                       R26 R25 K41 ["Measure_Triangle_Intersection"]
      156 LOADK                            R26 K42 ["DynHead"]
      157 SETTABLEKS                       R26 R25 K43 ["Measure_Dynamic_Head"]
      159 LOADK                            R26 K44 ["OutsideCage"]
      160 SETTABLEKS                       R26 R25 K45 ["Measure_Mesh_Outside_OuterCage"]
      162 LOADK                            R26 K46 ["VertexSim"]
      163 SETTABLEKS                       R26 R25 K47 ["Measure_Vertex_Similarity"]
      165 LOADK                            R26 K48 ["Manifold"]
      166 SETTABLEKS                       R26 R25 K49 ["Measure_Mesh_Manifold"]
      168 DUPCLOSURE                       R26 K50 [PROTO_6]
      169 CAPTURE                          VAL R25
      170 CAPTURE                          VAL R3
      171 CAPTURE                          VAL R14
      172 CAPTURE                          VAL R13
      173 DUPCLOSURE                       R27 K51 [PROTO_7]
      174 CAPTURE                          VAL R24
      175 CAPTURE                          VAL R26
      176 DUPCLOSURE                       R28 K52 [PROTO_8]
      177 CAPTURE                          VAL R13
      178 NEWCLOSURE                       R29 P7
      179 CAPTURE                          VAL R13
      180 CAPTURE                          VAL R16
      181 CAPTURE                          VAL R19
      182 CAPTURE                          VAL R14
      183 CAPTURE                          VAL R15
      184 CAPTURE                          REF R17
      185 CAPTURE                          REF R18
      186 DUPCLOSURE                       R30 K53 [PROTO_10]
      187 CAPTURE                          VAL R4
      188 CAPTURE                          VAL R5
      189 CAPTURE                          VAL R6
      190 NEWCLOSURE                       R31 P9
      191 CAPTURE                          REF R9
      192 CAPTURE                          REF R11
      193 CAPTURE                          VAL R1
      194 CAPTURE                          VAL R12
      195 CAPTURE                          VAL R10
      196 CAPTURE                          REF R20
      197 CAPTURE                          REF R21
      198 CAPTURE                          VAL R8
      199 CAPTURE                          VAL R3
      200 CAPTURE                          VAL R29
      201 CAPTURE                          REF R18
      202 CAPTURE                          VAL R2
      203 CAPTURE                          VAL R14
      204 CAPTURE                          VAL R15
      205 CAPTURE                          VAL R16
      206 CAPTURE                          VAL R30
      207 CAPTURE                          VAL R28
      208 CAPTURE                          VAL R13
      209 CAPTURE                          VAL R24
      210 CAPTURE                          VAL R26
      211 NEWCLOSURE                       R32 P10
      212 CAPTURE                          REF R9
      213 CAPTURE                          VAL R10
      214 NEWCLOSURE                       R33 P11
      215 CAPTURE                          REF R9
      216 CAPTURE                          VAL R10
      217 CAPTURE                          VAL R31
      218 GETIMPORT                        R34 K1 [plugin]
      220 GETTABLEKS                       R34 R34 K54 ["MultipleDocumentInterfaceInstance"]
      222 MOVE                             R35 R33
      223 GETTABLEKS                       R36 R34 K55 ["FocusedDataModelSession"]
      225 CALL                             R35 1 0
      226 GETIMPORT                        R35 K12 [require]
      228 GETTABLEKS                       R36 R0 K24 ["Bin"]
      230 GETTABLEKS                       R36 R36 K25 ["Common"]
      232 GETTABLEKS                       R36 R36 K56 ["pluginType"]
      234 CALL                             R35 1 1
      235 GETTABLEKS                       R36 R35 K57 ["get"]
      237 CALL                             R36 0 1
      238 GETTABLEKS                       R37 R35 K58 ["Asset"]
      240 JUMPIFEQ                         R36 R37 ; [+3]
      242 CLOSEUPVALS                      R9
      243 RETURN                           R0 0
      244 GETIMPORT                        R36 K12 [require]
      246 GETTABLEKS                       R37 R0 K24 ["Bin"]
      248 GETTABLEKS                       R37 R37 K25 ["Common"]
      250 GETTABLEKS                       R37 R37 K59 ["setup"]
      252 CALL                             R36 1 1
      253 GETIMPORT                        R37 K12 [require]
      255 GETTABLEKS                       R38 R0 K24 ["Bin"]
      257 GETTABLEKS                       R38 R38 K25 ["Common"]
      259 GETTABLEKS                       R38 R38 K60 ["setupMain"]
      261 CALL                             R37 1 1
      262 MOVE                             R38 R36
      263 GETIMPORT                        R39 K1 [plugin]
      265 MOVE                             R40 R37
      266 CALL                             R38 2 0
      267 CLOSEUPVALS                      R9
      268 RETURN                           R0 0
