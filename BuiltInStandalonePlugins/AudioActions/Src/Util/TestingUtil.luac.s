PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["register"]
        3 GETIMPORT                        R1 K2 [plugin]
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 1
        7 CALL                             R0 0 0
        8 GETUPVAL                         R0 0
        9 GETTABLEKS                       R0 R0 K3 ["deregister"]
       11 CALL                             R0 0 0
       12 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["resolve"]
        3 CALL                             R0 1 1
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 NAMECALL                         R0 R0 K1 ["andThen"]
        9 CALL                             R0 2 -1
       10 RETURN                           R0 -1

PROTO_2:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 RETURN                           R2 1

PROTO_3:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_4:
        0 LOADB                            R1 0
        1 GETUPVAL                         R2 0
        2 MOVE                             R4 R0
        3 NAMECALL                         R2 R2 K0 ["BindToActivatedAsync"]
        5 CALL                             R2 2 1
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          REF R1
        8 NAMECALL                         R2 R2 K1 ["Once"]
       10 CALL                             R2 2 0
       11 GETUPVAL                         R2 0
       12 MOVE                             R4 R0
       13 NAMECALL                         R2 R2 K2 ["ActivateAsync"]
       15 CALL                             R2 2 0
       16 JUMPIF                           R1 ; [+4]
       17 GETIMPORT                        R2 K5 [task.wait]
       19 CALL                             R2 0 0
       20 JUMPBACK                         ; [-5]
       21 CLOSEUPVALS                      R1
       22 RETURN                           R0 0

PROTO_5:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_6:
        0 LOADB                            R1 0
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["SelectionChanged"]
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          REF R1
        6 NAMECALL                         R2 R2 K1 ["Once"]
        8 CALL                             R2 2 0
        9 GETUPVAL                         R2 1
       10 MOVE                             R4 R0
       11 NAMECALL                         R2 R2 K2 ["ActivateAsync"]
       13 CALL                             R2 2 0
       14 JUMPIF                           R1 ; [+4]
       15 GETIMPORT                        R2 K5 [task.wait]
       17 CALL                             R2 0 0
       18 JUMPBACK                         ; [-5]
       19 CLOSEUPVALS                      R1
       20 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AudioActions"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Util"]
       16 GETTABLEKS                       R2 R2 K9 ["Promise"]
       18 GETIMPORT                        R3 K11 [plugin]
       20 LOADK                            R5 K12 ["Actions"]
       21 NAMECALL                         R3 R3 K13 ["GetPluginComponent"]
       23 CALL                             R3 2 1
       24 GETIMPORT                        R4 K15 [game]
       26 LOADK                            R6 K16 ["Selection"]
       27 NAMECALL                         R4 R4 K17 ["GetService"]
       29 CALL                             R4 2 1
       30 NEWTABLE                         R5 4 0
       32 DUPCLOSURE                       R6 K18 [PROTO_2]
       33 CAPTURE                          VAL R2
       34 SETTABLEKS                       R6 R5 K19 ["testAsync"]
       36 DUPCLOSURE                       R6 K20 [PROTO_4]
       37 CAPTURE                          VAL R3
       38 SETTABLEKS                       R6 R5 K21 ["act"]
       40 DUPCLOSURE                       R6 K22 [PROTO_6]
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R3
       43 SETTABLEKS                       R6 R5 K23 ["actUntilSelected"]
       45 RETURN                           R5 1
