PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["Size"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["data"]
        6 GETTABLEKS                       R1 R2 K2 ["minSize"]
        8 GETTABLEKS                       R2 R0 K3 ["X"]
       10 GETTABLEKS                       R3 R1 K3 ["X"]
       12 JUMPIFNOTLE                      R3 R2 ; [+17]
       14 GETTABLEKS                       R2 R0 K4 ["Y"]
       16 GETTABLEKS                       R3 R1 K4 ["Y"]
       18 JUMPIFNOTLE                      R3 R2 ; [+11]
       20 GETTABLEKS                       R2 R0 K5 ["Z"]
       22 GETTABLEKS                       R3 R1 K5 ["Z"]
       24 JUMPIFNOTLE                      R3 R2 ; [+5]
       26 GETUPVAL                         R2 1
       27 NAMECALL                         R2 R2 K6 ["complete"]
       29 CALL                             R2 1 0
       30 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["tutorial"]
        2 GETTABLEKS                       R2 R3 K1 ["instances"]
        4 GETTABLEKS                       R4 R0 K2 ["data"]
        6 GETTABLEKS                       R3 R4 K3 ["instanceId"]
        8 GETTABLE                         R1 R2 R3
        9 JUMPIFNOT                        R1 ; [+12]
       10 LOADK                            R4 K4 ["Size"]
       11 NAMECALL                         R2 R1 K5 ["GetPropertyChangedSignal"]
       13 CALL                             R2 2 1
       14 NEWCLOSURE                       R4 P0
       15 CAPTURE                          VAL R1
       16 CAPTURE                          VAL R0
       17 NAMECALL                         R2 R2 K6 ["Connect"]
       19 CALL                             R2 2 1
       20 SETTABLEKS                       R2 R0 K7 ["connection"]
       22 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["connection"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["connection"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["TutorialStep"]
        9 CALL                             R0 1 1
       10 GETTABLEKS                       R1 R0 K6 ["extend"]
       12 LOADK                            R2 K7 ["Scale"]
       13 CALL                             R1 1 1
       14 LOADB                            R2 1
       15 SETTABLEKS                       R2 R1 K8 ["showComplete"]
       17 DUPCLOSURE                       R2 K9 [PROTO_1]
       18 SETTABLEKS                       R2 R1 K10 ["bind"]
       20 DUPCLOSURE                       R2 K11 [PROTO_2]
       21 SETTABLEKS                       R2 R1 K12 ["unbind"]
       23 RETURN                           R1 1
