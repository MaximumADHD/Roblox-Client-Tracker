PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["props"]
        3 GETTABLEKS                       R4 R3 K1 ["Stylizer"]
        5 GETTABLEKS                       R5 R3 K2 ["OnClick"]
        7 GETTABLEKS                       R6 R4 K3 ["searchPill"]
        9 GETUPVAL                         R7 1
       10 GETTABLEKS                       R7 R7 K4 ["lower"]
       12 MOVE                             R8 R1
       13 CALL                             R7 1 1
       14 GETUPVAL                         R8 2
       15 GETTABLEKS                       R8 R8 K5 ["createElement"]
       17 GETUPVAL                         R9 3
       18 DUPTABLE                         R10 K10 [{"AutomaticSize", "LayoutOrder", "OnClick", "Size", "Text"}]
       19 GETIMPORT                        R11 K13 [Enum.AutomaticSize.Y]
       21 SETTABLEKS                       R11 R10 K6 ["AutomaticSize"]
       23 SETTABLEKS                       R0 R10 K7 ["LayoutOrder"]
       25 SETTABLEKS                       R5 R10 K2 ["OnClick"]
       27 GETIMPORT                        R11 K16 [UDim2.new]
       29 LOADN                            R12 0
       30 MOVE                             R13 R2
       31 LOADN                            R14 0
       32 GETTABLEKS                       R15 R6 K17 ["textSize"]
       34 CALL                             R11 4 1
       35 SETTABLEKS                       R11 R10 K8 ["Size"]
       37 SETTABLEKS                       R7 R10 K9 ["Text"]
       39 CALL                             R8 2 -1
       40 RETURN                           R8 -1

