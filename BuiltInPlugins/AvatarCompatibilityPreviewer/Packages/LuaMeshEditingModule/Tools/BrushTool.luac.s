PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["new"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 1
        6 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
        8 GETIMPORT                        R1 K2 [setmetatable]
       10 CALL                             R1 2 1
       11 LOADB                            R2 0
       12 SETTABLEKS                       R2 R1 K3 ["_isHovered"]
       14 LOADNIL                          R2
       15 SETTABLEKS                       R2 R1 K4 ["_brushToolConnections"]
       17 LOADB                            R2 1
       18 SETTABLEKS                       R2 R1 K5 ["_mouseOnScreen"]
       20 GETUPVAL                         R3 2
       21 GETTABLEKS                       R2 R3 K0 ["new"]
       23 CALL                             R2 0 1
       24 SETTABLEKS                       R2 R1 K6 ["_radiusUIView"]
       26 LOADNIL                          R2
       27 SETTABLEKS                       R2 R1 K7 ["_updateCursorTask"]
       29 NAMECALL                         R2 R1 K8 ["_setupConnections"]
       31 CALL                             R2 1 0
       32 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["CurrentCamera"]
        3 JUMPIFNOTEQKNIL                  R3 ; [+3]
        5 LOADNIL                          R4
        6 RETURN                           R4 1
        7 GETTABLEKS                       R5 R3 K2 ["FieldOfView"]
        9 DIVK                             R4 R5 K1 [2]
       10 FASTCALL1                        MATH_RAD R4 ; [+3]
       11 MOVE                             R8 R4
       12 GETIMPORT                        R7 K5 [math.rad]
       14 CALL                             R7 1 1
       15 FASTCALL1                        MATH_TAN R7 ; [+2]
       16 GETIMPORT                        R6 K7 [math.tan]
       18 CALL                             R6 1 1
       19 MUL                              R5 R2 R6
       20 GETTABLEKS                       R6 R3 K8 ["ViewportSize"]
       22 GETTABLEKS                       R7 R6 K9 ["X"]
       24 GETTABLEKS                       R8 R6 K10 ["Y"]
       26 ADD                              R12 R7 R8
       27 MUL                              R11 R1 R12
       28 DIVK                             R10 R11 K1 [2]
       29 MULK                             R11 R5 K1 [2]
       30 DIV                              R9 R10 R11
       31 RETURN                           R9 1

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["mouseDistance"]
        2 GETTABLEKS                       R4 R1 K0 ["mouseDistance"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["CurrentCamera"]
        3 JUMPIFNOTEQKNIL                  R3 ; [+3]
        5 LOADNIL                          R4
        6 RETURN                           R4 1
        7 NAMECALL                         R4 R0 K1 ["getMeshEditingContext"]
        9 CALL                             R4 1 1
       10 JUMPIFNOTEQKNIL                  R4 ; [+3]
       12 LOADNIL                          R5
       13 RETURN                           R5 1
       14 NEWTABLE                         R5 0 0
       16 NAMECALL                         R9 R0 K2 ["getPointLocationData"]
       18 CALL                             R9 1 1
       19 GETTABLEKS                       R6 R9 K3 ["Positions"]
       21 LOADNIL                          R7
       22 LOADNIL                          R8
       23 FORGPREP                         R6
       24 MOVE                             R13 R9
       25 NAMECALL                         R11 R4 K4 ["getMeshOriginWorld"]
       27 CALL                             R11 2 1
       28 JUMPIFEQKNIL                     R11 ; [+49]
       30 MOVE                             R12 R10
       31 LOADNIL                          R13
       32 LOADNIL                          R14
       33 FORGPREP                         R12
       34 MOVE                             R19 R9
       35 MOVE                             R20 R15
       36 NAMECALL                         R17 R0 K5 ["isVertexFacingCamera"]
       38 CALL                             R17 3 1
       39 JUMPIFNOT                        R17 ; [+36]
       40 MOVE                             R19 R16
       41 NAMECALL                         R17 R11 K6 ["PointToWorldSpace"]
       43 CALL                             R17 2 1
       44 MOVE                             R20 R17
       45 NAMECALL                         R18 R3 K7 ["WorldToScreenPoint"]
       47 CALL                             R18 2 2
       48 JUMPIFNOT                        R19 ; [+27]
       49 GETIMPORT                        R20 K10 [Vector2.new]
       51 GETTABLEKS                       R21 R18 K11 ["X"]
       53 GETTABLEKS                       R22 R18 K12 ["Y"]
       55 CALL                             R20 2 1
       56 SUB                              R22 R1 R20
       57 GETTABLEKS                       R21 R22 K13 ["Magnitude"]
       59 DUPTABLE                         R24 K19 [{"vertexIndex", "meshName", "screenPoint", "worldPosition", "mouseDistance"}]
       60 SETTABLEKS                       R15 R24 K14 ["vertexIndex"]
       62 SETTABLEKS                       R9 R24 K15 ["meshName"]
       64 SETTABLEKS                       R18 R24 K16 ["screenPoint"]
       66 SETTABLEKS                       R17 R24 K17 ["worldPosition"]
       68 SETTABLEKS                       R21 R24 K18 ["mouseDistance"]
       70 FASTCALL2                        TABLE_INSERT R5 R24 ; [+4]
       72 MOVE                             R23 R5
       73 GETIMPORT                        R22 K22 [table.insert]
       75 CALL                             R22 2 0
       76 FORGLOOP                         R12 2 ; [-43]
       78 FORGLOOP                         R6 2 ; [-55]
       80 GETIMPORT                        R6 K24 [table.sort]
       82 MOVE                             R7 R5
       83 DUPCLOSURE                       R8 K25 [PROTO_2]
       84 CALL                             R6 2 0
       85 GETTABLEN                        R6 R5 1
       86 JUMPIFNOTEQKNIL                  R6 ; [+3]
       88 LOADNIL                          R7
       89 RETURN                           R7 1
       90 NEWTABLE                         R7 0 0
       92 GETTABLEKS                       R11 R3 K26 ["CFrame"]
       94 GETTABLEKS                       R10 R11 K27 ["Position"]
       96 GETTABLEKS                       R11 R6 K17 ["worldPosition"]
       98 SUB                              R9 R10 R11
       99 GETTABLEKS                       R8 R9 K13 ["Magnitude"]
      101 MOVE                             R11 R2
      102 MOVE                             R12 R8
      103 NAMECALL                         R9 R0 K28 ["_calculateCircleScreenDiameterInPixels"]
      105 CALL                             R9 3 1
      106 DIVK                             R10 R9 K29 [2]
      107 LOADN                            R13 1
      108 LENGTH                           R11 R5
      109 LOADN                            R12 1
      110 FORNPREP                         R11
      111 GETTABLE                         R14 R5 R13
      112 GETTABLEKS                       R15 R14 K18 ["mouseDistance"]
      114 JUMPIFLT                         R10 R15 ; [+26]
      116 GETTABLEKS                       R17 R14 K17 ["worldPosition"]
      118 GETTABLEKS                       R18 R6 K17 ["worldPosition"]
      120 SUB                              R16 R17 R18
      121 GETTABLEKS                       R15 R16 K13 ["Magnitude"]
      123 JUMPIFLT                         R2 R15 ; [+16]
      125 DUPTABLE                         R18 K32 [{"MeshName", "Index"}]
      126 GETTABLEKS                       R19 R14 K15 ["meshName"]
      128 SETTABLEKS                       R19 R18 K30 ["MeshName"]
      130 GETTABLEKS                       R19 R14 K14 ["vertexIndex"]
      132 SETTABLEKS                       R19 R18 K31 ["Index"]
      134 FASTCALL2                        TABLE_INSERT R7 R18 ; [+4]
      136 MOVE                             R17 R7
      137 GETIMPORT                        R16 K22 [table.insert]
      139 CALL                             R16 2 0
      140 FORNLOOP                         R11
      141 RETURN                           R7 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["_updateCursorTask"]
        3 GETUPVAL                         R1 1
        4 JUMPIFNOTEQ                      R0 R1 ; [+5]
        6 GETUPVAL                         R0 0
        7 LOADNIL                          R1
        8 SETTABLEKS                       R1 R0 K0 ["_updateCursorTask"]
       10 GETUPVAL                         R0 0
       11 NAMECALL                         R0 R0 K1 ["_performUpdateCursor"]
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["_updateCursorTask"]
        2 JUMPIFEQKNIL                     R1 ; [+2]
        4 RETURN                           R0 0
        5 LOADNIL                          R1
        6 GETIMPORT                        R2 K3 [task.defer]
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          VAL R0
       10 CAPTURE                          REF R1
       11 CALL                             R2 1 1
       12 MOVE                             R1 R2
       13 SETTABLEKS                       R1 R0 K0 ["_updateCursorTask"]
       15 CLOSEUPVALS                      R1
       16 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["getHoveredPoint"]
        3 CALL                             R0 1 1
        4 JUMPIFEQKNIL                     R0 ; [+4]
        6 GETUPVAL                         R0 1
        7 JUMPIFNOTEQKNIL                  R0 ; [+7]
        9 GETIMPORT                        R0 K3 [Vector2.new]
       11 LOADN                            R1 0
       12 LOADN                            R2 0
       13 CALL                             R0 2 -1
       14 RETURN                           R0 -1
       15 GETUPVAL                         R0 2
       16 GETUPVAL                         R2 1
       17 NAMECALL                         R0 R0 K4 ["WorldToScreenPoint"]
       19 CALL                             R0 2 2
       20 GETIMPORT                        R2 K3 [Vector2.new]
       22 GETTABLEKS                       R3 R0 K5 ["X"]
       24 GETTABLEKS                       R4 R0 K6 ["Y"]
       26 CALL                             R2 2 -1
       27 RETURN                           R2 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseButton1]
        3 NAMECALL                         R1 R1 K4 ["IsMouseButtonPressed"]
        5 CALL                             R1 2 1
        6 JUMPIF                           R1 ; [+3]
        7 NAMECALL                         R1 R0 K5 ["_updateSelectionFromMousePosition"]
        9 CALL                             R1 1 0
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R1 R2 K6 ["CurrentCamera"]
       13 JUMPIFNOTEQKNIL                  R1 ; [+2]
       15 RETURN                           R0 0
       16 NAMECALL                         R2 R0 K7 ["getRadius"]
       18 CALL                             R2 1 1
       19 JUMPIFNOTEQKNIL                  R2 ; [+2]
       21 RETURN                           R0 0
       22 NAMECALL                         R3 R0 K8 ["getFalloff"]
       24 CALL                             R3 1 1
       25 JUMPIFNOTEQKNIL                  R3 ; [+2]
       27 RETURN                           R0 0
       28 NAMECALL                         R4 R0 K9 ["getHoveredPointPosition"]
       30 CALL                             R4 1 1
       31 NEWCLOSURE                       R5 P0
       32 CAPTURE                          VAL R0
       33 CAPTURE                          VAL R4
       34 CAPTURE                          VAL R1
       35 GETUPVAL                         R7 0
       36 GETIMPORT                        R9 K3 [Enum.UserInputType.MouseButton1]
       38 NAMECALL                         R7 R7 K4 ["IsMouseButtonPressed"]
       40 CALL                             R7 2 1
       41 JUMPIFNOT                        R7 ; [+26]
       42 NAMECALL                         R7 R0 K10 ["getHoveredPoint"]
       44 CALL                             R7 1 1
       45 JUMPIFEQKNIL                     R7 ; [+3]
       47 JUMPIFNOTEQKNIL                  R4 ; [+7]
       49 GETIMPORT                        R6 K13 [Vector2.new]
       51 LOADN                            R7 0
       52 LOADN                            R8 0
       53 CALL                             R6 2 1
       54 JUMP                             ; [+17]
       55 MOVE                             R9 R4
       56 NAMECALL                         R7 R1 K14 ["WorldToScreenPoint"]
       58 CALL                             R7 2 2
       59 GETIMPORT                        R9 K13 [Vector2.new]
       61 GETTABLEKS                       R10 R7 K15 ["X"]
       63 GETTABLEKS                       R11 R7 K16 ["Y"]
       65 CALL                             R9 2 1
       66 MOVE                             R6 R9
       67 JUMP                             ; [+4]
       68 GETUPVAL                         R6 0
       69 NAMECALL                         R6 R6 K17 ["GetMouseLocation"]
       71 CALL                             R6 1 1
       72 LOADNIL                          R7
       73 JUMPIFNOTEQKNIL                  R4 ; [+3]
       75 LOADN                            R7 1
       76 JUMP                             ; [+7]
       77 GETTABLEKS                       R10 R1 K18 ["CFrame"]
       79 GETTABLEKS                       R9 R10 K19 ["Position"]
       81 SUB                              R8 R9 R4
       82 GETTABLEKS                       R7 R8 K20 ["Magnitude"]
       84 MOVE                             R10 R2
       85 MOVE                             R11 R7
       86 NAMECALL                         R8 R0 K21 ["_calculateCircleScreenDiameterInPixels"]
       88 CALL                             R8 3 1
       89 GETTABLEKS                       R9 R0 K22 ["_radiusUIView"]
       91 DUPTABLE                         R11 K27 [{"ScreenDiameter", "Falloff", "Mouse", "Shown"}]
       92 SETTABLEKS                       R8 R11 K23 ["ScreenDiameter"]
       94 SETTABLEKS                       R3 R11 K24 ["Falloff"]
       96 SETTABLEKS                       R6 R11 K25 ["Mouse"]
       98 GETTABLEKS                       R12 R0 K28 ["_mouseOnScreen"]
      100 JUMPIFNOT                        R12 ; [+7]
      101 NAMECALL                         R13 R0 K10 ["getHoveredPoint"]
      103 CALL                             R13 1 1
      104 JUMPIFNOTEQKNIL                  R13 ; [+2]
      106 LOADB                            R12 0 +1
      107 LOADB                            R12 1
      108 SETTABLEKS                       R12 R11 K26 ["Shown"]
      110 NAMECALL                         R9 R9 K29 ["render"]
      112 CALL                             R9 2 0
      113 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R2 R0 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseMovement]
        4 JUMPIFNOTEQ                      R2 R3 ; [+5]
        6 GETUPVAL                         R2 0
        7 NAMECALL                         R2 R2 K4 ["_queueUpdateCursor"]
        9 CALL                             R2 1 0
       10 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["_queueUpdateCursor"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["_mouseOnScreen"]
        4 GETUPVAL                         R0 0
        5 NAMECALL                         R0 R0 K1 ["_queueUpdateCursor"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["_mouseOnScreen"]
        4 GETUPVAL                         R0 0
        5 LOADNIL                          R2
        6 NAMECALL                         R0 R0 K1 ["setHoveredPoint"]
        8 CALL                             R0 2 0
        9 GETUPVAL                         R0 0
       10 LOADNIL                          R2
       11 NAMECALL                         R0 R0 K2 ["setSelected"]
       13 CALL                             R0 2 0
       14 GETUPVAL                         R0 0
       15 NAMECALL                         R0 R0 K3 ["_queueUpdateCursor"]
       17 CALL                             R0 1 0
       18 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R2 R0 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseButton1]
        4 JUMPIFNOTEQ                      R2 R3 ; [+30]
        6 GETUPVAL                         R2 0
        7 NAMECALL                         R2 R2 K4 ["_queueUpdateCursor"]
        9 CALL                             R2 1 0
       10 GETUPVAL                         R2 0
       11 NAMECALL                         R2 R2 K5 ["getMouse"]
       13 CALL                             R2 1 1
       14 JUMPIFNOTEQKNIL                  R2 ; [+2]
       16 RETURN                           R0 0
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R3 R4 K6 ["CurrentCamera"]
       20 JUMPIFNOTEQKNIL                  R3 ; [+2]
       22 RETURN                           R0 0
       23 GETTABLEKS                       R6 R2 K7 ["X"]
       25 GETTABLEKS                       R7 R2 K8 ["Y"]
       27 NAMECALL                         R4 R3 K9 ["ScreenPointToRay"]
       29 CALL                             R4 3 1
       30 GETUPVAL                         R5 0
       31 MOVE                             R7 R4
       32 NAMECALL                         R5 R5 K10 ["setMouseStartRay"]
       34 CALL                             R5 2 0
       35 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R2 R0 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseButton1]
        4 JUMPIFNOTEQ                      R2 R3 ; [+5]
        6 GETUPVAL                         R2 0
        7 NAMECALL                         R2 R2 K4 ["_queueUpdateCursor"]
        9 CALL                             R2 1 0
       10 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["_brushToolConnections"]
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R0 0
        4 NEWTABLE                         R1 0 0
        6 SETTABLEKS                       R1 R0 K0 ["_brushToolConnections"]
        8 GETTABLEKS                       R2 R0 K0 ["_brushToolConnections"]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R3 R4 K1 ["InputChanged"]
       13 NEWCLOSURE                       R5 P0
       14 CAPTURE                          VAL R0
       15 NAMECALL                         R3 R3 K2 ["Connect"]
       17 CALL                             R3 2 -1
       18 FASTCALL                         TABLE_INSERT ; [+2]
       19 GETIMPORT                        R1 K5 [table.insert]
       21 CALL                             R1 -1 0
       22 GETUPVAL                         R2 1
       23 GETTABLEKS                       R1 R2 K6 ["CurrentCamera"]
       25 JUMPIFEQKNIL                     R1 ; [+16]
       27 GETTABLEKS                       R3 R0 K0 ["_brushToolConnections"]
       29 LOADK                            R6 K7 ["CFrame"]
       30 NAMECALL                         R4 R1 K8 ["GetPropertyChangedSignal"]
       32 CALL                             R4 2 1
       33 NEWCLOSURE                       R6 P1
       34 CAPTURE                          VAL R0
       35 NAMECALL                         R4 R4 K2 ["Connect"]
       37 CALL                             R4 2 -1
       38 FASTCALL                         TABLE_INSERT ; [+2]
       39 GETIMPORT                        R2 K5 [table.insert]
       41 CALL                             R2 -1 0
       42 GETTABLEKS                       R2 R0 K0 ["_brushToolConnections"]
       44 GETUPVAL                         R4 2
       45 GETTABLEKS                       R3 R4 K9 ["MouseEnterStudioViewport"]
       47 NEWCLOSURE                       R5 P2
       48 CAPTURE                          VAL R0
       49 NAMECALL                         R3 R3 K2 ["Connect"]
       51 CALL                             R3 2 -1
       52 FASTCALL                         TABLE_INSERT ; [+2]
       53 GETIMPORT                        R1 K5 [table.insert]
       55 CALL                             R1 -1 0
       56 GETTABLEKS                       R2 R0 K0 ["_brushToolConnections"]
       58 GETUPVAL                         R4 2
       59 GETTABLEKS                       R3 R4 K10 ["MouseLeaveStudioViewport"]
       61 NEWCLOSURE                       R5 P3
       62 CAPTURE                          VAL R0
       63 NAMECALL                         R3 R3 K2 ["Connect"]
       65 CALL                             R3 2 -1
       66 FASTCALL                         TABLE_INSERT ; [+2]
       67 GETIMPORT                        R1 K5 [table.insert]
       69 CALL                             R1 -1 0
       70 GETTABLEKS                       R2 R0 K0 ["_brushToolConnections"]
       72 GETUPVAL                         R4 0
       73 GETTABLEKS                       R3 R4 K11 ["InputBegan"]
       75 NEWCLOSURE                       R5 P4
       76 CAPTURE                          VAL R0
       77 CAPTURE                          UPVAL U1
       78 NAMECALL                         R3 R3 K2 ["Connect"]
       80 CALL                             R3 2 -1
       81 FASTCALL                         TABLE_INSERT ; [+2]
       82 GETIMPORT                        R1 K5 [table.insert]
       84 CALL                             R1 -1 0
       85 GETTABLEKS                       R2 R0 K0 ["_brushToolConnections"]
       87 GETUPVAL                         R4 0
       88 GETTABLEKS                       R3 R4 K12 ["InputEnded"]
       90 NEWCLOSURE                       R5 P5
       91 CAPTURE                          VAL R0
       92 NAMECALL                         R3 R3 K2 ["Connect"]
       94 CALL                             R3 2 -1
       95 FASTCALL                         TABLE_INSERT ; [+2]
       96 GETIMPORT                        R1 K5 [table.insert]
       98 CALL                             R1 -1 0
       99 RETURN                           R0 0

