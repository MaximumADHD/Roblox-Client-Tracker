PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Selection"]
        3 GETTABLEKS                       R0 R0 K1 ["new"]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K2 ["Transform"]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K3 ["Size"]
       11 CALL                             R0 2 -1
       12 RETURN                           R0 -1

PROTO_1:
        0 NEWTABLE                         R2 1 0
        2 GETUPVAL                         R4 0
        3 GETUPVAL                         R5 1
        4 GETTABLE                         R3 R4 R5
        5 NEWTABLE                         R4 4 0
        7 GETUPVAL                         R6 2
        8 GETUPVAL                         R7 1
        9 GETTABLE                         R5 R6 R7
       10 GETTABLEKS                       R5 R5 K0 ["OperationSource"]
       12 SETTABLE                         R1 R4 R5
       13 GETUPVAL                         R6 2
       14 GETUPVAL                         R7 1
       15 GETTABLE                         R5 R6 R7
       16 GETTABLEKS                       R5 R5 K1 ["Size"]
       18 GETTABLEKS                       R6 R0 K1 ["Size"]
       20 SETTABLE                         R6 R4 R5
       21 GETUPVAL                         R6 2
       22 GETUPVAL                         R7 1
       23 GETTABLE                         R5 R6 R7
       24 GETTABLEKS                       R5 R5 K2 ["Transform"]
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
       37 GETUPVAL                         R4 5
       38 GETTABLEKS                       R4 R4 K2 ["Transform"]
       40 JUMPIFNOTEQ                      R3 R4 ; [+74]
       42 GETUPVAL                         R5 6
       43 GETUPVAL                         R6 7
       44 GETTABLEKS                       R6 R6 K3 ["SelectionSettings"]
       46 GETTABLE                         R4 R5 R6
       47 GETUPVAL                         R5 8
       48 GETTABLEKS                       R5 R5 K1 ["Size"]
       50 GETTABLE                         R3 R4 R5
       51 GETUPVAL                         R6 6
       52 GETUPVAL                         R7 7
       53 GETTABLEKS                       R7 R7 K4 ["TransformSettings"]
       55 GETTABLE                         R5 R6 R7
       56 GETUPVAL                         R6 9
       57 GETTABLEKS                       R6 R6 K5 ["TransformMode"]
       59 GETTABLE                         R4 R5 R6
       60 GETUPVAL                         R5 10
       61 GETTABLEKS                       R5 R5 K6 ["Paste"]
       63 JUMPIFNOTEQ                      R4 R5 ; [+11]
       65 GETUPVAL                         R6 6
       66 GETUPVAL                         R7 7
       67 GETTABLEKS                       R7 R7 K4 ["TransformSettings"]
       69 GETTABLE                         R5 R6 R7
       70 GETUPVAL                         R6 9
       71 GETTABLEKS                       R6 R6 K7 ["TerrainRegionBufferSize"]
       73 GETTABLE                         R3 R5 R6
       74 JUMP                             ; [+34]
       75 GETUPVAL                         R5 10
       76 GETTABLEKS                       R5 R5 K8 ["Import"]
       78 JUMPIFEQ                         R4 R5 ; [+6]
       80 GETUPVAL                         R5 10
       81 GETTABLEKS                       R5 R5 K9 ["Duplicate"]
       83 JUMPIFNOTEQ                      R4 R5 ; [+11]
       85 GETUPVAL                         R6 6
       86 GETUPVAL                         R7 7
       87 GETTABLEKS                       R7 R7 K4 ["TransformSettings"]
       89 GETTABLE                         R5 R6 R7
       90 GETUPVAL                         R6 9
       91 GETTABLEKS                       R6 R6 K10 ["TerrainRegionSize"]
       93 GETTABLE                         R3 R5 R6
       94 JUMP                             ; [+14]
       95 GETUPVAL                         R5 10
       96 GETTABLEKS                       R5 R5 K11 ["Move"]
       98 JUMPIFNOTEQ                      R4 R5 ; [+10]
      100 GETUPVAL                         R6 6
      101 GETUPVAL                         R7 7
      102 GETTABLEKS                       R7 R7 K3 ["SelectionSettings"]
      104 GETTABLE                         R5 R6 R7
      105 GETUPVAL                         R6 8
      106 GETTABLEKS                       R6 R6 K1 ["Size"]
      108 GETTABLE                         R3 R5 R6
      109 GETTABLEKS                       R5 R0 K1 ["Size"]
      111 GETUPVAL                         R6 11
      112 DIV                              R7 R5 R3
      113 CALL                             R6 1 0
      114 RETURN                           R0 0
      115 GETUPVAL                         R3 1
      116 GETUPVAL                         R4 5
      117 GETTABLEKS                       R4 R4 K12 ["Select"]
      119 JUMPIFNOTEQ                      R3 R4 ; [+4]
      121 GETUPVAL                         R3 11
      122 LOADK                            R4 K13 [{1, 1, 1}]
      123 CALL                             R3 1 0
      124 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K0 ["History"]
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
        5 GETUPVAL                         R5 3
        6 GETUPVAL                         R6 2
        7 GETTABLE                         R4 R5 R6
        8 GETTABLEKS                       R4 R4 K0 ["SnapToVoxels"]
       10 GETTABLE                         R2 R3 R4
       11 JUMPIFNOT                        R2 ; [+29]
       12 GETUPVAL                         R5 4
       13 GETTABLEKS                       R5 R5 K2 ["GridSize"]
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
       12 GETUPVAL                         R5 2
       13 GETTABLEKS                       R5 R5 K4 ["Gizmo"]
       15 CALL                             R3 2 0
       16 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["SetRegion"]
        4 CALL                             R1 2 0
        5 GETUPVAL                         R1 1
        6 MOVE                             R2 R0
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R3 R3 K1 ["Gizmo"]
       10 CALL                             R1 2 0
       11 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 SETTABLEKS                       R1 R0 K0 ["selectionOnDragPoint"]
        4 RETURN                           R0 0

