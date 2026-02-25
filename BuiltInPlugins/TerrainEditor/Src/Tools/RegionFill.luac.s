PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["finishOperation"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["startOperation"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 0
        6 NAMECALL                         R2 R0 K1 ["getPayload"]
        8 CALL                             R2 1 1
        9 GETUPVAL                         R7 1
       10 GETTABLEKS                       R6 R7 K2 ["MaterialSettings"]
       12 GETTABLE                         R5 R2 R6
       13 GETUPVAL                         R7 2
       14 GETTABLEKS                       R6 R7 K3 ["FillMode"]
       16 GETTABLE                         R4 R5 R6
       17 GETUPVAL                         R6 3
       18 GETTABLEKS                       R5 R6 K4 ["Fill"]
       20 JUMPIFNOTEQ                      R4 R5 ; [+28]
       22 GETTABLEKS                       R3 R0 K5 ["_localization"]
       24 LOADK                            R5 K6 ["Operations"]
       25 LOADK                            R6 K7 ["FillDescription"]
       26 DUPTABLE                         R7 K9 [{"material"}]
       27 GETTABLEKS                       R8 R0 K5 ["_localization"]
       29 LOADK                            R10 K10 ["Materials"]
       30 GETUPVAL                         R15 1
       31 GETTABLEKS                       R14 R15 K2 ["MaterialSettings"]
       33 GETTABLE                         R13 R2 R14
       34 GETUPVAL                         R15 2
       35 GETTABLEKS                       R14 R15 K11 ["SourceMaterial"]
       37 GETTABLE                         R12 R13 R14
       38 GETTABLEKS                       R11 R12 K12 ["Name"]
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
       57 GETUPVAL                         R15 1
       58 GETTABLEKS                       R14 R15 K2 ["MaterialSettings"]
       60 GETTABLE                         R13 R2 R14
       61 GETUPVAL                         R15 2
       62 GETTABLEKS                       R14 R15 K11 ["SourceMaterial"]
       64 GETTABLE                         R12 R13 R14
       65 GETTABLEKS                       R11 R12 K12 ["Name"]
       67 NAMECALL                         R8 R8 K13 ["getText"]
       69 CALL                             R8 3 1
       70 SETTABLEKS                       R8 R7 K15 ["source"]
       72 GETTABLEKS                       R8 R0 K5 ["_localization"]
       74 LOADK                            R10 K10 ["Materials"]
       75 GETUPVAL                         R15 1
       76 GETTABLEKS                       R14 R15 K2 ["MaterialSettings"]
       78 GETTABLE                         R13 R2 R14
       79 GETUPVAL                         R15 2
       80 GETTABLEKS                       R14 R15 K18 ["TargetMaterial"]
       82 GETTABLE                         R12 R13 R14
       83 GETTABLEKS                       R11 R12 K12 ["Name"]
       85 NAMECALL                         R8 R8 K13 ["getText"]
       87 CALL                             R8 3 1
       88 SETTABLEKS                       R8 R7 K16 ["target"]
       90 NAMECALL                         R3 R3 K13 ["getText"]
       92 CALL                             R3 4 1
       93 GETUPVAL                         R4 4
       94 GETTABLEKS                       R5 R0 K5 ["_localization"]
       96 LOADK                            R7 K6 ["Operations"]
       97 LOADK                            R9 K19 ["%*Name"]
       98 GETUPVAL                         R14 1
       99 GETTABLEKS                       R13 R14 K2 ["MaterialSettings"]
      101 GETTABLE                         R12 R2 R13
      102 GETUPVAL                         R14 2
      103 GETTABLEKS                       R13 R14 K3 ["FillMode"]
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
      119 GETTABLEKS                       R5 R0 K22 ["_operation"]
      121 GETTABLEKS                       R4 R5 K23 ["Finished"]
      123 NEWCLOSURE                       R6 P0
      124 CAPTURE                          VAL R0
      125 NAMECALL                         R4 R4 K24 ["Connect"]
      127 CALL                             R4 2 1
      128 SETTABLEKS                       R4 R0 K25 ["_operationFinishedConnection"]
      130 GETTABLEKS                       R4 R0 K22 ["_operation"]
      132 GETUPVAL                         R7 5
      133 GETTABLEKS                       R6 R7 K26 ["join"]
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
        3 GETTABLEKS                       R5 R0 K1 ["_overrides"]
        5 GETUPVAL                         R7 0
        6 GETTABLEKS                       R6 R7 K2 ["MaterialSettings"]
        8 GETTABLE                         R4 R5 R6
        9 GETUPVAL                         R6 1
       10 GETTABLEKS                       R5 R6 K3 ["Apply"]
       12 GETTABLE                         R3 R4 R5
       13 GETTABLEKS                       R2 R3 K4 ["Disabled"]
       15 JUMPIFEQ                         R2 R1 ; [+18]
       17 GETTABLEKS                       R4 R0 K1 ["_overrides"]
       19 GETUPVAL                         R6 0
       20 GETTABLEKS                       R5 R6 K2 ["MaterialSettings"]
       22 GETTABLE                         R3 R4 R5
       23 GETUPVAL                         R5 1
       24 GETTABLEKS                       R4 R5 K3 ["Apply"]
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
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["init"]
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 MOVE                             R6 R2
        6 CALL                             R3 3 0
        7 NEWTABLE                         R3 4 0
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R4 R5 K1 ["MaterialSettings"]
       12 NEWTABLE                         R5 1 0
       14 GETUPVAL                         R7 2
       15 GETTABLEKS                       R6 R7 K2 ["Apply"]
       17 DUPTABLE                         R7 K7 [{"Hidden", "Label", "Schema", "Value"}]
       18 LOADB                            R8 0
       19 SETTABLEKS                       R8 R7 K3 ["Hidden"]
       21 LOADK                            R8 K8 [""]
       22 SETTABLEKS                       R8 R7 K4 ["Label"]
       24 DUPTABLE                         R8 K10 [{"OnClick"}]
       25 NEWCLOSURE                       R9 P0
       26 CAPTURE                          VAL R0
       27 SETTABLEKS                       R9 R8 K9 ["OnClick"]
       29 SETTABLEKS                       R8 R7 K5 ["Schema"]
       31 LOADB                            R8 1
       32 SETTABLEKS                       R8 R7 K6 ["Value"]
       34 SETTABLE                         R7 R5 R6
       35 SETTABLE                         R5 R3 R4
       36 GETUPVAL                         R5 2
       37 GETTABLEKS                       R4 R5 K11 ["SourceMaterial"]
       39 DUPTABLE                         R5 K12 [{"Schema"}]
       40 DUPTABLE                         R6 K14 [{"AllowAir"}]
       41 LOADB                            R7 1
       42 SETTABLEKS                       R7 R6 K13 ["AllowAir"]
       44 SETTABLEKS                       R6 R5 K5 ["Schema"]
       46 SETTABLE                         R5 R3 R4
       47 GETUPVAL                         R5 2
       48 GETTABLEKS                       R4 R5 K15 ["TargetMaterial"]
       50 DUPTABLE                         R5 K12 [{"Schema"}]
       51 DUPTABLE                         R6 K14 [{"AllowAir"}]
       52 LOADB                            R7 1
       53 SETTABLEKS                       R7 R6 K13 ["AllowAir"]
       55 SETTABLEKS                       R6 R5 K5 ["Schema"]
       57 SETTABLE                         R5 R3 R4
       58 SETTABLEKS                       R3 R0 K16 ["_overrides"]
       60 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["_operation"]
        2 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["activate"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETTABLEKS                       R1 R0 K1 ["_analytics"]
        7 LOADK                            R3 K2 ["Activated"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R4 R5 K3 ["Fill"]
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
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETIMPORT                        R5 K1 [script]
       18 GETTABLEKS                       R4 R5 K8 ["Parent"]
       20 GETTABLEKS                       R3 R4 K9 ["BaseTool"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K10 ["Src"]
       27 GETTABLEKS                       R4 R5 K11 ["Types"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K12 ["Category"]
       32 GETTABLEKS                       R5 R3 K13 ["FillMode"]
       34 GETTABLEKS                       R6 R3 K14 ["Gizmo"]
       36 GETTABLEKS                       R7 R3 K15 ["MaterialSettings"]
       38 GETTABLEKS                       R8 R3 K16 ["Tab"]
       40 GETTABLEKS                       R9 R3 K17 ["Tool"]
       42 GETTABLEKS                       R11 R0 K10 ["Src"]
       44 GETTABLEKS                       R10 R11 K18 ["Util"]
       46 GETIMPORT                        R11 K5 [require]
       48 GETTABLEKS                       R13 R10 K19 ["Operations"]
       50 GETTABLEKS                       R12 R13 K20 ["FillOperation"]
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
       97 DUPTABLE                         R15 K38 [{"Type", "Wireframe", "Rotation"}]
       98 GETTABLEKS                       R16 R6 K34 ["Region"]
      100 SETTABLEKS                       R16 R15 K35 ["Type"]
      102 LOADB                            R16 0
      103 SETTABLEKS                       R16 R15 K36 ["Wireframe"]
      105 LOADB                            R16 0
      106 SETTABLEKS                       R16 R15 K37 ["Rotation"]
      108 SETTABLEKS                       R15 R14 K32 ["Schema"]
      110 SETLIST                          R13 R14 1 [1]
      112 GETTABLEKS                       R16 R9 K25 ["Fill"]
      114 GETTABLEKS                       R17 R8 K39 ["Edit"]
      116 MOVE                             R18 R12
      117 MOVE                             R19 R13
      118 NAMECALL                         R14 R2 K40 ["new"]
      120 CALL                             R14 5 1
      121 DUPCLOSURE                       R15 K41 [PROTO_1]
      122 CAPTURE                          VAL R2
      123 CAPTURE                          VAL R4
      124 CAPTURE                          VAL R7
      125 CAPTURE                          VAL R5
      126 CAPTURE                          VAL R11
      127 CAPTURE                          VAL R1
      128 SETTABLEKS                       R15 R14 K42 ["startOperation"]
      130 DUPCLOSURE                       R15 K43 [PROTO_2]
      131 CAPTURE                          VAL R4
      132 CAPTURE                          VAL R7
      133 SETTABLEKS                       R15 R14 K44 ["setDisabledState"]
      135 DUPCLOSURE                       R15 K45 [PROTO_4]
      136 CAPTURE                          VAL R2
      137 CAPTURE                          VAL R4
      138 CAPTURE                          VAL R7
      139 SETTABLEKS                       R15 R14 K46 ["init"]
      141 DUPCLOSURE                       R15 K47 [PROTO_5]
      142 SETTABLEKS                       R15 R14 K48 ["operation"]
      144 DUPCLOSURE                       R15 K49 [PROTO_6]
      145 CAPTURE                          VAL R2
      146 CAPTURE                          VAL R9
      147 SETTABLEKS                       R15 R14 K50 ["activate"]
      149 RETURN                           R14 1