PROTO_15:
        0 NAMECALL                         R1 R0 K0 ["getMouse"]
        2 CALL                             R1 1 1
        3 JUMPIFNOTEQKNIL                  R1 ; [+10]
        5 LOADNIL                          R4
        6 NAMECALL                         R2 R0 K1 ["setHoveredPoint"]
        8 CALL                             R2 2 0
        9 LOADNIL                          R4
       10 NAMECALL                         R2 R0 K2 ["setSelected"]
       12 CALL                             R2 2 0
       13 RETURN                           R0 0
       14 NAMECALL                         R2 R0 K3 ["getRadius"]
       16 CALL                             R2 1 1
       17 NAMECALL                         R3 R0 K4 ["getFalloff"]
       19 CALL                             R3 1 1
       20 GETIMPORT                        R6 K7 [Vector2.new]
       22 GETTABLEKS                       R7 R1 K8 ["X"]
       24 GETTABLEKS                       R8 R1 K9 ["Y"]
       26 CALL                             R6 2 1
       27 MUL                              R7 R2 R3
       28 NAMECALL                         R4 R0 K10 ["_queryWorldFromMousePosition"]
       30 CALL                             R4 3 1
       31 JUMPIFNOTEQKNIL                  R4 ; [+10]
       33 LOADNIL                          R7
       34 NAMECALL                         R5 R0 K1 ["setHoveredPoint"]
       36 CALL                             R5 2 0
       37 LOADNIL                          R7
       38 NAMECALL                         R5 R0 K2 ["setSelected"]
       40 CALL                             R5 2 0
       41 RETURN                           R0 0
       42 GETTABLEN                        R7 R4 1
       43 NAMECALL                         R5 R0 K1 ["setHoveredPoint"]
       45 CALL                             R5 2 0
       46 MOVE                             R7 R4
       47 NAMECALL                         R5 R0 K2 ["setSelected"]
       49 CALL                             R5 2 0
       50 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["cleanup"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETTABLEKS                       R1 R0 K1 ["_brushToolConnections"]
        7 JUMPIFNOT                        R1 ; [+13]
        8 GETTABLEKS                       R1 R0 K1 ["_brushToolConnections"]
       10 LOADNIL                          R2
       11 LOADNIL                          R3
       12 FORGPREP                         R1
       13 NAMECALL                         R6 R5 K2 ["Disconnect"]
       15 CALL                             R6 1 0
       16 FORGLOOP                         R1 2 ; [-4]
       18 LOADNIL                          R1
       19 SETTABLEKS                       R1 R0 K1 ["_brushToolConnections"]
       21 GETTABLEKS                       R1 R0 K3 ["_radiusUIView"]
       23 NAMECALL                         R1 R1 K0 ["cleanup"]
       25 CALL                             R1 1 0
       26 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["LuaMeshEditingModule"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["MouseService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K5 [game]
       15 LOADK                            R4 K8 ["UserInputService"]
       16 NAMECALL                         R2 R2 K7 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K5 [game]
       21 LOADK                            R5 K9 ["Workspace"]
       22 NAMECALL                         R3 R3 K7 ["GetService"]
       24 CALL                             R3 2 1
       25 GETIMPORT                        R4 K11 [require]
       27 GETTABLEKS                       R6 R0 K12 ["Views"]
       29 GETTABLEKS                       R5 R6 K13 ["RadiusUIView"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K11 [require]
       34 GETTABLEKS                       R6 R0 K14 ["Types"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K11 [require]
       39 GETTABLEKS                       R8 R0 K15 ["Tools"]
       41 GETTABLEKS                       R7 R8 K16 ["VertexToolBase"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K11 [require]
       46 GETTABLEKS                       R9 R0 K17 ["MeshEditingContexts"]
       48 GETTABLEKS                       R8 R9 K18 ["MeshEditingContextBase"]
       50 CALL                             R7 1 1
       51 NEWTABLE                         R9 16 0
       53 FASTCALL2                        SETMETATABLE R9 R6 ; [+4]
       55 MOVE                             R10 R6
       56 GETIMPORT                        R8 K20 [setmetatable]
       58 CALL                             R8 2 1
       59 SETTABLEKS                       R8 R8 K21 ["__index"]
       61 DUPCLOSURE                       R9 K22 [PROTO_0]
       62 CAPTURE                          VAL R6
       63 CAPTURE                          VAL R8
       64 CAPTURE                          VAL R4
       65 SETTABLEKS                       R9 R8 K23 ["new"]
       67 DUPCLOSURE                       R9 K24 [PROTO_1]
       68 CAPTURE                          VAL R3
       69 SETTABLEKS                       R9 R8 K25 ["_calculateCircleScreenDiameterInPixels"]
       71 DUPCLOSURE                       R9 K26 [PROTO_3]
       72 CAPTURE                          VAL R3
       73 SETTABLEKS                       R9 R8 K27 ["_queryWorldFromMousePosition"]
       75 DUPCLOSURE                       R9 K28 [PROTO_5]
       76 SETTABLEKS                       R9 R8 K29 ["_queueUpdateCursor"]
       78 DUPCLOSURE                       R9 K30 [PROTO_7]
       79 CAPTURE                          VAL R2
       80 CAPTURE                          VAL R3
       81 SETTABLEKS                       R9 R8 K31 ["_performUpdateCursor"]
       83 DUPCLOSURE                       R9 K32 [PROTO_14]
       84 CAPTURE                          VAL R2
       85 CAPTURE                          VAL R3
       86 CAPTURE                          VAL R1
       87 SETTABLEKS                       R9 R8 K33 ["_setupConnections"]
       89 DUPCLOSURE                       R9 K34 [PROTO_15]
       90 SETTABLEKS                       R9 R8 K35 ["_updateSelectionFromMousePosition"]
       92 DUPCLOSURE                       R9 K36 [PROTO_16]
       93 CAPTURE                          VAL R6
       94 SETTABLEKS                       R9 R8 K37 ["cleanup"]
       96 RETURN                           R8 1