PROTO_8:
        0 LOADB                            R0 1
        1 RETURN                           R0 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["isMocking"]
        3 CALL                             R1 1 1
        4 JUMPIFNOT                        R1 ; [+2]
        5 DUPTABLE                         R0 K3 [{["Mock"] = True}]
        6 JUMP                             ; [+13]
        7 GETUPVAL                         R0 1
        8 GETTABLEKS                       R0 R0 K4 ["new"]
       10 GETUPVAL                         R1 2
       11 GETTABLEKS                       R1 R1 K5 ["Parent"]
       13 GETIMPORT                        R2 K7 [game]
       15 GETIMPORT                        R3 K9 [settings]
       17 CALL                             R3 0 1
       18 GETUPVAL                         R4 3
       19 CALL                             R0 4 1
       20 GETUPVAL                         R1 4
       21 SETTABLEKS                       R1 R0 K10 ["snapToGridSize"]
       23 GETUPVAL                         R1 5
       24 SETTABLEKS                       R1 R0 K11 ["snapToVoxels"]
       26 NEWCLOSURE                       R1 P0
       27 CAPTURE                          VAL R0
       28 SETTABLEKS                       R1 R0 K12 ["endSelectionOnDrag"]
       30 GETUPVAL                         R1 6
       31 SETTABLEKS                       R1 R0 K13 ["updateRegion"]
       33 GETUPVAL                         R1 7
       34 SETTABLEKS                       R1 R0 K14 ["updateSelectionOnDrag"]
       36 GETUPVAL                         R1 8
       37 SETTABLEKS                       R1 R0 K15 ["addWaypoint"]
       39 DUPCLOSURE                       R1 K16 [PROTO_8]
       40 SETTABLEKS                       R1 R0 K17 ["shouldExtendSelection"]
       42 NEWTABLE                         R1 0 2
       44 GETUPVAL                         R2 9
       45 GETTABLEKS                       R2 R2 K4 ["new"]
       47 MOVE                             R3 R0
       48 DUPTABLE                         R4 K21 [{["ShowBoundingBox"] = False, ["Summonable"] = False}]
       49 GETUPVAL                         R6 10
       50 GETUPVAL                         R7 11
       51 GETTABLEKS                       R7 R7 K22 ["Import"]
       53 JUMPIFEQ                         R6 R7 ; [+7]
       55 GETUPVAL                         R6 10
       56 GETUPVAL                         R7 11
       57 GETTABLEKS                       R7 R7 K23 ["Generate"]
       59 JUMPIFNOTEQ                      R6 R7 ; [+31]
       61 GETUPVAL                         R5 12
       62 GETTABLEKS                       R5 R5 K24 ["ExtrudeHandlesImplementation"]
       64 GETTABLEKS                       R5 R5 K4 ["new"]
       66 MOVE                             R6 R0
       67 DUPTABLE                         R7 K27 [{["Max"], ["UseVolume"] = True}]
       68 LOADN                            R10 256
       69 GETUPVAL                         R11 13
       70 GETTABLEKS                       R11 R11 K28 ["VoxelResolution"]
       72 MUL                              R9 R10 R11
       73 LOADN                            R11 4096
       74 GETUPVAL                         R12 13
       75 GETTABLEKS                       R12 R12 K28 ["VoxelResolution"]
       77 MUL                              R10 R11 R12
       78 LOADN                            R12 4096
       79 GETUPVAL                         R13 13
       80 GETTABLEKS                       R13 R13 K28 ["VoxelResolution"]
       82 MUL                              R11 R12 R13
       83 FASTCALL                         VECTOR ; [+2]
       84 GETIMPORT                        R8 K30 [Vector3.new]
       86 CALL                             R8 3 1
       87 SETTABLEKS                       R8 R7 K25 ["Max"]
       89 CALL                             R5 2 1
       90 JUMP                             ; [+7]
       91 GETUPVAL                         R5 12
       92 GETTABLEKS                       R5 R5 K24 ["ExtrudeHandlesImplementation"]
       94 GETTABLEKS                       R5 R5 K4 ["new"]
       96 MOVE                             R6 R0
       97 CALL                             R5 1 1
       98 CALL                             R2 3 1
       99 GETUPVAL                         R3 14
      100 GETTABLEKS                       R3 R3 K4 ["new"]
      102 MOVE                             R4 R0
      103 DUPTABLE                         R5 K33 [{["ShowBoundingBox"] = False, ["Summonable"] = False, ["Outset"] = 1}]
      104 GETUPVAL                         R6 12
      105 GETTABLEKS                       R6 R6 K34 ["TransformHandlesImplementation"]
      107 GETTABLEKS                       R6 R6 K4 ["new"]
      109 MOVE                             R7 R0
      110 CALL                             R6 1 -1
      111 CALL                             R3 -1 -1
      112 SETLIST                          R1 R2 -1 [1]
      114 GETUPVAL                         R2 15
      115 JUMPIFNOT                        R2 ; [+18]
      116 MOVE                             R3 R1
      117 GETUPVAL                         R4 16
      118 GETTABLEKS                       R4 R4 K4 ["new"]
      120 MOVE                             R5 R0
      121 DUPTABLE                         R6 K33 [{["ShowBoundingBox"] = False, ["Summonable"] = False, ["Outset"] = 1}]
      122 GETUPVAL                         R7 12
      123 GETTABLEKS                       R7 R7 K34 ["TransformHandlesImplementation"]
      125 GETTABLEKS                       R7 R7 K4 ["new"]
      127 MOVE                             R8 R0
      128 CALL                             R7 1 -1
      129 CALL                             R4 -1 -1
      130 FASTCALL                         TABLE_INSERT ; [+2]
      131 GETIMPORT                        R2 K37 [table.insert]
      133 CALL                             R2 -1 0
      134 DUPTABLE                         R2 K42 [{"Mouse", "DraggerContext", "DraggerSchema", "DraggerSettings"}]
      135 GETUPVAL                         R3 2
      136 GETTABLEKS                       R3 R3 K5 ["Parent"]
      138 NAMECALL                         R3 R3 K43 ["GetMouse"]
      140 CALL                             R3 1 1
      141 SETTABLEKS                       R3 R2 K38 ["Mouse"]
      143 SETTABLEKS                       R0 R2 K39 ["DraggerContext"]
      145 GETUPVAL                         R3 12
      146 SETTABLEKS                       R3 R2 K40 ["DraggerSchema"]
      148 DUPTABLE                         R3 K52 [{["AnalyticsName"] = "TerrainEditorRegion", ["AllowDragSelect"] = True, ["AllowFreeformDrag"] = False, ["ShowDragSelect"] = False, ["ShowLocalSpaceIndicator"] = True, ["ShowPivotIndicator"] = True, ["HandlesList"]}]
      149 SETTABLEKS                       R1 R3 K51 ["HandlesList"]
      151 SETTABLEKS                       R3 R2 K41 ["DraggerSettings"]
      153 RETURN                           R2 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["DraggerContext"]
        3 GETUPVAL                         R1 1
        4 SETTABLEKS                       R1 R0 K1 ["addWaypoint"]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["DraggerContext"]
        9 GETUPVAL                         R1 2
       10 SETTABLEKS                       R1 R0 K2 ["updateRegion"]
       12 GETUPVAL                         R0 0
       13 GETTABLEKS                       R0 R0 K0 ["DraggerContext"]
       15 GETUPVAL                         R1 3
       16 SETTABLEKS                       R1 R0 K3 ["updateSelectionOnDrag"]
       18 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["DraggerContext"]
        3 GETUPVAL                         R1 1
        4 SETTABLEKS                       R1 R0 K1 ["snapToGridSize"]
        6 RETURN                           R0 0

