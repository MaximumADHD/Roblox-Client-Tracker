PROTO_0:
        0 GETTABLEKS                       R3 R0 K1 ["CellStart"]
        2 GETTABLEKS                       R4 R0 K2 ["CellCount"]
        4 ADD                              R2 R3 R4
        5 SUBK                             R1 R2 K0 [1]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R3 R0 K1 ["CellStart"]
        9 JUMPIFNOTLE                      R3 R2 ; [+5]
       11 GETUPVAL                         R2 0
       12 JUMPIFNOTLE                      R2 R1 ; [+2]
       14 RETURN                           R0 1
       15 LOADNIL                          R2
       16 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          VAL R1
        4 CALL                             R2 2 -1
        5 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R4 0
        1 MOVE                             R6 R0
        2 MOVE                             R7 R1
        3 MOVE                             R8 R2
        4 MOVE                             R9 R3
        5 NAMECALL                         R4 R4 K0 ["getDefaultCellProps"]
        7 CALL                             R4 5 -1
        8 RETURN                           R4 -1

PROTO_3:
        0 DUPTABLE                         R1 K1 [{"updateCount"}]
        1 LOADN                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["updateCount"]
        4 SETTABLEKS                       R1 R0 K2 ["state"]
        6 LOADNIL                          R1
        7 SETTABLEKS                       R1 R0 K3 ["cellGroups"]
        9 LOADN                            R1 0
       10 SETTABLEKS                       R1 R0 K4 ["minIndex"]
       12 LOADN                            R1 0
       13 SETTABLEKS                       R1 R0 K5 ["maxIndex"]
       15 LOADNIL                          R1
       16 SETTABLEKS                       R1 R0 K6 ["canvasPosition"]
       18 GETTABLEKS                       R2 R0 K7 ["props"]
       20 GETTABLEKS                       R1 R2 K8 ["ForwardRef"]
       22 JUMPIF                           R1 ; [+4]
       23 GETUPVAL                         R2 0
       24 GETTABLEKS                       R1 R2 K9 ["createRef"]
       26 CALL                             R1 0 1
       27 SETTABLEKS                       R1 R0 K10 ["ref"]
       29 NEWCLOSURE                       R1 P0
       30 CAPTURE                          VAL R0
       31 SETTABLEKS                       R1 R0 K11 ["_getCellProps"]
       33 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R3 R0 K0 ["ref"]
        2 GETTABLEKS                       R2 R3 K1 ["current"]
        4 JUMPIF                           R2 ; [+6]
        5 GETIMPORT                        R3 K4 [Vector2.new]
        7 LOADN                            R4 0
        8 LOADN                            R5 0
        9 CALL                             R3 2 -1
       10 RETURN                           R3 -1
       11 GETIMPORT                        R3 K4 [Vector2.new]
       13 GETTABLEKS                       R7 R2 K5 ["AbsoluteSize"]
       15 GETTABLEKS                       R6 R7 K6 ["X"]
       17 GETTABLEKS                       R8 R1 K6 ["X"]
       19 GETTABLEKS                       R7 R8 K7 ["Scale"]
       21 MUL                              R5 R6 R7
       22 GETTABLEKS                       R7 R1 K6 ["X"]
       24 GETTABLEKS                       R6 R7 K8 ["Offset"]
       26 ADD                              R4 R5 R6
       27 GETTABLEKS                       R8 R2 K5 ["AbsoluteSize"]
       29 GETTABLEKS                       R7 R8 K9 ["Y"]
       31 GETTABLEKS                       R9 R1 K9 ["Y"]
       33 GETTABLEKS                       R8 R9 K7 ["Scale"]
       35 MUL                              R6 R7 R8
       36 GETTABLEKS                       R8 R1 K9 ["Y"]
       38 GETTABLEKS                       R7 R8 K8 ["Offset"]
       40 ADD                              R5 R6 R7
       41 CALL                             R3 2 -1
       42 RETURN                           R3 -1

PROTO_5:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R4 R3 K1 ["Stylizer"]
        4 JUMPIF                           R4 ; [+1]
        5 GETUPVAL                         R4 0
        6 DUPTABLE                         R5 K3 [{"Size"}]
        7 GETTABLEKS                       R7 R4 K4 ["CellGroupHeader"]
        9 GETTABLEKS                       R6 R7 K2 ["Size"]
       11 SETTABLEKS                       R6 R5 K2 ["Size"]
       13 GETUPVAL                         R6 1
       14 GETUPVAL                         R7 2
       15 MOVE                             R8 R5
       16 GETTABLEKS                       R9 R3 K4 ["CellGroupHeader"]
       18 CALL                             R6 3 1
       19 GETTABLEKS                       R7 R6 K2 ["Size"]
       21 GETTABLEKS                       R8 R6 K5 ["SnapWidthToGrid"]
       23 JUMPIFNOT                        R8 ; [+28]
       24 GETTABLEKS                       R9 R1 K6 ["X"]
       26 GETTABLEKS                       R10 R2 K6 ["X"]
       28 ADD                              R8 R9 R10
       29 NAMECALL                         R11 R0 K7 ["_getCellsPerRow"]
       31 CALL                             R11 1 1
       32 MUL                              R10 R11 R8
       33 GETTABLEKS                       R11 R2 K6 ["X"]
       35 SUB                              R9 R10 R11
       36 GETIMPORT                        R10 K10 [UDim2.new]
       38 LOADN                            R11 0
       39 MOVE                             R12 R9
       40 GETTABLEKS                       R14 R7 K11 ["Y"]
       42 GETTABLEKS                       R13 R14 K12 ["Scale"]
       44 GETTABLEKS                       R15 R7 K11 ["Y"]
       46 GETTABLEKS                       R14 R15 K13 ["Offset"]
       48 CALL                             R10 4 1
       49 SETTABLEKS                       R10 R6 K2 ["Size"]
       51 RETURN                           R6 1
       52 GETIMPORT                        R9 K15 [UDim2.fromOffset]
       54 GETTABLEKS                       R10 R2 K6 ["X"]
       56 LOADN                            R11 0
       57 CALL                             R9 2 1
       58 SUB                              R8 R7 R9
       59 SETTABLEKS                       R8 R6 K2 ["Size"]
       61 RETURN                           R6 1

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 JUMPIF                           R2 ; [+1]
        5 GETUPVAL                         R2 0
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R4 R1 K2 ["CellSize"]
        9 GETTABLEKS                       R5 R2 K2 ["CellSize"]
       11 CALL                             R3 2 1
       12 MOVE                             R6 R3
       13 NAMECALL                         R4 R0 K3 ["_getAbsoluteSize"]
       15 CALL                             R4 2 -1
       16 RETURN                           R4 -1

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 JUMPIF                           R2 ; [+1]
        5 GETUPVAL                         R2 0
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R4 R1 K2 ["CellPadding"]
        9 GETTABLEKS                       R5 R2 K2 ["CellPadding"]
       11 CALL                             R3 2 1
       12 MOVE                             R6 R3
       13 NAMECALL                         R4 R0 K3 ["_getAbsoluteSize"]
       15 CALL                             R4 2 -1
       16 RETURN                           R4 -1

