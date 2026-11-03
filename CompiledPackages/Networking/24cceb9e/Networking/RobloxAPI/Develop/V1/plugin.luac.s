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
        7 NAMECALL                         R1 R1 K1 ["handleRetry"]
        9 CALL                             R1 2 1
       10 GETUPVAL                         R2 0
       11 MOVE                             R4 R1
       12 NAMECALL                         R2 R2 K2 ["parseJson"]
       14 CALL                             R2 2 -1
       15 RETURN                           R2 -1

PROTO_2:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [type]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["table"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       11 LOADK                            R3 K3 ["Expected an array of pluginIds."]
       12 GETIMPORT                        R1 K5 [assert]
       14 CALL                             R1 2 0
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R1 R1 K6 ["composeUrl"]
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K7 ["APIS_URL"]
       21 LOADK                            R3 K8 ["studio-plugin-api/v1/plugins"]
       22 DUPTABLE                         R4 K10 [{"pluginIds"}]
       23 SETTABLEKS                       R0 R4 K9 ["pluginIds"]
       25 CALL                             R1 3 1
       26 DUPTABLE                         R2 K13 [{"getUrl", "makeRequest"}]
       27 NEWCLOSURE                       R3 P0
       28 CAPTURE                          VAL R1
       29 SETTABLEKS                       R3 R2 K11 ["getUrl"]
       31 NEWCLOSURE                       R3 P1
       32 CAPTURE                          UPVAL U1
       33 CAPTURE                          VAL R1
       34 SETTABLEKS                       R3 R2 K12 ["makeRequest"]
       36 RETURN                           R2 1

PROTO_3:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          VAL R0
        3 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_3]
        2 RETURN                           R0 1
