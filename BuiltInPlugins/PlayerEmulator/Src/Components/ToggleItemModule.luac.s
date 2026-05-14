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
       14 DUPTABLE                         R8 K10 [{"AutomaticSize", "Size", "BackgroundTransparency"}]
       15 GETIMPORT                        R9 K13 [Enum.AutomaticSize.Y]
       17 SETTABLEKS                       R9 R8 K7 ["AutomaticSize"]
       19 GETIMPORT                        R9 K16 [UDim2.new]
       21 LOADN                            R10 1
       22 LOADN                            R11 0
       23 LOADN                            R12 0
       24 GETTABLEKS                       R13 R2 K17 ["TOGGLE_BUTTON_HEIGHT"]
       26 CALL                             R9 4 1
       27 SETTABLEKS                       R9 R8 K8 ["Size"]
       29 LOADN                            R9 1
       30 SETTABLEKS                       R9 R8 K9 ["BackgroundTransparency"]
       32 DUPTABLE                         R9 K21 [{"Layout", "TextLabel", "Toggle"}]
       33 GETUPVAL                         R10 0
       34 GETTABLEKS                       R10 R10 K5 ["createElement"]
       36 LOADK                            R11 K22 ["UIListLayout"]
       37 DUPTABLE                         R12 K27 [{"HorizontalFlex", "SortOrder", "FillDirection", "VerticalAlignment"}]
       38 GETIMPORT                        R13 K30 [Enum.UIFlexAlignment.SpaceBetween]
       40 SETTABLEKS                       R13 R12 K23 ["HorizontalFlex"]
       42 GETIMPORT                        R13 K32 [Enum.SortOrder.LayoutOrder]
       44 SETTABLEKS                       R13 R12 K24 ["SortOrder"]
       46 GETIMPORT                        R13 K34 [Enum.FillDirection.Horizontal]
       48 SETTABLEKS                       R13 R12 K25 ["FillDirection"]
       50 GETIMPORT                        R13 K36 [Enum.VerticalAlignment.Center]
       52 SETTABLEKS                       R13 R12 K26 ["VerticalAlignment"]
       54 CALL                             R10 2 1
       55 SETTABLEKS                       R10 R9 K18 ["Layout"]
       57 GETUPVAL                         R10 0
       58 GETTABLEKS                       R10 R10 K5 ["createElement"]
       60 GETUPVAL                         R11 1
       61 DUPTABLE                         R12 K42 [{"AutomaticSize", "StyleModifier", "Text", "TextXAlignment", "TextWrapped", "TextTruncate", "LayoutOrder"}]
       62 GETIMPORT                        R13 K44 [Enum.AutomaticSize.XY]
       64 SETTABLEKS                       R13 R12 K7 ["AutomaticSize"]
       66 JUMPIFNOT                        R5 ; [+2]
       67 LOADNIL                          R13
       68 JUMP                             ; [+3]
       69 GETUPVAL                         R13 2
       70 GETTABLEKS                       R13 R13 K45 ["Disabled"]
       72 SETTABLEKS                       R13 R12 K37 ["StyleModifier"]
       74 SETTABLEKS                       R3 R12 K38 ["Text"]
       76 GETIMPORT                        R13 K47 [Enum.TextXAlignment.Left]
       78 SETTABLEKS                       R13 R12 K39 ["TextXAlignment"]
       80 LOADB                            R13 1
       81 SETTABLEKS                       R13 R12 K40 ["TextWrapped"]
       83 GETIMPORT                        R13 K49 [Enum.TextTruncate.SplitWord]
       85 SETTABLEKS                       R13 R12 K41 ["TextTruncate"]
       87 LOADN                            R13 1
       88 SETTABLEKS                       R13 R12 K31 ["LayoutOrder"]
       90 DUPTABLE                         R13 K51 [{"FlexItem"}]
       91 GETUPVAL                         R14 0
       92 GETTABLEKS                       R14 R14 K5 ["createElement"]
       94 LOADK                            R15 K52 ["UIFlexItem"]
       95 DUPTABLE                         R16 K54 [{"FlexMode"}]
       96 GETIMPORT                        R17 K57 [Enum.UIFlexMode.Shrink]
       98 SETTABLEKS                       R17 R16 K53 ["FlexMode"]
      100 CALL                             R14 2 1
      101 SETTABLEKS                       R14 R13 K50 ["FlexItem"]
      103 CALL                             R10 3 1
      104 SETTABLEKS                       R10 R9 K19 ["TextLabel"]
      106 GETUPVAL                         R10 0
      107 GETTABLEKS                       R10 R10 K5 ["createElement"]
      109 GETUPVAL                         R11 3
      110 DUPTABLE                         R12 K60 [{"Disabled", "OnClick", "Selected", "LayoutOrder"}]
      111 NOT                              R13 R5
      112 SETTABLEKS                       R13 R12 K45 ["Disabled"]
      114 GETTABLEKS                       R13 R0 K61 ["onToggle"]
      116 SETTABLEKS                       R13 R12 K58 ["OnClick"]
      118 SETTABLEKS                       R4 R12 K59 ["Selected"]
      120 LOADN                            R13 2
      121 SETTABLEKS                       R13 R12 K31 ["LayoutOrder"]
      123 CALL                             R10 2 1
      124 SETTABLEKS                       R10 R9 K20 ["Toggle"]
      126 CALL                             R6 3 -1
      127 RETURN                           R6 -1

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
