PROTO_0:
        0 DUPTABLE                         R4 K6 [{[1], ["method"], ["headers"], ["queryParams"], ["body"] = }]
        1 GETUPVAL                         R5 0
        2 GETTABLEKS                       R5 R5 K7 ["buildPath"]
        4 MOVE                             R6 R1
        5 MOVE                             R7 R2
        6 MOVE                             R8 R3
        7 CALL                             R5 3 1
        8 SETTABLEKS                       R5 R4 K0 ["url"]
       10 SETTABLEKS                       R0 R4 K1 ["method"]
       12 NEWTABLE                         R5 0 0
       14 SETTABLEKS                       R5 R4 K2 ["headers"]
       16 NEWTABLE                         R5 0 0
       18 SETTABLEKS                       R5 R4 K3 ["queryParams"]
       20 GETUPVAL                         R7 0
       21 FASTCALL2                        SETMETATABLE R4 R7 ; [+4]
       23 MOVE                             R6 R4
       24 GETIMPORT                        R5 K9 [setmetatable]
       26 CALL                             R5 2 1
       27 RETURN                           R5 1

PROTO_1:
        0 GETIMPORT                        R3 K2 [string.match]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K3 ["BaseUrl"]
        5 LOADK                            R5 K4 ["^([hH][tT][tT][pP][sS]?)://(.*)"]
        6 CALL                             R3 2 2
        7 AND                              R6 R3 R4
        8 FASTCALL2K                       ASSERT R6 K5 ; [+4]
       10 LOADK                            R7 K5 ["ContentProvider.BaseUrl is malformed"]
       11 GETIMPORT                        R5 K7 [assert]
       13 CALL                             R5 2 0
       14 GETIMPORT                        R5 K9 [string.gsub]
       16 MOVE                             R6 R4
       17 LOADK                            R7 K10 ["^[wW][wW][wW]%."]
       18 LOADK                            R8 K11 [""]
       19 CALL                             R5 3 1
       20 GETIMPORT                        R6 K13 [string.lower]
       22 MOVE                             R7 R3
       23 CALL                             R6 1 1
       24 MOVE                             R3 R6
       25 LOADK                            R7 K14 ["%*://%*.%*%*%*"]
       26 MOVE                             R9 R3
       27 MOVE                             R10 R0
       28 MOVE                             R11 R5
       29 MOVE                             R12 R2
       30 MOVE                             R13 R1
       31 NAMECALL                         R7 R7 K15 ["format"]
       33 CALL                             R7 6 1
       34 MOVE                             R6 R7
       35 RETURN                           R6 1

PROTO_2:
        0 JUMPIFNOTEQKNIL                  R2 ; [+2]
        2 RETURN                           R0 1
        3 GETTABLEKS                       R4 R0 K0 ["queryParams"]
        5 DUPTABLE                         R5 K3 [{"key", "value"}]
        6 SETTABLEKS                       R1 R5 K1 ["key"]
        8 FASTCALL1                        TOSTRING R2 ; [+3]
        9 MOVE                             R7 R2
       10 GETIMPORT                        R6 K5 [tostring]
       12 CALL                             R6 1 1
       13 SETTABLEKS                       R6 R5 K2 ["value"]
       15 FASTCALL2                        TABLE_INSERT R4 R5 ; [+3]
       17 GETIMPORT                        R3 K8 [table.insert]
       19 CALL                             R3 2 0
       20 RETURN                           R0 1

PROTO_3:
        0 GETIMPORT                        R3 K2 [string.gsub]
        2 GETTABLEKS                       R4 R0 K3 ["url"]
        4 MOVE                             R5 R1
        5 FASTCALL1                        TOSTRING R2 ; [+3]
        6 MOVE                             R7 R2
        7 GETIMPORT                        R6 K5 [tostring]
        9 CALL                             R6 1 1
       10 CALL                             R3 3 1
       11 SETTABLEKS                       R3 R0 K3 ["url"]
       13 RETURN                           R0 1

PROTO_4:
        0 JUMPIFNOTEQKNIL                  R2 ; [+2]
        2 RETURN                           R0 1
        3 GETTABLEKS                       R3 R0 K0 ["headers"]
        5 FASTCALL1                        TOSTRING R2 ; [+3]
        6 MOVE                             R5 R2
        7 GETIMPORT                        R4 K2 [tostring]
        9 CALL                             R4 1 1
       10 SETTABLE                         R4 R3 R1
       11 RETURN                           R0 1

