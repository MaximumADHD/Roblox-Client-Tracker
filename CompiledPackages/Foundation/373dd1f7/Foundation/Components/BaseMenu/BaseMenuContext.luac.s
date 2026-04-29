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
       16 GETTABLEKS                       R5 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R5 K9 ["Types"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R6 R0 K10 ["Enums"]
       25 GETTABLEKS                       R5 R6 K11 ["InputSize"]
       27 CALL                             R4 1 1
       28 NEWTABLE                         R5 0 0
       30 GETTABLEKS                       R6 R2 K12 ["createContext"]
       32 DUPTABLE                         R7 K23 [{"onActivated", "onNestedLeafActivated", "size", "hasLeading", "setHasLeading", "hoverOpenPath", "hoverOpenAtDepth", "hoverCloseAtDepth", "hoverReset", "depth"}]
       33 LOADNIL                          R8
       34 SETTABLEKS                       R8 R7 K13 ["onActivated"]
       36 LOADNIL                          R8
       37 SETTABLEKS                       R8 R7 K14 ["onNestedLeafActivated"]
       39 GETTABLEKS                       R8 R4 K24 ["Medium"]
       41 SETTABLEKS                       R8 R7 K15 ["size"]
       43 LOADNIL                          R8
       44 SETTABLEKS                       R8 R7 K16 ["hasLeading"]
       46 LOADNIL                          R8
       47 SETTABLEKS                       R8 R7 K17 ["setHasLeading"]
       49 SETTABLEKS                       R5 R7 K18 ["hoverOpenPath"]
       51 LOADNIL                          R8
       52 SETTABLEKS                       R8 R7 K19 ["hoverOpenAtDepth"]
       54 LOADNIL                          R8
       55 SETTABLEKS                       R8 R7 K20 ["hoverCloseAtDepth"]
       57 LOADNIL                          R8
       58 SETTABLEKS                       R8 R7 K21 ["hoverReset"]
       60 LOADN                            R8 1
       61 SETTABLEKS                       R8 R7 K22 ["depth"]
       63 CALL                             R6 1 1
       64 RETURN                           R6 1
