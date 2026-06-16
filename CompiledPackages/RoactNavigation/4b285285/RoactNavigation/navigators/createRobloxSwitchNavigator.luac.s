PROTO_0:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 1
        5 GETUPVAL                         R4 2
        6 MOVE                             R5 R2
        7 MOVE                             R6 R1
        8 JUMPIF                           R6 ; [+2]
        9 NEWTABLE                         R6 0 0
       11 CALL                             R3 3 -1
       12 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETIMPORT                        R2 K1 [script]
       11 GETTABLEKS                       R2 R2 K2 ["Parent"]
       13 GETTABLEKS                       R2 R2 K5 ["createNavigator"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K6 ["routers"]
       20 GETTABLEKS                       R3 R3 K7 ["SwitchRouter"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K8 ["views"]
       27 GETTABLEKS                       R4 R4 K9 ["RobloxSwitchView"]
       29 CALL                             R3 1 1
       30 DUPCLOSURE                       R4 K10 [PROTO_0]
       31 CAPTURE                          VAL R2
       32 CAPTURE                          VAL R1
       33 CAPTURE                          VAL R3
       34 RETURN                           R4 1
