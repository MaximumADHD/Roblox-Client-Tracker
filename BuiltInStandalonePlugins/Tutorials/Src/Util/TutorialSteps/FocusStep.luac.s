PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["complete"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["tutorial"]
        2 GETTABLEKS                       R1 R1 K1 ["dataModel"]
        4 LOADK                            R4 K2 ["Workspace"]
        5 NAMECALL                         R2 R1 K3 ["GetService"]
        7 CALL                             R2 2 1
        8 GETTABLEKS                       R3 R2 K4 ["CurrentCamera"]
       10 GETTABLEKS                       R4 R3 K5 ["Changed"]
       12 NEWCLOSURE                       R6 P0
       13 CAPTURE                          VAL R0
       14 NAMECALL                         R4 R4 K6 ["Connect"]
       16 CALL                             R4 2 1
       17 SETTABLEKS                       R4 R0 K7 ["connection"]
       19 RETURN                           R0 0

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
       12 LOADK                            R2 K7 ["Focus"]
       13 CALL                             R1 1 1
       14 LOADB                            R2 1
       15 SETTABLEKS                       R2 R1 K8 ["showComplete"]
       17 DUPCLOSURE                       R2 K9 [PROTO_1]
       18 SETTABLEKS                       R2 R1 K10 ["bind"]
       20 DUPCLOSURE                       R2 K11 [PROTO_2]
       21 SETTABLEKS                       R2 R1 K12 ["unbind"]
       23 RETURN                           R1 1
