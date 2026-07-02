PROTO_0:
        0 DUPTABLE                         R5 K6 [{[1], ["method"], ["headers"], ["queryParams"], ["body"] = }]
        1 GETUPVAL                         R6 0
        2 GETTABLEKS                       R6 R6 K7 ["buildPath"]
        4 MOVE                             R7 R1
        5 MOVE                             R8 R2
        6 MOVE                             R9 R3
        7 MOVE                             R10 R4
        8 CALL                             R6 4 1
        9 SETTABLEKS                       R6 R5 K0 ["url"]
       11 SETTABLEKS                       R0 R5 K1 ["method"]
       13 NEWTABLE                         R6 0 0
       15 SETTABLEKS                       R6 R5 K2 ["headers"]
       17 NEWTABLE                         R6 0 0
       19 SETTABLEKS                       R6 R5 K3 ["queryParams"]
       21 GETUPVAL                         R8 0
       22 FASTCALL2                        SETMETATABLE R5 R8 ; [+4]
       24 MOVE                             R7 R5
       25 GETIMPORT                        R6 K9 [setmetatable]
       27 CALL                             R6 2 1
       28 RETURN                           R6 1

PROTO_1:
        0 GETIMPORT                        R4 K2 [string.match]
        2 MOVE                             R5 R3
        3 JUMPIF                           R5 ; [+3]
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R5 R5 K3 ["BaseUrl"]
        7 LOADK                            R6 K4 ["^([hH][tT][tT][pP][sS]?)://(.*)"]
        8 CALL                             R4 2 2
        9 AND                              R7 R4 R5
       10 FASTCALL2K                       ASSERT R7 K5 ; [+4]
       12 LOADK                            R8 K5 ["BaseUrl is malformed"]
       13 GETIMPORT                        R6 K7 [assert]
       15 CALL                             R6 2 0
       16 GETIMPORT                        R6 K9 [string.gsub]
       18 MOVE                             R7 R5
       19 LOADK                            R8 K10 ["^[wW][wW][wW]%."]
       20 LOADK                            R9 K11 [""]
       21 CALL                             R6 3 1
       22 MOVE                             R3 R6
       23 GETIMPORT                        R6 K13 [string.lower]
       25 MOVE                             R7 R4
       26 CALL                             R6 1 1
       27 MOVE                             R4 R6
       28 LOADK                            R7 K14 ["%*://%*.%*%*%*"]
       29 MOVE                             R9 R4
       30 MOVE                             R10 R0
       31 MOVE                             R11 R3
       32 MOVE                             R12 R2
       33 MOVE                             R13 R1
       34 NAMECALL                         R7 R7 K15 ["format"]
       36 CALL                             R7 6 1
       37 MOVE                             R6 R7
       38 RETURN                           R6 1

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
        0 JUMPIFNOTEQKNIL                  R2 ; [+2]
        2 RETURN                           R0 1
        3 GETTABLEKS                       R3 R1 K0 ["toRequest"]
        5 MOVE                             R4 R2
        6 CALL                             R3 1 1
        7 JUMPIFEQKNIL                     R3 ; [+28]
        9 FASTCALL1                        TYPE R3 ; [+3]
       10 MOVE                             R5 R3
       11 GETIMPORT                        R4 K2 [type]
       13 CALL                             R4 1 1
       14 JUMPIFNOTEQKS                    R4 K3 ["table"] ; [+14]
       16 GETUPVAL                         R4 0
       17 MOVE                             R6 R3
       18 NAMECALL                         R4 R4 K4 ["JSONEncode"]
       20 CALL                             R4 2 1
       21 SETTABLEKS                       R4 R0 K5 ["body"]
       23 GETTABLEKS                       R4 R0 K6 ["headers"]
       25 LOADK                            R5 K7 ["application/json"]
       26 SETTABLEKS                       R5 R4 K8 ["Content-Type"]
       28 RETURN                           R0 1
       29 FASTCALL1                        TOSTRING R3 ; [+3]
       30 MOVE                             R5 R3
       31 GETIMPORT                        R4 K10 [tostring]
       33 CALL                             R4 1 1
       34 SETTABLEKS                       R4 R0 K5 ["body"]
       36 RETURN                           R0 1

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
        0 GETIMPORT                        R2 K2 [task.defer]
        2 GETUPVAL                         R3 0
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 CALL                             R2 3 0
        6 RETURN                           R0 0

