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
       19 LOADK                            R4 K10 [".LayerPanel"]
       20 NEWTABLE                         R5 0 0
       22 NEWTABLE                         R6 0 1
       24 MOVE                             R7 R2
       25 LOADK                            R8 K11 ["> .Panel"]
       26 DUPTABLE                         R9 K13 [{"Size"}]
       27 GETIMPORT                        R10 K16 [UDim2.new]
       29 LOADN                            R11 1
       30 LOADN                            R12 0
       31 LOADN                            R13 1
       32 LOADN                            R14 223
       33 CALL                             R10 4 1
       34 SETTABLEKS                       R10 R9 K12 ["Size"]
       36 CALL                             R7 2 -1
       37 SETLIST                          R6 R7 -1 [1]
       39 CALL                             R3 3 -1
       40 RETURN                           R3 -1
