PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETUPVAL                         R4 3
        4 CALL                             R3 1 -1
        5 NAMECALL                         R0 R0 K0 ["search"]
        7 CALL                             R0 -1 -1
        8 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CALL                             R0 1 2
        8 GETUPVAL                         R2 4
        9 GETUPVAL                         R5 5
       10 GETTABLEKS                       R4 R5 K2 ["LoadedWebResults"]
       12 MOVE                             R5 R0
       13 GETUPVAL                         R6 1
       14 MOVE                             R7 R1
       15 CALL                             R4 3 -1
       16 NAMECALL                         R2 R2 K3 ["dispatch"]
       18 CALL                             R2 -1 0
       19 RETURN                           R0 0

PROTO_2:
        0 NAMECALL                         R2 R0 K0 ["getState"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R3 R1 K1 ["gamePermissionsController"]
        5 GETUPVAL                         R7 0
        6 GETTABLEKS                       R6 R7 K2 ["SearchTextChanged"]
        8 GETUPVAL                         R7 1
        9 CALL                             R6 1 -1
       10 NAMECALL                         R4 R0 K3 ["dispatch"]
       12 CALL                             R4 -1 0
       13 GETUPVAL                         R4 1
       14 JUMPIFEQKS                       R4 K4 [""] ; [+3]
       16 GETUPVAL                         R4 2
       17 JUMPIF                           R4 ; [+1]
       18 RETURN                           R0 0
       19 GETTABLEKS                       R6 R2 K5 ["CollaboratorSearch"]
       21 GETTABLEKS                       R5 R6 K6 ["CachedSearchResults"]
       23 GETUPVAL                         R6 1
       24 GETTABLE                         R4 R5 R6
       25 JUMPIF                           R4 ; [+18]
       26 GETUPVAL                         R7 0
       27 GETTABLEKS                       R6 R7 K7 ["LoadWebResults"]
       29 GETUPVAL                         R7 1
       30 CALL                             R6 1 -1
       31 NAMECALL                         R4 R0 K3 ["dispatch"]
       33 CALL                             R4 -1 0
       34 GETIMPORT                        R4 K9 [spawn]
       36 NEWCLOSURE                       R5 P0
       37 CAPTURE                          VAL R3
       38 CAPTURE                          UPVAL U1
       39 CAPTURE                          UPVAL U3
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R0
       42 CAPTURE                          UPVAL U0
       43 CALL                             R4 1 0
       44 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          UPVAL U1
        5 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R4 R0 K5 ["Src"]
       13 GETTABLEKS                       R3 R4 K6 ["Actions"]
       15 GETTABLEKS                       R2 R3 K7 ["CollaboratorSearchActions"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R5 R0 K5 ["Src"]
       22 GETTABLEKS                       R4 R5 K8 ["Selectors"]
       24 GETTABLEKS                       R3 R4 K9 ["IsGame17Plus"]
       26 CALL                             R2 1 1
       27 DUPCLOSURE                       R3 K10 [PROTO_3]
       28 CAPTURE                          VAL R1
       29 CAPTURE                          VAL R2
       30 RETURN                           R3 1
