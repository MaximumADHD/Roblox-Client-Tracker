PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Plugin"]
        2 NAMECALL                         R1 R1 K1 ["get"]
        4 CALL                             R1 1 1
        5 DUPTABLE                         R2 K7 [{"Title", "Size", "MinSize", "Resizable", "Modal"}]
        6 GETTABLEKS                       R3 R0 K2 ["Title"]
        8 SETTABLEKS                       R3 R2 K2 ["Title"]
       10 GETTABLEKS                       R3 R0 K3 ["Size"]
       12 SETTABLEKS                       R3 R2 K3 ["Size"]
       14 GETTABLEKS                       R3 R0 K4 ["MinSize"]
       16 SETTABLEKS                       R3 R2 K4 ["MinSize"]
       18 GETTABLEKS                       R3 R0 K5 ["Resizable"]
       20 SETTABLEKS                       R3 R2 K5 ["Resizable"]
       22 GETTABLEKS                       R3 R0 K6 ["Modal"]
       24 SETTABLEKS                       R3 R2 K6 ["Modal"]
       26 GETTABLEKS                       R4 R0 K2 ["Title"]
       28 GETUPVAL                         R5 0
       29 NAMECALL                         R5 R5 K8 ["GenerateGUID"]
       31 CALL                             R5 1 1
       32 CONCAT                           R3 R4 R5
       33 MOVE                             R6 R3
       34 MOVE                             R7 R2
       35 NAMECALL                         R4 R1 K9 ["CreateQWidgetPluginGui"]
       37 CALL                             R4 3 1
       38 GETTABLEKS                       R5 R0 K2 ["Title"]
       40 SETTABLEKS                       R5 R4 K10 ["Name"]
       42 GETTABLEKS                       R5 R0 K11 ["ZIndexBehavior"]
       44 JUMPIFNOT                        R5 ; [+4]
       45 GETTABLEKS                       R5 R0 K11 ["ZIndexBehavior"]
       47 SETTABLEKS                       R5 R4 K11 ["ZIndexBehavior"]
       49 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R2 K5 [script]
        9 LOADK                            R4 K6 ["UI"]
       10 NAMECALL                         R2 R2 K7 ["FindFirstAncestor"]
       12 CALL                             R2 2 1
       13 GETTABLEKS                       R1 R2 K8 ["Parent"]
       15 GETIMPORT                        R3 K10 [require]
       17 GETTABLEKS                       R4 R1 K11 ["Util"]
       19 CALL                             R3 1 1
       20 GETTABLEKS                       R2 R3 K12 ["Typecheck"]
       22 GETIMPORT                        R3 K10 [require]
       24 GETTABLEKS                       R6 R1 K6 ["UI"]
       26 GETTABLEKS                       R5 R6 K13 ["Components"]
       28 GETTABLEKS                       R4 R5 K14 ["createPluginWidget"]
       30 CALL                             R3 1 1
       31 MOVE                             R4 R3
       32 LOADK                            R5 K15 ["Dialog"]
       33 DUPCLOSURE                       R6 K16 [PROTO_0]
       34 CAPTURE                          VAL R0
       35 CALL                             R4 2 1
       36 GETTABLEKS                       R5 R2 K17 ["wrap"]
       38 MOVE                             R6 R4
       39 GETIMPORT                        R7 K5 [script]
       41 CALL                             R5 2 0
       42 RETURN                           R4 1
