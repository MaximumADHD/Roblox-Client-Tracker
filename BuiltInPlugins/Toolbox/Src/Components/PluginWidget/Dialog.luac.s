PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R2 K1 ["plugin"]
        4 LOADNIL                          R4
        5 GETTABLEKS                       R5 R2 K2 ["InitialEnabled"]
        7 JUMPIFNOT                        R5 ; [+3]
        8 GETTABLEKS                       R4 R2 K2 ["InitialEnabled"]
       10 JUMP                             ; [+1]
       11 LOADB                            R4 1
       12 GETTABLEKS                       R5 R2 K3 ["options"]
       14 JUMPIF                           R5 ; [+23]
       15 DUPTABLE                         R5 K8 [{"Size", "MinSize", "Resizable", "Modal", "InitialEnabled"}]
       16 GETTABLEKS                       R7 R2 K4 ["Size"]
       18 ORK                              R6 R7 K9 []
       19 SETTABLEKS                       R6 R5 K4 ["Size"]
       21 GETTABLEKS                       R7 R2 K5 ["MinSize"]
       23 ORK                              R6 R7 K9 []
       24 SETTABLEKS                       R6 R5 K5 ["MinSize"]
       26 GETTABLEKS                       R7 R2 K6 ["Resizable"]
       28 ORK                              R6 R7 K9 []
       29 SETTABLEKS                       R6 R5 K6 ["Resizable"]
       31 GETTABLEKS                       R7 R2 K7 ["Modal"]
       33 ORK                              R6 R7 K9 []
       34 SETTABLEKS                       R6 R5 K7 ["Modal"]
       36 SETTABLEKS                       R4 R5 K2 ["InitialEnabled"]
       38 MOVE                             R8 R1
       39 MOVE                             R9 R5
       40 NAMECALL                         R6 R3 K10 ["CreateQWidgetPluginGui"]
       42 CALL                             R6 3 -1
       43 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R5 R0 K5 ["Src"]
       15 GETTABLEKS                       R4 R5 K6 ["Components"]
       17 GETTABLEKS                       R3 R4 K7 ["PluginWidget"]
       19 GETTABLEKS                       R2 R3 K7 ["PluginWidget"]
       21 CALL                             R1 1 1
       22 MOVE                             R2 R1
       23 LOADK                            R3 K8 ["Dialog"]
       24 DUPCLOSURE                       R4 K9 [PROTO_0]
       25 CALL                             R2 2 -1
       26 RETURN                           R2 -1
