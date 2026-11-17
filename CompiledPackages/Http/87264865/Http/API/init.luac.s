PROTO_0:
        0 JUMPIF                           R0 ; [+2]
        1 NEWTABLE                         R0 0 0
        3 GETTABLEKS                       R1 R0 K0 ["networking"]
        5 JUMPIF                           R1 ; [+5]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K1 ["new"]
        9 CALL                             R2 0 1
       10 MOVE                             R1 R2
       11 DUPTABLE                         R2 K6 [{"Images", "Develop", "Inventory", "WWW"}]
       12 GETIMPORT                        R3 K8 [require]
       14 GETIMPORT                        R4 K10 [script]
       16 GETTABLEKS                       R4 R4 K2 ["Images"]
       18 CALL                             R3 1 1
       19 SETTABLEKS                       R3 R2 K2 ["Images"]
       21 GETIMPORT                        R3 K8 [require]
       23 GETIMPORT                        R4 K10 [script]
       25 GETTABLEKS                       R4 R4 K3 ["Develop"]
       27 CALL                             R3 1 1
       28 MOVE                             R4 R1
       29 CALL                             R3 1 1
       30 SETTABLEKS                       R3 R2 K3 ["Develop"]
       32 GETIMPORT                        R3 K8 [require]
       34 GETIMPORT                        R4 K10 [script]
       36 GETTABLEKS                       R4 R4 K4 ["Inventory"]
       38 CALL                             R3 1 1
       39 MOVE                             R4 R1
       40 CALL                             R3 1 1
       41 SETTABLEKS                       R3 R2 K4 ["Inventory"]
       43 GETIMPORT                        R3 K8 [require]
       45 GETIMPORT                        R4 K10 [script]
       47 GETTABLEKS                       R4 R4 K5 ["WWW"]
       49 CALL                             R3 1 1
       50 MOVE                             R4 R1
       51 CALL                             R3 1 1
       52 SETTABLEKS                       R3 R2 K5 ["WWW"]
       54 GETUPVAL                         R5 1
       55 FASTCALL2                        SETMETATABLE R2 R5 ; [+4]
       57 MOVE                             R4 R2
       58 GETIMPORT                        R3 K12 [setmetatable]
       60 CALL                             R3 2 0
       61 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["mock"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["new"]
        8 DUPTABLE                         R3 K3 [{"networking"}]
        9 SETTABLEKS                       R1 R3 K2 ["networking"]
       11 CALL                             R2 1 -1
       12 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["Networking"]
        9 CALL                             R0 1 1
       10 NEWTABLE                         R1 2 0
       12 DUPCLOSURE                       R2 K6 [PROTO_0]
       13 CAPTURE                          VAL R0
       14 CAPTURE                          VAL R1
       15 SETTABLEKS                       R2 R1 K7 ["new"]
       17 DUPCLOSURE                       R2 K8 [PROTO_1]
       18 CAPTURE                          VAL R0
       19 CAPTURE                          VAL R1
       20 SETTABLEKS                       R2 R1 K9 ["mock"]
       22 RETURN                           R1 1
