PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["Selection"]
        3 GETTABLEKS                       R0 R1 K1 ["new"]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R1 R2 K2 ["Transform"]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R2 R3 K3 ["Size"]
       11 CALL                             R0 2 -1
       12 RETURN                           R0 -1

PROTO_1:
        0 NEWTABLE                         R2 1 0
        2 GETUPVAL                         R4 0
        3 GETUPVAL                         R5 1
        4 GETTABLE                         R3 R4 R5
        5 NEWTABLE                         R4 4 0
        7 GETUPVAL                         R7 2
        8 GETUPVAL                         R8 1
        9 GETTABLE                         R6 R7 R8
       10 GETTABLEKS                       R5 R6 K0 ["OperationSource"]
       12 SETTABLE                         R1 R4 R5
       13 GETUPVAL                         R7 2
       14 GETUPVAL                         R8 1
       15 GETTABLE                         R6 R7 R8
       16 GETTABLEKS                       R5 R6 K1 ["Size"]
       18 GETTABLEKS                       R6 R0 K1 ["Size"]
       20 SETTABLE                         R6 R4 R5
       21 GETUPVAL                         R7 2
       22 GETUPVAL                         R8 1
       23 GETTABLE                         R6 R7 R8
       24 GETTABLEKS                       R5 R6 K2 ["Transform"]
       26 GETTABLEKS                       R6 R0 K2 ["Transform"]
       28 SETTABLE                         R6 R4 R5
       29 SETTABLE                         R4 R2 R3
       30 GETUPVAL                         R3 3
       31 MOVE                             R4 R2
       32 CALL                             R3 1 0
       33 GETUPVAL                         R3 4
       34 MOVE                             R4 R0
       35 CALL                             R3 1 0
       36 GETUPVAL                         R3 1
       37 GETUPVAL                         R5 5
       38 GETTABLEKS                       R4 R5 K2 ["Transform"]
       40 JUMPIFNOTEQ                      R3 R4 ; [+74]
       42 GETUPVAL                         R5 6
       43 GETUPVAL                         R7 7
       44 GETTABLEKS                       R6 R7 K3 ["SelectionSettings"]
       46 GETTABLE                         R4 R5 R6
       47 GETUPVAL                         R6 8
       48 GETTABLEKS                       R5 R6 K1 ["Size"]
       50 GETTABLE                         R3 R4 R5
       51 GETUPVAL                         R6 6
       52 GETUPVAL                         R8 7
       53 GETTABLEKS                       R7 R8 K4 ["TransformSettings"]
       55 GETTABLE                         R5 R6 R7
       56 GETUPVAL                         R7 9
       57 GETTABLEKS                       R6 R7 K5 ["TransformMode"]
       59 GETTABLE                         R4 R5 R6
       60 GETUPVAL                         R6 10
       61 GETTABLEKS                       R5 R6 K6 ["Paste"]
       63 JUMPIFNOTEQ                      R4 R5 ; [+11]
       65 GETUPVAL                         R6 6
       66 GETUPVAL                         R8 7
       67 GETTABLEKS                       R7 R8 K4 ["TransformSettings"]
       69 GETTABLE                         R5 R6 R7
       70 GETUPVAL                         R7 9
       71 GETTABLEKS                       R6 R7 K7 ["TerrainRegionBufferSize"]
       73 GETTABLE                         R3 R5 R6
       74 JUMP                             ; [+34]
       75 GETUPVAL                         R6 10
       76 GETTABLEKS                       R5 R6 K8 ["Import"]
       78 JUMPIFEQ                         R4 R5 ; [+6]
       80 GETUPVAL                         R6 10
       81 GETTABLEKS                       R5 R6 K9 ["Duplicate"]
       83 JUMPIFNOTEQ                      R4 R5 ; [+11]
       85 GETUPVAL                         R6 6
       86 GETUPVAL                         R8 7
       87 GETTABLEKS                       R7 R8 K4 ["TransformSettings"]
       89 GETTABLE                         R5 R6 R7
       90 GETUPVAL                         R7 9
       91 GETTABLEKS                       R6 R7 K10 ["TerrainRegionSize"]
       93 GETTABLE                         R3 R5 R6
       94 JUMP                             ; [+14]
       95 GETUPVAL                         R6 10
       96 GETTABLEKS                       R5 R6 K11 ["Move"]
       98 JUMPIFNOTEQ                      R4 R5 ; [+10]
      100 GETUPVAL                         R6 6
      101 GETUPVAL                         R8 7
      102 GETTABLEKS                       R7 R8 K3 ["SelectionSettings"]
      104 GETTABLE                         R5 R6 R7
      105 GETUPVAL                         R7 8
      106 GETTABLEKS                       R6 R7 K1 ["Size"]
      108 GETTABLE                         R3 R5 R6
      109 GETTABLEKS                       R5 R0 K1 ["Size"]
      111 GETUPVAL                         R6 11
      112 DIV                              R7 R5 R3
      113 CALL                             R6 1 0
      114 RETURN                           R0 0
      115 GETUPVAL                         R3 1
      116 GETUPVAL                         R5 5
      117 GETTABLEKS                       R4 R5 K12 ["Select"]
      119 JUMPIFNOTEQ                      R3 R4 ; [+4]
      121 GETUPVAL                         R3 11
      122 LOADK                            R4 K13 [{1, 1, 1}]
      123 CALL                             R3 1 0
      124 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R3 R4 K0 ["History"]
        5 CALL                             R1 2 0
        6 GETUPVAL                         R1 2
        7 MOVE                             R3 R0
        8 NAMECALL                         R1 R1 K1 ["SetRegionSignal"]
       10 CALL                             R1 2 0
       11 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R6 1
        2 GETUPVAL                         R7 2
        3 GETTABLE                         R5 R6 R7
        4 GETTABLE                         R3 R4 R5
        5 GETUPVAL                         R6 3
        6 GETUPVAL                         R7 2
        7 GETTABLE                         R5 R6 R7
        8 GETTABLEKS                       R4 R5 K0 ["SnapToVoxels"]
       10 GETTABLE                         R2 R3 R4
       11 JUMPIFNOT                        R2 ; [+29]
       12 GETUPVAL                         R6 4
       13 GETTABLEKS                       R5 R6 K2 ["GridSize"]
       15 DIVK                             R4 R5 K1 [4]
       16 FASTCALL1                        MATH_ROUND R4 ; [+2]
       17 GETIMPORT                        R3 K5 [math.round]
       19 CALL                             R3 1 1
       20 MULK                             R2 R3 K1 [4]
       21 LOADN                            R3 0
       22 JUMPIFNOTLE                      R2 R3 ; [+2]
       24 LOADN                            R2 4
       25 SUBK                             R4 R2 K6 [0.01]
       26 FASTCALL1                        MATH_ABS R4 ; [+2]
       27 GETIMPORT                        R3 K8 [math.abs]
       29 CALL                             R3 1 1
       30 LOADK                            R4 K9 [0.001]
       31 JUMPIFNOTLT                      R3 R4 ; [+2]
       33 RETURN                           R1 1
       34 DIV                              R5 R1 R2
       35 FASTCALL1                        MATH_ROUND R5 ; [+2]
       36 GETIMPORT                        R4 K5 [math.round]
       38 CALL                             R4 1 1
       39 MUL                              R3 R4 R2
       40 RETURN                           R3 1
       41 RETURN                           R1 1