PROTO_12:
        0 DUPTABLE                         R0 K2 [{"Size", "Transform"}]
        1 GETUPVAL                         R3 0
        2 GETUPVAL                         R5 1
        3 GETUPVAL                         R6 2
        4 GETTABLE                         R4 R5 R6
        5 GETTABLE                         R2 R3 R4
        6 GETUPVAL                         R4 3
        7 GETUPVAL                         R5 2
        8 GETTABLE                         R3 R4 R5
        9 GETTABLEKS                       R3 R3 K0 ["Size"]
       11 GETTABLE                         R1 R2 R3
       12 SETTABLEKS                       R1 R0 K0 ["Size"]
       14 GETUPVAL                         R3 0
       15 GETUPVAL                         R5 1
       16 GETUPVAL                         R6 2
       17 GETTABLE                         R4 R5 R6
       18 GETTABLE                         R2 R3 R4
       19 GETUPVAL                         R4 3
       20 GETUPVAL                         R5 2
       21 GETTABLE                         R3 R4 R5
       22 GETTABLEKS                       R3 R3 K1 ["Transform"]
       24 GETTABLE                         R1 R2 R3
       25 SETTABLEKS                       R1 R0 K1 ["Transform"]
       27 GETTABLEKS                       R1 R0 K0 ["Size"]
       29 GETUPVAL                         R2 4
       30 GETTABLEKS                       R2 R2 K0 ["Size"]
       32 JUMPIFNOTEQ                      R1 R2 ; [+8]
       34 GETTABLEKS                       R1 R0 K1 ["Transform"]
       36 GETUPVAL                         R2 4
       37 GETTABLEKS                       R2 R2 K1 ["Transform"]
       39 JUMPIFEQ                         R1 R2 ; [+12]
       41 GETUPVAL                         R1 5
       42 MOVE                             R3 R0
       43 NAMECALL                         R1 R1 K3 ["SetRegionSignal"]
       45 CALL                             R1 2 0
       46 GETUPVAL                         R1 6
       47 MOVE                             R2 R0
       48 GETUPVAL                         R3 7
       49 GETTABLEKS                       R3 R3 K4 ["Gizmo"]
       51 CALL                             R1 2 0
       52 RETURN                           R0 0