PROTO_1:
        0 LENGTH                           R3 R0
        1 JUMPIFNOTEQKN                    R3 K0 [0] ; [+2]
        3 RETURN                           R0 0
        4 SUB                              R3 R2 R1
        5 LENGTH                           R6 R0
        6 DIV                              R5 R3 R6
        7 FASTCALL1                        MATH_FLOOR R5 ; [+2]
        8 GETIMPORT                        R4 K3 [math.floor]
       10 CALL                             R4 1 1
       11 GETIMPORT                        R5 K5 [ipairs]
       13 MOVE                             R6 R0
       14 CALL                             R5 1 3
       15 FORGPREP_INEXT                   R5
       16 GETTABLEKS                       R10 R9 K6 ["Width"]
       18 ADD                              R10 R10 R4
       19 SETTABLEKS                       R10 R9 K6 ["Width"]
       21 FORGLOOP                         R5 2 [inext] ; [-6]
       23 LENGTH                           R7 R0
       24 MUL                              R6 R4 R7
       25 SUB                              R5 R3 R6
       26 LENGTH                           R7 R0
       27 GETTABLE                         R6 R0 R7
       28 GETTABLEKS                       R7 R6 K6 ["Width"]
       30 ADD                              R7 R7 R5
       31 SETTABLEKS                       R7 R6 K6 ["Width"]
       33 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["Stylizer"]
        5 GETTABLEKS                       R2 R0 K2 ["Items"]
        7 GETTABLEKS                       R3 R0 K3 ["ItemMinWidth"]
        9 GETTABLEKS                       R4 R0 K4 ["MaxRowCount"]
       11 GETTABLEKS                       R5 R0 K5 ["AbsoluteSize"]
       13 GETTABLEKS                       R5 R5 K6 ["X"]
       15 NEWTABLE                         R6 0 0
       17 NEWTABLE                         R7 0 0
       19 LOADN                            R8 0
       20 GETTABLEKS                       R9 R1 K7 ["searchList"]
       22 GETTABLEKS                       R10 R1 K8 ["searchPill"]
       24 GETIMPORT                        R11 K10 [ipairs]
       26 MOVE                             R12 R2
       27 CALL                             R11 1 3
       28 FORGPREP_INEXT                   R11
       29 GETUPVAL                         R16 1
       30 MOVE                             R18 R15
       31 GETTABLEKS                       R19 R10 K11 ["textSize"]
       33 GETTABLEKS                       R20 R10 K12 ["font"]
       35 GETIMPORT                        R21 K15 [Vector2.new]
       37 MOVE                             R22 R5
       38 LOADK                            R23 K16 [∞]
       39 CALL                             R21 2 -1
       40 NAMECALL                         R16 R16 K17 ["GetTextSize"]
       42 CALL                             R16 -1 1
       43 GETTABLEKS                       R17 R16 K6 ["X"]
       45 ADD                              R18 R17 R3
       46 DUPTABLE                         R19 K20 [{"Item", "Width"}]
       47 SETTABLEKS                       R15 R19 K18 ["Item"]
       49 SETTABLEKS                       R18 R19 K19 ["Width"]
       51 MOVE                             R20 R8
       52 ADD                              R8 R8 R18
       53 JUMPIFEQKN                       R14 K21 [1] ; [+4]
       55 GETTABLEKS                       R21 R9 K22 ["buttonSpacing"]
       57 ADD                              R8 R8 R21
       58 JUMPIFNOTLT                      R5 R8 ; [+18]
       60 GETUPVAL                         R21 0
       61 GETTABLEKS                       R21 R21 K23 ["resizeRowItemsToAvailableSpace"]
       63 MOVE                             R22 R7
       64 MOVE                             R23 R20
       65 MOVE                             R24 R5
       66 CALL                             R21 3 0
       67 FASTCALL2                        TABLE_INSERT R6 R7 ; [+5]
       69 MOVE                             R22 R6
       70 MOVE                             R23 R7
       71 GETIMPORT                        R21 K26 [table.insert]
       73 CALL                             R21 2 0
       74 MOVE                             R8 R18
       75 NEWTABLE                         R7 0 0
       77 LENGTH                           R21 R6
       78 JUMPIFNOTLT                      R21 R4 ; [+12]
       80 FASTCALL2                        TABLE_INSERT R7 R19 ; [+5]
       82 MOVE                             R22 R7
       83 MOVE                             R23 R19
       84 GETIMPORT                        R21 K26 [table.insert]
       86 CALL                             R21 2 0
       87 JUMP                             ; [+1]
       88 JUMP                             ; [+2]
       89 FORGLOOP                         R11 2 [inext] ; [-61]
       91 LENGTH                           R11 R7
       92 LOADN                            R12 0
       93 JUMPIFNOTLT                      R12 R11 ; [+15]
       95 FASTCALL2                        TABLE_INSERT R6 R7 ; [+5]
       97 MOVE                             R12 R6
       98 MOVE                             R13 R7
       99 GETIMPORT                        R11 K26 [table.insert]
      101 CALL                             R11 2 0
      102 GETUPVAL                         R11 0
      103 GETTABLEKS                       R11 R11 K23 ["resizeRowItemsToAvailableSpace"]
      105 MOVE                             R12 R7
      106 MOVE                             R13 R8
      107 MOVE                             R14 R5
      108 CALL                             R11 3 0
      109 RETURN                           R6 1

