PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["named"]
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
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["Symbol"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R2 K3 [script]
       14 GETTABLEKS                       R2 R2 K4 ["Parent"]
       16 GETTABLEKS                       R2 R2 K6 ["strict"]
       18 CALL                             R1 1 1
       19 GETIMPORT                        R2 K8 [newproxy]
       21 LOADB                            R3 1
       22 CALL                             R2 1 1
       23 NEWTABLE                         R3 1 0
       25 DUPCLOSURE                       R4 K9 [PROTO_0]
       26 CAPTURE                          VAL R3
       27 CAPTURE                          VAL R0
       28 GETTABLEKS                       R5 R0 K10 ["named"]
       30 LOADK                            R6 K11 ["RoactBinding"]
       31 CALL                             R5 1 1
       32 SETTABLEKS                       R5 R3 K12 ["Binding"]
       34 GETTABLEKS                       R5 R0 K10 ["named"]
       36 LOADK                            R6 K13 ["RoactElement"]
       37 CALL                             R5 1 1
       38 SETTABLEKS                       R5 R3 K14 ["Element"]
       40 GETTABLEKS                       R5 R0 K10 ["named"]
       42 LOADK                            R6 K15 ["RoactHostChangeEvent"]
       43 CALL                             R5 1 1
       44 SETTABLEKS                       R5 R3 K16 ["HostChangeEvent"]
       46 GETTABLEKS                       R5 R0 K10 ["named"]
       48 LOADK                            R6 K17 ["RoactHostEvent"]
       49 CALL                             R5 1 1
       50 SETTABLEKS                       R5 R3 K18 ["HostEvent"]
       52 GETTABLEKS                       R5 R0 K10 ["named"]
       54 LOADK                            R6 K19 ["RoactStatefulComponentClass"]
       55 CALL                             R5 1 1
       56 SETTABLEKS                       R5 R3 K20 ["StatefulComponentClass"]
       58 GETTABLEKS                       R5 R0 K10 ["named"]
       60 LOADK                            R6 K21 ["RoactStatefulComponentInstance"]
       61 CALL                             R5 1 1
       62 SETTABLEKS                       R5 R3 K22 ["StatefulComponentInstance"]
       64 GETTABLEKS                       R5 R0 K10 ["named"]
       66 LOADK                            R6 K23 ["RoactVirtualNode"]
       67 CALL                             R5 1 1
       68 SETTABLEKS                       R5 R3 K24 ["VirtualNode"]
       70 GETTABLEKS                       R5 R0 K10 ["named"]
       72 LOADK                            R6 K25 ["RoactVirtualTree"]
       73 CALL                             R5 1 1
       74 SETTABLEKS                       R5 R3 K26 ["VirtualTree"]
       76 DUPCLOSURE                       R5 K27 [PROTO_1]
       77 CAPTURE                          VAL R2
       78 SETTABLEKS                       R5 R3 K28 ["of"]
       80 FASTCALL1                        GETMETATABLE R2 ; [+3]
       81 MOVE                             R6 R2
       82 GETIMPORT                        R5 K30 [getmetatable]
       84 CALL                             R5 1 1
       85 SETTABLEKS                       R3 R5 K31 ["__index"]
       87 FASTCALL1                        GETMETATABLE R2 ; [+3]
       88 MOVE                             R6 R2
       89 GETIMPORT                        R5 K30 [getmetatable]
       91 CALL                             R5 1 1
       92 DUPCLOSURE                       R6 K32 [PROTO_2]
       93 SETTABLEKS                       R6 R5 K33 ["__tostring"]
       95 MOVE                             R5 R1
       96 MOVE                             R6 R3
       97 LOADK                            R7 K34 ["Type"]
       98 CALL                             R5 2 0
       99 RETURN                           R2 1