PROTO_11:
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
       22 NAMECALL                         R0 R0 K9 ["RequestInternal"]
       24 CALL                             R0 2 1
       25 NEWCLOSURE                       R2 P0
       26 CAPTURE                          UPVAL U2
       27 NAMECALL                         R0 R0 K10 ["Start"]
       29 CALL                             R0 2 0
       30 RETURN                           R0 0

PROTO_12:
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
       23 GETIMPORT                        R2 K7 [coroutine.running]
       25 CALL                             R2 0 1
       26 GETIMPORT                        R3 K10 [task.defer]
       28 NEWCLOSURE                       R4 P0
       29 CAPTURE                          UPVAL U1
       30 CAPTURE                          VAL R0
       31 CAPTURE                          VAL R2
       32 CALL                             R3 1 0
       33 GETIMPORT                        R3 K12 [coroutine.yield]
       35 CALL                             R3 0 2
       36 JUMPIF                           R3 ; [+9]
       37 DUPTABLE                         R5 K18 [{["success"] = False, ["errorDetails"], ["httpDetails"] = }]
       38 DUPTABLE                         R6 K22 [{["kind"] = "Network", ["networkError"]}]
       39 GETTABLEKS                       R7 R4 K23 ["ErrorMessage"]
       41 SETTABLEKS                       R7 R6 K21 ["networkError"]
       43 SETTABLEKS                       R6 R5 K15 ["errorDetails"]
       45 RETURN                           R5 1
       46 DUPTABLE                         R5 K27 [{"statusCode", "statusMessage", "headers"}]
       47 GETTABLEKS                       R6 R4 K28 ["StatusCode"]
       49 SETTABLEKS                       R6 R5 K24 ["statusCode"]
       51 GETTABLEKS                       R6 R4 K29 ["StatusMessage"]
       53 SETTABLEKS                       R6 R5 K25 ["statusMessage"]
       55 GETTABLEKS                       R6 R4 K30 ["Headers"]
       57 SETTABLEKS                       R6 R5 K26 ["headers"]
       59 LOADB                            R6 0
       60 GETTABLEKS                       R7 R4 K28 ["StatusCode"]
       62 LOADN                            R8 200
       63 JUMPIFNOTLE                      R8 R7 ; [+8]
       65 GETTABLEKS                       R7 R4 K28 ["StatusCode"]
       67 LOADN                            R8 300
       68 JUMPIFLT                         R7 R8 ; [+2]
       70 LOADB                            R6 0 +1
       71 LOADB                            R6 1
       72 JUMPIF                           R6 ; [+19]
       73 DUPTABLE                         R7 K31 [{["success"] = False, ["errorDetails"], ["httpDetails"]}]
       74 DUPTABLE                         R8 K34 [{["kind"] = "HttpStatusCode", ["statusCode"], ["statusMessage"], ["body"]}]
       75 GETTABLEKS                       R9 R4 K28 ["StatusCode"]
       77 SETTABLEKS                       R9 R8 K24 ["statusCode"]
       79 GETTABLEKS                       R9 R4 K29 ["StatusMessage"]
       81 SETTABLEKS                       R9 R8 K25 ["statusMessage"]
       83 GETTABLEKS                       R9 R4 K35 ["Body"]
       85 SETTABLEKS                       R9 R8 K33 ["body"]
       87 SETTABLEKS                       R8 R7 K15 ["errorDetails"]
       89 SETTABLEKS                       R5 R7 K16 ["httpDetails"]
       91 RETURN                           R7 1
       92 LOADNIL                          R7
       93 JUMPIFNOT                        R1 ; [+39]
       94 NEWTABLE                         R8 0 0
       96 GETTABLEKS                       R9 R1 K36 ["fromResponse"]
       98 GETTABLEKS                       R11 R4 K35 ["Body"]
      100 GETIMPORT                        R12 K38 [pcall]
      102 NEWCLOSURE                       R13 P1
      103 CAPTURE                          UPVAL U1
      104 CAPTURE                          VAL R11
      105 CALL                             R12 1 2
      106 JUMPIF                           R12 ; [+3]
      107 NEWTABLE                         R10 0 0
      109 JUMP                             ; [+1]
      110 MOVE                             R10 R13
      111 MOVE                             R11 R8
      112 LOADK                            R12 K39 [""]
      113 CALL                             R9 3 1
      114 MOVE                             R7 R9
      115 LENGTH                           R9 R8
      116 LOADN                            R10 0
      117 JUMPIFNOTLT                      R10 R9 ; [+17]
      119 DUPTABLE                         R9 K31 [{["success"] = False, ["errorDetails"], ["httpDetails"]}]
      120 DUPTABLE                         R10 K42 [{["kind"] = "Validation", ["validationErrors"], ["body"]}]
      121 SETTABLEKS                       R8 R10 K41 ["validationErrors"]
      123 GETTABLEKS                       R11 R4 K35 ["Body"]
      125 SETTABLEKS                       R11 R10 K33 ["body"]
      127 SETTABLEKS                       R10 R9 K15 ["errorDetails"]
      129 SETTABLEKS                       R5 R9 K16 ["httpDetails"]
      131 RETURN                           R9 1
      132 JUMP                             ; [+2]
      133 GETTABLEKS                       R7 R4 K35 ["Body"]
      135 DUPTABLE                         R8 K45 [{["success"] = True, ["data"], ["httpDetails"]}]
      136 SETTABLEKS                       R7 R8 K44 ["data"]
      138 SETTABLEKS                       R5 R8 K16 ["httpDetails"]
      140 RETURN                           R8 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["getContentProvider"]
        7 CALL                             R0 1 1
        8 CALL                             R0 0 1
        9 GETIMPORT                        R1 K1 [require]
       11 GETIMPORT                        R2 K3 [script]
       13 GETTABLEKS                       R2 R2 K5 ["getHttpService"]
       15 CALL                             R1 1 1
       16 CALL                             R1 0 1
       17 NEWTABLE                         R2 16 0
       19 SETTABLEKS                       R2 R2 K6 ["__index"]
       21 DUPCLOSURE                       R3 K7 [PROTO_0]
       22 CAPTURE                          VAL R2
       23 SETTABLEKS                       R3 R2 K8 ["buildRequest"]
       25 DUPCLOSURE                       R3 K9 [PROTO_1]
       26 CAPTURE                          VAL R0
       27 SETTABLEKS                       R3 R2 K10 ["buildPath"]
       29 DUPCLOSURE                       R3 K11 [PROTO_2]
       30 SETTABLEKS                       R3 R2 K12 ["addQueryParameter"]
       32 DUPCLOSURE                       R3 K13 [PROTO_3]
       33 SETTABLEKS                       R3 R2 K14 ["addPathParameter"]
       35 DUPCLOSURE                       R3 K15 [PROTO_4]
       36 SETTABLEKS                       R3 R2 K16 ["addHeaderParameter"]
       38 DUPCLOSURE                       R3 K17 [PROTO_5]
       39 CAPTURE                          VAL R1
       40 SETTABLEKS                       R3 R2 K18 ["setBody"]
       42 DUPCLOSURE                       R3 K19 [PROTO_6]
       43 SETTABLEKS                       R3 R2 K20 ["addFormParameter"]
       45 DUPCLOSURE                       R3 K21 [PROTO_7]
       46 CAPTURE                          VAL R1
       47 SETTABLEKS                       R3 R2 K22 ["buildQueryString"]
       49 DUPCLOSURE                       R3 K23 [PROTO_9]
       50 CAPTURE                          VAL R1
       51 DUPCLOSURE                       R4 K24 [PROTO_12]
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R1
       54 SETTABLEKS                       R4 R2 K25 ["sendAsync"]
       56 RETURN                           R2 1
