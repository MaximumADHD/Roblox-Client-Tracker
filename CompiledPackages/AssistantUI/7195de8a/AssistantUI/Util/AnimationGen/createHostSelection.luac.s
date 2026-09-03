PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Get"]
        3 CALL                             R0 1 1
        4 LENGTH                           R1 R0
        5 JUMPIFEQKN                       R1 K1 [1] ; [+2]
        7 RETURN                           R0 0
        8 GETUPVAL                         R1 1
        9 GETTABLEN                        R3 R0 1
       10 NAMECALL                         R1 R1 K2 ["Fire"]
       12 CALL                             R1 2 0
       13 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 CALL                             R0 0 1
        4 NEWCLOSURE                       R1 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R0
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K1 ["SelectionChanged"]
       10 MOVE                             R4 R1
       11 NAMECALL                         R2 R2 K2 ["Connect"]
       13 CALL                             R2 2 1
       14 NEWCLOSURE                       R3 P1
       15 CAPTURE                          VAL R2
       16 DUPTABLE                         R4 K5 [{"selectionChangedSignal", "destroy"}]
       17 SETTABLEKS                       R0 R4 K3 ["selectionChangedSignal"]
       19 SETTABLEKS                       R3 R4 K4 ["destroy"]
       21 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Selection"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AssistantUI"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Parent"]
       17 GETTABLEKS                       R3 R3 K11 ["Signal"]
       19 CALL                             R2 1 1
       20 DUPCLOSURE                       R3 K12 [PROTO_2]
       21 CAPTURE                          VAL R2
       22 CAPTURE                          VAL R0
       23 RETURN                           R3 1
