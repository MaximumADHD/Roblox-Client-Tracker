PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["BaseUrl"]
        3 LENGTH                           R3 R0
        4 NAMECALL                         R1 R0 K1 ["sub"]
        6 CALL                             R1 2 1
        7 JUMPIFEQKS                       R1 K2 ["/"] ; [+4]
        9 MOVE                             R1 R0
       10 LOADK                            R2 K2 ["/"]
       11 CONCAT                           R0 R1 R2
       12 LOADK                            R3 K3 ["://"]
       13 NAMECALL                         R1 R0 K4 ["find"]
       15 CALL                             R1 2 2
       16 LOADK                            R5 K5 ["%."]
       17 ADDK                             R6 R2 K6 [1]
       18 NAMECALL                         R3 R0 K4 ["find"]
       20 CALL                             R3 3 2
       21 ADDK                             R7 R4 K6 [1]
       22 NAMECALL                         R5 R0 K1 ["sub"]
       24 CALL                             R5 2 1
       25 GETIMPORT                        R6 K9 [string.format]
       27 LOADK                            R7 K10 ["https://itemconfiguration.%s"]
       28 MOVE                             R8 R5
       29 CALL                             R6 2 -1
       30 RETURN                           R6 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["GetAsyncFullUrl"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["JSONDecode"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_3:
        0 GETTABLEKS                       R3 R0 K0 ["text"]
        2 GETTABLEKS                       R4 R1 K0 ["text"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_4:
        0 DUPTABLE                         R0 K2 [{"items", "allowedBundleTypeSettings"}]
        1 NEWTABLE                         R1 0 0
        3 SETTABLEKS                       R1 R0 K0 ["items"]
        5 NEWTABLE                         R1 0 0
        7 SETTABLEKS                       R1 R0 K1 ["allowedBundleTypeSettings"]
        9 GETUPVAL                         R4 0
       10 CALL                             R4 0 1
       11 MOVE                             R2 R4
       12 LOADK                            R3 K3 ["v1/bundles/metadata"]
       13 CONCAT                           R1 R2 R3
       14 GETIMPORT                        R2 K5 [pcall]
       16 NEWCLOSURE                       R3 P0
       17 CAPTURE                          UPVAL U1
       18 CAPTURE                          VAL R1
       19 CALL                             R2 1 2
       20 JUMPIFNOT                        R2 ; [+1]
       21 JUMPIF                           R3 ; [+10]
       22 GETIMPORT                        R4 K7 [warn]
       24 LOADK                            R5 K8 ["[AssetQualityValidation] Failed to fetch bundle metadata:"]
       25 FASTCALL1                        TOSTRING R3 ; [+3]
       26 MOVE                             R7 R3
       27 GETIMPORT                        R6 K10 [tostring]
       29 CALL                             R6 1 1
       30 CALL                             R4 2 0
       31 RETURN                           R0 1
       32 GETIMPORT                        R4 K5 [pcall]
       34 NEWCLOSURE                       R5 P1
       35 CAPTURE                          UPVAL U2
       36 CAPTURE                          VAL R3
       37 CALL                             R4 1 2
       38 JUMPIFNOT                        R4 ; [+7]
       39 FASTCALL1                        TYPEOF R5 ; [+3]
       40 MOVE                             R7 R5
       41 GETIMPORT                        R6 K12 [typeof]
       43 CALL                             R6 1 1
       44 JUMPIFEQKS                       R6 K13 ["table"] ; [+6]
       46 GETIMPORT                        R6 K7 [warn]
       48 LOADK                            R7 K14 ["[AssetQualityValidation] Failed to decode bundle metadata response"]
       49 CALL                             R6 1 0
       50 RETURN                           R0 1
       51 GETTABLEKS                       R6 R5 K1 ["allowedBundleTypeSettings"]
       53 FASTCALL1                        TYPEOF R6 ; [+3]
       54 MOVE                             R8 R6
       55 GETIMPORT                        R7 K12 [typeof]
       57 CALL                             R7 1 1
       58 JUMPIFEQKS                       R7 K13 ["table"] ; [+2]
       60 RETURN                           R0 1
       61 NEWTABLE                         R7 0 0
       63 MOVE                             R8 R6
       64 LOADNIL                          R9
       65 LOADNIL                          R10
       66 FORGPREP                         R8
       67 DUPTABLE                         R15 K17 [{"id", "text"}]
       68 LOADK                            R17 K18 ["bundle:"]
       69 MOVE                             R18 R11
       70 CONCAT                           R16 R17 R18
       71 SETTABLEKS                       R16 R15 K15 ["id"]
       73 SETTABLEKS                       R11 R15 K16 ["text"]
       75 FASTCALL2                        TABLE_INSERT R7 R15 ; [+4]
       77 MOVE                             R14 R7
       78 GETIMPORT                        R13 K20 [table.insert]
       80 CALL                             R13 2 0
       81 FORGLOOP                         R8 1 ; [-15]
       83 GETIMPORT                        R8 K22 [table.sort]
       85 MOVE                             R9 R7
       86 DUPCLOSURE                       R10 K23 [PROTO_3]
       87 CALL                             R8 2 0
       88 DUPTABLE                         R8 K2 [{"items", "allowedBundleTypeSettings"}]
       89 SETTABLEKS                       R7 R8 K0 ["items"]
       91 SETTABLEKS                       R6 R8 K1 ["allowedBundleTypeSettings"]
       93 RETURN                           R8 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ContentProvider"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["HttpRbxApiService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K1 [game]
       15 LOADK                            R4 K5 ["HttpService"]
       16 NAMECALL                         R2 R2 K3 ["GetService"]
       18 CALL                             R2 2 1
       19 DUPCLOSURE                       R3 K6 [PROTO_0]
       20 CAPTURE                          VAL R0
       21 DUPCLOSURE                       R4 K7 [PROTO_4]
       22 CAPTURE                          VAL R3
       23 CAPTURE                          VAL R1
       24 CAPTURE                          VAL R2
       25 RETURN                           R4 1
