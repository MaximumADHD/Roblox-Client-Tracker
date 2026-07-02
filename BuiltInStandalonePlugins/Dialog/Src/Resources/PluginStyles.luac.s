MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Dialog"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Styling"]
       16 GETTABLEKS                       R2 R2 K9 ["createStyleSheet"]
       18 GETTABLEKS                       R3 R1 K8 ["Styling"]
       20 GETTABLEKS                       R3 R3 K10 ["createStyleRule"]
       22 NEWTABLE                         R4 0 1
       24 MOVE                             R5 R3
       25 LOADK                            R6 K11 [".component-dialog-view"]
       26 DUPTABLE                         R7 K14 [{["Size"] = "$dialogWidth"}]
       27 NEWTABLE                         R8 0 1
       29 MOVE                             R9 R3
       30 LOADK                            R10 K15 ["::UISizeConstraint"]
       31 DUPTABLE                         R11 K18 [{["MinSize"] = "$dialogMinHeight"}]
       32 CALL                             R9 2 -1
       33 SETLIST                          R8 R9 -1 [1]
       35 CALL                             R5 3 -1
       36 SETLIST                          R4 R5 -1 [1]
       38 DUPTABLE                         R5 K21 [{"dialogWidth", "dialogMinHeight"}]
       39 GETIMPORT                        R6 K24 [UDim2.fromOffset]
       41 LOADN                            R7 350
       42 LOADN                            R8 0
       43 CALL                             R6 2 1
       44 SETTABLEKS                       R6 R5 K19 ["dialogWidth"]
       46 GETIMPORT                        R6 K27 [Vector2.new]
       48 LOADN                            R7 0
       49 LOADN                            R8 78
       50 CALL                             R6 2 1
       51 SETTABLEKS                       R6 R5 K20 ["dialogMinHeight"]
       53 MOVE                             R6 R2
       54 LOADK                            R7 K2 ["Dialog"]
       55 MOVE                             R8 R4
       56 MOVE                             R9 R5
       57 CALL                             R6 3 -1
       58 RETURN                           R6 -1
