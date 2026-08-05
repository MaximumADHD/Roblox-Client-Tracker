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
       23 DUPTABLE                         R10 K14 [{["Axis"], ["Color"], ["Outset"] = 0.5, ["Scale"], ["AlwaysOnTop"] = True, ["Thin"] = True}]
       24 SETTABLEKS                       R7 R10 K6 ["Axis"]
       26 GETTABLEKS                       R11 R6 K7 ["Color"]
       28 SETTABLEKS                       R11 R10 K7 ["Color"]
       30 GETTABLEKS                       R11 R0 K15 ["_draggerContext"]
       32 GETTABLEKS                       R13 R7 K16 ["Position"]
       34 NAMECALL                         R11 R11 K17 ["getHandleScale"]
       36 CALL                             R11 2 1
       37 SETTABLEKS                       R11 R10 K10 ["Scale"]
       39 CALL                             R8 2 1
       40 SETTABLE                         R8 R1 R5
       41 FORGLOOP                         R2 2 ; [-30]
       43 GETUPVAL                         R2 1
       44 GETTABLEKS                       R2 R2 K5 ["createElement"]
       46 GETUPVAL                         R3 3
       47 DUPTABLE                         R4 K21 [{"DraggerContext", "CFrame", "IsActive"}]
       48 GETTABLEKS                       R5 R0 K15 ["_draggerContext"]
       50 SETTABLEKS                       R5 R4 K18 ["DraggerContext"]
       52 GETTABLEKS                       R5 R0 K0 ["_lastDragTarget"]
       54 GETTABLEKS                       R5 R5 K3 ["mainCFrame"]
       56 SETTABLEKS                       R5 R4 K19 ["CFrame"]
       58 NAMECALL                         R5 R0 K22 ["_selectedIsActive"]
       60 CALL                             R5 1 1
       61 SETTABLEKS                       R5 R4 K20 ["IsActive"]
       63 CALL                             R2 2 1
       64 SETTABLEKS                       R2 R1 K23 ["DraggedPivot"]
       66 GETTABLEKS                       R2 R0 K15 ["_draggerContext"]
       68 NAMECALL                         R2 R2 K24 ["shouldSnapPivotToGeometry"]
       70 CALL                             R2 1 1
       71 JUMPIFNOT                        R2 ; [+27]
       72 GETTABLEKS                       R2 R0 K25 ["_snapPoints"]
       74 JUMPIFNOT                        R2 ; [+24]
       75 GETUPVAL                         R2 1
       76 GETTABLEKS                       R2 R2 K5 ["createElement"]
       78 GETUPVAL                         R3 4
       79 DUPTABLE                         R4 K28 [{"Focus", "SnapPoints", "DraggerContext"}]
       80 GETTABLEKS                       R5 R0 K0 ["_lastDragTarget"]
       82 GETTABLEKS                       R5 R5 K3 ["mainCFrame"]
       84 GETTABLEKS                       R5 R5 K16 ["Position"]
       86 SETTABLEKS                       R5 R4 K26 ["Focus"]
       88 GETTABLEKS                       R5 R0 K25 ["_snapPoints"]
       90 SETTABLEKS                       R5 R4 K27 ["SnapPoints"]
       92 GETTABLEKS                       R5 R0 K15 ["_draggerContext"]
       94 SETTABLEKS                       R5 R4 K18 ["DraggerContext"]
       96 CALL                             R2 2 1
       97 SETTABLEKS                       R2 R1 K27 ["SnapPoints"]
       99 GETTABLEKS                       R2 R0 K15 ["_draggerContext"]
      101 NAMECALL                         R2 R2 K24 ["shouldSnapPivotToGeometry"]
      103 CALL                             R2 1 1
      104 JUMPIF                           R2 ; [+86]
      105 GETTABLEKS                       R2 R0 K0 ["_lastDragTarget"]
      107 GETTABLEKS                       R2 R2 K29 ["targetMatrix"]
      109 GETTABLEKS                       R3 R2 K16 ["Position"]
      111 GETTABLEKS                       R4 R0 K15 ["_draggerContext"]
      113 MOVE                             R6 R3
      114 NAMECALL                         R4 R4 K17 ["getHandleScale"]
      116 CALL                             R4 2 1
      117 GETTABLEKS                       R6 R0 K0 ["_lastDragTarget"]
      119 GETTABLEKS                       R6 R6 K30 ["softSnaps"]
      121 LENGTH                           R5 R6
      122 JUMPIFNOTEQKN                    R5 K31 [0] ; [+52]
      124 GETUPVAL                         R5 1
      125 GETTABLEKS                       R5 R5 K5 ["createElement"]
      127 GETUPVAL                         R6 5
      128 DUPTABLE                         R7 K38 [{["DragTarget"], ["SourceSize"] = {4, 4, 4}, ["Scale"], ["GridSize"], ["MajorStep"], ["Color"], ["PrimaryColor"]}]
      129 GETTABLEKS                       R8 R0 K0 ["_lastDragTarget"]
      131 SETTABLEKS                       R8 R7 K32 ["DragTarget"]
      133 SETTABLEKS                       R4 R7 K10 ["Scale"]
      135 GETTABLEKS                       R9 R0 K15 ["_draggerContext"]
      137 NAMECALL                         R9 R9 K39 ["getGridSnapEnabled"]
      139 CALL                             R9 1 1
      140 JUMPIFNOT                        R9 ; [+6]
      141 GETTABLEKS                       R8 R0 K15 ["_draggerContext"]
      143 NAMECALL                         R8 R8 K40 ["getGridSize"]
      145 CALL                             R8 1 1
      146 JUMP                             ; [+1]
      147 LOADNIL                          R8
      148 SETTABLEKS                       R8 R7 K35 ["GridSize"]
      150 GETTABLEKS                       R8 R0 K15 ["_draggerContext"]
      152 NAMECALL                         R8 R8 K41 ["getMajorGridIncrement"]
      154 CALL                             R8 1 1
      155 SETTABLEKS                       R8 R7 K36 ["MajorStep"]
      157 GETTABLEKS                       R8 R0 K15 ["_draggerContext"]
      159 NAMECALL                         R8 R8 K42 ["getGridColor"]
      161 CALL                             R8 1 1
      162 SETTABLEKS                       R8 R7 K7 ["Color"]
      164 GETTABLEKS                       R8 R0 K15 ["_draggerContext"]
      166 NAMECALL                         R8 R8 K43 ["getChosenColor"]
      168 CALL                             R8 1 1
      169 SETTABLEKS                       R8 R7 K37 ["PrimaryColor"]
      171 CALL                             R5 2 1
      172 SETTABLEKS                       R5 R1 K44 ["TargetGrid"]
      174 JUMP                             ; [+16]
      175 GETUPVAL                         R5 1
      176 GETTABLEKS                       R5 R5 K5 ["createElement"]
      178 GETUPVAL                         R6 6
      179 DUPTABLE                         R7 K47 [{["DragTarget"], ["DraggerContext"], ["UseBoundingBoxes"] = }]
      180 GETTABLEKS                       R8 R0 K0 ["_lastDragTarget"]
      182 SETTABLEKS                       R8 R7 K32 ["DragTarget"]
      184 GETTABLEKS                       R8 R0 K15 ["_draggerContext"]
      186 SETTABLEKS                       R8 R7 K18 ["DraggerContext"]
      188 CALL                             R5 2 1
      189 SETTABLEKS                       R5 R1 K48 ["TargetSoftSnapView"]
      191 GETUPVAL                         R2 1
      192 GETTABLEKS                       R2 R2 K49 ["createFragment"]
      194 MOVE                             R3 R1
      195 CALL                             R2 1 -1
      196 RETURN                           R2 -1

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["_originalPivot"]
        2 LOADNIL                          R3
        3 GETTABLEKS                       R4 R0 K1 ["_lastDragTarget"]
        5 JUMPIFNOT                        R4 ; [+4]
        6 GETTABLEKS                       R4 R0 K1 ["_lastDragTarget"]
        8 GETTABLEKS                       R3 R4 K2 ["targetMatrix"]
       10 GETUPVAL                         R4 0
       11 CALL                             R4 0 1
       12 JUMPIFNOT                        R4 ; [+47]
       13 GETUPVAL                         R4 1
       14 GETTABLEKS                       R4 R4 K3 ["updateTiltRotateNew"]
       16 GETTABLEKS                       R5 R0 K4 ["_draggerToolModel"]
       18 GETTABLEKS                       R5 R5 K5 ["_draggerContext"]
       20 NAMECALL                         R5 R5 K6 ["getMouseRay"]
       22 CALL                             R5 1 1
       23 DUPTABLE                         R6 K16 [{["cameraCFrame"], ["selection"], ["mainCFrame"], ["lastTargetMat"], ["tiltRotate"], ["axis"], ["alignRotation"] = True, ["useBoundingBoxes"]}]
       24 GETTABLEKS                       R7 R0 K4 ["_draggerToolModel"]
       26 GETTABLEKS                       R7 R7 K5 ["_draggerContext"]
       28 NAMECALL                         R7 R7 K17 ["getCameraCFrame"]
       30 CALL                             R7 1 1
       31 SETTABLEKS                       R7 R6 K7 ["cameraCFrame"]
       33 NEWTABLE                         R7 0 0
       35 SETTABLEKS                       R7 R6 K8 ["selection"]
       37 SETTABLEKS                       R2 R6 K9 ["mainCFrame"]
       39 SETTABLEKS                       R3 R6 K10 ["lastTargetMat"]
       41 GETTABLEKS                       R7 R0 K18 ["_tiltRotate"]
       43 SETTABLEKS                       R7 R6 K11 ["tiltRotate"]
       45 SETTABLEKS                       R1 R6 K12 ["axis"]
       47 GETTABLEKS                       R7 R0 K5 ["_draggerContext"]
       49 NAMECALL                         R7 R7 K19 ["shouldUseBoundingBoxes"]
       51 CALL                             R7 1 1
       52 SETTABLEKS                       R7 R6 K15 ["useBoundingBoxes"]
       54 CALL                             R4 2 1
       55 GETTABLEKS                       R4 R4 K11 ["tiltRotate"]
       57 SETTABLEKS                       R4 R0 K18 ["_tiltRotate"]
       59 RETURN                           R0 0
       60 GETUPVAL                         R4 1
       61 GETTABLEKS                       R4 R4 K20 ["DEPRECATED_updateTiltRotate"]
       63 GETTABLEKS                       R5 R0 K4 ["_draggerToolModel"]
       65 GETTABLEKS                       R5 R5 K5 ["_draggerContext"]
       67 NAMECALL                         R5 R5 K17 ["getCameraCFrame"]
       69 CALL                             R5 1 1
       70 GETTABLEKS                       R6 R0 K4 ["_draggerToolModel"]
       72 GETTABLEKS                       R6 R6 K5 ["_draggerContext"]
       74 NAMECALL                         R6 R6 K6 ["getMouseRay"]
       76 CALL                             R6 1 1
       77 NEWTABLE                         R7 0 0
       79 MOVE                             R8 R2
       80 MOVE                             R9 R3
       81 GETTABLEKS                       R10 R0 K18 ["_tiltRotate"]
       83 MOVE                             R11 R1
       84 LOADB                            R12 1
       85 CALL                             R4 8 1
       86 SETTABLEKS                       R4 R0 K18 ["_tiltRotate"]
       88 RETURN                           R0 0

