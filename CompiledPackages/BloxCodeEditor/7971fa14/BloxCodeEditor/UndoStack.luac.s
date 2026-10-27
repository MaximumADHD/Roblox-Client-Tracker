PROTO_0:
        0 DUPTABLE                         R1 K4 [{[1], ["_pointer"] = 0, ["_maxSize"]}]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K0 ["_entries"]
        5 ORK                              R2 R0 K5 [100]
        6 SETTABLEKS                       R2 R1 K3 ["_maxSize"]
        8 GETUPVAL                         R4 0
        9 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
       11 MOVE                             R3 R1
       12 GETIMPORT                        R2 K7 [setmetatable]
       14 CALL                             R2 2 1
       15 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["_entries"]
        2 LENGTH                           R2 R3
        3 GETTABLEKS                       R3 R0 K1 ["_pointer"]
        5 JUMPIFNOTLT                      R3 R2 ; [+7]
        7 GETIMPORT                        R2 K4 [table.remove]
        9 GETTABLEKS                       R3 R0 K0 ["_entries"]
       11 CALL                             R2 1 0
       12 JUMPBACK                         ; [-13]
       13 GETTABLEKS                       R3 R0 K0 ["_entries"]
       15 FASTCALL2                        TABLE_INSERT R3 R1 ; [+4]
       17 MOVE                             R4 R1
       18 GETIMPORT                        R2 K6 [table.insert]
       20 CALL                             R2 2 0
       21 GETTABLEKS                       R3 R0 K0 ["_entries"]
       23 LENGTH                           R2 R3
       24 SETTABLEKS                       R2 R0 K1 ["_pointer"]
       26 GETTABLEKS                       R3 R0 K0 ["_entries"]
       28 LENGTH                           R2 R3
       29 GETTABLEKS                       R3 R0 K7 ["_maxSize"]
       31 JUMPIFNOTLT                      R3 R2 ; [+13]
       33 GETIMPORT                        R2 K4 [table.remove]
       35 GETTABLEKS                       R3 R0 K0 ["_entries"]
       37 LOADN                            R4 1
       38 CALL                             R2 2 0
       39 GETTABLEKS                       R2 R0 K1 ["_pointer"]
       41 SUBK                             R2 R2 K8 [1]
       42 SETTABLEKS                       R2 R0 K1 ["_pointer"]
       44 JUMPBACK                         ; [-19]
       45 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["_pointer"]
        2 LOADN                            R2 1
        3 JUMPIFNOTLE                      R1 R2 ; [+3]
        5 LOADNIL                          R1
        6 RETURN                           R1 1
        7 GETTABLEKS                       R1 R0 K0 ["_pointer"]
        9 SUBK                             R1 R1 K1 [1]
       10 SETTABLEKS                       R1 R0 K0 ["_pointer"]
       12 GETTABLEKS                       R2 R0 K2 ["_entries"]
       14 GETTABLEKS                       R3 R0 K0 ["_pointer"]
       16 GETTABLE                         R1 R2 R3
       17 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["_pointer"]
        2 GETTABLEKS                       R3 R0 K1 ["_entries"]
        4 LENGTH                           R2 R3
        5 JUMPIFNOTLE                      R2 R1 ; [+3]
        7 LOADNIL                          R1
        8 RETURN                           R1 1
        9 GETTABLEKS                       R1 R0 K0 ["_pointer"]
       11 ADDK                             R1 R1 K2 [1]
       12 SETTABLEKS                       R1 R0 K0 ["_pointer"]
       14 GETTABLEKS                       R2 R0 K1 ["_entries"]
       16 GETTABLEKS                       R3 R0 K0 ["_pointer"]
       18 GETTABLE                         R1 R2 R3
       19 RETURN                           R1 1

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["_pointer"]
        2 LOADN                            R3 1
        3 JUMPIFLT                         R3 R2 ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 RETURN                           R1 1

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["_pointer"]
        2 GETTABLEKS                       R4 R0 K1 ["_entries"]
        4 LENGTH                           R3 R4
        5 JUMPIFLT                         R2 R3 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_6:
        0 NEWTABLE                         R2 0 1
        2 MOVE                             R3 R1
        3 SETLIST                          R2 R3 1 [1]
        5 SETTABLEKS                       R2 R0 K0 ["_entries"]
        7 LOADN                            R2 1
        8 SETTABLEKS                       R2 R0 K1 ["_pointer"]
       10 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 SETTABLEKS                       R0 R0 K0 ["__index"]
        5 DUPCLOSURE                       R1 K1 [PROTO_0]
        6 CAPTURE                          VAL R0
        7 SETTABLEKS                       R1 R0 K2 ["new"]
        9 DUPCLOSURE                       R1 K3 [PROTO_1]
       10 SETTABLEKS                       R1 R0 K4 ["push"]
       12 DUPCLOSURE                       R1 K5 [PROTO_2]
       13 SETTABLEKS                       R1 R0 K6 ["undo"]
       15 DUPCLOSURE                       R1 K7 [PROTO_3]
       16 SETTABLEKS                       R1 R0 K8 ["redo"]
       18 DUPCLOSURE                       R1 K9 [PROTO_4]
       19 SETTABLEKS                       R1 R0 K10 ["canUndo"]
       21 DUPCLOSURE                       R1 K11 [PROTO_5]
       22 SETTABLEKS                       R1 R0 K12 ["canRedo"]
       24 DUPCLOSURE                       R1 K13 [PROTO_6]
       25 SETTABLEKS                       R1 R0 K14 ["reset"]
       27 RETURN                           R0 1