PROTO_8:
        0 GETTABLEKS                       R2 R0 K0 ["ref"]
        2 GETTABLEKS                       R1 R2 K1 ["current"]
        4 JUMPIF                           R1 ; [+2]
        5 LOADN                            R2 0
        6 RETURN                           R2 1
        7 GETTABLEKS                       R3 R1 K2 ["AbsoluteSize"]
        9 GETTABLEKS                       R2 R3 K3 ["X"]
       11 NAMECALL                         R3 R0 K4 ["_getCellPadding"]
       13 CALL                             R3 1 1
       14 NAMECALL                         R4 R0 K5 ["_getCellSize"]
       16 CALL                             R4 1 1
       17 GETTABLEKS                       R6 R4 K3 ["X"]
       19 GETTABLEKS                       R7 R3 K3 ["X"]
       21 ADD                              R5 R6 R7
       22 JUMPIFNOTEQKN                    R5 K6 [0] ; [+3]
       24 LOADN                            R6 0
       25 RETURN                           R6 1
       26 GETTABLEKS                       R9 R3 K3 ["X"]
       28 SUB                              R8 R2 R9
       29 DIV                              R7 R8 R5
       30 FASTCALL1                        MATH_FLOOR R7 ; [+2]
       31 GETIMPORT                        R6 K9 [math.floor]
       33 CALL                             R6 1 1
       34 RETURN                           R6 1

