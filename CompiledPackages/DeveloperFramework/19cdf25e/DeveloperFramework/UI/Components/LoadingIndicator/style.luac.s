MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Style"]
       13 GETTABLEKS                       R2 R3 K8 ["StyleKey"]
       15 CALL                             R1 1 1
       16 DUPTABLE                         R2 K12 [{"StartColor", "EndColor", "Size"}]
       17 GETTABLEKS                       R3 R1 K13 ["DimmedText"]
       19 SETTABLEKS                       R3 R2 K9 ["StartColor"]
       21 GETTABLEKS                       R3 R1 K14 ["DialogMainButtonSelected"]
       23 SETTABLEKS                       R3 R2 K10 ["EndColor"]
       25 GETIMPORT                        R3 K17 [UDim2.new]
       27 LOADN                            R4 0
       28 LOADN                            R5 92
       29 LOADN                            R6 0
       30 LOADN                            R7 24
       31 CALL                             R3 4 1
       32 SETTABLEKS                       R3 R2 K11 ["Size"]
       34 RETURN                           R2 1
