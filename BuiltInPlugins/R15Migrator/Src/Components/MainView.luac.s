PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["new"]
        5 CALL                             R2 0 1
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K2 ["createElement"]
        9 GETUPVAL                         R4 2
       10 DUPTABLE                         R5 K7 [{"Layout", "HorizontalAlignment", "VerticalAlignment", "BackgroundTransparency"}]
       11 GETIMPORT                        R6 K11 [Enum.FillDirection.Vertical]
       13 SETTABLEKS                       R6 R5 K3 ["Layout"]
       15 GETIMPORT                        R6 K13 [Enum.HorizontalAlignment.Left]
       17 SETTABLEKS                       R6 R5 K4 ["HorizontalAlignment"]
       19 GETIMPORT                        R6 K15 [Enum.VerticalAlignment.Top]
       21 SETTABLEKS                       R6 R5 K5 ["VerticalAlignment"]
       23 LOADN                            R6 1
       24 SETTABLEKS                       R6 R5 K6 ["BackgroundTransparency"]
       26 DUPTABLE                         R6 K17 [{"MainTabs"}]
       27 GETUPVAL                         R7 1
       28 GETTABLEKS                       R7 R7 K2 ["createElement"]
       30 GETUPVAL                         R8 3
       31 DUPTABLE                         R9 K20 [{"OnResetPlugin", "LayoutOrder"}]
       32 GETTABLEKS                       R10 R1 K18 ["OnResetPlugin"]
       34 SETTABLEKS                       R10 R9 K18 ["OnResetPlugin"]
       36 NAMECALL                         R10 R2 K21 ["getNextOrder"]
       38 CALL                             R10 1 1
       39 SETTABLEKS                       R10 R9 K19 ["LayoutOrder"]
       41 CALL                             R7 2 1
       42 SETTABLEKS                       R7 R6 K16 ["MainTabs"]
       44 CALL                             R3 3 -1
       45 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Roact"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K9 ["UI"]
       23 GETTABLEKS                       R4 R3 K10 ["Pane"]
       25 GETTABLEKS                       R5 R1 K11 ["Util"]
       27 GETTABLEKS                       R6 R5 K12 ["LayoutOrderIterator"]
       29 GETTABLEKS                       R7 R0 K13 ["Src"]
       31 GETTABLEKS                       R7 R7 K14 ["Components"]
       33 GETIMPORT                        R8 K5 [require]
       35 GETTABLEKS                       R9 R7 K15 ["MainTabsView"]
       37 CALL                             R8 1 1
       38 GETTABLEKS                       R9 R2 K16 ["PureComponent"]
       40 LOADK                            R11 K17 ["MainView"]
       41 NAMECALL                         R9 R9 K18 ["extend"]
       43 CALL                             R9 2 1
       44 DUPCLOSURE                       R10 K19 [PROTO_0]
       45 CAPTURE                          VAL R6
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R4
       48 CAPTURE                          VAL R8
       49 SETTABLEKS                       R10 R9 K20 ["render"]
       51 RETURN                           R9 1