PROTO_13:
        0 DUPTABLE                         R0 K2 [{"Size", "Transform"}]
        1 GETUPVAL                         R3 0
        2 GETUPVAL                         R5 1
        3 GETUPVAL                         R6 2
        4 GETTABLE                         R4 R5 R6
        5 GETTABLE                         R2 R3 R4
        6 GETUPVAL                         R4 3
        7 GETUPVAL                         R5 2
        8 GETTABLE                         R3 R4 R5
        9 GETTABLEKS                       R3 R3 K0 ["Size"]
       11 GETTABLE                         R1 R2 R3
       12 SETTABLEKS                       R1 R0 K0 ["Size"]
       14 GETUPVAL                         R3 0
       15 GETUPVAL                         R5 1
       16 GETUPVAL                         R6 2
       17 GETTABLE                         R4 R5 R6
       18 GETTABLE                         R2 R3 R4
       19 GETUPVAL                         R4 3
       20 GETUPVAL                         R5 2
       21 GETTABLE                         R3 R4 R5
       22 GETTABLEKS                       R3 R3 K1 ["Transform"]
       24 GETTABLE                         R1 R2 R3
       25 SETTABLEKS                       R1 R0 K1 ["Transform"]
       27 GETUPVAL                         R3 0
       28 GETUPVAL                         R5 1
       29 GETUPVAL                         R6 2
       30 GETTABLE                         R4 R5 R6
       31 GETTABLE                         R2 R3 R4
       32 GETUPVAL                         R4 3
       33 GETUPVAL                         R5 2
       34 GETTABLE                         R3 R4 R5
       35 GETTABLEKS                       R3 R3 K3 ["SnapToVoxels"]
       37 GETTABLE                         R1 R2 R3
       38 JUMPIFNOT                        R1 ; [+95]
       39 GETUPVAL                         R3 0
       40 GETUPVAL                         R5 1
       41 GETUPVAL                         R6 2
       42 GETTABLE                         R4 R5 R6
       43 GETTABLE                         R2 R3 R4
       44 GETUPVAL                         R4 3
       45 GETUPVAL                         R5 2
       46 GETTABLE                         R3 R4 R5
       47 GETTABLEKS                       R3 R3 K3 ["SnapToVoxels"]
       49 GETTABLE                         R1 R2 R3
       50 GETUPVAL                         R2 4
       51 JUMPIFNOTEQ                      R1 R2 ; [+15]
       53 GETTABLEKS                       R1 R0 K0 ["Size"]
       55 GETUPVAL                         R2 5
       56 GETTABLEKS                       R2 R2 K0 ["Size"]
       58 JUMPIFNOTEQ                      R1 R2 ; [+8]
       60 GETTABLEKS                       R1 R0 K1 ["Transform"]
       62 GETUPVAL                         R2 5
       63 GETTABLEKS                       R2 R2 K1 ["Transform"]
       65 JUMPIFEQ                         R1 R2 ; [+68]
       67 GETUPVAL                         R5 6
       68 GETTABLEKS                       R5 R5 K6 ["GridSize"]
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
       87 GETUPVAL                         R6 3
       88 GETUPVAL                         R7 2
       89 GETTABLE                         R5 R6 R7
       90 GETTABLEKS                       R5 R5 K1 ["Transform"]
       92 GETTABLE                         R3 R4 R5
       93 GETUPVAL                         R6 0
       94 GETUPVAL                         R8 1
       95 GETUPVAL                         R9 2
       96 GETTABLE                         R7 R8 R9
       97 GETTABLE                         R5 R6 R7
       98 GETUPVAL                         R7 3
       99 GETUPVAL                         R8 2
      100 GETTABLE                         R6 R7 R8
      101 GETTABLEKS                       R6 R6 K0 ["Size"]
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
      130 GETUPVAL                         R7 10
      131 GETTABLEKS                       R7 R7 K11 ["Gizmo"]
      133 CALL                             R5 2 0
      134 GETUPVAL                         R1 11
      135 GETUPVAL                         R4 0
      136 GETUPVAL                         R6 1
      137 GETUPVAL                         R7 2
      138 GETTABLE                         R5 R6 R7
      139 GETTABLE                         R3 R4 R5
      140 GETUPVAL                         R5 3
      141 GETUPVAL                         R6 2
      142 GETTABLE                         R4 R5 R6
      143 GETTABLEKS                       R4 R4 K3 ["SnapToVoxels"]
      145 GETTABLE                         R2 R3 R4
      146 CALL                             R1 1 0
      147 GETUPVAL                         R1 12
      148 GETTABLEKS                       R1 R1 K12 ["DraggerContext"]
      150 GETUPVAL                         R4 0
      151 GETUPVAL                         R6 1
      152 GETUPVAL                         R7 2
      153 GETTABLE                         R5 R6 R7
      154 GETTABLE                         R3 R4 R5
      155 GETUPVAL                         R5 3
      156 GETUPVAL                         R6 2
      157 GETTABLE                         R4 R5 R6
      158 GETTABLEKS                       R4 R4 K3 ["SnapToVoxels"]
      160 GETTABLE                         R2 R3 R4
      161 SETTABLEKS                       R2 R1 K3 ["SnapToVoxels"]
      163 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["Transform"]
        4 JUMPIFNOTEQ                      R0 R1 ; [+81]
        6 GETUPVAL                         R2 2
        7 GETUPVAL                         R3 3
        8 GETTABLEKS                       R3 R3 K1 ["SelectionSettings"]
       10 GETTABLE                         R1 R2 R3
       11 GETUPVAL                         R2 4
       12 GETTABLEKS                       R2 R2 K2 ["Size"]
       14 GETTABLE                         R0 R1 R2
       15 GETUPVAL                         R3 2
       16 GETUPVAL                         R4 3
       17 GETTABLEKS                       R4 R4 K3 ["TransformSettings"]
       19 GETTABLE                         R2 R3 R4
       20 GETUPVAL                         R3 5
       21 GETTABLEKS                       R3 R3 K4 ["TransformMode"]
       23 GETTABLE                         R1 R2 R3
       24 GETUPVAL                         R2 6
       25 GETTABLEKS                       R2 R2 K5 ["Paste"]
       27 JUMPIFNOTEQ                      R1 R2 ; [+11]
       29 GETUPVAL                         R3 2
       30 GETUPVAL                         R4 3
       31 GETTABLEKS                       R4 R4 K3 ["TransformSettings"]
       33 GETTABLE                         R2 R3 R4
       34 GETUPVAL                         R3 5
       35 GETTABLEKS                       R3 R3 K6 ["TerrainRegionBufferSize"]
       37 GETTABLE                         R0 R2 R3
       38 JUMP                             ; [+34]
       39 GETUPVAL                         R2 6
       40 GETTABLEKS                       R2 R2 K7 ["Import"]
       42 JUMPIFEQ                         R1 R2 ; [+6]
       44 GETUPVAL                         R2 6
       45 GETTABLEKS                       R2 R2 K8 ["Duplicate"]
       47 JUMPIFNOTEQ                      R1 R2 ; [+11]
       49 GETUPVAL                         R3 2
       50 GETUPVAL                         R4 3
       51 GETTABLEKS                       R4 R4 K3 ["TransformSettings"]
       53 GETTABLE                         R2 R3 R4
       54 GETUPVAL                         R3 5
       55 GETTABLEKS                       R3 R3 K9 ["TerrainRegionSize"]
       57 GETTABLE                         R0 R2 R3
       58 JUMP                             ; [+14]
       59 GETUPVAL                         R2 6
       60 GETTABLEKS                       R2 R2 K10 ["Move"]
       62 JUMPIFNOTEQ                      R1 R2 ; [+10]
       64 GETUPVAL                         R3 2
       65 GETUPVAL                         R4 3
       66 GETTABLEKS                       R4 R4 K1 ["SelectionSettings"]
       68 GETTABLE                         R2 R3 R4
       69 GETUPVAL                         R3 4
       70 GETTABLEKS                       R3 R3 K2 ["Size"]
       72 GETTABLE                         R0 R2 R3
       73 GETUPVAL                         R2 7
       74 GETUPVAL                         R6 2
       75 GETUPVAL                         R7 3
       76 GETTABLEKS                       R7 R7 K3 ["TransformSettings"]
       78 GETTABLE                         R5 R6 R7
       79 GETUPVAL                         R6 5
       80 GETTABLEKS                       R6 R6 K2 ["Size"]
       82 GETTABLE                         R4 R5 R6
       83 DIV                              R3 R4 R0
       84 CALL                             R2 1 0
       85 RETURN                           R0 0
       86 GETUPVAL                         R0 0
       87 GETUPVAL                         R1 1
       88 GETTABLEKS                       R1 R1 K11 ["Select"]
       90 JUMPIFNOTEQ                      R0 R1 ; [+4]
       92 GETUPVAL                         R0 7
       93 LOADK                            R1 K12 [{1, 1, 1}]
       94 CALL                             R0 1 0
       95 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R4 0
        1 NAMECALL                         R4 R4 K0 ["use"]
        3 CALL                             R4 1 1
        4 GETUPVAL                         R5 1
        5 DUPTABLE                         R6 K3 [{"Size", "Transform"}]
        6 GETUPVAL                         R10 2
        7 GETTABLE                         R9 R10 R0
        8 GETTABLE                         R8 R1 R9
        9 GETUPVAL                         R10 3
       10 GETTABLE                         R9 R10 R0
       11 GETTABLEKS                       R9 R9 K1 ["Size"]
       13 GETTABLE                         R7 R8 R9
       14 SETTABLEKS                       R7 R6 K1 ["Size"]
       16 GETUPVAL                         R10 2
       17 GETTABLE                         R9 R10 R0
       18 GETTABLE                         R8 R1 R9
       19 GETUPVAL                         R10 3
       20 GETTABLE                         R9 R10 R0
       21 GETTABLEKS                       R9 R9 K2 ["Transform"]
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
      100 GETUPVAL                         R21 3
      101 GETTABLE                         R20 R21 R0
      102 GETTABLEKS                       R20 R20 K5 ["SnapToVoxels"]
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
      140 CAPTURE                          VAL R14
      141 CAPTURE                          UPVAL U17
      142 CAPTURE                          VAL R0
      143 CAPTURE                          UPVAL U7
      144 CAPTURE                          UPVAL U5
      145 CAPTURE                          UPVAL U18
      146 CAPTURE                          UPVAL U19
      147 CAPTURE                          VAL R3
      148 CAPTURE                          UPVAL U20
      149 NEWTABLE                         R20 0 1
      151 MOVE                             R21 R0
      152 SETLIST                          R20 R21 1 [1]
      154 CALL                             R18 2 1
      155 GETUPVAL                         R19 21
      156 NEWCLOSURE                       R20 P8
      157 CAPTURE                          VAL R18
      158 CAPTURE                          VAL R14
      159 CAPTURE                          VAL R16
      160 CAPTURE                          VAL R17
      161 NEWTABLE                         R21 0 3
      163 MOVE                             R22 R5
      164 MOVE                             R23 R12
      165 MOVE                             R24 R13
      166 SETLIST                          R21 R22 3 [1]
      168 CALL                             R19 2 0
      169 GETUPVAL                         R19 21
      170 NEWCLOSURE                       R20 P9
      171 CAPTURE                          VAL R18
      172 CAPTURE                          VAL R15
      173 NEWTABLE                         R21 0 1
      175 MOVE                             R22 R15
      176 SETLIST                          R21 R22 1 [1]
      178 CALL                             R19 2 0
      179 GETUPVAL                         R19 21
      180 NEWCLOSURE                       R20 P10
      181 CAPTURE                          VAL R1
      182 CAPTURE                          UPVAL U2
      183 CAPTURE                          VAL R0
      184 CAPTURE                          UPVAL U3
      185 CAPTURE                          VAL R5
      186 CAPTURE                          VAL R9
      187 CAPTURE                          VAL R12
      188 CAPTURE                          UPVAL U13
      189 NEWTABLE                         R21 0 3
      191 MOVE                             R22 R0
      192 GETUPVAL                         R26 2
      193 GETTABLE                         R25 R26 R0
      194 GETTABLE                         R24 R1 R25
      195 GETUPVAL                         R26 3
      196 GETTABLE                         R25 R26 R0
      197 GETTABLEKS                       R25 R25 K1 ["Size"]
      199 GETTABLE                         R23 R24 R25
      200 GETUPVAL                         R27 2
      201 GETTABLE                         R26 R27 R0
      202 GETTABLE                         R25 R1 R26
      203 GETUPVAL                         R27 3
      204 GETTABLE                         R26 R27 R0
      205 GETTABLEKS                       R26 R26 K2 ["Transform"]
      207 GETTABLE                         R24 R25 R26
      208 SETLIST                          R21 R22 3 [1]
      210 CALL                             R19 2 0
      211 GETUPVAL                         R19 21
      212 NEWCLOSURE                       R20 P11
      213 CAPTURE                          VAL R1
      214 CAPTURE                          UPVAL U2
      215 CAPTURE                          VAL R0
      216 CAPTURE                          UPVAL U3
      217 CAPTURE                          VAL R10
      218 CAPTURE                          VAL R5
      219 CAPTURE                          UPVAL U14
      220 CAPTURE                          UPVAL U22
      221 CAPTURE                          VAL R9
      222 CAPTURE                          VAL R12
      223 CAPTURE                          UPVAL U13
      224 CAPTURE                          VAL R11
      225 CAPTURE                          VAL R18
      226 NEWTABLE                         R21 0 4
      228 GETUPVAL                         R25 2
      229 GETTABLE                         R24 R25 R0
      230 GETTABLE                         R23 R1 R24
      231 GETUPVAL                         R25 3
      232 GETTABLE                         R24 R25 R0
      233 GETTABLEKS                       R24 R24 K5 ["SnapToVoxels"]
      235 GETTABLE                         R22 R23 R24
      236 GETUPVAL                         R26 2
      237 GETTABLE                         R25 R26 R0
      238 GETTABLE                         R24 R1 R25
      239 GETUPVAL                         R26 3
      240 GETTABLE                         R25 R26 R0
      241 GETTABLEKS                       R25 R25 K1 ["Size"]
      243 GETTABLE                         R23 R24 R25
      244 GETUPVAL                         R27 2
      245 GETTABLE                         R26 R27 R0
      246 GETTABLE                         R25 R1 R26
      247 GETUPVAL                         R27 3
      248 GETTABLE                         R26 R27 R0
      249 GETTABLEKS                       R26 R26 K2 ["Transform"]
      251 GETTABLE                         R24 R25 R26
      252 MOVE                             R25 R18
      253 SETLIST                          R21 R22 4 [1]
      255 CALL                             R19 2 0
      256 GETUPVAL                         R19 21
      257 NEWCLOSURE                       R20 P12
      258 CAPTURE                          VAL R0
      259 CAPTURE                          UPVAL U7
      260 CAPTURE                          VAL R1
      261 CAPTURE                          UPVAL U8
      262 CAPTURE                          UPVAL U9
      263 CAPTURE                          UPVAL U10
      264 CAPTURE                          UPVAL U11
      265 CAPTURE                          VAL R8
      266 NEWTABLE                         R21 0 1
      268 MOVE                             R22 R0
      269 SETLIST                          R21 R22 1 [1]
      271 CALL                             R19 2 0
      272 MOVE                             R19 R18
      273 MOVE                             R20 R5
      274 MOVE                             R21 R7
      275 RETURN                           R19 3

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETTABLEKS                       R1 R1 K5 ["DraggerFramework"]
       11 GETIMPORT                        R2 K7 [require]
       13 GETTABLEKS                       R3 R0 K4 ["Packages"]
       15 GETTABLEKS                       R3 R3 K8 ["React"]
       17 CALL                             R2 1 1
       18 GETTABLEKS                       R3 R2 K9 ["useCallback"]
       20 GETTABLEKS                       R4 R2 K10 ["useEffect"]
       22 GETTABLEKS                       R5 R2 K11 ["useMemo"]
       24 GETTABLEKS                       R6 R2 K12 ["useState"]
       26 GETIMPORT                        R7 K7 [require]
       28 GETTABLEKS                       R8 R0 K13 ["Src"]
       30 GETTABLEKS                       R8 R8 K14 ["Schemas"]
       32 GETTABLEKS                       R8 R8 K15 ["Region"]
       34 CALL                             R7 1 1
       35 GETIMPORT                        R8 K7 [require]
       37 GETTABLEKS                       R9 R1 K16 ["Implementation"]
       39 GETTABLEKS                       R9 R9 K17 ["DraggerContext_PluginImpl"]
       41 CALL                             R8 1 1
       42 GETIMPORT                        R9 K7 [require]
       44 GETTABLEKS                       R10 R1 K18 ["Handles"]
       46 GETTABLEKS                       R10 R10 K19 ["MoveHandles"]
       48 CALL                             R9 1 1
       49 GETIMPORT                        R10 K7 [require]
       51 GETTABLEKS                       R11 R1 K18 ["Handles"]
       53 GETTABLEKS                       R11 R11 K20 ["RotateHandles"]
       55 CALL                             R10 1 1
       56 GETIMPORT                        R11 K7 [require]
       58 GETTABLEKS                       R12 R1 K18 ["Handles"]
       60 GETTABLEKS                       R12 R12 K21 ["ExtrudeHandles"]
       62 CALL                             R11 1 1
       63 GETIMPORT                        R12 K7 [require]
       65 GETTABLEKS                       R13 R0 K13 ["Src"]
       67 GETTABLEKS                       R13 R13 K22 ["Util"]
       69 GETTABLEKS                       R13 R13 K23 ["getVoxelAlignedRegion"]
       71 CALL                             R12 1 1
       72 GETTABLEKS                       R13 R0 K13 ["Src"]
       74 GETTABLEKS                       R13 R13 K24 ["Hooks"]
       76 GETIMPORT                        R14 K7 [require]
       78 GETTABLEKS                       R15 R13 K25 ["useHistory"]
       80 CALL                             R14 1 1
       81 GETIMPORT                        R15 K7 [require]
       83 GETTABLEKS                       R16 R0 K13 ["Src"]
       85 GETTABLEKS                       R16 R16 K26 ["Resources"]
       87 GETTABLEKS                       R16 R16 K27 ["Constants"]
       89 CALL                             R15 1 1
       90 GETIMPORT                        R16 K7 [require]
       92 GETTABLEKS                       R17 R0 K13 ["Src"]
       94 GETTABLEKS                       R17 R17 K28 ["Types"]
       96 CALL                             R16 1 1
       97 GETTABLEKS                       R17 R16 K29 ["Category"]
       99 GETTABLEKS                       R18 R16 K30 ["OperationSource"]
      101 GETTABLEKS                       R19 R16 K31 ["SeaLevelSettings"]
      103 GETTABLEKS                       R20 R16 K32 ["SelectionSettings"]
      105 GETTABLEKS                       R21 R16 K33 ["Tool"]
      107 GETTABLEKS                       R22 R16 K34 ["TransformMode"]
      109 GETTABLEKS                       R23 R16 K35 ["TransformSettings"]
      111 GETIMPORT                        R24 K7 [require]
      113 GETTABLEKS                       R25 R0 K13 ["Src"]
      115 GETTABLEKS                       R25 R25 K36 ["Controllers"]
      117 GETTABLEKS                       R25 R25 K37 ["PluginController"]
      119 CALL                             R24 1 1
      120 GETIMPORT                        R25 K39 [game]
      122 LOADK                            R27 K40 ["StudioService"]
      123 NAMECALL                         R25 R25 K41 ["GetService"]
      125 CALL                             R25 2 1
      126 NEWTABLE                         R26 8 0
      128 GETTABLEKS                       R27 R21 K42 ["Transform"]
      130 GETTABLEKS                       R28 R17 K35 ["TransformSettings"]
      132 SETTABLE                         R28 R26 R27
      133 GETTABLEKS                       R27 R21 K43 ["Select"]
      135 GETTABLEKS                       R28 R17 K32 ["SelectionSettings"]
      137 SETTABLE                         R28 R26 R27
      138 GETTABLEKS                       R27 R21 K44 ["Generate"]
      140 GETTABLEKS                       R28 R17 K32 ["SelectionSettings"]
      142 SETTABLE                         R28 R26 R27
      143 GETTABLEKS                       R27 R21 K45 ["Fill"]
      145 GETTABLEKS                       R28 R17 K32 ["SelectionSettings"]
      147 SETTABLE                         R28 R26 R27
      148 GETTABLEKS                       R27 R21 K46 ["Import"]
      150 GETTABLEKS                       R28 R17 K32 ["SelectionSettings"]
      152 SETTABLE                         R28 R26 R27
      153 GETTABLEKS                       R27 R21 K47 ["SeaLevel"]
      155 GETTABLEKS                       R28 R17 K31 ["SeaLevelSettings"]
      157 SETTABLE                         R28 R26 R27
      158 GETTABLEKS                       R27 R21 K48 ["Mock"]
      160 GETTABLEKS                       R28 R17 K32 ["SelectionSettings"]
      162 SETTABLE                         R28 R26 R27
      163 NEWTABLE                         R27 8 0
      165 GETTABLEKS                       R28 R21 K42 ["Transform"]
      167 SETTABLE                         R23 R27 R28
      168 GETTABLEKS                       R28 R21 K43 ["Select"]
      170 SETTABLE                         R20 R27 R28
      171 GETTABLEKS                       R28 R21 K44 ["Generate"]
      173 SETTABLE                         R20 R27 R28
      174 GETTABLEKS                       R28 R21 K45 ["Fill"]
      176 SETTABLE                         R20 R27 R28
      177 GETTABLEKS                       R28 R21 K46 ["Import"]
      179 SETTABLE                         R20 R27 R28
      180 GETTABLEKS                       R28 R21 K47 ["SeaLevel"]
      182 SETTABLE                         R19 R27 R28
      183 GETTABLEKS                       R28 R21 K48 ["Mock"]
      185 SETTABLE                         R20 R27 R28
      186 DUPCLOSURE                       R28 K49 [PROTO_15]
      187 CAPTURE                          VAL R24
      188 CAPTURE                          VAL R6
      189 CAPTURE                          VAL R26
      190 CAPTURE                          VAL R27
      191 CAPTURE                          VAL R5
      192 CAPTURE                          VAL R7
      193 CAPTURE                          VAL R3
      194 CAPTURE                          VAL R21
      195 CAPTURE                          VAL R17
      196 CAPTURE                          VAL R20
      197 CAPTURE                          VAL R23
      198 CAPTURE                          VAL R22
      199 CAPTURE                          VAL R14
      200 CAPTURE                          VAL R18
      201 CAPTURE                          VAL R25
      202 CAPTURE                          VAL R8
      203 CAPTURE                          VAL R0
      204 CAPTURE                          VAL R11
      205 CAPTURE                          VAL R15
      206 CAPTURE                          VAL R9
      207 CAPTURE                          VAL R10
      208 CAPTURE                          VAL R4
      209 CAPTURE                          VAL R12
      210 RETURN                           R28 1
