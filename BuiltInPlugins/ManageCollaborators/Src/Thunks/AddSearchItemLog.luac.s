PROTO_0:
        0 NAMECALL                         R2 R0 K0 ["getState"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R4 R2 K1 ["SearchItemLogs"]
        5 GETUPVAL                         R5 0
        6 GETTABLE                         R3 R4 R5
        7 JUMPIF                           R3 ; [+2]
        8 NEWTABLE                         R3 0 0
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R4 R4 K2 ["Dictionary"]
       13 GETTABLEKS                       R4 R4 K3 ["join"]
       15 GETTABLEKS                       R5 R2 K1 ["SearchItemLogs"]
       17 NEWTABLE                         R6 1 0
       19 GETUPVAL                         R7 0
       20 GETUPVAL                         R8 1
       21 GETTABLEKS                       R8 R8 K2 ["Dictionary"]
       23 GETTABLEKS                       R8 R8 K3 ["join"]
       25 MOVE                             R9 R3
       26 NEWTABLE                         R10 1 0
       28 GETUPVAL                         R11 2
       29 GETUPVAL                         R12 3
       30 SETTABLE                         R12 R10 R11
       31 CALL                             R8 2 1
       32 SETTABLE                         R8 R6 R7
       33 CALL                             R4 2 1
       34 GETUPVAL                         R7 4
       35 MOVE                             R8 R4
       36 CALL                             R7 1 -1
       37 NAMECALL                         R5 R0 K4 ["dispatch"]
       39 CALL                             R5 -1 0
       40 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          VAL R2
        5 CAPTURE                          UPVAL U1
        6 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ManageCollaborators"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Cryo"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Actions"]
       20 GETTABLEKS                       R3 R3 K10 ["SetSearchItemLogs"]
       22 CALL                             R2 1 1
       23 DUPCLOSURE                       R3 K11 [PROTO_1]
       24 CAPTURE                          VAL R1
       25 CAPTURE                          VAL R2
       26 RETURN                           R3 1