PROTO_4:
        0 LOADNIL                          R1
        1 GETTABLEKS                       R2 R0 K0 ["_lastDragTarget"]
        3 JUMPIFNOT                        R2 ; [+4]
        4 GETTABLEKS                       R2 R0 K0 ["_lastDragTarget"]
        6 GETTABLEKS                       R1 R2 K1 ["targetMatrix"]
        8 LOADNIL                          R2
        9 GETUPVAL                         R3 0
       10 CALL                             R3 0 1
       11 JUMPIFNOT                        R3 ; [+73]
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K2 ["getDragTargetNew"]
       15 GETTABLEKS                       R4 R0 K3 ["_draggerToolModel"]
       17 GETTABLEKS                       R4 R4 K4 ["_draggerContext"]
       19 NAMECALL                         R4 R4 K5 ["getMouseRay"]
       21 CALL                             R4 1 1
       22 DUPTABLE                         R5 K21 [{["selection"], ["selectionBoundsCFrame"], ["selectionBoundsOffset"], ["selectionBoundsSize"], ["draggedPoint"], ["gridSnap"], ["tiltRotate"], ["lastTargetMat"], ["alignRotation"] = True, ["draggingByPivot"] = False, ["softSnapMarginFactor"], ["partSnap"], ["useBoundingBoxes"]}]
       23 NEWTABLE                         R6 0 0
       25 SETTABLEKS                       R6 R5 K6 ["selection"]
       27 GETTABLEKS                       R6 R0 K22 ["_originalPivot"]
       29 SETTABLEKS                       R6 R5 K7 ["selectionBoundsCFrame"]
       31 GETUPVAL                         R6 2
       32 SETTABLEKS                       R6 R5 K8 ["selectionBoundsOffset"]
       34 GETUPVAL                         R6 2
       35 SETTABLEKS                       R6 R5 K9 ["selectionBoundsSize"]
       37 GETUPVAL                         R6 2
       38 SETTABLEKS                       R6 R5 K10 ["draggedPoint"]
       40 GETTABLEKS                       R7 R0 K4 ["_draggerContext"]
       42 NAMECALL                         R7 R7 K23 ["shouldGridSnap"]
       44 CALL                             R7 1 1
       45 JUMPIFNOT                        R7 ; [+6]
       46 GETTABLEKS                       R6 R0 K4 ["_draggerContext"]
       48 NAMECALL                         R6 R6 K24 ["getGridSize"]
       50 CALL                             R6 1 1
       51 JUMP                             ; [+1]
       52 LOADNIL                          R6
       53 SETTABLEKS                       R6 R5 K11 ["gridSnap"]
       55 GETTABLEKS                       R6 R0 K25 ["_tiltRotate"]
       57 SETTABLEKS                       R6 R5 K12 ["tiltRotate"]
       59 SETTABLEKS                       R1 R5 K13 ["lastTargetMat"]
       61 GETTABLEKS                       R6 R0 K4 ["_draggerContext"]
       63 NAMECALL                         R6 R6 K26 ["getSoftSnapMarginFactor"]
       65 CALL                             R6 1 1
       66 SETTABLEKS                       R6 R5 K18 ["softSnapMarginFactor"]
       68 GETTABLEKS                       R6 R0 K4 ["_draggerContext"]
       70 NAMECALL                         R6 R6 K27 ["shouldPartSnap"]
       72 CALL                             R6 1 1
       73 SETTABLEKS                       R6 R5 K19 ["partSnap"]
       75 GETTABLEKS                       R6 R0 K4 ["_draggerContext"]
       77 NAMECALL                         R6 R6 K28 ["shouldUseBoundingBoxes"]
       79 CALL                             R6 1 1
       80 SETTABLEKS                       R6 R5 K20 ["useBoundingBoxes"]
       82 CALL                             R3 2 1
       83 MOVE                             R2 R3
       84 JUMP                             ; [+47]
       85 GETUPVAL                         R3 1
       86 GETTABLEKS                       R3 R3 K29 ["DEPRECATED_getDragTarget"]
       88 NEWTABLE                         R4 0 0
       90 GETTABLEKS                       R5 R0 K22 ["_originalPivot"]
       92 GETUPVAL                         R6 2
       93 GETUPVAL                         R7 2
       94 GETUPVAL                         R8 2
       95 GETTABLEKS                       R9 R0 K3 ["_draggerToolModel"]
       97 GETTABLEKS                       R9 R9 K4 ["_draggerContext"]
       99 NAMECALL                         R9 R9 K5 ["getMouseRay"]
      101 CALL                             R9 1 1
      102 GETTABLEKS                       R11 R0 K4 ["_draggerContext"]
      104 NAMECALL                         R11 R11 K23 ["shouldGridSnap"]
      106 CALL                             R11 1 1
      107 JUMPIFNOT                        R11 ; [+6]
      108 GETTABLEKS                       R10 R0 K4 ["_draggerContext"]
      110 NAMECALL                         R10 R10 K24 ["getGridSize"]
      112 CALL                             R10 1 1
      113 JUMP                             ; [+1]
      114 LOADNIL                          R10
      115 GETTABLEKS                       R11 R0 K25 ["_tiltRotate"]
      117 MOVE                             R12 R1
      118 LOADB                            R13 1
      119 LOADB                            R14 0
      120 GETTABLEKS                       R15 R0 K4 ["_draggerContext"]
      122 NAMECALL                         R15 R15 K26 ["getSoftSnapMarginFactor"]
      124 CALL                             R15 1 1
      125 GETTABLEKS                       R16 R0 K4 ["_draggerContext"]
      127 NAMECALL                         R16 R16 K27 ["shouldPartSnap"]
      129 CALL                             R16 1 -1
      130 CALL                             R3 -1 1
      131 MOVE                             R2 R3
      132 JUMPIFNOT                        R2 ; [+10]
      133 SETTABLEKS                       R2 R0 K0 ["_lastDragTarget"]
      135 GETUPVAL                         R3 3
      136 GETTABLEKS                       R4 R0 K30 ["_dragInfo"]
      138 GETTABLEKS                       R4 R4 K31 ["ClickedSelectable"]
      140 GETTABLEKS                       R5 R2 K32 ["mainCFrame"]
      142 CALL                             R3 2 0
      143 RETURN                           R0 0

