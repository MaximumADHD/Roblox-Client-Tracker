PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["GroupRowHeight"]
        3 MUL                              R1 R2 R0
        4 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 LOADNIL                          R3
        5 GETTABLEKS                       R4 R1 K2 ["ToggleListView"]
        7 JUMPIFNOT                        R4 ; [+7]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K3 ["GroupRowWidth"]
       11 GETTABLEKS                       R5 R2 K4 ["ScrollBarThickness"]
       13 ADD                              R3 R4 R5
       14 JUMP                             ; [+3]
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R3 R4 K3 ["GroupRowWidth"]
       18 NEWTABLE                         R4 0 0
       20 GETIMPORT                        R5 K6 [ipairs]
       22 GETTABLEKS                       R6 R1 K7 ["Groups"]
       24 CALL                             R5 1 3
       25 FORGPREP_INEXT                   R5
       26 GETTABLEKS                       R10 R9 K8 ["Name"]
       28 GETUPVAL                         R11 1
       29 GETTABLEKS                       R11 R11 K9 ["createElement"]
       31 GETUPVAL                         R12 2
       32 DUPTABLE                         R13 K16 [{"Group", "Groups", "GroupsShown", "LayoutOrder", "Window", "Hovered", "OnRowHovered"}]
       33 SETTABLEKS                       R9 R13 K10 ["Group"]
       35 GETTABLEKS                       R14 R1 K7 ["Groups"]
       37 SETTABLEKS                       R14 R13 K7 ["Groups"]
       39 SETTABLEKS                       R8 R13 K11 ["GroupsShown"]
       41 SETTABLEKS                       R8 R13 K12 ["LayoutOrder"]
       43 GETTABLEKS                       R14 R1 K13 ["Window"]
       45 SETTABLEKS                       R14 R13 K13 ["Window"]
       47 GETTABLEKS                       R15 R1 K17 ["RowHovered"]
       49 GETTABLEKS                       R16 R9 K8 ["Name"]
       51 JUMPIFEQ                         R15 R16 ; [+2]
       53 LOADB                            R14 0 +1
       54 LOADB                            R14 1
       55 SETTABLEKS                       R14 R13 K14 ["Hovered"]
       57 GETTABLEKS                       R14 R1 K15 ["OnRowHovered"]
       59 SETTABLEKS                       R14 R13 K15 ["OnRowHovered"]
       61 CALL                             R11 2 1
       62 SETTABLE                         R11 R4 R10
       63 FORGLOOP                         R5 2 [inext] ; [-38]
       65 GETUPVAL                         R5 1
       66 GETTABLEKS                       R5 R5 K9 ["createElement"]
       68 GETUPVAL                         R6 3
       69 DUPTABLE                         R7 K26 [{"Size", "AutomaticCanvasSize", "CanvasPosition", "LayoutOrder", "EnableScrollBarBackground", "ScrollingEnabled", "Style", "Layout", "Padding"}]
       70 GETIMPORT                        R8 K29 [UDim2.new]
       72 LOADN                            R9 0
       73 MOVE                             R10 R3
       74 LOADN                            R11 1
       75 GETTABLEKS                       R13 R2 K4 ["ScrollBarThickness"]
       77 MINUS                            R12 R13
       78 CALL                             R8 4 1
       79 SETTABLEKS                       R8 R7 K18 ["Size"]
       81 GETIMPORT                        R8 K33 [Enum.AutomaticSize.XY]
       83 SETTABLEKS                       R8 R7 K19 ["AutomaticCanvasSize"]
       85 GETIMPORT                        R8 K35 [Vector2.new]
       87 LOADN                            R9 0
       88 GETTABLEKS                       R10 R1 K36 ["ScrollPositionY"]
       90 CALL                             R8 2 1
       91 SETTABLEKS                       R8 R7 K20 ["CanvasPosition"]
       93 GETTABLEKS                       R8 R1 K12 ["LayoutOrder"]
       95 SETTABLEKS                       R8 R7 K12 ["LayoutOrder"]
       97 LOADB                            R8 0
       98 SETTABLEKS                       R8 R7 K21 ["EnableScrollBarBackground"]
      100 GETTABLEKS                       R8 R1 K2 ["ToggleListView"]
      102 SETTABLEKS                       R8 R7 K22 ["ScrollingEnabled"]
      104 GETTABLEKS                       R9 R1 K2 ["ToggleListView"]
      106 JUMPIF                           R9 ; [+3]
      107 GETTABLEKS                       R8 R2 K37 ["ScrollingFrameNoBar"]
      109 JUMP                             ; [+1]
      110 LOADNIL                          R8
      111 SETTABLEKS                       R8 R7 K23 ["Style"]
      113 GETIMPORT                        R8 K40 [Enum.FillDirection.Vertical]
      115 SETTABLEKS                       R8 R7 K24 ["Layout"]
      117 GETTABLEKS                       R8 R2 K41 ["GroupLabelColumn"]
      119 GETTABLEKS                       R8 R8 K25 ["Padding"]
      121 SETTABLEKS                       R8 R7 K25 ["Padding"]
      123 MOVE                             R8 R4
      124 CALL                             R5 3 -1
      125 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["ContextServices"]
       25 GETTABLEKS                       R4 R2 K9 ["UI"]
       27 GETTABLEKS                       R5 R4 K10 ["ScrollingFrame"]
       29 GETIMPORT                        R6 K4 [require]
       31 GETIMPORT                        R7 K1 [script]
       33 GETTABLEKS                       R7 R7 K2 ["Parent"]
       35 GETTABLEKS                       R7 R7 K2 ["Parent"]
       37 GETTABLEKS                       R7 R7 K11 ["Constants"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K4 [require]
       42 GETIMPORT                        R8 K1 [script]
       44 GETTABLEKS                       R8 R8 K2 ["Parent"]
       46 GETTABLEKS                       R8 R8 K12 ["GroupLabel"]
       48 CALL                             R7 1 1
       49 GETTABLEKS                       R8 R1 K13 ["PureComponent"]
       51 LOADK                            R10 K14 ["GroupLabelColumn"]
       52 NAMECALL                         R8 R8 K15 ["extend"]
       54 CALL                             R8 2 1
       55 DUPCLOSURE                       R9 K16 [PROTO_0]
       56 CAPTURE                          VAL R6
       57 SETTABLEKS                       R9 R8 K17 ["CalculateColumnHeight"]
       59 DUPCLOSURE                       R9 K18 [PROTO_1]
       60 CAPTURE                          VAL R6
       61 CAPTURE                          VAL R1
       62 CAPTURE                          VAL R7
       63 CAPTURE                          VAL R5
       64 SETTABLEKS                       R9 R8 K19 ["render"]
       66 GETTABLEKS                       R9 R3 K20 ["withContext"]
       68 DUPTABLE                         R10 K22 [{"Stylizer"}]
       69 GETTABLEKS                       R11 R3 K21 ["Stylizer"]
       71 SETTABLEKS                       R11 R10 K21 ["Stylizer"]
       73 CALL                             R9 1 1
       74 MOVE                             R10 R8
       75 CALL                             R9 1 1
       76 MOVE                             R8 R9
       77 RETURN                           R8 1
