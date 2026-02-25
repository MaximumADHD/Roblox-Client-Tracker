PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["hasError"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R5 R0 K1 ["_overrides"]
        5 GETUPVAL                         R7 0
        6 GETTABLEKS                       R6 R7 K2 ["BuildSettings"]
        8 GETTABLE                         R4 R5 R6
        9 GETUPVAL                         R6 1
       10 GETTABLEKS                       R5 R6 K3 ["Confirm"]
       12 GETTABLE                         R3 R4 R5
       13 GETTABLEKS                       R2 R3 K4 ["Disabled"]
       15 JUMPIFEQ                         R2 R1 ; [+18]
       17 GETTABLEKS                       R4 R0 K1 ["_overrides"]
       19 GETUPVAL                         R6 0
       20 GETTABLEKS                       R5 R6 K2 ["BuildSettings"]
       22 GETTABLE                         R3 R4 R5
       23 GETUPVAL                         R5 1
       24 GETTABLEKS                       R4 R5 K3 ["Confirm"]
       26 GETTABLE                         R2 R3 R4
       27 SETTABLEKS                       R1 R2 K4 ["Disabled"]
       29 GETTABLEKS                       R2 R0 K5 ["OnInternalsChanged"]
       31 NAMECALL                         R2 R2 K6 ["Fire"]
       33 CALL                             R2 1 0
       34 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R2 1 0
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K0 ["BuildSettings"]
        6 NEWTABLE                         R4 1 0
        8 GETUPVAL                         R6 2
        9 GETTABLEKS                       R5 R6 K1 ["Material"]
       11 GETUPVAL                         R6 3
       12 GETUPVAL                         R13 0
       13 GETTABLEKS                       R12 R13 K2 ["_tools"]
       15 GETUPVAL                         R14 0
       16 GETTABLEKS                       R13 R14 K3 ["_terrainType"]
       18 GETTABLE                         R11 R12 R13
       19 GETTABLEKS                       R10 R11 K4 ["_configuration"]
       21 GETTABLEN                        R9 R10 1
       22 GETTABLEKS                       R8 R9 K5 ["Defaults"]
       24 GETUPVAL                         R10 2
       25 GETTABLEKS                       R9 R10 K1 ["Material"]
       27 GETTABLE                         R7 R8 R9
       28 CALL                             R6 1 1
       29 SETTABLE                         R6 R4 R5
       30 SETTABLE                         R4 R2 R3
       31 NAMECALL                         R0 R0 K6 ["saveForm"]
       33 CALL                             R0 2 0
       34 GETUPVAL                         R1 0
       35 GETTABLEKS                       R0 R1 K7 ["OnInternalsChanged"]
       37 NAMECALL                         R0 R0 K8 ["Fire"]
       39 CALL                             R0 1 0
       40 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R5 R6 K0 ["_tools"]
        3 GETUPVAL                         R7 0
        4 GETTABLEKS                       R6 R7 K1 ["_terrainType"]
        6 GETTABLE                         R4 R5 R6
        7 GETTABLEKS                       R3 R4 K2 ["_overrides"]
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R4 R5 K3 ["BuildSettings"]
       12 GETTABLE                         R2 R3 R4
       13 GETUPVAL                         R4 2
       14 GETTABLEKS                       R3 R4 K4 ["Confirm"]
       16 GETTABLE                         R1 R2 R3
       17 GETTABLEKS                       R0 R1 K5 ["Schema"]
       19 LOADB                            R1 0
       20 SETTABLEKS                       R1 R0 K6 ["CanRegenerate"]
       22 LOADB                            R1 0
       23 SETTABLEKS                       R1 R0 K7 ["CanConfirm"]
       25 GETUPVAL                         R2 0
       26 GETTABLEKS                       R1 R2 K8 ["OnInternalsChanged"]
       28 NAMECALL                         R1 R1 K9 ["Fire"]
       30 CALL                             R1 1 0
       31 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["_stamp"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 1
        6 CALL                             R0 0 1
        7 JUMPIFNOT                        R0 ; [+29]
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R0 R1 K1 ["_analytics"]
       11 LOADK                            R2 K2 ["Usage"]
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R3 R4 K3 ["_terrainType"]
       15 LOADN                            R4 1
       16 NAMECALL                         R0 R0 K4 ["report"]
       18 CALL                             R0 4 0
       19 GETUPVAL                         R1 0
       20 GETTABLEKS                       R0 R1 K0 ["_stamp"]
       22 NAMECALL                         R0 R0 K5 ["getAverageFrameTime"]
       24 CALL                             R0 1 1
       25 JUMPIFNOT                        R0 ; [+11]
       26 GETUPVAL                         R2 0
       27 GETTABLEKS                       R1 R2 K1 ["_analytics"]
       29 LOADK                            R3 K6 ["Performance"]
       30 GETUPVAL                         R5 0
       31 GETTABLEKS                       R4 R5 K3 ["_terrainType"]
       33 MOVE                             R5 R0
       34 NAMECALL                         R1 R1 K4 ["report"]
       36 CALL                             R1 4 0
       37 GETUPVAL                         R1 0
       38 GETTABLEKS                       R0 R1 K0 ["_stamp"]
       40 NAMECALL                         R0 R0 K7 ["commit"]
       42 CALL                             R0 1 0
       43 GETUPVAL                         R0 0
       44 LOADNIL                          R1
       45 SETTABLEKS                       R1 R0 K0 ["_stamp"]
       47 GETUPVAL                         R0 0
       48 GETIMPORT                        R2 K11 [Enum.FinishRecordingOperation.Append]
       50 NAMECALL                         R0 R0 K12 ["finishRecording"]
       52 CALL                             R0 2 0
       53 GETUPVAL                         R2 0
       54 GETTABLEKS                       R1 R2 K13 ["_tools"]
       56 GETUPVAL                         R3 0
       57 GETTABLEKS                       R2 R3 K3 ["_terrainType"]
       59 GETTABLE                         R0 R1 R2
       60 NAMECALL                         R0 R0 K14 ["getPayload"]
       62 CALL                             R0 1 1
       63 GETUPVAL                         R1 0
       64 GETUPVAL                         R3 0
       65 GETTABLEKS                       R2 R3 K3 ["_terrainType"]
       67 SETTABLEKS                       R2 R1 K15 ["_previousTerrainType"]
       69 GETUPVAL                         R1 0
       70 GETUPVAL                         R5 2
       71 GETTABLEKS                       R4 R5 K16 ["BuildSettings"]
       73 GETTABLE                         R3 R0 R4
       74 GETUPVAL                         R5 3
       75 GETTABLEKS                       R4 R5 K17 ["Transform"]
       77 GETTABLE                         R2 R3 R4
       78 SETTABLEKS                       R2 R1 K18 ["_previousTerrainTransform"]
       80 GETUPVAL                         R1 0
       81 GETUPVAL                         R5 2
       82 GETTABLEKS                       R4 R5 K16 ["BuildSettings"]
       84 GETTABLE                         R3 R0 R4
       85 GETUPVAL                         R5 3
       86 GETTABLEKS                       R4 R5 K19 ["Size"]
       88 GETTABLE                         R2 R3 R4
       89 SETTABLEKS                       R2 R1 K20 ["_previousTerrainSize"]
       91 GETUPVAL                         R1 0
       92 NEWTABLE                         R3 1 0
       94 GETUPVAL                         R5 2
       95 GETTABLEKS                       R4 R5 K16 ["BuildSettings"]
       97 NEWTABLE                         R5 1 0
       99 GETUPVAL                         R7 3
      100 GETTABLEKS                       R6 R7 K21 ["TerrainType"]
      102 GETUPVAL                         R8 4
      103 GETTABLEKS                       R7 R8 K22 ["None"]
      105 SETTABLE                         R7 R5 R6
      106 SETTABLE                         R5 R3 R4
      107 NAMECALL                         R1 R1 K23 ["saveForm"]
      109 CALL                             R1 2 0
      110 GETUPVAL                         R7 0
      111 GETTABLEKS                       R6 R7 K13 ["_tools"]
      113 GETUPVAL                         R8 0
      114 GETTABLEKS                       R7 R8 K3 ["_terrainType"]
      116 GETTABLE                         R5 R6 R7
      117 GETTABLEKS                       R4 R5 K24 ["_overrides"]
      119 GETUPVAL                         R6 2
      120 GETTABLEKS                       R5 R6 K16 ["BuildSettings"]
      122 GETTABLE                         R3 R4 R5
      123 GETUPVAL                         R5 3
      124 GETTABLEKS                       R4 R5 K25 ["Confirm"]
      126 GETTABLE                         R2 R3 R4
      127 GETTABLEKS                       R1 R2 K26 ["Schema"]
      129 LOADB                            R2 0
      130 SETTABLEKS                       R2 R1 K27 ["CanConfirm"]
      132 GETUPVAL                         R7 0
      133 GETTABLEKS                       R6 R7 K13 ["_tools"]
      135 GETUPVAL                         R8 0
      136 GETTABLEKS                       R7 R8 K3 ["_terrainType"]
      138 GETTABLE                         R5 R6 R7
      139 GETTABLEKS                       R4 R5 K24 ["_overrides"]
      141 GETUPVAL                         R6 2
      142 GETTABLEKS                       R5 R6 K16 ["BuildSettings"]
      144 GETTABLE                         R3 R4 R5
      145 GETUPVAL                         R5 3
      146 GETTABLEKS                       R4 R5 K25 ["Confirm"]
      148 GETTABLE                         R2 R3 R4
      149 GETTABLEKS                       R1 R2 K26 ["Schema"]
      151 LOADB                            R2 1
      152 SETTABLEKS                       R2 R1 K28 ["CanRegenerate"]
      154 GETUPVAL                         R6 0
      155 GETTABLEKS                       R5 R6 K13 ["_tools"]
      157 GETUPVAL                         R7 0
      158 GETTABLEKS                       R6 R7 K3 ["_terrainType"]
      160 GETTABLE                         R4 R5 R6
      161 GETTABLEKS                       R3 R4 K24 ["_overrides"]
      163 GETUPVAL                         R5 2
      164 GETTABLEKS                       R4 R5 K16 ["BuildSettings"]
      166 GETTABLE                         R2 R3 R4
      167 GETUPVAL                         R4 3
      168 GETTABLEKS                       R3 R4 K29 ["Material"]
      170 GETTABLE                         R1 R2 R3
      171 LOADB                            R2 1
      172 SETTABLEKS                       R2 R1 K30 ["Disabled"]
      174 GETUPVAL                         R1 0
      175 GETUPVAL                         R3 4
      176 GETTABLEKS                       R2 R3 K22 ["None"]
      178 SETTABLEKS                       R2 R1 K3 ["_terrainType"]
      180 GETUPVAL                         R2 0
      181 GETTABLEKS                       R1 R2 K31 ["_onUndoConnection"]
      183 JUMPIFNOT                        R1 ; [+6]
      184 GETUPVAL                         R2 0
      185 GETTABLEKS                       R1 R2 K31 ["_onUndoConnection"]
      187 NAMECALL                         R1 R1 K32 ["Disconnect"]
      189 CALL                             R1 1 0
      190 GETUPVAL                         R1 0
      191 GETUPVAL                         R5 0
      192 GETTABLEKS                       R4 R5 K33 ["_services"]
      194 GETTABLEKS                       R3 R4 K34 ["ChangeHistoryService"]
      196 GETTABLEKS                       R2 R3 K35 ["OnUndo"]
      198 NEWCLOSURE                       R4 P0
      199 CAPTURE                          UPVAL U0
      200 CAPTURE                          UPVAL U2
      201 CAPTURE                          UPVAL U3
      202 NAMECALL                         R2 R2 K36 ["Connect"]
      204 CALL                             R2 2 1
      205 SETTABLEKS                       R2 R1 K31 ["_onUndoConnection"]
      207 GETUPVAL                         R2 0
      208 GETTABLEKS                       R1 R2 K37 ["OnInternalsChanged"]
      210 NAMECALL                         R1 R1 K38 ["Fire"]
      212 CALL                             R1 1 0
      213 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 SETTABLEKS                       R1 R0 K0 ["_stamp"]
        4 GETUPVAL                         R0 0
        5 NEWTABLE                         R2 1 0
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R3 R4 K1 ["BuildSettings"]
       10 NEWTABLE                         R4 1 0
       12 GETUPVAL                         R6 2
       13 GETTABLEKS                       R5 R6 K2 ["TerrainType"]
       15 GETUPVAL                         R7 3
       16 GETTABLEKS                       R6 R7 K3 ["None"]
       18 SETTABLE                         R6 R4 R5
       19 SETTABLE                         R4 R2 R3
       20 NAMECALL                         R0 R0 K4 ["saveForm"]
       22 CALL                             R0 2 0
       23 GETUPVAL                         R6 0
       24 GETTABLEKS                       R5 R6 K5 ["_tools"]
       26 GETUPVAL                         R7 0
       27 GETTABLEKS                       R6 R7 K6 ["_terrainType"]
       29 GETTABLE                         R4 R5 R6
       30 GETTABLEKS                       R3 R4 K7 ["_overrides"]
       32 GETUPVAL                         R5 1
       33 GETTABLEKS                       R4 R5 K1 ["BuildSettings"]
       35 GETTABLE                         R2 R3 R4
       36 GETUPVAL                         R4 2
       37 GETTABLEKS                       R3 R4 K8 ["Confirm"]
       39 GETTABLE                         R1 R2 R3
       40 GETTABLEKS                       R0 R1 K9 ["Schema"]
       42 LOADB                            R1 0
       43 SETTABLEKS                       R1 R0 K10 ["CanRegenerate"]
       45 LOADB                            R1 0
       46 SETTABLEKS                       R1 R0 K11 ["CanConfirm"]
       48 GETUPVAL                         R2 0
       49 GETTABLEKS                       R1 R2 K12 ["OnInternalsChanged"]
       51 NAMECALL                         R1 R1 K13 ["Fire"]
       53 CALL                             R1 1 0
       54 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["_previousTerrainType"]
        3 JUMPIFNOT                        R0 ; [+126]
        4 GETUPVAL                         R0 0
        5 NEWTABLE                         R2 1 0
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R3 R4 K1 ["BuildSettings"]
       10 NEWTABLE                         R4 1 0
       12 GETUPVAL                         R6 2
       13 GETTABLEKS                       R5 R6 K2 ["TerrainType"]
       15 GETUPVAL                         R7 0
       16 GETTABLEKS                       R6 R7 K0 ["_previousTerrainType"]
       18 SETTABLE                         R6 R4 R5
       19 SETTABLE                         R4 R2 R3
       20 NAMECALL                         R0 R0 K3 ["setTerrainType"]
       22 CALL                             R0 2 1
       23 GETUPVAL                         R3 1
       24 GETTABLEKS                       R2 R3 K1 ["BuildSettings"]
       26 GETTABLE                         R1 R0 R2
       27 GETUPVAL                         R3 2
       28 GETTABLEKS                       R2 R3 K4 ["PlacementMode"]
       30 LOADB                            R3 0
       31 SETTABLE                         R3 R1 R2
       32 GETUPVAL                         R1 0
       33 MOVE                             R3 R0
       34 NAMECALL                         R1 R1 K5 ["setPlacementMode"]
       36 CALL                             R1 2 1
       37 MOVE                             R0 R1
       38 GETUPVAL                         R3 1
       39 GETTABLEKS                       R2 R3 K1 ["BuildSettings"]
       41 GETTABLE                         R1 R0 R2
       42 GETUPVAL                         R3 2
       43 GETTABLEKS                       R2 R3 K6 ["Transform"]
       45 GETUPVAL                         R5 0
       46 GETTABLEKS                       R4 R5 K7 ["_previousTerrainTransform"]
       48 GETUPVAL                         R6 3
       49 CALL                             R6 0 1
       50 GETUPVAL                         R8 0
       51 GETTABLEKS                       R7 R8 K8 ["_previousTerrainSize"]
       53 MUL                              R5 R6 R7
       54 ADD                              R3 R4 R5
       55 SETTABLE                         R3 R1 R2
       56 GETUPVAL                         R3 0
       57 GETTABLEKS                       R2 R3 K9 ["_tools"]
       59 GETUPVAL                         R4 0
       60 GETTABLEKS                       R3 R4 K10 ["_terrainType"]
       62 GETTABLE                         R1 R2 R3
       63 MOVE                             R3 R0
       64 NAMECALL                         R1 R1 K11 ["saveForm"]
       66 CALL                             R1 2 0
       67 GETUPVAL                         R2 0
       68 GETTABLEKS                       R1 R2 K12 ["_onUndoConnection"]
       70 JUMPIFNOT                        R1 ; [+6]
       71 GETUPVAL                         R2 0
       72 GETTABLEKS                       R1 R2 K12 ["_onUndoConnection"]
       74 NAMECALL                         R1 R1 K13 ["Disconnect"]
       76 CALL                             R1 1 0
       77 GETUPVAL                         R1 0
       78 GETUPVAL                         R5 0
       79 GETTABLEKS                       R4 R5 K14 ["_services"]
       81 GETTABLEKS                       R3 R4 K15 ["ChangeHistoryService"]
       83 GETTABLEKS                       R2 R3 K16 ["OnUndo"]
       85 NEWCLOSURE                       R4 P0
       86 CAPTURE                          UPVAL U0
       87 CAPTURE                          UPVAL U1
       88 CAPTURE                          UPVAL U2
       89 CAPTURE                          UPVAL U4
       90 NAMECALL                         R2 R2 K17 ["Connect"]
       92 CALL                             R2 2 1
       93 SETTABLEKS                       R2 R1 K12 ["_onUndoConnection"]
       95 GETUPVAL                         R7 0
       96 GETTABLEKS                       R6 R7 K9 ["_tools"]
       98 GETUPVAL                         R8 0
       99 GETTABLEKS                       R7 R8 K10 ["_terrainType"]
      101 GETTABLE                         R5 R6 R7
      102 GETTABLEKS                       R4 R5 K18 ["_overrides"]
      104 GETUPVAL                         R6 1
      105 GETTABLEKS                       R5 R6 K1 ["BuildSettings"]
      107 GETTABLE                         R3 R4 R5
      108 GETUPVAL                         R5 2
      109 GETTABLEKS                       R4 R5 K19 ["Confirm"]
      111 GETTABLE                         R2 R3 R4
      112 GETTABLEKS                       R1 R2 K20 ["Schema"]
      114 LOADB                            R2 0
      115 SETTABLEKS                       R2 R1 K21 ["CanRegenerate"]
      117 LOADB                            R2 1
      118 SETTABLEKS                       R2 R1 K22 ["CanConfirm"]
      120 GETUPVAL                         R3 0
      121 GETTABLEKS                       R2 R3 K23 ["OnInternalsChanged"]
      123 NAMECALL                         R2 R2 K24 ["Fire"]
      125 CALL                             R2 1 0
      126 GETUPVAL                         R2 0
      127 NAMECALL                         R2 R2 K25 ["createStamp"]
      129 CALL                             R2 1 0
      130 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["init"]
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 MOVE                             R6 R2
        6 CALL                             R3 3 0
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R3 R4 K1 ["None"]
       10 SETTABLEKS                       R3 R0 K2 ["_terrainType"]
       12 NEWTABLE                         R3 0 0
       14 SETTABLEKS                       R3 R0 K3 ["_tools"]
       16 GETUPVAL                         R3 2
       17 LOADNIL                          R4
       18 LOADNIL                          R5
       19 FORGPREP                         R3
       20 NAMECALL                         R8 R7 K4 ["new"]
       22 CALL                             R8 1 1
       23 MOVE                             R11 R1
       24 MOVE                             R12 R2
       25 NAMECALL                         R9 R8 K0 ["init"]
       27 CALL                             R9 3 0
       28 DUPCLOSURE                       R9 K5 [PROTO_0]
       29 CAPTURE                          UPVAL U3
       30 CAPTURE                          UPVAL U4
       31 SETTABLEKS                       R9 R8 K6 ["setDisabledState"]
       33 GETTABLEKS                       R9 R0 K3 ["_tools"]
       35 SETTABLE                         R8 R9 R6
       36 GETTABLEKS                       R10 R0 K3 ["_tools"]
       38 GETTABLE                         R9 R10 R6
       39 NEWTABLE                         R10 1 0
       41 GETUPVAL                         R12 3
       42 GETTABLEKS                       R11 R12 K7 ["BuildSettings"]
       44 NEWTABLE                         R12 2 0
       46 GETUPVAL                         R14 4
       47 GETTABLEKS                       R13 R14 K8 ["Material"]
       49 DUPTABLE                         R14 K11 [{"Disabled", "Schema"}]
       50 LOADB                            R15 1
       51 SETTABLEKS                       R15 R14 K9 ["Disabled"]
       53 DUPTABLE                         R15 K13 [{"OnReset"}]
       54 NEWCLOSURE                       R16 P1
       55 CAPTURE                          VAL R0
       56 CAPTURE                          UPVAL U3
       57 CAPTURE                          UPVAL U4
       58 CAPTURE                          UPVAL U5
       59 SETTABLEKS                       R16 R15 K12 ["OnReset"]
       61 SETTABLEKS                       R15 R14 K10 ["Schema"]
       63 SETTABLE                         R14 R12 R13
       64 GETUPVAL                         R14 4
       65 GETTABLEKS                       R13 R14 K14 ["Confirm"]
       67 DUPTABLE                         R14 K17 [{"Hidden", "Label", "Schema"}]
       68 LOADB                            R15 0
       69 SETTABLEKS                       R15 R14 K15 ["Hidden"]
       71 LOADK                            R15 K18 [""]
       72 SETTABLEKS                       R15 R14 K16 ["Label"]
       74 DUPTABLE                         R15 K23 [{"CanConfirm", "CanRegenerate", "OnClick", "OnRegenerate"}]
       75 LOADB                            R16 0
       76 SETTABLEKS                       R16 R15 K19 ["CanConfirm"]
       78 LOADB                            R16 0
       79 SETTABLEKS                       R16 R15 K20 ["CanRegenerate"]
       81 NEWCLOSURE                       R16 P2
       82 CAPTURE                          VAL R0
       83 CAPTURE                          UPVAL U6
       84 CAPTURE                          UPVAL U3
       85 CAPTURE                          UPVAL U4
       86 CAPTURE                          UPVAL U1
       87 SETTABLEKS                       R16 R15 K21 ["OnClick"]
       89 NEWCLOSURE                       R16 P3
       90 CAPTURE                          VAL R0
       91 CAPTURE                          UPVAL U3
       92 CAPTURE                          UPVAL U4
       93 CAPTURE                          UPVAL U7
       94 CAPTURE                          UPVAL U1
       95 SETTABLEKS                       R16 R15 K22 ["OnRegenerate"]
       97 SETTABLEKS                       R15 R14 K10 ["Schema"]
       99 SETTABLE                         R14 R12 R13
      100 SETTABLE                         R12 R10 R11
      101 SETTABLEKS                       R10 R9 K24 ["_overrides"]
      103 FORGLOOP                         R3 2 ; [-84]
      105 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R2 R0 K0 ["_tools"]
        2 GETTABLEKS                       R3 R0 K1 ["_terrainType"]
        4 GETTABLE                         R1 R2 R3
        5 NAMECALL                         R1 R1 K2 ["form"]
        7 CALL                             R1 1 -1
        8 RETURN                           R1 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["OnFormChanged"]
        3 NAMECALL                         R0 R0 K1 ["Fire"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["OnGizmoChanged"]
        3 NAMECALL                         R0 R0 K1 ["Fire"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["OnInternalsChanged"]
        3 NAMECALL                         R0 R0 K1 ["Fire"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["BuildSettings"]
        3 GETTABLE                         R3 R1 R4
        4 GETUPVAL                         R5 1
        5 GETTABLEKS                       R4 R5 K1 ["TerrainType"]
        7 GETTABLE                         R2 R3 R4
        8 JUMPIF                           R2 ; [+1]
        9 RETURN                           R1 1
       10 NAMECALL                         R3 R0 K2 ["destroyStamp"]
       12 CALL                             R3 1 0
       13 GETTABLEKS                       R3 R0 K3 ["_onFormChangedForwarder"]
       15 JUMPIFNOT                        R3 ; [+5]
       16 GETTABLEKS                       R3 R0 K3 ["_onFormChangedForwarder"]
       18 NAMECALL                         R3 R3 K4 ["Disconnect"]
       20 CALL                             R3 1 0
       21 GETTABLEKS                       R3 R0 K5 ["_onGizmoChangedForwarder"]
       23 JUMPIFNOT                        R3 ; [+5]
       24 GETTABLEKS                       R3 R0 K5 ["_onGizmoChangedForwarder"]
       26 NAMECALL                         R3 R3 K4 ["Disconnect"]
       28 CALL                             R3 1 0
       29 GETTABLEKS                       R3 R0 K6 ["_onInternalsChangedForwarder"]
       31 JUMPIFNOT                        R3 ; [+5]
       32 GETTABLEKS                       R3 R0 K6 ["_onInternalsChangedForwarder"]
       34 NAMECALL                         R3 R3 K4 ["Disconnect"]
       36 CALL                             R3 1 0
       37 GETTABLEKS                       R3 R0 K7 ["_onUndoConnection"]
       39 JUMPIFNOT                        R3 ; [+5]
       40 GETTABLEKS                       R3 R0 K7 ["_onUndoConnection"]
       42 NAMECALL                         R3 R3 K4 ["Disconnect"]
       44 CALL                             R3 1 0
       45 GETTABLEKS                       R5 R0 K8 ["_tools"]
       47 GETTABLE                         R4 R5 R2
       48 GETTABLEKS                       R3 R4 K9 ["OnFormChanged"]
       50 NEWCLOSURE                       R5 P0
       51 CAPTURE                          VAL R0
       52 NAMECALL                         R3 R3 K10 ["Connect"]
       54 CALL                             R3 2 1
       55 SETTABLEKS                       R3 R0 K3 ["_onFormChangedForwarder"]
       57 GETTABLEKS                       R5 R0 K8 ["_tools"]
       59 GETTABLE                         R4 R5 R2
       60 GETTABLEKS                       R3 R4 K11 ["OnGizmoChanged"]
       62 NEWCLOSURE                       R5 P1
       63 CAPTURE                          VAL R0
       64 NAMECALL                         R3 R3 K10 ["Connect"]
       66 CALL                             R3 2 1
       67 SETTABLEKS                       R3 R0 K5 ["_onGizmoChangedForwarder"]
       69 GETTABLEKS                       R5 R0 K8 ["_tools"]
       71 GETTABLE                         R4 R5 R2
       72 GETTABLEKS                       R3 R4 K12 ["OnInternalsChanged"]
       74 NEWCLOSURE                       R5 P2
       75 CAPTURE                          VAL R0
       76 NAMECALL                         R3 R3 K10 ["Connect"]
       78 CALL                             R3 2 1
       79 SETTABLEKS                       R3 R0 K6 ["_onInternalsChangedForwarder"]
       81 GETTABLEKS                       R8 R0 K8 ["_tools"]
       83 GETTABLE                         R7 R8 R2
       84 GETTABLEKS                       R6 R7 K13 ["_overrides"]
       86 GETUPVAL                         R8 0
       87 GETTABLEKS                       R7 R8 K0 ["BuildSettings"]
       89 GETTABLE                         R5 R6 R7
       90 GETUPVAL                         R7 1
       91 GETTABLEKS                       R6 R7 K14 ["Confirm"]
       93 GETTABLE                         R4 R5 R6
       94 GETTABLEKS                       R3 R4 K15 ["Schema"]
       96 LOADB                            R4 0
       97 SETTABLEKS                       R4 R3 K16 ["CanRegenerate"]
       99 GETTABLEKS                       R8 R0 K8 ["_tools"]
      101 GETTABLE                         R7 R8 R2
      102 GETTABLEKS                       R6 R7 K13 ["_overrides"]
      104 GETUPVAL                         R8 0
      105 GETTABLEKS                       R7 R8 K0 ["BuildSettings"]
      107 GETTABLE                         R5 R6 R7
      108 GETUPVAL                         R7 1
      109 GETTABLEKS                       R6 R7 K14 ["Confirm"]
      111 GETTABLE                         R4 R5 R6
      112 GETTABLEKS                       R3 R4 K15 ["Schema"]
      114 LOADB                            R4 0
      115 SETTABLEKS                       R4 R3 K17 ["CanConfirm"]
      117 GETUPVAL                         R5 0
      118 GETTABLEKS                       R4 R5 K0 ["BuildSettings"]
      120 GETTABLE                         R3 R1 R4
      121 GETUPVAL                         R5 1
      122 GETTABLEKS                       R4 R5 K18 ["PlacementMode"]
      124 LOADB                            R5 1
      125 SETTABLE                         R5 R3 R4
      126 GETTABLEKS                       R7 R0 K8 ["_tools"]
      128 GETTABLE                         R6 R7 R2
      129 GETTABLEKS                       R5 R6 K13 ["_overrides"]
      131 GETUPVAL                         R7 0
      132 GETTABLEKS                       R6 R7 K0 ["BuildSettings"]
      134 GETTABLE                         R4 R5 R6
      135 GETUPVAL                         R6 1
      136 GETTABLEKS                       R5 R6 K19 ["Material"]
      138 GETTABLE                         R3 R4 R5
      139 LOADB                            R4 1
      140 SETTABLEKS                       R4 R3 K20 ["Disabled"]
      142 SETTABLEKS                       R2 R0 K21 ["_terrainType"]
      144 RETURN                           R1 1

PROTO_12:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["BuildSettings"]
        3 GETTABLE                         R3 R1 R4
        4 GETUPVAL                         R5 1
        5 GETTABLEKS                       R4 R5 K1 ["Material"]
        7 GETTABLE                         R2 R3 R4
        8 JUMPIF                           R2 ; [+1]
        9 RETURN                           R1 1
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R3 R4 K2 ["new"]
       13 MOVE                             R4 R2
       14 CALL                             R3 1 1
       15 GETUPVAL                         R6 0
       16 GETTABLEKS                       R5 R6 K0 ["BuildSettings"]
       18 GETTABLE                         R4 R1 R5
       19 GETUPVAL                         R6 1
       20 GETTABLEKS                       R5 R6 K3 ["MaterialLUT"]
       22 SETTABLE                         R3 R4 R5
       23 RETURN                           R1 1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 SETTABLEKS                       R1 R0 K0 ["_stamp"]
        4 GETUPVAL                         R0 0
        5 NEWTABLE                         R2 1 0
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R3 R4 K1 ["BuildSettings"]
       10 NEWTABLE                         R4 1 0
       12 GETUPVAL                         R6 2
       13 GETTABLEKS                       R5 R6 K2 ["PlacementMode"]
       15 LOADB                            R6 1
       16 SETTABLE                         R6 R4 R5
       17 SETTABLE                         R4 R2 R3
       18 NAMECALL                         R0 R0 K3 ["saveForm"]
       20 CALL                             R0 2 0
       21 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["BuildSettings"]
        3 GETTABLE                         R3 R1 R4
        4 GETUPVAL                         R5 1
        5 GETTABLEKS                       R4 R5 K1 ["PlacementMode"]
        7 GETTABLE                         R2 R3 R4
        8 JUMPIFNOTEQKNIL                  R2 ; [+2]
       10 RETURN                           R1 1
       11 GETTABLEKS                       R3 R0 K2 ["_onUndoConnection"]
       13 JUMPIFNOT                        R3 ; [+5]
       14 GETTABLEKS                       R3 R0 K2 ["_onUndoConnection"]
       16 NAMECALL                         R3 R3 K3 ["Disconnect"]
       18 CALL                             R3 1 0
       19 GETTABLEKS                       R5 R0 K4 ["_services"]
       21 GETTABLEKS                       R4 R5 K5 ["ChangeHistoryService"]
       23 GETTABLEKS                       R3 R4 K6 ["OnUndo"]
       25 NEWCLOSURE                       R5 P0
       26 CAPTURE                          VAL R0
       27 CAPTURE                          UPVAL U0
       28 CAPTURE                          UPVAL U1
       29 NAMECALL                         R3 R3 K7 ["Connect"]
       31 CALL                             R3 2 1
       32 SETTABLEKS                       R3 R0 K2 ["_onUndoConnection"]
       34 GETTABLEKS                       R4 R0 K8 ["_tools"]
       36 GETTABLEKS                       R5 R0 K9 ["_terrainType"]
       38 GETTABLE                         R3 R4 R5
       39 NAMECALL                         R3 R3 K10 ["getPayload"]
       41 CALL                             R3 1 1
       42 GETUPVAL                         R6 0
       43 GETTABLEKS                       R5 R6 K0 ["BuildSettings"]
       45 GETTABLE                         R4 R1 R5
       46 GETUPVAL                         R6 1
       47 GETTABLEKS                       R5 R6 K11 ["Transform"]
       49 GETUPVAL                         R7 2
       50 GETTABLEKS                       R6 R7 K12 ["Place"]
       52 GETUPVAL                         R10 0
       53 GETTABLEKS                       R9 R10 K0 ["BuildSettings"]
       55 GETTABLE                         R8 R3 R9
       56 GETUPVAL                         R10 1
       57 GETTABLEKS                       R9 R10 K11 ["Transform"]
       59 GETTABLE                         R7 R8 R9
       60 GETUPVAL                         R11 0
       61 GETTABLEKS                       R10 R11 K0 ["BuildSettings"]
       63 GETTABLE                         R9 R3 R10
       64 GETUPVAL                         R11 1
       65 GETTABLEKS                       R10 R11 K13 ["Size"]
       67 GETTABLE                         R8 R9 R10
       68 GETUPVAL                         R12 0
       69 GETTABLEKS                       R11 R12 K0 ["BuildSettings"]
       71 GETTABLE                         R10 R3 R11
       72 GETUPVAL                         R12 1
       73 GETTABLEKS                       R11 R12 K14 ["NoiseStrength"]
       75 GETTABLE                         R9 R10 R11
       76 GETTABLEKS                       R10 R0 K9 ["_terrainType"]
       78 CALL                             R6 4 1
       79 SETTABLE                         R6 R4 R5
       80 RETURN                           R1 1

PROTO_15:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["BuildSettings"]
        3 GETTABLE                         R3 R1 R4
        4 GETUPVAL                         R5 1
        5 GETTABLEKS                       R4 R5 K1 ["Transform"]
        7 GETTABLE                         R2 R3 R4
        8 JUMPIF                           R2 ; [+1]
        9 RETURN                           R1 1
       10 GETTABLEKS                       R4 R0 K2 ["_tools"]
       12 GETTABLEKS                       R5 R0 K3 ["_terrainType"]
       14 GETTABLE                         R3 R4 R5
       15 NAMECALL                         R3 R3 K4 ["getPayload"]
       17 CALL                             R3 1 1
       18 GETUPVAL                         R4 2
       19 MOVE                             R5 R2
       20 GETUPVAL                         R9 0
       21 GETTABLEKS                       R8 R9 K0 ["BuildSettings"]
       23 GETTABLE                         R7 R1 R8
       24 GETUPVAL                         R9 1
       25 GETTABLEKS                       R8 R9 K5 ["Size"]
       27 GETTABLE                         R6 R7 R8
       28 JUMPIF                           R6 ; [+8]
       29 GETUPVAL                         R9 0
       30 GETTABLEKS                       R8 R9 K0 ["BuildSettings"]
       32 GETTABLE                         R7 R3 R8
       33 GETUPVAL                         R9 1
       34 GETTABLEKS                       R8 R9 K5 ["Size"]
       36 GETTABLE                         R6 R7 R8
       37 GETUPVAL                         R8 3
       38 GETTABLEKS                       R7 R8 K6 ["VoxelResolution"]
       40 CALL                             R4 3 2
       41 GETUPVAL                         R8 0
       42 GETTABLEKS                       R7 R8 K0 ["BuildSettings"]
       44 GETTABLE                         R6 R1 R7
       45 GETUPVAL                         R8 1
       46 GETTABLEKS                       R7 R8 K1 ["Transform"]
       48 SETTABLE                         R4 R6 R7
       49 GETUPVAL                         R8 0
       50 GETTABLEKS                       R7 R8 K0 ["BuildSettings"]
       52 GETTABLE                         R6 R1 R7
       53 GETUPVAL                         R8 1
       54 GETTABLEKS                       R7 R8 K5 ["Size"]
       56 SETTABLE                         R5 R6 R7
       57 RETURN                           R1 1

PROTO_16:
        0 GETTABLEKS                       R3 R0 K0 ["_services"]
        2 GETTABLEKS                       R2 R3 K1 ["ChangeHistoryService"]
        4 NAMECALL                         R2 R2 K2 ["IsRecordingInProgress"]
        6 CALL                             R2 1 1
        7 JUMPIFNOT                        R2 ; [+25]
        8 GETTABLEKS                       R2 R0 K3 ["_recording"]
       10 JUMPIFNOT                        R2 ; [+12]
       11 GETTABLEKS                       R3 R0 K0 ["_services"]
       13 GETTABLEKS                       R2 R3 K1 ["ChangeHistoryService"]
       15 GETTABLEKS                       R4 R0 K3 ["_recording"]
       17 GETIMPORT                        R5 K7 [Enum.FinishRecordingOperation.Append]
       19 NAMECALL                         R2 R2 K8 ["FinishRecording"]
       21 CALL                             R2 3 0
       22 JUMP                             ; [+10]
       23 GETTABLEKS                       R3 R0 K0 ["_services"]
       25 GETTABLEKS                       R2 R3 K1 ["ChangeHistoryService"]
       27 LOADK                            R4 K9 [""]
       28 GETIMPORT                        R5 K11 [Enum.FinishRecordingOperation.Cancel]
       30 NAMECALL                         R2 R2 K8 ["FinishRecording"]
       32 CALL                             R2 3 0
       33 GETTABLEKS                       R3 R0 K0 ["_services"]
       35 GETTABLEKS                       R2 R3 K1 ["ChangeHistoryService"]
       37 LOADK                            R4 K12 ["TerrainPlacement"]
       38 MOVE                             R5 R1
       39 NAMECALL                         R2 R2 K13 ["TryBeginRecording"]
       41 CALL                             R2 3 1
       42 SETTABLEKS                       R2 R0 K3 ["_recording"]
       44 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R2 R0 K0 ["_recording"]
        2 JUMPIFNOT                        R2 ; [+15]
        3 GETTABLEKS                       R3 R0 K1 ["_services"]
        5 GETTABLEKS                       R2 R3 K2 ["ChangeHistoryService"]
        7 GETTABLEKS                       R4 R0 K0 ["_recording"]
        9 MOVE                             R5 R1
       10 NAMECALL                         R2 R2 K3 ["FinishRecording"]
       12 CALL                             R2 3 0
       13 LOADNIL                          R2
       14 SETTABLEKS                       R2 R0 K0 ["_recording"]
       16 LOADB                            R2 1
       17 RETURN                           R2 1
       18 LOADB                            R2 0
       19 RETURN                           R2 1

PROTO_18:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 MOVE                             R5 R2
        4 NAMECALL                         R3 R0 K0 ["setTerrainType"]
        6 CALL                             R3 2 1
        7 MOVE                             R2 R3
        8 MOVE                             R5 R2
        9 NAMECALL                         R3 R0 K1 ["setMaterial"]
       11 CALL                             R3 2 1
       12 MOVE                             R2 R3
       13 GETTABLEKS                       R4 R0 K2 ["_tools"]
       15 GETTABLEKS                       R5 R0 K3 ["_terrainType"]
       17 GETTABLE                         R3 R4 R5
       18 MOVE                             R5 R2
       19 NAMECALL                         R3 R3 K4 ["saveForm"]
       21 CALL                             R3 2 0
       22 GETTABLEKS                       R3 R0 K5 ["_stamp"]
       24 JUMPIFNOT                        R3 ; [+14]
       25 GETTABLEKS                       R3 R0 K5 ["_stamp"]
       27 GETTABLEKS                       R6 R0 K2 ["_tools"]
       29 GETTABLEKS                       R7 R0 K3 ["_terrainType"]
       31 GETTABLE                         R5 R6 R7
       32 NAMECALL                         R5 R5 K6 ["getPayload"]
       34 CALL                             R5 1 1
       35 MOVE                             R6 R2
       36 NAMECALL                         R3 R3 K7 ["update"]
       38 CALL                             R3 3 0
       39 RETURN                           R0 0

PROTO_19:
        0 NAMECALL                         R1 R0 K0 ["getPayload"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R0 K1 ["_terrainType"]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K2 ["None"]
        8 JUMPIFNOTEQ                      R2 R3 ; [+4]
       10 NEWTABLE                         R2 0 0
       12 RETURN                           R2 1
       13 GETTABLEKS                       R3 R0 K3 ["_tools"]
       15 GETTABLEKS                       R4 R0 K1 ["_terrainType"]
       17 GETTABLE                         R2 R3 R4
       18 NAMECALL                         R2 R2 K4 ["gizmos"]
       20 CALL                             R2 1 1
       21 NEWTABLE                         R3 0 0
       23 MOVE                             R4 R2
       24 LOADNIL                          R5
       25 LOADNIL                          R6
       26 FORGPREP                         R4
       27 GETTABLEKS                       R9 R8 K5 ["Id"]
       29 GETUPVAL                         R11 1
       30 GETTABLEKS                       R10 R11 K6 ["Placement"]
       32 JUMPIFNOTEQ                      R9 R10 ; [+20]
       34 GETTABLEKS                       R11 R8 K7 ["Value"]
       36 GETUPVAL                         R13 2
       37 GETTABLEKS                       R12 R13 K8 ["BuildSettings"]
       39 GETTABLE                         R10 R11 R12
       40 GETUPVAL                         R12 3
       41 GETTABLEKS                       R11 R12 K9 ["PlacementMode"]
       43 GETTABLE                         R9 R10 R11
       44 JUMPIFNOT                        R9 ; [+8]
       45 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
       47 MOVE                             R10 R3
       48 MOVE                             R11 R8
       49 GETIMPORT                        R9 K12 [table.insert]
       51 CALL                             R9 2 0
       52 JUMP                             ; [+25]
       53 GETTABLEKS                       R9 R8 K5 ["Id"]
       55 GETUPVAL                         R11 1
       56 GETTABLEKS                       R10 R11 K13 ["Region"]
       58 JUMPIFNOTEQ                      R9 R10 ; [+19]
       60 GETTABLEKS                       R11 R8 K7 ["Value"]
       62 GETUPVAL                         R13 2
       63 GETTABLEKS                       R12 R13 K8 ["BuildSettings"]
       65 GETTABLE                         R10 R11 R12
       66 GETUPVAL                         R12 3
       67 GETTABLEKS                       R11 R12 K9 ["PlacementMode"]
       69 GETTABLE                         R9 R10 R11
       70 JUMPIF                           R9 ; [+7]
       71 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
       73 MOVE                             R10 R3
       74 MOVE                             R11 R8
       75 GETIMPORT                        R9 K12 [table.insert]
       77 CALL                             R9 2 0
       78 FORGLOOP                         R4 2 ; [-52]
       80 RETURN                           R3 1

PROTO_20:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 MOVE                             R5 R2
        4 NAMECALL                         R3 R0 K0 ["setPlacementMode"]
        6 CALL                             R3 2 1
        7 MOVE                             R2 R3
        8 MOVE                             R5 R2
        9 NAMECALL                         R3 R0 K1 ["setTransform"]
       11 CALL                             R3 2 1
       12 MOVE                             R2 R3
       13 GETTABLEKS                       R4 R0 K2 ["_tools"]
       15 GETTABLEKS                       R5 R0 K3 ["_terrainType"]
       17 GETTABLE                         R3 R4 R5
       18 MOVE                             R5 R2
       19 NAMECALL                         R3 R3 K4 ["saveGizmos"]
       21 CALL                             R3 2 0
       22 GETTABLEKS                       R3 R0 K5 ["_stamp"]
       24 JUMPIFNOT                        R3 ; [+15]
       25 GETTABLEKS                       R3 R0 K5 ["_stamp"]
       27 GETTABLEKS                       R6 R0 K2 ["_tools"]
       29 GETTABLEKS                       R7 R0 K3 ["_terrainType"]
       31 GETTABLE                         R5 R6 R7
       32 NAMECALL                         R5 R5 K6 ["getPayload"]
       34 CALL                             R5 1 1
       35 MOVE                             R6 R2
       36 NAMECALL                         R3 R3 K7 ["update"]
       38 CALL                             R3 3 0
       39 RETURN                           R0 0
       40 NAMECALL                         R3 R0 K8 ["createStamp"]
       42 CALL                             R3 1 0
       43 RETURN                           R0 0

PROTO_21:
        0 NAMECALL                         R1 R0 K0 ["getPayload"]
        2 CALL                             R1 1 1
        3 MOVE                             R4 R1
        4 NAMECALL                         R2 R0 K1 ["saveForm"]
        6 CALL                             R2 2 0
        7 GETTABLEKS                       R3 R0 K2 ["_tools"]
        9 GETTABLEKS                       R4 R0 K3 ["_terrainType"]
       11 GETTABLE                         R2 R3 R4
       12 NAMECALL                         R2 R2 K4 ["activate"]
       14 CALL                             R2 1 0
       15 RETURN                           R0 0

PROTO_22:
        0 GETTABLEKS                       R2 R0 K0 ["_tools"]
        2 GETTABLEKS                       R3 R0 K1 ["_terrainType"]
        4 GETTABLE                         R1 R2 R3
        5 NAMECALL                         R1 R1 K2 ["deactivate"]
        7 CALL                             R1 1 0
        8 GETTABLEKS                       R1 R0 K3 ["_onFormChangedForwarder"]
       10 JUMPIFNOT                        R1 ; [+5]
       11 GETTABLEKS                       R1 R0 K3 ["_onFormChangedForwarder"]
       13 NAMECALL                         R1 R1 K4 ["Disconnect"]
       15 CALL                             R1 1 0
       16 GETTABLEKS                       R1 R0 K5 ["_onGizmoChangedForwarder"]
       18 JUMPIFNOT                        R1 ; [+5]
       19 GETTABLEKS                       R1 R0 K5 ["_onGizmoChangedForwarder"]
       21 NAMECALL                         R1 R1 K4 ["Disconnect"]
       23 CALL                             R1 1 0
       24 GETTABLEKS                       R1 R0 K6 ["_onInternalsChangedForwarder"]
       26 JUMPIFNOT                        R1 ; [+5]
       27 GETTABLEKS                       R1 R0 K6 ["_onInternalsChangedForwarder"]
       29 NAMECALL                         R1 R1 K4 ["Disconnect"]
       31 CALL                             R1 1 0
       32 GETTABLEKS                       R1 R0 K7 ["_mouseDownConnection"]
       34 JUMPIFNOT                        R1 ; [+5]
       35 GETTABLEKS                       R1 R0 K7 ["_mouseDownConnection"]
       37 NAMECALL                         R1 R1 K4 ["Disconnect"]
       39 CALL                             R1 1 0
       40 GETTABLEKS                       R1 R0 K8 ["_onUndoConnection"]
       42 JUMPIFNOT                        R1 ; [+5]
       43 GETTABLEKS                       R1 R0 K8 ["_onUndoConnection"]
       45 NAMECALL                         R1 R1 K4 ["Disconnect"]
       47 CALL                             R1 1 0
       48 NAMECALL                         R1 R0 K9 ["destroyStamp"]
       50 CALL                             R1 1 0
       51 GETIMPORT                        R3 K13 [Enum.FinishRecordingOperation.Append]
       53 NAMECALL                         R1 R0 K14 ["finishRecording"]
       55 CALL                             R1 2 0
       56 RETURN                           R0 0

PROTO_23:
        0 GETTABLEKS                       R1 R0 K0 ["_stamp"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETTABLEKS                       R1 R0 K0 ["_stamp"]
        5 NAMECALL                         R1 R1 K1 ["destroy"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K0 ["_stamp"]
       11 RETURN                           R0 0

PROTO_24:
        0 GETTABLEKS                       R2 R0 K0 ["_tools"]
        2 GETTABLEKS                       R3 R0 K1 ["_terrainType"]
        4 GETTABLE                         R1 R2 R3
        5 NAMECALL                         R1 R1 K2 ["getPayload"]
        7 CALL                             R1 1 1
        8 GETTABLEKS                       R2 R0 K1 ["_terrainType"]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R3 R4 K3 ["None"]
       13 JUMPIFEQ                         R2 R3 ; [+10]
       15 GETUPVAL                         R5 1
       16 GETTABLEKS                       R4 R5 K4 ["BuildSettings"]
       18 GETTABLE                         R3 R1 R4
       19 GETUPVAL                         R5 2
       20 GETTABLEKS                       R4 R5 K5 ["PlacementMode"]
       22 GETTABLE                         R2 R3 R4
       23 JUMPIFNOT                        R2 ; [+1]
       24 RETURN                           R0 0
       25 NAMECALL                         R2 R0 K6 ["destroyStamp"]
       27 CALL                             R2 1 0
       28 GETUPVAL                         R5 1
       29 GETTABLEKS                       R4 R5 K4 ["BuildSettings"]
       31 GETTABLE                         R3 R1 R4
       32 GETUPVAL                         R5 2
       33 GETTABLEKS                       R4 R5 K7 ["MaterialLUT"]
       35 GETTABLE                         R2 R3 R4
       36 JUMPIF                           R2 ; [+14]
       37 MOVE                             R4 R1
       38 NAMECALL                         R2 R0 K8 ["setMaterial"]
       40 CALL                             R2 2 1
       41 MOVE                             R1 R2
       42 GETTABLEKS                       R3 R0 K0 ["_tools"]
       44 GETTABLEKS                       R4 R0 K1 ["_terrainType"]
       46 GETTABLE                         R2 R3 R4
       47 MOVE                             R4 R1
       48 NAMECALL                         R2 R2 K9 ["setPayload"]
       50 CALL                             R2 2 0
       51 LOADK                            R4 K10 ["Adjust"]
       52 NAMECALL                         R2 R0 K11 ["beginRecording"]
       54 CALL                             R2 2 0
       55 GETUPVAL                         R2 3
       56 CALL                             R2 0 1
       57 JUMPIFNOT                        R2 ; [+9]
       58 GETTABLEKS                       R2 R0 K12 ["_analytics"]
       60 LOADK                            R4 K13 ["Activated"]
       61 GETTABLEKS                       R5 R0 K1 ["_terrainType"]
       63 LOADN                            R6 1
       64 NAMECALL                         R2 R2 K14 ["report"]
       66 CALL                             R2 4 0
       67 GETUPVAL                         R3 4
       68 GETTABLEKS                       R4 R0 K1 ["_terrainType"]
       70 GETTABLE                         R2 R3 R4
       71 GETTABLEKS                       R4 R0 K1 ["_terrainType"]
       73 NAMECALL                         R2 R2 K15 ["new"]
       75 CALL                             R2 2 1
       76 SETTABLEKS                       R2 R0 K16 ["_stamp"]
       78 GETTABLEKS                       R2 R0 K16 ["_stamp"]
       80 MOVE                             R4 R1
       81 GETTABLEKS                       R5 R0 K17 ["_services"]
       83 NAMECALL                         R2 R2 K18 ["init"]
       85 CALL                             R2 3 0
       86 GETTABLEKS                       R2 R0 K16 ["_stamp"]
       88 MOVE                             R4 R1
       89 NAMECALL                         R2 R2 K19 ["update"]
       91 CALL                             R2 2 0
       92 GETIMPORT                        R4 K23 [Enum.FinishRecordingOperation.Commit]
       94 NAMECALL                         R2 R0 K24 ["finishRecording"]
       96 CALL                             R2 2 0
       97 LOADK                            R4 K10 ["Adjust"]
       98 NAMECALL                         R2 R0 K11 ["beginRecording"]
      100 CALL                             R2 2 0
      101 GETTABLEKS                       R5 R0 K0 ["_tools"]
      103 GETTABLEKS                       R6 R0 K1 ["_terrainType"]
      105 GETTABLE                         R4 R5 R6
      106 GETTABLEKS                       R3 R4 K25 ["_overrides"]
      108 GETUPVAL                         R5 1
      109 GETTABLEKS                       R4 R5 K4 ["BuildSettings"]
      111 GETTABLE                         R2 R3 R4
      112 GETUPVAL                         R6 2
      113 GETTABLEKS                       R5 R6 K26 ["Confirm"]
      115 GETTABLE                         R4 R2 R5
      116 GETTABLEKS                       R3 R4 K27 ["Schema"]
      118 LOADB                            R4 1
      119 SETTABLEKS                       R4 R3 K28 ["CanConfirm"]
      121 GETUPVAL                         R5 2
      122 GETTABLEKS                       R4 R5 K29 ["Material"]
      124 GETTABLE                         R3 R2 R4
      125 LOADB                            R4 0
      126 SETTABLEKS                       R4 R3 K30 ["Disabled"]
      128 GETTABLEKS                       R3 R0 K31 ["OnInternalsChanged"]
      130 NAMECALL                         R3 R3 K32 ["Fire"]
      132 CALL                             R3 1 0
      133 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Src"]
       18 GETTABLEKS                       R4 R5 K9 ["Tools"]
       20 GETTABLEKS                       R3 R4 K10 ["BaseTool"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R4 R1 K11 ["Util"]
       25 GETTABLEKS                       R3 R4 K12 ["deepCopy"]
       27 GETIMPORT                        R4 K5 [require]
       29 GETTABLEKS                       R8 R0 K8 ["Src"]
       31 GETTABLEKS                       R7 R8 K11 ["Util"]
       33 GETTABLEKS                       R6 R7 K13 ["Generation"]
       35 GETTABLEKS                       R5 R6 K14 ["MaterialLUT"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K5 [require]
       40 GETTABLEKS                       R8 R0 K8 ["Src"]
       42 GETTABLEKS                       R7 R8 K15 ["Resources"]
       44 GETTABLEKS                       R6 R7 K16 ["Constants"]
       46 CALL                             R5 1 1
       47 GETIMPORT                        R6 K5 [require]
       49 GETTABLEKS                       R9 R0 K8 ["Src"]
       51 GETTABLEKS                       R8 R9 K11 ["Util"]
       53 GETTABLEKS                       R7 R8 K17 ["getLookRight"]
       55 CALL                             R6 1 1
       56 GETIMPORT                        R7 K5 [require]
       58 GETTABLEKS                       R10 R0 K8 ["Src"]
       60 GETTABLEKS                       R9 R10 K11 ["Util"]
       62 GETTABLEKS                       R8 R9 K18 ["getVoxelAlignedRegion"]
       64 CALL                             R7 1 1
       65 GETIMPORT                        R8 K5 [require]
       67 GETTABLEKS                       R11 R0 K8 ["Src"]
       69 GETTABLEKS                       R10 R11 K11 ["Util"]
       71 GETTABLEKS                       R9 R10 K19 ["TerrainPlacementHelper"]
       73 CALL                             R8 1 1
       74 GETIMPORT                        R9 K5 [require]
       76 GETTABLEKS                       R12 R0 K8 ["Src"]
       78 GETTABLEKS                       R11 R12 K20 ["Flags"]
       80 GETTABLEKS                       R10 R11 K21 ["getFFlagTerrainEditorGenerationAnalytics"]
       82 CALL                             R9 1 1
       83 GETIMPORT                        R10 K5 [require]
       85 GETTABLEKS                       R12 R0 K8 ["Src"]
       87 GETTABLEKS                       R11 R12 K22 ["Types"]
       89 CALL                             R10 1 1
       90 GETTABLEKS                       R11 R10 K23 ["BuildSettings"]
       92 GETTABLEKS                       R12 R10 K24 ["Category"]
       94 GETTABLEKS                       R13 R10 K25 ["Gizmo"]
       96 GETTABLEKS                       R14 R10 K26 ["Tab"]
       98 GETTABLEKS                       R15 R10 K27 ["TerrainType"]
      100 GETTABLEKS                       R16 R10 K28 ["Tool"]
      102 NEWTABLE                         R17 16 0
      104 GETTABLEKS                       R18 R15 K29 ["Arctic"]
      106 GETIMPORT                        R19 K5 [require]
      108 GETIMPORT                        R21 K1 [script]
      110 GETTABLEKS                       R20 R21 K29 ["Arctic"]
      112 CALL                             R19 1 1
      113 SETTABLE                         R19 R17 R18
      114 GETTABLEKS                       R18 R15 K30 ["Crater"]
      116 GETIMPORT                        R19 K5 [require]
      118 GETIMPORT                        R21 K1 [script]
      120 GETTABLEKS                       R20 R21 K30 ["Crater"]
      122 CALL                             R19 1 1
      123 SETTABLE                         R19 R17 R18
      124 GETTABLEKS                       R18 R15 K31 ["Desert"]
      126 GETIMPORT                        R19 K5 [require]
      128 GETIMPORT                        R21 K1 [script]
      130 GETTABLEKS                       R20 R21 K31 ["Desert"]
      132 CALL                             R19 1 1
      133 SETTABLE                         R19 R17 R18
      134 GETTABLEKS                       R18 R15 K32 ["Lake"]
      136 GETIMPORT                        R19 K5 [require]
      138 GETIMPORT                        R21 K1 [script]
      140 GETTABLEKS                       R20 R21 K32 ["Lake"]
      142 CALL                             R19 1 1
      143 SETTABLE                         R19 R17 R18
      144 GETTABLEKS                       R18 R15 K33 ["Mesa"]
      146 GETIMPORT                        R19 K5 [require]
      148 GETIMPORT                        R21 K1 [script]
      150 GETTABLEKS                       R20 R21 K33 ["Mesa"]
      152 CALL                             R19 1 1
      153 SETTABLE                         R19 R17 R18
      154 GETTABLEKS                       R18 R15 K34 ["Mountain"]
      156 GETIMPORT                        R19 K5 [require]
      158 GETIMPORT                        R21 K1 [script]
      160 GETTABLEKS                       R20 R21 K34 ["Mountain"]
      162 CALL                             R19 1 1
      163 SETTABLE                         R19 R17 R18
      164 GETTABLEKS                       R18 R15 K35 ["None"]
      166 GETIMPORT                        R19 K5 [require]
      168 GETIMPORT                        R21 K1 [script]
      170 GETTABLEKS                       R20 R21 K35 ["None"]
      172 CALL                             R19 1 1
      173 SETTABLE                         R19 R17 R18
      174 GETTABLEKS                       R18 R15 K36 ["Plain"]
      176 GETIMPORT                        R19 K5 [require]
      178 GETIMPORT                        R21 K1 [script]
      180 GETTABLEKS                       R20 R21 K36 ["Plain"]
      182 CALL                             R19 1 1
      183 SETTABLE                         R19 R17 R18
      184 GETTABLEKS                       R18 R15 K37 ["Volcano"]
      186 GETIMPORT                        R19 K5 [require]
      188 GETIMPORT                        R21 K1 [script]
      190 GETTABLEKS                       R20 R21 K37 ["Volcano"]
      192 CALL                             R19 1 1
      193 SETTABLE                         R19 R17 R18
      194 NEWTABLE                         R18 8 0
      196 GETTABLEKS                       R19 R15 K29 ["Arctic"]
      198 GETIMPORT                        R20 K5 [require]
      200 GETTABLEKS                       R23 R0 K8 ["Src"]
      202 GETTABLEKS                       R22 R23 K38 ["Stamps"]
      204 GETTABLEKS                       R21 R22 K39 ["ArcticStamp"]
      206 CALL                             R20 1 1
      207 SETTABLE                         R20 R18 R19
      208 GETTABLEKS                       R19 R15 K30 ["Crater"]
      210 GETIMPORT                        R20 K5 [require]
      212 GETTABLEKS                       R23 R0 K8 ["Src"]
      214 GETTABLEKS                       R22 R23 K38 ["Stamps"]
      216 GETTABLEKS                       R21 R22 K40 ["CraterStamp"]
      218 CALL                             R20 1 1
      219 SETTABLE                         R20 R18 R19
      220 GETTABLEKS                       R19 R15 K31 ["Desert"]
      222 GETIMPORT                        R20 K5 [require]
      224 GETTABLEKS                       R23 R0 K8 ["Src"]
      226 GETTABLEKS                       R22 R23 K38 ["Stamps"]
      228 GETTABLEKS                       R21 R22 K41 ["DesertStamp"]
      230 CALL                             R20 1 1
      231 SETTABLE                         R20 R18 R19
      232 GETTABLEKS                       R19 R15 K32 ["Lake"]
      234 GETIMPORT                        R20 K5 [require]
      236 GETTABLEKS                       R23 R0 K8 ["Src"]
      238 GETTABLEKS                       R22 R23 K38 ["Stamps"]
      240 GETTABLEKS                       R21 R22 K42 ["LakeStamp"]
      242 CALL                             R20 1 1
      243 SETTABLE                         R20 R18 R19
      244 GETTABLEKS                       R19 R15 K33 ["Mesa"]
      246 GETIMPORT                        R20 K5 [require]
      248 GETTABLEKS                       R23 R0 K8 ["Src"]
      250 GETTABLEKS                       R22 R23 K38 ["Stamps"]
      252 GETTABLEKS                       R21 R22 K43 ["MesaStamp"]
      254 CALL                             R20 1 1
      255 SETTABLE                         R20 R18 R19
      256 GETTABLEKS                       R19 R15 K34 ["Mountain"]
      258 GETIMPORT                        R20 K5 [require]
      260 GETTABLEKS                       R23 R0 K8 ["Src"]
      262 GETTABLEKS                       R22 R23 K38 ["Stamps"]
      264 GETTABLEKS                       R21 R22 K44 ["MountainStamp"]
      266 CALL                             R20 1 1
      267 SETTABLE                         R20 R18 R19
      268 GETTABLEKS                       R19 R15 K36 ["Plain"]
      270 GETIMPORT                        R20 K5 [require]
      272 GETTABLEKS                       R23 R0 K8 ["Src"]
      274 GETTABLEKS                       R22 R23 K38 ["Stamps"]
      276 GETTABLEKS                       R21 R22 K45 ["PlainStamp"]
      278 CALL                             R20 1 1
      279 SETTABLE                         R20 R18 R19
      280 GETTABLEKS                       R19 R15 K37 ["Volcano"]
      282 GETIMPORT                        R20 K5 [require]
      284 GETTABLEKS                       R23 R0 K8 ["Src"]
      286 GETTABLEKS                       R22 R23 K38 ["Stamps"]
      288 GETTABLEKS                       R21 R22 K46 ["VolcanoStamp"]
      290 CALL                             R20 1 1
      291 SETTABLE                         R20 R18 R19
      292 NEWTABLE                         R19 0 1
      294 DUPTABLE                         R20 K49 [{"Defaults", "Id"}]
      295 NEWTABLE                         R21 0 0
      297 SETTABLEKS                       R21 R20 K47 ["Defaults"]
      299 GETTABLEKS                       R21 R12 K23 ["BuildSettings"]
      301 SETTABLEKS                       R21 R20 K48 ["Id"]
      303 SETLIST                          R19 R20 1 [1]
      305 NEWTABLE                         R20 0 0
      307 GETTABLEKS                       R23 R16 K50 ["Build"]
      309 GETTABLEKS                       R24 R14 K51 ["Create"]
      311 MOVE                             R25 R19
      312 MOVE                             R26 R20
      313 NAMECALL                         R21 R2 K52 ["new"]
      315 CALL                             R21 5 1
      316 DUPCLOSURE                       R22 K53 [PROTO_6]
      317 CAPTURE                          VAL R2
      318 CAPTURE                          VAL R15
      319 CAPTURE                          VAL R17
      320 CAPTURE                          VAL R12
      321 CAPTURE                          VAL R11
      322 CAPTURE                          VAL R3
      323 CAPTURE                          VAL R9
      324 CAPTURE                          VAL R6
      325 SETTABLEKS                       R22 R21 K54 ["init"]
      327 DUPCLOSURE                       R22 K55 [PROTO_7]
      328 SETTABLEKS                       R22 R21 K56 ["form"]
      330 DUPCLOSURE                       R22 K57 [PROTO_11]
      331 CAPTURE                          VAL R12
      332 CAPTURE                          VAL R11
      333 SETTABLEKS                       R22 R21 K58 ["setTerrainType"]
      335 DUPCLOSURE                       R22 K59 [PROTO_12]
      336 CAPTURE                          VAL R12
      337 CAPTURE                          VAL R11
      338 CAPTURE                          VAL R4
      339 SETTABLEKS                       R22 R21 K60 ["setMaterial"]
      341 DUPCLOSURE                       R22 K61 [PROTO_14]
      342 CAPTURE                          VAL R12
      343 CAPTURE                          VAL R11
      344 CAPTURE                          VAL R8
      345 SETTABLEKS                       R22 R21 K62 ["setPlacementMode"]
      347 DUPCLOSURE                       R22 K63 [PROTO_15]
      348 CAPTURE                          VAL R12
      349 CAPTURE                          VAL R11
      350 CAPTURE                          VAL R7
      351 CAPTURE                          VAL R5
      352 SETTABLEKS                       R22 R21 K64 ["setTransform"]
      354 DUPCLOSURE                       R22 K65 [PROTO_16]
      355 SETTABLEKS                       R22 R21 K66 ["beginRecording"]
      357 DUPCLOSURE                       R22 K67 [PROTO_17]
      358 SETTABLEKS                       R22 R21 K68 ["finishRecording"]
      360 DUPCLOSURE                       R22 K69 [PROTO_18]
      361 CAPTURE                          VAL R3
      362 SETTABLEKS                       R22 R21 K70 ["saveForm"]
      364 DUPCLOSURE                       R22 K71 [PROTO_19]
      365 CAPTURE                          VAL R15
      366 CAPTURE                          VAL R13
      367 CAPTURE                          VAL R12
      368 CAPTURE                          VAL R11
      369 SETTABLEKS                       R22 R21 K72 ["gizmos"]
      371 DUPCLOSURE                       R22 K73 [PROTO_20]
      372 CAPTURE                          VAL R3
      373 SETTABLEKS                       R22 R21 K74 ["saveGizmos"]
      375 DUPCLOSURE                       R22 K75 [PROTO_21]
      376 SETTABLEKS                       R22 R21 K76 ["activate"]
      378 DUPCLOSURE                       R22 K77 [PROTO_22]
      379 SETTABLEKS                       R22 R21 K78 ["deactivate"]
      381 DUPCLOSURE                       R22 K79 [PROTO_23]
      382 SETTABLEKS                       R22 R21 K80 ["destroyStamp"]
      384 DUPCLOSURE                       R22 K81 [PROTO_24]
      385 CAPTURE                          VAL R15
      386 CAPTURE                          VAL R12
      387 CAPTURE                          VAL R11
      388 CAPTURE                          VAL R9
      389 CAPTURE                          VAL R18
      390 SETTABLEKS                       R22 R21 K82 ["createStamp"]
      392 RETURN                           R21 1
