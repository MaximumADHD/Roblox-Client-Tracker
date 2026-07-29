PROTO_0:
        0 DUPTABLE                         R5 K8 [{[1], ["method"], ["headers"], ["queryParams"], ["body"] = , ["formFields"] = , ["formBoundary"] = }]
        1 GETUPVAL                         R6 0
        2 GETTABLEKS                       R6 R6 K9 ["buildPath"]
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
       25 GETIMPORT                        R6 K11 [setmetatable]
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
        0 DUPTABLE                         R4 K3 [{"name", "content", "contentType"}]
        1 SETTABLEKS                       R0 R4 K0 ["name"]
        3 SETTABLEKS                       R1 R4 K1 ["content"]
        5 SETTABLEKS                       R2 R4 K2 ["contentType"]
        7 GETUPVAL                         R5 0
        8 FASTCALL2                        SETMETATABLE R4 R5 ; [+3]
       10 GETIMPORT                        R3 K5 [setmetatable]
       12 CALL                             R3 2 1
       13 RETURN                           R3 1

PROTO_7:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIF                           R3 ; [+1]
        3 RETURN                           R0 1
        4 JUMPIFNOTEQKNIL                  R2 ; [+2]
        6 RETURN                           R0 1
        7 GETTABLEKS                       R3 R0 K0 ["formFields"]
        9 JUMPIFNOTEQKNIL                  R3 ; [+11]
       11 NEWTABLE                         R3 0 0
       13 SETTABLEKS                       R3 R0 K0 ["formFields"]
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R3 R3 K1 ["buildBoundary"]
       18 CALL                             R3 0 1
       19 SETTABLEKS                       R3 R0 K2 ["formBoundary"]
       21 GETTABLEKS                       R4 R0 K0 ["formFields"]
       23 DUPTABLE                         R5 K5 [{"name", "value"}]
       24 SETTABLEKS                       R1 R5 K3 ["name"]
       26 SETTABLEKS                       R2 R5 K4 ["value"]
       28 FASTCALL2                        TABLE_INSERT R4 R5 ; [+3]
       30 GETIMPORT                        R3 K8 [table.insert]
       32 CALL                             R3 2 0
       33 RETURN                           R0 1

PROTO_8:
        0 FASTCALL1                        GETMETATABLE R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [getmetatable]
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 0
        6 JUMPIFEQ                         R2 R3 ; [+2]
        8 LOADB                            R1 0 +1
        9 LOADB                            R1 1
       10 RETURN                           R1 1

PROTO_9:
        0 GETIMPORT                        R1 K2 [string.format]
        2 LOADK                            R2 K3 ["%%%02X"]
        3 FASTCALL1                        STRING_BYTE R0 ; [+3]
        4 MOVE                             R4 R0
        5 GETIMPORT                        R3 K5 [string.byte]
        7 CALL                             R3 1 -1
        8 CALL                             R1 -1 -1
        9 RETURN                           R1 -1

PROTO_10:
        0 GETIMPORT                        R1 K2 [string.gsub]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["[\r\n\"]"]
        4 DUPCLOSURE                       R4 K4 [PROTO_9]
        5 CALL                             R1 3 1
        6 RETURN                           R1 1

