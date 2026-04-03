PROTO_0:
        0 DUPTABLE                         R4 K5 [{"url", "method", "headers", "queryParams", "body"}]
        1 GETUPVAL                         R6 0
        2 GETTABLEKS                       R5 R6 K6 ["buildPath"]
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
       20 LOADNIL                          R5
       21 SETTABLEKS                       R5 R4 K4 ["body"]
       23 GETUPVAL                         R7 0
       24 FASTCALL2                        SETMETATABLE R4 R7 ; [+4]
       26 MOVE                             R6 R4
       27 GETIMPORT                        R5 K8 [setmetatable]
       29 CALL                             R5 2 1
       30 RETURN                           R5 1

PROTO_1:
        0 GETIMPORT                        R3 K2 [string.match]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R4 R5 K3 ["BaseUrl"]
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
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R3 R4 K5 ["url"]
        5 SETTABLEKS                       R3 R2 K0 ["Url"]
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R3 R4 K6 ["method"]
       10 SETTABLEKS                       R3 R2 K1 ["Method"]
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R3 R4 K7 ["headers"]
       15 SETTABLEKS                       R3 R2 K2 ["Headers"]
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R3 R4 K8 ["body"]
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
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K1 ["buildQueryString"]
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
       36 JUMPIF                           R3 ; [+18]
       37 DUPTABLE                         R5 K16 [{"success", "errorDetails", "httpDetails"}]
       38 LOADB                            R6 0
       39 SETTABLEKS                       R6 R5 K13 ["success"]
       41 DUPTABLE                         R6 K19 [{"kind", "networkError"}]
       42 LOADK                            R7 K20 ["Network"]
       43 SETTABLEKS                       R7 R6 K17 ["kind"]
       45 GETTABLEKS                       R7 R4 K21 ["ErrorMessage"]
       47 SETTABLEKS                       R7 R6 K18 ["networkError"]
       49 SETTABLEKS                       R6 R5 K14 ["errorDetails"]
       51 LOADNIL                          R6
       52 SETTABLEKS                       R6 R5 K15 ["httpDetails"]
       54 RETURN                           R5 1
       55 DUPTABLE                         R5 K25 [{"statusCode", "statusMessage", "headers"}]
       56 GETTABLEKS                       R6 R4 K26 ["StatusCode"]
       58 SETTABLEKS                       R6 R5 K22 ["statusCode"]
       60 GETTABLEKS                       R6 R4 K27 ["StatusMessage"]
       62 SETTABLEKS                       R6 R5 K23 ["statusMessage"]
       64 GETTABLEKS                       R6 R4 K28 ["Headers"]
       66 SETTABLEKS                       R6 R5 K24 ["headers"]
       68 LOADB                            R6 0
       69 GETTABLEKS                       R7 R4 K26 ["StatusCode"]
       71 LOADN                            R8 200
       72 JUMPIFNOTLE                      R8 R7 ; [+8]
       74 GETTABLEKS                       R7 R4 K26 ["StatusCode"]
       76 LOADN                            R8 44
       77 JUMPIFLT                         R7 R8 ; [+2]
       79 LOADB                            R6 0 +1
       80 LOADB                            R6 1
       81 JUMPIF                           R6 ; [+25]
       82 DUPTABLE                         R7 K16 [{"success", "errorDetails", "httpDetails"}]
       83 LOADB                            R8 0
       84 SETTABLEKS                       R8 R7 K13 ["success"]
       86 DUPTABLE                         R8 K30 [{"kind", "statusCode", "statusMessage", "body"}]
       87 LOADK                            R9 K31 ["HttpStatusCode"]
       88 SETTABLEKS                       R9 R8 K17 ["kind"]
       90 GETTABLEKS                       R9 R4 K26 ["StatusCode"]
       92 SETTABLEKS                       R9 R8 K22 ["statusCode"]
       94 GETTABLEKS                       R9 R4 K27 ["StatusMessage"]
       96 SETTABLEKS                       R9 R8 K23 ["statusMessage"]
       98 GETTABLEKS                       R9 R4 K32 ["Body"]
      100 SETTABLEKS                       R9 R8 K29 ["body"]
      102 SETTABLEKS                       R8 R7 K14 ["errorDetails"]
      104 SETTABLEKS                       R5 R7 K15 ["httpDetails"]
      106 RETURN                           R7 1
      107 LOADNIL                          R7
      108 JUMPIFNOT                        R1 ; [+44]
      109 NEWTABLE                         R8 0 0
      111 GETTABLEKS                       R9 R1 K33 ["fromResponse"]
      113 GETTABLEKS                       R11 R4 K32 ["Body"]
      115 GETIMPORT                        R12 K35 [pcall]
      117 NEWCLOSURE                       R13 P1
      118 CAPTURE                          UPVAL U1
      119 CAPTURE                          VAL R11
      120 CALL                             R12 1 2
      121 JUMPIF                           R12 ; [+3]
      122 NEWTABLE                         R10 0 0
      124 JUMP                             ; [+1]
      125 MOVE                             R10 R13
      126 MOVE                             R11 R8
      127 LOADK                            R12 K36 [""]
      128 CALL                             R9 3 1
      129 MOVE                             R7 R9
      130 LENGTH                           R9 R8
      131 LOADN                            R10 0
      132 JUMPIFNOTLT                      R10 R9 ; [+20]
      134 DUPTABLE                         R9 K16 [{"success", "errorDetails", "httpDetails"}]
      135 LOADB                            R10 0
      136 SETTABLEKS                       R10 R9 K13 ["success"]
      138 DUPTABLE                         R10 K38 [{"kind", "validationErrors", "body"}]
      139 LOADK                            R11 K39 ["Validation"]
      140 SETTABLEKS                       R11 R10 K17 ["kind"]
      142 SETTABLEKS                       R8 R10 K37 ["validationErrors"]
      144 GETTABLEKS                       R11 R4 K32 ["Body"]
      146 SETTABLEKS                       R11 R10 K29 ["body"]
      148 SETTABLEKS                       R10 R9 K14 ["errorDetails"]
      150 SETTABLEKS                       R5 R9 K15 ["httpDetails"]
      152 RETURN                           R9 1
      153 DUPTABLE                         R8 K41 [{"success", "data", "httpDetails"}]
      154 LOADB                            R9 1
      155 SETTABLEKS                       R9 R8 K13 ["success"]
      157 SETTABLEKS                       R7 R8 K40 ["data"]
      159 SETTABLEKS                       R5 R8 K15 ["httpDetails"]
      161 RETURN                           R8 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R2 K3 [script]
        5 GETTABLEKS                       R1 R2 K4 ["getContentProvider"]
        7 CALL                             R0 1 1
        8 CALL                             R0 0 1
        9 GETIMPORT                        R1 K1 [require]
       11 GETIMPORT                        R3 K3 [script]
       13 GETTABLEKS                       R2 R3 K5 ["getHttpService"]
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
