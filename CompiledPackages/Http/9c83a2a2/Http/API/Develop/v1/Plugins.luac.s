PROTO_0:
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
       15 LENGTH                           R3 R0
       16 LOADN                            R4 0
       17 JUMPIFLT                         R4 R3 ; [+2]
       19 LOADB                            R2 0 +1
       20 LOADB                            R2 1
       21 FASTCALL2K                       ASSERT R2 K6 ; [+4]
       23 LOADK                            R3 K6 ["Expected a list of plugins to fetch data for."]
       24 GETIMPORT                        R1 K5 [assert]
       26 CALL                             R1 2 0
       27 LENGTH                           R1 R0
       28 LOADN                            R2 100
       29 JUMPIFNOTLT                      R2 R1 ; [+5]
       31 GETIMPORT                        R1 K8 [warn]
       33 LOADK                            R2 K9 ["Requesting more than 100 plugins at a time is likely to cause problems."]
       34 CALL                             R1 1 0
       35 GETUPVAL                         R2 0
       36 GETTABLEKS                       R1 R2 K10 ["makeQueryString"]
       38 DUPTABLE                         R2 K12 [{"pluginIds"}]
       39 GETIMPORT                        R3 K14 [table.concat]
       41 MOVE                             R4 R0
       42 LOADK                            R5 K15 [","]
       43 CALL                             R3 2 1
       44 SETTABLEKS                       R3 R2 K11 ["pluginIds"]
       46 CALL                             R1 1 1
       47 GETIMPORT                        R2 K18 [string.format]
       49 LOADK                            R3 K19 ["%sstudio-plugin-api/v1/plugins?%s"]
       50 GETUPVAL                         R5 0
       51 GETTABLEKS                       R4 R5 K20 ["APIS_URL"]
       53 MOVE                             R5 R1
       54 CALL                             R2 3 1
       55 GETUPVAL                         R3 1
       56 MOVE                             R5 R2
       57 NAMECALL                         R3 R3 K21 ["get"]
       59 CALL                             R3 2 1
       60 GETUPVAL                         R4 1
       61 MOVE                             R6 R3
       62 NAMECALL                         R4 R4 K22 ["handleRetry"]
       64 CALL                             R4 2 1
       65 GETUPVAL                         R6 2
       66 GETTABLEKS                       R5 R6 K23 ["parseJson"]
       68 MOVE                             R6 R4
       69 CALL                             R5 1 -1
       70 RETURN                           R5 -1

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["BaseUrl"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Networking"]
       20 CALL                             R2 1 1
       21 DUPCLOSURE                       R3 K7 [PROTO_1]
       22 CAPTURE                          VAL R1
       23 CAPTURE                          VAL R2
       24 RETURN                           R3 1
