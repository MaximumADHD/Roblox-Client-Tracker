PROTO_0:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOTEQ                      R2 R0 ; [+9]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K0 ["Rotation"]
        6 GETIMPORT                        R3 K3 [CFrame.new]
        8 CALL                             R3 0 1
        9 JUMPIFEQ                         R2 R3 ; [+3]
       11 LOADB                            R2 0
       12 RETURN                           R2 1
       13 GETUPVAL                         R4 2
       14 GETTABLEKS                       R3 R4 K4 ["_services"]
       16 GETTABLEKS                       R2 R3 K5 ["Terrain"]
       18 NAMECALL                         R4 R1 K6 ["Clone"]
       20 CALL                             R4 1 1
       21 GETUPVAL                         R6 3
       22 GETUPVAL                         R7 1
       23 GETUPVAL                         R8 0
       24 LOADB                            R9 1
       25 CALL                             R6 3 1
       26 GETTABLEKS                       R5 R6 K7 ["Min"]
       28 GETUPVAL                         R8 4
       29 GETUPVAL                         R10 5
       30 GETTABLEKS                       R9 R10 K8 ["TransformSettings"]
       32 GETTABLE                         R7 R8 R9
       33 GETUPVAL                         R9 6
       34 GETTABLEKS                       R8 R9 K9 ["MergeEmpty"]
       36 GETTABLE                         R6 R7 R8
       37 NAMECALL                         R2 R2 K10 ["PasteRegion"]
       39 CALL                             R2 4 0
       40 LOADB                            R2 1
       41 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["finishOperation"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K1 ["_toolController"]
        7 GETTABLEKS                       R0 R1 K2 ["selectTool"]
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R1 R2 K3 ["Select"]
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["startOperation"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 0
        6 NAMECALL                         R2 R0 K1 ["getPayload"]
        8 CALL                             R2 1 1
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R3 R4 K2 ["SelectionSettings"]
       12 GETUPVAL                         R5 2
       13 GETTABLEKS                       R4 R5 K3 ["Get"]
       15 GETUPVAL                         R6 1
       16 GETTABLEKS                       R5 R6 K2 ["SelectionSettings"]
       18 GETTABLEKS                       R6 R0 K4 ["_pluginController"]
       20 GETTABLEKS                       R8 R0 K5 ["_persistentUserSettings"]
       22 GETUPVAL                         R10 1
       23 GETTABLEKS                       R9 R10 K2 ["SelectionSettings"]
       25 GETTABLE                         R7 R8 R9
       26 CALL                             R4 3 1
       27 SETTABLE                         R4 R2 R3
       28 GETUPVAL                         R6 1
       29 GETTABLEKS                       R5 R6 K6 ["TransformSettings"]
       31 GETTABLE                         R4 R2 R5
       32 GETUPVAL                         R6 3
       33 GETTABLEKS                       R5 R6 K7 ["TransformMode"]
       35 GETTABLE                         R3 R4 R5
       36 GETTABLEKS                       R4 R0 K8 ["_localization"]
       38 LOADK                            R6 K9 ["Operations"]
       39 LOADK                            R8 K10 ["%*Name"]
       40 MOVE                             R10 R3
       41 NAMECALL                         R8 R8 K11 ["format"]
       43 CALL                             R8 2 1
       44 MOVE                             R7 R8
       45 NAMECALL                         R4 R4 K12 ["getText"]
       47 CALL                             R4 3 1
       48 GETTABLEKS                       R5 R0 K8 ["_localization"]
       50 LOADK                            R7 K9 ["Operations"]
       51 LOADK                            R9 K13 ["%*Description"]
       52 MOVE                             R11 R3
       53 NAMECALL                         R9 R9 K11 ["format"]
       55 CALL                             R9 2 1
       56 MOVE                             R8 R9
       57 NAMECALL                         R5 R5 K12 ["getText"]
       59 CALL                             R5 3 1
       60 GETUPVAL                         R6 4
       61 MOVE                             R7 R4
       62 MOVE                             R8 R5
       63 GETTABLEKS                       R9 R0 K14 ["_services"]
       65 CALL                             R6 3 1
       66 SETTABLEKS                       R6 R0 K15 ["_operation"]
       68 GETUPVAL                         R9 1
       69 GETTABLEKS                       R8 R9 K6 ["TransformSettings"]
       71 GETTABLE                         R7 R2 R8
       72 GETUPVAL                         R9 3
       73 GETTABLEKS                       R8 R9 K16 ["Size"]
       75 GETTABLE                         R6 R7 R8
       76 GETUPVAL                         R10 1
       77 GETTABLEKS                       R9 R10 K6 ["TransformSettings"]
       79 GETTABLE                         R8 R2 R9
       80 GETUPVAL                         R10 3
       81 GETTABLEKS                       R9 R10 K17 ["Transform"]
       83 GETTABLE                         R7 R8 R9
       84 NEWCLOSURE                       R8 P0
       85 CAPTURE                          VAL R6
       86 CAPTURE                          VAL R7
       87 CAPTURE                          VAL R0
       88 CAPTURE                          UPVAL U5
       89 CAPTURE                          VAL R2
       90 CAPTURE                          UPVAL U1
       91 CAPTURE                          UPVAL U3
       92 GETUPVAL                         R10 6
       93 GETTABLEKS                       R9 R10 K18 ["Move"]
       95 JUMPIFNOTEQ                      R3 R9 ; [+22]
       97 MOVE                             R9 R8
       98 GETUPVAL                         R13 1
       99 GETTABLEKS                       R12 R13 K2 ["SelectionSettings"]
      101 GETTABLE                         R11 R2 R12
      102 GETUPVAL                         R13 7
      103 GETTABLEKS                       R12 R13 K16 ["Size"]
      105 GETTABLE                         R10 R11 R12
      106 GETUPVAL                         R14 1
      107 GETTABLEKS                       R13 R14 K6 ["TransformSettings"]
      109 GETTABLE                         R12 R2 R13
      110 GETUPVAL                         R14 3
      111 GETTABLEKS                       R13 R14 K19 ["TerrainRegion"]
      113 GETTABLE                         R11 R12 R13
      114 CALL                             R9 2 1
      115 JUMPIFNOT                        R9 ; [+58]
      116 RETURN                           R0 0
      117 JUMP                             ; [+56]
      118 GETUPVAL                         R10 6
      119 GETTABLEKS                       R9 R10 K20 ["Paste"]
      121 JUMPIFNOTEQ                      R3 R9 ; [+22]
      123 MOVE                             R9 R8
      124 GETUPVAL                         R13 1
      125 GETTABLEKS                       R12 R13 K6 ["TransformSettings"]
      127 GETTABLE                         R11 R2 R12
      128 GETUPVAL                         R13 3
      129 GETTABLEKS                       R12 R13 K21 ["TerrainRegionBufferSize"]
      131 GETTABLE                         R10 R11 R12
      132 GETUPVAL                         R14 1
      133 GETTABLEKS                       R13 R14 K6 ["TransformSettings"]
      135 GETTABLE                         R12 R2 R13
      136 GETUPVAL                         R14 3
      137 GETTABLEKS                       R13 R14 K22 ["TerrainRegionBuffer"]
      139 GETTABLE                         R11 R12 R13
      140 CALL                             R9 2 1
      141 JUMPIFNOT                        R9 ; [+32]
      142 RETURN                           R0 0
      143 JUMP                             ; [+30]
      144 GETUPVAL                         R10 6
      145 GETTABLEKS                       R9 R10 K23 ["Import"]
      147 JUMPIFEQ                         R3 R9 ; [+6]
      149 GETUPVAL                         R10 6
      150 GETTABLEKS                       R9 R10 K24 ["Duplicate"]
      152 JUMPIFNOTEQ                      R3 R9 ; [+21]
      154 MOVE                             R9 R8
      155 GETUPVAL                         R13 1
      156 GETTABLEKS                       R12 R13 K6 ["TransformSettings"]
      158 GETTABLE                         R11 R2 R12
      159 GETUPVAL                         R13 3
      160 GETTABLEKS                       R12 R13 K25 ["TerrainRegionSize"]
      162 GETTABLE                         R10 R11 R12
      163 GETUPVAL                         R14 1
      164 GETTABLEKS                       R13 R14 K6 ["TransformSettings"]
      166 GETTABLE                         R12 R2 R13
      167 GETUPVAL                         R14 3
      168 GETTABLEKS                       R13 R14 K19 ["TerrainRegion"]
      170 GETTABLE                         R11 R12 R13
      171 CALL                             R9 2 1
      172 JUMPIFNOT                        R9 ; [+1]
      173 RETURN                           R0 0
      174 GETTABLEKS                       R10 R0 K15 ["_operation"]
      176 GETTABLEKS                       R9 R10 K26 ["Finished"]
      178 NEWCLOSURE                       R11 P1
      179 CAPTURE                          VAL R0
      180 CAPTURE                          UPVAL U8
      181 NAMECALL                         R9 R9 K27 ["Connect"]
      183 CALL                             R9 2 1
      184 SETTABLEKS                       R9 R0 K28 ["_operationFinishedConnection"]
      186 GETTABLEKS                       R9 R0 K15 ["_operation"]
      188 GETUPVAL                         R12 9
      189 GETTABLEKS                       R11 R12 K29 ["join"]
      191 DUPTABLE                         R12 K31 [{"Payload"}]
      192 SETTABLEKS                       R2 R12 K30 ["Payload"]
      194 MOVE                             R13 R1
      195 CALL                             R11 2 -1
      196 NAMECALL                         R9 R9 K32 ["start"]
      198 CALL                             R9 -1 0
      199 GETTABLEKS                       R9 R0 K33 ["OnOperationChanged"]
      201 NAMECALL                         R9 R9 K34 ["Fire"]
      203 CALL                             R9 1 0
      204 RETURN                           R0 0

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
        7 NEWTABLE                         R3 1 0
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R4 R5 K1 ["TransformSettings"]
       12 NEWTABLE                         R5 2 0
       14 GETUPVAL                         R7 2
       15 GETTABLEKS                       R6 R7 K2 ["Rotation"]
       17 DUPTABLE                         R7 K4 [{"Hidden"}]
       18 LOADB                            R8 0
       19 SETTABLEKS                       R8 R7 K3 ["Hidden"]
       21 SETTABLE                         R7 R5 R6
       22 GETUPVAL                         R7 2
       23 GETTABLEKS                       R6 R7 K5 ["Apply"]
       25 DUPTABLE                         R7 K9 [{"Hidden", "Label", "Schema", "Value"}]
       26 GETTABLEKS                       R11 R0 K10 ["_persistentUserSettings"]
       28 GETUPVAL                         R13 1
       29 GETTABLEKS                       R12 R13 K1 ["TransformSettings"]
       31 GETTABLE                         R10 R11 R12
       32 GETUPVAL                         R12 2
       33 GETTABLEKS                       R11 R12 K11 ["ForcePreview"]
       35 GETTABLE                         R9 R10 R11
       36 NOT                              R8 R9
       37 JUMPIFNOT                        R8 ; [+10]
       38 GETTABLEKS                       R10 R0 K10 ["_persistentUserSettings"]
       40 GETUPVAL                         R12 1
       41 GETTABLEKS                       R11 R12 K1 ["TransformSettings"]
       43 GETTABLE                         R9 R10 R11
       44 GETUPVAL                         R11 2
       45 GETTABLEKS                       R10 R11 K12 ["LiveEdit"]
       47 GETTABLE                         R8 R9 R10
       48 SETTABLEKS                       R8 R7 K3 ["Hidden"]
       50 LOADK                            R8 K13 [""]
       51 SETTABLEKS                       R8 R7 K6 ["Label"]
       53 DUPTABLE                         R8 K15 [{"OnClick"}]
       54 NEWCLOSURE                       R9 P0
       55 CAPTURE                          VAL R0
       56 SETTABLEKS                       R9 R8 K14 ["OnClick"]
       58 SETTABLEKS                       R8 R7 K7 ["Schema"]
       60 LOADB                            R8 1
       61 SETTABLEKS                       R8 R7 K8 ["Value"]
       63 SETTABLE                         R7 R5 R6
       64 SETTABLE                         R5 R3 R4
       65 SETTABLEKS                       R3 R0 K16 ["_overrides"]
       67 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["Get"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["SelectionSettings"]
        6 GETTABLEKS                       R3 R0 K2 ["_pluginController"]
        8 GETTABLEKS                       R5 R0 K3 ["_persistentUserSettings"]
       10 GETUPVAL                         R7 1
       11 GETTABLEKS                       R6 R7 K1 ["SelectionSettings"]
       13 GETTABLE                         R4 R5 R6
       14 GETTABLEKS                       R6 R0 K4 ["_sessionUserSettings"]
       16 GETUPVAL                         R8 1
       17 GETTABLEKS                       R7 R8 K1 ["SelectionSettings"]
       19 GETTABLE                         R5 R6 R7
       20 CALL                             R1 4 1
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R2 R3 K0 ["Get"]
       24 GETUPVAL                         R4 1
       25 GETTABLEKS                       R3 R4 K5 ["TransformSettings"]
       27 GETTABLEKS                       R4 R0 K2 ["_pluginController"]
       29 GETTABLEKS                       R6 R0 K3 ["_persistentUserSettings"]
       31 GETUPVAL                         R8 1
       32 GETTABLEKS                       R7 R8 K5 ["TransformSettings"]
       34 GETTABLE                         R5 R6 R7
       35 GETTABLEKS                       R7 R0 K4 ["_sessionUserSettings"]
       37 GETUPVAL                         R9 1
       38 GETTABLEKS                       R8 R9 K5 ["TransformSettings"]
       40 GETTABLE                         R6 R7 R8
       41 CALL                             R2 4 1
       42 RETURN                           R1 2

PROTO_6:
        0 GETUPVAL                         R5 0
        1 MOVE                             R6 R1
        2 MOVE                             R7 R2
        3 CALL                             R5 2 1
        4 GETTABLEKS                       R7 R5 K0 ["Max"]
        6 GETTABLEKS                       R8 R5 K1 ["Min"]
        8 SUB                              R6 R7 R8
        9 GETTABLEKS                       R10 R6 K2 ["X"]
       11 GETTABLEKS                       R11 R6 K3 ["Y"]
       13 MUL                              R9 R10 R11
       14 GETTABLEKS                       R10 R6 K4 ["Z"]
       16 MUL                              R8 R9 R10
       17 GETUPVAL                         R9 1
       18 JUMPIFLT                         R9 R8 ; [+2]
       20 LOADB                            R7 0 +1
       21 LOADB                            R7 1
       22 NAMECALL                         R8 R0 K5 ["hasError"]
       24 CALL                             R8 1 1
       25 JUMPIFNOT                        R8 ; [+1]
       26 LOADB                            R7 1
       27 JUMPIFNOT                        R3 ; [+31]
       28 JUMPIFNOT                        R4 ; [+30]
       29 GETUPVAL                         R8 0
       30 MOVE                             R9 R3
       31 MOVE                             R10 R4
       32 CALL                             R8 2 1
       33 GETTABLEKS                       R10 R8 K0 ["Max"]
       35 GETTABLEKS                       R11 R8 K1 ["Min"]
       37 SUB                              R9 R10 R11
       38 MOVE                             R10 R7
       39 JUMPIF                           R10 ; [+13]
       40 GETTABLEKS                       R13 R9 K2 ["X"]
       42 GETTABLEKS                       R14 R9 K3 ["Y"]
       44 MUL                              R12 R13 R14
       45 GETTABLEKS                       R13 R9 K4 ["Z"]
       47 MUL                              R11 R12 R13
       48 GETUPVAL                         R12 1
       49 JUMPIFLT                         R12 R11 ; [+2]
       51 LOADB                            R10 0 +1
       52 LOADB                            R10 1
       53 MOVE                             R7 R10
       54 NAMECALL                         R10 R0 K5 ["hasError"]
       56 CALL                             R10 1 1
       57 JUMPIFNOT                        R10 ; [+1]
       58 LOADB                            R7 1
       59 NEWTABLE                         R10 1 0
       61 GETUPVAL                         R12 2
       62 GETTABLEKS                       R11 R12 K6 ["TransformSettings"]
       64 NEWTABLE                         R12 1 0
       66 GETUPVAL                         R14 3
       67 GETTABLEKS                       R13 R14 K7 ["ForcePreview"]
       69 SETTABLE                         R7 R12 R13
       70 SETTABLE                         R12 R10 R11
       71 NAMECALL                         R8 R0 K8 ["setPayload"]
       73 CALL                             R8 2 0
       74 RETURN                           R7 1

PROTO_7:
        0 NAMECALL                         R1 R0 K0 ["getValues"]
        2 CALL                             R1 1 2
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R4 R5 K1 ["Size"]
        6 GETTABLE                         R3 R1 R4
        7 GETUPVAL                         R6 0
        8 GETTABLEKS                       R5 R6 K2 ["Transform"]
       10 GETTABLE                         R4 R1 R5
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R5 R6 K3 ["hasError"]
       14 MOVE                             R6 R0
       15 CALL                             R5 1 1
       16 JUMPIF                           R5 ; [+5]
       17 GETUPVAL                         R6 2
       18 MOVE                             R7 R4
       19 MOVE                             R8 R3
       20 CALL                             R6 2 1
       21 NOT                              R5 R6
       22 RETURN                           R5 1

PROTO_8:
        0 NAMECALL                         R1 R0 K0 ["hasError"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R5 R0 K1 ["_overrides"]
        5 GETUPVAL                         R7 0
        6 GETTABLEKS                       R6 R7 K2 ["TransformSettings"]
        8 GETTABLE                         R4 R5 R6
        9 GETUPVAL                         R6 1
       10 GETTABLEKS                       R5 R6 K3 ["Apply"]
       12 GETTABLE                         R3 R4 R5
       13 GETTABLEKS                       R2 R3 K4 ["Disabled"]
       15 JUMPIFEQ                         R2 R1 ; [+18]
       17 GETTABLEKS                       R4 R0 K1 ["_overrides"]
       19 GETUPVAL                         R6 0
       20 GETTABLEKS                       R5 R6 K2 ["TransformSettings"]
       22 GETTABLE                         R3 R4 R5
       23 GETUPVAL                         R5 1
       24 GETTABLEKS                       R4 R5 K3 ["Apply"]
       26 GETTABLE                         R2 R3 R4
       27 SETTABLEKS                       R1 R2 K4 ["Disabled"]
       29 GETTABLEKS                       R2 R0 K5 ["OnInternalsChanged"]
       31 NAMECALL                         R2 R2 K6 ["Fire"]
       33 CALL                             R2 1 0
       34 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["_live"]
        3 JUMPIFNOT                        R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 0
        6 NAMECALL                         R0 R0 K1 ["startOperation"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_10:
        0 NAMECALL                         R1 R0 K0 ["getValues"]
        2 CALL                             R1 1 2
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R4 R5 K1 ["Size"]
        6 GETTABLE                         R3 R1 R4
        7 GETUPVAL                         R6 0
        8 GETTABLEKS                       R5 R6 K2 ["SnapToVoxels"]
       10 GETTABLE                         R4 R1 R5
       11 GETUPVAL                         R7 0
       12 GETTABLEKS                       R6 R7 K3 ["Transform"]
       14 GETTABLE                         R5 R1 R6
       15 GETUPVAL                         R8 0
       16 GETTABLEKS                       R7 R8 K4 ["TransformMode"]
       18 GETTABLE                         R6 R2 R7
       19 MOVE                             R9 R5
       20 MOVE                             R10 R3
       21 NAMECALL                         R7 R0 K5 ["checkSize"]
       23 CALL                             R7 3 0
       24 LOADNIL                          R7
       25 GETUPVAL                         R9 1
       26 GETTABLEKS                       R8 R9 K6 ["Move"]
       28 JUMPIFNOTEQ                      R6 R8 ; [+20]
       30 GETTABLEKS                       R9 R0 K7 ["_services"]
       32 GETTABLEKS                       R8 R9 K8 ["Terrain"]
       34 GETUPVAL                         R10 2
       35 MOVE                             R11 R5
       36 MOVE                             R12 R3
       37 LOADB                            R13 1
       38 CALL                             R10 3 -1
       39 NAMECALL                         R8 R8 K9 ["CopyRegion"]
       41 CALL                             R8 -1 1
       42 MOVE                             R7 R8
       43 GETTABLEKS                       R9 R0 K7 ["_services"]
       45 GETTABLEKS                       R8 R9 K10 ["CoreGui"]
       47 SETTABLEKS                       R8 R7 K11 ["Parent"]
       49 GETTABLEKS                       R8 R0 K12 ["_shortcutController"]
       51 GETUPVAL                         R11 3
       52 GETTABLEKS                       R10 R11 K13 ["Apply"]
       54 NEWCLOSURE                       R11 P0
       55 CAPTURE                          VAL R0
       56 NAMECALL                         R8 R8 K14 ["Connect"]
       58 CALL                             R8 3 1
       59 SETTABLEKS                       R8 R0 K15 ["_applyConnection"]
       61 GETTABLEKS                       R8 R0 K12 ["_shortcutController"]
       63 GETUPVAL                         R11 3
       64 GETTABLEKS                       R10 R11 K13 ["Apply"]
       66 NAMECALL                         R8 R8 K16 ["Enable"]
       68 CALL                             R8 2 0
       69 NEWTABLE                         R10 1 0
       71 GETUPVAL                         R12 4
       72 GETTABLEKS                       R11 R12 K17 ["TransformSettings"]
       74 NEWTABLE                         R12 4 0
       76 GETUPVAL                         R14 5
       77 GETTABLEKS                       R13 R14 K1 ["Size"]
       79 SETTABLE                         R3 R12 R13
       80 GETUPVAL                         R14 5
       81 GETTABLEKS                       R13 R14 K2 ["SnapToVoxels"]
       83 SETTABLE                         R4 R12 R13
       84 GETUPVAL                         R14 5
       85 GETTABLEKS                       R13 R14 K3 ["Transform"]
       87 SETTABLE                         R5 R12 R13
       88 GETUPVAL                         R14 5
       89 GETTABLEKS                       R13 R14 K18 ["TerrainRegion"]
       91 SETTABLE                         R7 R12 R13
       92 SETTABLE                         R12 R10 R11
       93 NAMECALL                         R8 R0 K19 ["setPayload"]
       95 CALL                             R8 2 0
       96 GETUPVAL                         R8 2
       97 MOVE                             R9 R5
       98 MOVE                             R10 R3
       99 CALL                             R8 2 1
      100 SETTABLEKS                       R8 R0 K20 ["_region"]
      102 GETUPVAL                         R8 2
      103 MOVE                             R9 R5
      104 MOVE                             R10 R3
      105 CALL                             R8 2 1
      106 SETTABLEKS                       R8 R0 K21 ["_regionOriginal"]
      108 GETTABLEKS                       R9 R0 K7 ["_services"]
      110 GETTABLEKS                       R8 R9 K8 ["Terrain"]
      112 GETTABLEKS                       R10 R0 K20 ["_region"]
      114 NAMECALL                         R8 R8 K9 ["CopyRegion"]
      116 CALL                             R8 2 1
      117 SETTABLEKS                       R8 R0 K22 ["_terrainBackup"]
      119 GETTABLEKS                       R9 R0 K7 ["_services"]
      121 GETTABLEKS                       R8 R9 K8 ["Terrain"]
      123 GETTABLEKS                       R10 R0 K21 ["_regionOriginal"]
      125 NAMECALL                         R8 R8 K9 ["CopyRegion"]
      127 CALL                             R8 2 1
      128 SETTABLEKS                       R8 R0 K23 ["_terrainOriginal"]
      130 GETTABLEKS                       R8 R0 K24 ["_analytics"]
      132 LOADK                            R10 K25 ["Activated"]
      133 GETUPVAL                         R12 6
      134 GETTABLEKS                       R11 R12 K3 ["Transform"]
      136 NAMECALL                         R8 R8 K26 ["report"]
      138 CALL                             R8 3 0
      139 NAMECALL                         R8 R0 K27 ["updateValues"]
      141 CALL                             R8 1 0
      142 GETUPVAL                         R9 7
      143 GETTABLEKS                       R8 R9 K28 ["activate"]
      145 MOVE                             R9 R0
      146 CALL                             R8 1 0
      147 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["gizmos"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 MOVE                             R2 R1
        6 LOADNIL                          R3
        7 LOADNIL                          R4
        8 FORGPREP                         R2
        9 GETTABLEKS                       R7 R6 K1 ["Id"]
       11 GETUPVAL                         R9 1
       12 GETTABLEKS                       R8 R9 K2 ["Region"]
       14 JUMPIFNOTEQ                      R7 R8 ; [+22]
       16 GETTABLEKS                       R7 R6 K3 ["Value"]
       18 GETUPVAL                         R9 2
       19 GETTABLEKS                       R8 R9 K4 ["SelectionSettings"]
       21 GETUPVAL                         R10 3
       22 GETTABLEKS                       R9 R10 K5 ["Get"]
       24 GETUPVAL                         R11 2
       25 GETTABLEKS                       R10 R11 K4 ["SelectionSettings"]
       27 GETTABLEKS                       R11 R0 K6 ["_pluginController"]
       29 GETTABLEKS                       R13 R0 K7 ["_persistentUserSettings"]
       31 GETUPVAL                         R15 2
       32 GETTABLEKS                       R14 R15 K4 ["SelectionSettings"]
       34 GETTABLE                         R12 R13 R14
       35 CALL                             R9 3 1
       36 SETTABLE                         R9 R7 R8
       37 FORGLOOP                         R2 2 ; [-29]
       39 RETURN                           R1 1

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["_operation"]
        2 RETURN                           R1 1

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["_note"]
        2 RETURN                           R1 1

PROTO_14:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["deactivate"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETTABLEKS                       R1 R0 K1 ["_applyConnection"]
        7 NAMECALL                         R1 R1 K2 ["Disconnect"]
        9 CALL                             R1 1 0
       10 GETTABLEKS                       R1 R0 K3 ["_shortcutController"]
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R3 R4 K4 ["Apply"]
       15 NAMECALL                         R1 R1 K5 ["Disable"]
       17 CALL                             R1 2 0
       18 GETUPVAL                         R2 2
       19 GETTABLEKS                       R1 R2 K6 ["Set"]
       21 GETUPVAL                         R3 3
       22 GETTABLEKS                       R2 R3 K7 ["TransformSettings"]
       24 GETTABLEKS                       R3 R0 K8 ["_pluginController"]
       26 DUPTABLE                         R4 K10 [{"TransformMode"}]
       27 GETUPVAL                         R6 4
       28 GETTABLEKS                       R5 R6 K11 ["Move"]
       30 SETTABLEKS                       R5 R4 K9 ["TransformMode"]
       32 CALL                             R1 3 0
       33 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["saveGizmos"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 0
        6 NAMECALL                         R2 R0 K1 ["updateValues"]
        8 CALL                             R2 1 0
        9 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["saveForm"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 0
        6 NAMECALL                         R2 R0 K1 ["updateValues"]
        8 CALL                             R2 1 0
        9 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["OnFormChanged"]
        3 NAMECALL                         R0 R0 K1 ["Fire"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_18:
        0 NAMECALL                         R1 R0 K0 ["getValues"]
        2 CALL                             R1 1 2
        3 GETUPVAL                         R6 0
        4 GETTABLEKS                       R5 R6 K1 ["ForcePreview"]
        6 GETTABLE                         R4 R2 R5
        7 NOT                              R3 R4
        8 JUMPIFNOT                        R3 ; [+4]
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R4 R5 K2 ["LiveEdit"]
       12 GETTABLE                         R3 R2 R4
       13 GETTABLEKS                       R7 R0 K3 ["_overrides"]
       15 GETUPVAL                         R9 1
       16 GETTABLEKS                       R8 R9 K4 ["TransformSettings"]
       18 GETTABLE                         R6 R7 R8
       19 GETUPVAL                         R8 0
       20 GETTABLEKS                       R7 R8 K5 ["Apply"]
       22 GETTABLE                         R5 R6 R7
       23 GETTABLEKS                       R4 R5 K6 ["Hidden"]
       25 JUMPIFEQ                         R4 R3 ; [+31]
       27 JUMPIFNOT                        R3 ; [+2]
       28 LOADNIL                          R4
       29 JUMP                             ; [+3]
       30 GETUPVAL                         R5 2
       31 GETTABLEKS                       R4 R5 K7 ["Transform"]
       33 SETTABLEKS                       R4 R0 K8 ["_note"]
       35 GETTABLEKS                       R4 R0 K9 ["OnNoteChanged"]
       37 NAMECALL                         R4 R4 K10 ["Fire"]
       39 CALL                             R4 1 0
       40 GETTABLEKS                       R6 R0 K3 ["_overrides"]
       42 GETUPVAL                         R8 1
       43 GETTABLEKS                       R7 R8 K4 ["TransformSettings"]
       45 GETTABLE                         R5 R6 R7
       46 GETUPVAL                         R7 0
       47 GETTABLEKS                       R6 R7 K5 ["Apply"]
       49 GETTABLE                         R4 R5 R6
       50 SETTABLEKS                       R3 R4 K6 ["Hidden"]
       52 GETIMPORT                        R4 K13 [task.spawn]
       54 NEWCLOSURE                       R5 P0
       55 CAPTURE                          VAL R0
       56 CALL                             R4 1 0
       57 JUMPIFNOT                        R3 ; [+32]
       58 GETTABLEKS                       R4 R0 K14 ["_live"]
       60 JUMPIF                           R4 ; [+60]
       61 GETTABLEKS                       R5 R0 K15 ["_services"]
       63 GETTABLEKS                       R4 R5 K16 ["Terrain"]
       65 GETTABLEKS                       R6 R0 K17 ["_terrainOriginal"]
       67 GETTABLEKS                       R8 R0 K18 ["_regionOriginal"]
       69 GETTABLEKS                       R7 R8 K19 ["Min"]
       71 LOADB                            R8 1
       72 NAMECALL                         R4 R4 K20 ["PasteRegion"]
       74 CALL                             R4 4 0
       75 GETTABLEKS                       R5 R0 K15 ["_services"]
       77 GETTABLEKS                       R4 R5 K16 ["Terrain"]
       79 GETTABLEKS                       R6 R0 K21 ["_terrainBackup"]
       81 GETTABLEKS                       R8 R0 K22 ["_region"]
       83 GETTABLEKS                       R7 R8 K19 ["Min"]
       85 LOADB                            R8 1
       86 NAMECALL                         R4 R4 K20 ["PasteRegion"]
       88 CALL                             R4 4 0
       89 JUMP                             ; [+31]
       90 GETTABLEKS                       R4 R0 K14 ["_live"]
       92 JUMPIFNOT                        R4 ; [+28]
       93 GETTABLEKS                       R5 R0 K15 ["_services"]
       95 GETTABLEKS                       R4 R5 K16 ["Terrain"]
       97 GETTABLEKS                       R6 R0 K17 ["_terrainOriginal"]
       99 GETTABLEKS                       R8 R0 K18 ["_regionOriginal"]
      101 GETTABLEKS                       R7 R8 K19 ["Min"]
      103 LOADB                            R8 1
      104 NAMECALL                         R4 R4 K20 ["PasteRegion"]
      106 CALL                             R4 4 0
      107 GETTABLEKS                       R5 R0 K15 ["_services"]
      109 GETTABLEKS                       R4 R5 K16 ["Terrain"]
      111 GETTABLEKS                       R6 R0 K21 ["_terrainBackup"]
      113 GETTABLEKS                       R8 R0 K22 ["_region"]
      115 GETTABLEKS                       R7 R8 K19 ["Min"]
      117 LOADB                            R8 1
      118 NAMECALL                         R4 R4 K20 ["PasteRegion"]
      120 CALL                             R4 4 0
      121 SETTABLEKS                       R3 R0 K14 ["_live"]
      123 GETTABLEKS                       R5 R0 K14 ["_live"]
      125 NOT                              R4 R5
      126 RETURN                           R4 1

PROTO_19:
        0 NAMECALL                         R1 R0 K0 ["getValues"]
        2 CALL                             R1 1 2
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R4 R5 K1 ["Size"]
        6 GETTABLE                         R3 R1 R4
        7 GETUPVAL                         R6 0
        8 GETTABLEKS                       R5 R6 K2 ["Transform"]
       10 GETTABLE                         R4 R1 R5
       11 GETUPVAL                         R7 1
       12 GETTABLEKS                       R6 R7 K1 ["Size"]
       14 GETTABLE                         R5 R2 R6
       15 GETUPVAL                         R8 1
       16 GETTABLEKS                       R7 R8 K2 ["Transform"]
       18 GETTABLE                         R6 R2 R7
       19 MOVE                             R9 R4
       20 MOVE                             R10 R3
       21 MOVE                             R11 R6
       22 MOVE                             R12 R5
       23 NAMECALL                         R7 R0 K3 ["checkSize"]
       25 CALL                             R7 5 0
       26 NAMECALL                         R7 R0 K4 ["updateMode"]
       28 CALL                             R7 1 1
       29 JUMPIFNOT                        R7 ; [+1]
       30 RETURN                           R0 0
       31 GETUPVAL                         R9 1
       32 GETTABLEKS                       R8 R9 K5 ["OperationSource"]
       34 GETTABLE                         R7 R2 R8
       35 GETUPVAL                         R9 2
       36 GETTABLEKS                       R8 R9 K6 ["History"]
       38 JUMPIFNOTEQ                      R7 R8 ; [+2]
       40 RETURN                           R0 0
       41 MOVE                             R10 R1
       42 MOVE                             R11 R2
       43 NAMECALL                         R8 R0 K7 ["transform"]
       45 CALL                             R8 3 0
       46 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["TransformMode"]
        3 GETTABLE                         R3 R2 R4
        4 GETUPVAL                         R6 1
        5 GETTABLEKS                       R5 R6 K1 ["Size"]
        7 GETTABLE                         R4 R2 R5
        8 GETUPVAL                         R7 1
        9 GETTABLEKS                       R6 R7 K2 ["Transform"]
       11 GETTABLE                         R5 R2 R6
       12 GETUPVAL                         R8 2
       13 GETTABLEKS                       R7 R8 K3 ["Paste"]
       15 JUMPIFNOTEQ                      R3 R7 ; [+6]
       17 GETUPVAL                         R8 1
       18 GETTABLEKS                       R7 R8 K4 ["TransformRegionBufferSize"]
       20 GETTABLE                         R6 R2 R7
       21 JUMP                             ; [+4]
       22 GETUPVAL                         R8 0
       23 GETTABLEKS                       R7 R8 K1 ["Size"]
       25 GETTABLE                         R6 R1 R7
       26 GETUPVAL                         R9 0
       27 GETTABLEKS                       R8 R9 K2 ["Transform"]
       29 GETTABLE                         R7 R1 R8
       30 GETUPVAL                         R8 3
       31 MOVE                             R9 R5
       32 MOVE                             R10 R4
       33 CALL                             R8 2 1
       34 GETIMPORT                        R9 K7 [os.clock]
       36 CALL                             R9 0 1
       37 GETTABLEKS                       R11 R0 K8 ["_services"]
       39 GETTABLEKS                       R10 R11 K9 ["Terrain"]
       41 GETTABLEKS                       R12 R0 K10 ["_terrainBackup"]
       43 GETTABLEKS                       R14 R0 K11 ["_region"]
       45 GETTABLEKS                       R13 R14 K12 ["Min"]
       47 LOADB                            R14 1
       48 NAMECALL                         R10 R10 K13 ["PasteRegion"]
       50 CALL                             R10 4 0
       51 GETTABLEKS                       R11 R0 K8 ["_services"]
       53 GETTABLEKS                       R10 R11 K9 ["Terrain"]
       55 MOVE                             R12 R8
       56 NAMECALL                         R10 R10 K14 ["CopyRegion"]
       58 CALL                             R10 2 1
       59 SETTABLEKS                       R10 R0 K10 ["_terrainBackup"]
       61 SETTABLEKS                       R8 R0 K11 ["_region"]
       63 GETUPVAL                         R12 1
       64 GETTABLEKS                       R11 R12 K15 ["MergeEmpty"]
       66 GETTABLE                         R10 R2 R11
       67 LOADNIL                          R11
       68 GETUPVAL                         R13 2
       69 GETTABLEKS                       R12 R13 K16 ["Move"]
       71 JUMPIFNOTEQ                      R3 R12 ; [+33]
       73 GETUPVAL                         R14 1
       74 GETTABLEKS                       R13 R14 K17 ["TerrainRegion"]
       76 GETTABLE                         R12 R2 R13
       77 NAMECALL                         R12 R12 K18 ["Clone"]
       79 CALL                             R12 1 1
       80 MOVE                             R11 R12
       81 JUMPIFNOT                        R10 ; [+11]
       82 GETTABLEKS                       R13 R0 K8 ["_services"]
       84 GETTABLEKS                       R12 R13 K9 ["Terrain"]
       86 MOVE                             R14 R5
       87 MOVE                             R15 R4
       88 GETIMPORT                        R16 K22 [Enum.Material.Air]
       90 NAMECALL                         R12 R12 K23 ["SetMaterialInTransform"]
       92 CALL                             R12 4 0
       93 GETTABLEKS                       R13 R0 K8 ["_services"]
       95 GETTABLEKS                       R12 R13 K9 ["Terrain"]
       97 MOVE                             R14 R7
       98 MOVE                             R15 R6
       99 GETIMPORT                        R16 K22 [Enum.Material.Air]
      101 NAMECALL                         R12 R12 K23 ["SetMaterialInTransform"]
      103 CALL                             R12 4 0
      104 JUMP                             ; [+58]
      105 GETUPVAL                         R13 2
      106 GETTABLEKS                       R12 R13 K3 ["Paste"]
      108 JUMPIFNOTEQ                      R3 R12 ; [+22]
      110 GETUPVAL                         R14 1
      111 GETTABLEKS                       R13 R14 K24 ["TerrainRegionBuffer"]
      113 GETTABLE                         R12 R2 R13
      114 NAMECALL                         R12 R12 K18 ["Clone"]
      116 CALL                             R12 1 1
      117 MOVE                             R11 R12
      118 JUMPIFNOT                        R10 ; [+44]
      119 GETTABLEKS                       R13 R0 K8 ["_services"]
      121 GETTABLEKS                       R12 R13 K9 ["Terrain"]
      123 MOVE                             R14 R5
      124 MOVE                             R15 R4
      125 GETIMPORT                        R16 K22 [Enum.Material.Air]
      127 NAMECALL                         R12 R12 K23 ["SetMaterialInTransform"]
      129 CALL                             R12 4 0
      130 JUMP                             ; [+32]
      131 GETUPVAL                         R13 2
      132 GETTABLEKS                       R12 R13 K25 ["Duplicate"]
      134 JUMPIFEQ                         R3 R12 ; [+6]
      136 GETUPVAL                         R13 2
      137 GETTABLEKS                       R12 R13 K26 ["Import"]
      139 JUMPIFNOTEQ                      R3 R12 ; [+22]
      141 GETUPVAL                         R14 1
      142 GETTABLEKS                       R13 R14 K17 ["TerrainRegion"]
      144 GETTABLE                         R12 R2 R13
      145 NAMECALL                         R12 R12 K18 ["Clone"]
      147 CALL                             R12 1 1
      148 MOVE                             R11 R12
      149 JUMPIFNOT                        R10 ; [+13]
      150 GETTABLEKS                       R13 R0 K8 ["_services"]
      152 GETTABLEKS                       R12 R13 K9 ["Terrain"]
      154 MOVE                             R14 R5
      155 MOVE                             R15 R4
      156 GETIMPORT                        R16 K22 [Enum.Material.Air]
      158 NAMECALL                         R12 R12 K23 ["SetMaterialInTransform"]
      160 CALL                             R12 4 0
      161 JUMP                             ; [+1]
      162 RETURN                           R0 0
      163 GETUPVAL                         R12 4
      164 GETTABLEKS                       R14 R0 K8 ["_services"]
      166 GETTABLEKS                       R13 R14 K9 ["Terrain"]
      168 MOVE                             R14 R11
      169 MOVE                             R15 R5
      170 MOVE                             R16 R4
      171 LOADB                            R17 0
      172 GETTABLEKS                       R18 R5 K27 ["Rotation"]
      174 GETTABLEKS                       R19 R7 K27 ["Rotation"]
      176 JUMPIFNOTEQ                      R18 R19 ; [+5]
      178 JUMPIFEQ                         R4 R6 ; [+2]
      180 LOADB                            R17 0 +1
      181 LOADB                            R17 1
      182 CALL                             R12 5 0
      183 GETIMPORT                        R13 K7 [os.clock]
      185 CALL                             R13 0 1
      186 SUB                              R12 R13 R9
      187 SETTABLEKS                       R12 R0 K28 ["_time"]
      189 GETUPVAL                         R13 5
      190 GETTABLEKS                       R12 R13 K29 ["NormalizeRegionTimer"]
      192 MOVE                             R13 R9
      193 MOVE                             R14 R4
      194 CALL                             R12 2 1
      195 JUMPIFNOT                        R12 ; [+16]
      196 GETTABLEKS                       R15 R0 K31 ["_totalTime"]
      198 ORK                              R14 R15 K30 [0]
      199 ADD                              R13 R14 R12
      200 SETTABLEKS                       R13 R0 K31 ["_totalTime"]
      202 GETTABLEKS                       R14 R0 K32 ["_count"]
      204 JUMPIFNOT                        R14 ; [+4]
      205 GETTABLEKS                       R14 R0 K32 ["_count"]
      207 ADDK                             R13 R14 K33 [1]
      208 JUMP                             ; [+1]
      209 LOADN                            R13 1
      210 SETTABLEKS                       R13 R0 K32 ["_count"]
      212 GETIMPORT                        R14 K7 [os.clock]
      214 CALL                             R14 0 1
      215 SUB                              R13 R14 R9
      216 LOADN                            R14 5
      217 JUMPIFNOTLT                      R14 R13 ; [+17]
      219 NEWTABLE                         R15 1 0
      221 GETUPVAL                         R17 6
      222 GETTABLEKS                       R16 R17 K34 ["TransformSettings"]
      224 NEWTABLE                         R17 1 0
      226 GETUPVAL                         R19 1
      227 GETTABLEKS                       R18 R19 K35 ["LiveEdit"]
      229 LOADB                            R19 0
      230 SETTABLE                         R19 R17 R18
      231 SETTABLE                         R17 R15 R16
      232 NAMECALL                         R13 R0 K36 ["setPayload"]
      234 CALL                             R13 2 0
      235 RETURN                           R0 0

PROTO_21:
        0 NAMECALL                         R1 R0 K0 ["getValues"]
        2 CALL                             R1 1 2
        3 GETUPVAL                         R6 0
        4 GETTABLEKS                       R5 R6 K1 ["ForcePreview"]
        6 GETTABLE                         R4 R2 R5
        7 NOT                              R3 R4
        8 JUMPIFNOT                        R3 ; [+4]
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R4 R5 K2 ["LiveEdit"]
       12 GETTABLE                         R3 R2 R4
       13 JUMPIFNOT                        R3 ; [+52]
       14 GETTABLEKS                       R4 R0 K3 ["_time"]
       16 JUMPIFNOT                        R4 ; [+49]
       17 NAMECALL                         R4 R0 K4 ["getPayload"]
       19 CALL                             R4 1 1
       20 GETTABLEKS                       R5 R0 K5 ["_analytics"]
       22 LOADK                            R7 K6 ["RegionProperties"]
       23 GETUPVAL                         R9 1
       24 GETTABLEKS                       R8 R9 K7 ["getRegionPayload"]
       26 MOVE                             R9 R4
       27 GETTABLEKS                       R10 R0 K3 ["_time"]
       29 GETUPVAL                         R12 2
       30 GETTABLEKS                       R11 R12 K8 ["Transform"]
       32 CALL                             R8 3 -1
       33 NAMECALL                         R5 R5 K9 ["report"]
       35 CALL                             R5 -1 0
       36 GETTABLEKS                       R5 R0 K5 ["_analytics"]
       38 LOADK                            R7 K10 ["Usage"]
       39 GETUPVAL                         R9 2
       40 GETTABLEKS                       R8 R9 K8 ["Transform"]
       42 LOADN                            R9 1
       43 NAMECALL                         R5 R5 K9 ["report"]
       45 CALL                             R5 4 0
       46 GETTABLEKS                       R5 R0 K11 ["_count"]
       48 JUMPIFNOT                        R5 ; [+14]
       49 GETTABLEKS                       R5 R0 K5 ["_analytics"]
       51 LOADK                            R7 K12 ["Performance"]
       52 GETUPVAL                         R9 2
       53 GETTABLEKS                       R8 R9 K8 ["Transform"]
       55 GETTABLEKS                       R10 R0 K13 ["_totalTime"]
       57 GETTABLEKS                       R11 R0 K11 ["_count"]
       59 DIV                              R9 R10 R11
       60 NAMECALL                         R5 R5 K9 ["report"]
       62 CALL                             R5 4 0
       63 LOADNIL                          R5
       64 SETTABLEKS                       R5 R0 K3 ["_time"]
       66 RETURN                           R0 0

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
       32 GETTABLEKS                       R5 R3 K13 ["Gizmo"]
       34 GETTABLEKS                       R6 R3 K14 ["Note"]
       36 GETTABLEKS                       R7 R3 K15 ["OperationSource"]
       38 GETTABLEKS                       R8 R3 K16 ["PluginAction"]
       40 GETTABLEKS                       R9 R3 K17 ["SelectionSettings"]
       42 GETTABLEKS                       R10 R3 K18 ["TransformMode"]
       44 GETTABLEKS                       R11 R3 K19 ["TransformSettings"]
       46 GETTABLEKS                       R12 R3 K20 ["Tab"]
       48 GETTABLEKS                       R13 R3 K21 ["Tool"]
       50 GETTABLEKS                       R15 R0 K10 ["Src"]
       52 GETTABLEKS                       R14 R15 K22 ["Util"]
       54 GETIMPORT                        R15 K5 [require]
       56 GETTABLEKS                       R16 R14 K23 ["AnalyticsHelper"]
       58 CALL                             R15 1 1
       59 GETIMPORT                        R16 K5 [require]
       61 GETTABLEKS                       R17 R14 K24 ["ApplyTransform"]
       63 CALL                             R16 1 1
       64 GETIMPORT                        R17 K5 [require]
       66 GETTABLEKS                       R18 R14 K25 ["ConvertTransformToRegion"]
       68 CALL                             R17 1 1
       69 GETIMPORT                        R18 K5 [require]
       71 GETTABLEKS                       R19 R14 K26 ["getWithinTerrainBounds"]
       73 CALL                             R18 1 1
       74 GETIMPORT                        R19 K5 [require]
       76 GETTABLEKS                       R20 R14 K27 ["SettingsHelper"]
       78 CALL                             R19 1 1
       79 GETIMPORT                        R20 K5 [require]
       81 GETTABLEKS                       R22 R14 K28 ["Operations"]
       83 GETTABLEKS                       R21 R22 K29 ["TransformOperation"]
       85 CALL                             R20 1 1
       86 GETIMPORT                        R21 K31 [game]
       88 LOADK                            R23 K32 ["SmoothTerrainMaxCppRegion"]
       89 NAMECALL                         R21 R21 K33 ["GetFastInt"]
       91 CALL                             R21 2 1
       92 NEWTABLE                         R22 0 1
       94 DUPTABLE                         R23 K36 [{"Defaults", "Id"}]
       95 NEWTABLE                         R24 4 0
       97 GETTABLEKS                       R25 R11 K37 ["MergeEmpty"]
       99 LOADB                            R26 0
      100 SETTABLE                         R26 R24 R25
      101 GETTABLEKS                       R25 R11 K38 ["LiveEdit"]
      103 LOADB                            R26 1
      104 SETTABLE                         R26 R24 R25
      105 GETTABLEKS                       R25 R11 K39 ["ForcePreview"]
      107 LOADB                            R26 0
      108 SETTABLE                         R26 R24 R25
      109 GETTABLEKS                       R25 R11 K18 ["TransformMode"]
      111 GETTABLEKS                       R26 R10 K40 ["Move"]
      113 SETTABLE                         R26 R24 R25
      114 SETTABLEKS                       R24 R23 K34 ["Defaults"]
      116 GETTABLEKS                       R24 R4 K19 ["TransformSettings"]
      118 SETTABLEKS                       R24 R23 K35 ["Id"]
      120 SETLIST                          R22 R23 1 [1]
      122 NEWTABLE                         R23 0 1
      124 DUPTABLE                         R24 K42 [{"Id", "Schema"}]
      125 GETTABLEKS                       R25 R5 K43 ["Region"]
      127 SETTABLEKS                       R25 R24 K35 ["Id"]
      129 DUPTABLE                         R25 K48 [{"Type", "Color", "Wireframe", "Rotation"}]
      130 GETTABLEKS                       R26 R5 K43 ["Region"]
      132 SETTABLEKS                       R26 R25 K44 ["Type"]
      134 GETIMPORT                        R26 K51 [Color3.new]
      136 LOADN                            R27 0
      137 LOADN                            R28 0
      138 LOADN                            R29 1
      139 CALL                             R26 3 1
      140 SETTABLEKS                       R26 R25 K45 ["Color"]
      142 LOADB                            R26 1
      143 SETTABLEKS                       R26 R25 K46 ["Wireframe"]
      145 LOADB                            R26 1
      146 SETTABLEKS                       R26 R25 K47 ["Rotation"]
      148 SETTABLEKS                       R25 R24 K41 ["Schema"]
      150 SETLIST                          R23 R24 1 [1]
      152 GETTABLEKS                       R26 R13 K52 ["Transform"]
      154 GETTABLEKS                       R27 R12 K53 ["Edit"]
      156 MOVE                             R28 R22
      157 MOVE                             R29 R23
      158 NAMECALL                         R24 R2 K50 ["new"]
      160 CALL                             R24 5 1
      161 DUPCLOSURE                       R25 K54 [PROTO_2]
      162 CAPTURE                          VAL R2
      163 CAPTURE                          VAL R4
      164 CAPTURE                          VAL R19
      165 CAPTURE                          VAL R11
      166 CAPTURE                          VAL R20
      167 CAPTURE                          VAL R17
      168 CAPTURE                          VAL R10
      169 CAPTURE                          VAL R9
      170 CAPTURE                          VAL R13
      171 CAPTURE                          VAL R1
      172 SETTABLEKS                       R25 R24 K55 ["startOperation"]
      174 DUPCLOSURE                       R25 K56 [PROTO_4]
      175 CAPTURE                          VAL R2
      176 CAPTURE                          VAL R4
      177 CAPTURE                          VAL R11
      178 SETTABLEKS                       R25 R24 K57 ["init"]
      180 DUPCLOSURE                       R25 K58 [PROTO_5]
      181 CAPTURE                          VAL R19
      182 CAPTURE                          VAL R4
      183 SETTABLEKS                       R25 R24 K59 ["getValues"]
      185 DUPCLOSURE                       R25 K60 [PROTO_6]
      186 CAPTURE                          VAL R17
      187 CAPTURE                          VAL R21
      188 CAPTURE                          VAL R4
      189 CAPTURE                          VAL R11
      190 SETTABLEKS                       R25 R24 K61 ["checkSize"]
      192 DUPCLOSURE                       R25 K62 [PROTO_7]
      193 CAPTURE                          VAL R9
      194 CAPTURE                          VAL R2
      195 CAPTURE                          VAL R18
      196 SETTABLEKS                       R25 R24 K63 ["hasError"]
      198 DUPCLOSURE                       R25 K64 [PROTO_8]
      199 CAPTURE                          VAL R4
      200 CAPTURE                          VAL R11
      201 SETTABLEKS                       R25 R24 K65 ["setDisabledState"]
      203 DUPCLOSURE                       R25 K66 [PROTO_10]
      204 CAPTURE                          VAL R9
      205 CAPTURE                          VAL R10
      206 CAPTURE                          VAL R17
      207 CAPTURE                          VAL R8
      208 CAPTURE                          VAL R4
      209 CAPTURE                          VAL R11
      210 CAPTURE                          VAL R13
      211 CAPTURE                          VAL R2
      212 SETTABLEKS                       R25 R24 K67 ["activate"]
      214 DUPCLOSURE                       R25 K68 [PROTO_11]
      215 CAPTURE                          VAL R2
      216 CAPTURE                          VAL R5
      217 CAPTURE                          VAL R4
      218 CAPTURE                          VAL R19
      219 SETTABLEKS                       R25 R24 K69 ["gizmos"]
      221 DUPCLOSURE                       R25 K70 [PROTO_12]
      222 SETTABLEKS                       R25 R24 K71 ["operation"]
      224 DUPCLOSURE                       R25 K72 [PROTO_13]
      225 SETTABLEKS                       R25 R24 K73 ["note"]
      227 DUPCLOSURE                       R25 K74 [PROTO_14]
      228 CAPTURE                          VAL R2
      229 CAPTURE                          VAL R8
      230 CAPTURE                          VAL R19
      231 CAPTURE                          VAL R4
      232 CAPTURE                          VAL R10
      233 SETTABLEKS                       R25 R24 K75 ["deactivate"]
      235 DUPCLOSURE                       R25 K76 [PROTO_15]
      236 CAPTURE                          VAL R2
      237 SETTABLEKS                       R25 R24 K77 ["saveGizmos"]
      239 DUPCLOSURE                       R25 K78 [PROTO_16]
      240 CAPTURE                          VAL R2
      241 SETTABLEKS                       R25 R24 K79 ["saveForm"]
      243 DUPCLOSURE                       R25 K80 [PROTO_18]
      244 CAPTURE                          VAL R11
      245 CAPTURE                          VAL R4
      246 CAPTURE                          VAL R6
      247 SETTABLEKS                       R25 R24 K81 ["updateMode"]
      249 DUPCLOSURE                       R25 K82 [PROTO_19]
      250 CAPTURE                          VAL R9
      251 CAPTURE                          VAL R11
      252 CAPTURE                          VAL R7
      253 SETTABLEKS                       R25 R24 K83 ["updateValues"]
      255 DUPCLOSURE                       R25 K84 [PROTO_20]
      256 CAPTURE                          VAL R9
      257 CAPTURE                          VAL R11
      258 CAPTURE                          VAL R10
      259 CAPTURE                          VAL R17
      260 CAPTURE                          VAL R16
      261 CAPTURE                          VAL R15
      262 CAPTURE                          VAL R4
      263 SETTABLEKS                       R25 R24 K85 ["transform"]
      265 DUPCLOSURE                       R25 K86 [PROTO_21]
      266 CAPTURE                          VAL R11
      267 CAPTURE                          VAL R15
      268 CAPTURE                          VAL R13
      269 SETTABLEKS                       R25 R24 K87 ["reportAnalytics"]
      271 RETURN                           R24 1