PROTO_11:
        0 GETIMPORT                        R3 K2 [string.find]
        2 MOVE                             R4 R0
        3 LOADK                            R5 K3 ["[\r\n]"]
        4 CALL                             R3 2 1
        5 NOT                              R2 R3
        6 FASTCALL2K                       ASSERT R2 K4 ; [+4]
        8 LOADK                            R3 K4 ["FormFile.contentType must not contain CR or LF"]
        9 GETIMPORT                        R1 K6 [assert]
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R3 R2 K0 ["contentType"]
        2 GETIMPORT                        R6 K3 [string.find]
        4 MOVE                             R7 R3
        5 LOADK                            R8 K4 ["[\r\n]"]
        6 CALL                             R6 2 1
        7 NOT                              R5 R6
        8 FASTCALL2K                       ASSERT R5 K5 ; [+4]
       10 LOADK                            R6 K5 ["FormFile.contentType must not contain CR or LF"]
       11 GETIMPORT                        R4 K7 [assert]
       13 CALL                             R4 2 0
       14 GETTABLEKS                       R5 R2 K8 ["content"]
       16 FASTCALL1                        TYPEOF R5 ; [+2]
       17 GETIMPORT                        R4 K10 [typeof]
       19 CALL                             R4 1 1
       20 JUMPIFNOTEQKS                    R4 K11 ["buffer"] ; [+7]
       22 GETIMPORT                        R3 K13 [buffer.tostring]
       24 GETTABLEKS                       R4 R2 K8 ["content"]
       26 CALL                             R3 1 1
       27 JUMP                             ; [+2]
       28 GETTABLEKS                       R3 R2 K8 ["content"]
       30 GETIMPORT                        R4 K15 [string.gsub]
       32 MOVE                             R5 R1
       33 LOADK                            R6 K16 ["[\r\n\"]"]
       34 DUPCLOSURE                       R7 K17 [PROTO_9]
       35 CALL                             R4 3 1
       36 GETTABLEKS                       R6 R2 K18 ["name"]
       38 GETIMPORT                        R7 K15 [string.gsub]
       40 MOVE                             R8 R6
       41 LOADK                            R9 K16 ["[\r\n\"]"]
       42 DUPCLOSURE                       R10 K17 [PROTO_9]
       43 CALL                             R7 3 1
       44 MOVE                             R5 R7
       45 LOADK                            R7 K19 ["--%*\r\nContent-Disposition: form-data; name=\"%*\"; filename=\"%*\"\r\nContent-Type: %*\r\n\r\n%*\r\n"]
       46 MOVE                             R9 R0
       47 MOVE                             R10 R4
       48 MOVE                             R11 R5
       49 GETTABLEKS                       R12 R2 K0 ["contentType"]
       51 MOVE                             R13 R3
       52 NAMECALL                         R7 R7 K20 ["format"]
       54 CALL                             R7 6 1
       55 MOVE                             R6 R7
       56 RETURN                           R6 1

PROTO_13:
        0 GETIMPORT                        R3 K2 [string.gsub]
        2 MOVE                             R4 R1
        3 LOADK                            R5 K3 ["[\r\n\"]"]
        4 DUPCLOSURE                       R6 K4 [PROTO_9]
        5 CALL                             R3 3 1
        6 LOADK                            R5 K5 ["--%*\r\nContent-Disposition: form-data; name=\"%*\"\r\n\r\n%*\r\n"]
        7 MOVE                             R7 R0
        8 MOVE                             R8 R3
        9 MOVE                             R9 R2
       10 NAMECALL                         R5 R5 K6 ["format"]
       12 CALL                             R5 4 1
       13 MOVE                             R4 R5
       14 RETURN                           R4 1

