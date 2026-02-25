MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Dialog"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R3 R1 K8 ["Styling"]
       16 GETTABLEKS                       R2 R3 K9 ["createStyleSheet"]
       18 GETTABLEKS                       R4 R1 K8 ["Styling"]
       20 GETTABLEKS                       R3 R4 K10 ["createStyleRule"]
       22 NEWTABLE                         R4 0 1
       24 MOVE                             R5 R3
       25 LOADK                            R6 K11 [".component-dialog-view"]
       26 DUPTABLE                         R7 K13 [{"Size"}]
       27 LOADK                            R8 K14 ["$dialogWidth"]
       28 SETTABLEKS                       R8 R7 K12 ["Size"]
       30 NEWTABLE                         R8 0 1
       32 MOVE                             R9 R3
       33 LOADK                            R10 K15 ["::UISizeConstraint"]
       34 DUPTABLE                         R11 K17 [{"MinSize"}]
       35 LOADK                            R12 K18 ["$dialogMinHeight"]
       36 SETTABLEKS                       R12 R11 K16 ["MinSize"]
       38 CALL                             R9 2 -1
       39 SETLIST                          R8 R9 -1 [1]
       41 CALL                             R5 3 -1
       42 SETLIST                          R4 R5 -1 [1]
       44 DUPTABLE                         R5 K21 [{"dialogWidth", "dialogMinHeight"}]
       45 GETIMPORT                        R6 K24 [UDim2.fromOffset]
       47 LOADN                            R7 94
       48 LOADN                            R8 0
       49 CALL                             R6 2 1
       50 SETTABLEKS                       R6 R5 K19 ["dialogWidth"]
       52 GETIMPORT                        R6 K27 [Vector2.new]
       54 LOADN                            R7 0
       55 LOADN                            R8 78
       56 CALL                             R6 2 1
       57 SETTABLEKS                       R6 R5 K20 ["dialogMinHeight"]
       59 MOVE                             R6 R2
       60 LOADK                            R7 K2 ["Dialog"]
       61 MOVE                             R8 R4
       62 MOVE                             R9 R5
       63 CALL                             R6 3 -1
       64 RETURN                           R6 -1
