PROTO_0:
        0 DUPTABLE                         R3 K2 [{"_draggerContext", "_analyticsName"}]
        1 SETTABLEKS                       R0 R3 K0 ["_draggerContext"]
        3 SETTABLEKS                       R1 R3 K1 ["_analyticsName"]
        5 GETUPVAL                         R4 0
        6 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
        8 GETIMPORT                        R2 K4 [setmetatable]
       10 CALL                             R2 2 1
       11 RETURN                           R2 1

PROTO_1:
        0 JUMPIFNOTEQKN                    R1 K0 [0] ; [+3]
        2 LOADN                            R2 0
        3 RETURN                           R2 1
        4 DIV                              R2 R0 R1
        5 RETURN                           R2 1

PROTO_2:
        0 GETTABLEKS                       R4 R0 K0 ["X"]
        2 GETTABLEKS                       R5 R1 K0 ["X"]
        4 JUMPIFNOTEQKN                    R5 K1 [0] ; [+3]
        6 LOADN                            R3 0
        7 JUMP                             ; [+1]
        8 DIV                              R3 R4 R5
        9 GETTABLEKS                       R5 R0 K2 ["Y"]
       11 GETTABLEKS                       R6 R1 K2 ["Y"]
       13 JUMPIFNOTEQKN                    R6 K1 [0] ; [+3]
       15 LOADN                            R4 0
       16 JUMP                             ; [+1]
       17 DIV                              R4 R5 R6
       18 GETTABLEKS                       R6 R0 K3 ["Z"]
       20 GETTABLEKS                       R7 R1 K3 ["Z"]
       22 JUMPIFNOTEQKN                    R7 K1 [0] ; [+3]
       24 LOADN                            R5 0
       25 JUMP                             ; [+1]
       26 DIV                              R5 R6 R7
       27 FASTCALL                         VECTOR ; [+2]
       28 GETIMPORT                        R2 K6 [Vector3.new]
       30 CALL                             R2 3 1
       31 RETURN                           R2 1

