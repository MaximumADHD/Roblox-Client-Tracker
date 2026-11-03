PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K5 [{["Buttons"], ["FillDirection"], ["SelectedKey"] = "KEY1"}]
        5 NEWTABLE                         R3 0 4
        7 DUPTABLE                         R4 K9 [{["Key"] = "KEY1", ["Text"] = "option text 1"}]
        8 DUPTABLE                         R5 K14 [{["Key"] = "KEY2", ["Text"] = "option text 2", ["Disabled"] = False}]
        9 DUPTABLE                         R6 K17 [{["Key"] = "KEY3", ["Text"] = "option text 3", ["Disabled"] = False}]
       10 DUPTABLE                         R7 K21 [{["Key"] = "KEY4", ["Text"] = "disabled text", ["Disabled"] = True}]
       11 SETLIST                          R3 R4 4 [1]
       13 SETTABLEKS                       R3 R2 K1 ["Buttons"]
       15 GETIMPORT                        R3 K24 [Enum.FillDirection.Vertical]
       17 SETTABLEKS                       R3 R2 K2 ["FillDirection"]
       19 CALL                             R0 2 -1
       20 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K5 [{["Buttons"], ["FillDirection"], ["SelectedKey"] = "KEY2"}]
        5 NEWTABLE                         R3 0 3
        7 DUPTABLE                         R4 K12 [{["Key"] = "KEY1", ["Text"] = "option text 1", ["Disabled"] = False}]
        8 DUPTABLE                         R5 K14 [{["Key"] = "KEY2", ["Text"] = "option text 2", ["Disabled"] = False}]
        9 DUPTABLE                         R6 K18 [{["Key"] = "KEY4", ["Text"] = "disabled text", ["Disabled"] = True}]
       10 SETLIST                          R3 R4 3 [1]
       12 SETTABLEKS                       R3 R2 K1 ["Buttons"]
       14 GETIMPORT                        R3 K21 [Enum.FillDirection.Horizontal]
       16 SETTABLEKS                       R3 R2 K2 ["FillDirection"]
       18 CALL                             R0 2 -1
       19 RETURN                           R0 -1

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
       22 GETTABLEKS                       R3 R3 K9 ["RadioButtonList"]
       24 CALL                             R2 1 1
       25 DUPTABLE                         R3 K11 [{"stories"}]
       26 NEWTABLE                         R4 0 2
       28 DUPTABLE                         R5 K15 [{["name"] = "Vertical List", ["story"]}]
       29 DUPCLOSURE                       R6 K16 [PROTO_0]
       30 CAPTURE                          VAL R1
       31 CAPTURE                          VAL R2
       32 SETTABLEKS                       R6 R5 K14 ["story"]
       34 DUPTABLE                         R6 K18 [{["name"] = "Horizontal List", ["story"]}]
       35 DUPCLOSURE                       R7 K19 [PROTO_1]
       36 CAPTURE                          VAL R1
       37 CAPTURE                          VAL R2
       38 SETTABLEKS                       R7 R6 K14 ["story"]
       40 SETLIST                          R4 R5 2 [1]
       42 SETTABLEKS                       R4 R3 K10 ["stories"]
       44 RETURN                           R3 1
