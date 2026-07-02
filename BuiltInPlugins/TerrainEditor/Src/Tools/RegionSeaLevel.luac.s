PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["startOperation"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 0
        6 GETTABLEKS                       R2 R0 K1 ["_operation"]
        8 MOVE                             R4 R1
        9 NAMECALL                         R2 R2 K2 ["start"]
       11 CALL                             R2 2 0
       12 GETTABLEKS                       R2 R0 K3 ["OnOperationChanged"]
       14 NAMECALL                         R2 R2 K4 ["Fire"]
       16 CALL                             R2 1 0
       17 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["finishOperation"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 NAMECALL                         R2 R0 K0 ["getPayload"]
        2 CALL                             R2 1 1
        3 NEWTABLE                         R3 2 0
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K1 ["MaterialSettings"]
        8 NEWTABLE                         R5 4 0
       10 GETUPVAL                         R6 1
       11 GETTABLEKS                       R6 R6 K2 ["FillMode"]
       13 GETUPVAL                         R7 2
       14 GETTABLEKS                       R7 R7 K3 ["Replace"]
       16 SETTABLE                         R7 R5 R6
       17 GETUPVAL                         R6 1
       18 GETTABLEKS                       R6 R6 K4 ["SourceMaterial"]
       20 GETIMPORT                        R7 K8 [Enum.Material.Air]
       22 SETTABLE                         R7 R5 R6
       23 GETUPVAL                         R6 1
       24 GETTABLEKS                       R6 R6 K9 ["TargetMaterial"]
       26 GETIMPORT                        R7 K11 [Enum.Material.Water]
       28 SETTABLE                         R7 R5 R6
       29 SETTABLE                         R5 R3 R4
       30 GETUPVAL                         R4 0
       31 GETTABLEKS                       R4 R4 K12 ["SelectionSettings"]
       33 NEWTABLE                         R5 2 0
       35 GETUPVAL                         R6 3
       36 GETTABLEKS                       R6 R6 K13 ["Size"]
       38 GETUPVAL                         R9 0
       39 GETTABLEKS                       R9 R9 K14 ["SeaLevelSettings"]
       41 GETTABLE                         R8 R2 R9
       42 GETUPVAL                         R9 4
       43 GETTABLEKS                       R9 R9 K13 ["Size"]
       45 GETTABLE                         R7 R8 R9
       46 SETTABLE                         R7 R5 R6
       47 GETUPVAL                         R6 3
       48 GETTABLEKS                       R6 R6 K15 ["Transform"]
       50 GETUPVAL                         R9 0
       51 GETTABLEKS                       R9 R9 K14 ["SeaLevelSettings"]
       53 GETTABLE                         R8 R2 R9
       54 GETUPVAL                         R9 4
       55 GETTABLEKS                       R9 R9 K15 ["Transform"]
       57 GETTABLE                         R7 R8 R9
       58 SETTABLE                         R7 R5 R6
       59 SETTABLE                         R5 R3 R4
       60 MOVE                             R2 R3
       61 GETTABLEKS                       R3 R0 K16 ["_localization"]
       63 LOADK                            R5 K17 ["Operations"]
       64 LOADK                            R6 K18 ["CreateName"]
       65 NAMECALL                         R3 R3 K19 ["getText"]
       67 CALL                             R3 3 1
       68 GETTABLEKS                       R4 R0 K16 ["_localization"]
       70 LOADK                            R6 K17 ["Operations"]
       71 LOADK                            R7 K20 ["CreateDescription"]
       72 NAMECALL                         R4 R4 K19 ["getText"]
       74 CALL                             R4 3 1
       75 GETUPVAL                         R5 5
       76 MOVE                             R6 R3
       77 MOVE                             R7 R4
       78 GETTABLEKS                       R8 R0 K21 ["_services"]
       80 CALL                             R5 3 1
       81 SETTABLEKS                       R5 R0 K22 ["_operation"]
       83 GETTABLEKS                       R5 R0 K22 ["_operation"]
       85 GETTABLEKS                       R5 R5 K23 ["Finished"]
       87 NEWCLOSURE                       R7 P0
       88 CAPTURE                          VAL R0
       89 NAMECALL                         R5 R5 K24 ["Connect"]
       91 CALL                             R5 2 1
       92 SETTABLEKS                       R5 R0 K25 ["_operationFinishedConnection"]
       94 GETUPVAL                         R7 6
       95 GETTABLEKS                       R7 R7 K26 ["join"]
       97 DUPTABLE                         R8 K28 [{"Payload"}]
       98 SETTABLEKS                       R2 R8 K27 ["Payload"]
      100 MOVE                             R9 R1
      101 CALL                             R7 2 -1
      102 NAMECALL                         R5 R0 K29 ["startOperation"]
      104 CALL                             R5 -1 0
      105 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["finishOperation"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 NAMECALL                         R2 R0 K0 ["getPayload"]
        2 CALL                             R2 1 1
        3 NEWTABLE                         R3 2 0
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K1 ["MaterialSettings"]
        8 NEWTABLE                         R5 4 0
       10 GETUPVAL                         R6 1
       11 GETTABLEKS                       R6 R6 K2 ["FillMode"]
       13 GETUPVAL                         R7 2
       14 GETTABLEKS                       R7 R7 K3 ["Replace"]
       16 SETTABLE                         R7 R5 R6
       17 GETUPVAL                         R6 1
       18 GETTABLEKS                       R6 R6 K4 ["SourceMaterial"]
       20 GETIMPORT                        R7 K8 [Enum.Material.Water]
       22 SETTABLE                         R7 R5 R6
       23 GETUPVAL                         R6 1
       24 GETTABLEKS                       R6 R6 K9 ["TargetMaterial"]
       26 GETIMPORT                        R7 K11 [Enum.Material.Air]
       28 SETTABLE                         R7 R5 R6
       29 SETTABLE                         R5 R3 R4
       30 GETUPVAL                         R4 0
       31 GETTABLEKS                       R4 R4 K12 ["SelectionSettings"]
       33 NEWTABLE                         R5 2 0
       35 GETUPVAL                         R6 3
       36 GETTABLEKS                       R6 R6 K13 ["Size"]
       38 GETUPVAL                         R9 0
       39 GETTABLEKS                       R9 R9 K14 ["SeaLevelSettings"]
       41 GETTABLE                         R8 R2 R9
       42 GETUPVAL                         R9 4
       43 GETTABLEKS                       R9 R9 K13 ["Size"]
       45 GETTABLE                         R7 R8 R9
       46 SETTABLE                         R7 R5 R6
       47 GETUPVAL                         R6 3
       48 GETTABLEKS                       R6 R6 K15 ["Transform"]
       50 GETUPVAL                         R9 0
       51 GETTABLEKS                       R9 R9 K14 ["SeaLevelSettings"]
       53 GETTABLE                         R8 R2 R9
       54 GETUPVAL                         R9 4
       55 GETTABLEKS                       R9 R9 K15 ["Transform"]
       57 GETTABLE                         R7 R8 R9
       58 SETTABLE                         R7 R5 R6
       59 SETTABLE                         R5 R3 R4
       60 MOVE                             R2 R3
       61 GETTABLEKS                       R3 R0 K16 ["_localization"]
       63 LOADK                            R5 K17 ["Operations"]
       64 LOADK                            R6 K18 ["EvaporateName"]
       65 NAMECALL                         R3 R3 K19 ["getText"]
       67 CALL                             R3 3 1
       68 GETTABLEKS                       R4 R0 K16 ["_localization"]
       70 LOADK                            R6 K17 ["Operations"]
       71 LOADK                            R7 K20 ["EvaporateDescription"]
       72 NAMECALL                         R4 R4 K19 ["getText"]
       74 CALL                             R4 3 1
       75 GETUPVAL                         R5 5
       76 MOVE                             R6 R3
       77 MOVE                             R7 R4
       78 GETTABLEKS                       R8 R0 K21 ["_services"]
       80 CALL                             R5 3 1
       81 SETTABLEKS                       R5 R0 K22 ["_operation"]
       83 GETTABLEKS                       R5 R0 K22 ["_operation"]
       85 GETTABLEKS                       R5 R5 K23 ["Finished"]
       87 NEWCLOSURE                       R7 P0
       88 CAPTURE                          VAL R0
       89 NAMECALL                         R5 R5 K24 ["Connect"]
       91 CALL                             R5 2 1
       92 SETTABLEKS                       R5 R0 K25 ["_operationFinishedConnection"]
       94 GETUPVAL                         R7 6
       95 GETTABLEKS                       R7 R7 K26 ["join"]
       97 DUPTABLE                         R8 K28 [{"Payload"}]
       98 SETTABLEKS                       R2 R8 K27 ["Payload"]
      100 MOVE                             R9 R1
      101 CALL                             R7 2 -1
      102 NAMECALL                         R5 R0 K29 ["startOperation"]
      104 CALL                             R5 -1 0
      105 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["evaporate"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["create"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["init"]
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 MOVE                             R6 R2
        6 CALL                             R3 3 0
        7 NEWTABLE                         R3 1 0
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R4 R4 K1 ["SeaLevelSettings"]
       12 NEWTABLE                         R5 2 0
       14 GETUPVAL                         R6 2
       15 GETTABLEKS                       R6 R6 K2 ["Evaporate"]
       17 DUPTABLE                         R7 K10 [{["Hidden"] = False, ["Label"] = "", ["Schema"], ["Value"] = True}]
       18 DUPTABLE                         R8 K12 [{"OnClick"}]
       19 NEWCLOSURE                       R9 P0
       20 CAPTURE                          VAL R0
       21 SETTABLEKS                       R9 R8 K11 ["OnClick"]
       23 SETTABLEKS                       R8 R7 K7 ["Schema"]
       25 SETTABLE                         R7 R5 R6
       26 GETUPVAL                         R6 2
       27 GETTABLEKS                       R6 R6 K13 ["Create"]
       29 DUPTABLE                         R7 K10 [{["Hidden"] = False, ["Label"] = "", ["Schema"], ["Value"] = True}]
       30 DUPTABLE                         R8 K12 [{"OnClick"}]
       31 NEWCLOSURE                       R9 P1
       32 CAPTURE                          VAL R0
       33 SETTABLEKS                       R9 R8 K11 ["OnClick"]
       35 SETTABLEKS                       R8 R7 K7 ["Schema"]
       37 SETTABLE                         R7 R5 R6
       38 SETTABLE                         R5 R3 R4
       39 SETTABLEKS                       R3 R0 K14 ["_overrides"]
       41 RETURN                           R0 0

PROTO_8:
        0 NAMECALL                         R1 R0 K0 ["hasError"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R4 R0 K1 ["_overrides"]
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R5 R5 K2 ["SeaLevelSettings"]
        8 GETTABLE                         R3 R4 R5
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R4 R4 K3 ["Evaporate"]
       12 GETTABLE                         R2 R3 R4
       13 GETTABLEKS                       R2 R2 K4 ["Disabled"]
       15 JUMPIFEQ                         R2 R1 ; [+44]
       17 GETTABLEKS                       R4 R0 K1 ["_overrides"]
       19 GETUPVAL                         R5 0
       20 GETTABLEKS                       R5 R5 K2 ["SeaLevelSettings"]
       22 GETTABLE                         R3 R4 R5
       23 GETUPVAL                         R4 1
       24 GETTABLEKS                       R4 R4 K5 ["Create"]
       26 GETTABLE                         R2 R3 R4
       27 GETTABLEKS                       R2 R2 K4 ["Disabled"]
       29 JUMPIFEQ                         R2 R1 ; [+30]
       31 GETTABLEKS                       R4 R0 K1 ["_overrides"]
       33 GETUPVAL                         R5 0
       34 GETTABLEKS                       R5 R5 K2 ["SeaLevelSettings"]
       36 GETTABLE                         R3 R4 R5
       37 GETUPVAL                         R4 1
       38 GETTABLEKS                       R4 R4 K3 ["Evaporate"]
       40 GETTABLE                         R2 R3 R4
       41 SETTABLEKS                       R1 R2 K4 ["Disabled"]
       43 GETTABLEKS                       R4 R0 K1 ["_overrides"]
       45 GETUPVAL                         R5 0
       46 GETTABLEKS                       R5 R5 K2 ["SeaLevelSettings"]
       48 GETTABLE                         R3 R4 R5
       49 GETUPVAL                         R4 1
       50 GETTABLEKS                       R4 R4 K5 ["Create"]
       52 GETTABLE                         R2 R3 R4
       53 SETTABLEKS                       R1 R2 K4 ["Disabled"]
       55 GETTABLEKS                       R2 R0 K6 ["OnInternalsChanged"]
       57 NAMECALL                         R2 R2 K7 ["Fire"]
       59 CALL                             R2 1 0
       60 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["_operation"]
        2 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["activate"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETTABLEKS                       R1 R0 K1 ["_analytics"]
        7 LOADK                            R3 K2 ["Activated"]
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R4 R4 K3 ["SeaLevel"]
       11 NAMECALL                         R1 R1 K4 ["report"]
       13 CALL                             R1 3 0
       14 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETIMPORT                        R3 K1 [script]
       18 GETTABLEKS                       R3 R3 K8 ["Parent"]
       20 GETTABLEKS                       R3 R3 K9 ["BaseTool"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K10 ["Src"]
       27 GETTABLEKS                       R4 R4 K11 ["Types"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K12 ["Category"]
       32 GETTABLEKS                       R5 R3 K13 ["FillMode"]
       34 GETTABLEKS                       R6 R3 K14 ["Gizmo"]
       36 GETTABLEKS                       R7 R3 K15 ["MaterialSettings"]
       38 GETTABLEKS                       R8 R3 K16 ["SeaLevelSettings"]
       40 GETTABLEKS                       R9 R3 K17 ["SelectionSettings"]
       42 GETTABLEKS                       R10 R3 K18 ["Tab"]
       44 GETTABLEKS                       R11 R3 K19 ["Tool"]
       46 GETTABLEKS                       R12 R0 K10 ["Src"]
       48 GETTABLEKS                       R12 R12 K20 ["Util"]
       50 GETIMPORT                        R13 K5 [require]
       52 GETTABLEKS                       R14 R12 K21 ["Operations"]
       54 GETTABLEKS                       R14 R14 K22 ["FillOperation"]
       56 CALL                             R13 1 1
       57 NEWTABLE                         R14 0 1
       59 DUPTABLE                         R15 K25 [{"Defaults", "Id"}]
       60 NEWTABLE                         R16 4 0
       62 GETTABLEKS                       R17 R8 K26 ["Size"]
       64 LOADK                            R18 K27 [{64, 32, 64}]
       65 SETTABLE                         R18 R16 R17
       66 GETTABLEKS                       R17 R8 K28 ["SnapToVoxels"]
       68 LOADB                            R18 1
       69 SETTABLE                         R18 R16 R17
       70 GETTABLEKS                       R17 R8 K29 ["Transform"]
       72 GETIMPORT                        R18 K32 [CFrame.new]
       74 CALL                             R18 0 1
       75 SETTABLE                         R18 R16 R17
       76 SETTABLEKS                       R16 R15 K23 ["Defaults"]
       78 GETTABLEKS                       R16 R4 K16 ["SeaLevelSettings"]
       80 SETTABLEKS                       R16 R15 K24 ["Id"]
       82 SETLIST                          R14 R15 1 [1]
       84 NEWTABLE                         R15 0 1
       86 DUPTABLE                         R16 K34 [{"Id", "Schema"}]
       87 GETTABLEKS                       R17 R6 K35 ["Region"]
       89 SETTABLEKS                       R17 R16 K24 ["Id"]
       91 DUPTABLE                         R17 K40 [{["Type"], ["Wireframe"] = False, ["Rotation"] = False}]
       92 GETTABLEKS                       R18 R6 K35 ["Region"]
       94 SETTABLEKS                       R18 R17 K36 ["Type"]
       96 SETTABLEKS                       R17 R16 K33 ["Schema"]
       98 SETLIST                          R15 R16 1 [1]
      100 GETTABLEKS                       R18 R11 K41 ["SeaLevel"]
      102 GETTABLEKS                       R19 R10 K42 ["Edit"]
      104 MOVE                             R20 R14
      105 MOVE                             R21 R15
      106 NAMECALL                         R16 R2 K31 ["new"]
      108 CALL                             R16 5 1
      109 DUPCLOSURE                       R17 K43 [PROTO_0]
      110 CAPTURE                          VAL R2
      111 SETTABLEKS                       R17 R16 K44 ["startOperation"]
      113 DUPCLOSURE                       R17 K45 [PROTO_2]
      114 CAPTURE                          VAL R4
      115 CAPTURE                          VAL R7
      116 CAPTURE                          VAL R5
      117 CAPTURE                          VAL R9
      118 CAPTURE                          VAL R8
      119 CAPTURE                          VAL R13
      120 CAPTURE                          VAL R1
      121 SETTABLEKS                       R17 R16 K46 ["create"]
      123 DUPCLOSURE                       R17 K47 [PROTO_4]
      124 CAPTURE                          VAL R4
      125 CAPTURE                          VAL R7
      126 CAPTURE                          VAL R5
      127 CAPTURE                          VAL R9
      128 CAPTURE                          VAL R8
      129 CAPTURE                          VAL R13
      130 CAPTURE                          VAL R1
      131 SETTABLEKS                       R17 R16 K48 ["evaporate"]
      133 DUPCLOSURE                       R17 K49 [PROTO_7]
      134 CAPTURE                          VAL R2
      135 CAPTURE                          VAL R4
      136 CAPTURE                          VAL R8
      137 SETTABLEKS                       R17 R16 K50 ["init"]
      139 DUPCLOSURE                       R17 K51 [PROTO_8]
      140 CAPTURE                          VAL R4
      141 CAPTURE                          VAL R8
      142 SETTABLEKS                       R17 R16 K52 ["setDisabledState"]
      144 DUPCLOSURE                       R17 K53 [PROTO_9]
      145 SETTABLEKS                       R17 R16 K54 ["operation"]
      147 DUPCLOSURE                       R17 K55 [PROTO_10]
      148 CAPTURE                          VAL R2
      149 CAPTURE                          VAL R11
      150 SETTABLEKS                       R17 R16 K56 ["activate"]
      152 RETURN                           R16 1