PROTO_3:
        0 LOADNIL                          R1
        1 LOADNIL                          R2
        2 GETTABLEKS                       R3 R0 K0 ["_primaryObject"]
        4 LOADK                            R5 K1 ["BasePart"]
        5 NAMECALL                         R3 R3 K2 ["IsA"]
        7 CALL                             R3 2 1
        8 JUMPIFNOT                        R3 ; [+9]
        9 GETTABLEKS                       R3 R0 K0 ["_primaryObject"]
       11 GETTABLEKS                       R1 R3 K3 ["CFrame"]
       13 GETTABLEKS                       R3 R0 K0 ["_primaryObject"]
       15 GETTABLEKS                       R2 R3 K4 ["Size"]
       17 JUMP                             ; [+25]
       18 GETTABLEKS                       R3 R0 K0 ["_primaryObject"]
       20 LOADK                            R5 K5 ["Model"]
       21 NAMECALL                         R3 R3 K2 ["IsA"]
       23 CALL                             R3 2 1
       24 JUMPIFNOT                        R3 ; [+8]
       25 GETTABLEKS                       R3 R0 K0 ["_primaryObject"]
       27 NAMECALL                         R3 R3 K6 ["GetBoundingBox"]
       29 CALL                             R3 1 2
       30 MOVE                             R1 R3
       31 MOVE                             R2 R4
       32 JUMP                             ; [+10]
       33 GETIMPORT                        R3 K8 [error]
       35 LOADK                            R5 K9 ["Bad primary object type `"]
       36 GETTABLEKS                       R6 R0 K0 ["_primaryObject"]
       38 GETTABLEKS                       R6 R6 K10 ["ClassName"]
       40 LOADK                            R7 K11 ["`"]
       41 CONCAT                           R4 R5 R7
       42 CALL                             R3 1 0
       43 GETTABLEKS                       R5 R0 K12 ["_initialPivot"]
       45 NAMECALL                         R3 R1 K13 ["ToObjectSpace"]
       47 CALL                             R3 2 1
       48 GETTABLEKS                       R4 R3 K14 ["Position"]
       50 SUB                              R5 R3 R4
       51 MOVE                             R7 R2
       52 GETTABLEKS                       R10 R4 K15 ["X"]
       54 GETTABLEKS                       R11 R7 K15 ["X"]
       56 JUMPIFNOTEQKN                    R11 K16 [0] ; [+3]
       58 LOADN                            R9 0
       59 JUMP                             ; [+1]
       60 DIV                              R9 R10 R11
       61 GETTABLEKS                       R11 R4 K17 ["Y"]
       63 GETTABLEKS                       R12 R7 K17 ["Y"]
       65 JUMPIFNOTEQKN                    R12 K16 [0] ; [+3]
       67 LOADN                            R10 0
       68 JUMP                             ; [+1]
       69 DIV                              R10 R11 R12
       70 GETTABLEKS                       R12 R4 K18 ["Z"]
       72 GETTABLEKS                       R13 R7 K18 ["Z"]
       74 JUMPIFNOTEQKN                    R13 K16 [0] ; [+3]
       76 LOADN                            R11 0
       77 JUMP                             ; [+1]
       78 DIV                              R11 R12 R13
       79 FASTCALL                         VECTOR ; [+2]
       80 GETIMPORT                        R8 K21 [Vector3.new]
       82 CALL                             R8 3 1
       83 MOVE                             R6 R8
       84 MOVE                             R7 R5
       85 RETURN                           R6 2

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["_draggerContext"]
        2 NAMECALL                         R1 R1 K1 ["shouldShowActiveInstanceHighlight"]
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+13]
        6 GETTABLEKS                       R3 R0 K2 ["_selection"]
        8 GETTABLEKS                       R5 R0 K2 ["_selection"]
       10 LENGTH                           R4 R5
       11 GETTABLE                         R2 R3 R4
       12 GETTABLEKS                       R3 R0 K3 ["_primaryObject"]
       14 JUMPIFEQ                         R2 R3 ; [+2]
       16 LOADB                            R1 0 +1
       17 LOADB                            R1 1
       18 RETURN                           R1 1
       19 LOADB                            R1 0
       20 RETURN                           R1 1

