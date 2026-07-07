PROTO_0:
        0 LOADK                            R3 K0 ["%.([^%.]+)$"]
        1 NAMECALL                         R1 R0 K1 ["match"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+6]
        5 GETUPVAL                         R3 0
        6 NAMECALL                         R4 R1 K2 ["lower"]
        8 CALL                             R4 1 1
        9 GETTABLE                         R2 R3 R4
       10 JUMPIF                           R2 ; [+1]
       11 LOADK                            R2 K3 ["application/octet-stream"]
       12 RETURN                           R2 1

PROTO_1:
        0 NEWTABLE                         R0 0 0
        2 LOADN                            R3 1
        3 LOADN                            R1 28
        4 LOADN                            R2 1
        5 FORNPREP                         R1
        6 GETIMPORT                        R7 K2 [math.random]
        8 LOADN                            R8 97
        9 LOADN                            R9 122
       10 CALL                             R7 2 -1
       11 FASTCALL                         STRING_CHAR ; [+2]
       12 GETIMPORT                        R6 K5 [string.char]
       14 CALL                             R6 -1 1
       15 FASTCALL2                        TABLE_INSERT R0 R6 ; [+4]
       17 MOVE                             R5 R0
       18 GETIMPORT                        R4 K8 [table.insert]
       20 CALL                             R4 2 0
       21 FORNLOOP                         R1
       22 LOADK                            R2 K9 ["--FormBoundary-%*"]
       23 GETIMPORT                        R4 K11 [table.concat]
       25 MOVE                             R5 R0
       26 CALL                             R4 1 1
       27 NAMECALL                         R2 R2 K12 ["format"]
       29 CALL                             R2 2 1
       30 MOVE                             R1 R2
       31 RETURN                           R1 1

PROTO_2:
        0 DUPTABLE                         R3 K3 [{"name", "content", "contentType"}]
        1 SETTABLEKS                       R0 R3 K0 ["name"]
        3 SETTABLEKS                       R1 R3 K1 ["content"]
        5 MOVE                             R4 R2
        6 JUMPIF                           R4 ; [+12]
        7 LOADK                            R7 K4 ["%.([^%.]+)$"]
        8 NAMECALL                         R5 R0 K5 ["match"]
       10 CALL                             R5 2 1
       11 JUMPIFNOT                        R5 ; [+6]
       12 GETUPVAL                         R6 0
       13 NAMECALL                         R7 R5 K6 ["lower"]
       15 CALL                             R7 1 1
       16 GETTABLE                         R4 R6 R7
       17 JUMPIF                           R4 ; [+1]
       18 LOADK                            R4 K7 ["application/octet-stream"]
       19 SETTABLEKS                       R4 R3 K2 ["contentType"]
       21 RETURN                           R3 1

PROTO_3:
        0 DUPTABLE                         R1 K6 [{[1], ["_boundary"], ["_hasFiles"] = False, ["_multipart"] = }]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K0 ["_fields"]
        5 GETUPVAL                         R2 0
        6 CALL                             R2 0 1
        7 SETTABLEKS                       R2 R1 K1 ["_boundary"]
        9 GETUPVAL                         R2 1
       10 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
       12 GETIMPORT                        R0 K8 [setmetatable]
       14 CALL                             R0 2 1
       15 RETURN                           R0 1

PROTO_4:
        0 GETTABLEKS                       R4 R0 K0 ["_fields"]
        2 DUPTABLE                         R5 K3 [{"name", "value"}]
        3 SETTABLEKS                       R1 R5 K1 ["name"]
        5 SETTABLEKS                       R2 R5 K2 ["value"]
        7 FASTCALL2                        TABLE_INSERT R4 R5 ; [+3]
        9 GETIMPORT                        R3 K6 [table.insert]
       11 CALL                             R3 2 0
       12 RETURN                           R0 1

PROTO_5:
        0 MOVE                             R2 R1
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 MOVE                             R9 R5
        5 MOVE                             R10 R6
        6 NAMECALL                         R7 R0 K0 ["addField"]
        8 CALL                             R7 3 0
        9 FORGLOOP                         R2 2 ; [-6]
       11 RETURN                           R0 1

PROTO_6:
        0 GETTABLEKS                       R4 R0 K0 ["_fields"]
        2 DUPTABLE                         R5 K3 [{"name", "value"}]
        3 SETTABLEKS                       R1 R5 K1 ["name"]
        5 SETTABLEKS                       R2 R5 K2 ["value"]
        7 FASTCALL2                        TABLE_INSERT R4 R5 ; [+3]
        9 GETIMPORT                        R3 K6 [table.insert]
       11 CALL                             R3 2 0
       12 RETURN                           R0 1

