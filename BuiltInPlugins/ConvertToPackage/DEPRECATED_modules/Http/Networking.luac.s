PROTO_0:
        0 GETIMPORT                        R1 K1 [pairs]
        2 GETUPVAL                         R2 0
        3 CALL                             R1 1 3
        4 FORGPREP_NEXT                    R1
        5 LOADN                            R6 100
        6 JUMPIFNOTLE                      R6 R5 ; [+11]
        8 FASTCALL1                        TOSTRING R5 ; [+3]
        9 MOVE                             R9 R5
       10 GETIMPORT                        R8 K3 [tostring]
       12 CALL                             R8 1 1
       13 NAMECALL                         R6 R0 K4 ["find"]
       15 CALL                             R6 2 1
       16 JUMPIFNOT                        R6 ; [+1]
       17 RETURN                           R5 1
       18 FORGLOOP                         R1 2 ; [-14]
       20 LOADK                            R3 K5 ["2%d%d"]
       21 NAMECALL                         R1 R0 K4 ["find"]
       23 CALL                             R1 2 1
       24 JUMPIFNOT                        R1 ; [+4]
       25 GETUPVAL                         R2 0
       26 GETTABLEKS                       R1 R2 K6 ["OK"]
       28 RETURN                           R1 1
       29 LOADK                            R3 K7 ["curl_easy_perform"]
       30 NAMECALL                         R1 R0 K4 ["find"]
       32 CALL                             R1 2 1
       33 JUMPIFNOT                        R1 ; [+9]
       34 LOADK                            R3 K8 ["SSL"]
       35 NAMECALL                         R1 R0 K4 ["find"]
       37 CALL                             R1 2 1
       38 JUMPIFNOT                        R1 ; [+4]
       39 GETUPVAL                         R2 0
       40 GETTABLEKS                       R1 R2 K9 ["BAD_TLS"]
       42 RETURN                           R1 1
       43 GETUPVAL                         R2 0
       44 GETTABLEKS                       R1 R2 K10 ["UNKNOWN_ERROR"]
       46 RETURN                           R1 1