PROTO_5:
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
       18 GETTABLEKS                       R4 R2 K6 ["getMouseTarget"]
       20 GETTABLEKS                       R5 R0 K0 ["_draggerContext"]
       22 MOVE                             R6 R1
       23 MOVE                             R7 R3
       24 LOADB                            R8 1
       25 LOADB                            R9 0
       26 CALL                             R4 5 4
       27 JUMPIFNOT                        R4 ; [+23]
       28 GETTABLEKS                       R8 R0 K7 ["_pivotOwner"]
       30 JUMPIFEQ                         R4 R8 ; [+5]
       32 GETTABLEKS                       R8 R0 K7 ["_pivotOwner"]
       34 JUMPIFNOTEQ                      R5 R8 ; [+6]
       36 GETTABLEKS                       R8 R0 K8 ["_originalPivotSnapPoints"]
       38 SETTABLEKS                       R8 R0 K9 ["_snapPoints"]
       40 RETURN                           R0 0
       41 GETUPVAL                         R8 0
       42 GETTABLEKS                       R8 R8 K10 ["Terrain"]
       44 JUMPIFEQ                         R4 R8 ; [+6]
       46 GETUPVAL                         R8 1
       47 MOVE                             R9 R4
       48 CALL                             R8 1 1
       49 SETTABLEKS                       R8 R0 K9 ["_snapPoints"]
       51 RETURN                           R0 0

