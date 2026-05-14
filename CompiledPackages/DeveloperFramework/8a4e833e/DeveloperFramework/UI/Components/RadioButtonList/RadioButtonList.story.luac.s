PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K4 [{"Buttons", "FillDirection", "SelectedKey"}]
        5 NEWTABLE                         R3 0 4
        7 DUPTABLE                         R4 K7 [{"Key", "Text"}]
        8 LOADK                            R5 K8 ["KEY1"]
        9 SETTABLEKS                       R5 R4 K5 ["Key"]
       11 LOADK                            R5 K9 ["option text 1"]
       12 SETTABLEKS                       R5 R4 K6 ["Text"]
       14 DUPTABLE                         R5 K11 [{"Key", "Text", "Disabled"}]
       15 LOADK                            R6 K12 ["KEY2"]
       16 SETTABLEKS                       R6 R5 K5 ["Key"]
       18 LOADK                            R6 K13 ["option text 2"]
       19 SETTABLEKS                       R6 R5 K6 ["Text"]
       21 LOADB                            R6 0
       22 SETTABLEKS                       R6 R5 K10 ["Disabled"]
       24 DUPTABLE                         R6 K11 [{"Key", "Text", "Disabled"}]
       25 LOADK                            R7 K14 ["KEY3"]
       26 SETTABLEKS                       R7 R6 K5 ["Key"]
       28 LOADK                            R7 K15 ["option text 3"]
       29 SETTABLEKS                       R7 R6 K6 ["Text"]
       31 LOADB                            R7 0
       32 SETTABLEKS                       R7 R6 K10 ["Disabled"]
       34 DUPTABLE                         R7 K11 [{"Key", "Text", "Disabled"}]
       35 LOADK                            R8 K16 ["KEY4"]
       36 SETTABLEKS                       R8 R7 K5 ["Key"]
       38 LOADK                            R8 K17 ["disabled text"]
       39 SETTABLEKS                       R8 R7 K6 ["Text"]
       41 LOADB                            R8 1
       42 SETTABLEKS                       R8 R7 K10 ["Disabled"]
       44 SETLIST                          R3 R4 4 [1]
       46 SETTABLEKS                       R3 R2 K1 ["Buttons"]
       48 GETIMPORT                        R3 K20 [Enum.FillDirection.Vertical]
       50 SETTABLEKS                       R3 R2 K2 ["FillDirection"]
       52 LOADK                            R3 K8 ["KEY1"]
       53 SETTABLEKS                       R3 R2 K3 ["SelectedKey"]
       55 CALL                             R0 2 -1
       56 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K4 [{"Buttons", "FillDirection", "SelectedKey"}]
        5 NEWTABLE                         R3 0 3
        7 DUPTABLE                         R4 K8 [{"Key", "Text", "Disabled"}]
        8 LOADK                            R5 K9 ["KEY1"]
        9 SETTABLEKS                       R5 R4 K5 ["Key"]
       11 LOADK                            R5 K10 ["option text 1"]
       12 SETTABLEKS                       R5 R4 K6 ["Text"]
       14 LOADB                            R5 0
       15 SETTABLEKS                       R5 R4 K7 ["Disabled"]
       17 DUPTABLE                         R5 K8 [{"Key", "Text", "Disabled"}]
       18 LOADK                            R6 K11 ["KEY2"]
       19 SETTABLEKS                       R6 R5 K5 ["Key"]
       21 LOADK                            R6 K12 ["option text 2"]
       22 SETTABLEKS                       R6 R5 K6 ["Text"]
       24 LOADB                            R6 0
       25 SETTABLEKS                       R6 R5 K7 ["Disabled"]
       27 DUPTABLE                         R6 K8 [{"Key", "Text", "Disabled"}]
       28 LOADK                            R7 K13 ["KEY4"]
       29 SETTABLEKS                       R7 R6 K5 ["Key"]
       31 LOADK                            R7 K14 ["disabled text"]
       32 SETTABLEKS                       R7 R6 K6 ["Text"]
       34 LOADB                            R7 1
       35 SETTABLEKS                       R7 R6 K7 ["Disabled"]
       37 SETLIST                          R3 R4 3 [1]
       39 SETTABLEKS                       R3 R2 K1 ["Buttons"]
       41 GETIMPORT                        R3 K17 [Enum.FillDirection.Horizontal]
       43 SETTABLEKS                       R3 R2 K2 ["FillDirection"]
       45 LOADK                            R3 K11 ["KEY2"]
       46 SETTABLEKS                       R3 R2 K3 ["SelectedKey"]
       48 CALL                             R0 2 -1
       49 RETURN                           R0 -1

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
       28 DUPTABLE                         R5 K14 [{"name", "story"}]
       29 LOADK                            R6 K15 ["Vertical List"]
       30 SETTABLEKS                       R6 R5 K12 ["name"]
       32 DUPCLOSURE                       R6 K16 [PROTO_0]
       33 CAPTURE                          VAL R1
       34 CAPTURE                          VAL R2
       35 SETTABLEKS                       R6 R5 K13 ["story"]
       37 DUPTABLE                         R6 K14 [{"name", "story"}]
       38 LOADK                            R7 K17 ["Horizontal List"]
       39 SETTABLEKS                       R7 R6 K12 ["name"]
       41 DUPCLOSURE                       R7 K18 [PROTO_1]
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R2
       44 SETTABLEKS                       R7 R6 K13 ["story"]
       46 SETLIST                          R4 R5 2 [1]
       48 SETTABLEKS                       R4 R3 K10 ["stories"]
       50 RETURN                           R3 1
