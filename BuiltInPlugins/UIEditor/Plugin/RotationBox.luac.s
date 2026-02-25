PROTO_0:
        0 GETUPVAL                         R4 0
        1 ADD                              R3 R1 R4
        2 GETUPVAL                         R4 1
        3 GETIMPORT                        R6 K2 [UDim2.new]
        5 LOADN                            R7 0
        6 GETTABLEKS                       R8 R3 K3 ["X"]
        8 LOADN                            R9 0
        9 GETTABLEKS                       R10 R3 K4 ["Y"]
       11 CALL                             R6 4 -1
       12 NAMECALL                         R4 R4 K5 ["setPosition"]
       14 CALL                             R4 -1 0
       15 GETIMPORT                        R4 K8 [string.format]
       17 LOADK                            R5 K9 ["%d°"]
       18 MOVE                             R6 R2
       19 CALL                             R4 2 1
       20 GETUPVAL                         R5 1
       21 MOVE                             R7 R4
       22 NAMECALL                         R5 R5 K10 ["setText"]
       24 CALL                             R5 2 0
       25 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R1
        2 NAMECALL                         R2 R2 K0 ["setVisible"]
        4 CALL                             R2 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 1
        1 GETTABLEKS                       R1 R2 K0 ["new"]
        3 CALL                             R1 0 1
        4 SETUPVAL                         R1 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["Destroy"]
        3 CALL                             R1 1 0
        4 LOADNIL                          R1
        5 SETUPVAL                         R1 0
        6 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 GETIMPORT                        R1 K1 [require]
        5 GETIMPORT                        R4 K3 [script]
        7 GETTABLEKS                       R3 R4 K4 ["Parent"]
        9 GETTABLEKS                       R2 R3 K5 ["ValueBox"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K8 [Vector2.new]
       14 LOADN                            R3 4
       15 LOADN                            R4 20
       16 CALL                             R2 2 1
       17 LOADNIL                          R3
       18 NEWCLOSURE                       R4 P0
       19 CAPTURE                          VAL R2
       20 CAPTURE                          REF R3
       21 SETTABLEKS                       R4 R0 K9 ["update"]
       23 NEWCLOSURE                       R4 P1
       24 CAPTURE                          REF R3
       25 SETTABLEKS                       R4 R0 K10 ["setVisible"]
       27 NEWCLOSURE                       R4 P2
       28 CAPTURE                          REF R3
       29 CAPTURE                          VAL R1
       30 SETTABLEKS                       R4 R0 K11 ["On"]
       32 NEWCLOSURE                       R4 P3
       33 CAPTURE                          REF R3
       34 SETTABLEKS                       R4 R0 K12 ["Off"]
       36 CLOSEUPVALS                      R3
       37 RETURN                           R0 1