PROTO_7:
        0 LOADB                            R3 1
        1 SETTABLEKS                       R3 R0 K0 ["_hasFiles"]
        3 GETTABLEKS                       R4 R0 K1 ["_fields"]
        5 DUPTABLE                         R5 K4 [{"name", "value"}]
        6 SETTABLEKS                       R1 R5 K2 ["name"]
        8 SETTABLEKS                       R2 R5 K3 ["value"]
       10 FASTCALL2                        TABLE_INSERT R4 R5 ; [+3]
       12 GETIMPORT                        R3 K7 [table.insert]
       14 CALL                             R3 2 0
       15 RETURN                           R0 1

PROTO_8:
        0 SETTABLEKS                       R1 R0 K0 ["_multipart"]
        2 RETURN                           R0 1

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["_multipart"]
        2 JUMPIFEQKNIL                     R1 ; [+4]
        4 GETTABLEKS                       R1 R0 K0 ["_multipart"]
        6 RETURN                           R1 1
        7 GETTABLEKS                       R1 R0 K1 ["_hasFiles"]
        9 RETURN                           R1 1

PROTO_10:
        0 GETTABLEKS                       R2 R0 K0 ["_multipart"]
        2 JUMPIFEQKNIL                     R2 ; [+4]
        4 GETTABLEKS                       R1 R0 K0 ["_multipart"]
        6 JUMP                             ; [+2]
        7 GETTABLEKS                       R1 R0 K1 ["_hasFiles"]
        9 JUMPIFNOT                        R1 ; [+8]
       10 LOADK                            R2 K2 ["multipart/form-data; boundary=\"%*\""]
       11 GETTABLEKS                       R4 R0 K3 ["_boundary"]
       13 NAMECALL                         R2 R2 K4 ["format"]
       15 CALL                             R2 2 1
       16 MOVE                             R1 R2
       17 RETURN                           R1 1
       18 LOADK                            R1 K5 ["application/x-www-form-urlencoded"]
       19 RETURN                           R1 1

PROTO_11:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [type]
        4 CALL                             R1 1 1
        5 JUMPIFEQKS                       R1 K2 ["table"] ; [+3]
        7 LOADB                            R1 0
        8 RETURN                           R1 1
        9 LOADB                            R1 0
       10 GETTABLEKS                       R2 R0 K3 ["name"]
       12 JUMPIFEQKNIL                     R2 ; [+7]
       14 GETTABLEKS                       R2 R0 K4 ["content"]
       16 JUMPIFNOTEQKNIL                  R2 ; [+2]
       18 LOADB                            R1 0 +1
       19 LOADB                            R1 1
       20 RETURN                           R1 1

PROTO_12:
        0 GETTABLEKS                       R2 R0 K0 ["_multipart"]
        2 JUMPIFEQKNIL                     R2 ; [+4]
        4 GETTABLEKS                       R1 R0 K0 ["_multipart"]
        6 JUMP                             ; [+2]
        7 GETTABLEKS                       R1 R0 K1 ["_hasFiles"]
        9 JUMPIFNOT                        R1 ; [+4]
       10 NAMECALL                         R1 R0 K2 ["_buildMultipart"]
       12 CALL                             R1 1 -1
       13 RETURN                           R1 -1
       14 NAMECALL                         R1 R0 K3 ["_buildUrlEncoded"]
       16 CALL                             R1 1 -1
       17 RETURN                           R1 -1

