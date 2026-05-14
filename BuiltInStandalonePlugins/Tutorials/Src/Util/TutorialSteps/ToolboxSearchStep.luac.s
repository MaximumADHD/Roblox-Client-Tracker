PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["complete"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["tutorial"]
        2 GETTABLEKS                       R1 R1 K1 ["toolboxConnection"]
        4 LOADK                            R4 K2 ["SearchRequested"]
        5 NAMECALL                         R2 R1 K3 ["ensureEventExists"]
        7 CALL                             R2 2 0
        8 LOADK                            R4 K2 ["SearchRequested"]
        9 NEWCLOSURE                       R5 P0
       10 CAPTURE                          VAL R0
       11 NAMECALL                         R2 R1 K4 ["Connect"]
       13 CALL                             R2 3 1
       14 SETTABLEKS                       R2 R0 K5 ["connection"]
       16 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["connection"]
        2 NAMECALL                         R1 R1 K1 ["Disconnect"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["TutorialStep"]
        9 CALL                             R0 1 1
       10 GETTABLEKS                       R1 R0 K6 ["extend"]
       12 LOADK                            R2 K7 ["ToolboxSearch"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_1]
       15 SETTABLEKS                       R2 R1 K9 ["bind"]
       17 DUPCLOSURE                       R2 K10 [PROTO_2]
       18 SETTABLEKS                       R2 R1 K11 ["unbind"]
       20 RETURN                           R1 1
