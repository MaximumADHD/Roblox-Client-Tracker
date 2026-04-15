PROTO_0:
        0 GETUPVAL                         R2 0
        1 FASTCALL1                        TYPE R0 ; [+3]
        2 MOVE                             R5 R0
        3 GETIMPORT                        R4 K1 [type]
        5 CALL                             R4 1 1
        6 JUMPIFEQKS                       R4 K2 ["table"] ; [+2]
        8 LOADB                            R3 0 +1
        9 LOADB                            R3 1
       10 LOADK                            R4 K3 ["screenOptions must be a table"]
       11 CALL                             R2 2 0
       12 GETUPVAL                         R2 0
       13 FASTCALL1                        TYPE R1 ; [+3]
       14 MOVE                             R5 R1
       15 GETIMPORT                        R4 K1 [type]
       17 CALL                             R4 1 1
       18 JUMPIFEQKS                       R4 K2 ["table"] ; [+2]
       20 LOADB                            R3 0 +1
       21 LOADB                            R3 1
       22 LOADK                            R4 K4 ["route must be a table"]
       23 CALL                             R2 2 0
       24 GETUPVAL                         R2 0
       25 GETTABLEKS                       R5 R1 K5 ["routeName"]
       27 FASTCALL1                        TYPE R5 ; [+2]
       28 GETIMPORT                        R4 K1 [type]
       30 CALL                             R4 1 1
       31 JUMPIFEQKS                       R4 K6 ["string"] ; [+2]
       33 LOADB                            R3 0 +1
       34 LOADB                            R3 1
       35 LOADK                            R4 K7 ["route.routeName must be a string"]
       36 CALL                             R2 2 0
       37 GETUPVAL                         R2 0
       38 GETTABLEKS                       R5 R0 K8 ["title"]
       40 FASTCALL1                        TYPE R5 ; [+2]
       41 GETIMPORT                        R4 K1 [type]
       43 CALL                             R4 1 1
       44 JUMPIFNOTEQKS                    R4 K9 ["function"] ; [+2]
       46 LOADB                            R3 0 +1
       47 LOADB                            R3 1
       48 LOADK                            R4 K10 ["title cannot be defined as a function in navigation options for screen '%s'"]
       49 GETTABLEKS                       R5 R1 K5 ["routeName"]
       51 CALL                             R2 3 0
       52 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R5 K3 [script]
        5 GETTABLEKS                       R4 R5 K4 ["Parent"]
        7 GETTABLEKS                       R3 R4 K4 ["Parent"]
        9 GETTABLEKS                       R2 R3 K5 ["utils"]
       11 GETTABLEKS                       R1 R2 K6 ["validate"]
       13 CALL                             R0 1 1
       14 DUPCLOSURE                       R1 K7 [PROTO_0]
       15 CAPTURE                          VAL R0
       16 RETURN                           R1 1