PROTO_3:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 SETTABLEKS                       R1 R0 K0 ["onRenderItem"]
        7 DUPCLOSURE                       R1 K1 [PROTO_1]
        8 SETTABLEKS                       R1 R0 K2 ["resizeRowItemsToAvailableSpace"]
       10 NEWCLOSURE                       R1 P2
       11 CAPTURE                          VAL R0
       12 CAPTURE                          UPVAL U3
       13 SETTABLEKS                       R1 R0 K3 ["getRowMatrix"]
       15 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["LayoutOrder"]
        4 GETTABLEKS                       R3 R1 K2 ["Items"]
        6 GETTABLEKS                       R4 R1 K3 ["Position"]
        8 GETTABLEKS                       R5 R1 K4 ["Size"]
       10 GETTABLEKS                       R6 R1 K5 ["Stylizer"]
       12 GETTABLEKS                       R7 R6 K6 ["searchList"]
       14 GETTABLEKS                       R8 R0 K7 ["getRowMatrix"]
       16 CALL                             R8 0 1
       17 NEWTABLE                         R9 0 0
       19 GETIMPORT                        R10 K9 [pairs]
       21 MOVE                             R11 R8
       22 CALL                             R10 1 3
       23 FORGPREP_NEXT                    R10
       24 NEWTABLE                         R15 0 0
       26 GETIMPORT                        R16 K9 [pairs]
       28 MOVE                             R17 R14
       29 CALL                             R16 1 3
       30 FORGPREP_NEXT                    R16
       31 GETTABLEKS                       R21 R0 K10 ["onRenderItem"]
       33 MOVE                             R22 R19
       34 GETTABLEKS                       R23 R20 K11 ["Item"]
       36 GETTABLEKS                       R24 R20 K12 ["Width"]
       38 CALL                             R21 3 1
       39 FASTCALL2                        TABLE_INSERT R15 R21 ; [+5]
       41 MOVE                             R23 R15
       42 MOVE                             R24 R21
       43 GETIMPORT                        R22 K15 [table.insert]
       45 CALL                             R22 2 0
       46 FORGLOOP                         R16 2 ; [-16]
       48 GETUPVAL                         R16 0
       49 GETTABLEKS                       R16 R16 K16 ["createElement"]
       51 GETUPVAL                         R17 1
       52 DUPTABLE                         R18 K22 [{"AutomaticSize", "Layout", "LayoutOrder", "Size", "Spacing", "HorizontalAlignment", "VerticalAlignment"}]
       53 GETIMPORT                        R19 K25 [Enum.AutomaticSize.Y]
       55 SETTABLEKS                       R19 R18 K17 ["AutomaticSize"]
       57 GETIMPORT                        R19 K28 [Enum.FillDirection.Horizontal]
       59 SETTABLEKS                       R19 R18 K18 ["Layout"]
       61 SETTABLEKS                       R13 R18 K1 ["LayoutOrder"]
       63 GETIMPORT                        R19 K31 [UDim2.new]
       65 LOADN                            R20 1
       66 LOADN                            R21 0
       67 LOADN                            R22 0
       68 LOADN                            R23 0
       69 CALL                             R19 4 1
       70 SETTABLEKS                       R19 R18 K4 ["Size"]
       72 GETTABLEKS                       R19 R7 K32 ["buttonSpacing"]
       74 SETTABLEKS                       R19 R18 K19 ["Spacing"]
       76 GETIMPORT                        R19 K34 [Enum.HorizontalAlignment.Left]
       78 SETTABLEKS                       R19 R18 K20 ["HorizontalAlignment"]
       80 GETIMPORT                        R19 K36 [Enum.VerticalAlignment.Top]
       82 SETTABLEKS                       R19 R18 K21 ["VerticalAlignment"]
       84 MOVE                             R19 R15
       85 CALL                             R16 3 1
       86 FASTCALL2                        TABLE_INSERT R9 R16 ; [+5]
       88 MOVE                             R18 R9
       89 MOVE                             R19 R16
       90 GETIMPORT                        R17 K15 [table.insert]
       92 CALL                             R17 2 0
       93 FORGLOOP                         R10 2 ; [-70]
       95 GETUPVAL                         R10 0
       96 GETTABLEKS                       R10 R10 K16 ["createElement"]
       98 GETUPVAL                         R11 1
       99 GETUPVAL                         R12 2
      100 GETTABLEKS                       R12 R12 K37 ["join"]
      102 DUPTABLE                         R13 K38 [{"AutomaticSize", "Layout", "LayoutOrder", "Position", "Size", "Spacing"}]
      103 GETIMPORT                        R14 K25 [Enum.AutomaticSize.Y]
      105 SETTABLEKS                       R14 R13 K17 ["AutomaticSize"]
      107 GETIMPORT                        R14 K40 [Enum.FillDirection.Vertical]
      109 SETTABLEKS                       R14 R13 K18 ["Layout"]
      111 SETTABLEKS                       R2 R13 K1 ["LayoutOrder"]
      113 SETTABLEKS                       R4 R13 K3 ["Position"]
      115 SETTABLEKS                       R5 R13 K4 ["Size"]
      117 GETTABLEKS                       R14 R7 K32 ["buttonSpacing"]
      119 SETTABLEKS                       R14 R13 K19 ["Spacing"]
      121 GETTABLEKS                       R14 R1 K41 ["WrapperProps"]
      123 CALL                             R12 2 1
      124 MOVE                             R13 R9
      125 CALL                             R10 3 -1
      126 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["TextService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETTABLEKS                       R2 R0 K8 ["Packages"]
       15 GETIMPORT                        R3 K10 [require]
       17 GETTABLEKS                       R4 R2 K11 ["Framework"]
       19 CALL                             R3 1 1
       20 GETIMPORT                        R4 K10 [require]
       22 GETTABLEKS                       R5 R2 K12 ["Roact"]
       24 CALL                             R4 1 1
       25 GETTABLEKS                       R5 R3 K13 ["ContextServices"]
       27 GETIMPORT                        R6 K10 [require]
       29 GETTABLEKS                       R7 R2 K14 ["Dash"]
       31 CALL                             R6 1 1
       32 GETTABLEKS                       R7 R3 K15 ["UI"]
       34 GETTABLEKS                       R7 R7 K16 ["HoverArea"]
       36 GETTABLEKS                       R8 R3 K15 ["UI"]
       38 GETTABLEKS                       R8 R8 K17 ["Pane"]
       40 GETTABLEKS                       R9 R3 K18 ["Wrappers"]
       42 GETTABLEKS                       R9 R9 K19 ["withAbsoluteSizeAndPosition"]
       44 GETIMPORT                        R10 K10 [require]
       46 GETTABLEKS                       R11 R0 K20 ["Src"]
       48 GETTABLEKS                       R11 R11 K21 ["Util"]
       50 GETTABLEKS                       R11 R11 K22 ["multiLanguageUtils"]
       52 CALL                             R10 1 1
       53 GETIMPORT                        R11 K10 [require]
       55 GETTABLEKS                       R12 R0 K20 ["Src"]
       57 GETTABLEKS                       R12 R12 K23 ["Components"]
       59 GETTABLEKS                       R12 R12 K24 ["Categorization"]
       61 GETTABLEKS                       R12 R12 K25 ["SearchPill"]
       63 CALL                             R11 1 1
       64 GETTABLEKS                       R12 R5 K26 ["withContext"]
       66 GETTABLEKS                       R13 R4 K27 ["PureComponent"]
       68 LOADK                            R15 K28 ["SearchList"]
       69 NAMECALL                         R13 R13 K29 ["extend"]
       71 CALL                             R13 2 1
       72 DUPTABLE                         R14 K35 [{["ItemMinWidth"] = 0, ["MaxRowCount"] = ∞, ["Size"]}]
       73 GETIMPORT                        R15 K38 [UDim2.new]
       75 LOADN                            R16 1
       76 LOADN                            R17 0
       77 LOADN                            R18 0
       78 LOADN                            R19 0
       79 CALL                             R15 4 1
       80 SETTABLEKS                       R15 R14 K34 ["Size"]
       82 SETTABLEKS                       R14 R13 K39 ["defaultProps"]
       84 DUPCLOSURE                       R14 K40 [PROTO_3]
       85 CAPTURE                          VAL R10
       86 CAPTURE                          VAL R4
       87 CAPTURE                          VAL R11
       88 CAPTURE                          VAL R1
       89 SETTABLEKS                       R14 R13 K41 ["init"]
       91 DUPCLOSURE                       R14 K42 [PROTO_4]
       92 CAPTURE                          VAL R4
       93 CAPTURE                          VAL R8
       94 CAPTURE                          VAL R6
       95 SETTABLEKS                       R14 R13 K43 ["render"]
       97 MOVE                             R14 R12
       98 DUPTABLE                         R15 K45 [{"Stylizer"}]
       99 GETTABLEKS                       R16 R5 K44 ["Stylizer"]
      101 SETTABLEKS                       R16 R15 K44 ["Stylizer"]
      103 CALL                             R14 1 1
      104 MOVE                             R15 R13
      105 CALL                             R14 1 1
      106 MOVE                             R13 R14
      107 MOVE                             R14 R9
      108 MOVE                             R15 R13
      109 CALL                             R14 1 -1
      110 RETURN                           R14 -1
