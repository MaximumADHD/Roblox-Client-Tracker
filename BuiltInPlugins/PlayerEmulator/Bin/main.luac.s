PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+5]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R0 R1 K0 ["unmount"]
        5 GETUPVAL                         R1 0
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_1:
        0 LOADNIL                          R0
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          REF R0
        3 CAPTURE                          UPVAL U0
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R2 R3 K0 ["createElement"]
        7 GETUPVAL                         R3 1
        8 DUPTABLE                         R4 K4 [{"plugin", "onPluginWillDestroy", "pluginLoaderContext"}]
        9 GETUPVAL                         R5 2
       10 SETTABLEKS                       R5 R4 K1 ["plugin"]
       12 SETTABLEKS                       R1 R4 K2 ["onPluginWillDestroy"]
       14 GETUPVAL                         R5 3
       15 SETTABLEKS                       R5 R4 K3 ["pluginLoaderContext"]
       17 CALL                             R2 2 1
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R3 R4 K5 ["mount"]
       21 MOVE                             R4 R2
       22 CALL                             R3 1 1
       23 MOVE                             R0 R3
       24 CLOSEUPVALS                      R0
       25 RETURN                           R0 0

PROTO_2:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 GETIMPORT                        R4 K1 [script]
        4 GETTABLEKS                       R3 R4 K2 ["Parent"]
        6 GETTABLEKS                       R2 R3 K2 ["Parent"]
        8 GETIMPORT                        R3 K4 [require]
       10 GETTABLEKS                       R5 R2 K5 ["Packages"]
       12 GETTABLEKS                       R4 R5 K6 ["Roact"]
       14 CALL                             R3 1 1
       15 GETIMPORT                        R4 K4 [require]
       17 GETTABLEKS                       R7 R2 K7 ["Src"]
       19 GETTABLEKS                       R6 R7 K8 ["Components"]
       21 GETTABLEKS                       R5 R6 K9 ["PlayerEmulatorPlugin"]
       23 CALL                             R4 1 1
       24 NEWCLOSURE                       R5 P0
       25 CAPTURE                          VAL R3
       26 CAPTURE                          VAL R4
       27 CAPTURE                          VAL R0
       28 CAPTURE                          VAL R1
       29 MOVE                             R6 R5
       30 CALL                             R6 0 0
       31 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_2]
        2 RETURN                           R0 1
