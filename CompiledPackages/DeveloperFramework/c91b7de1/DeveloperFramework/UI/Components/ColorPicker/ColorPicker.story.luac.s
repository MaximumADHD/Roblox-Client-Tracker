PROTO_0:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["color changed to "]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 GETUPVAL                         R1 0
        6 DUPTABLE                         R3 K4 [{"Color"}]
        7 SETTABLEKS                       R0 R3 K3 ["Color"]
        9 NAMECALL                         R1 R1 K5 ["setState"]
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R1 K1 [{"Color"}]
        1 GETIMPORT                        R2 K4 [Color3.new]
        3 LOADN                            R3 1
        4 LOADN                            R4 0
        5 LOADN                            R5 0
        6 CALL                             R2 3 1
        7 SETTABLEKS                       R2 R1 K0 ["Color"]
        9 SETTABLEKS                       R1 R0 K5 ["state"]
       11 NEWCLOSURE                       R1 P0
       12 CAPTURE                          VAL R0
       13 SETTABLEKS                       R1 R0 K6 ["onChanged"]
       15 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onChanged"]
        3 GETIMPORT                        R1 K3 [Color3.new]
        5 LOADN                            R2 1
        6 LOADN                            R3 0
        7 LOADN                            R4 0
        8 CALL                             R1 3 -1
        9 CALL                             R0 -1 0
       10 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onChanged"]
        3 GETIMPORT                        R1 K3 [Color3.new]
        5 LOADN                            R2 0
        6 LOADN                            R3 0
        7 LOADN                            R4 1
        8 CALL                             R1 3 -1
        9 CALL                             R0 -1 0
       10 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["state"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["createElement"]
        5 GETUPVAL                         R3 1
        6 DUPTABLE                         R4 K4 [{"Size", "Layout"}]
        7 GETIMPORT                        R5 K7 [UDim2.new]
        9 LOADN                            R6 1
       10 LOADN                            R7 0
       11 LOADN                            R8 0
       12 LOADN                            R9 94
       13 CALL                             R5 4 1
       14 SETTABLEKS                       R5 R4 K2 ["Size"]
       16 GETIMPORT                        R5 K11 [Enum.FillDirection.Vertical]
       18 SETTABLEKS                       R5 R4 K3 ["Layout"]
       20 DUPTABLE                         R5 K15 [{"Button1", "Button2", "ColorPicker"}]
       21 GETUPVAL                         R6 0
       22 GETTABLEKS                       R6 R6 K1 ["createElement"]
       24 GETUPVAL                         R7 2
       25 DUPTABLE                         R8 K19 [{"Text", "LayoutOrder", "Size", "OnClick"}]
       26 LOADK                            R9 K20 ["Reset to red"]
       27 SETTABLEKS                       R9 R8 K16 ["Text"]
       29 LOADN                            R9 1
       30 SETTABLEKS                       R9 R8 K17 ["LayoutOrder"]
       32 GETIMPORT                        R9 K7 [UDim2.new]
       34 LOADN                            R10 1
       35 LOADN                            R11 0
       36 LOADN                            R12 0
       37 LOADN                            R13 25
       38 CALL                             R9 4 1
       39 SETTABLEKS                       R9 R8 K2 ["Size"]
       41 NEWCLOSURE                       R9 P0
       42 CAPTURE                          VAL R0
       43 SETTABLEKS                       R9 R8 K18 ["OnClick"]
       45 CALL                             R6 2 1
       46 SETTABLEKS                       R6 R5 K12 ["Button1"]
       48 GETUPVAL                         R6 0
       49 GETTABLEKS                       R6 R6 K1 ["createElement"]
       51 GETUPVAL                         R7 2
       52 DUPTABLE                         R8 K19 [{"Text", "LayoutOrder", "Size", "OnClick"}]
       53 LOADK                            R9 K21 ["Reset to blue"]
       54 SETTABLEKS                       R9 R8 K16 ["Text"]
       56 LOADN                            R9 2
       57 SETTABLEKS                       R9 R8 K17 ["LayoutOrder"]
       59 GETIMPORT                        R9 K7 [UDim2.new]
       61 LOADN                            R10 1
       62 LOADN                            R11 0
       63 LOADN                            R12 0
       64 LOADN                            R13 25
       65 CALL                             R9 4 1
       66 SETTABLEKS                       R9 R8 K2 ["Size"]
       68 NEWCLOSURE                       R9 P1
       69 CAPTURE                          VAL R0
       70 SETTABLEKS                       R9 R8 K18 ["OnClick"]
       72 CALL                             R6 2 1
       73 SETTABLEKS                       R6 R5 K13 ["Button2"]
       75 GETUPVAL                         R6 0
       76 GETTABLEKS                       R6 R6 K1 ["createElement"]
       78 GETUPVAL                         R7 3
       79 DUPTABLE                         R8 K24 [{"LayoutOrder", "Size", "Color", "OnColorChanged"}]
       80 LOADN                            R9 3
       81 SETTABLEKS                       R9 R8 K17 ["LayoutOrder"]
       83 GETIMPORT                        R9 K7 [UDim2.new]
       85 LOADN                            R10 1
       86 LOADN                            R11 0
       87 LOADN                            R12 0
       88 LOADN                            R13 44
       89 CALL                             R9 4 1
       90 SETTABLEKS                       R9 R8 K2 ["Size"]
       92 GETTABLEKS                       R9 R1 K22 ["Color"]
       94 SETTABLEKS                       R9 R8 K22 ["Color"]
       96 GETTABLEKS                       R9 R0 K25 ["onChanged"]
       98 SETTABLEKS                       R9 R8 K23 ["OnColorChanged"]
      100 CALL                             R6 2 1
      101 SETTABLEKS                       R6 R5 K14 ["ColorPicker"]
      103 CALL                             R2 3 -1
      104 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K2 ["UI"]
       20 GETTABLEKS                       R3 R3 K8 ["Components"]
       22 GETTABLEKS                       R3 R3 K9 ["ColorPicker"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K6 [require]
       27 GETTABLEKS                       R4 R0 K2 ["UI"]
       29 GETTABLEKS                       R4 R4 K8 ["Components"]
       31 GETTABLEKS                       R4 R4 K10 ["Pane"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K6 [require]
       36 GETTABLEKS                       R5 R0 K2 ["UI"]
       38 GETTABLEKS                       R5 R5 K8 ["Components"]
       40 GETTABLEKS                       R5 R5 K11 ["DEPRECATED_Button"]
       42 CALL                             R4 1 1
       43 GETTABLEKS                       R5 R1 K12 ["PureComponent"]
       45 LOADK                            R7 K13 ["ColorPickerStory"]
       46 NAMECALL                         R5 R5 K14 ["extend"]
       48 CALL                             R5 2 1
       49 DUPCLOSURE                       R6 K15 [PROTO_1]
       50 SETTABLEKS                       R6 R5 K16 ["init"]
       52 DUPCLOSURE                       R6 K17 [PROTO_4]
       53 CAPTURE                          VAL R1
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R4
       56 CAPTURE                          VAL R2
       57 SETTABLEKS                       R6 R5 K18 ["render"]
       59 DUPTABLE                         R6 K20 [{"stories"}]
       60 NEWTABLE                         R7 0 1
       62 DUPTABLE                         R8 K24 [{"name", "summary", "story"}]
       63 LOADK                            R9 K25 ["Default"]
       64 SETTABLEKS                       R9 R8 K21 ["name"]
       66 LOADK                            R9 K26 ["A color picker for users to view and edit a color3 value in a variety of ways."]
       67 SETTABLEKS                       R9 R8 K22 ["summary"]
       69 SETTABLEKS                       R5 R8 K23 ["story"]
       71 SETLIST                          R7 R8 1 [1]
       73 SETTABLEKS                       R7 R6 K19 ["stories"]
       75 RETURN                           R6 1