PROTO_14:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R0
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 GETTABLEKS                       R8 R7 K0 ["value"]
        8 FASTCALL1                        GETMETATABLE R8 ; [+3]
        9 MOVE                             R11 R8
       10 GETIMPORT                        R10 K2 [getmetatable]
       12 CALL                             R10 1 1
       13 GETUPVAL                         R11 0
       14 JUMPIFEQ                         R10 R11 ; [+2]
       16 LOADB                            R9 0 +1
       17 LOADB                            R9 1
       18 JUMPIFNOT                        R9 ; [+13]
       19 GETUPVAL                         R11 1
       20 MOVE                             R12 R1
       21 GETTABLEKS                       R13 R7 K3 ["name"]
       23 MOVE                             R14 R8
       24 CALL                             R11 3 1
       25 FASTCALL2                        TABLE_INSERT R2 R11 ; [+4]
       27 MOVE                             R10 R2
       28 GETIMPORT                        R9 K6 [table.insert]
       30 CALL                             R9 2 0
       31 JUMP                             ; [+82]
       32 FASTCALL1                        TYPE R8 ; [+3]
       33 MOVE                             R10 R8
       34 GETIMPORT                        R9 K8 [type]
       36 CALL                             R9 1 1
       37 JUMPIFNOTEQKS                    R9 K4 ["table"] ; [+54]
       39 MOVE                             R9 R8
       40 LOADNIL                          R10
       41 LOADNIL                          R11
       42 FORGPREP                         R9
       43 FASTCALL1                        GETMETATABLE R13 ; [+3]
       44 MOVE                             R16 R13
       45 GETIMPORT                        R15 K2 [getmetatable]
       47 CALL                             R15 1 1
       48 GETUPVAL                         R16 0
       49 JUMPIFEQ                         R15 R16 ; [+2]
       51 LOADB                            R14 0 +1
       52 LOADB                            R14 1
       53 JUMPIFNOT                        R14 ; [+13]
       54 GETUPVAL                         R16 1
       55 MOVE                             R17 R1
       56 GETTABLEKS                       R18 R7 K3 ["name"]
       58 MOVE                             R19 R13
       59 CALL                             R16 3 1
       60 FASTCALL2                        TABLE_INSERT R2 R16 ; [+4]
       62 MOVE                             R15 R2
       63 GETIMPORT                        R14 K6 [table.insert]
       65 CALL                             R14 2 0
       66 JUMP                             ; [+22]
       67 GETTABLEKS                       R17 R7 K3 ["name"]
       69 GETIMPORT                        R18 K11 [string.gsub]
       71 MOVE                             R19 R17
       72 LOADK                            R20 K12 ["[\r\n\"]"]
       73 DUPCLOSURE                       R21 K13 [PROTO_9]
       74 CALL                             R18 3 1
       75 LOADK                            R19 K14 ["--%*\r\nContent-Disposition: form-data; name=\"%*\"\r\n\r\n%*\r\n"]
       76 MOVE                             R21 R1
       77 MOVE                             R22 R18
       78 MOVE                             R23 R13
       79 NAMECALL                         R19 R19 K15 ["format"]
       81 CALL                             R19 4 1
       82 MOVE                             R16 R19
       83 FASTCALL2                        TABLE_INSERT R2 R16 ; [+4]
       85 MOVE                             R15 R2
       86 GETIMPORT                        R14 K6 [table.insert]
       88 CALL                             R14 2 0
       89 FORGLOOP                         R9 2 ; [-47]
       91 JUMP                             ; [+22]
       92 GETTABLEKS                       R12 R7 K3 ["name"]
       94 GETIMPORT                        R13 K11 [string.gsub]
       96 MOVE                             R14 R12
       97 LOADK                            R15 K12 ["[\r\n\"]"]
       98 DUPCLOSURE                       R16 K13 [PROTO_9]
       99 CALL                             R13 3 1
      100 LOADK                            R14 K14 ["--%*\r\nContent-Disposition: form-data; name=\"%*\"\r\n\r\n%*\r\n"]
      101 MOVE                             R16 R1
      102 MOVE                             R17 R13
      103 MOVE                             R18 R8
      104 NAMECALL                         R14 R14 K15 ["format"]
      106 CALL                             R14 4 1
      107 MOVE                             R11 R14
      108 FASTCALL2                        TABLE_INSERT R2 R11 ; [+4]
      110 MOVE                             R10 R2
      111 GETIMPORT                        R9 K6 [table.insert]
      113 CALL                             R9 2 0
      114 FORGLOOP                         R3 2 ; [-109]
      116 LOADK                            R4 K16 ["%*--%*--"]
      117 GETIMPORT                        R6 K18 [table.concat]
      119 MOVE                             R7 R2
      120 CALL                             R6 1 1
      121 MOVE                             R7 R1
      122 NAMECALL                         R4 R4 K15 ["format"]
      124 CALL                             R4 3 1
      125 MOVE                             R3 R4
      126 RETURN                           R3 1

PROTO_15:
        0 LOADK                            R1 K0 ["----HttpWrapperBoundary-%*"]
        1 GETUPVAL                         R3 0
        2 LOADB                            R5 0
        3 NAMECALL                         R3 R3 K1 ["GenerateGUID"]
        5 CALL                             R3 2 1
        6 NAMECALL                         R1 R1 K2 ["format"]
        8 CALL                             R1 2 1
        9 MOVE                             R0 R1
       10 RETURN                           R0 1