PROTO_5:
        0 DUPTABLE                         R2 K2 [{"Size", "Transform"}]
        1 SETTABLEKS                       R1 R2 K0 ["Size"]
        3 SETTABLEKS                       R0 R2 K1 ["Transform"]
        5 GETUPVAL                         R3 0
        6 MOVE                             R5 R2
        7 NAMECALL                         R3 R3 K3 ["SetRegion"]
        9 CALL                             R3 2 0
       10 GETUPVAL                         R3 1
       11 MOVE                             R4 R2
       12 GETUPVAL                         R6 2
       13 GETTABLEKS                       R5 R6 K4 ["Gizmo"]
       15 CALL                             R3 2 0
       16 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["SetRegion"]
        4 CALL                             R1 2 0
        5 GETUPVAL                         R1 1
        6 MOVE                             R2 R0
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R3 R4 K1 ["Gizmo"]
       10 CALL                             R1 2 0
       11 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 SETTABLEKS                       R1 R0 K0 ["selectionOnDragPoint"]
        4 RETURN                           R0 0

PROTO_8:
        0 RETURN                           R0 0

PROTO_9:
        0 LOADB                            R0 1
        1 RETURN                           R0 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["isMocking"]
        3 CALL                             R1 1 1
        4 JUMPIFNOT                        R1 ; [+5]
        5 DUPTABLE                         R0 K2 [{"Mock"}]
        6 LOADB                            R1 1
        7 SETTABLEKS                       R1 R0 K1 ["Mock"]
        9 JUMP                             ; [+13]
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R0 R1 K3 ["new"]
       13 GETUPVAL                         R2 2
       14 GETTABLEKS                       R1 R2 K4 ["Parent"]
       16 GETIMPORT                        R2 K6 [game]
       18 GETIMPORT                        R3 K8 [settings]
       20 CALL                             R3 0 1
       21 GETUPVAL                         R4 3
       22 CALL                             R0 4 1
       23 GETUPVAL                         R1 4
       24 SETTABLEKS                       R1 R0 K9 ["snapToGridSize"]
       26 GETUPVAL                         R1 5
       27 SETTABLEKS                       R1 R0 K10 ["snapToVoxels"]
       29 NEWCLOSURE                       R1 P0
       30 CAPTURE                          VAL R0
       31 SETTABLEKS                       R1 R0 K11 ["endSelectionOnDrag"]
       33 GETUPVAL                         R1 6
       34 SETTABLEKS                       R1 R0 K12 ["updateRegion"]
       36 GETUPVAL                         R1 7
       37 SETTABLEKS                       R1 R0 K13 ["updateSelectionOnDrag"]
       39 GETUPVAL                         R2 8
       40 CALL                             R2 0 1
       41 JUMPIFNOT                        R2 ; [+6]
       42 GETUPVAL                         R2 9
       43 GETUPVAL                         R4 10
       44 GETTABLEKS                       R3 R4 K14 ["Build"]
       46 JUMPIFEQ                         R2 R3 ; [+3]
       48 GETUPVAL                         R1 11
       49 JUMP                             ; [+1]
       50 DUPCLOSURE                       R1 K15 [PROTO_8]
       51 SETTABLEKS                       R1 R0 K16 ["addWaypoint"]
       53 DUPCLOSURE                       R1 K17 [PROTO_9]
       54 SETTABLEKS                       R1 R0 K18 ["shouldExtendSelection"]
       56 NEWTABLE                         R1 0 2
       58 GETUPVAL                         R3 12
       59 GETTABLEKS                       R2 R3 K3 ["new"]
       61 MOVE                             R3 R0
       62 DUPTABLE                         R4 K21 [{"ShowBoundingBox", "Summonable"}]
       63 LOADB                            R5 0
       64 SETTABLEKS                       R5 R4 K19 ["ShowBoundingBox"]
       66 LOADB                            R5 0
       67 SETTABLEKS                       R5 R4 K20 ["Summonable"]
       69 GETUPVAL                         R6 8
       70 CALL                             R6 0 1
       71 JUMPIFNOT                        R6 ; [+25]
       72 GETUPVAL                         R6 9
       73 GETUPVAL                         R8 10
       74 GETTABLEKS                       R7 R8 K14 ["Build"]
       76 JUMPIFNOTEQ                      R6 R7 ; [+20]
       78 GETUPVAL                         R7 13
       79 GETTABLEKS                       R6 R7 K22 ["ExtrudeHandlesImplementation"]
       81 GETTABLEKS                       R5 R6 K3 ["new"]
       83 MOVE                             R6 R0
       84 DUPTABLE                         R7 K25 [{"Max", "UseVolume"}]
       85 LOADK                            R9 K26 [{1, 1, 1}]
       86 GETUPVAL                         R11 14
       87 GETTABLEKS                       R10 R11 K27 ["MaxBuildRegion"]
       89 MUL                              R8 R9 R10
       90 SETTABLEKS                       R8 R7 K23 ["Max"]
       92 LOADB                            R8 1
       93 SETTABLEKS                       R8 R7 K24 ["UseVolume"]
       95 CALL                             R5 2 1
       96 JUMP                             ; [+52]
       97 GETUPVAL                         R6 9
       98 GETUPVAL                         R8 10
       99 GETTABLEKS                       R7 R8 K28 ["Import"]
      101 JUMPIFEQ                         R6 R7 ; [+7]
      103 GETUPVAL                         R6 9
      104 GETUPVAL                         R8 10
      105 GETTABLEKS                       R7 R8 K29 ["Generate"]
      107 JUMPIFNOTEQ                      R6 R7 ; [+34]
      109 GETUPVAL                         R7 13
      110 GETTABLEKS                       R6 R7 K22 ["ExtrudeHandlesImplementation"]
      112 GETTABLEKS                       R5 R6 K3 ["new"]
      114 MOVE                             R6 R0
      115 DUPTABLE                         R7 K25 [{"Max", "UseVolume"}]
      116 LOADN                            R10 0
      117 GETUPVAL                         R12 14
      118 GETTABLEKS                       R11 R12 K30 ["VoxelResolution"]
      120 MUL                              R9 R10 R11
      121 LOADN                            R11 0
      122 GETUPVAL                         R13 14
      123 GETTABLEKS                       R12 R13 K30 ["VoxelResolution"]
      125 MUL                              R10 R11 R12
      126 LOADN                            R12 0
      127 GETUPVAL                         R14 14
      128 GETTABLEKS                       R13 R14 K30 ["VoxelResolution"]
      130 MUL                              R11 R12 R13
      131 FASTCALL                         VECTOR ; [+2]
      132 GETIMPORT                        R8 K32 [Vector3.new]
      134 CALL                             R8 3 1
      135 SETTABLEKS                       R8 R7 K23 ["Max"]
      137 LOADB                            R8 1
      138 SETTABLEKS                       R8 R7 K24 ["UseVolume"]
      140 CALL                             R5 2 1
      141 JUMP                             ; [+7]
      142 GETUPVAL                         R7 13
      143 GETTABLEKS                       R6 R7 K22 ["ExtrudeHandlesImplementation"]
      145 GETTABLEKS                       R5 R6 K3 ["new"]
      147 MOVE                             R6 R0
      148 CALL                             R5 1 1
      149 CALL                             R2 3 1
      150 GETUPVAL                         R4 15
      151 GETTABLEKS                       R3 R4 K3 ["new"]
      153 MOVE                             R4 R0
      154 DUPTABLE                         R5 K34 [{"ShowBoundingBox", "Summonable", "Outset"}]
      155 LOADB                            R6 0
      156 SETTABLEKS                       R6 R5 K19 ["ShowBoundingBox"]
      158 LOADB                            R6 0
      159 SETTABLEKS                       R6 R5 K20 ["Summonable"]
      161 LOADN                            R6 1
      162 SETTABLEKS                       R6 R5 K33 ["Outset"]
      164 GETUPVAL                         R8 13
      165 GETTABLEKS                       R7 R8 K35 ["TransformHandlesImplementation"]
      167 GETTABLEKS                       R6 R7 K3 ["new"]
      169 MOVE                             R7 R0
      170 CALL                             R6 1 -1
      171 CALL                             R3 -1 -1
      172 SETLIST                          R1 R2 -1 [1]
      174 GETUPVAL                         R2 16
      175 JUMPIFNOT                        R2 ; [+27]
      176 MOVE                             R3 R1
      177 GETUPVAL                         R5 17
      178 GETTABLEKS                       R4 R5 K3 ["new"]
      180 MOVE                             R5 R0
      181 DUPTABLE                         R6 K34 [{"ShowBoundingBox", "Summonable", "Outset"}]
      182 LOADB                            R7 0
      183 SETTABLEKS                       R7 R6 K19 ["ShowBoundingBox"]
      185 LOADB                            R7 0
      186 SETTABLEKS                       R7 R6 K20 ["Summonable"]
      188 LOADN                            R7 1
      189 SETTABLEKS                       R7 R6 K33 ["Outset"]
      191 GETUPVAL                         R9 13
      192 GETTABLEKS                       R8 R9 K35 ["TransformHandlesImplementation"]
      194 GETTABLEKS                       R7 R8 K3 ["new"]
      196 MOVE                             R8 R0
      197 CALL                             R7 1 -1
      198 CALL                             R4 -1 -1
      199 FASTCALL                         TABLE_INSERT ; [+2]
      200 GETIMPORT                        R2 K38 [table.insert]
      202 CALL                             R2 -1 0
      203 DUPTABLE                         R2 K43 [{"Mouse", "DraggerContext", "DraggerSchema", "DraggerSettings"}]
      204 GETUPVAL                         R4 2
      205 GETTABLEKS                       R3 R4 K4 ["Parent"]
      207 NAMECALL                         R3 R3 K44 ["GetMouse"]
      209 CALL                             R3 1 1
      210 SETTABLEKS                       R3 R2 K39 ["Mouse"]
      212 SETTABLEKS                       R0 R2 K40 ["DraggerContext"]
      214 GETUPVAL                         R3 13
      215 SETTABLEKS                       R3 R2 K41 ["DraggerSchema"]
      217 DUPTABLE                         R3 K52 [{"AnalyticsName", "AllowDragSelect", "AllowFreeformDrag", "ShowDragSelect", "ShowLocalSpaceIndicator", "ShowPivotIndicator", "HandlesList"}]
      218 LOADK                            R4 K53 ["TerrainEditorRegion"]
      219 SETTABLEKS                       R4 R3 K45 ["AnalyticsName"]
      221 GETUPVAL                         R5 9
      222 GETUPVAL                         R7 10
      223 GETTABLEKS                       R6 R7 K14 ["Build"]
      225 JUMPIFNOTEQ                      R5 R6 ; [+2]
      227 LOADB                            R4 0 +1
      228 LOADB                            R4 1
      229 SETTABLEKS                       R4 R3 K46 ["AllowDragSelect"]
      231 LOADB                            R4 0
      232 SETTABLEKS                       R4 R3 K47 ["AllowFreeformDrag"]
      234 LOADB                            R4 0
      235 SETTABLEKS                       R4 R3 K48 ["ShowDragSelect"]
      237 LOADB                            R4 1
      238 SETTABLEKS                       R4 R3 K49 ["ShowLocalSpaceIndicator"]
      240 LOADB                            R4 1
      241 SETTABLEKS                       R4 R3 K50 ["ShowPivotIndicator"]
      243 SETTABLEKS                       R1 R3 K51 ["HandlesList"]
      245 SETTABLEKS                       R3 R2 K42 ["DraggerSettings"]
      247 RETURN                           R2 1

