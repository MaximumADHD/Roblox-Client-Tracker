PROTO_0:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"isSelected"}]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K2 ["state"]
        5 GETTABLEKS                       R4 R4 K0 ["isSelected"]
        7 NOT                              R3 R4
        8 SETTABLEKS                       R3 R2 K0 ["isSelected"]
       10 NAMECALL                         R0 R0 K3 ["setState"]
       12 CALL                             R0 2 0
       13 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R1 K1 [{"isSelected"}]
        1 LOADB                            R2 1
        2 SETTABLEKS                       R2 R1 K0 ["isSelected"]
        4 SETTABLEKS                       R1 R0 K2 ["state"]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R1 R0 K3 ["onClick"]
       10 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K5 [{"Layout", "AutomaticSize", "Padding", "Spacing"}]
        5 GETIMPORT                        R4 K9 [Enum.FillDirection.Vertical]
        7 SETTABLEKS                       R4 R3 K1 ["Layout"]
        9 GETIMPORT                        R4 K11 [Enum.AutomaticSize.Y]
       11 SETTABLEKS                       R4 R3 K2 ["AutomaticSize"]
       13 LOADN                            R4 10
       14 SETTABLEKS                       R4 R3 K3 ["Padding"]
       16 LOADN                            R4 15
       17 SETTABLEKS                       R4 R3 K4 ["Spacing"]
       19 DUPTABLE                         R4 K14 [{"DisabledRadioButton", "SelectedRadioButton"}]
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R5 R5 K0 ["createElement"]
       23 GETUPVAL                         R6 2
       24 DUPTABLE                         R7 K21 [{"Disabled", "Key", "LayoutOrder", "OnClick", "Selected", "Text"}]
       25 LOADB                            R8 1
       26 SETTABLEKS                       R8 R7 K15 ["Disabled"]
       28 LOADK                            R8 K22 ["KEY1"]
       29 SETTABLEKS                       R8 R7 K16 ["Key"]
       31 LOADN                            R8 0
       32 SETTABLEKS                       R8 R7 K17 ["LayoutOrder"]
       34 GETTABLEKS                       R8 R0 K23 ["onClick"]
       36 SETTABLEKS                       R8 R7 K18 ["OnClick"]
       38 LOADB                            R8 0
       39 SETTABLEKS                       R8 R7 K19 ["Selected"]
       41 LOADK                            R8 K15 ["Disabled"]
       42 SETTABLEKS                       R8 R7 K20 ["Text"]
       44 CALL                             R5 2 1
       45 SETTABLEKS                       R5 R4 K12 ["DisabledRadioButton"]
       47 GETUPVAL                         R5 0
       48 GETTABLEKS                       R5 R5 K0 ["createElement"]
       50 GETUPVAL                         R6 2
       51 DUPTABLE                         R7 K21 [{"Disabled", "Key", "LayoutOrder", "OnClick", "Selected", "Text"}]
       52 LOADB                            R8 0
       53 SETTABLEKS                       R8 R7 K15 ["Disabled"]
       55 LOADK                            R8 K24 ["KEY2"]
       56 SETTABLEKS                       R8 R7 K16 ["Key"]
       58 LOADN                            R8 1
       59 SETTABLEKS                       R8 R7 K17 ["LayoutOrder"]
       61 GETTABLEKS                       R8 R0 K23 ["onClick"]
       63 SETTABLEKS                       R8 R7 K18 ["OnClick"]
       65 GETTABLEKS                       R8 R0 K25 ["state"]
       67 GETTABLEKS                       R8 R8 K26 ["isSelected"]
       69 SETTABLEKS                       R8 R7 K19 ["Selected"]
       71 LOADK                            R8 K27 ["Clickable"]
       72 SETTABLEKS                       R8 R7 K20 ["Text"]
       74 CALL                             R5 2 1
       75 SETTABLEKS                       R5 R4 K13 ["SelectedRadioButton"]
       77 CALL                             R1 3 -1
       78 RETURN                           R1 -1

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
       22 GETTABLEKS                       R3 R3 K9 ["Pane"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K6 [require]
       27 GETTABLEKS                       R4 R0 K2 ["UI"]
       29 GETTABLEKS                       R4 R4 K8 ["Components"]
       31 GETTABLEKS                       R4 R4 K10 ["RadioButton"]
       33 CALL                             R3 1 1
       34 GETTABLEKS                       R4 R1 K11 ["PureComponent"]
       36 LOADK                            R6 K12 ["RadioButtons"]
       37 NAMECALL                         R4 R4 K13 ["extend"]
       39 CALL                             R4 2 1
       40 DUPCLOSURE                       R5 K14 [PROTO_1]
       41 SETTABLEKS                       R5 R4 K15 ["init"]
       43 DUPCLOSURE                       R5 K16 [PROTO_2]
       44 CAPTURE                          VAL R1
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R3
       47 SETTABLEKS                       R5 R4 K17 ["render"]
       49 RETURN                           R4 1