PROTO_16:
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

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["JSONDecode"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_18:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 2
        6 JUMPIF                           R1 ; [+3]
        7 NEWTABLE                         R3 0 0
        9 RETURN                           R3 1
       10 RETURN                           R2 1

PROTO_19:
        0 GETIMPORT                        R2 K2 [task.defer]
        2 GETUPVAL                         R3 0
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 CALL                             R2 3 0
        6 RETURN                           R0 0

PROTO_20:
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

PROTO_21:
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
       23 GETTABLEKS                       R2 R0 K5 ["formFields"]
       25 JUMPIFEQKNIL                     R2 ; [+37]
       27 GETTABLEKS                       R3 R0 K5 ["formFields"]
       29 LENGTH                           R2 R3
       30 LOADN                            R3 0
       31 JUMPIFNOTLT                      R3 R2 ; [+31]
       33 GETTABLEKS                       R2 R0 K6 ["body"]
       35 JUMPIFNOTEQKNIL                  R2 ; [+27]
       37 GETTABLEKS                       R2 R0 K7 ["formBoundary"]
       39 JUMPIF                           R2 ; [+4]
       40 GETUPVAL                         R2 0
       41 GETTABLEKS                       R2 R2 K8 ["buildBoundary"]
       43 CALL                             R2 0 1
       44 GETUPVAL                         R3 0
       45 GETTABLEKS                       R3 R3 K9 ["buildMultipartBody"]
       47 GETTABLEKS                       R4 R0 K5 ["formFields"]
       49 MOVE                             R5 R2
       50 CALL                             R3 2 1
       51 SETTABLEKS                       R3 R0 K6 ["body"]
       53 GETTABLEKS                       R3 R0 K10 ["headers"]
       55 LOADK                            R5 K11 ["multipart/form-data; boundary=\"%*\""]
       56 MOVE                             R7 R2
       57 NAMECALL                         R5 R5 K4 ["format"]
       59 CALL                             R5 2 1
       60 MOVE                             R4 R5
       61 SETTABLEKS                       R4 R3 K12 ["Content-Type"]
       63 GETIMPORT                        R2 K15 [coroutine.running]
       65 CALL                             R2 0 1
       66 GETIMPORT                        R3 K18 [task.defer]
       68 NEWCLOSURE                       R4 P0
       69 CAPTURE                          UPVAL U1
       70 CAPTURE                          VAL R0
       71 CAPTURE                          VAL R2
       72 CALL                             R3 1 0
       73 GETIMPORT                        R3 K20 [coroutine.yield]
       75 CALL                             R3 0 2
       76 JUMPIF                           R3 ; [+9]
       77 DUPTABLE                         R5 K26 [{["success"] = False, ["errorDetails"], ["httpDetails"] = }]
       78 DUPTABLE                         R6 K30 [{["kind"] = "Network", ["networkError"]}]
       79 GETTABLEKS                       R7 R4 K31 ["ErrorMessage"]
       81 SETTABLEKS                       R7 R6 K29 ["networkError"]
       83 SETTABLEKS                       R6 R5 K23 ["errorDetails"]
       85 RETURN                           R5 1
       86 DUPTABLE                         R5 K34 [{"statusCode", "statusMessage", "headers"}]
       87 GETTABLEKS                       R6 R4 K35 ["StatusCode"]
       89 SETTABLEKS                       R6 R5 K32 ["statusCode"]
       91 GETTABLEKS                       R6 R4 K36 ["StatusMessage"]
       93 SETTABLEKS                       R6 R5 K33 ["statusMessage"]
       95 GETTABLEKS                       R6 R4 K37 ["Headers"]
       97 SETTABLEKS                       R6 R5 K10 ["headers"]
       99 LOADB                            R6 0
      100 GETTABLEKS                       R7 R4 K35 ["StatusCode"]
      102 LOADN                            R8 200
      103 JUMPIFNOTLE                      R8 R7 ; [+8]
      105 GETTABLEKS                       R7 R4 K35 ["StatusCode"]
      107 LOADN                            R8 300
      108 JUMPIFLT                         R7 R8 ; [+2]
      110 LOADB                            R6 0 +1
      111 LOADB                            R6 1
      112 JUMPIF                           R6 ; [+19]
      113 DUPTABLE                         R7 K38 [{["success"] = False, ["errorDetails"], ["httpDetails"]}]
      114 DUPTABLE                         R8 K40 [{["kind"] = "HttpStatusCode", ["statusCode"], ["statusMessage"], ["body"]}]
      115 GETTABLEKS                       R9 R4 K35 ["StatusCode"]
      117 SETTABLEKS                       R9 R8 K32 ["statusCode"]
      119 GETTABLEKS                       R9 R4 K36 ["StatusMessage"]
      121 SETTABLEKS                       R9 R8 K33 ["statusMessage"]
      123 GETTABLEKS                       R9 R4 K41 ["Body"]
      125 SETTABLEKS                       R9 R8 K6 ["body"]
      127 SETTABLEKS                       R8 R7 K23 ["errorDetails"]
      129 SETTABLEKS                       R5 R7 K24 ["httpDetails"]
      131 RETURN                           R7 1
      132 LOADNIL                          R7
      133 JUMPIFNOT                        R1 ; [+39]
      134 NEWTABLE                         R8 0 0
      136 GETTABLEKS                       R9 R1 K42 ["fromResponse"]
      138 GETTABLEKS                       R11 R4 K41 ["Body"]
      140 GETIMPORT                        R12 K44 [pcall]
      142 NEWCLOSURE                       R13 P1
      143 CAPTURE                          UPVAL U1
      144 CAPTURE                          VAL R11
      145 CALL                             R12 1 2
      146 JUMPIF                           R12 ; [+3]
      147 NEWTABLE                         R10 0 0
      149 JUMP                             ; [+1]
      150 MOVE                             R10 R13
      151 MOVE                             R11 R8
      152 LOADK                            R12 K45 [""]
      153 CALL                             R9 3 1
      154 MOVE                             R7 R9
      155 LENGTH                           R9 R8
      156 LOADN                            R10 0
      157 JUMPIFNOTLT                      R10 R9 ; [+17]
      159 DUPTABLE                         R9 K38 [{["success"] = False, ["errorDetails"], ["httpDetails"]}]
      160 DUPTABLE                         R10 K48 [{["kind"] = "Validation", ["validationErrors"], ["body"]}]
      161 SETTABLEKS                       R8 R10 K47 ["validationErrors"]
      163 GETTABLEKS                       R11 R4 K41 ["Body"]
      165 SETTABLEKS                       R11 R10 K6 ["body"]
      167 SETTABLEKS                       R10 R9 K23 ["errorDetails"]
      169 SETTABLEKS                       R5 R9 K24 ["httpDetails"]
      171 RETURN                           R9 1
      172 JUMP                             ; [+2]
      173 GETTABLEKS                       R7 R4 K41 ["Body"]
      175 DUPTABLE                         R8 K51 [{["success"] = True, ["data"], ["httpDetails"]}]
      176 SETTABLEKS                       R7 R8 K50 ["data"]
      178 SETTABLEKS                       R5 R8 K24 ["httpDetails"]
      180 RETURN                           R8 1

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
       17 GETIMPORT                        R2 K1 [require]
       19 GETIMPORT                        R3 K3 [script]
       21 GETTABLEKS                       R3 R3 K6 ["getFFlagHttpWrapperMultipartFormData"]
       23 CALL                             R2 1 1
       24 NEWTABLE                         R3 16 0
       26 SETTABLEKS                       R3 R3 K7 ["__index"]
       28 DUPCLOSURE                       R4 K8 [PROTO_0]
       29 CAPTURE                          VAL R3
       30 SETTABLEKS                       R4 R3 K9 ["buildRequest"]
       32 DUPCLOSURE                       R4 K10 [PROTO_1]
       33 CAPTURE                          VAL R0
       34 SETTABLEKS                       R4 R3 K11 ["buildPath"]
       36 DUPCLOSURE                       R4 K12 [PROTO_2]
       37 SETTABLEKS                       R4 R3 K13 ["addQueryParameter"]
       39 DUPCLOSURE                       R4 K14 [PROTO_3]
       40 SETTABLEKS                       R4 R3 K15 ["addPathParameter"]
       42 DUPCLOSURE                       R4 K16 [PROTO_4]
       43 SETTABLEKS                       R4 R3 K17 ["addHeaderParameter"]
       45 DUPCLOSURE                       R4 K18 [PROTO_5]
       46 CAPTURE                          VAL R1
       47 SETTABLEKS                       R4 R3 K19 ["setBody"]
       49 GETIMPORT                        R4 K22 [table.freeze]
       51 NEWTABLE                         R5 0 0
       53 CALL                             R4 1 1
       54 DUPCLOSURE                       R5 K23 [PROTO_6]
       55 CAPTURE                          VAL R4
       56 SETTABLEKS                       R5 R3 K24 ["formFile"]
       58 DUPCLOSURE                       R5 K25 [PROTO_7]
       59 CAPTURE                          VAL R2
       60 CAPTURE                          VAL R3
       61 SETTABLEKS                       R5 R3 K26 ["addFormParameter"]
       63 DUPCLOSURE                       R5 K27 [PROTO_8]
       64 CAPTURE                          VAL R4
       65 DUPCLOSURE                       R6 K28 [PROTO_10]
       66 DUPCLOSURE                       R7 K29 [PROTO_11]
       67 DUPCLOSURE                       R8 K30 [PROTO_12]
       68 DUPCLOSURE                       R9 K31 [PROTO_13]
       69 DUPCLOSURE                       R10 K32 [PROTO_14]
       70 CAPTURE                          VAL R4
       71 CAPTURE                          VAL R8
       72 SETTABLEKS                       R10 R3 K33 ["buildMultipartBody"]
       74 DUPCLOSURE                       R10 K34 [PROTO_15]
       75 CAPTURE                          VAL R1
       76 SETTABLEKS                       R10 R3 K35 ["buildBoundary"]
       78 DUPCLOSURE                       R10 K36 [PROTO_16]
       79 CAPTURE                          VAL R1
       80 SETTABLEKS                       R10 R3 K37 ["buildQueryString"]
       82 DUPCLOSURE                       R10 K38 [PROTO_18]
       83 CAPTURE                          VAL R1
       84 DUPCLOSURE                       R11 K39 [PROTO_21]
       85 CAPTURE                          VAL R3
       86 CAPTURE                          VAL R1
       87 SETTABLEKS                       R11 R3 K40 ["sendAsync"]
       89 RETURN                           R3 1
