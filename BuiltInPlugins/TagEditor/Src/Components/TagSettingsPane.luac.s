PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{"Layout", "VerticalAlignment"}]
        5 GETIMPORT                        R4 K7 [Enum.FillDirection.Vertical]
        7 SETTABLEKS                       R4 R3 K1 ["Layout"]
        9 GETIMPORT                        R4 K9 [Enum.VerticalAlignment.Top]
       11 SETTABLEKS                       R4 R3 K2 ["VerticalAlignment"]
       13 DUPTABLE                         R4 K12 [{"TagSettingsToggleButton", "TagSettingsList"}]
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R5 R5 K0 ["createElement"]
       17 GETUPVAL                         R6 2
       18 DUPTABLE                         R7 K15 [{["LayoutOrder"] = 1}]
       19 CALL                             R5 2 1
       20 SETTABLEKS                       R5 R4 K10 ["TagSettingsToggleButton"]
       22 GETUPVAL                         R5 0
       23 GETTABLEKS                       R5 R5 K0 ["createElement"]
       25 GETUPVAL                         R6 3
       26 DUPTABLE                         R7 K17 [{["LayoutOrder"] = 2}]
       27 CALL                             R5 2 1
       28 SETTABLEKS                       R5 R4 K11 ["TagSettingsList"]
       30 CALL                             R1 3 -1
       31 RETURN                           R1 -1

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
       23 GETTABLEKS                       R3 R2 K8 ["UI"]
       25 GETTABLEKS                       R4 R3 K9 ["Pane"]
       27 GETIMPORT                        R5 K4 [require]
       29 GETIMPORT                        R6 K1 [script]
       31 GETTABLEKS                       R6 R6 K2 ["Parent"]
       33 GETTABLEKS                       R6 R6 K10 ["TagSettingsListView"]
       35 CALL                             R5 1 1
       36 GETIMPORT                        R6 K4 [require]
       38 GETIMPORT                        R7 K1 [script]
       40 GETTABLEKS                       R7 R7 K2 ["Parent"]
       42 GETTABLEKS                       R7 R7 K11 ["TagSettingsToggleButton"]
       44 CALL                             R6 1 1
       45 GETTABLEKS                       R7 R1 K12 ["PureComponent"]
       47 LOADK                            R9 K13 ["TagSettingsPane"]
       48 NAMECALL                         R7 R7 K14 ["extend"]
       50 CALL                             R7 2 1
       51 DUPCLOSURE                       R8 K15 [PROTO_0]
       52 CAPTURE                          VAL R1
       53 CAPTURE                          VAL R4
       54 CAPTURE                          VAL R6
       55 CAPTURE                          VAL R5
       56 SETTABLEKS                       R8 R7 K16 ["render"]
       58 RETURN                           R7 1
