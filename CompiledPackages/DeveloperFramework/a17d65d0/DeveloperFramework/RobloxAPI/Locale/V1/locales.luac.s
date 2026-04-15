PROTO_0:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["get"]
        4 CALL                             R0 2 1
        5 GETUPVAL                         R1 0
        6 MOVE                             R3 R0
        7 NAMECALL                         R1 R1 K1 ["parseJson"]
        9 CALL                             R1 2 -1
       10 RETURN                           R1 -1

PROTO_2:
        0 JUMPIFNOT                        R0 ; [+22]
        1 FASTCALL1                        TYPE R0 ; [+3]
        2 MOVE                             R4 R0
        3 GETIMPORT                        R3 K1 [type]
        5 CALL                             R3 1 1
        6 JUMPIFEQKS                       R3 K2 ["string"] ; [+2]
        8 LOADB                            R2 0 +1
        9 LOADB                            R2 1
       10 GETIMPORT                        R3 K4 [string.format]
       12 LOADK                            R4 K5 ["localeCode must be string, received %s"]
       13 FASTCALL1                        TYPE R0 ; [+3]
       14 MOVE                             R6 R0
       15 GETIMPORT                        R5 K1 [type]
       17 CALL                             R5 1 1
       18 CALL                             R3 2 -1
       19 FASTCALL                         ASSERT ; [+2]
       20 GETIMPORT                        R1 K7 [assert]
       22 CALL                             R1 -1 0
       23 LOADB                            R1 0
       24 JUMPIFEQKNIL                     R0 ; [+4]
       26 DUPTABLE                         R1 K9 [{"displayValueLocaleCode"}]
       27 SETTABLEKS                       R0 R1 K8 ["displayValueLocaleCode"]
       29 GETUPVAL                         R3 0
       30 GETTABLEKS                       R2 R3 K10 ["composeUrl"]
       32 GETUPVAL                         R4 0
       33 GETTABLEKS                       R3 R4 K11 ["LOCALE_URL"]
       35 LOADK                            R4 K12 ["v1/locales"]
       36 MOVE                             R5 R1
       37 CALL                             R2 3 1
       38 DUPTABLE                         R3 K15 [{"getUrl", "makeRequest"}]
       39 NEWCLOSURE                       R4 P0
       40 CAPTURE                          VAL R2
       41 SETTABLEKS                       R4 R3 K13 ["getUrl"]
       43 NEWCLOSURE                       R4 P1
       44 CAPTURE                          UPVAL U1
       45 CAPTURE                          VAL R2
       46 SETTABLEKS                       R4 R3 K14 ["makeRequest"]
       48 RETURN                           R3 1

PROTO_3:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          VAL R0
        3 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_3]
        2 RETURN                           R0 1
