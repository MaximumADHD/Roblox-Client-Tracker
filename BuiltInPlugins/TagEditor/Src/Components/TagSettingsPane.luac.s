PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{"Layout", "VerticalAlignment"}]
        5 GETIMPORT                        R4 K7 [Enum.FillDirection.Vertical]
        7 SETTABLEKS                       R4 R3 K1 ["Layout"]
        9 GETIMPORT                        R4 K9 [Enum.VerticalAlignment.Top]
       11 SETTABLEKS                       R4 R3 K2 ["VerticalAlignment"]
       13 DUPTABLE                         R4 K12 [{"TagSettingsToggleButton", "TagSettingsList"}]
       14 GETUPVAL                         R6 0
       15 GETTABLEKS                       R5 R6 K0 ["createElement"]
       17 GETUPVAL                         R6 2
       18 DUPTABLE                         R7 K14 [{"LayoutOrder"}]
       19 LOADN                            R8 1
       20 SETTABLEKS                       R8 R7 K13 ["LayoutOrder"]
       22 CALL                             R5 2 1
       23 SETTABLEKS                       R5 R4 K10 ["TagSettingsToggleButton"]
       25 GETUPVAL                         R6 0
       26 GETTABLEKS                       R5 R6 K0 ["createElement"]
       28 GETUPVAL                         R6 3
       29 DUPTABLE                         R7 K14 [{"LayoutOrder"}]
       30 LOADN                            R8 2
       31 SETTABLEKS                       R8 R7 K13 ["LayoutOrder"]
       33 CALL                             R5 2 1
       34 SETTABLEKS                       R5 R4 K11 ["TagSettingsList"]
       36 CALL                             R1 3 -1
       37 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["UI"]
       25 GETTABLEKS                       R4 R3 K9 ["Pane"]
       27 GETIMPORT                        R5 K4 [require]
       29 GETIMPORT                        R8 K1 [script]
       31 GETTABLEKS                       R7 R8 K2 ["Parent"]
       33 GETTABLEKS                       R6 R7 K10 ["TagSettingsListView"]
       35 CALL                             R5 1 1
       36 GETIMPORT                        R6 K4 [require]
       38 GETIMPORT                        R9 K1 [script]
       40 GETTABLEKS                       R8 R9 K2 ["Parent"]
       42 GETTABLEKS                       R7 R8 K11 ["TagSettingsToggleButton"]
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