PROTO_9:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["firstUpdateDone"]
        3 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R3 K1 ["ForwardRef"]
        4 JUMPIFNOT                        R2 ; [+14]
        5 GETTABLEKS                       R3 R0 K0 ["props"]
        7 GETTABLEKS                       R2 R3 K1 ["ForwardRef"]
        9 GETTABLEKS                       R3 R0 K2 ["ref"]
       11 JUMPIFEQ                         R2 R3 ; [+7]
       13 GETTABLEKS                       R3 R0 K0 ["props"]
       15 GETTABLEKS                       R2 R3 K1 ["ForwardRef"]
       17 SETTABLEKS                       R2 R0 K2 ["ref"]
       19 GETTABLEKS                       R2 R0 K0 ["props"]
       21 GETTABLEKS                       R3 R0 K3 ["firstUpdateDone"]
       23 JUMPIFNOT                        R3 ; [+1]
       24 RETURN                           R0 0
       25 GETTABLEKS                       R4 R0 K2 ["ref"]
       27 GETTABLEKS                       R3 R4 K4 ["current"]
       29 JUMPIFNOT                        R3 ; [+34]
       30 GETTABLEKS                       R4 R2 K5 ["InitialCanvasPosition"]
       32 JUMPIFNOT                        R4 ; [+31]
       33 GETTABLEKS                       R4 R2 K5 ["InitialCanvasPosition"]
       35 SETTABLEKS                       R4 R3 K6 ["CanvasPosition"]
       37 GETTABLEKS                       R4 R2 K7 ["OnScrollUpdate"]
       39 JUMPIFNOT                        R4 ; [+21]
       40 GETIMPORT                        R4 K10 [Vector2.new]
       42 GETTABLEKS                       R7 R3 K11 ["CanvasSize"]
       44 GETTABLEKS                       R6 R7 K12 ["X"]
       46 GETTABLEKS                       R5 R6 K13 ["Offset"]
       48 GETTABLEKS                       R8 R3 K11 ["CanvasSize"]
       50 GETTABLEKS                       R7 R8 K14 ["Y"]
       52 GETTABLEKS                       R6 R7 K13 ["Offset"]
       54 CALL                             R4 2 1
       55 GETTABLEKS                       R5 R2 K7 ["OnScrollUpdate"]
       57 GETTABLEKS                       R6 R3 K6 ["CanvasPosition"]
       59 MOVE                             R7 R4
       60 CALL                             R5 2 0
       61 LOADB                            R4 1
       62 SETTABLEKS                       R4 R0 K3 ["firstUpdateDone"]
       64 GETTABLEKS                       R4 R1 K7 ["OnScrollUpdate"]
       66 GETTABLEKS                       R5 R2 K7 ["OnScrollUpdate"]
       68 JUMPIFNOTEQ                      R4 R5 ; [+21]
       70 GETTABLEKS                       R4 R1 K15 ["OnLoadRange"]
       72 GETTABLEKS                       R5 R2 K15 ["OnLoadRange"]
       74 JUMPIFEQ                         R4 R5 ; [+3]
       76 GETUPVAL                         R4 0
       77 JUMPIF                           R4 ; [+12]
       78 GETTABLEKS                       R4 R1 K16 ["SpecialCells"]
       80 GETTABLEKS                       R5 R2 K16 ["SpecialCells"]
       82 JUMPIFNOTEQ                      R4 R5 ; [+7]
       84 GETTABLEKS                       R4 R1 K17 ["CellGroups"]
       86 GETTABLEKS                       R5 R2 K17 ["CellGroups"]
       88 JUMPIFEQ                         R4 R5 ; [+4]
       90 NAMECALL                         R4 R0 K18 ["_update"]
       92 CALL                             R4 1 0
       93 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["_incrementRender"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 NAMECALL                         R2 R0 K1 ["_getRange"]
        4 CALL                             R2 1 3
        5 JUMPIFNOTEQKN                    R3 K2 [0] ; [+2]
        7 RETURN                           R0 0
        8 GETTABLEKS                       R6 R0 K3 ["ref"]
       10 GETTABLEKS                       R5 R6 K4 ["current"]
       12 JUMPIFNOT                        R5 ; [+42]
       13 GETTABLEKS                       R6 R5 K5 ["CanvasPosition"]
       15 GETTABLEKS                       R7 R0 K6 ["canvasPosition"]
       17 JUMPIFEQ                         R6 R7 ; [+37]
       19 GETTABLEKS                       R6 R5 K5 ["CanvasPosition"]
       21 SETTABLEKS                       R6 R0 K6 ["canvasPosition"]
       23 GETTABLEKS                       R6 R1 K7 ["OnScrollUpdate"]
       25 JUMPIFNOT                        R6 ; [+29]
       26 GETIMPORT                        R6 K10 [Vector2.new]
       28 GETTABLEKS                       R9 R5 K11 ["CanvasSize"]
       30 GETTABLEKS                       R8 R9 K12 ["X"]
       32 GETTABLEKS                       R7 R8 K13 ["Offset"]
       34 GETTABLEKS                       R10 R5 K11 ["CanvasSize"]
       36 GETTABLEKS                       R9 R10 K14 ["Y"]
       38 GETTABLEKS                       R8 R9 K13 ["Offset"]
       40 CALL                             R6 2 1
       41 GETTABLEKS                       R7 R6 K12 ["X"]
       43 JUMPIFNOTEQKN                    R7 K2 [0] ; [+5]
       45 GETTABLEKS                       R7 R6 K14 ["Y"]
       47 JUMPIFEQKN                       R7 K2 [0] ; [+7]
       49 GETTABLEKS                       R7 R1 K7 ["OnScrollUpdate"]
       51 GETTABLEKS                       R8 R0 K6 ["canvasPosition"]
       53 MOVE                             R9 R6
       54 CALL                             R7 2 0
       55 GETTABLEKS                       R6 R0 K15 ["minIndex"]
       57 JUMPIFNOTEQ                      R6 R2 ; [+6]
       59 GETTABLEKS                       R6 R0 K16 ["maxIndex"]
       61 JUMPIFNOTEQ                      R6 R3 ; [+2]
       63 RETURN                           R0 0
       64 GETUPVAL                         R6 0
       65 JUMPIFNOT                        R6 ; [+13]
       66 GETTABLEKS                       R6 R1 K17 ["OnLoadRange"]
       68 JUMPIFNOT                        R6 ; [+10]
       69 GETTABLEKS                       R7 R1 K18 ["Cells"]
       71 LENGTH                           R6 R7
       72 JUMPIFNOTLE                      R6 R3 ; [+6]
       74 GETTABLEKS                       R6 R1 K17 ["OnLoadRange"]
       76 MOVE                             R7 R2
       77 MOVE                             R8 R3
       78 CALL                             R6 2 0
       79 SETTABLEKS                       R2 R0 K15 ["minIndex"]
       81 SETTABLEKS                       R3 R0 K16 ["maxIndex"]
       83 SETTABLEKS                       R4 R0 K19 ["cellGroups"]
       85 GETUPVAL                         R6 1
       86 CALL                             R6 0 1
       87 JUMPIFNOT                        R6 ; [+6]
       88 GETIMPORT                        R6 K22 [task.defer]
       90 NEWCLOSURE                       R7 P0
       91 CAPTURE                          VAL R0
       92 CALL                             R6 1 0
       93 RETURN                           R0 0
       94 NAMECALL                         R6 R0 K23 ["_incrementRender"]
       96 CALL                             R6 1 0
       97 RETURN                           R0 0

PROTO_13:
        0 DUPTABLE                         R1 K1 [{"updateCount"}]
        1 GETTABLEKS                       R4 R0 K0 ["updateCount"]
        3 ADDK                             R3 R4 K3 [1]
        4 MODK                             R2 R3 K2 [5000]
        5 SETTABLEKS                       R2 R1 K0 ["updateCount"]
        7 RETURN                           R1 1

PROTO_14:
        0 DUPCLOSURE                       R3 K0 [PROTO_13]
        1 NAMECALL                         R1 R0 K1 ["setState"]
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R0 K1 ["ref"]
        4 GETTABLEKS                       R2 R3 K2 ["current"]
        6 JUMPIF                           R2 ; [+7]
        7 GETTABLEKS                       R3 R0 K3 ["minIndex"]
        9 GETTABLEKS                       R4 R0 K4 ["maxIndex"]
       11 GETTABLEKS                       R5 R0 K5 ["cellGroups"]
       13 RETURN                           R3 3
       14 LOADN                            R3 0
       15 GETTABLEKS                       R4 R1 K6 ["SpecialCells"]
       17 JUMPIFNOT                        R4 ; [+11]
       18 MOVE                             R5 R4
       19 LOADNIL                          R6
       20 LOADNIL                          R7
       21 FORGPREP                         R5
       22 GETTABLEKS                       R11 R9 K7 ["AbsoluteSize"]
       24 GETTABLEKS                       R10 R11 K8 ["Y"]
       26 ADD                              R3 R3 R10
       27 FORGLOOP                         R5 2 ; [-6]
       29 GETTABLEKS                       R6 R2 K9 ["CanvasPosition"]
       31 GETTABLEKS                       R5 R6 K8 ["Y"]
       33 GETTABLEKS                       R7 R2 K7 ["AbsoluteSize"]
       35 GETTABLEKS                       R6 R7 K8 ["Y"]
       37 NAMECALL                         R7 R0 K10 ["_getCellsPerRow"]
       39 CALL                             R7 1 1
       40 LOADNIL                          R8
       41 LOADNIL                          R9
       42 LOADNIL                          R10
       43 GETUPVAL                         R11 0
       44 JUMPIFNOT                        R11 ; [+3]
       45 LOADN                            R8 1
       46 LOADN                            R9 1
       47 LOADNIL                          R10
       48 GETTABLEKS                       R11 R1 K11 ["CellGroups"]
       50 JUMPIFNOT                        R11 ; [+60]
       51 GETTABLEKS                       R12 R1 K11 ["CellGroups"]
       53 LENGTH                           R11 R12
       54 LOADN                            R12 0
       55 JUMPIFNOTLT                      R12 R11 ; [+55]
       57 NAMECALL                         R11 R0 K12 ["_getGroups"]
       59 CALL                             R11 1 1
       60 MOVE                             R10 R11
       61 ADD                              R11 R5 R6
       62 MOVE                             R12 R10
       63 LOADNIL                          R13
       64 LOADNIL                          R14
       65 FORGPREP                         R12
       66 GETTABLEKS                       R17 R16 K13 ["Offset"]
       68 JUMPIFNOTLT                      R11 R17 ; [+22]
       70 JUMPIFNOTEQKNIL                  R8 ; [+2]
       72 LOADB                            R18 0 +1
       73 LOADB                            R18 1
       74 FASTCALL2K                       ASSERT R18 K14 ; [+4]
       76 LOADK                            R19 K14 ["minIndex should not be nil"]
       77 GETIMPORT                        R17 K16 [assert]
       79 CALL                             R17 2 0
       80 JUMPIFNOTEQKNIL                  R9 ; [+2]
       82 LOADB                            R18 0 +1
       83 LOADB                            R18 1
       84 FASTCALL2K                       ASSERT R18 K17 ; [+4]
       86 LOADK                            R19 K17 ["maxIndex should not be nil"]
       87 GETIMPORT                        R17 K16 [assert]
       89 CALL                             R17 2 0
       90 RETURN                           R8 3
       91 GETTABLEKS                       R18 R16 K13 ["Offset"]
       93 GETTABLEKS                       R19 R16 K18 ["Height"]
       95 ADD                              R17 R18 R19
       96 JUMPIFLT                         R17 R5 ; [+11]
       98 JUMPIF                           R8 ; [+2]
       99 GETTABLEKS                       R8 R16 K19 ["CellStart"]
      101 GETTABLEKS                       R19 R16 K19 ["CellStart"]
      103 GETTABLEKS                       R21 R16 K21 ["RowCount"]
      105 MUL                              R20 R21 R7
      106 ADD                              R18 R19 R20
      107 SUBK                             R9 R18 K20 [1]
      108 FORGLOOP                         R12 2 ; [-43]
      110 RETURN                           R8 3
      111 NAMECALL                         R11 R0 K22 ["_getCellSize"]
      113 CALL                             R11 1 1
      114 NAMECALL                         R12 R0 K23 ["_getCellPadding"]
      116 CALL                             R12 1 1
      117 LOADN                            R14 0
      118 GETTABLEKS                       R20 R11 K8 ["Y"]
      120 GETTABLEKS                       R21 R12 K8 ["Y"]
      122 ADD                              R19 R20 R21
      123 DIV                              R18 R5 R19
      124 FASTCALL1                        MATH_FLOOR R18 ; [+2]
      125 GETIMPORT                        R17 K27 [math.floor]
      127 CALL                             R17 1 1
      128 SUBK                             R16 R17 K24 [10]
      129 SUB                              R15 R16 R3
      130 FASTCALL2                        MATH_MAX R14 R15 ; [+3]
      132 GETIMPORT                        R13 K29 [math.max]
      134 CALL                             R13 2 1
      135 MUL                              R8 R13 R7
      136 ADD                              R16 R5 R6
      137 GETTABLEKS                       R18 R11 K8 ["Y"]
      139 GETTABLEKS                       R19 R12 K8 ["Y"]
      141 ADD                              R17 R18 R19
      142 DIV                              R15 R16 R17
      143 FASTCALL1                        MATH_CEIL R15 ; [+2]
      144 GETIMPORT                        R14 K31 [math.ceil]
      146 CALL                             R14 1 1
      147 ADDK                             R13 R14 K24 [10]
      148 MUL                              R9 R13 R7
      149 RETURN                           R8 3

PROTO_16:
        0 GETTABLEKS                       R3 R0 K0 ["CellCount"]
        2 GETUPVAL                         R4 0
        3 DIV                              R2 R3 R4
        4 FASTCALL1                        MATH_CEIL R2 ; [+2]
        5 GETIMPORT                        R1 K3 [math.ceil]
        7 CALL                             R1 1 1
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R3 R0 K4 ["IsCollapsed"]
       11 JUMPIF                           R3 ; [+3]
       12 GETUPVAL                         R4 2
       13 MUL                              R3 R1 R4
       14 ADD                              R2 R2 R3
       15 GETUPVAL                         R3 3
       16 DUPTABLE                         R4 K10 [{"CellStart", "Height", "Offset", "RowCount", "RowStart"}]
       17 GETUPVAL                         R5 4
       18 SETTABLEKS                       R5 R4 K5 ["CellStart"]
       20 SETTABLEKS                       R2 R4 K6 ["Height"]
       22 GETUPVAL                         R5 5
       23 SETTABLEKS                       R5 R4 K7 ["Offset"]
       25 SETTABLEKS                       R1 R4 K8 ["RowCount"]
       27 GETUPVAL                         R5 6
       28 SETTABLEKS                       R5 R4 K9 ["RowStart"]
       30 MOVE                             R5 R0
       31 CALL                             R3 2 1
       32 GETUPVAL                         R4 4
       33 GETTABLEKS                       R5 R0 K0 ["CellCount"]
       35 ADD                              R4 R4 R5
       36 SETUPVAL                         R4 4
       37 GETUPVAL                         R4 5
       38 ADD                              R4 R4 R2
       39 SETUPVAL                         R4 5
       40 GETUPVAL                         R4 6
       41 ADD                              R4 R4 R1
       42 SETUPVAL                         R4 6
       43 RETURN                           R3 1

PROTO_17:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["CellGroups"]
        4 JUMPIFNOT                        R2 ; [+5]
        5 GETTABLEKS                       R3 R1 K1 ["CellGroups"]
        7 LENGTH                           R2 R3
        8 JUMPIFNOTEQKN                    R2 K2 [0] ; [+4]
       10 NEWTABLE                         R2 0 0
       12 RETURN                           R2 1
       13 NAMECALL                         R2 R0 K3 ["_getCellPadding"]
       15 CALL                             R2 1 1
       16 NAMECALL                         R3 R0 K4 ["_getCellSize"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R5 R3 K5 ["Y"]
       21 GETTABLEKS                       R6 R2 K5 ["Y"]
       23 ADD                              R4 R5 R6
       24 MOVE                             R7 R3
       25 MOVE                             R8 R2
       26 NAMECALL                         R5 R0 K6 ["_getCellGroupHeader"]
       28 CALL                             R5 3 1
       29 GETTABLEKS                       R9 R5 K7 ["Size"]
       31 GETTABLEKS                       R8 R9 K5 ["Y"]
       33 GETTABLEKS                       R7 R8 K8 ["Offset"]
       35 GETTABLEKS                       R8 R2 K5 ["Y"]
       37 ADD                              R6 R7 R8
       38 LOADN                            R7 1
       39 LOADN                            R8 0
       40 LOADN                            R9 0
       41 NAMECALL                         R10 R0 K9 ["_getCellsPerRow"]
       43 CALL                             R10 1 1
       44 GETUPVAL                         R11 0
       45 GETTABLEKS                       R12 R1 K1 ["CellGroups"]
       47 NEWCLOSURE                       R13 P0
       48 CAPTURE                          VAL R10
       49 CAPTURE                          VAL R6
       50 CAPTURE                          VAL R4
       51 CAPTURE                          UPVAL U1
       52 CAPTURE                          REF R7
       53 CAPTURE                          REF R8
       54 CAPTURE                          REF R9
       55 CALL                             R11 2 1
       56 LENGTH                           R13 R11
       57 GETTABLE                         R12 R11 R13
       58 GETTABLEKS                       R16 R1 K11 ["Cells"]
       60 LENGTH                           R15 R16
       61 GETTABLEKS                       R16 R12 K12 ["CellStart"]
       63 SUB                              R14 R15 R16
       64 ADDK                             R13 R14 K10 [1]
       65 SETTABLEKS                       R13 R12 K13 ["CellCount"]
       67 CLOSEUPVALS                      R7
       68 RETURN                           R11 1

PROTO_18:
        0 NAMECALL                         R3 R0 K0 ["_getCellPadding"]
        2 CALL                             R3 1 1
        3 NAMECALL                         R4 R0 K1 ["_getCellSize"]
        5 CALL                             R4 1 1
        6 GETTABLEKS                       R6 R4 K2 ["X"]
        8 GETTABLEKS                       R7 R3 K2 ["X"]
       10 ADD                              R5 R6 R7
       11 GETTABLEKS                       R7 R4 K3 ["Y"]
       13 GETTABLEKS                       R8 R3 K3 ["Y"]
       15 ADD                              R6 R7 R8
       16 NAMECALL                         R7 R0 K4 ["_getCellsPerRow"]
       18 CALL                             R7 1 1
       19 LOADNIL                          R8
       20 LOADNIL                          R9
       21 JUMPIFNOT                        R2 ; [+51]
       22 MOVE                             R12 R4
       23 MOVE                             R13 R3
       24 NAMECALL                         R10 R0 K5 ["_getCellGroupHeader"]
       26 CALL                             R10 3 1
       27 GETUPVAL                         R11 0
       28 MOVE                             R12 R2
       29 NEWCLOSURE                       R13 P0
       30 CAPTURE                          VAL R1
       31 CALL                             R11 2 1
       32 FASTCALL2K                       ASSERT R11 K6 ; [+5]
       34 MOVE                             R13 R11
       35 LOADK                            R14 K6 ["Expected cell to belong to a group"]
       36 GETIMPORT                        R12 K8 [assert]
       38 CALL                             R12 2 0
       39 GETTABLEKS                       R12 R11 K9 ["Offset"]
       41 GETTABLEKS                       R13 R10 K10 ["AfterContent"]
       43 JUMPIF                           R13 ; [+7]
       44 GETTABLEKS                       R15 R10 K11 ["Size"]
       46 GETTABLEKS                       R14 R15 K3 ["Y"]
       48 GETTABLEKS                       R13 R14 K9 ["Offset"]
       50 ADD                              R12 R12 R13
       51 GETTABLEKS                       R16 R11 K12 ["CellStart"]
       53 SUB                              R15 R1 R16
       54 DIV                              R14 R15 R7
       55 FASTCALL1                        MATH_FLOOR R14 ; [+2]
       56 GETIMPORT                        R13 K15 [math.floor]
       58 CALL                             R13 1 1
       59 GETTABLEKS                       R16 R11 K12 ["CellStart"]
       61 SUB                              R15 R1 R16
       62 MOD                              R14 R15 R7
       63 GETTABLEKS                       R15 R3 K2 ["X"]
       65 MUL                              R16 R14 R5
       66 ADD                              R8 R15 R16
       67 GETTABLEKS                       R16 R3 K3 ["Y"]
       69 ADD                              R15 R12 R16
       70 MUL                              R16 R13 R6
       71 ADD                              R9 R15 R16
       72 JUMP                             ; [+21]
       73 LOADN                            R11 1
       74 JUMPIFNOTLE                      R1 R11 ; [+3]
       76 LOADN                            R10 0
       77 JUMP                             ; [+6]
       78 SUBK                             R12 R1 K16 [1]
       79 DIV                              R11 R12 R7
       80 FASTCALL1                        MATH_FLOOR R11 ; [+2]
       81 GETIMPORT                        R10 K15 [math.floor]
       83 CALL                             R10 1 1
       84 SUBK                             R12 R1 K16 [1]
       85 MOD                              R11 R12 R7
       86 GETTABLEKS                       R12 R3 K2 ["X"]
       88 MUL                              R13 R11 R5
       89 ADD                              R8 R12 R13
       90 GETTABLEKS                       R12 R3 K3 ["Y"]
       92 MUL                              R13 R10 R6
       93 ADD                              R9 R12 R13
       94 GETIMPORT                        R10 K19 [UDim2.fromOffset]
       96 MOVE                             R11 R8
       97 MOVE                             R12 R9
       98 CALL                             R10 2 -1
       99 RETURN                           R10 -1

PROTO_19:
        0 GETTABLEKS                       R6 R0 K0 ["props"]
        2 GETTABLEKS                       R5 R6 K1 ["Stylizer"]
        4 JUMPIF                           R5 ; [+1]
        5 GETUPVAL                         R5 0
        6 DUPTABLE                         R6 K7 [{"Key", "Position", "Cell", "Size", "Style"}]
        7 SETTABLEKS                       R2 R6 K2 ["Key"]
        9 SETTABLEKS                       R3 R6 K3 ["Position"]
       11 SETTABLEKS                       R1 R6 K4 ["Cell"]
       13 SETTABLEKS                       R4 R6 K5 ["Size"]
       15 SETTABLEKS                       R5 R6 K6 ["Style"]
       17 RETURN                           R6 1

PROTO_20:
        0 GETTABLEKS                       R3 R1 K0 ["Height"]
        2 ADD                              R2 R0 R3
        3 RETURN                           R2 1

PROTO_21:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["_update"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_22:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["GetCellProps"]
        4 JUMPIF                           R2 ; [+2]
        5 GETTABLEKS                       R2 R0 K2 ["_getCellProps"]
        7 GETTABLEKS                       R3 R1 K3 ["Stylizer"]
        9 NAMECALL                         R4 R0 K4 ["_getCellPadding"]
       11 CALL                             R4 1 1
       12 NAMECALL                         R5 R0 K5 ["_getCellSize"]
       14 CALL                             R5 1 1
       15 NAMECALL                         R6 R0 K6 ["_getCellsPerRow"]
       17 CALL                             R6 1 1
       18 GETTABLEKS                       R7 R1 K7 ["Cells"]
       20 GETTABLEKS                       R8 R1 K8 ["SpecialCells"]
       22 GETTABLEKS                       R11 R1 K8 ["SpecialCells"]
       24 NOT                              R10 R11
       25 JUMPIF                           R10 ; [+3]
       26 GETTABLEKS                       R11 R1 K9 ["CellGroups"]
       28 NOT                              R10 R11
       29 FASTCALL2K                       ASSERT R10 K10 ; [+4]
       31 LOADK                            R11 K10 ["Cannot use SpecialCells with CellGroups"]
       32 GETIMPORT                        R9 K12 [assert]
       34 CALL                             R9 2 0
       35 LOADN                            R9 0
       36 JUMPIFNOT                        R8 ; [+12]
       37 GETIMPORT                        R10 K14 [pairs]
       39 MOVE                             R11 R8
       40 CALL                             R10 1 3
       41 FORGPREP_NEXT                    R10
       42 GETTABLEKS                       R16 R14 K15 ["AbsoluteSize"]
       44 GETTABLEKS                       R15 R16 K16 ["Y"]
       46 ADD                              R9 R9 R15
       47 FORGLOOP                         R10 2 ; [-6]
       49 NEWTABLE                         R10 0 0
       51 NAMECALL                         R11 R0 K17 ["_getRange"]
       53 CALL                             R11 1 3
       54 GETUPVAL                         R14 0
       55 GETTABLEKS                       R15 R1 K18 ["CellSize"]
       57 GETTABLEKS                       R16 R3 K18 ["CellSize"]
       59 CALL                             R14 2 1
       60 LOADN                            R15 0
       61 LOADN                            R16 0
       62 JUMPIFNOT                        R8 ; [+3]
       63 GETTABLEKS                       R17 R8 K19 ["HEADER"]
       65 JUMP                             ; [+1]
       66 LOADNIL                          R17
       67 JUMPIFNOT                        R17 ; [+29]
       68 GETTABLEKS                       R18 R17 K20 ["OnRender"]
       70 LOADNIL                          R19
       71 LOADN                            R20 1
       72 GETIMPORT                        R21 K23 [UDim2.fromOffset]
       74 LOADN                            R22 0
       75 LOADN                            R23 0
       76 CALL                             R21 2 1
       77 GETIMPORT                        R22 K23 [UDim2.fromOffset]
       79 GETTABLEKS                       R24 R17 K15 ["AbsoluteSize"]
       81 GETTABLEKS                       R23 R24 K24 ["X"]
       83 GETTABLEKS                       R25 R17 K15 ["AbsoluteSize"]
       85 GETTABLEKS                       R24 R25 K16 ["Y"]
       87 CALL                             R22 2 -1
       88 CALL                             R18 -1 1
       89 SETTABLEKS                       R18 R10 K25 ["Header"]
       91 GETTABLEKS                       R19 R17 K15 ["AbsoluteSize"]
       93 GETTABLEKS                       R18 R19 K16 ["Y"]
       95 ADD                              R15 R15 R18
       96 ADDK                             R16 R16 K26 [1]
       97 GETTABLEKS                       R18 R1 K27 ["CellGroupHeader"]
       99 JUMPIF                           R18 ; [+2]
      100 NEWTABLE                         R18 0 0
      102 MOVE                             R21 R11
      103 MOVE                             R19 R12
      104 LOADN                            R20 1
      105 FORNPREP                         R19
      106 GETTABLE                         R22 R7 R21
      107 JUMPIFNOT                        R22 ; [+133]
      108 LOADNIL                          R23
      109 JUMPIFNOT                        R13 ; [+18]
      110 GETTABLEKS                       R24 R18 K28 ["Collapsible"]
      112 JUMPIFNOT                        R24 ; [+8]
      113 GETUPVAL                         R24 1
      114 MOVE                             R25 R13
      115 NEWCLOSURE                       R26 P0
      116 CAPTURE                          VAL R21
      117 CALL                             R24 2 1
      118 GETTABLEKS                       R25 R24 K29 ["IsCollapsed"]
      120 JUMPIF                           R25 ; [+120]
      121 MOVE                             R26 R21
      122 MOVE                             R27 R13
      123 NAMECALL                         R24 R0 K30 ["_calculateCellPosition"]
      125 CALL                             R24 3 1
      126 MOVE                             R23 R24
      127 JUMP                             ; [+37]
      128 LOADN                            R25 1
      129 JUMPIFNOTLE                      R21 R25 ; [+3]
      131 LOADN                            R24 0
      132 JUMP                             ; [+6]
      133 SUBK                             R26 R21 K26 [1]
      134 DIV                              R25 R26 R6
      135 FASTCALL1                        MATH_FLOOR R25 ; [+2]
      136 GETIMPORT                        R24 K33 [math.floor]
      138 CALL                             R24 1 1
      139 GETTABLEKS                       R29 R4 K16 ["Y"]
      141 GETTABLEKS                       R30 R5 K16 ["Y"]
      143 ADD                              R28 R29 R30
      144 MUL                              R27 R24 R28
      145 GETTABLEKS                       R28 R4 K16 ["Y"]
      147 ADD                              R26 R27 R28
      148 ADD                              R25 R26 R15
      149 GETIMPORT                        R26 K23 [UDim2.fromOffset]
      151 GETTABLEKS                       R28 R4 K24 ["X"]
      153 SUBK                             R31 R21 K26 [1]
      154 MOD                              R30 R31 R6
      155 GETTABLEKS                       R32 R4 K24 ["X"]
      157 GETTABLEKS                       R33 R5 K24 ["X"]
      159 ADD                              R31 R32 R33
      160 MUL                              R29 R30 R31
      161 ADD                              R27 R28 R29
      162 MOVE                             R28 R25
      163 CALL                             R26 2 1
      164 MOVE                             R23 R26
      165 MOVE                             R24 R2
      166 MOVE                             R25 R22
      167 ADD                              R26 R21 R16
      168 MOVE                             R27 R23
      169 MOVE                             R28 R14
      170 CALL                             R24 4 1
      171 GETTABLEKS                       R25 R24 K34 ["Key"]
      173 JUMPIF                           R25 ; [+5]
      174 FASTCALL1                        TOSTRING R21 ; [+3]
      175 MOVE                             R26 R21
      176 GETIMPORT                        R25 K36 [tostring]
      178 CALL                             R25 1 1
      179 JUMPIFNOT                        R8 ; [+2]
      180 GETTABLE                         R26 R8 R25
      181 JUMP                             ; [+1]
      182 LOADNIL                          R26
      183 JUMPIFNOT                        R26 ; [+33]
      184 GETUPVAL                         R28 2
      185 JUMPIFNOT                        R28 ; [+7]
      186 LOADK                            R28 K37 ["SpecialCell_%*"]
      187 MOVE                             R30 R25
      188 NAMECALL                         R28 R28 K38 ["format"]
      190 CALL                             R28 2 1
      191 MOVE                             R27 R28
      192 JUMP                             ; [+1]
      193 MOVE                             R27 R25
      194 GETTABLEKS                       R28 R26 K20 ["OnRender"]
      196 MOVE                             R29 R22
      197 ADD                              R30 R21 R16
      198 MOVE                             R31 R23
      199 GETIMPORT                        R32 K23 [UDim2.fromOffset]
      201 GETTABLEKS                       R34 R26 K15 ["AbsoluteSize"]
      203 GETTABLEKS                       R33 R34 K24 ["X"]
      205 GETTABLEKS                       R35 R26 K15 ["AbsoluteSize"]
      207 GETTABLEKS                       R34 R35 K16 ["Y"]
      209 CALL                             R32 2 -1
      210 CALL                             R28 -1 1
      211 SETTABLE                         R28 R10 R27
      212 GETTABLEKS                       R28 R26 K15 ["AbsoluteSize"]
      214 GETTABLEKS                       R15 R28 K16 ["Y"]
      216 JUMP                             ; [+24]
      217 MOVE                             R27 R25
      218 GETUPVAL                         R28 2
      219 JUMPIFNOT                        R28 ; [+11]
      220 GETTABLEKS                       R28 R24 K39 ["key"]
      222 JUMPIFNOT                        R28 ; [+2]
      223 MOVE                             R27 R21
      224 JUMP                             ; [+6]
      225 LOADK                            R28 K40 ["Cell_%*"]
      226 MOVE                             R30 R25
      227 NAMECALL                         R28 R28 K38 ["format"]
      229 CALL                             R28 2 1
      230 MOVE                             R27 R28
      231 GETUPVAL                         R29 3
      232 GETTABLEKS                       R28 R29 K41 ["createElement"]
      234 GETTABLEKS                       R29 R1 K42 ["CellComponent"]
      236 JUMPIF                           R29 ; [+1]
      237 GETUPVAL                         R29 4
      238 MOVE                             R30 R24
      239 CALL                             R28 2 1
      240 SETTABLE                         R28 R10 R27
      241 FORNLOOP                         R19
      242 JUMPIFNOT                        R13 ; [+17]
      243 GETUPVAL                         R19 2
      244 JUMPIFNOT                        R19 ; [+8]
      245 GETUPVAL                         R19 5
      246 MOVE                             R20 R10
      247 MOVE                             R23 R13
      248 NAMECALL                         R21 R0 K43 ["renderGroupHeaders"]
      250 CALL                             R21 2 -1
      251 CALL                             R19 -1 0
      252 JUMP                             ; [+7]
      253 GETUPVAL                         R19 6
      254 MOVE                             R20 R10
      255 MOVE                             R23 R13
      256 NAMECALL                         R21 R0 K43 ["renderGroupHeaders"]
      258 CALL                             R21 2 -1
      259 CALL                             R19 -1 0
      260 GETUPVAL                         R19 7
      261 MOVE                             R20 R1
      262 GETUPVAL                         R21 8
      263 CALL                             R19 2 1
      264 LOADNIL                          R20
      265 JUMPIFNOT                        R13 ; [+7]
      266 GETUPVAL                         R21 9
      267 MOVE                             R22 R13
      268 DUPCLOSURE                       R23 K44 [PROTO_20]
      269 LOADN                            R24 0
      270 CALL                             R21 3 1
      271 MOVE                             R20 R21
      272 JUMP                             ; [+18]
      273 GETTABLEKS                       R24 R5 K16 ["Y"]
      275 GETTABLEKS                       R25 R4 K16 ["Y"]
      277 ADD                              R23 R24 R25
      278 GETTABLEKS                       R27 R1 K7 ["Cells"]
      280 LENGTH                           R26 R27
      281 DIV                              R25 R26 R6
      282 FASTCALL1                        MATH_CEIL R25 ; [+2]
      283 GETIMPORT                        R24 K46 [math.ceil]
      285 CALL                             R24 1 1
      286 MUL                              R22 R23 R24
      287 ADD                              R21 R9 R22
      288 GETTABLEKS                       R22 R4 K16 ["Y"]
      290 ADD                              R20 R21 R22
      291 NEWCLOSURE                       R21 P2
      292 CAPTURE                          VAL R0
      293 GETUPVAL                         R23 3
      294 GETTABLEKS                       R22 R23 K41 ["createElement"]
      296 LOADK                            R23 K47 ["ScrollingFrame"]
      297 GETUPVAL                         R24 10
      298 NEWTABLE                         R25 16 0
      300 GETTABLEKS                       R26 R1 K48 ["AutomaticSize"]
      302 SETTABLEKS                       R26 R25 K48 ["AutomaticSize"]
      304 GETTABLEKS                       R27 R1 K49 ["CanvasSize"]
      306 JUMPIF                           R27 ; [+3]
      307 GETIMPORT                        R26 K51 [Enum.AutomaticSize.X]
      309 JUMP                             ; [+1]
      310 LOADNIL                          R26
      311 SETTABLEKS                       R26 R25 K52 ["AutomaticCanvasSize"]
      313 GETIMPORT                        R26 K55 [BrickColor.new]
      315 GETTABLEKS                       R27 R3 K56 ["BackgroundColor"]
      317 CALL                             R26 1 1
      318 SETTABLEKS                       R26 R25 K56 ["BackgroundColor"]
      320 GETTABLEKS                       R26 R1 K49 ["CanvasSize"]
      322 JUMPIF                           R26 ; [+7]
      323 GETIMPORT                        R26 K57 [UDim2.new]
      325 LOADN                            R27 0
      326 LOADN                            R28 0
      327 LOADN                            R29 0
      328 MOVE                             R30 R20
      329 CALL                             R26 4 1
      330 SETTABLEKS                       R26 R25 K49 ["CanvasSize"]
      332 GETTABLEKS                       R26 R1 K58 ["ScrollingDirection"]
      334 SETTABLEKS                       R26 R25 K58 ["ScrollingDirection"]
      336 GETIMPORT                        R26 K60 [UDim2.fromScale]
      338 LOADN                            R27 1
      339 LOADN                            R28 1
      340 CALL                             R26 2 1
      341 SETTABLEKS                       R26 R25 K61 ["Size"]
      343 GETUPVAL                         R27 3
      344 GETTABLEKS                       R26 R27 K62 ["Ref"]
      346 GETTABLEKS                       R27 R0 K63 ["ref"]
      348 SETTABLE                         R27 R25 R26
      349 GETUPVAL                         R28 3
      350 GETTABLEKS                       R27 R28 K64 ["Change"]
      352 GETTABLEKS                       R26 R27 K15 ["AbsoluteSize"]
      354 SETTABLE                         R21 R25 R26
      355 GETUPVAL                         R28 3
      356 GETTABLEKS                       R27 R28 K64 ["Change"]
      358 GETTABLEKS                       R26 R27 K65 ["CanvasPosition"]
      360 SETTABLE                         R21 R25 R26
      361 GETUPVAL                         R28 3
      362 GETTABLEKS                       R27 R28 K64 ["Change"]
      364 GETTABLEKS                       R26 R27 K49 ["CanvasSize"]
      366 SETTABLE                         R21 R25 R26
      367 GETTABLEKS                       R26 R3 K47 ["ScrollingFrame"]
      369 MOVE                             R27 R19
      370 CALL                             R24 3 1
      371 MOVE                             R25 R10
      372 CALL                             R22 3 -1
      373 RETURN                           R22 -1

PROTO_23:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["OnExpandCollapseClicked"]
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K0 ["OnExpandCollapseClicked"]
        7 GETUPVAL                         R1 1
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_24:
        0 GETTABLEKS                       R2 R1 K0 ["Offset"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K1 ["AfterContent"]
        5 JUMPIFNOT                        R3 ; [+5]
        6 GETTABLEKS                       R4 R1 K2 ["Height"]
        8 GETUPVAL                         R5 1
        9 SUB                              R3 R4 R5
       10 ADD                              R2 R2 R3
       11 GETUPVAL                         R3 2
       12 DUPTABLE                         R4 K8 [{"Collapsible", "OnExpandCollapseClicked", "Position", "Size", "Style"}]
       13 GETUPVAL                         R6 0
       14 GETTABLEKS                       R5 R6 K3 ["Collapsible"]
       16 SETTABLEKS                       R5 R4 K3 ["Collapsible"]
       18 NEWCLOSURE                       R5 P0
       19 CAPTURE                          UPVAL U0
       20 CAPTURE                          VAL R0
       21 SETTABLEKS                       R5 R4 K4 ["OnExpandCollapseClicked"]
       23 GETIMPORT                        R5 K11 [UDim2.fromOffset]
       25 GETUPVAL                         R7 3
       26 GETTABLEKS                       R6 R7 K12 ["X"]
       28 MOVE                             R7 R2
       29 CALL                             R5 2 1
       30 SETTABLEKS                       R5 R4 K5 ["Position"]
       32 GETUPVAL                         R6 0
       33 GETTABLEKS                       R5 R6 K6 ["Size"]
       35 SETTABLEKS                       R5 R4 K6 ["Size"]
       37 GETUPVAL                         R6 4
       38 GETTABLEKS                       R5 R6 K13 ["CellGroupHeader"]
       40 SETTABLEKS                       R5 R4 K7 ["Style"]
       42 MOVE                             R5 R1
       43 CALL                             R3 2 1
       44 LOADK                            R5 K14 ["Group %*"]
       45 MOVE                             R7 R0
       46 NAMECALL                         R5 R5 K15 ["format"]
       48 CALL                             R5 2 1
       49 MOVE                             R4 R5
       50 MOVE                             R5 R4
       51 GETUPVAL                         R7 5
       52 GETTABLEKS                       R6 R7 K16 ["createElement"]
       54 GETUPVAL                         R7 6
       55 MOVE                             R8 R3
       56 CALL                             R6 2 -1
       57 RETURN                           R5 -1

PROTO_25:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R2 K1 ["Stylizer"]
        4 NAMECALL                         R4 R0 K2 ["_getCellSize"]
        6 CALL                             R4 1 1
        7 NAMECALL                         R5 R0 K3 ["_getCellPadding"]
        9 CALL                             R5 1 1
       10 MOVE                             R8 R4
       11 MOVE                             R9 R5
       12 NAMECALL                         R6 R0 K4 ["_getCellGroupHeader"]
       14 CALL                             R6 3 1
       15 GETTABLEKS                       R9 R6 K5 ["Size"]
       17 GETTABLEKS                       R8 R9 K6 ["Y"]
       19 GETTABLEKS                       R7 R8 K7 ["Offset"]
       21 GETTABLEKS                       R8 R6 K8 ["HeaderComponent"]
       23 GETUPVAL                         R9 0
       24 MOVE                             R10 R1
       25 NEWCLOSURE                       R11 P0
       26 CAPTURE                          VAL R6
       27 CAPTURE                          VAL R7
       28 CAPTURE                          UPVAL U1
       29 CAPTURE                          VAL R5
       30 CAPTURE                          VAL R3
       31 CAPTURE                          UPVAL U2
       32 CAPTURE                          VAL R8
       33 CALL                             R9 2 -1
       34 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K2 ["UI"]
       13 GETTABLEKS                       R2 R3 K7 ["ContextServices"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K8 ["withContext"]
       18 GETIMPORT                        R3 K6 [require]
       20 GETTABLEKS                       R5 R0 K4 ["Parent"]
       22 GETTABLEKS                       R4 R5 K9 ["Dash"]
       24 CALL                             R3 1 1
       25 GETTABLEKS                       R4 R3 K10 ["append"]
       27 GETTABLEKS                       R5 R3 K11 ["collect"]
       29 GETTABLEKS                       R6 R3 K12 ["join"]
       31 GETTABLEKS                       R7 R3 K13 ["assign"]
       33 GETTABLEKS                       R8 R3 K14 ["map"]
       35 GETTABLEKS                       R9 R3 K15 ["mapFirst"]
       37 GETTABLEKS                       R10 R3 K16 ["omit"]
       39 GETTABLEKS                       R11 R3 K17 ["reduce"]
       41 GETIMPORT                        R12 K6 [require]
       43 GETTABLEKS                       R14 R0 K18 ["Util"]
       45 GETTABLEKS                       R13 R14 K19 ["prioritize"]
       47 CALL                             R12 1 1
       48 GETIMPORT                        R13 K6 [require]
       50 GETTABLEKS                       R15 R0 K20 ["Wrappers"]
       52 GETTABLEKS                       R14 R15 K21 ["withForwardRef"]
       54 CALL                             R13 1 1
       55 GETIMPORT                        R14 K6 [require]
       57 GETTABLEKS                       R16 R0 K4 ["Parent"]
       59 GETTABLEKS                       R15 R16 K22 ["Roact"]
       61 CALL                             R14 1 1
       62 GETIMPORT                        R15 K6 [require]
       64 GETIMPORT                        R17 K1 [script]
       66 GETTABLEKS                       R16 R17 K23 ["GridCell"]
       68 CALL                             R15 1 1
       69 GETIMPORT                        R16 K6 [require]
       71 GETIMPORT                        R18 K1 [script]
       73 GETTABLEKS                       R17 R18 K24 ["GroupHeader"]
       75 CALL                             R16 1 1
       76 GETIMPORT                        R17 K6 [require]
       78 GETIMPORT                        R19 K1 [script]
       80 GETTABLEKS                       R18 R19 K25 ["style"]
       82 CALL                             R17 1 1
       83 GETIMPORT                        R18 K27 [game]
       85 LOADK                            R20 K28 ["DevFrameworkGridOnLoadRange"]
       86 LOADB                            R21 0
       87 NAMECALL                         R18 R18 K29 ["DefineFastFlag"]
       89 CALL                             R18 3 1
       90 GETIMPORT                        R19 K27 [game]
       92 LOADK                            R21 K30 ["DevFrameworkGridDefaultMinMaxIndex"]
       93 LOADB                            R22 0
       94 NAMECALL                         R19 R19 K29 ["DefineFastFlag"]
       96 CALL                             R19 3 1
       97 GETIMPORT                        R20 K6 [require]
       99 GETTABLEKS                       R22 R0 K31 ["SharedFlags"]
      101 GETTABLEKS                       R21 R22 K32 ["getFFlagDevFrameworkFixMissingKeyErrors"]
      103 CALL                             R20 1 1
      104 CALL                             R20 0 1
      105 GETIMPORT                        R21 K6 [require]
      107 GETTABLEKS                       R23 R0 K31 ["SharedFlags"]
      109 GETTABLEKS                       R22 R23 K33 ["getFFlagGridDeferIncrementRender"]
      111 CALL                             R21 1 1
      112 NEWTABLE                         R22 0 13
      114 LOADK                            R23 K34 ["InitialCanvasPosition"]
      115 LOADK                            R24 K35 ["CellComponent"]
      116 LOADK                            R25 K36 ["CellGroupHeader"]
      117 LOADK                            R26 K37 ["CellGroups"]
      118 LOADK                            R27 K38 ["CellPadding"]
      119 LOADK                            R28 K39 ["CellSize"]
      120 LOADK                            R29 K40 ["Cells"]
      121 LOADK                            R30 K41 ["GetCellProps"]
      122 LOADK                            R31 K42 ["OnScrollUpdate"]
      123 LOADK                            R32 K43 ["OnLoadRange"]
      124 LOADK                            R33 K44 ["SpecialCells"]
      125 LOADK                            R34 K45 ["Stylizer"]
      126 LOADK                            R35 K46 ["ForwardRef"]
      127 SETLIST                          R22 R23 13 [1]
      129 DUPTABLE                         R23 K51 [{"AfterContent", "Collapsible", "HeaderComponent", "SnapWidthToGrid"}]
      130 LOADB                            R24 0
      131 SETTABLEKS                       R24 R23 K47 ["AfterContent"]
      133 LOADB                            R24 1
      134 SETTABLEKS                       R24 R23 K48 ["Collapsible"]
      136 SETTABLEKS                       R16 R23 K49 ["HeaderComponent"]
      138 LOADB                            R24 1
      139 SETTABLEKS                       R24 R23 K50 ["SnapWidthToGrid"]
      141 DUPCLOSURE                       R24 K52 [PROTO_1]
      142 CAPTURE                          VAL R9
      143 GETTABLEKS                       R25 R14 K53 ["PureComponent"]
      145 LOADK                            R27 K54 ["Grid"]
      146 NAMECALL                         R25 R25 K55 ["extend"]
      148 CALL                             R25 2 1
      149 DUPCLOSURE                       R26 K56 [PROTO_3]
      150 CAPTURE                          VAL R14
      151 SETTABLEKS                       R26 R25 K57 ["init"]
      153 DUPCLOSURE                       R26 K58 [PROTO_4]
      154 SETTABLEKS                       R26 R25 K59 ["_getAbsoluteSize"]
      156 DUPCLOSURE                       R26 K60 [PROTO_5]
      157 CAPTURE                          VAL R17
      158 CAPTURE                          VAL R6
      159 CAPTURE                          VAL R23
      160 SETTABLEKS                       R26 R25 K61 ["_getCellGroupHeader"]
      162 DUPCLOSURE                       R26 K62 [PROTO_6]
      163 CAPTURE                          VAL R17
      164 CAPTURE                          VAL R12
      165 SETTABLEKS                       R26 R25 K63 ["_getCellSize"]
      167 DUPCLOSURE                       R26 K64 [PROTO_7]
      168 CAPTURE                          VAL R17
      169 CAPTURE                          VAL R12
      170 SETTABLEKS                       R26 R25 K65 ["_getCellPadding"]
      172 DUPCLOSURE                       R26 K66 [PROTO_8]
      173 SETTABLEKS                       R26 R25 K67 ["_getCellsPerRow"]
      175 DUPCLOSURE                       R26 K68 [PROTO_9]
      176 SETTABLEKS                       R26 R25 K69 ["didMount"]
      178 DUPCLOSURE                       R26 K70 [PROTO_10]
      179 CAPTURE                          VAL R18
      180 SETTABLEKS                       R26 R25 K71 ["didUpdate"]
      182 DUPCLOSURE                       R26 K72 [PROTO_12]
      183 CAPTURE                          VAL R18
      184 CAPTURE                          VAL R21
      185 SETTABLEKS                       R26 R25 K73 ["_update"]
      187 DUPCLOSURE                       R26 K74 [PROTO_14]
      188 SETTABLEKS                       R26 R25 K75 ["_incrementRender"]
      190 DUPCLOSURE                       R26 K76 [PROTO_15]
      191 CAPTURE                          VAL R19
      192 SETTABLEKS                       R26 R25 K77 ["_getRange"]
      194 DUPCLOSURE                       R26 K78 [PROTO_17]
      195 CAPTURE                          VAL R8
      196 CAPTURE                          VAL R6
      197 SETTABLEKS                       R26 R25 K79 ["_getGroups"]
      199 DUPCLOSURE                       R26 K80 [PROTO_18]
      200 CAPTURE                          VAL R9
      201 SETTABLEKS                       R26 R25 K81 ["_calculateCellPosition"]
      203 DUPCLOSURE                       R26 K82 [PROTO_19]
      204 CAPTURE                          VAL R17
      205 SETTABLEKS                       R26 R25 K83 ["getDefaultCellProps"]
      207 DUPCLOSURE                       R26 K84 [PROTO_22]
      208 CAPTURE                          VAL R12
      209 CAPTURE                          VAL R9
      210 CAPTURE                          VAL R20
      211 CAPTURE                          VAL R14
      212 CAPTURE                          VAL R15
      213 CAPTURE                          VAL R7
      214 CAPTURE                          VAL R4
      215 CAPTURE                          VAL R10
      216 CAPTURE                          VAL R22
      217 CAPTURE                          VAL R11
      218 CAPTURE                          VAL R6
      219 SETTABLEKS                       R26 R25 K85 ["render"]
      221 DUPCLOSURE                       R26 K86 [PROTO_25]
      222 CAPTURE                          VAL R5
      223 CAPTURE                          VAL R6
      224 CAPTURE                          VAL R14
      225 SETTABLEKS                       R26 R25 K87 ["renderGroupHeaders"]
      227 MOVE                             R26 R2
      228 DUPTABLE                         R27 K88 [{"Stylizer"}]
      229 GETTABLEKS                       R28 R1 K45 ["Stylizer"]
      231 SETTABLEKS                       R28 R27 K45 ["Stylizer"]
      233 CALL                             R26 1 1
      234 MOVE                             R27 R25
      235 CALL                             R26 1 1
      236 MOVE                             R25 R26
      237 MOVE                             R26 R13
      238 MOVE                             R27 R25
      239 CALL                             R26 1 -1
      240 RETURN                           R26 -1
