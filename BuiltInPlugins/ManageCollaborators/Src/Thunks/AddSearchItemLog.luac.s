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
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Collab8766_LogCollabSearchItemClickedEventV4"]
        4 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        6 CALL                             R0 2 1
        7 JUMPIFNOT                        R0 ; [+26]
        8 GETIMPORT                        R1 K5 [script]
       10 LOADK                            R3 K6 ["ManageCollaborators"]
       11 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       13 CALL                             R1 2 1
       14 GETIMPORT                        R2 K9 [require]
       16 GETTABLEKS                       R3 R1 K10 ["Packages"]
       18 GETTABLEKS                       R3 R3 K11 ["Cryo"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K9 [require]
       23 GETTABLEKS                       R4 R1 K12 ["Src"]
       25 GETTABLEKS                       R4 R4 K13 ["Actions"]
       27 GETTABLEKS                       R4 R4 K14 ["SetSearchItemLogs"]
       29 CALL                             R3 1 1
       30 DUPCLOSURE                       R4 K15 [PROTO_1]
       31 CAPTURE                          VAL R2
       32 CAPTURE                          VAL R3
       33 RETURN                           R4 1
       34 RETURN                           R0 0
