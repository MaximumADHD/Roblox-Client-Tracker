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
       12 LOADN                            R9 350
       13 CALL                             R5 4 1
       14 SETTABLEKS                       R5 R4 K2 ["Size"]
       16 GETIMPORT                        R5 K11 [Enum.FillDirection.Vertical]
       18 SETTABLEKS                       R5 R4 K3 ["Layout"]
       20 DUPTABLE                         R5 K15 [{"Button1", "Button2", "ColorPicker"}]
       21 GETUPVAL                         R6 0
       22 GETTABLEKS                       R6 R6 K1 ["createElement"]
       24 GETUPVAL                         R7 2
       25 DUPTABLE                         R8 K21 [{["Text"] = "Reset to red", ["LayoutOrder"] = 1, ["Size"], ["OnClick"]}]
       26 GETIMPORT                        R9 K7 [UDim2.new]
       28 LOADN                            R10 1
       29 LOADN                            R11 0
       30 LOADN                            R12 0
       31 LOADN                            R13 25
       32 CALL                             R9 4 1
       33 SETTABLEKS                       R9 R8 K2 ["Size"]
       35 NEWCLOSURE                       R9 P0
       36 CAPTURE                          VAL R0
       37 SETTABLEKS                       R9 R8 K20 ["OnClick"]
       39 CALL                             R6 2 1
       40 SETTABLEKS                       R6 R5 K12 ["Button1"]
       42 GETUPVAL                         R6 0
       43 GETTABLEKS                       R6 R6 K1 ["createElement"]
       45 GETUPVAL                         R7 2
       46 DUPTABLE                         R8 K24 [{["Text"] = "Reset to blue", ["LayoutOrder"] = 2, ["Size"], ["OnClick"]}]
       47 GETIMPORT                        R9 K7 [UDim2.new]
       49 LOADN                            R10 1
       50 LOADN                            R11 0
       51 LOADN                            R12 0
       52 LOADN                            R13 25
       53 CALL                             R9 4 1
       54 SETTABLEKS                       R9 R8 K2 ["Size"]
       56 NEWCLOSURE                       R9 P1
       57 CAPTURE                          VAL R0
       58 SETTABLEKS                       R9 R8 K20 ["OnClick"]
       60 CALL                             R6 2 1
       61 SETTABLEKS                       R6 R5 K13 ["Button2"]
       63 GETUPVAL                         R6 0
       64 GETTABLEKS                       R6 R6 K1 ["createElement"]
       66 GETUPVAL                         R7 3
       67 DUPTABLE                         R8 K28 [{["LayoutOrder"] = 3, ["Size"], ["Color"], ["OnColorChanged"]}]
       68 GETIMPORT                        R9 K7 [UDim2.new]
       70 LOADN                            R10 1
       71 LOADN                            R11 0
       72 LOADN                            R12 0
       73 LOADN                            R13 300
       74 CALL                             R9 4 1
       75 SETTABLEKS                       R9 R8 K2 ["Size"]
       77 GETTABLEKS                       R9 R1 K26 ["Color"]
       79 SETTABLEKS                       R9 R8 K26 ["Color"]
       81 GETTABLEKS                       R9 R0 K29 ["onChanged"]
       83 SETTABLEKS                       R9 R8 K27 ["OnColorChanged"]
       85 CALL                             R6 2 1
       86 SETTABLEKS                       R6 R5 K14 ["ColorPicker"]
       88 CALL                             R2 3 -1
       89 RETURN                           R2 -1

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
       62 DUPTABLE                         R8 K26 [{["name"] = "Default", ["summary"] = "A color picker for users to view and edit a color3 value in a variety of ways.", ["story"]}]
       63 SETTABLEKS                       R5 R8 K25 ["story"]
       65 SETLIST                          R7 R8 1 [1]
       67 SETTABLEKS                       R7 R6 K19 ["stories"]
       69 RETURN                           R6 1