PROTO_13:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["_fields"]
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 GETTABLEKS                       R8 R6 K1 ["value"]
        9 FASTCALL1                        TYPE R8 ; [+3]
       10 MOVE                             R10 R8
       11 GETIMPORT                        R9 K3 [type]
       13 CALL                             R9 1 1
       14 JUMPIFEQKS                       R9 K4 ["table"] ; [+3]
       16 LOADB                            R7 0
       17 JUMP                             ; [+11]
       18 LOADB                            R7 0
       19 GETTABLEKS                       R9 R8 K5 ["name"]
       21 JUMPIFEQKNIL                     R9 ; [+7]
       23 GETTABLEKS                       R9 R8 K6 ["content"]
       25 JUMPIFNOTEQKNIL                  R9 ; [+2]
       27 LOADB                            R7 0 +1
       28 LOADB                            R7 1
       29 JUMPIFNOT                        R7 ; [+4]
       30 GETIMPORT                        R7 K8 [error]
       32 LOADK                            R8 K9 ["[FormRequestBuilder] URL-encoded forms cannot contain files"]
       33 CALL                             R7 1 0
       34 GETTABLEKS                       R7 R6 K5 ["name"]
       36 LOADK                            R10 K10 ["="]
       37 NAMECALL                         R8 R7 K11 ["find"]
       39 CALL                             R8 2 1
       40 JUMPIF                           R8 ; [+5]
       41 LOADK                            R10 K12 ["&"]
       42 NAMECALL                         R8 R7 K11 ["find"]
       44 CALL                             R8 2 1
       45 JUMPIFNOT                        R8 ; [+4]
       46 GETIMPORT                        R8 K8 [error]
       48 LOADK                            R9 K13 ["[FormRequestBuilder] Field names must not contain '=' or '&'"]
       49 CALL                             R8 1 0
       50 GETTABLEKS                       R9 R6 K1 ["value"]
       52 FASTCALL1                        TYPE R9 ; [+2]
       53 GETIMPORT                        R8 K3 [type]
       55 CALL                             R8 1 1
       56 JUMPIFNOTEQKS                    R8 K4 ["table"] ; [+41]
       58 GETTABLEKS                       R8 R6 K1 ["value"]
       60 LOADNIL                          R9
       61 LOADNIL                          R10
       62 FORGPREP                         R8
       63 FASTCALL1                        TYPEOF R12 ; [+3]
       64 MOVE                             R16 R12
       65 GETIMPORT                        R15 K15 [typeof]
       67 CALL                             R15 1 1
       68 JUMPIFEQKS                       R15 K16 ["string"] ; [+2]
       70 LOADB                            R14 0 +1
       71 LOADB                            R14 1
       72 FASTCALL2K                       ASSERT R14 K17 ; [+4]
       74 LOADK                            R15 K17 ["Value must be a string"]
       75 GETIMPORT                        R13 K19 [assert]
       77 CALL                             R13 2 0
       78 LOADK                            R16 K20 ["%*=%*"]
       79 MOVE                             R18 R7
       80 GETUPVAL                         R19 0
       81 MOVE                             R21 R12
       82 NAMECALL                         R19 R19 K21 ["UrlEncode"]
       84 CALL                             R19 2 1
       85 NAMECALL                         R16 R16 K22 ["format"]
       87 CALL                             R16 3 1
       88 MOVE                             R15 R16
       89 FASTCALL2                        TABLE_INSERT R1 R15 ; [+4]
       91 MOVE                             R14 R1
       92 GETIMPORT                        R13 K24 [table.insert]
       94 CALL                             R13 2 0
       95 FORGLOOP                         R8 2 ; [-33]
       97 JUMP                             ; [+18]
       98 LOADK                            R11 K20 ["%*=%*"]
       99 MOVE                             R13 R7
      100 GETUPVAL                         R14 0
      101 GETTABLEKS                       R16 R6 K1 ["value"]
      103 NAMECALL                         R14 R14 K21 ["UrlEncode"]
      105 CALL                             R14 2 1
      106 NAMECALL                         R11 R11 K22 ["format"]
      108 CALL                             R11 3 1
      109 MOVE                             R10 R11
      110 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      112 MOVE                             R9 R1
      113 GETIMPORT                        R8 K24 [table.insert]
      115 CALL                             R8 2 0
      116 FORGLOOP                         R2 2 ; [-110]
      118 GETIMPORT                        R2 K26 [table.concat]
      120 MOVE                             R3 R1
      121 LOADK                            R4 K12 ["&"]
      122 CALL                             R2 2 -1
      123 RETURN                           R2 -1

