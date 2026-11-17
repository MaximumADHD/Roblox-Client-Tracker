MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CompositorDebugger"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Styling"]
       16 GETTABLEKS                       R2 R2 K9 ["createStyleRule"]
       18 MOVE                             R3 R2
       19 LOADK                            R4 K10 [".MainPane"]
       20 DUPTABLE                         R5 K13 [{["BorderSizePixel"] = 0}]
       21 NEWTABLE                         R6 0 2
       23 MOVE                             R7 R2
       24 LOADK                            R8 K14 [">> #Toolbar"]
       25 DUPTABLE                         R9 K16 [{"Size"}]
       26 GETIMPORT                        R10 K19 [UDim2.new]
       28 LOADN                            R11 1
       29 LOADN                            R12 0
       30 LOADN                            R13 0
       31 LOADN                            R14 24
       32 CALL                             R10 4 1
       33 SETTABLEKS                       R10 R9 K15 ["Size"]
       35 CALL                             R7 2 1
       36 MOVE                             R8 R2
       37 LOADK                            R9 K20 [">> #LayerTree"]
       38 DUPTABLE                         R10 K16 [{"Size"}]
       39 GETIMPORT                        R11 K19 [UDim2.new]
       41 LOADN                            R12 1
       42 LOADN                            R13 0
       43 LOADN                            R14 1
       44 LOADN                            R15 -24
       45 CALL                             R11 4 1
       46 SETTABLEKS                       R11 R10 K15 ["Size"]
       48 CALL                             R8 2 -1
       49 SETLIST                          R6 R7 -1 [1]
       51 CALL                             R3 3 -1
       52 RETURN                           R3 -1
