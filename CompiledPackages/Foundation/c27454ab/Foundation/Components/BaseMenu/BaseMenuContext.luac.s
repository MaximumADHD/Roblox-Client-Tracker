MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R4 K9 ["Types"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Enums"]
       25 GETTABLEKS                       R5 R5 K11 ["InputSize"]
       27 CALL                             R4 1 1
       28 NEWTABLE                         R5 0 0
       30 GETTABLEKS                       R6 R2 K12 ["createContext"]
       32 DUPTABLE                         R7 K22 [{"onActivated", "size", "hasLeading", "setHasLeading", "hoverOpenPath", "hoverOpenAtDepth", "hoverCloseAtDepth", "hoverReset", "depth"}]
       33 LOADNIL                          R8
       34 SETTABLEKS                       R8 R7 K13 ["onActivated"]
       36 GETTABLEKS                       R8 R4 K23 ["Medium"]
       38 SETTABLEKS                       R8 R7 K14 ["size"]
       40 LOADNIL                          R8
       41 SETTABLEKS                       R8 R7 K15 ["hasLeading"]
       43 LOADNIL                          R8
       44 SETTABLEKS                       R8 R7 K16 ["setHasLeading"]
       46 SETTABLEKS                       R5 R7 K17 ["hoverOpenPath"]
       48 LOADNIL                          R8
       49 SETTABLEKS                       R8 R7 K18 ["hoverOpenAtDepth"]
       51 LOADNIL                          R8
       52 SETTABLEKS                       R8 R7 K19 ["hoverCloseAtDepth"]
       54 LOADNIL                          R8
       55 SETTABLEKS                       R8 R7 K20 ["hoverReset"]
       57 LOADN                            R8 1
       58 SETTABLEKS                       R8 R7 K21 ["depth"]
       60 CALL                             R6 1 1
       61 RETURN                           R6 1