PROTO_6:
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

PROTO_7:
        0 NAMECALL                         R1 R0 K0 ["_recomputeSnapPoints"]
        2 CALL                             R1 1 0
        3 NAMECALL                         R1 R0 K1 ["_snapToSnapPoints"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_8:
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

PROTO_9:
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
       26 GETTABLEKS                       R6 R3 K12 ["Flags"]
       28 GETTABLEKS                       R6 R6 K13 ["getEngineFeatureDraggerServiceUseBoundingBoxes"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K10 [require]
       33 GETTABLEKS                       R7 R3 K14 ["Utility"]
       35 GETTABLEKS                       R7 R7 K15 ["DragHelper"]
       37 CALL                             R6 1 1
       38 GETIMPORT                        R7 K10 [require]
       40 GETTABLEKS                       R8 R3 K14 ["Utility"]
       42 GETTABLEKS                       R8 R8 K16 ["Colors"]
       44 CALL                             R7 1 1
       45 GETIMPORT                        R8 K10 [require]
       47 GETTABLEKS                       R9 R3 K17 ["Components"]
       49 GETTABLEKS                       R9 R9 K18 ["MoveHandleView"]
       51 CALL                             R8 1 1
       52 GETIMPORT                        R9 K10 [require]
       54 GETTABLEKS                       R10 R3 K17 ["Components"]
       56 GETTABLEKS                       R10 R10 K19 ["TargetGridView"]
       58 CALL                             R9 1 1
       59 GETIMPORT                        R10 K10 [require]
       61 GETTABLEKS                       R11 R3 K17 ["Components"]
       63 GETTABLEKS                       R11 R11 K20 ["TargetSoftSnapView"]
       65 CALL                             R10 1 1
       66 GETIMPORT                        R11 K10 [require]
       68 GETTABLEKS                       R12 R1 K21 ["Src"]
       70 GETTABLEKS                       R12 R12 K14 ["Utility"]
       72 GETTABLEKS                       R12 R12 K22 ["setWorldPivot"]
       74 CALL                             R11 1 1
       75 GETIMPORT                        R12 K10 [require]
       77 GETTABLEKS                       R13 R1 K21 ["Src"]
       79 GETTABLEKS                       R13 R13 K14 ["Utility"]
       81 GETTABLEKS                       R13 R13 K23 ["computeSnapPointsForInstance"]
       83 CALL                             R12 1 1
       84 GETIMPORT                        R13 K10 [require]
       86 GETTABLEKS                       R14 R1 K21 ["Src"]
       88 GETTABLEKS                       R14 R14 K17 ["Components"]
       90 GETTABLEKS                       R14 R14 K24 ["SnapPoints"]
       92 CALL                             R13 1 1
       93 GETIMPORT                        R14 K10 [require]
       95 GETTABLEKS                       R15 R3 K17 ["Components"]
       97 GETTABLEKS                       R15 R15 K25 ["DraggedPivot"]
       99 CALL                             R14 1 1
      100 GETIMPORT                        R15 K10 [require]
      102 GETTABLEKS                       R16 R1 K21 ["Src"]
      104 GETTABLEKS                       R16 R16 K14 ["Utility"]
      106 GETTABLEKS                       R16 R16 K26 ["classifyInstancePivot"]
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
      123 GETTABLEKS                       R19 R7 K45 ["Z_AXIS"]
      125 SETTABLEKS                       R19 R18 K38 ["Color"]
      127 SETTABLEKS                       R18 R17 K30 ["MinusZ"]
      129 DUPTABLE                         R18 K39 [{"Offset", "Color"}]
      130 GETIMPORT                        R19 K42 [CFrame.fromMatrix]
      132 MOVE                             R20 R16
      133 LOADK                            R21 K43 [{1, 0, 0}]
      134 LOADK                            R22 K46 [{0, -1, 0}]
      135 CALL                             R19 3 1
      136 SETTABLEKS                       R19 R18 K37 ["Offset"]
      138 GETTABLEKS                       R19 R7 K45 ["Z_AXIS"]
      140 SETTABLEKS                       R19 R18 K38 ["Color"]
      142 SETTABLEKS                       R18 R17 K31 ["PlusZ"]
      144 DUPTABLE                         R18 K39 [{"Offset", "Color"}]
      145 GETIMPORT                        R19 K42 [CFrame.fromMatrix]
      147 MOVE                             R20 R16
      148 LOADK                            R21 K47 [{0, 0, 1}]
      149 LOADK                            R22 K43 [{1, 0, 0}]
      150 CALL                             R19 3 1
      151 SETTABLEKS                       R19 R18 K37 ["Offset"]
      153 GETTABLEKS                       R19 R7 K48 ["Y_AXIS"]
      155 SETTABLEKS                       R19 R18 K38 ["Color"]
      157 SETTABLEKS                       R18 R17 K32 ["MinusY"]
      159 DUPTABLE                         R18 K39 [{"Offset", "Color"}]
      160 GETIMPORT                        R19 K42 [CFrame.fromMatrix]
      162 MOVE                             R20 R16
      163 LOADK                            R21 K47 [{0, 0, 1}]
      164 LOADK                            R22 K49 [{-1, 0, 0}]
      165 CALL                             R19 3 1
      166 SETTABLEKS                       R19 R18 K37 ["Offset"]
      168 GETTABLEKS                       R19 R7 K48 ["Y_AXIS"]
      170 SETTABLEKS                       R19 R18 K38 ["Color"]
      172 SETTABLEKS                       R18 R17 K33 ["PlusY"]
      174 DUPTABLE                         R18 K39 [{"Offset", "Color"}]
      175 GETIMPORT                        R19 K42 [CFrame.fromMatrix]
      177 MOVE                             R20 R16
      178 LOADK                            R21 K44 [{0, 1, 0}]
      179 LOADK                            R22 K47 [{0, 0, 1}]
      180 CALL                             R19 3 1
      181 SETTABLEKS                       R19 R18 K37 ["Offset"]
      183 GETTABLEKS                       R19 R7 K50 ["X_AXIS"]
      185 SETTABLEKS                       R19 R18 K38 ["Color"]
      187 SETTABLEKS                       R18 R17 K34 ["MinusX"]
      189 DUPTABLE                         R18 K39 [{"Offset", "Color"}]
      190 GETIMPORT                        R19 K42 [CFrame.fromMatrix]
      192 MOVE                             R20 R16
      193 LOADK                            R21 K44 [{0, 1, 0}]
      194 LOADK                            R22 K51 [{0, 0, -1}]
      195 CALL                             R19 3 1
      196 SETTABLEKS                       R19 R18 K37 ["Offset"]
      198 GETTABLEKS                       R19 R7 K50 ["X_AXIS"]
      200 SETTABLEKS                       R19 R18 K38 ["Color"]
      202 SETTABLEKS                       R18 R17 K35 ["PlusX"]
      204 NEWTABLE                         R18 16 0
      206 SETTABLEKS                       R18 R18 K52 ["__index"]
      208 DUPCLOSURE                       R19 K53 [PROTO_0]
      209 CAPTURE                          VAL R18
      210 CAPTURE                          VAL R12
      211 SETTABLEKS                       R19 R18 K28 ["new"]
      213 DUPCLOSURE                       R19 K54 [PROTO_1]
      214 SETTABLEKS                       R19 R18 K55 ["_selectedIsActive"]
      216 DUPCLOSURE                       R19 K56 [PROTO_2]
      217 CAPTURE                          VAL R17
      218 CAPTURE                          VAL R4
      219 CAPTURE                          VAL R8
      220 CAPTURE                          VAL R14
      221 CAPTURE                          VAL R13
      222 CAPTURE                          VAL R9
      223 CAPTURE                          VAL R10
      224 SETTABLEKS                       R19 R18 K57 ["render"]
      226 DUPCLOSURE                       R19 K58 [PROTO_3]
      227 CAPTURE                          VAL R5
      228 CAPTURE                          VAL R6
      229 SETTABLEKS                       R19 R18 K59 ["rotate"]
      231 DUPCLOSURE                       R19 K60 [PROTO_4]
      232 CAPTURE                          VAL R5
      233 CAPTURE                          VAL R6
      234 CAPTURE                          VAL R16
      235 CAPTURE                          VAL R11
      236 SETTABLEKS                       R19 R18 K61 ["_updateNoSnap"]
      238 DUPCLOSURE                       R19 K62 [PROTO_5]
      239 CAPTURE                          VAL R0
      240 CAPTURE                          VAL R12
      241 SETTABLEKS                       R19 R18 K63 ["_recomputeSnapPoints"]
      243 DUPCLOSURE                       R19 K64 [PROTO_6]
      244 CAPTURE                          VAL R11
      245 SETTABLEKS                       R19 R18 K65 ["_snapToSnapPoints"]
      247 DUPCLOSURE                       R19 K66 [PROTO_7]
      248 SETTABLEKS                       R19 R18 K67 ["_updateSnap"]
      250 DUPCLOSURE                       R19 K68 [PROTO_8]
      251 SETTABLEKS                       R19 R18 K69 ["update"]
      253 DUPCLOSURE                       R19 K70 [PROTO_9]
      254 CAPTURE                          VAL R15
      255 SETTABLEKS                       R19 R18 K71 ["destroy"]
      257 RETURN                           R18 1
