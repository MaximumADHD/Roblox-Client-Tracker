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
        0 DUPTABLE                         R1 K2 [{[1] = True}]
        1 SETTABLEKS                       R1 R0 K3 ["state"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          VAL R0
        5 SETTABLEKS                       R1 R0 K4 ["onClick"]
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K7 [{["Layout"], ["AutomaticSize"], ["Padding"] = 10, ["Spacing"] = 15}]
        5 GETIMPORT                        R4 K11 [Enum.FillDirection.Vertical]
        7 SETTABLEKS                       R4 R3 K1 ["Layout"]
        9 GETIMPORT                        R4 K13 [Enum.AutomaticSize.Y]
       11 SETTABLEKS                       R4 R3 K2 ["AutomaticSize"]
       13 DUPTABLE                         R4 K16 [{"DisabledRadioButton", "SelectedRadioButton"}]
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R5 R5 K0 ["createElement"]
       17 GETUPVAL                         R6 2
       18 DUPTABLE                         R7 K27 [{["Disabled"] = True, ["Key"] = "KEY1", ["LayoutOrder"] = 0, ["OnClick"], ["Selected"] = False, ["Text"] = "Disabled"}]
       19 GETTABLEKS                       R8 R0 K28 ["onClick"]
       21 SETTABLEKS                       R8 R7 K23 ["OnClick"]
       23 CALL                             R5 2 1
       24 SETTABLEKS                       R5 R4 K14 ["DisabledRadioButton"]
       26 GETUPVAL                         R5 0
       27 GETTABLEKS                       R5 R5 K0 ["createElement"]
       29 GETUPVAL                         R6 2
       30 DUPTABLE                         R7 K32 [{["Disabled"] = False, ["Key"] = "KEY2", ["LayoutOrder"] = 1, ["OnClick"], ["Selected"], ["Text"] = "Clickable"}]
       31 GETTABLEKS                       R8 R0 K28 ["onClick"]
       33 SETTABLEKS                       R8 R7 K23 ["OnClick"]
       35 GETTABLEKS                       R8 R0 K33 ["state"]
       37 GETTABLEKS                       R8 R8 K34 ["isSelected"]
       39 SETTABLEKS                       R8 R7 K24 ["Selected"]
       41 CALL                             R5 2 1
       42 SETTABLEKS                       R5 R4 K15 ["SelectedRadioButton"]
       44 CALL                             R1 3 -1
       45 RETURN                           R1 -1

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