PROTO_14:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["_boundary"]
        4 GETTABLEKS                       R3 R0 K1 ["_fields"]
        6 LOADNIL                          R4
        7 LOADNIL                          R5
        8 FORGPREP                         R3
        9 GETTABLEKS                       R8 R7 K2 ["name"]
       11 GETTABLEKS                       R10 R7 K3 ["value"]
       13 FASTCALL1                        TYPE R10 ; [+3]
       14 MOVE                             R12 R10
       15 GETIMPORT                        R11 K5 [type]
       17 CALL                             R11 1 1
       18 JUMPIFEQKS                       R11 K6 ["table"] ; [+3]
       20 LOADB                            R9 0
       21 JUMP                             ; [+11]
       22 LOADB                            R9 0
       23 GETTABLEKS                       R11 R10 K2 ["name"]
       25 JUMPIFEQKNIL                     R11 ; [+7]
       27 GETTABLEKS                       R11 R10 K7 ["content"]
       29 JUMPIFNOTEQKNIL                  R11 ; [+2]
       31 LOADB                            R9 0 +1
       32 LOADB                            R9 1
       33 JUMPIFNOT                        R9 ; [+42]
       34 GETTABLEKS                       R9 R7 K3 ["value"]
       36 GETTABLEKS                       R10 R9 K8 ["contentType"]
       38 JUMPIF                           R10 ; [+14]
       39 GETTABLEKS                       R11 R9 K2 ["name"]
       41 LOADK                            R14 K9 ["%.([^%.]+)$"]
       42 NAMECALL                         R12 R11 K10 ["match"]
       44 CALL                             R12 2 1
       45 JUMPIFNOT                        R12 ; [+6]
       46 GETUPVAL                         R13 0
       47 NAMECALL                         R14 R12 K11 ["lower"]
       49 CALL                             R14 1 1
       50 GETTABLE                         R10 R13 R14
       51 JUMPIF                           R10 ; [+1]
       52 LOADK                            R10 K12 ["application/octet-stream"]
       53 GETIMPORT                        R11 K15 [buffer.tostring]
       55 GETTABLEKS                       R12 R9 K7 ["content"]
       57 CALL                             R11 1 1
       58 LOADK                            R15 K16 ["--%*\r\nContent-Disposition: form-data; name=\"%*\"; filename=\"%*\"\r\nContent-Type: %*\r\n\r\n%*\r\n"]
       59 MOVE                             R17 R2
       60 MOVE                             R18 R8
       61 GETTABLEKS                       R19 R9 K2 ["name"]
       63 MOVE                             R20 R10
       64 MOVE                             R21 R11
       65 NAMECALL                         R15 R15 K17 ["format"]
       67 CALL                             R15 6 1
       68 MOVE                             R14 R15
       69 FASTCALL2                        TABLE_INSERT R1 R14 ; [+4]
       71 MOVE                             R13 R1
       72 GETIMPORT                        R12 K19 [table.insert]
       74 CALL                             R12 2 0
       75 JUMP                             ; [+45]
       76 GETTABLEKS                       R10 R7 K3 ["value"]
       78 FASTCALL1                        TYPE R10 ; [+2]
       79 GETIMPORT                        R9 K5 [type]
       81 CALL                             R9 1 1
       82 JUMPIFNOTEQKS                    R9 K6 ["table"] ; [+23]
       84 GETTABLEKS                       R9 R7 K3 ["value"]
       86 LOADNIL                          R10
       87 LOADNIL                          R11
       88 FORGPREP                         R9
       89 LOADK                            R17 K20 ["--%*\r\nContent-Disposition: form-data; name=\"%*\"\r\n\r\n%*\r\n"]
       90 MOVE                             R19 R2
       91 MOVE                             R20 R8
       92 MOVE                             R21 R13
       93 NAMECALL                         R17 R17 K17 ["format"]
       95 CALL                             R17 4 1
       96 MOVE                             R16 R17
       97 FASTCALL2                        TABLE_INSERT R1 R16 ; [+4]
       99 MOVE                             R15 R1
      100 GETIMPORT                        R14 K19 [table.insert]
      102 CALL                             R14 2 0
      103 FORGLOOP                         R9 2 ; [-15]
      105 JUMP                             ; [+15]
      106 LOADK                            R12 K20 ["--%*\r\nContent-Disposition: form-data; name=\"%*\"\r\n\r\n%*\r\n"]
      107 MOVE                             R14 R2
      108 MOVE                             R15 R8
      109 GETTABLEKS                       R16 R7 K3 ["value"]
      111 NAMECALL                         R12 R12 K17 ["format"]
      113 CALL                             R12 4 1
      114 MOVE                             R11 R12
      115 FASTCALL2                        TABLE_INSERT R1 R11 ; [+4]
      117 MOVE                             R10 R1
      118 GETIMPORT                        R9 K19 [table.insert]
      120 CALL                             R9 2 0
      121 FORGLOOP                         R3 2 ; [-113]
      123 LOADK                            R4 K21 ["%*--%*--"]
      124 GETIMPORT                        R6 K23 [table.concat]
      126 MOVE                             R7 R1
      127 CALL                             R6 1 1
      128 MOVE                             R7 R2
      129 NAMECALL                         R4 R4 K17 ["format"]
      131 CALL                             R4 3 1
      132 MOVE                             R3 R4
      133 RETURN                           R3 1

