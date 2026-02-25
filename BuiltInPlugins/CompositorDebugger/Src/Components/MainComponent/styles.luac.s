MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CompositorDebugger"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R3 R1 K8 ["Styling"]
       16 GETTABLEKS                       R2 R3 K9 ["createStyleRule"]
       18 MOVE                             R3 R2
       19 LOADK                            R4 K10 [".MainPane"]
       20 DUPTABLE                         R5 K12 [{"BorderSizePixel"}]
       21 LOADN                            R6 0
       22 SETTABLEKS                       R6 R5 K11 ["BorderSizePixel"]
       24 NEWTABLE                         R6 0 2
       26 MOVE                             R7 R2
       27 LOADK                            R8 K13 [">> #Toolbar"]
       28 DUPTABLE                         R9 K15 [{"Size"}]
       29 GETIMPORT                        R10 K18 [UDim2.new]
       31 LOADN                            R11 1
       32 LOADN                            R12 0
       33 LOADN                            R13 0
       34 LOADN                            R14 24
       35 CALL                             R10 4 1
       36 SETTABLEKS                       R10 R9 K14 ["Size"]
       38 CALL                             R7 2 1
       39 MOVE                             R8 R2
       40 LOADK                            R9 K19 [">> #LayerTree"]
       41 DUPTABLE                         R10 K15 [{"Size"}]
       42 GETIMPORT                        R11 K18 [UDim2.new]
       44 LOADN                            R12 1
       45 LOADN                            R13 0
       46 LOADN                            R14 1
       47 LOADN                            R15 232
       48 CALL                             R11 4 1
       49 SETTABLEKS                       R11 R10 K14 ["Size"]
       51 CALL                             R8 2 -1
       52 SETLIST                          R6 R7 -1 [1]
       54 CALL                             R3 3 -1
       55 RETURN                           R3 -1
