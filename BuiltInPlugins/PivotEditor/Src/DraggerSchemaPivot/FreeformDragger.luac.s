PROTO_0:
        0 DUPTABLE                         R4 K6 [{"_draggerContext", "_draggerToolModel", "_dragInfo", "_snapPoints", "_originalPivot", "_tiltRotate"}]
        1 SETTABLEKS                       R0 R4 K0 ["_draggerContext"]
        3 SETTABLEKS                       R1 R4 K1 ["_draggerToolModel"]
        5 SETTABLEKS                       R2 R4 K2 ["_dragInfo"]
        7 NEWTABLE                         R5 0 0
        9 SETTABLEKS                       R5 R4 K3 ["_snapPoints"]
       11 GETTABLEKS                       R5 R2 K7 ["ClickedSelectable"]
       13 NAMECALL                         R5 R5 K8 ["GetPivot"]
       15 CALL                             R5 1 1
       16 SETTABLEKS                       R5 R4 K4 ["_originalPivot"]
       18 GETIMPORT                        R5 K11 [CFrame.new]
       20 CALL                             R5 0 1
       21 SETTABLEKS                       R5 R4 K5 ["_tiltRotate"]
       23 GETUPVAL                         R5 0
       24 FASTCALL2                        SETMETATABLE R4 R5 ; [+3]
       26 GETIMPORT                        R3 K13 [setmetatable]
       28 CALL                             R3 2 1
       29 GETUPVAL                         R4 1
       30 GETTABLEKS                       R5 R2 K7 ["ClickedSelectable"]
       32 CALL                             R4 1 1
       33 SETTABLEKS                       R4 R3 K3 ["_snapPoints"]
       35 GETTABLEKS                       R4 R2 K7 ["ClickedSelectable"]
       37 SETTABLEKS                       R4 R3 K14 ["_pivotOwner"]
       39 GETTABLEKS                       R4 R3 K3 ["_snapPoints"]
       41 SETTABLEKS                       R4 R3 K15 ["_originalPivotSnapPoints"]
       43 NAMECALL                         R4 R3 K16 ["update"]
       45 CALL                             R4 1 0
       46 RETURN                           R3 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["_draggerContext"]
        2 NAMECALL                         R1 R1 K1 ["shouldShowActiveInstanceHighlight"]
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+15]
        6 GETTABLEKS                       R1 R0 K2 ["_draggerToolModel"]
        8 NAMECALL                         R1 R1 K3 ["getSelectionWrapper"]
       10 CALL                             R1 1 1
       11 NAMECALL                         R1 R1 K4 ["getActiveSelectable"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R3 R0 K5 ["_pivotOwner"]
       16 JUMPIFEQ                         R3 R1 ; [+2]
       18 LOADB                            R2 0 +1
       19 LOADB                            R2 1
       20 RETURN                           R2 1
       21 LOADB                            R1 0
       22 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["_lastDragTarget"]
        2 JUMPIFNOTEQKNIL                  R1 ; [+2]
        4 RETURN                           R0 0
        5 NEWTABLE                         R1 4 0
        7 GETIMPORT                        R2 K2 [pairs]
        9 GETUPVAL                         R3 0
       10 CALL                             R2 1 3
       11 FORGPREP_NEXT                    R2
       12 GETTABLEKS                       R8 R0 K0 ["_lastDragTarget"]
       14 GETTABLEKS                       R8 R8 K3 ["mainCFrame"]
       16 GETTABLEKS                       R9 R6 K4 ["Offset"]
       18 MUL                              R7 R8 R9
       19 GETUPVAL                         R8 1
       20 GETTABLEKS                       R8 R8 K5 ["createElement"]
       22 GETUPVAL                         R9 2
       23 DUPTABLE                         R10 K12 [{"Axis", "Color", "Outset", "Scale", "AlwaysOnTop", "Thin"}]
       24 SETTABLEKS                       R7 R10 K6 ["Axis"]
       26 GETTABLEKS                       R11 R6 K7 ["Color"]
       28 SETTABLEKS                       R11 R10 K7 ["Color"]
       30 LOADK                            R11 K13 [0.5]
       31 SETTABLEKS                       R11 R10 K8 ["Outset"]
       33 GETTABLEKS                       R11 R0 K14 ["_draggerContext"]
       35 GETTABLEKS                       R13 R7 K15 ["Position"]
       37 NAMECALL                         R11 R11 K16 ["getHandleScale"]
       39 CALL                             R11 2 1
       40 SETTABLEKS                       R11 R10 K9 ["Scale"]
       42 LOADB                            R11 1
       43 SETTABLEKS                       R11 R10 K10 ["AlwaysOnTop"]
       45 LOADB                            R11 1
       46 SETTABLEKS                       R11 R10 K11 ["Thin"]
       48 CALL                             R8 2 1
       49 SETTABLE                         R8 R1 R5
       50 FORGLOOP                         R2 2 ; [-39]
       52 GETUPVAL                         R2 1
       53 GETTABLEKS                       R2 R2 K5 ["createElement"]
       55 GETUPVAL                         R3 3
       56 DUPTABLE                         R4 K20 [{"DraggerContext", "CFrame", "IsActive"}]
       57 GETTABLEKS                       R5 R0 K14 ["_draggerContext"]
       59 SETTABLEKS                       R5 R4 K17 ["DraggerContext"]
       61 GETTABLEKS                       R5 R0 K0 ["_lastDragTarget"]
       63 GETTABLEKS                       R5 R5 K3 ["mainCFrame"]
       65 SETTABLEKS                       R5 R4 K18 ["CFrame"]
       67 NAMECALL                         R5 R0 K21 ["_selectedIsActive"]
       69 CALL                             R5 1 1
       70 SETTABLEKS                       R5 R4 K19 ["IsActive"]
       72 CALL                             R2 2 1
       73 SETTABLEKS                       R2 R1 K22 ["DraggedPivot"]
       75 GETTABLEKS                       R2 R0 K14 ["_draggerContext"]
       77 NAMECALL                         R2 R2 K23 ["shouldSnapPivotToGeometry"]
       79 CALL                             R2 1 1
       80 JUMPIFNOT                        R2 ; [+27]
       81 GETTABLEKS                       R2 R0 K24 ["_snapPoints"]
       83 JUMPIFNOT                        R2 ; [+24]
       84 GETUPVAL                         R2 1
       85 GETTABLEKS                       R2 R2 K5 ["createElement"]
       87 GETUPVAL                         R3 4
       88 DUPTABLE                         R4 K27 [{"Focus", "SnapPoints", "DraggerContext"}]
       89 GETTABLEKS                       R5 R0 K0 ["_lastDragTarget"]
       91 GETTABLEKS                       R5 R5 K3 ["mainCFrame"]
       93 GETTABLEKS                       R5 R5 K15 ["Position"]
       95 SETTABLEKS                       R5 R4 K25 ["Focus"]
       97 GETTABLEKS                       R5 R0 K24 ["_snapPoints"]
       99 SETTABLEKS                       R5 R4 K26 ["SnapPoints"]
      101 GETTABLEKS                       R5 R0 K14 ["_draggerContext"]
      103 SETTABLEKS                       R5 R4 K17 ["DraggerContext"]
      105 CALL                             R2 2 1
      106 SETTABLEKS                       R2 R1 K26 ["SnapPoints"]
      108 GETUPVAL                         R2 5
      109 CALL                             R2 0 1
      110 JUMPIFNOT                        R2 ; [+95]
      111 GETTABLEKS                       R2 R0 K14 ["_draggerContext"]
      113 NAMECALL                         R2 R2 K23 ["shouldSnapPivotToGeometry"]
      115 CALL                             R2 1 1
      116 JUMPIF                           R2 ; [+89]
      117 GETTABLEKS                       R2 R0 K0 ["_lastDragTarget"]
      119 GETTABLEKS                       R2 R2 K28 ["targetMatrix"]
      121 GETTABLEKS                       R3 R2 K15 ["Position"]
      123 GETTABLEKS                       R4 R0 K14 ["_draggerContext"]
      125 MOVE                             R6 R3
      126 NAMECALL                         R4 R4 K16 ["getHandleScale"]
      128 CALL                             R4 2 1
      129 GETTABLEKS                       R6 R0 K0 ["_lastDragTarget"]
      131 GETTABLEKS                       R6 R6 K29 ["softSnaps"]
      133 LENGTH                           R5 R6
      134 JUMPIFNOTEQKN                    R5 K30 [0] ; [+55]
      136 GETUPVAL                         R5 1
      137 GETTABLEKS                       R5 R5 K5 ["createElement"]
      139 GETUPVAL                         R6 6
      140 DUPTABLE                         R7 K36 [{"DragTarget", "SourceSize", "Scale", "GridSize", "MajorStep", "Color", "PrimaryColor"}]
      141 GETTABLEKS                       R8 R0 K0 ["_lastDragTarget"]
      143 SETTABLEKS                       R8 R7 K31 ["DragTarget"]
      145 LOADK                            R8 K37 [{4, 4, 4}]
      146 SETTABLEKS                       R8 R7 K32 ["SourceSize"]
      148 SETTABLEKS                       R4 R7 K9 ["Scale"]
      150 GETTABLEKS                       R9 R0 K14 ["_draggerContext"]
      152 NAMECALL                         R9 R9 K38 ["getGridSnapEnabled"]
      154 CALL                             R9 1 1
      155 JUMPIFNOT                        R9 ; [+6]
      156 GETTABLEKS                       R8 R0 K14 ["_draggerContext"]
      158 NAMECALL                         R8 R8 K39 ["getGridSize"]
      160 CALL                             R8 1 1
      161 JUMP                             ; [+1]
      162 LOADNIL                          R8
      163 SETTABLEKS                       R8 R7 K33 ["GridSize"]
      165 GETTABLEKS                       R8 R0 K14 ["_draggerContext"]
      167 NAMECALL                         R8 R8 K40 ["getMajorGridIncrement"]
      169 CALL                             R8 1 1
      170 SETTABLEKS                       R8 R7 K34 ["MajorStep"]
      172 GETTABLEKS                       R8 R0 K14 ["_draggerContext"]
      174 NAMECALL                         R8 R8 K41 ["getGridColor"]
      176 CALL                             R8 1 1
      177 SETTABLEKS                       R8 R7 K7 ["Color"]
      179 GETTABLEKS                       R8 R0 K14 ["_draggerContext"]
      181 NAMECALL                         R8 R8 K42 ["getChosenColor"]
      183 CALL                             R8 1 1
      184 SETTABLEKS                       R8 R7 K35 ["PrimaryColor"]
      186 CALL                             R5 2 1
      187 SETTABLEKS                       R5 R1 K43 ["TargetGrid"]
      189 JUMP                             ; [+16]
      190 GETUPVAL                         R5 1
      191 GETTABLEKS                       R5 R5 K5 ["createElement"]
      193 GETUPVAL                         R6 7
      194 DUPTABLE                         R7 K44 [{"DragTarget", "DraggerContext"}]
      195 GETTABLEKS                       R8 R0 K0 ["_lastDragTarget"]
      197 SETTABLEKS                       R8 R7 K31 ["DragTarget"]
      199 GETTABLEKS                       R8 R0 K14 ["_draggerContext"]
      201 SETTABLEKS                       R8 R7 K17 ["DraggerContext"]
      203 CALL                             R5 2 1
      204 SETTABLEKS                       R5 R1 K45 ["TargetSoftSnapView"]
      206 GETUPVAL                         R2 1
      207 GETTABLEKS                       R2 R2 K46 ["createFragment"]
      209 MOVE                             R3 R1
      210 CALL                             R2 1 -1
      211 RETURN                           R2 -1

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["_originalPivot"]
        2 LOADNIL                          R3
        3 GETTABLEKS                       R4 R0 K1 ["_lastDragTarget"]
        5 JUMPIFNOT                        R4 ; [+4]
        6 GETTABLEKS                       R4 R0 K1 ["_lastDragTarget"]
        8 GETTABLEKS                       R3 R4 K2 ["targetMatrix"]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K3 ["updateTiltRotate"]
       13 GETTABLEKS                       R5 R0 K4 ["_draggerToolModel"]
       15 GETTABLEKS                       R5 R5 K5 ["_draggerContext"]
       17 NAMECALL                         R5 R5 K6 ["getCameraCFrame"]
       19 CALL                             R5 1 1
       20 GETTABLEKS                       R6 R0 K4 ["_draggerToolModel"]
       22 GETTABLEKS                       R6 R6 K5 ["_draggerContext"]
       24 NAMECALL                         R6 R6 K7 ["getMouseRay"]
       26 CALL                             R6 1 1
       27 NEWTABLE                         R7 0 0
       29 MOVE                             R8 R2
       30 MOVE                             R9 R3
       31 GETTABLEKS                       R10 R0 K8 ["_tiltRotate"]
       33 MOVE                             R11 R1
       34 LOADB                            R12 1
       35 CALL                             R4 8 1
       36 SETTABLEKS                       R4 R0 K8 ["_tiltRotate"]
       38 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_draggerContext"]
        3 MOVE                             R3 R0
        4 NAMECALL                         R1 R1 K1 ["snapToGridSize"]
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1

PROTO_5:
        0 LOADNIL                          R1
        1 GETTABLEKS                       R2 R0 K0 ["_lastDragTarget"]
        3 JUMPIFNOT                        R2 ; [+4]
        4 GETTABLEKS                       R2 R0 K0 ["_lastDragTarget"]
        6 GETTABLEKS                       R1 R2 K1 ["targetMatrix"]
        8 GETUPVAL                         R2 0
        9 CALL                             R2 0 1
       10 JUMPIFNOT                        R2 ; [+58]
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R2 R2 K2 ["getDragTarget"]
       14 NEWTABLE                         R3 0 0
       16 GETTABLEKS                       R4 R0 K3 ["_originalPivot"]
       18 GETUPVAL                         R5 2
       19 GETUPVAL                         R6 2
       20 GETUPVAL                         R7 2
       21 GETTABLEKS                       R8 R0 K4 ["_draggerToolModel"]
       23 GETTABLEKS                       R8 R8 K5 ["_draggerContext"]
       25 NAMECALL                         R8 R8 K6 ["getMouseRay"]
       27 CALL                             R8 1 1
       28 GETTABLEKS                       R10 R0 K5 ["_draggerContext"]
       30 NAMECALL                         R10 R10 K7 ["shouldGridSnap"]
       32 CALL                             R10 1 1
       33 JUMPIFNOT                        R10 ; [+6]
       34 GETTABLEKS                       R9 R0 K5 ["_draggerContext"]
       36 NAMECALL                         R9 R9 K8 ["getGridSize"]
       38 CALL                             R9 1 1
       39 JUMP                             ; [+1]
       40 LOADNIL                          R9
       41 GETTABLEKS                       R10 R0 K9 ["_tiltRotate"]
       43 MOVE                             R11 R1
       44 LOADB                            R12 1
       45 LOADB                            R13 0
       46 GETTABLEKS                       R14 R0 K5 ["_draggerContext"]
       48 NAMECALL                         R14 R14 K10 ["getSoftSnapMarginFactor"]
       50 CALL                             R14 1 1
       51 GETTABLEKS                       R15 R0 K5 ["_draggerContext"]
       53 NAMECALL                         R15 R15 K11 ["shouldPartSnap"]
       55 CALL                             R15 1 -1
       56 CALL                             R2 -1 1
       57 JUMPIFNOT                        R2 ; [+48]
       58 SETTABLEKS                       R2 R0 K0 ["_lastDragTarget"]
       60 GETUPVAL                         R3 3
       61 GETTABLEKS                       R4 R0 K12 ["_dragInfo"]
       63 GETTABLEKS                       R4 R4 K13 ["ClickedSelectable"]
       65 GETTABLEKS                       R5 R2 K14 ["mainCFrame"]
       67 CALL                             R3 2 0
       68 RETURN                           R0 0
       69 NEWCLOSURE                       R2 P0
       70 CAPTURE                          VAL R0
       71 GETUPVAL                         R3 1
       72 GETTABLEKS                       R3 R3 K2 ["getDragTarget"]
       74 GETTABLEKS                       R4 R0 K4 ["_draggerToolModel"]
       76 GETTABLEKS                       R4 R4 K5 ["_draggerContext"]
       78 NAMECALL                         R4 R4 K6 ["getMouseRay"]
       80 CALL                             R4 1 1
       81 MOVE                             R5 R2
       82 GETUPVAL                         R6 2
       83 NEWTABLE                         R7 0 0
       85 GETTABLEKS                       R8 R0 K3 ["_originalPivot"]
       87 GETUPVAL                         R9 2
       88 GETUPVAL                         R10 2
       89 GETUPVAL                         R11 2
       90 GETTABLEKS                       R12 R0 K9 ["_tiltRotate"]
       92 MOVE                             R13 R1
       93 LOADB                            R14 1
       94 CALL                             R3 11 1
       95 JUMPIFNOT                        R3 ; [+10]
       96 SETTABLEKS                       R3 R0 K0 ["_lastDragTarget"]
       98 GETUPVAL                         R4 3
       99 GETTABLEKS                       R5 R0 K12 ["_dragInfo"]
      101 GETTABLEKS                       R5 R5 K13 ["ClickedSelectable"]
      103 GETTABLEKS                       R6 R3 K14 ["mainCFrame"]
      105 CALL                             R4 2 0
      106 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["_draggerContext"]
        2 NAMECALL                         R1 R1 K1 ["getMouseRay"]
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R2 R0 K2 ["_draggerToolModel"]
        7 NAMECALL                         R2 R2 K3 ["getSchema"]
        9 CALL                             R2 1 1
       10 GETTABLEKS                       R3 R0 K2 ["_draggerToolModel"]
       12 NAMECALL                         R3 R3 K4 ["getSelectionWrapper"]
       14 CALL                             R3 1 1
       15 NAMECALL                         R3 R3 K5 ["get"]
       17 CALL                             R3 1 1
       18 GETUPVAL                         R4 0
       19 CALL                             R4 0 1
       20 JUMPIFNOT                        R4 ; [+34]
       21 GETTABLEKS                       R4 R2 K6 ["getMouseTarget"]
       23 GETTABLEKS                       R5 R0 K0 ["_draggerContext"]
       25 MOVE                             R6 R1
       26 MOVE                             R7 R3
       27 LOADB                            R8 1
       28 LOADB                            R9 0
       29 CALL                             R4 5 4
       30 JUMPIFNOT                        R4 ; [+52]
       31 GETTABLEKS                       R8 R0 K7 ["_pivotOwner"]
       33 JUMPIFEQ                         R4 R8 ; [+5]
       35 GETTABLEKS                       R8 R0 K7 ["_pivotOwner"]
       37 JUMPIFNOTEQ                      R5 R8 ; [+6]
       39 GETTABLEKS                       R8 R0 K8 ["_originalPivotSnapPoints"]
       41 SETTABLEKS                       R8 R0 K9 ["_snapPoints"]
       43 RETURN                           R0 0
       44 GETUPVAL                         R8 1
       45 GETTABLEKS                       R8 R8 K10 ["Terrain"]
       47 JUMPIFEQ                         R4 R8 ; [+35]
       49 GETUPVAL                         R8 2
       50 MOVE                             R9 R4
       51 CALL                             R8 1 1
       52 SETTABLEKS                       R8 R0 K9 ["_snapPoints"]
       54 RETURN                           R0 0
       55 GETTABLEKS                       R4 R2 K6 ["getMouseTarget"]
       57 GETTABLEKS                       R5 R0 K0 ["_draggerContext"]
       59 MOVE                             R6 R1
       60 MOVE                             R7 R3
       61 LOADB                            R8 1
       62 CALL                             R4 4 1
       63 JUMPIFNOT                        R4 ; [+19]
       64 GETTABLEKS                       R5 R0 K7 ["_pivotOwner"]
       66 JUMPIFNOTEQ                      R4 R5 ; [+6]
       68 GETTABLEKS                       R5 R0 K8 ["_originalPivotSnapPoints"]
       70 SETTABLEKS                       R5 R0 K9 ["_snapPoints"]
       72 RETURN                           R0 0
       73 GETUPVAL                         R5 1
       74 GETTABLEKS                       R5 R5 K10 ["Terrain"]
       76 JUMPIFEQ                         R4 R5 ; [+6]
       78 GETUPVAL                         R5 2
       79 MOVE                             R6 R4
       80 CALL                             R5 1 1
       81 SETTABLEKS                       R5 R0 K9 ["_snapPoints"]
       83 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["_snapPoints"]
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 GETTABLEKS                       R1 R0 K1 ["_draggerContext"]
        6 NAMECALL                         R1 R1 K2 ["getMouseLocation"]
        8 CALL                             R1 1 1
        9 LOADNIL                          R2
       10 LOADK                            R3 K3 [∞]
       11 GETIMPORT                        R4 K5 [ipairs]
       13 GETTABLEKS                       R5 R0 K0 ["_snapPoints"]
       15 CALL                             R4 1 3
       16 FORGPREP_INEXT                   R4
       17 GETTABLEKS                       R9 R0 K1 ["_draggerContext"]
       19 GETTABLEKS                       R11 R8 K6 ["Position"]
       21 NAMECALL                         R9 R9 K7 ["worldToViewportPoint"]
       23 CALL                             R9 2 2
       24 JUMPIFNOT                        R10 ; [+14]
       25 GETIMPORT                        R11 K10 [Vector2.new]
       27 GETTABLEKS                       R12 R9 K11 ["X"]
       29 GETTABLEKS                       R13 R9 K12 ["Y"]
       31 CALL                             R11 2 1
       32 SUB                              R12 R11 R1
       33 GETTABLEKS                       R12 R12 K13 ["Magnitude"]
       35 JUMPIFNOTLT                      R12 R3 ; [+3]
       37 MOVE                             R3 R12
       38 MOVE                             R2 R8
       39 FORGLOOP                         R4 2 [inext] ; [-23]
       41 MOVE                             R4 R2
       42 JUMPIF                           R4 ; [+2]
       43 GETTABLEKS                       R4 R0 K14 ["_originalPivot"]
       45 DUPTABLE                         R5 K16 [{"mainCFrame"}]
       46 SETTABLEKS                       R4 R5 K15 ["mainCFrame"]
       48 SETTABLEKS                       R5 R0 K17 ["_lastDragTarget"]
       50 GETUPVAL                         R5 0
       51 GETTABLEKS                       R6 R0 K18 ["_dragInfo"]
       53 GETTABLEKS                       R6 R6 K19 ["ClickedSelectable"]
       55 MOVE                             R7 R4
       56 CALL                             R5 2 0
       57 RETURN                           R0 0

PROTO_8:
        0 NAMECALL                         R1 R0 K0 ["_recomputeSnapPoints"]
        2 CALL                             R1 1 0
        3 NAMECALL                         R1 R0 K1 ["_snapToSnapPoints"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["_draggerContext"]
        2 NAMECALL                         R1 R1 K1 ["shouldSnapPivotToGeometry"]
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+4]
        6 NAMECALL                         R1 R0 K2 ["_updateSnap"]
        8 CALL                             R1 1 0
        9 RETURN                           R0 0
       10 NAMECALL                         R1 R0 K3 ["_updateNoSnap"]
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["_draggerContext"]
        2 NAMECALL                         R1 R1 K1 ["getAnalytics"]
        4 CALL                             R1 1 1
        5 LOADK                            R3 K2 ["setPivot"]
        6 DUPTABLE                         R4 K7 [{"gridSize", "rotateIncrement", "handleId", "pivotType"}]
        7 GETTABLEKS                       R5 R0 K0 ["_draggerContext"]
        9 NAMECALL                         R5 R5 K8 ["getGridSize"]
       11 CALL                             R5 1 1
       12 SETTABLEKS                       R5 R4 K3 ["gridSize"]
       14 GETTABLEKS                       R5 R0 K0 ["_draggerContext"]
       16 NAMECALL                         R5 R5 K9 ["getRotateIncrement"]
       18 CALL                             R5 1 1
       19 SETTABLEKS                       R5 R4 K4 ["rotateIncrement"]
       21 GETTABLEKS                       R5 R0 K10 ["_dragInfo"]
       23 GETTABLEKS                       R5 R5 K11 ["HandleId"]
       25 SETTABLEKS                       R5 R4 K5 ["handleId"]
       27 GETUPVAL                         R5 0
       28 GETTABLEKS                       R6 R0 K10 ["_dragInfo"]
       30 GETTABLEKS                       R6 R6 K12 ["ClickedSelectable"]
       32 CALL                             R5 1 1
       33 SETTABLEKS                       R5 R4 K6 ["pivotType"]
       35 NAMECALL                         R1 R1 K13 ["sendEvent"]
       37 CALL                             R1 3 0
       38 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Workspace"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R1 R1 K6 ["Parent"]
       15 GETTABLEKS                       R2 R1 K7 ["Packages"]
       17 GETTABLEKS                       R3 R2 K8 ["DraggerFramework"]
       19 GETIMPORT                        R4 K10 [require]
       21 GETTABLEKS                       R5 R2 K11 ["Roact"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K10 [require]
       26 GETTABLEKS                       R6 R3 K12 ["Utility"]
       28 GETTABLEKS                       R6 R6 K13 ["DragHelper"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K10 [require]
       33 GETTABLEKS                       R7 R3 K12 ["Utility"]
       35 GETTABLEKS                       R7 R7 K14 ["Colors"]
       37 CALL                             R6 1 1
       38 GETIMPORT                        R7 K10 [require]
       40 GETTABLEKS                       R8 R3 K15 ["Components"]
       42 GETTABLEKS                       R8 R8 K16 ["MoveHandleView"]
       44 CALL                             R7 1 1
       45 GETIMPORT                        R8 K10 [require]
       47 GETTABLEKS                       R9 R3 K15 ["Components"]
       49 GETTABLEKS                       R9 R9 K17 ["TargetGridView"]
       51 CALL                             R8 1 1
       52 GETIMPORT                        R9 K10 [require]
       54 GETTABLEKS                       R10 R3 K15 ["Components"]
       56 GETTABLEKS                       R10 R10 K18 ["TargetSoftSnapView"]
       58 CALL                             R9 1 1
       59 GETIMPORT                        R10 K10 [require]
       61 GETTABLEKS                       R11 R1 K19 ["Src"]
       63 GETTABLEKS                       R11 R11 K12 ["Utility"]
       65 GETTABLEKS                       R11 R11 K20 ["setWorldPivot"]
       67 CALL                             R10 1 1
       68 GETIMPORT                        R11 K10 [require]
       70 GETTABLEKS                       R12 R1 K19 ["Src"]
       72 GETTABLEKS                       R12 R12 K12 ["Utility"]
       74 GETTABLEKS                       R12 R12 K21 ["computeSnapPointsForInstance"]
       76 CALL                             R11 1 1
       77 GETIMPORT                        R12 K10 [require]
       79 GETTABLEKS                       R13 R1 K19 ["Src"]
       81 GETTABLEKS                       R13 R13 K15 ["Components"]
       83 GETTABLEKS                       R13 R13 K22 ["SnapPoints"]
       85 CALL                             R12 1 1
       86 GETIMPORT                        R13 K10 [require]
       88 GETTABLEKS                       R14 R3 K15 ["Components"]
       90 GETTABLEKS                       R14 R14 K23 ["DraggedPivot"]
       92 CALL                             R13 1 1
       93 GETIMPORT                        R14 K10 [require]
       95 GETTABLEKS                       R15 R1 K19 ["Src"]
       97 GETTABLEKS                       R15 R15 K12 ["Utility"]
       99 GETTABLEKS                       R15 R15 K24 ["classifyInstancePivot"]
      101 CALL                             R14 1 1
      102 GETIMPORT                        R15 K10 [require]
      104 GETTABLEKS                       R16 R3 K25 ["Flags"]
      106 GETTABLEKS                       R16 R16 K26 ["getFFlagDraggerImprovements"]
      108 CALL                             R15 1 1
      109 FASTCALL                         VECTOR ; [+2]
      110 GETIMPORT                        R16 K29 [Vector3.new]
      112 CALL                             R16 0 1
      113 DUPTABLE                         R17 K36 [{"MinusZ", "PlusZ", "MinusY", "PlusY", "MinusX", "PlusX"}]
      114 DUPTABLE                         R18 K39 [{"Offset", "Color"}]
      115 GETIMPORT                        R19 K42 [CFrame.fromMatrix]
      117 MOVE                             R20 R16
      118 LOADK                            R21 K43 [{1, 0, 0}]
      119 LOADK                            R22 K44 [{0, 1, 0}]
      120 CALL                             R19 3 1
      121 SETTABLEKS                       R19 R18 K37 ["Offset"]
      123 GETTABLEKS                       R19 R6 K45 ["Z_AXIS"]
      125 SETTABLEKS                       R19 R18 K38 ["Color"]
      127 SETTABLEKS                       R18 R17 K30 ["MinusZ"]
      129 DUPTABLE                         R18 K39 [{"Offset", "Color"}]
      130 GETIMPORT                        R19 K42 [CFrame.fromMatrix]
      132 MOVE                             R20 R16
      133 LOADK                            R21 K43 [{1, 0, 0}]
      134 LOADK                            R22 K46 [{0, -1, 0}]
      135 CALL                             R19 3 1
      136 SETTABLEKS                       R19 R18 K37 ["Offset"]
      138 GETTABLEKS                       R19 R6 K45 ["Z_AXIS"]
      140 SETTABLEKS                       R19 R18 K38 ["Color"]
      142 SETTABLEKS                       R18 R17 K31 ["PlusZ"]
      144 DUPTABLE                         R18 K39 [{"Offset", "Color"}]
      145 GETIMPORT                        R19 K42 [CFrame.fromMatrix]
      147 MOVE                             R20 R16
      148 LOADK                            R21 K47 [{0, 0, 1}]
      149 LOADK                            R22 K43 [{1, 0, 0}]
      150 CALL                             R19 3 1
      151 SETTABLEKS                       R19 R18 K37 ["Offset"]
      153 GETTABLEKS                       R19 R6 K48 ["Y_AXIS"]
      155 SETTABLEKS                       R19 R18 K38 ["Color"]
      157 SETTABLEKS                       R18 R17 K32 ["MinusY"]
      159 DUPTABLE                         R18 K39 [{"Offset", "Color"}]
      160 GETIMPORT                        R19 K42 [CFrame.fromMatrix]
      162 MOVE                             R20 R16
      163 LOADK                            R21 K47 [{0, 0, 1}]
      164 LOADK                            R22 K49 [{-1, 0, 0}]
      165 CALL                             R19 3 1
      166 SETTABLEKS                       R19 R18 K37 ["Offset"]
      168 GETTABLEKS                       R19 R6 K48 ["Y_AXIS"]
      170 SETTABLEKS                       R19 R18 K38 ["Color"]
      172 SETTABLEKS                       R18 R17 K33 ["PlusY"]
      174 DUPTABLE                         R18 K39 [{"Offset", "Color"}]
      175 GETIMPORT                        R19 K42 [CFrame.fromMatrix]
      177 MOVE                             R20 R16
      178 LOADK                            R21 K44 [{0, 1, 0}]
      179 LOADK                            R22 K47 [{0, 0, 1}]
      180 CALL                             R19 3 1
      181 SETTABLEKS                       R19 R18 K37 ["Offset"]
      183 GETTABLEKS                       R19 R6 K50 ["X_AXIS"]
      185 SETTABLEKS                       R19 R18 K38 ["Color"]
      187 SETTABLEKS                       R18 R17 K34 ["MinusX"]
      189 DUPTABLE                         R18 K39 [{"Offset", "Color"}]
      190 GETIMPORT                        R19 K42 [CFrame.fromMatrix]
      192 MOVE                             R20 R16
      193 LOADK                            R21 K44 [{0, 1, 0}]
      194 LOADK                            R22 K51 [{0, 0, -1}]
      195 CALL                             R19 3 1
      196 SETTABLEKS                       R19 R18 K37 ["Offset"]
      198 GETTABLEKS                       R19 R6 K50 ["X_AXIS"]
      200 SETTABLEKS                       R19 R18 K38 ["Color"]
      202 SETTABLEKS                       R18 R17 K35 ["PlusX"]
      204 NEWTABLE                         R18 16 0
      206 SETTABLEKS                       R18 R18 K52 ["__index"]
      208 DUPCLOSURE                       R19 K53 [PROTO_0]
      209 CAPTURE                          VAL R18
      210 CAPTURE                          VAL R11
      211 SETTABLEKS                       R19 R18 K28 ["new"]
      213 DUPCLOSURE                       R19 K54 [PROTO_1]
      214 SETTABLEKS                       R19 R18 K55 ["_selectedIsActive"]
      216 DUPCLOSURE                       R19 K56 [PROTO_2]
      217 CAPTURE                          VAL R17
      218 CAPTURE                          VAL R4
      219 CAPTURE                          VAL R7
      220 CAPTURE                          VAL R13
      221 CAPTURE                          VAL R12
      222 CAPTURE                          VAL R15
      223 CAPTURE                          VAL R8
      224 CAPTURE                          VAL R9
      225 SETTABLEKS                       R19 R18 K57 ["render"]
      227 DUPCLOSURE                       R19 K58 [PROTO_3]
      228 CAPTURE                          VAL R5
      229 SETTABLEKS                       R19 R18 K59 ["rotate"]
      231 DUPCLOSURE                       R19 K60 [PROTO_5]
      232 CAPTURE                          VAL R15
      233 CAPTURE                          VAL R5
      234 CAPTURE                          VAL R16
      235 CAPTURE                          VAL R10
      236 SETTABLEKS                       R19 R18 K61 ["_updateNoSnap"]
      238 DUPCLOSURE                       R19 K62 [PROTO_6]
      239 CAPTURE                          VAL R15
      240 CAPTURE                          VAL R0
      241 CAPTURE                          VAL R11
      242 SETTABLEKS                       R19 R18 K63 ["_recomputeSnapPoints"]
      244 DUPCLOSURE                       R19 K64 [PROTO_7]
      245 CAPTURE                          VAL R10
      246 SETTABLEKS                       R19 R18 K65 ["_snapToSnapPoints"]
      248 DUPCLOSURE                       R19 K66 [PROTO_8]
      249 SETTABLEKS                       R19 R18 K67 ["_updateSnap"]
      251 DUPCLOSURE                       R19 K68 [PROTO_9]
      252 SETTABLEKS                       R19 R18 K69 ["update"]
      254 DUPCLOSURE                       R19 K70 [PROTO_10]
      255 CAPTURE                          VAL R14
      256 SETTABLEKS                       R19 R18 K71 ["destroy"]
      258 RETURN                           R18 1
