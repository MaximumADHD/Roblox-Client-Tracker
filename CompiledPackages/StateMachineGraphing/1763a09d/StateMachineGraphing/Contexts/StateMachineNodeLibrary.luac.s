PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StateMachineGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["NodeGraphing"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Components"]
       25 GETTABLEKS                       R4 R4 K10 ["StateNodeShape"]
       27 CALL                             R3 1 1
       28 DUPTABLE                         R4 K16 [{["Group"] = "State", ["Inputs"], ["Properties"], ["States"]}]
       29 NEWTABLE                         R5 0 0
       31 SETTABLEKS                       R5 R4 K13 ["Inputs"]
       33 NEWTABLE                         R5 0 0
       35 SETTABLEKS                       R5 R4 K14 ["Properties"]
       37 NEWTABLE                         R5 0 0
       39 SETTABLEKS                       R5 R4 K15 ["States"]
       41 DUPTABLE                         R5 K18 [{"nodeLibrary"}]
       42 NEWTABLE                         R6 0 1
       44 NEWTABLE                         R7 0 1
       46 DUPTABLE                         R8 K24 [{["id"] = "StateMachineState", ["displayName"] = "State", ["definition"], ["render"]}]
       47 SETTABLEKS                       R4 R8 K22 ["definition"]
       49 DUPCLOSURE                       R9 K25 [PROTO_0]
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R3
       52 SETTABLEKS                       R9 R8 K23 ["render"]
       54 SETLIST                          R7 R8 1 [1]
       56 SETLIST                          R6 R7 1 [1]
       58 SETTABLEKS                       R6 R5 K17 ["nodeLibrary"]
       60 DUPTABLE                         R6 K28 [{["STATE_NODE_TYPE"] = "StateMachineState", ["NODE_LIBRARY"]}]
       61 SETTABLEKS                       R5 R6 K27 ["NODE_LIBRARY"]
       63 RETURN                           R6 1
