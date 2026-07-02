PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["finishOperation"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["startOperation"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 0
        6 NAMECALL                         R2 R0 K1 ["getPayload"]
        8 CALL                             R2 1 1
        9 GETUPVAL                         R6 1
       10 GETTABLEKS                       R6 R6 K2 ["MaterialSettings"]
       12 GETTABLE                         R5 R2 R6
       13 GETUPVAL                         R6 2
       14 GETTABLEKS                       R6 R6 K3 ["FillMode"]
       16 GETTABLE                         R4 R5 R6
       17 GETUPVAL                         R5 3
       18 GETTABLEKS                       R5 R5 K4 ["Fill"]
       20 JUMPIFNOTEQ                      R4 R5 ; [+28]
       22 GETTABLEKS                       R3 R0 K5 ["_localization"]
       24 LOADK                            R5 K6 ["Operations"]
       25 LOADK                            R6 K7 ["FillDescription"]
       26 DUPTABLE                         R7 K9 [{"material"}]
       27 GETTABLEKS                       R8 R0 K5 ["_localization"]
       29 LOADK                            R10 K10 ["Materials"]
       30 GETUPVAL                         R13 1
       31 GETTABLEKS                       R13 R13 K2 ["MaterialSettings"]
       33 GETTABLE                         R12 R2 R13
       34 GETUPVAL                         R13 2
       35 GETTABLEKS                       R13 R13 K11 ["SourceMaterial"]
       37 GETTABLE                         R11 R12 R13
       38 GETTABLEKS                       R11 R11 K12 ["Name"]
       40 NAMECALL                         R8 R8 K13 ["getText"]
       42 CALL                             R8 3 1
       43 SETTABLEKS                       R8 R7 K8 ["material"]
       45 NAMECALL                         R3 R3 K13 ["getText"]
       47 CALL                             R3 4 1
       48 JUMP                             ; [+44]
       49 GETTABLEKS                       R3 R0 K5 ["_localization"]
       51 LOADK                            R5 K6 ["Operations"]
       52 LOADK                            R6 K14 ["ReplaceDescription"]
       53 DUPTABLE                         R7 K17 [{"source", "target"}]
       54 GETTABLEKS                       R8 R0 K5 ["_localization"]
       56 LOADK                            R10 K10 ["Materials"]
       57 GETUPVAL                         R13 1
       58 GETTABLEKS                       R13 R13 K2 ["MaterialSettings"]
       60 GETTABLE                         R12 R2 R13
       61 GETUPVAL                         R13 2
       62 GETTABLEKS                       R13 R13 K11 ["SourceMaterial"]
       64 GETTABLE                         R11 R12 R13
       65 GETTABLEKS                       R11 R11 K12 ["Name"]
       67 NAMECALL                         R8 R8 K13 ["getText"]
       69 CALL                             R8 3 1
       70 SETTABLEKS                       R8 R7 K15 ["source"]
       72 GETTABLEKS                       R8 R0 K5 ["_localization"]
       74 LOADK                            R10 K10 ["Materials"]
       75 GETUPVAL                         R13 1
       76 GETTABLEKS                       R13 R13 K2 ["MaterialSettings"]
       78 GETTABLE                         R12 R2 R13
       79 GETUPVAL                         R13 2
       80 GETTABLEKS                       R13 R13 K18 ["TargetMaterial"]
       82 GETTABLE                         R11 R12 R13
       83 GETTABLEKS                       R11 R11 K12 ["Name"]
       85 NAMECALL                         R8 R8 K13 ["getText"]
       87 CALL                             R8 3 1
       88 SETTABLEKS                       R8 R7 K16 ["target"]
       90 NAMECALL                         R3 R3 K13 ["getText"]
       92 CALL                             R3 4 1
       93 GETUPVAL                         R4 4
       94 GETTABLEKS                       R5 R0 K5 ["_localization"]
       96 LOADK                            R7 K6 ["Operations"]
       97 LOADK                            R9 K19 ["%*Name"]
       98 GETUPVAL                         R13 1
       99 GETTABLEKS                       R13 R13 K2 ["MaterialSettings"]
      101 GETTABLE                         R12 R2 R13
      102 GETUPVAL                         R13 2
      103 GETTABLEKS                       R13 R13 K3 ["FillMode"]
      105 GETTABLE                         R11 R12 R13
      106 NAMECALL                         R9 R9 K20 ["format"]
      108 CALL                             R9 2 1
      109 MOVE                             R8 R9
      110 NAMECALL                         R5 R5 K13 ["getText"]
      112 CALL                             R5 3 1
      113 MOVE                             R6 R3
      114 GETTABLEKS                       R7 R0 K21 ["_services"]
      116 CALL                             R4 3 1
      117 SETTABLEKS                       R4 R0 K22 ["_operation"]
      119 GETTABLEKS                       R4 R0 K22 ["_operation"]
      121 GETTABLEKS                       R4 R4 K23 ["Finished"]
      123 NEWCLOSURE                       R6 P0
      124 CAPTURE                          VAL R0
      125 NAMECALL                         R4 R4 K24 ["Connect"]
      127 CALL                             R4 2 1
      128 SETTABLEKS                       R4 R0 K25 ["_operationFinishedConnection"]
      130 GETTABLEKS                       R4 R0 K22 ["_operation"]
      132 GETUPVAL                         R6 5
      133 GETTABLEKS                       R6 R6 K26 ["join"]
      135 DUPTABLE                         R7 K28 [{"Payload"}]
      136 SETTABLEKS                       R2 R7 K27 ["Payload"]
      138 MOVE                             R8 R1
      139 CALL                             R6 2 -1
      140 NAMECALL                         R4 R4 K29 ["start"]
      142 CALL                             R4 -1 0
      143 GETTABLEKS                       R4 R0 K30 ["OnOperationChanged"]
      145 NAMECALL                         R4 R4 K31 ["Fire"]
      147 CALL                             R4 1 0
      148 RETURN                           R0 0

PROTO_2:
        0 NAMECALL                         R1 R0 K0 ["hasError"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R4 R0 K1 ["_overrides"]
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R5 R5 K2 ["MaterialSettings"]
        8 GETTABLE                         R3 R4 R5
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R4 R4 K3 ["Apply"]
       12 GETTABLE                         R2 R3 R4
       13 GETTABLEKS                       R2 R2 K4 ["Disabled"]
       15 JUMPIFEQ                         R2 R1 ; [+18]
       17 GETTABLEKS                       R4 R0 K1 ["_overrides"]
       19 GETUPVAL                         R5 0
       20 GETTABLEKS                       R5 R5 K2 ["MaterialSettings"]
       22 GETTABLE                         R3 R4 R5
       23 GETUPVAL                         R4 1
       24 GETTABLEKS                       R4 R4 K3 ["Apply"]
       26 GETTABLE                         R2 R3 R4
       27 SETTABLEKS                       R1 R2 K4 ["Disabled"]
       29 GETTABLEKS                       R2 R0 K5 ["OnInternalsChanged"]
       31 NAMECALL                         R2 R2 K6 ["Fire"]
       33 CALL                             R2 1 0
       34 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["startOperation"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["init"]
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 MOVE                             R6 R2
        6 CALL                             R3 3 0
        7 NEWTABLE                         R3 4 0
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R4 R4 K1 ["MaterialSettings"]
       12 NEWTABLE                         R5 1 0
       14 GETUPVAL                         R6 2
       15 GETTABLEKS                       R6 R6 K2 ["Apply"]
       17 DUPTABLE                         R7 K10 [{["Hidden"] = False, ["Label"] = "", ["Schema"], ["Value"] = True}]
       18 DUPTABLE                         R8 K12 [{"OnClick"}]
       19 NEWCLOSURE                       R9 P0
       20 CAPTURE                          VAL R0
       21 SETTABLEKS                       R9 R8 K11 ["OnClick"]
       23 SETTABLEKS                       R8 R7 K7 ["Schema"]
       25 SETTABLE                         R7 R5 R6
       26 SETTABLE                         R5 R3 R4
       27 GETUPVAL                         R4 2
       28 GETTABLEKS                       R4 R4 K13 ["SourceMaterial"]
       30 DUPTABLE                         R5 K14 [{"Schema"}]
       31 DUPTABLE                         R6 K16 [{["AllowAir"] = True}]
       32 SETTABLEKS                       R6 R5 K7 ["Schema"]
       34 SETTABLE                         R5 R3 R4
       35 GETUPVAL                         R4 2
       36 GETTABLEKS                       R4 R4 K17 ["TargetMaterial"]
       38 DUPTABLE                         R5 K14 [{"Schema"}]
       39 DUPTABLE                         R6 K16 [{["AllowAir"] = True}]
       40 SETTABLEKS                       R6 R5 K7 ["Schema"]
       42 SETTABLE                         R5 R3 R4
       43 SETTABLEKS                       R3 R0 K18 ["_overrides"]
       45 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["_operation"]
        2 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["activate"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETTABLEKS                       R1 R0 K1 ["_analytics"]
        7 LOADK                            R3 K2 ["Activated"]
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R4 R4 K3 ["Fill"]
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
       38 GETTABLEKS                       R8 R3 K16 ["Tab"]
       40 GETTABLEKS                       R9 R3 K17 ["Tool"]
       42 GETTABLEKS                       R10 R0 K10 ["Src"]
       44 GETTABLEKS                       R10 R10 K18 ["Util"]
       46 GETIMPORT                        R11 K5 [require]
       48 GETTABLEKS                       R12 R10 K19 ["Operations"]
       50 GETTABLEKS                       R12 R12 K20 ["FillOperation"]
       52 CALL                             R11 1 1
       53 NEWTABLE                         R12 0 2
       55 DUPTABLE                         R13 K23 [{"Defaults", "Id"}]
       56 NEWTABLE                         R14 0 0
       58 SETTABLEKS                       R14 R13 K21 ["Defaults"]
       60 GETTABLEKS                       R14 R4 K24 ["SelectionSettings"]
       62 SETTABLEKS                       R14 R13 K22 ["Id"]
       64 DUPTABLE                         R14 K23 [{"Defaults", "Id"}]
       65 NEWTABLE                         R15 4 0
       67 GETTABLEKS                       R16 R7 K13 ["FillMode"]
       69 GETTABLEKS                       R17 R5 K25 ["Fill"]
       71 SETTABLE                         R17 R15 R16
       72 GETTABLEKS                       R16 R7 K26 ["SourceMaterial"]
       74 GETIMPORT                        R17 K30 [Enum.Material.Grass]
       76 SETTABLE                         R17 R15 R16
       77 GETTABLEKS                       R16 R7 K31 ["TargetMaterial"]
       79 GETIMPORT                        R17 K30 [Enum.Material.Grass]
       81 SETTABLE                         R17 R15 R16
       82 SETTABLEKS                       R15 R14 K21 ["Defaults"]
       84 GETTABLEKS                       R15 R4 K15 ["MaterialSettings"]
       86 SETTABLEKS                       R15 R14 K22 ["Id"]
       88 SETLIST                          R12 R13 2 [1]
       90 NEWTABLE                         R13 0 1
       92 DUPTABLE                         R14 K33 [{"Id", "Schema"}]
       93 GETTABLEKS                       R15 R6 K34 ["Region"]
       95 SETTABLEKS                       R15 R14 K22 ["Id"]
       97 DUPTABLE                         R15 K39 [{["Type"], ["Wireframe"] = False, ["Rotation"] = False}]
       98 GETTABLEKS                       R16 R6 K34 ["Region"]
      100 SETTABLEKS                       R16 R15 K35 ["Type"]
      102 SETTABLEKS                       R15 R14 K32 ["Schema"]
      104 SETLIST                          R13 R14 1 [1]
      106 GETTABLEKS                       R16 R9 K25 ["Fill"]
      108 GETTABLEKS                       R17 R8 K40 ["Edit"]
      110 MOVE                             R18 R12
      111 MOVE                             R19 R13
      112 NAMECALL                         R14 R2 K41 ["new"]
      114 CALL                             R14 5 1
      115 DUPCLOSURE                       R15 K42 [PROTO_1]
      116 CAPTURE                          VAL R2
      117 CAPTURE                          VAL R4
      118 CAPTURE                          VAL R7
      119 CAPTURE                          VAL R5
      120 CAPTURE                          VAL R11
      121 CAPTURE                          VAL R1
      122 SETTABLEKS                       R15 R14 K43 ["startOperation"]
      124 DUPCLOSURE                       R15 K44 [PROTO_2]
      125 CAPTURE                          VAL R4
      126 CAPTURE                          VAL R7
      127 SETTABLEKS                       R15 R14 K45 ["setDisabledState"]
      129 DUPCLOSURE                       R15 K46 [PROTO_4]
      130 CAPTURE                          VAL R2
      131 CAPTURE                          VAL R4
      132 CAPTURE                          VAL R7
      133 SETTABLEKS                       R15 R14 K47 ["init"]
      135 DUPCLOSURE                       R15 K48 [PROTO_5]
      136 SETTABLEKS                       R15 R14 K49 ["operation"]
      138 DUPCLOSURE                       R15 K50 [PROTO_6]
      139 CAPTURE                          VAL R2
      140 CAPTURE                          VAL R9
      141 SETTABLEKS                       R15 R14 K51 ["activate"]
      143 RETURN                           R14 1