PROTO_11:
        0 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["DraggerContext"]
        3 GETUPVAL                         R2 1
        4 CALL                             R2 0 1
        5 JUMPIFNOT                        R2 ; [+6]
        6 GETUPVAL                         R2 2
        7 GETUPVAL                         R4 3
        8 GETTABLEKS                       R3 R4 K1 ["Build"]
       10 JUMPIFEQ                         R2 R3 ; [+3]
       12 GETUPVAL                         R1 4
       13 JUMP                             ; [+1]
       14 DUPCLOSURE                       R1 K2 [PROTO_11]
       15 SETTABLEKS                       R1 R0 K3 ["addWaypoint"]
       17 GETUPVAL                         R1 0
       18 GETTABLEKS                       R0 R1 K0 ["DraggerContext"]
       20 GETUPVAL                         R1 5
       21 SETTABLEKS                       R1 R0 K4 ["updateRegion"]
       23 GETUPVAL                         R1 0
       24 GETTABLEKS                       R0 R1 K0 ["DraggerContext"]
       26 GETUPVAL                         R1 6
       27 SETTABLEKS                       R1 R0 K5 ["updateSelectionOnDrag"]
       29 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["DraggerContext"]
        3 GETUPVAL                         R1 1
        4 SETTABLEKS                       R1 R0 K1 ["snapToGridSize"]
        6 RETURN                           R0 0

