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
       19 LOADK                            R4 K10 [".SplitPane"]
       20 NEWTABLE                         R5 0 0
       22 NEWTABLE                         R6 0 1
       24 MOVE                             R7 R2
       25 LOADK                            R8 K11 [">> .X-Border "]
       26 DUPTABLE                         R9 K13 [{"ZIndex"}]
       27 LOADN                            R10 2
       28 SETTABLEKS                       R10 R9 K12 ["ZIndex"]
       30 CALL                             R7 2 -1
       31 SETLIST                          R6 R7 -1 [1]
       33 CALL                             R3 3 -1
       34 RETURN                           R3 -1