PROTO_15:
        0 DUPTABLE                         R3 K4 [{"Url", "Method", "Headers", "Body"}]
        1 SETTABLEKS                       R1 R3 K0 ["Url"]
        3 ORK                              R4 R2 K5 ["POST"]
        4 SETTABLEKS                       R4 R3 K1 ["Method"]
        6 NEWTABLE                         R4 1 0
        8 NAMECALL                         R5 R0 K6 ["getContentType"]
       10 CALL                             R5 1 1
       11 SETTABLEKS                       R5 R4 K7 ["Content-Type"]
       13 SETTABLEKS                       R4 R3 K2 ["Headers"]
       15 NAMECALL                         R4 R0 K8 ["build"]
       17 CALL                             R4 1 1
       18 SETTABLEKS                       R4 R3 K3 ["Body"]
       20 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 DUPTABLE                         R1 K55 [{["png"] = "image/png", ["jpg"] = "image/jpeg", ["jpeg"] = "image/jpeg", ["gif"] = "image/gif", ["webp"] = "image/webp", ["bmp"] = "image/bmp", ["svg"] = "image/svg+xml", ["json"] = "application/json", ["xml"] = "application/xml", ["pdf"] = "application/pdf", ["zip"] = "application/zip", ["gz"] = "application/gzip", ["txt"] = "text/plain", ["html"] = "text/html", ["css"] = "text/css", ["js"] = "text/javascript", ["csv"] = "text/csv", ["lua"] = "text/x-lua", ["obj"] = "model/obj", ["glb"] = "model/gltf-binary", ["gltf"] = "model/gltf+json", ["mp3"] = "audio/mpeg", ["wav"] = "audio/wav", ["ogg"] = "audio/ogg", ["mp4"] = "video/mp4", ["webm"] = "video/webm"}]
        8 DUPCLOSURE                       R2 K56 [PROTO_0]
        9 CAPTURE                          VAL R1
       10 DUPCLOSURE                       R3 K57 [PROTO_1]
       11 DUPCLOSURE                       R4 K58 [PROTO_2]
       12 CAPTURE                          VAL R1
       13 NEWTABLE                         R5 16 0
       15 SETTABLEKS                       R5 R5 K59 ["__index"]
       17 DUPCLOSURE                       R6 K60 [PROTO_3]
       18 CAPTURE                          VAL R3
       19 CAPTURE                          VAL R5
       20 SETTABLEKS                       R6 R5 K61 ["new"]
       22 DUPCLOSURE                       R6 K62 [PROTO_4]
       23 SETTABLEKS                       R6 R5 K63 ["addField"]
       25 DUPCLOSURE                       R6 K64 [PROTO_5]
       26 SETTABLEKS                       R6 R5 K65 ["addFields"]
       28 DUPCLOSURE                       R6 K66 [PROTO_6]
       29 SETTABLEKS                       R6 R5 K67 ["addList"]
       31 DUPCLOSURE                       R6 K68 [PROTO_7]
       32 SETTABLEKS                       R6 R5 K69 ["addFile"]
       34 DUPCLOSURE                       R6 K70 [PROTO_8]
       35 SETTABLEKS                       R6 R5 K71 ["forceMultipart"]
       37 DUPCLOSURE                       R6 K72 [PROTO_9]
       38 DUPCLOSURE                       R7 K73 [PROTO_10]
       39 SETTABLEKS                       R7 R5 K74 ["getContentType"]
       41 DUPCLOSURE                       R7 K75 [PROTO_11]
       42 DUPCLOSURE                       R8 K76 [PROTO_12]
       43 SETTABLEKS                       R8 R5 K77 ["build"]
       45 DUPCLOSURE                       R8 K78 [PROTO_13]
       46 CAPTURE                          VAL R0
       47 SETTABLEKS                       R8 R5 K79 ["_buildUrlEncoded"]
       49 DUPCLOSURE                       R8 K80 [PROTO_14]
       50 CAPTURE                          VAL R1
       51 SETTABLEKS                       R8 R5 K81 ["_buildMultipart"]
       53 DUPCLOSURE                       R8 K82 [PROTO_15]
       54 SETTABLEKS                       R8 R5 K83 ["buildRequest"]
       56 DUPTABLE                         R8 K86 [{"new", "file", "guessMimeType"}]
       57 GETTABLEKS                       R9 R5 K61 ["new"]
       59 SETTABLEKS                       R9 R8 K61 ["new"]
       61 SETTABLEKS                       R4 R8 K84 ["file"]
       63 SETTABLEKS                       R2 R8 K85 ["guessMimeType"]
       65 RETURN                           R8 1
