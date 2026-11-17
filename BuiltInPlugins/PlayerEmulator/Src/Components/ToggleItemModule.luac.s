PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["Enabled"]
        5 JUMPIFNOT                        R1 ; [+15]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["Key"]
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K3 ["ToggleCallback"]
       12 MOVE                             R4 R2
       13 MOVE                             R5 R0
       14 GETUPVAL                         R6 1
       15 GETTABLEKS                       R6 R6 K4 ["Plugin"]
       17 NAMECALL                         R6 R6 K5 ["get"]
       19 CALL                             R6 1 -1
       20 CALL                             R3 -1 0
       21 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 SETTABLEKS                       R2 R0 K0 ["onToggle"]
        5 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Key"]
        6 GETTABLEKS                       R4 R1 K3 ["IsOn"]
        8 GETTABLEKS                       R5 R1 K4 ["Enabled"]
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R6 R6 K5 ["createElement"]
       13 LOADK                            R7 K6 ["Frame"]
       14 DUPTABLE                         R8 K11 [{["AutomaticSize"], ["Size"], ["BackgroundTransparency"] = 1}]
       15 GETIMPORT                        R9 K14 [Enum.AutomaticSize.Y]
       17 SETTABLEKS                       R9 R8 K7 ["AutomaticSize"]
       19 GETIMPORT                        R9 K17 [UDim2.new]
       21 LOADN                            R10 1
       22 LOADN                            R11 0
       23 LOADN                            R12 0
       24 GETTABLEKS                       R13 R2 K18 ["TOGGLE_BUTTON_HEIGHT"]
       26 CALL                             R9 4 1
       27 SETTABLEKS                       R9 R8 K8 ["Size"]
       29 DUPTABLE                         R9 K22 [{"Layout", "TextLabel", "Toggle"}]
       30 GETUPVAL                         R10 0
       31 GETTABLEKS                       R10 R10 K5 ["createElement"]
       33 LOADK                            R11 K23 ["UIListLayout"]
       34 DUPTABLE                         R12 K28 [{"HorizontalFlex", "SortOrder", "FillDirection", "VerticalAlignment"}]
       35 GETIMPORT                        R13 K31 [Enum.UIFlexAlignment.SpaceBetween]
       37 SETTABLEKS                       R13 R12 K24 ["HorizontalFlex"]
       39 GETIMPORT                        R13 K33 [Enum.SortOrder.LayoutOrder]
       41 SETTABLEKS                       R13 R12 K25 ["SortOrder"]
       43 GETIMPORT                        R13 K35 [Enum.FillDirection.Horizontal]
       45 SETTABLEKS                       R13 R12 K26 ["FillDirection"]
       47 GETIMPORT                        R13 K37 [Enum.VerticalAlignment.Center]
       49 SETTABLEKS                       R13 R12 K27 ["VerticalAlignment"]
       51 CALL                             R10 2 1
       52 SETTABLEKS                       R10 R9 K19 ["Layout"]
       54 GETUPVAL                         R10 0
       55 GETTABLEKS                       R10 R10 K5 ["createElement"]
       57 GETUPVAL                         R11 1
       58 DUPTABLE                         R12 K44 [{["AutomaticSize"], ["StyleModifier"], ["Text"], ["TextXAlignment"], ["TextWrapped"] = True, ["TextTruncate"], ["LayoutOrder"] = 1}]
       59 GETIMPORT                        R13 K46 [Enum.AutomaticSize.XY]
       61 SETTABLEKS                       R13 R12 K7 ["AutomaticSize"]
       63 JUMPIFNOT                        R5 ; [+2]
       64 LOADNIL                          R13
       65 JUMP                             ; [+3]
       66 GETUPVAL                         R13 2
       67 GETTABLEKS                       R13 R13 K47 ["Disabled"]
       69 SETTABLEKS                       R13 R12 K38 ["StyleModifier"]
       71 SETTABLEKS                       R3 R12 K39 ["Text"]
       73 GETIMPORT                        R13 K49 [Enum.TextXAlignment.Left]
       75 SETTABLEKS                       R13 R12 K40 ["TextXAlignment"]
       77 GETIMPORT                        R13 K51 [Enum.TextTruncate.SplitWord]
       79 SETTABLEKS                       R13 R12 K43 ["TextTruncate"]
       81 DUPTABLE                         R13 K53 [{"FlexItem"}]
       82 GETUPVAL                         R14 0
       83 GETTABLEKS                       R14 R14 K5 ["createElement"]
       85 LOADK                            R15 K54 ["UIFlexItem"]
       86 DUPTABLE                         R16 K56 [{"FlexMode"}]
       87 GETIMPORT                        R17 K59 [Enum.UIFlexMode.Shrink]
       89 SETTABLEKS                       R17 R16 K55 ["FlexMode"]
       91 CALL                             R14 2 1
       92 SETTABLEKS                       R14 R13 K52 ["FlexItem"]
       94 CALL                             R10 3 1
       95 SETTABLEKS                       R10 R9 K20 ["TextLabel"]
       97 GETUPVAL                         R10 0
       98 GETTABLEKS                       R10 R10 K5 ["createElement"]
      100 GETUPVAL                         R11 3
      101 DUPTABLE                         R12 K63 [{["Disabled"], ["OnClick"], ["Selected"], ["LayoutOrder"] = 2}]
      102 NOT                              R13 R5
      103 SETTABLEKS                       R13 R12 K47 ["Disabled"]
      105 GETTABLEKS                       R13 R0 K64 ["onToggle"]
      107 SETTABLEKS                       R13 R12 K60 ["OnClick"]
      109 SETTABLEKS                       R4 R12 K61 ["Selected"]
      111 CALL                             R10 2 1
      112 SETTABLEKS                       R10 R9 K21 ["Toggle"]
      114 CALL                             R6 3 -1
      115 RETURN                           R6 -1

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
       25 GETTABLEKS                       R4 R3 K9 ["withContext"]
       27 GETTABLEKS                       R5 R2 K10 ["UI"]
       29 GETTABLEKS                       R6 R5 K11 ["TextLabel"]
       31 GETTABLEKS                       R7 R5 K12 ["ToggleButton"]
       33 GETTABLEKS                       R8 R2 K13 ["Util"]
       35 GETTABLEKS                       R8 R8 K14 ["StyleModifier"]
       37 GETTABLEKS                       R9 R1 K15 ["PureComponent"]
       39 LOADK                            R11 K16 ["ToggleItemModule"]
       40 NAMECALL                         R9 R9 K17 ["extend"]
       42 CALL                             R9 2 1
       43 DUPCLOSURE                       R10 K18 [PROTO_1]
       44 SETTABLEKS                       R10 R9 K19 ["init"]
       46 DUPCLOSURE                       R10 K20 [PROTO_2]
       47 CAPTURE                          VAL R1
       48 CAPTURE                          VAL R6
       49 CAPTURE                          VAL R8
       50 CAPTURE                          VAL R7
       51 SETTABLEKS                       R10 R9 K21 ["render"]
       53 MOVE                             R10 R4
       54 DUPTABLE                         R11 K24 [{"Plugin", "Stylizer"}]
       55 GETTABLEKS                       R12 R3 K22 ["Plugin"]
       57 SETTABLEKS                       R12 R11 K22 ["Plugin"]
       59 GETTABLEKS                       R12 R3 K23 ["Stylizer"]
       61 SETTABLEKS                       R12 R11 K23 ["Stylizer"]
       63 CALL                             R10 1 1
       64 MOVE                             R11 R9
       65 CALL                             R10 1 1
       66 MOVE                             R9 R10
       67 RETURN                           R9 1