PROTO_5:
        0 SETTABLEKS                       R1 R0 K0 ["_selection"]
        2 NAMECALL                         R3 R2 K1 ["getBoundingBox"]
        4 CALL                             R3 1 1
        5 SETTABLEKS                       R3 R0 K2 ["_initialPivot"]
        7 GETTABLEKS                       R3 R0 K2 ["_initialPivot"]
        9 SETTABLEKS                       R3 R0 K3 ["_lastPivot"]
       11 NAMECALL                         R3 R2 K4 ["getPrimaryObject"]
       13 CALL                             R3 1 1
       14 SETTABLEKS                       R3 R0 K5 ["_primaryObject"]
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R4 R0 K5 ["_primaryObject"]
       19 CALL                             R3 1 1
       20 SETTABLEKS                       R3 R0 K6 ["_snapPoints"]
       22 NAMECALL                         R3 R0 K7 ["_getRelativeLocationInBoundingBox"]
       24 CALL                             R3 1 2
       25 SETTABLEKS                       R3 R0 K8 ["_initialRelativePosition"]
       27 SETTABLEKS                       R4 R0 K9 ["_initialRelativeRotation"]
       29 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["_primaryObject"]
        2 JUMPIF                           R2 ; [+1]
        3 RETURN                           R1 1
        4 GETTABLEKS                       R3 R0 K1 ["_initialPivot"]
        6 MUL                              R2 R1 R3
        7 NAMECALL                         R2 R2 K2 ["Orthonormalize"]
        9 CALL                             R2 1 1
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R4 R0 K0 ["_primaryObject"]
       13 MOVE                             R5 R2
       14 CALL                             R3 2 0
       15 SETTABLEKS                       R2 R0 K3 ["_lastPivot"]
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R4 R0 K0 ["_primaryObject"]
       20 CALL                             R3 1 1
       21 SETTABLEKS                       R3 R0 K4 ["_snapPoints"]
       23 RETURN                           R1 1

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["_primaryObject"]
        2 JUMPIFNOT                        R1 ; [+37]
        3 GETTABLEKS                       R1 R0 K1 ["_draggerContext"]
        5 NAMECALL                         R1 R1 K2 ["getAnalytics"]
        7 CALL                             R1 1 1
        8 LOADK                            R3 K3 ["setPivot"]
        9 DUPTABLE                         R4 K9 [{"gridSize", "rotateIncrement", "toolName", "handleId", "pivotType"}]
       10 GETTABLEKS                       R5 R0 K1 ["_draggerContext"]
       12 NAMECALL                         R5 R5 K10 ["getGridSize"]
       14 CALL                             R5 1 1
       15 SETTABLEKS                       R5 R4 K4 ["gridSize"]
       17 GETTABLEKS                       R5 R0 K1 ["_draggerContext"]
       19 NAMECALL                         R5 R5 K11 ["getRotateIncrement"]
       21 CALL                             R5 1 1
       22 SETTABLEKS                       R5 R4 K5 ["rotateIncrement"]
       24 GETTABLEKS                       R5 R0 K12 ["_analyticsName"]
       26 SETTABLEKS                       R5 R4 K6 ["toolName"]
       28 LOADK                            R5 K13 ["Rotate"]
       29 SETTABLEKS                       R5 R4 K7 ["handleId"]
       31 GETUPVAL                         R5 0
       32 GETTABLEKS                       R6 R0 K0 ["_primaryObject"]
       34 CALL                             R5 1 1
       35 SETTABLEKS                       R5 R4 K8 ["pivotType"]
       37 NAMECALL                         R1 R1 K14 ["sendEvent"]
       39 CALL                             R1 3 0
       40 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["_draggerContext"]
        2 NAMECALL                         R1 R1 K1 ["shouldSnapPivotToGeometry"]
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+3]
        6 GETTABLEKS                       R1 R0 K2 ["_snapPoints"]
        8 RETURN                           R1 1
        9 LOADNIL                          R1
       10 RETURN                           R1 1