PROTO_5:
        0 JUMPIFEQKNIL                     R1 ; [+28]
        2 FASTCALL1                        TYPE R1 ; [+3]
        3 MOVE                             R3 R1
        4 GETIMPORT                        R2 K1 [type]
        6 CALL                             R2 1 1
        7 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+14]
        9 GETUPVAL                         R2 0
       10 MOVE                             R4 R1
       11 NAMECALL                         R2 R2 K3 ["JSONEncode"]
       13 CALL                             R2 2 1
       14 SETTABLEKS                       R2 R0 K4 ["body"]
       16 GETTABLEKS                       R2 R0 K5 ["headers"]
       18 LOADK                            R3 K6 ["application/json"]
       19 SETTABLEKS                       R3 R2 K7 ["Content-Type"]
       21 RETURN                           R0 1
       22 FASTCALL1                        TOSTRING R1 ; [+3]
       23 MOVE                             R3 R1
       24 GETIMPORT                        R2 K9 [tostring]
       26 CALL                             R2 1 1
       27 SETTABLEKS                       R2 R0 K4 ["body"]
       29 RETURN                           R0 1

PROTO_6:
        0 RETURN                           R0 1

PROTO_7:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 LOADK                            R10 K0 ["%*=%*"]
        7 GETUPVAL                         R12 0
        8 GETTABLEKS                       R14 R6 K1 ["key"]
       10 NAMECALL                         R12 R12 K2 ["UrlEncode"]
       12 CALL                             R12 2 1
       13 GETUPVAL                         R13 0
       14 GETTABLEKS                       R15 R6 K3 ["value"]
       16 NAMECALL                         R13 R13 K2 ["UrlEncode"]
       18 CALL                             R13 2 1
       19 NAMECALL                         R10 R10 K4 ["format"]
       21 CALL                             R10 3 1
       22 MOVE                             R9 R10
       23 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       25 MOVE                             R8 R1
       26 GETIMPORT                        R7 K7 [table.insert]
       28 CALL                             R7 2 0
       29 FORGLOOP                         R2 2 ; [-24]
       31 GETIMPORT                        R2 K9 [table.concat]
       33 MOVE                             R3 R1
       34 LOADK                            R4 K10 ["&"]
       35 CALL                             R2 2 -1
       36 RETURN                           R2 -1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["JSONDecode"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_9:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 2
        6 JUMPIF                           R1 ; [+3]
        7 NEWTABLE                         R3 0 0
        9 RETURN                           R3 1
       10 RETURN                           R2 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K4 [{"Url", "Method", "Headers", "Body"}]
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K5 ["url"]
        5 SETTABLEKS                       R3 R2 K0 ["Url"]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K6 ["method"]
       10 SETTABLEKS                       R3 R2 K1 ["Method"]
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K7 ["headers"]
       15 SETTABLEKS                       R3 R2 K2 ["Headers"]
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R3 R3 K8 ["body"]
       20 SETTABLEKS                       R3 R2 K3 ["Body"]
       22 NAMECALL                         R0 R0 K9 ["RequestAsync"]
       24 CALL                             R0 2 -1
       25 RETURN                           R0 -1

PROTO_11:
        0 GETTABLEKS                       R3 R0 K0 ["queryParams"]
        2 LENGTH                           R2 R3
        3 LOADN                            R3 0
        4 JUMPIFNOTLT                      R3 R2 ; [+18]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K1 ["buildQueryString"]
        9 GETTABLEKS                       R3 R0 K0 ["queryParams"]
       11 CALL                             R2 1 1
       12 GETTABLEKS                       R4 R0 K2 ["url"]
       14 LOADK                            R6 K3 ["?%*"]
       15 MOVE                             R8 R2
       16 NAMECALL                         R6 R6 K4 ["format"]
       18 CALL                             R6 2 1
       19 MOVE                             R5 R6
       20 CONCAT                           R3 R4 R5
       21 SETTABLEKS                       R3 R0 K2 ["url"]
       23 GETIMPORT                        R2 K6 [pcall]
       25 NEWCLOSURE                       R3 P0
       26 CAPTURE                          UPVAL U1
       27 CAPTURE                          VAL R0
       28 CALL                             R2 1 2
       29 JUMPIF                           R2 ; [+7]
       30 DUPTABLE                         R4 K12 [{["success"] = False, ["errorDetails"], ["httpDetails"] = }]
       31 DUPTABLE                         R5 K16 [{["kind"] = "Network", ["networkError"]}]
       32 SETTABLEKS                       R3 R5 K15 ["networkError"]
       34 SETTABLEKS                       R5 R4 K9 ["errorDetails"]
       36 RETURN                           R4 1
       37 DUPTABLE                         R4 K20 [{"statusCode", "statusMessage", "headers"}]
       38 GETTABLEKS                       R5 R3 K21 ["StatusCode"]
       40 SETTABLEKS                       R5 R4 K17 ["statusCode"]
       42 GETTABLEKS                       R5 R3 K22 ["StatusMessage"]
       44 SETTABLEKS                       R5 R4 K18 ["statusMessage"]
       46 GETTABLEKS                       R5 R3 K23 ["Headers"]
       48 SETTABLEKS                       R5 R4 K19 ["headers"]
       50 GETTABLEKS                       R5 R3 K24 ["Success"]
       52 JUMPIF                           R5 ; [+19]
       53 DUPTABLE                         R5 K25 [{["success"] = False, ["errorDetails"], ["httpDetails"]}]
       54 DUPTABLE                         R6 K28 [{["kind"] = "HttpStatusCode", ["statusCode"], ["statusMessage"], ["body"]}]
       55 GETTABLEKS                       R7 R3 K21 ["StatusCode"]
       57 SETTABLEKS                       R7 R6 K17 ["statusCode"]
       59 GETTABLEKS                       R7 R3 K22 ["StatusMessage"]
       61 SETTABLEKS                       R7 R6 K18 ["statusMessage"]
       63 GETTABLEKS                       R7 R3 K29 ["Body"]
       65 SETTABLEKS                       R7 R6 K27 ["body"]
       67 SETTABLEKS                       R6 R5 K9 ["errorDetails"]
       69 SETTABLEKS                       R4 R5 K10 ["httpDetails"]
       71 RETURN                           R5 1
       72 GETTABLEKS                       R6 R3 K29 ["Body"]
       74 GETIMPORT                        R7 K6 [pcall]
       76 NEWCLOSURE                       R8 P1
       77 CAPTURE                          UPVAL U2
       78 CAPTURE                          VAL R6
       79 CALL                             R7 1 2
       80 JUMPIF                           R7 ; [+3]
       81 NEWTABLE                         R5 0 0
       83 JUMP                             ; [+1]
       84 MOVE                             R5 R8
       85 MOVE                             R6 R1
       86 MOVE                             R7 R5
       87 CALL                             R6 1 1
       88 JUMPIFNOT                        R6 ; [+13]
       89 DUPTABLE                         R7 K25 [{["success"] = False, ["errorDetails"], ["httpDetails"]}]
       90 DUPTABLE                         R8 K32 [{["kind"] = "Validation", ["validationError"], ["body"]}]
       91 SETTABLEKS                       R6 R8 K31 ["validationError"]
       93 GETTABLEKS                       R9 R3 K29 ["Body"]
       95 SETTABLEKS                       R9 R8 K27 ["body"]
       97 SETTABLEKS                       R8 R7 K9 ["errorDetails"]
       99 SETTABLEKS                       R4 R7 K10 ["httpDetails"]
      101 RETURN                           R7 1
      102 DUPTABLE                         R7 K35 [{["success"] = True, ["data"], ["httpDetails"]}]
      103 SETTABLEKS                       R5 R7 K34 ["data"]
      105 SETTABLEKS                       R4 R7 K10 ["httpDetails"]
      107 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["getContentProvider"]
        7 CALL                             R0 1 1
        8 CALL                             R0 0 1
        9 GETIMPORT                        R1 K1 [require]
       11 GETIMPORT                        R2 K3 [script]
       13 GETTABLEKS                       R2 R2 K5 ["getHttpRbxApiService"]
       15 CALL                             R1 1 1
       16 CALL                             R1 0 1
       17 GETIMPORT                        R2 K1 [require]
       19 GETIMPORT                        R3 K3 [script]
       21 GETTABLEKS                       R3 R3 K6 ["getHttpService"]
       23 CALL                             R2 1 1
       24 CALL                             R2 0 1
       25 NEWTABLE                         R3 16 0
       27 SETTABLEKS                       R3 R3 K7 ["__index"]
       29 DUPCLOSURE                       R4 K8 [PROTO_0]
       30 CAPTURE                          VAL R3
       31 SETTABLEKS                       R4 R3 K9 ["buildRequest"]
       33 DUPCLOSURE                       R4 K10 [PROTO_1]
       34 CAPTURE                          VAL R0
       35 SETTABLEKS                       R4 R3 K11 ["buildPath"]
       37 DUPCLOSURE                       R4 K12 [PROTO_2]
       38 SETTABLEKS                       R4 R3 K13 ["addQueryParameter"]
       40 DUPCLOSURE                       R4 K14 [PROTO_3]
       41 SETTABLEKS                       R4 R3 K15 ["addPathParameter"]
       43 DUPCLOSURE                       R4 K16 [PROTO_4]
       44 SETTABLEKS                       R4 R3 K17 ["addHeaderParameter"]
       46 DUPCLOSURE                       R4 K18 [PROTO_5]
       47 CAPTURE                          VAL R2
       48 SETTABLEKS                       R4 R3 K19 ["setBody"]
       50 DUPCLOSURE                       R4 K20 [PROTO_6]
       51 SETTABLEKS                       R4 R3 K21 ["addFormParameter"]
       53 DUPCLOSURE                       R4 K22 [PROTO_7]
       54 CAPTURE                          VAL R2
       55 SETTABLEKS                       R4 R3 K23 ["buildQueryString"]
       57 DUPCLOSURE                       R4 K24 [PROTO_9]
       58 CAPTURE                          VAL R2
       59 DUPCLOSURE                       R5 K25 [PROTO_11]
       60 CAPTURE                          VAL R3
       61 CAPTURE                          VAL R1
       62 CAPTURE                          VAL R2
       63 SETTABLEKS                       R5 R3 K26 ["sendAsync"]
       65 RETURN                           R3 1