PROTO_14:
        0 DUPTABLE                         R0 K2 [{"Size", "Transform"}]
        1 GETUPVAL                         R3 0
        2 GETUPVAL                         R5 1
        3 GETUPVAL                         R6 2
        4 GETTABLE                         R4 R5 R6
        5 GETTABLE                         R2 R3 R4
        6 GETUPVAL                         R5 3
        7 GETUPVAL                         R6 2
        8 GETTABLE                         R4 R5 R6
        9 GETTABLEKS                       R3 R4 K0 ["Size"]
       11 GETTABLE                         R1 R2 R3
       12 SETTABLEKS                       R1 R0 K0 ["Size"]
       14 GETUPVAL                         R3 0
       15 GETUPVAL                         R5 1
       16 GETUPVAL                         R6 2
       17 GETTABLE                         R4 R5 R6
       18 GETTABLE                         R2 R3 R4
       19 GETUPVAL                         R5 3
       20 GETUPVAL                         R6 2
       21 GETTABLE                         R4 R5 R6
       22 GETTABLEKS                       R3 R4 K1 ["Transform"]
       24 GETTABLE                         R1 R2 R3
       25 SETTABLEKS                       R1 R0 K1 ["Transform"]
       27 GETTABLEKS                       R1 R0 K0 ["Size"]
       29 GETUPVAL                         R3 4
       30 GETTABLEKS                       R2 R3 K0 ["Size"]
       32 JUMPIFNOTEQ                      R1 R2 ; [+8]
       34 GETTABLEKS                       R1 R0 K1 ["Transform"]
       36 GETUPVAL                         R3 4
       37 GETTABLEKS                       R2 R3 K1 ["Transform"]
       39 JUMPIFEQ                         R1 R2 ; [+12]
       41 GETUPVAL                         R1 5
       42 MOVE                             R3 R0
       43 NAMECALL                         R1 R1 K3 ["SetRegionSignal"]
       45 CALL                             R1 2 0
       46 GETUPVAL                         R1 6
       47 MOVE                             R2 R0
       48 GETUPVAL                         R4 7
       49 GETTABLEKS                       R3 R4 K4 ["Gizmo"]
       51 CALL                             R1 2 0
       52 RETURN                           R0 0

