PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["named"]
        4 LOADK                            R4 K1 ["Roact"]
        5 MOVE                             R5 R0
        6 CONCAT                           R3 R4 R5
        7 CALL                             R2 1 1
        8 SETTABLE                         R2 R1 R0
        9 RETURN                           R0 0

PROTO_1:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFEQKS                       R1 K2 ["table"] ; [+3]
        7 LOADNIL                          R1
        8 RETURN                           R1 1
        9 GETUPVAL                         R2 0
       10 GETTABLE                         R1 R0 R2
       11 RETURN                           R1 1

PROTO_2:
        0 LOADK                            R0 K0 ["RoactType"]
        1 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["Symbol"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K7 [newproxy]
       12 LOADB                            R2 1
       13 CALL                             R1 1 1
       14 NEWTABLE                         R2 1 0
       16 DUPCLOSURE                       R3 K8 [PROTO_0]
       17 CAPTURE                          VAL R2
       18 CAPTURE                          VAL R0
       19 GETTABLEKS                       R4 R0 K9 ["named"]
       21 LOADK                            R5 K10 ["RoactHostChangeEvent"]
       22 CALL                             R4 1 1
       23 SETTABLEKS                       R4 R2 K11 ["HostChangeEvent"]
       25 GETTABLEKS                       R4 R0 K9 ["named"]
       27 LOADK                            R5 K12 ["RoactHostEvent"]
       28 CALL                             R4 1 1
       29 SETTABLEKS                       R4 R2 K13 ["HostEvent"]
       31 DUPCLOSURE                       R4 K14 [PROTO_1]
       32 CAPTURE                          VAL R1
       33 SETTABLEKS                       R4 R2 K15 ["of"]
       35 FASTCALL1                        GETMETATABLE R1 ; [+3]
       36 MOVE                             R5 R1
       37 GETIMPORT                        R4 K17 [getmetatable]
       39 CALL                             R4 1 1
       40 SETTABLEKS                       R2 R4 K18 ["__index"]
       42 FASTCALL1                        GETMETATABLE R1 ; [+3]
       43 MOVE                             R5 R1
       44 GETIMPORT                        R4 K17 [getmetatable]
       46 CALL                             R4 1 1
       47 DUPCLOSURE                       R5 K19 [PROTO_2]
       48 SETTABLEKS                       R5 R4 K20 ["__tostring"]
       50 RETURN                           R1 1
