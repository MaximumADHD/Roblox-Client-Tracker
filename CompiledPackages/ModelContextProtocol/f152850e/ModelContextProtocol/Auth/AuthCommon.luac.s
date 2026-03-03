PROTO_0:
        0 GETUPVAL                         R1 0
        1 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 SETTABLE                         R2 R3 R1
        2 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R1
        2 RETURN                           R2 1

PROTO_3:
        0 NEWTABLE                         R0 0 0
        2 DUPTABLE                         R1 K3 [{"getData", "set", "get"}]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 SETTABLEKS                       R2 R1 K0 ["getData"]
        7 NEWCLOSURE                       R2 P1
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R2 R1 K1 ["set"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 SETTABLEKS                       R2 R1 K2 ["get"]
       15 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 RETURN                           R1 1

PROTO_5:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETUPVAL                         R13 1
        7 MOVE                             R15 R5
        8 NAMECALL                         R13 R13 K0 ["UrlEncode"]
       10 CALL                             R13 2 1
       11 MOVE                             R10 R13
       12 LOADK                            R11 K1 ["="]
       13 GETUPVAL                         R12 1
       14 MOVE                             R14 R6
       15 NAMECALL                         R12 R12 K0 ["UrlEncode"]
       17 CALL                             R12 2 1
       18 CONCAT                           R9 R10 R12
       19 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       21 MOVE                             R8 R1
       22 GETIMPORT                        R7 K4 [table.insert]
       24 CALL                             R7 2 0
       25 FORGLOOP                         R2 2 ; [-20]
       27 GETIMPORT                        R2 K6 [table.concat]
       29 MOVE                             R3 R1
       30 LOADK                            R4 K7 ["&"]
       31 CALL                             R2 2 1
       32 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R3 0
        1 SETTABLE                         R2 R3 R1
        2 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R1
        2 RETURN                           R2 1

PROTO_8:
        0 GETUPVAL                         R4 0
        1 GETTABLE                         R3 R4 R1
        2 JUMPIFNOT                        R3 ; [+10]
        3 GETUPVAL                         R3 0
        4 GETUPVAL                         R10 0
        5 GETTABLE                         R5 R10 R1
        6 LOADK                            R6 K0 ["&"]
        7 MOVE                             R7 R1
        8 LOADK                            R8 K1 ["="]
        9 MOVE                             R9 R2
       10 CONCAT                           R4 R5 R9
       11 SETTABLE                         R4 R3 R1
       12 RETURN                           R0 0
       13 GETUPVAL                         R3 0
       14 SETTABLE                         R2 R3 R1
       15 RETURN                           R0 0

PROTO_9:
        0 NEWTABLE                         R0 0 0
        2 DUPTABLE                         R1 K5 [{"getData", "getFormData", "set", "get", "append"}]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 SETTABLEKS                       R2 R1 K0 ["getData"]
        7 NEWCLOSURE                       R2 P1
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U0
       10 SETTABLEKS                       R2 R1 K1 ["getFormData"]
       12 NEWCLOSURE                       R2 P2
       13 CAPTURE                          VAL R0
       14 SETTABLEKS                       R2 R1 K2 ["set"]
       16 NEWCLOSURE                       R2 P3
       17 CAPTURE                          VAL R0
       18 SETTABLEKS                       R2 R1 K3 ["get"]
       20 NEWCLOSURE                       R2 P4
       21 CAPTURE                          VAL R0
       22 SETTABLEKS                       R2 R1 K4 ["append"]
       24 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["decode"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_11:
        0 DUPTABLE                         R4 K5 [{"ok", "status", "headers", "text", "getJson"}]
        1 SETTABLEKS                       R0 R4 K0 ["ok"]
        3 SETTABLEKS                       R1 R4 K1 ["status"]
        5 SETTABLEKS                       R2 R4 K2 ["headers"]
        7 SETTABLEKS                       R3 R4 K3 ["text"]
        9 NEWCLOSURE                       R5 P0
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          VAL R3
       12 SETTABLEKS                       R5 R4 K4 ["getJson"]
       14 RETURN                           R4 1

PROTO_12:
        0 LOADK                            R0 K0 [""]
        1 LOADN                            R3 1
        2 LOADN                            R1 32
        3 LOADN                            R2 1
        4 FORNPREP                         R1
        5 GETIMPORT                        R4 K3 [math.random]
        7 LOADN                            R5 1
        8 LOADN                            R6 62
        9 CALL                             R4 2 1
       10 MOVE                             R5 R0
       11 LOADK                            R7 K4 ["ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"]
       12 FASTCALL3                        STRING_SUB R7 R4 R4
       14 MOVE                             R8 R4
       15 MOVE                             R9 R4
       16 GETIMPORT                        R6 K7 [string.sub]
       18 CALL                             R6 3 1
       19 CONCAT                           R0 R5 R6
       20 FORNLOOP                         R1
       21 RETURN                           R0 1

PROTO_13:
        0 NEWTABLE                         R4 4 0
        2 GETUPVAL                         R5 0
        3 FASTCALL2                        SETMETATABLE R4 R5 ; [+3]
        5 GETIMPORT                        R3 K1 [setmetatable]
        7 CALL                             R3 2 1
        8 SETTABLEKS                       R0 R3 K2 ["name"]
       10 SETTABLEKS                       R1 R3 K3 ["description"]
       12 SETTABLEKS                       R2 R3 K4 ["uri"]
       14 RETURN                           R3 1

PROTO_14:
        0 GETIMPORT                        R2 K3 [string.match]
        2 MOVE                             R3 R0
        3 LOADK                            R4 K4 ["://[^/]+(.*)"]
        4 CALL                             R2 2 1
        5 ORK                              R1 R2 K0 [""]
        6 RETURN                           R1 1

PROTO_15:
        0 GETIMPORT                        R2 K3 [string.match]
        2 MOVE                             R3 R0
        3 LOADK                            R4 K4 ["([^:]+://[^/]+)"]
        4 CALL                             R2 2 1
        5 ORK                              R1 R2 K0 [""]
        6 RETURN                           R1 1

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 DUPTABLE                         R2 K3 [{"method", "headers", "body"}]
        3 GETUPVAL                         R3 2
        4 SETTABLEKS                       R3 R2 K0 ["method"]
        6 GETUPVAL                         R3 3
        7 SETTABLEKS                       R3 R2 K1 ["headers"]
        9 GETUPVAL                         R3 4
       10 SETTABLEKS                       R3 R2 K2 ["body"]
       12 CALL                             R0 2 -1
       13 RETURN                           R0 -1

PROTO_17:
        0 JUMPIFNOT                        R1 ; [+3]
        1 GETTABLEKS                       R2 R1 K0 ["method"]
        3 JUMPIF                           R2 ; [+1]
        4 LOADK                            R2 K1 ["GET"]
        5 JUMPIFNOT                        R1 ; [+3]
        6 GETTABLEKS                       R3 R1 K2 ["headers"]
        8 JUMPIF                           R3 ; [+2]
        9 NEWTABLE                         R3 0 0
       11 MOVE                             R4 R1
       12 JUMPIFNOT                        R4 ; [+2]
       13 GETTABLEKS                       R4 R1 K3 ["body"]
       15 GETIMPORT                        R5 K5 [pcall]
       17 NEWCLOSURE                       R6 P0
       18 CAPTURE                          UPVAL U0
       19 CAPTURE                          VAL R0
       20 CAPTURE                          VAL R2
       21 CAPTURE                          VAL R3
       22 CAPTURE                          VAL R4
       23 CALL                             R5 1 2
       24 JUMPIF                           R5 ; [+25]
       25 GETIMPORT                        R7 K7 [warn]
       27 MOVE                             R8 R6
       28 CALL                             R7 1 0
       29 GETUPVAL                         R8 1
       30 CALL                             R8 0 1
       31 DUPTABLE                         R7 K12 [{"ok", "status", "headers", "text", "getJson"}]
       32 LOADB                            R9 0
       33 SETTABLEKS                       R9 R7 K8 ["ok"]
       35 LOADN                            R9 0
       36 SETTABLEKS                       R9 R7 K9 ["status"]
       38 SETTABLEKS                       R8 R7 K2 ["headers"]
       40 LOADK                            R9 K13 [""]
       41 SETTABLEKS                       R9 R7 K10 ["text"]
       43 LOADK                            R10 K13 [""]
       44 NEWCLOSURE                       R9 P1
       45 CAPTURE                          UPVAL U2
       46 CAPTURE                          VAL R10
       47 SETTABLEKS                       R9 R7 K11 ["getJson"]
       49 RETURN                           R7 1
       50 GETUPVAL                         R7 1
       51 CALL                             R7 0 1
       52 GETTABLEKS                       R8 R6 K14 ["Headers"]
       54 JUMPIF                           R8 ; [+2]
       55 NEWTABLE                         R8 0 0
       57 LOADNIL                          R9
       58 LOADNIL                          R10
       59 FORGPREP                         R8
       60 MOVE                             R15 R11
       61 MOVE                             R16 R12
       62 NAMECALL                         R13 R7 K15 ["set"]
       64 CALL                             R13 3 0
       65 FORGLOOP                         R8 2 ; [-6]
       67 GETTABLEKS                       R9 R6 K16 ["Success"]
       69 GETTABLEKS                       R10 R6 K17 ["StatusCode"]
       71 GETTABLEKS                       R12 R6 K18 ["Body"]
       73 ORK                              R11 R12 K13 [""]
       74 DUPTABLE                         R8 K12 [{"ok", "status", "headers", "text", "getJson"}]
       75 SETTABLEKS                       R9 R8 K8 ["ok"]
       77 SETTABLEKS                       R10 R8 K9 ["status"]
       79 SETTABLEKS                       R7 R8 K2 ["headers"]
       81 SETTABLEKS                       R11 R8 K10 ["text"]
       83 NEWCLOSURE                       R12 P1
       84 CAPTURE                          UPVAL U2
       85 CAPTURE                          VAL R11
       86 SETTABLEKS                       R12 R8 K11 ["getJson"]
       88 RETURN                           R8 1

PROTO_18:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["ModelContextProtocol"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R4 R1 K10 ["Util"]
       17 GETTABLEKS                       R3 R4 K11 ["Json"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K12 ["Types"]
       24 CALL                             R3 1 1
       25 DUPCLOSURE                       R4 K13 [PROTO_3]
       26 DUPCLOSURE                       R5 K14 [PROTO_9]
       27 CAPTURE                          VAL R0
       28 DUPCLOSURE                       R6 K15 [PROTO_11]
       29 CAPTURE                          VAL R2
       30 DUPCLOSURE                       R7 K16 [PROTO_12]
       31 NEWTABLE                         R8 2 0
       33 SETTABLEKS                       R8 R8 K17 ["__index"]
       35 DUPCLOSURE                       R9 K18 [PROTO_13]
       36 CAPTURE                          VAL R8
       37 SETTABLEKS                       R9 R8 K19 ["new"]
       39 DUPCLOSURE                       R9 K20 [PROTO_14]
       40 DUPCLOSURE                       R10 K21 [PROTO_15]
       41 DUPCLOSURE                       R11 K22 [PROTO_18]
       42 CAPTURE                          VAL R4
       43 CAPTURE                          VAL R2
       44 SETGLOBAL                        R11 K23 ["makeFetchFn"]
       46 DUPTABLE                         R11 K31 [{"createHeaders", "createURLSearchParams", "createResponse", "generateState", "extractPathname", "extractOrigin", "makeFetchFn", "OAuthError"}]
       47 SETTABLEKS                       R4 R11 K24 ["createHeaders"]
       49 SETTABLEKS                       R5 R11 K25 ["createURLSearchParams"]
       51 SETTABLEKS                       R6 R11 K26 ["createResponse"]
       53 SETTABLEKS                       R7 R11 K27 ["generateState"]
       55 SETTABLEKS                       R9 R11 K28 ["extractPathname"]
       57 SETTABLEKS                       R10 R11 K29 ["extractOrigin"]
       59 GETGLOBAL                        R12 K23 ["makeFetchFn"]
       61 SETTABLEKS                       R12 R11 K23 ["makeFetchFn"]
       63 SETTABLEKS                       R8 R11 K30 ["OAuthError"]
       65 RETURN                           R11 1