PROTO_1:
        0 GETIMPORT                        R3 K1 [tick]
        2 CALL                             R3 0 1
        3 GETIMPORT                        R4 K3 [pcall]
        5 MOVE                             R5 R2
        6 CALL                             R4 1 2
        7 GETIMPORT                        R6 K1 [tick]
        9 CALL                             R6 0 1
       10 SUB                              R8 R6 R3
       11 MULK                             R7 R8 K4 [1000]
       12 GETUPVAL                         R9 0
       13 GETTABLEKS                       R8 R9 K5 ["OK"]
       15 JUMPIF                           R4 ; [+4]
       16 GETUPVAL                         R9 1
       17 MOVE                             R10 R5
       18 CALL                             R9 1 1
       19 MOVE                             R8 R9
       20 GETUPVAL                         R10 2
       21 GETTABLEKS                       R9 R10 K6 ["new"]
       23 MOVE                             R10 R5
       24 MOVE                             R11 R7
       25 MOVE                             R12 R8
       26 MOVE                             R13 R0
       27 MOVE                             R14 R1
       28 CALL                             R9 5 -1
       29 RETURN                           R9 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["GetAsyncFullUrl"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["GET"]
        2 MOVE                             R4 R1
        3 NEWCLOSURE                       R5 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 CALL                             R2 3 -1
        7 RETURN                           R2 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETIMPORT                        R4 K3 [Enum.ThrottlingPriority.Default]
        5 GETUPVAL                         R5 3
        6 NAMECALL                         R0 R0 K4 ["PostAsyncFullUrl"]
        8 CALL                             R0 5 -1
        9 RETURN                           R0 -1

PROTO_5:
        0 JUMPIF                           R3 ; [+2]
        1 GETIMPORT                        R3 K3 [Enum.HttpContentType.ApplicationJson]
        3 GETUPVAL                         R4 0
        4 LOADK                            R5 K4 ["POST"]
        5 MOVE                             R6 R1
        6 NEWCLOSURE                       R7 P0
        7 CAPTURE                          VAL R0
        8 CAPTURE                          VAL R1
        9 CAPTURE                          VAL R2
       10 CAPTURE                          REF R3
       11 CALL                             R4 3 -1
       12 CLOSEUPVALS                      R3
       13 RETURN                           R4 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["RequestAsync"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["DELETE"]
        2 MOVE                             R4 R1
        3 NEWCLOSURE                       R5 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 CALL                             R2 3 -1
        7 RETURN                           R2 -1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["RequestAsync"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["PATCH"]
        2 MOVE                             R4 R1
        3 NEWCLOSURE                       R5 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 CALL                             R2 3 -1
        7 RETURN                           R2 -1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 FASTCALL1                        TABLE_UNPACK R2 ; [+2]
        3 GETIMPORT                        R1 K1 [unpack]
        5 CALL                             R1 1 -1
        6 CALL                             R0 -1 1
        7 GETTABLEKS                       R1 R0 K2 ["responseCode"]
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R2 R3 K3 ["OK"]
       12 JUMPIFNOTEQ                      R1 R2 ; [+5]
       14 GETUPVAL                         R1 3
       15 MOVE                             R2 R0
       16 CALL                             R1 1 0
       17 RETURN                           R0 0
       18 GETUPVAL                         R1 4
       19 MOVE                             R2 R0
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_11:
        0 GETIMPORT                        R2 K1 [spawn]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          VAL R0
        7 CAPTURE                          VAL R1
        8 CALL                             R2 1 0
        9 RETURN                           R0 0

PROTO_12:
        0 PREPVARARGS                      1
        1 NEWTABLE                         R1 0 0
        3 GETVARARGS                       R2 -1
        4 SETLIST                          R1 R2 -1 [1]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K0 ["new"]
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          VAL R0
       11 CAPTURE                          VAL R1
       12 CAPTURE                          UPVAL U1
       13 CALL                             R2 1 1
       14 RETURN                           R2 1

PROTO_13:
        0 DUPTABLE                         R0 K1 [{"_httpImpl"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["_httpImpl"]
        4 GETUPVAL                         R3 1
        5 FASTCALL2                        SETMETATABLE R0 R3 ; [+4]
        7 MOVE                             R2 R0
        8 GETIMPORT                        R1 K3 [setmetatable]
       10 CALL                             R1 2 0
       11 RETURN                           R0 1

PROTO_14:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R1
        2 NAMECALL                         R2 R2 K0 ["JSONEncode"]
        4 CALL                             R2 2 -1
        5 RETURN                           R2 -1

PROTO_15:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R1
        2 NAMECALL                         R2 R2 K0 ["JSONDecode"]
        4 CALL                             R2 2 -1
        5 RETURN                           R2 -1

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["responseBody"]
        3 NAMECALL                         R1 R1 K1 ["jsonDecode"]
        5 CALL                             R1 2 1
        6 SETTABLEKS                       R1 R0 K0 ["responseBody"]
        8 RETURN                           R0 1

PROTO_17:
        0 RETURN                           R0 1

PROTO_18:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R4 R0 K0 ["_httpImpl"]
        4 MOVE                             R5 R1
        5 CALL                             R2 3 1
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          VAL R0
        8 DUPCLOSURE                       R5 K1 [PROTO_17]
        9 NAMECALL                         R2 R2 K2 ["andThen"]
       11 CALL                             R2 3 -1
       12 RETURN                           R2 -1

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["responseBody"]
        3 NAMECALL                         R1 R1 K1 ["jsonDecode"]
        5 CALL                             R1 2 1
        6 SETTABLEKS                       R1 R0 K0 ["responseBody"]
        8 RETURN                           R0 1

PROTO_20:
        0 RETURN                           R0 1

PROTO_21:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R5 R0 K0 ["_httpImpl"]
        4 MOVE                             R6 R1
        5 MOVE                             R7 R2
        6 CALL                             R3 4 1
        7 NEWCLOSURE                       R5 P0
        8 CAPTURE                          VAL R0
        9 DUPCLOSURE                       R6 K1 [PROTO_20]
       10 NAMECALL                         R3 R3 K2 ["andThen"]
       12 CALL                             R3 3 -1
       13 RETURN                           R3 -1

PROTO_22:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R5 R0 K0 ["_httpImpl"]
        4 MOVE                             R6 R1
        5 MOVE                             R7 R2
        6 CALL                             R3 4 -1
        7 RETURN                           R3 -1

PROTO_23:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R4 R0 K0 ["_httpImpl"]
        4 MOVE                             R5 R1
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_24:
        0 DUPTABLE                         R2 K2 [{"Url", "Method"}]
        1 SETTABLEKS                       R1 R2 K0 ["Url"]
        3 LOADK                            R3 K3 ["DELETE"]
        4 SETTABLEKS                       R3 R2 K1 ["Method"]
        6 GETUPVAL                         R3 0
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R5 R0 K4 ["_httpImpl"]
       10 MOVE                             R6 R2
       11 CALL                             R3 3 -1
       12 RETURN                           R3 -1

PROTO_25:
        0 DUPTABLE                         R3 K4 [{"Url", "Method", "Body", "Headers"}]
        1 SETTABLEKS                       R1 R3 K0 ["Url"]
        3 LOADK                            R4 K5 ["PATCH"]
        4 SETTABLEKS                       R4 R3 K1 ["Method"]
        6 SETTABLEKS                       R2 R3 K2 ["Body"]
        8 NEWTABLE                         R4 1 0
       10 LOADK                            R5 K6 ["application/json"]
       11 SETTABLEKS                       R5 R4 K7 ["Content-Type"]
       13 SETTABLEKS                       R4 R3 K3 ["Headers"]
       15 GETUPVAL                         R4 0
       16 GETUPVAL                         R5 1
       17 GETTABLEKS                       R6 R0 K8 ["_httpImpl"]
       19 MOVE                             R7 R3
       20 CALL                             R4 3 -1
       21 RETURN                           R4 -1

PROTO_26:
        0 JUMPIFNOT                        R0 ; [+23]
        1 GETTABLEKS                       R2 R1 K0 ["StatusCode"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R3 R4 K1 ["BAD_REQUEST"]
        6 JUMPIFNOTLE                      R3 R2 ; [+12]
        8 GETUPVAL                         R2 1
        9 LOADK                            R4 K2 ["HTTP error: "]
       10 GETTABLEKS                       R6 R1 K0 ["StatusCode"]
       12 FASTCALL1                        TOSTRING R6 ; [+2]
       13 GETIMPORT                        R5 K4 [tostring]
       15 CALL                             R5 1 1
       16 CONCAT                           R3 R4 R5
       17 CALL                             R2 1 0
       18 RETURN                           R0 0
       19 GETUPVAL                         R2 2
       20 GETTABLEKS                       R3 R1 K5 ["Body"]
       22 CALL                             R2 1 0
       23 RETURN                           R0 0
       24 GETUPVAL                         R2 1
       25 LOADK                            R4 K2 ["HTTP error: "]
       26 GETTABLEKS                       R6 R1 K6 ["HttpError"]
       28 FASTCALL1                        TOSTRING R6 ; [+2]
       29 GETIMPORT                        R5 K4 [tostring]
       31 CALL                             R5 1 1
       32 CONCAT                           R3 R4 R5
       33 CALL                             R2 1 0
       34 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["RequestInternal"]
        4 CALL                             R0 2 1
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 NAMECALL                         R0 R0 K1 ["Start"]
       11 CALL                             R0 2 0
       12 RETURN                           R0 0

PROTO_28:
        0 GETIMPORT                        R2 K1 [spawn]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          VAL R1
        7 CAPTURE                          VAL R0
        8 CALL                             R2 1 0
        9 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["new"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R1
        6 CAPTURE                          UPVAL U2
        7 CALL                             R2 1 -1
        8 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["Promise"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R4 K3 [script]
       14 GETTABLEKS                       R3 R4 K4 ["Parent"]
       16 GETTABLEKS                       R2 R3 K6 ["HttpResponse"]
       18 CALL                             R1 1 1
       19 GETIMPORT                        R2 K1 [require]
       21 GETIMPORT                        R5 K3 [script]
       23 GETTABLEKS                       R4 R5 K4 ["Parent"]
       25 GETTABLEKS                       R3 R4 K7 ["StatusCodes"]
       27 CALL                             R2 1 1
       28 GETIMPORT                        R3 K9 [game]
       30 LOADK                            R5 K10 ["HttpService"]
       31 NAMECALL                         R3 R3 K11 ["GetService"]
       33 CALL                             R3 2 1
       34 GETIMPORT                        R4 K9 [game]
       36 LOADK                            R6 K12 ["HttpRbxApiService"]
       37 NAMECALL                         R4 R4 K11 ["GetService"]
       39 CALL                             R4 2 1
       40 DUPCLOSURE                       R5 K13 [PROTO_0]
       41 CAPTURE                          VAL R2
       42 DUPCLOSURE                       R6 K14 [PROTO_1]
       43 CAPTURE                          VAL R2
       44 CAPTURE                          VAL R5
       45 CAPTURE                          VAL R1
       46 DUPCLOSURE                       R7 K15 [PROTO_3]
       47 CAPTURE                          VAL R6
       48 DUPCLOSURE                       R8 K16 [PROTO_5]
       49 CAPTURE                          VAL R6
       50 DUPCLOSURE                       R9 K17 [PROTO_7]
       51 CAPTURE                          VAL R6
       52 DUPCLOSURE                       R10 K18 [PROTO_9]
       53 CAPTURE                          VAL R6
       54 DUPCLOSURE                       R11 K19 [PROTO_12]
       55 CAPTURE                          VAL R0
       56 CAPTURE                          VAL R2
       57 NEWTABLE                         R12 16 0
       59 SETTABLEKS                       R12 R12 K20 ["__index"]
       61 DUPCLOSURE                       R13 K21 [PROTO_13]
       62 CAPTURE                          VAL R4
       63 CAPTURE                          VAL R12
       64 SETTABLEKS                       R13 R12 K22 ["new"]
       66 DUPCLOSURE                       R13 K23 [PROTO_14]
       67 CAPTURE                          VAL R3
       68 SETTABLEKS                       R13 R12 K24 ["jsonEncode"]
       70 DUPCLOSURE                       R13 K25 [PROTO_15]
       71 CAPTURE                          VAL R3
       72 SETTABLEKS                       R13 R12 K26 ["jsonDecode"]
       74 DUPCLOSURE                       R13 K27 [PROTO_18]
       75 CAPTURE                          VAL R11
       76 CAPTURE                          VAL R7
       77 SETTABLEKS                       R13 R12 K28 ["httpGetJson"]
       79 DUPCLOSURE                       R13 K29 [PROTO_21]
       80 CAPTURE                          VAL R11
       81 CAPTURE                          VAL R8
       82 SETTABLEKS                       R13 R12 K30 ["httpPostJson"]
       84 DUPCLOSURE                       R13 K31 [PROTO_22]
       85 CAPTURE                          VAL R11
       86 CAPTURE                          VAL R8
       87 SETTABLEKS                       R13 R12 K32 ["httpPost"]
       89 DUPCLOSURE                       R13 K33 [PROTO_23]
       90 CAPTURE                          VAL R11
       91 CAPTURE                          VAL R7
       92 SETTABLEKS                       R13 R12 K34 ["httpGet"]
       94 DUPCLOSURE                       R13 K35 [PROTO_24]
       95 CAPTURE                          VAL R11
       96 CAPTURE                          VAL R9
       97 SETTABLEKS                       R13 R12 K36 ["httpDelete"]
       99 DUPCLOSURE                       R13 K37 [PROTO_25]
      100 CAPTURE                          VAL R11
      101 CAPTURE                          VAL R10
      102 SETTABLEKS                       R13 R12 K38 ["httpPatch"]
      104 DUPCLOSURE                       R13 K39 [PROTO_29]
      105 CAPTURE                          VAL R0
      106 CAPTURE                          VAL R3
      107 CAPTURE                          VAL R2
      108 SETTABLEKS                       R13 R12 K40 ["requestInternal"]
      110 RETURN                           R12 1
