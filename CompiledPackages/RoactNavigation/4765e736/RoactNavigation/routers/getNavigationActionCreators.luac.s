PROTO_0:
        0 JUMPIFNOTEQKNIL                  R0 ; [+22]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K0 ["key"]
        5 JUMPIFNOT                        R1 ; [+17]
        6 GETUPVAL                         R1 1
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R4 R5 K0 ["key"]
       10 FASTCALL1                        TYPE R4 ; [+2]
       11 GETIMPORT                        R3 K2 [type]
       13 CALL                             R3 1 1
       14 JUMPIFEQKS                       R3 K3 ["string"] ; [+2]
       16 LOADB                            R2 0 +1
       17 LOADB                            R2 1
       18 LOADK                            R3 K4 [".goBack(): key should be a string"]
       19 CALL                             R1 2 0
       20 GETUPVAL                         R1 0
       21 GETTABLEKS                       R0 R1 K0 ["key"]
       23 GETUPVAL                         R2 2
       24 GETTABLEKS                       R1 R2 K5 ["back"]
       26 DUPTABLE                         R2 K6 [{"key"}]
       27 SETTABLEKS                       R0 R2 K0 ["key"]
       29 CALL                             R1 1 -1
       30 RETURN                           R1 -1

PROTO_1:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [type]
        4 CALL                             R3 1 1
        5 JUMPIFNOTEQKS                    R3 K2 ["string"] ; [+13]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R3 R4 K3 ["navigate"]
       10 DUPTABLE                         R4 K7 [{"routeName", "params", "action"}]
       11 SETTABLEKS                       R0 R4 K4 ["routeName"]
       13 SETTABLEKS                       R1 R4 K5 ["params"]
       15 SETTABLEKS                       R2 R4 K6 ["action"]
       17 CALL                             R3 1 -1
       18 RETURN                           R3 -1
       19 GETUPVAL                         R3 1
       20 FASTCALL1                        TYPE R0 ; [+3]
       21 MOVE                             R6 R0
       22 GETIMPORT                        R5 K1 [type]
       24 CALL                             R5 1 1
       25 JUMPIFEQKS                       R5 K8 ["table"] ; [+2]
       27 LOADB                            R4 0 +1
       28 LOADB                            R4 1
       29 LOADK                            R5 K9 [".navigate(): navigateTo must be a string or table"]
       30 CALL                             R3 2 0
       31 GETUPVAL                         R3 1
       32 JUMPIFEQKNIL                     R1 ; [+2]
       34 LOADB                            R4 0 +1
       35 LOADB                            R4 1
       36 LOADK                            R5 K10 [".navigate(): params can only be provided with a string navigateTo value"]
       37 CALL                             R3 2 0
       38 GETUPVAL                         R3 1
       39 JUMPIFEQKNIL                     R2 ; [+2]
       41 LOADB                            R4 0 +1
       42 LOADB                            R4 1
       43 LOADK                            R5 K11 [".navigate(): child action can only be provided with a string navigateTo value"]
       44 CALL                             R3 2 0
       45 GETUPVAL                         R4 0
       46 GETTABLEKS                       R3 R4 K3 ["navigate"]
       48 MOVE                             R4 R0
       49 CALL                             R3 1 -1
       50 RETURN                           R3 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R5 1
        2 GETTABLEKS                       R4 R5 K0 ["key"]
        4 FASTCALL1                        TYPE R4 ; [+2]
        5 GETIMPORT                        R3 K2 [type]
        7 CALL                             R3 1 1
        8 JUMPIFEQKS                       R3 K3 ["string"] ; [+2]
       10 LOADB                            R2 0 +1
       11 LOADB                            R2 1
       12 LOADK                            R3 K4 [".setParams(): cannot be called by the root navigator"]
       13 CALL                             R1 2 0
       14 GETUPVAL                         R2 2
       15 GETTABLEKS                       R1 R2 K5 ["setParams"]
       17 DUPTABLE                         R2 K7 [{"params", "key"}]
       18 SETTABLEKS                       R0 R2 K6 ["params"]
       20 GETUPVAL                         R4 1
       21 GETTABLEKS                       R3 R4 K0 ["key"]
       23 SETTABLEKS                       R3 R2 K0 ["key"]
       25 CALL                             R1 1 -1
       26 RETURN                           R1 -1

PROTO_3:
        0 NEWTABLE                         R1 4 0
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          UPVAL U1
        6 SETTABLEKS                       R2 R1 K0 ["goBack"]
        8 DUPCLOSURE                       R2 K1 [PROTO_1]
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U0
       11 SETTABLEKS                       R2 R1 K2 ["navigate"]
       13 NEWCLOSURE                       R2 P2
       14 CAPTURE                          UPVAL U0
       15 CAPTURE                          VAL R0
       16 CAPTURE                          UPVAL U1
       17 SETTABLEKS                       R2 R1 K3 ["setParams"]
       19 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R4 K3 [script]
        5 GETTABLEKS                       R3 R4 K4 ["Parent"]
        7 GETTABLEKS                       R2 R3 K4 ["Parent"]
        9 GETTABLEKS                       R1 R2 K5 ["NavigationActions"]
       11 CALL                             R0 1 1
       12 GETIMPORT                        R1 K1 [require]
       14 GETIMPORT                        R6 K3 [script]
       16 GETTABLEKS                       R5 R6 K4 ["Parent"]
       18 GETTABLEKS                       R4 R5 K4 ["Parent"]
       20 GETTABLEKS                       R3 R4 K6 ["utils"]
       22 GETTABLEKS                       R2 R3 K7 ["validate"]
       24 CALL                             R1 1 1
       25 DUPCLOSURE                       R2 K8 [PROTO_3]
       26 CAPTURE                          VAL R1
       27 CAPTURE                          VAL R0
       28 RETURN                           R2 1