PROTO_15:
        0 DUPTABLE                         R0 K2 [{"Size", "Transform"}]
        1 GETUPVAL                         R3 0
        2 GETUPVAL                         R5 1
        3 GETUPVAL                         R6 2
        4 GETTABLE                         R4 R5 R6
        5 GETTABLE                         R2 R3 R4
        6 GETUPVAL                         R5 3
        7 GETUPVAL                         R6 2
        8 GETTABLE                         R4 R5 R6
        9 GETTABLEKS                       R3 R4 K0 ["Size"]
       11 GETTABLE                         R1 R2 R3
       12 SETTABLEKS                       R1 R0 K0 ["Size"]
       14 GETUPVAL                         R3 0
       15 GETUPVAL                         R5 1
       16 GETUPVAL                         R6 2
       17 GETTABLE                         R4 R5 R6
       18 GETTABLE                         R2 R3 R4
       19 GETUPVAL                         R5 3
       20 GETUPVAL                         R6 2
       21 GETTABLE                         R4 R5 R6
       22 GETTABLEKS                       R3 R4 K1 ["Transform"]
       24 GETTABLE                         R1 R2 R3
       25 SETTABLEKS                       R1 R0 K1 ["Transform"]
       27 GETUPVAL                         R3 0
       28 GETUPVAL                         R5 1
       29 GETUPVAL                         R6 2
       30 GETTABLE                         R4 R5 R6
       31 GETTABLE                         R2 R3 R4
       32 GETUPVAL                         R5 3
       33 GETUPVAL                         R6 2
       34 GETTABLE                         R4 R5 R6
       35 GETTABLEKS                       R3 R4 K3 ["SnapToVoxels"]
       37 GETTABLE                         R1 R2 R3
       38 JUMPIFNOT                        R1 ; [+95]
       39 GETUPVAL                         R3 0
       40 GETUPVAL                         R5 1
       41 GETUPVAL                         R6 2
       42 GETTABLE                         R4 R5 R6
       43 GETTABLE                         R2 R3 R4
       44 GETUPVAL                         R5 3
       45 GETUPVAL                         R6 2
       46 GETTABLE                         R4 R5 R6
       47 GETTABLEKS                       R3 R4 K3 ["SnapToVoxels"]
       49 GETTABLE                         R1 R2 R3
       50 GETUPVAL                         R2 4
       51 JUMPIFNOTEQ                      R1 R2 ; [+15]
       53 GETTABLEKS                       R1 R0 K0 ["Size"]
       55 GETUPVAL                         R3 5
       56 GETTABLEKS                       R2 R3 K0 ["Size"]
       58 JUMPIFNOTEQ                      R1 R2 ; [+8]
       60 GETTABLEKS                       R1 R0 K1 ["Transform"]
       62 GETUPVAL                         R3 5
       63 GETTABLEKS                       R2 R3 K1 ["Transform"]
       65 JUMPIFEQ                         R1 R2 ; [+68]
       67 GETUPVAL                         R6 6
       68 GETTABLEKS                       R5 R6 K6 ["GridSize"]
       70 DIVK                             R4 R5 K4 [4]
       71 ADDK                             R3 R4 K5 [0.5]
       72 FASTCALL1                        MATH_FLOOR R3 ; [+2]
       73 GETIMPORT                        R2 K9 [math.floor]
       75 CALL                             R2 1 1
       76 MULK                             R1 R2 K4 [4]
       77 LOADN                            R2 0
       78 JUMPIFNOTLE                      R1 R2 ; [+2]
       80 LOADN                            R1 4
       81 GETUPVAL                         R2 7
       82 GETUPVAL                         R5 0
       83 GETUPVAL                         R7 1
       84 GETUPVAL                         R8 2
       85 GETTABLE                         R6 R7 R8
       86 GETTABLE                         R4 R5 R6
       87 GETUPVAL                         R7 3
       88 GETUPVAL                         R8 2
       89 GETTABLE                         R6 R7 R8
       90 GETTABLEKS                       R5 R6 K1 ["Transform"]
       92 GETTABLE                         R3 R4 R5
       93 GETUPVAL                         R6 0
       94 GETUPVAL                         R8 1
       95 GETUPVAL                         R9 2
       96 GETTABLE                         R7 R8 R9
       97 GETTABLE                         R5 R6 R7
       98 GETUPVAL                         R8 3
       99 GETUPVAL                         R9 2
      100 GETTABLE                         R7 R8 R9
      101 GETTABLEKS                       R6 R7 K0 ["Size"]
      103 GETTABLE                         R4 R5 R6
      104 MOVE                             R5 R1
      105 CALL                             R2 3 2
      106 DUPTABLE                         R4 K2 [{"Size", "Transform"}]
      107 SETTABLEKS                       R3 R4 K0 ["Size"]
      109 SETTABLEKS                       R2 R4 K1 ["Transform"]
      111 GETTABLEKS                       R5 R4 K0 ["Size"]
      113 GETTABLEKS                       R6 R0 K0 ["Size"]
      115 JUMPIFNOTEQ                      R5 R6 ; [+7]
      117 GETTABLEKS                       R5 R4 K1 ["Transform"]
      119 GETTABLEKS                       R6 R0 K1 ["Transform"]
      121 JUMPIFEQ                         R5 R6 ; [+12]
      123 GETUPVAL                         R5 8
      124 MOVE                             R7 R4
      125 NAMECALL                         R5 R5 K10 ["SetRegionSignal"]
      127 CALL                             R5 2 0
      128 GETUPVAL                         R5 9
      129 MOVE                             R6 R4
      130 GETUPVAL                         R8 10
      131 GETTABLEKS                       R7 R8 K11 ["Gizmo"]
      133 CALL                             R5 2 0
      134 GETUPVAL                         R1 11
      135 GETUPVAL                         R4 0
      136 GETUPVAL                         R6 1
      137 GETUPVAL                         R7 2
      138 GETTABLE                         R5 R6 R7
      139 GETTABLE                         R3 R4 R5
      140 GETUPVAL                         R6 3
      141 GETUPVAL                         R7 2
      142 GETTABLE                         R5 R6 R7
      143 GETTABLEKS                       R4 R5 K3 ["SnapToVoxels"]
      145 GETTABLE                         R2 R3 R4
      146 CALL                             R1 1 0
      147 GETUPVAL                         R2 12
      148 GETTABLEKS                       R1 R2 K12 ["DraggerContext"]
      150 GETUPVAL                         R4 0
      151 GETUPVAL                         R6 1
      152 GETUPVAL                         R7 2
      153 GETTABLE                         R5 R6 R7
      154 GETTABLE                         R3 R4 R5
      155 GETUPVAL                         R6 3
      156 GETUPVAL                         R7 2
      157 GETTABLE                         R5 R6 R7
      158 GETTABLEKS                       R4 R5 K3 ["SnapToVoxels"]
      160 GETTABLE                         R2 R3 R4
      161 SETTABLEKS                       R2 R1 K3 ["SnapToVoxels"]
      163 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["Transform"]
        4 JUMPIFNOTEQ                      R0 R1 ; [+81]
        6 GETUPVAL                         R2 2
        7 GETUPVAL                         R4 3
        8 GETTABLEKS                       R3 R4 K1 ["SelectionSettings"]
       10 GETTABLE                         R1 R2 R3
       11 GETUPVAL                         R3 4
       12 GETTABLEKS                       R2 R3 K2 ["Size"]
       14 GETTABLE                         R0 R1 R2
       15 GETUPVAL                         R3 2
       16 GETUPVAL                         R5 3
       17 GETTABLEKS                       R4 R5 K3 ["TransformSettings"]
       19 GETTABLE                         R2 R3 R4
       20 GETUPVAL                         R4 5
       21 GETTABLEKS                       R3 R4 K4 ["TransformMode"]
       23 GETTABLE                         R1 R2 R3
       24 GETUPVAL                         R3 6
       25 GETTABLEKS                       R2 R3 K5 ["Paste"]
       27 JUMPIFNOTEQ                      R1 R2 ; [+11]
       29 GETUPVAL                         R3 2
       30 GETUPVAL                         R5 3
       31 GETTABLEKS                       R4 R5 K3 ["TransformSettings"]
       33 GETTABLE                         R2 R3 R4
       34 GETUPVAL                         R4 5
       35 GETTABLEKS                       R3 R4 K6 ["TerrainRegionBufferSize"]
       37 GETTABLE                         R0 R2 R3
       38 JUMP                             ; [+34]
       39 GETUPVAL                         R3 6
       40 GETTABLEKS                       R2 R3 K7 ["Import"]
       42 JUMPIFEQ                         R1 R2 ; [+6]
       44 GETUPVAL                         R3 6
       45 GETTABLEKS                       R2 R3 K8 ["Duplicate"]
       47 JUMPIFNOTEQ                      R1 R2 ; [+11]
       49 GETUPVAL                         R3 2
       50 GETUPVAL                         R5 3
       51 GETTABLEKS                       R4 R5 K3 ["TransformSettings"]
       53 GETTABLE                         R2 R3 R4
       54 GETUPVAL                         R4 5
       55 GETTABLEKS                       R3 R4 K9 ["TerrainRegionSize"]
       57 GETTABLE                         R0 R2 R3
       58 JUMP                             ; [+14]
       59 GETUPVAL                         R3 6
       60 GETTABLEKS                       R2 R3 K10 ["Move"]
       62 JUMPIFNOTEQ                      R1 R2 ; [+10]
       64 GETUPVAL                         R3 2
       65 GETUPVAL                         R5 3
       66 GETTABLEKS                       R4 R5 K1 ["SelectionSettings"]
       68 GETTABLE                         R2 R3 R4
       69 GETUPVAL                         R4 4
       70 GETTABLEKS                       R3 R4 K2 ["Size"]
       72 GETTABLE                         R0 R2 R3
       73 GETUPVAL                         R2 7
       74 GETUPVAL                         R6 2
       75 GETUPVAL                         R8 3
       76 GETTABLEKS                       R7 R8 K3 ["TransformSettings"]
       78 GETTABLE                         R5 R6 R7
       79 GETUPVAL                         R7 5
       80 GETTABLEKS                       R6 R7 K2 ["Size"]
       82 GETTABLE                         R4 R5 R6
       83 DIV                              R3 R4 R0
       84 CALL                             R2 1 0
       85 RETURN                           R0 0
       86 GETUPVAL                         R0 0
       87 GETUPVAL                         R2 1
       88 GETTABLEKS                       R1 R2 K11 ["Select"]
       90 JUMPIFNOTEQ                      R0 R1 ; [+4]
       92 GETUPVAL                         R0 7
       93 LOADK                            R1 K12 [{1, 1, 1}]
       94 CALL                             R0 1 0
       95 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R4 0
        1 NAMECALL                         R4 R4 K0 ["use"]
        3 CALL                             R4 1 1
        4 GETUPVAL                         R5 1
        5 DUPTABLE                         R6 K3 [{"Size", "Transform"}]
        6 GETUPVAL                         R10 2
        7 GETTABLE                         R9 R10 R0
        8 GETTABLE                         R8 R1 R9
        9 GETUPVAL                         R11 3
       10 GETTABLE                         R10 R11 R0
       11 GETTABLEKS                       R9 R10 K1 ["Size"]
       13 GETTABLE                         R7 R8 R9
       14 SETTABLEKS                       R7 R6 K1 ["Size"]
       16 GETUPVAL                         R10 2
       17 GETTABLE                         R9 R10 R0
       18 GETTABLE                         R8 R1 R9
       19 GETUPVAL                         R11 3
       20 GETTABLE                         R10 R11 R0
       21 GETTABLEKS                       R9 R10 K2 ["Transform"]
       23 GETTABLE                         R7 R8 R9
       24 SETTABLEKS                       R7 R6 K2 ["Transform"]
       26 CALL                             R5 1 2
       27 GETUPVAL                         R7 1
       28 LOADK                            R8 K4 [{1, 1, 1}]
       29 CALL                             R7 1 2
       30 GETUPVAL                         R9 4
       31 NEWCLOSURE                       R10 P0
       32 CAPTURE                          UPVAL U5
       33 CAPTURE                          VAL R5
       34 NEWTABLE                         R11 0 1
       36 MOVE                             R12 R0
       37 SETLIST                          R11 R12 1 [1]
       39 CALL                             R9 2 1
       40 GETUPVAL                         R10 1
       41 LOADNIL                          R11
       42 CALL                             R10 1 2
       43 GETUPVAL                         R12 6
       44 NEWCLOSURE                       R13 P1
       45 CAPTURE                          UPVAL U2
       46 CAPTURE                          VAL R0
       47 CAPTURE                          UPVAL U3
       48 CAPTURE                          VAL R2
       49 CAPTURE                          VAL R6
       50 CAPTURE                          UPVAL U7
       51 CAPTURE                          VAL R1
       52 CAPTURE                          UPVAL U8
       53 CAPTURE                          UPVAL U9
       54 CAPTURE                          UPVAL U10
       55 CAPTURE                          UPVAL U11
       56 CAPTURE                          VAL R8
       57 NEWTABLE                         R14 0 3
       59 MOVE                             R15 R2
       60 MOVE                             R16 R0
       61 MOVE                             R17 R1
       62 SETLIST                          R14 R15 3 [1]
       64 CALL                             R12 2 1
       65 GETUPVAL                         R13 12
       66 MOVE                             R14 R5
       67 NEWCLOSURE                       R15 P2
       68 CAPTURE                          VAL R12
       69 CAPTURE                          UPVAL U13
       70 CAPTURE                          VAL R9
       71 NEWTABLE                         R16 0 1
       73 MOVE                             R17 R0
       74 SETLIST                          R16 R17 1 [1]
       76 CALL                             R13 3 1
       77 GETUPVAL                         R14 6
       78 NEWCLOSURE                       R15 P3
       79 CAPTURE                          VAL R13
       80 CAPTURE                          VAL R5
       81 NEWTABLE                         R16 0 2
       83 MOVE                             R17 R13
       84 MOVE                             R18 R5
       85 SETLIST                          R16 R17 2 [1]
       87 CALL                             R14 2 1
       88 GETUPVAL                         R15 6
       89 NEWCLOSURE                       R16 P4
       90 CAPTURE                          VAL R1
       91 CAPTURE                          UPVAL U2
       92 CAPTURE                          VAL R0
       93 CAPTURE                          UPVAL U3
       94 CAPTURE                          UPVAL U14
       95 NEWTABLE                         R17 0 1
       97 GETUPVAL                         R21 2
       98 GETTABLE                         R20 R21 R0
       99 GETTABLE                         R19 R1 R20
      100 GETUPVAL                         R22 3
      101 GETTABLE                         R21 R22 R0
      102 GETTABLEKS                       R20 R21 K5 ["SnapToVoxels"]
      104 GETTABLE                         R18 R19 R20
      105 SETLIST                          R17 R18 1 [1]
      107 CALL                             R15 2 1
      108 GETUPVAL                         R16 6
      109 NEWCLOSURE                       R17 P5
      110 CAPTURE                          VAL R9
      111 CAPTURE                          VAL R12
      112 CAPTURE                          UPVAL U13
      113 NEWTABLE                         R18 0 1
      115 MOVE                             R19 R12
      116 SETLIST                          R18 R19 1 [1]
      118 CALL                             R16 2 1
      119 GETUPVAL                         R17 6
      120 NEWCLOSURE                       R18 P6
      121 CAPTURE                          VAL R9
      122 CAPTURE                          VAL R12
      123 CAPTURE                          UPVAL U13
      124 NEWTABLE                         R19 0 1
      126 MOVE                             R20 R12
      127 SETLIST                          R19 R20 1 [1]
      129 CALL                             R17 2 1
      130 GETUPVAL                         R18 4
      131 NEWCLOSURE                       R19 P7
      132 CAPTURE                          VAL R4
      133 CAPTURE                          UPVAL U15
      134 CAPTURE                          UPVAL U16
      135 CAPTURE                          VAL R9
      136 CAPTURE                          VAL R15
      137 CAPTURE                          VAL R10
      138 CAPTURE                          VAL R16
      139 CAPTURE                          VAL R17
      140 CAPTURE                          UPVAL U17
      141 CAPTURE                          VAL R0
      142 CAPTURE                          UPVAL U7
      143 CAPTURE                          VAL R14
      144 CAPTURE                          UPVAL U18
      145 CAPTURE                          UPVAL U5
      146 CAPTURE                          UPVAL U19
      147 CAPTURE                          UPVAL U20
      148 CAPTURE                          VAL R3
      149 CAPTURE                          UPVAL U21
      150 NEWTABLE                         R20 0 1
      152 MOVE                             R21 R0
      153 SETLIST                          R20 R21 1 [1]
      155 CALL                             R18 2 1
      156 GETUPVAL                         R19 22
      157 NEWCLOSURE                       R20 P8
      158 CAPTURE                          VAL R18
      159 CAPTURE                          UPVAL U17
      160 CAPTURE                          VAL R0
      161 CAPTURE                          UPVAL U7
      162 CAPTURE                          VAL R14
      163 CAPTURE                          VAL R16
      164 CAPTURE                          VAL R17
      165 NEWTABLE                         R21 0 3
      167 MOVE                             R22 R5
      168 MOVE                             R23 R12
      169 MOVE                             R24 R13
      170 SETLIST                          R21 R22 3 [1]
      172 CALL                             R19 2 0
      173 GETUPVAL                         R19 22
      174 NEWCLOSURE                       R20 P9
      175 CAPTURE                          VAL R18
      176 CAPTURE                          VAL R15
      177 NEWTABLE                         R21 0 1
      179 MOVE                             R22 R15
      180 SETLIST                          R21 R22 1 [1]
      182 CALL                             R19 2 0
      183 GETUPVAL                         R19 22
      184 NEWCLOSURE                       R20 P10
      185 CAPTURE                          VAL R1
      186 CAPTURE                          UPVAL U2
      187 CAPTURE                          VAL R0
      188 CAPTURE                          UPVAL U3
      189 CAPTURE                          VAL R5
      190 CAPTURE                          VAL R9
      191 CAPTURE                          VAL R12
      192 CAPTURE                          UPVAL U13
      193 NEWTABLE                         R21 0 3
      195 MOVE                             R22 R0
      196 GETUPVAL                         R26 2
      197 GETTABLE                         R25 R26 R0
      198 GETTABLE                         R24 R1 R25
      199 GETUPVAL                         R27 3
      200 GETTABLE                         R26 R27 R0
      201 GETTABLEKS                       R25 R26 K1 ["Size"]
      203 GETTABLE                         R23 R24 R25
      204 GETUPVAL                         R27 2
      205 GETTABLE                         R26 R27 R0
      206 GETTABLE                         R25 R1 R26
      207 GETUPVAL                         R28 3
      208 GETTABLE                         R27 R28 R0
      209 GETTABLEKS                       R26 R27 K2 ["Transform"]
      211 GETTABLE                         R24 R25 R26
      212 SETLIST                          R21 R22 3 [1]
      214 CALL                             R19 2 0
      215 GETUPVAL                         R19 22
      216 NEWCLOSURE                       R20 P11
      217 CAPTURE                          VAL R1
      218 CAPTURE                          UPVAL U2
      219 CAPTURE                          VAL R0
      220 CAPTURE                          UPVAL U3
      221 CAPTURE                          VAL R10
      222 CAPTURE                          VAL R5
      223 CAPTURE                          UPVAL U14
      224 CAPTURE                          UPVAL U23
      225 CAPTURE                          VAL R9
      226 CAPTURE                          VAL R12
      227 CAPTURE                          UPVAL U13
      228 CAPTURE                          VAL R11
      229 CAPTURE                          VAL R18
      230 NEWTABLE                         R21 0 4
      232 GETUPVAL                         R25 2
      233 GETTABLE                         R24 R25 R0
      234 GETTABLE                         R23 R1 R24
      235 GETUPVAL                         R26 3
      236 GETTABLE                         R25 R26 R0
      237 GETTABLEKS                       R24 R25 K5 ["SnapToVoxels"]
      239 GETTABLE                         R22 R23 R24
      240 GETUPVAL                         R26 2
      241 GETTABLE                         R25 R26 R0
      242 GETTABLE                         R24 R1 R25
      243 GETUPVAL                         R27 3
      244 GETTABLE                         R26 R27 R0
      245 GETTABLEKS                       R25 R26 K1 ["Size"]
      247 GETTABLE                         R23 R24 R25
      248 GETUPVAL                         R27 2
      249 GETTABLE                         R26 R27 R0
      250 GETTABLE                         R25 R1 R26
      251 GETUPVAL                         R28 3
      252 GETTABLE                         R27 R28 R0
      253 GETTABLEKS                       R26 R27 K2 ["Transform"]
      255 GETTABLE                         R24 R25 R26
      256 MOVE                             R25 R18
      257 SETLIST                          R21 R22 4 [1]
      259 CALL                             R19 2 0
      260 GETUPVAL                         R19 22
      261 NEWCLOSURE                       R20 P12
      262 CAPTURE                          VAL R0
      263 CAPTURE                          UPVAL U7
      264 CAPTURE                          VAL R1
      265 CAPTURE                          UPVAL U8
      266 CAPTURE                          UPVAL U9
      267 CAPTURE                          UPVAL U10
      268 CAPTURE                          UPVAL U11
      269 CAPTURE                          VAL R8
      270 NEWTABLE                         R21 0 1
      272 MOVE                             R22 R0
      273 SETLIST                          R21 R22 1 [1]
      275 CALL                             R19 2 0
      276 MOVE                             R19 R18
      277 MOVE                             R20 R5
      278 MOVE                             R21 R7
      279 RETURN                           R19 3

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R2 R0 K4 ["Packages"]
        9 GETTABLEKS                       R1 R2 K5 ["DraggerFramework"]
       11 GETIMPORT                        R2 K7 [require]
       13 GETTABLEKS                       R4 R0 K4 ["Packages"]
       15 GETTABLEKS                       R3 R4 K8 ["React"]
       17 CALL                             R2 1 1
       18 GETTABLEKS                       R3 R2 K9 ["useCallback"]
       20 GETTABLEKS                       R4 R2 K10 ["useEffect"]
       22 GETTABLEKS                       R5 R2 K11 ["useMemo"]
       24 GETTABLEKS                       R6 R2 K12 ["useState"]
       26 GETIMPORT                        R7 K7 [require]
       28 GETTABLEKS                       R10 R0 K13 ["Src"]
       30 GETTABLEKS                       R9 R10 K14 ["Schemas"]
       32 GETTABLEKS                       R8 R9 K15 ["Region"]
       34 CALL                             R7 1 1
       35 GETIMPORT                        R8 K7 [require]
       37 GETTABLEKS                       R10 R1 K16 ["Implementation"]
       39 GETTABLEKS                       R9 R10 K17 ["DraggerContext_PluginImpl"]
       41 CALL                             R8 1 1
       42 GETIMPORT                        R9 K7 [require]
       44 GETTABLEKS                       R11 R1 K18 ["Handles"]
       46 GETTABLEKS                       R10 R11 K19 ["MoveHandles"]
       48 CALL                             R9 1 1
       49 GETIMPORT                        R10 K7 [require]
       51 GETTABLEKS                       R12 R1 K18 ["Handles"]
       53 GETTABLEKS                       R11 R12 K20 ["RotateHandles"]
       55 CALL                             R10 1 1
       56 GETIMPORT                        R11 K7 [require]
       58 GETTABLEKS                       R13 R1 K18 ["Handles"]
       60 GETTABLEKS                       R12 R13 K21 ["ExtrudeHandles"]
       62 CALL                             R11 1 1
       63 GETIMPORT                        R12 K7 [require]
       65 GETTABLEKS                       R15 R0 K13 ["Src"]
       67 GETTABLEKS                       R14 R15 K22 ["Util"]
       69 GETTABLEKS                       R13 R14 K23 ["getVoxelAlignedRegion"]
       71 CALL                             R12 1 1
       72 GETTABLEKS                       R14 R0 K13 ["Src"]
       74 GETTABLEKS                       R13 R14 K24 ["Hooks"]
       76 GETIMPORT                        R14 K7 [require]
       78 GETTABLEKS                       R15 R13 K25 ["useHistory"]
       80 CALL                             R14 1 1
       81 GETIMPORT                        R15 K7 [require]
       83 GETTABLEKS                       R18 R0 K13 ["Src"]
       85 GETTABLEKS                       R17 R18 K26 ["Resources"]
       87 GETTABLEKS                       R16 R17 K27 ["Constants"]
       89 CALL                             R15 1 1
       90 GETIMPORT                        R16 K7 [require]
       92 GETTABLEKS                       R18 R0 K13 ["Src"]
       94 GETTABLEKS                       R17 R18 K28 ["Types"]
       96 CALL                             R16 1 1
       97 GETTABLEKS                       R17 R16 K29 ["BuildSettings"]
       99 GETTABLEKS                       R18 R16 K30 ["Category"]
      101 GETTABLEKS                       R19 R16 K31 ["OperationSource"]
      103 GETTABLEKS                       R20 R16 K32 ["SeaLevelSettings"]
      105 GETTABLEKS                       R21 R16 K33 ["SelectionSettings"]
      107 GETTABLEKS                       R22 R16 K34 ["Tool"]
      109 GETTABLEKS                       R23 R16 K35 ["TransformMode"]
      111 GETTABLEKS                       R24 R16 K36 ["TransformSettings"]
      113 GETIMPORT                        R25 K7 [require]
      115 GETTABLEKS                       R28 R0 K13 ["Src"]
      117 GETTABLEKS                       R27 R28 K37 ["Controllers"]
      119 GETTABLEKS                       R26 R27 K38 ["PluginController"]
      121 CALL                             R25 1 1
      122 GETIMPORT                        R26 K7 [require]
      124 GETTABLEKS                       R29 R0 K13 ["Src"]
      126 GETTABLEKS                       R28 R29 K39 ["Flags"]
      128 GETTABLEKS                       R27 R28 K40 ["getFFlagTerrainEditorGenerationFeature"]
      130 CALL                             R26 1 1
      131 GETIMPORT                        R27 K42 [game]
      133 LOADK                            R29 K43 ["StudioService"]
      134 NAMECALL                         R27 R27 K44 ["GetService"]
      136 CALL                             R27 2 1
      137 NEWTABLE                         R28 8 0
      139 GETTABLEKS                       R29 R22 K45 ["Build"]
      141 MOVE                             R31 R26
      142 CALL                             R31 0 1
      143 JUMPIFNOT                        R31 ; [+3]
      144 GETTABLEKS                       R30 R18 K29 ["BuildSettings"]
      146 JUMP                             ; [+1]
      147 LOADNIL                          R30
      148 SETTABLE                         R30 R28 R29
      149 GETTABLEKS                       R29 R22 K46 ["Transform"]
      151 GETTABLEKS                       R30 R18 K36 ["TransformSettings"]
      153 SETTABLE                         R30 R28 R29
      154 GETTABLEKS                       R29 R22 K47 ["Select"]
      156 GETTABLEKS                       R30 R18 K33 ["SelectionSettings"]
      158 SETTABLE                         R30 R28 R29
      159 GETTABLEKS                       R29 R22 K48 ["Generate"]
      161 GETTABLEKS                       R30 R18 K33 ["SelectionSettings"]
      163 SETTABLE                         R30 R28 R29
      164 GETTABLEKS                       R29 R22 K49 ["Fill"]
      166 GETTABLEKS                       R30 R18 K33 ["SelectionSettings"]
      168 SETTABLE                         R30 R28 R29
      169 GETTABLEKS                       R29 R22 K50 ["Import"]
      171 GETTABLEKS                       R30 R18 K33 ["SelectionSettings"]
      173 SETTABLE                         R30 R28 R29
      174 GETTABLEKS                       R29 R22 K51 ["SeaLevel"]
      176 GETTABLEKS                       R30 R18 K32 ["SeaLevelSettings"]
      178 SETTABLE                         R30 R28 R29
      179 GETTABLEKS                       R29 R22 K52 ["Mock"]
      181 GETTABLEKS                       R30 R18 K33 ["SelectionSettings"]
      183 SETTABLE                         R30 R28 R29
      184 NEWTABLE                         R29 8 0
      186 GETTABLEKS                       R30 R22 K45 ["Build"]
      188 MOVE                             R32 R26
      189 CALL                             R32 0 1
      190 JUMPIFNOT                        R32 ; [+2]
      191 MOVE                             R31 R17
      192 JUMP                             ; [+1]
      193 LOADNIL                          R31
      194 SETTABLE                         R31 R29 R30
      195 GETTABLEKS                       R30 R22 K46 ["Transform"]
      197 SETTABLE                         R24 R29 R30
      198 GETTABLEKS                       R30 R22 K47 ["Select"]
      200 SETTABLE                         R21 R29 R30
      201 GETTABLEKS                       R30 R22 K48 ["Generate"]
      203 SETTABLE                         R21 R29 R30
      204 GETTABLEKS                       R30 R22 K49 ["Fill"]
      206 SETTABLE                         R21 R29 R30
      207 GETTABLEKS                       R30 R22 K50 ["Import"]
      209 SETTABLE                         R21 R29 R30
      210 GETTABLEKS                       R30 R22 K51 ["SeaLevel"]
      212 SETTABLE                         R20 R29 R30
      213 GETTABLEKS                       R30 R22 K52 ["Mock"]
      215 SETTABLE                         R21 R29 R30
      216 DUPCLOSURE                       R30 K53 [PROTO_17]
      217 CAPTURE                          VAL R25
      218 CAPTURE                          VAL R6
      219 CAPTURE                          VAL R28
      220 CAPTURE                          VAL R29
      221 CAPTURE                          VAL R5
      222 CAPTURE                          VAL R7
      223 CAPTURE                          VAL R3
      224 CAPTURE                          VAL R22
      225 CAPTURE                          VAL R18
      226 CAPTURE                          VAL R21
      227 CAPTURE                          VAL R24
      228 CAPTURE                          VAL R23
      229 CAPTURE                          VAL R14
      230 CAPTURE                          VAL R19
      231 CAPTURE                          VAL R27
      232 CAPTURE                          VAL R8
      233 CAPTURE                          VAL R0
      234 CAPTURE                          VAL R26
      235 CAPTURE                          VAL R11
      236 CAPTURE                          VAL R15
      237 CAPTURE                          VAL R9
      238 CAPTURE                          VAL R10
      239 CAPTURE                          VAL R4
      240 CAPTURE                          VAL R12
      241 RETURN                           R30 1