PROTO_9:
        0 NEWTABLE                         R2 2 0
        2 GETTABLEKS                       R3 R0 K0 ["_lastPivot"]
        4 GETTABLEKS                       R4 R0 K1 ["_draggerContext"]
        6 GETTABLEKS                       R6 R3 K2 ["Position"]
        8 NAMECALL                         R4 R4 K3 ["getHandleScale"]
       10 CALL                             R4 2 1
       11 GETIMPORT                        R5 K5 [pairs]
       13 GETUPVAL                         R6 0
       14 CALL                             R5 1 3
       15 FORGPREP_NEXT                    R5
       16 GETUPVAL                         R10 1
       17 GETTABLEKS                       R10 R10 K6 ["createElement"]
       19 GETUPVAL                         R11 2
       20 DUPTABLE                         R12 K13 [{"Axis", "Color", "Outset", "Thin", "Scale", "AlwaysOnTop"}]
       21 GETTABLEKS                       R14 R9 K14 ["Offset"]
       23 MUL                              R13 R3 R14
       24 SETTABLEKS                       R13 R12 K7 ["Axis"]
       26 GETTABLEKS                       R13 R9 K8 ["Color"]
       28 SETTABLEKS                       R13 R12 K8 ["Color"]
       30 LOADK                            R13 K15 [0.5]
       31 SETTABLEKS                       R13 R12 K9 ["Outset"]
       33 LOADB                            R13 1
       34 SETTABLEKS                       R13 R12 K10 ["Thin"]
       36 SETTABLEKS                       R4 R12 K11 ["Scale"]
       38 LOADB                            R13 1
       39 SETTABLEKS                       R13 R12 K12 ["AlwaysOnTop"]
       41 CALL                             R10 2 1
       42 SETTABLE                         R10 R2 R8
       43 FORGLOOP                         R5 2 ; [-28]
       45 GETTABLEKS                       R5 R0 K1 ["_draggerContext"]
       47 NAMECALL                         R5 R5 K16 ["shouldSnapPivotToGeometry"]
       49 CALL                             R5 1 1
       50 JUMPIFNOT                        R5 ; [+41]
       51 GETUPVAL                         R5 1
       52 GETTABLEKS                       R5 R5 K6 ["createElement"]
       54 GETUPVAL                         R6 3
       55 DUPTABLE                         R7 K20 [{"Focus", "SnapPoints", "DraggerContext"}]
       56 GETTABLEKS                       R8 R3 K2 ["Position"]
       58 SETTABLEKS                       R8 R7 K17 ["Focus"]
       60 GETTABLEKS                       R8 R0 K21 ["_snapPoints"]
       62 SETTABLEKS                       R8 R7 K18 ["SnapPoints"]
       64 GETTABLEKS                       R8 R0 K1 ["_draggerContext"]
       66 SETTABLEKS                       R8 R7 K19 ["DraggerContext"]
       68 CALL                             R5 2 1
       69 SETTABLEKS                       R5 R2 K18 ["SnapPoints"]
       71 GETUPVAL                         R5 1
       72 GETTABLEKS                       R5 R5 K6 ["createElement"]
       74 GETUPVAL                         R6 4
       75 DUPTABLE                         R7 K24 [{"DraggerContext", "CFrame", "IsActive"}]
       76 GETTABLEKS                       R8 R0 K1 ["_draggerContext"]
       78 SETTABLEKS                       R8 R7 K19 ["DraggerContext"]
       80 GETTABLEKS                       R8 R0 K0 ["_lastPivot"]
       82 SETTABLEKS                       R8 R7 K22 ["CFrame"]
       84 NAMECALL                         R8 R0 K25 ["_selectedIsActive"]
       86 CALL                             R8 1 1
       87 SETTABLEKS                       R8 R7 K23 ["IsActive"]
       89 CALL                             R5 2 1
       90 SETTABLEKS                       R5 R2 K26 ["DraggedPivot"]
       92 GETUPVAL                         R5 1
       93 GETTABLEKS                       R5 R5 K27 ["createFragment"]
       95 MOVE                             R6 R2
       96 CALL                             R5 1 -1
       97 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K3 ["Packages"]
       11 GETTABLEKS                       R1 R1 K4 ["DraggerFramework"]
       13 GETIMPORT                        R2 K6 [require]
       15 GETTABLEKS                       R3 R0 K3 ["Packages"]
       17 GETTABLEKS                       R3 R3 K7 ["Roact"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K6 [require]
       22 GETTABLEKS                       R4 R0 K3 ["Packages"]
       24 GETTABLEKS                       R4 R4 K4 ["DraggerFramework"]
       26 GETTABLEKS                       R4 R4 K8 ["Utility"]
       28 GETTABLEKS                       R4 R4 K9 ["Colors"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K6 [require]
       33 GETTABLEKS                       R5 R0 K3 ["Packages"]
       35 GETTABLEKS                       R5 R5 K4 ["DraggerFramework"]
       37 GETTABLEKS                       R5 R5 K10 ["Components"]
       39 GETTABLEKS                       R5 R5 K11 ["MoveHandleView"]
       41 CALL                             R4 1 1
       42 GETIMPORT                        R5 K6 [require]
       44 GETTABLEKS                       R6 R0 K12 ["Src"]
       46 GETTABLEKS                       R6 R6 K8 ["Utility"]
       48 GETTABLEKS                       R6 R6 K13 ["setWorldPivot"]
       50 CALL                             R5 1 1
       51 GETIMPORT                        R6 K6 [require]
       53 GETTABLEKS                       R7 R0 K12 ["Src"]
       55 GETTABLEKS                       R7 R7 K8 ["Utility"]
       57 GETTABLEKS                       R7 R7 K14 ["computeSnapPointsForInstance"]
       59 CALL                             R6 1 1
       60 GETIMPORT                        R7 K6 [require]
       62 GETTABLEKS                       R8 R0 K12 ["Src"]
       64 GETTABLEKS                       R8 R8 K10 ["Components"]
       66 GETTABLEKS                       R8 R8 K15 ["SnapPoints"]
       68 CALL                             R7 1 1
       69 GETIMPORT                        R8 K6 [require]
       71 GETTABLEKS                       R9 R1 K10 ["Components"]
       73 GETTABLEKS                       R9 R9 K16 ["DraggedPivot"]
       75 CALL                             R8 1 1
       76 GETIMPORT                        R9 K6 [require]
       78 GETTABLEKS                       R10 R0 K12 ["Src"]
       80 GETTABLEKS                       R10 R10 K8 ["Utility"]
       82 GETTABLEKS                       R10 R10 K17 ["classifyInstancePivot"]
       84 CALL                             R9 1 1
       85 GETIMPORT                        R10 K20 [table.freeze]
       87 DUPTABLE                         R11 K27 [{"MinusZ", "PlusZ", "MinusY", "PlusY", "MinusX", "PlusX"}]
       88 DUPTABLE                         R12 K30 [{"Offset", "Color"}]
       89 GETIMPORT                        R13 K33 [CFrame.fromMatrix]
       91 FASTCALL                         VECTOR ; [+2]
       92 GETIMPORT                        R14 K36 [Vector3.new]
       94 CALL                             R14 0 1
       95 LOADK                            R15 K37 [{1, 0, 0}]
       96 LOADK                            R16 K38 [{0, 1, 0}]
       97 CALL                             R13 3 1
       98 SETTABLEKS                       R13 R12 K28 ["Offset"]
      100 GETTABLEKS                       R13 R3 K39 ["Z_AXIS"]
      102 SETTABLEKS                       R13 R12 K29 ["Color"]
      104 SETTABLEKS                       R12 R11 K21 ["MinusZ"]
      106 DUPTABLE                         R12 K30 [{"Offset", "Color"}]
      107 GETIMPORT                        R13 K33 [CFrame.fromMatrix]
      109 FASTCALL                         VECTOR ; [+2]
      110 GETIMPORT                        R14 K36 [Vector3.new]
      112 CALL                             R14 0 1
      113 LOADK                            R15 K37 [{1, 0, 0}]
      114 LOADK                            R16 K40 [{0, -1, 0}]
      115 CALL                             R13 3 1
      116 SETTABLEKS                       R13 R12 K28 ["Offset"]
      118 GETTABLEKS                       R13 R3 K39 ["Z_AXIS"]
      120 SETTABLEKS                       R13 R12 K29 ["Color"]
      122 SETTABLEKS                       R12 R11 K22 ["PlusZ"]
      124 DUPTABLE                         R12 K30 [{"Offset", "Color"}]
      125 GETIMPORT                        R13 K33 [CFrame.fromMatrix]
      127 FASTCALL                         VECTOR ; [+2]
      128 GETIMPORT                        R14 K36 [Vector3.new]
      130 CALL                             R14 0 1
      131 LOADK                            R15 K41 [{0, 0, 1}]
      132 LOADK                            R16 K37 [{1, 0, 0}]
      133 CALL                             R13 3 1
      134 SETTABLEKS                       R13 R12 K28 ["Offset"]
      136 GETTABLEKS                       R13 R3 K42 ["Y_AXIS"]
      138 SETTABLEKS                       R13 R12 K29 ["Color"]
      140 SETTABLEKS                       R12 R11 K23 ["MinusY"]
      142 DUPTABLE                         R12 K30 [{"Offset", "Color"}]
      143 GETIMPORT                        R13 K33 [CFrame.fromMatrix]
      145 FASTCALL                         VECTOR ; [+2]
      146 GETIMPORT                        R14 K36 [Vector3.new]
      148 CALL                             R14 0 1
      149 LOADK                            R15 K41 [{0, 0, 1}]
      150 LOADK                            R16 K43 [{-1, 0, 0}]
      151 CALL                             R13 3 1
      152 SETTABLEKS                       R13 R12 K28 ["Offset"]
      154 GETTABLEKS                       R13 R3 K42 ["Y_AXIS"]
      156 SETTABLEKS                       R13 R12 K29 ["Color"]
      158 SETTABLEKS                       R12 R11 K24 ["PlusY"]
      160 DUPTABLE                         R12 K30 [{"Offset", "Color"}]
      161 GETIMPORT                        R13 K33 [CFrame.fromMatrix]
      163 FASTCALL                         VECTOR ; [+2]
      164 GETIMPORT                        R14 K36 [Vector3.new]
      166 CALL                             R14 0 1
      167 LOADK                            R15 K38 [{0, 1, 0}]
      168 LOADK                            R16 K41 [{0, 0, 1}]
      169 CALL                             R13 3 1
      170 SETTABLEKS                       R13 R12 K28 ["Offset"]
      172 GETTABLEKS                       R13 R3 K44 ["X_AXIS"]
      174 SETTABLEKS                       R13 R12 K29 ["Color"]
      176 SETTABLEKS                       R12 R11 K25 ["MinusX"]
      178 DUPTABLE                         R12 K30 [{"Offset", "Color"}]
      179 GETIMPORT                        R13 K33 [CFrame.fromMatrix]
      181 FASTCALL                         VECTOR ; [+2]
      182 GETIMPORT                        R14 K36 [Vector3.new]
      184 CALL                             R14 0 1
      185 LOADK                            R15 K38 [{0, 1, 0}]
      186 LOADK                            R16 K45 [{0, 0, -1}]
      187 CALL                             R13 3 1
      188 SETTABLEKS                       R13 R12 K28 ["Offset"]
      190 GETTABLEKS                       R13 R3 K44 ["X_AXIS"]
      192 SETTABLEKS                       R13 R12 K29 ["Color"]
      194 SETTABLEKS                       R12 R11 K26 ["PlusX"]
      196 CALL                             R10 1 1
      197 NEWTABLE                         R11 16 0
      199 SETTABLEKS                       R11 R11 K46 ["__index"]
      201 DUPCLOSURE                       R12 K47 [PROTO_0]
      202 CAPTURE                          VAL R11
      203 SETTABLEKS                       R12 R11 K35 ["new"]
      205 DUPCLOSURE                       R12 K48 [PROTO_1]
      206 DUPCLOSURE                       R13 K49 [PROTO_2]
      207 DUPCLOSURE                       R14 K50 [PROTO_3]
      208 SETTABLEKS                       R14 R11 K51 ["_getRelativeLocationInBoundingBox"]
      210 DUPCLOSURE                       R14 K52 [PROTO_4]
      211 SETTABLEKS                       R14 R11 K53 ["_selectedIsActive"]
      213 DUPCLOSURE                       R14 K54 [PROTO_5]
      214 CAPTURE                          VAL R6
      215 SETTABLEKS                       R14 R11 K55 ["beginDrag"]
      217 DUPCLOSURE                       R14 K56 [PROTO_6]
      218 CAPTURE                          VAL R5
      219 CAPTURE                          VAL R6
      220 SETTABLEKS                       R14 R11 K57 ["updateDrag"]
      222 DUPCLOSURE                       R14 K58 [PROTO_7]
      223 CAPTURE                          VAL R9
      224 SETTABLEKS                       R14 R11 K59 ["endDrag"]
      226 DUPCLOSURE                       R14 K60 [PROTO_8]
      227 SETTABLEKS                       R14 R11 K61 ["getSnapPoints"]
      229 DUPCLOSURE                       R14 K62 [PROTO_9]
      230 CAPTURE                          VAL R10
      231 CAPTURE                          VAL R2
      232 CAPTURE                          VAL R4
      233 CAPTURE                          VAL R7
      234 CAPTURE                          VAL R8
      235 SETTABLEKS                       R14 R11 K63 ["render"]
      237 RETURN                           R11 1
