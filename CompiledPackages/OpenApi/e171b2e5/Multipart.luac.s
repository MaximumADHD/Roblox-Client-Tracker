PROTO_0:
        0 DUPTABLE                         R3 K5 [{[1] = "FormFile", ["name"], ["content"], ["contentType"]}]
        1 SETTABLEKS                       R0 R3 K2 ["name"]
        3 SETTABLEKS                       R1 R3 K3 ["content"]
        5 SETTABLEKS                       R2 R3 K4 ["contentType"]
        7 RETURN                           R3 1

PROTO_1:
        0 LOADB                            R1 0
        1 FASTCALL1                        TYPE R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K1 [type]
        5 CALL                             R2 1 1
        6 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+43]
        8 LOADB                            R1 0
        9 GETTABLEKS                       R2 R0 K3 ["kind"]
       11 JUMPIFNOTEQKS                    R2 K4 ["FormFile"] ; [+38]
       13 LOADB                            R1 0
       14 GETTABLEKS                       R3 R0 K5 ["name"]
       16 FASTCALL1                        TYPE R3 ; [+2]
       17 GETIMPORT                        R2 K1 [type]
       19 CALL                             R2 1 1
       20 JUMPIFNOTEQKS                    R2 K6 ["string"] ; [+29]
       22 LOADB                            R1 0
       23 GETTABLEKS                       R3 R0 K7 ["contentType"]
       25 FASTCALL1                        TYPE R3 ; [+2]
       26 GETIMPORT                        R2 K1 [type]
       28 CALL                             R2 1 1
       29 JUMPIFNOTEQKS                    R2 K6 ["string"] ; [+20]
       31 LOADB                            R1 1
       32 GETTABLEKS                       R3 R0 K8 ["content"]
       34 FASTCALL1                        TYPE R3 ; [+2]
       35 GETIMPORT                        R2 K1 [type]
       37 CALL                             R2 1 1
       38 JUMPIFEQKS                       R2 K6 ["string"] ; [+11]
       40 GETTABLEKS                       R3 R0 K8 ["content"]
       42 FASTCALL1                        TYPEOF R3 ; [+2]
       43 GETIMPORT                        R2 K10 [typeof]
       45 CALL                             R2 1 1
       46 JUMPIFEQKS                       R2 K11 ["buffer"] ; [+2]
       48 LOADB                            R1 0 +1
       49 LOADB                            R1 1
       50 RETURN                           R1 1

PROTO_2:
        0 GETIMPORT                        R1 K2 [string.format]
        2 LOADK                            R2 K3 ["%%%02X"]
        3 FASTCALL1                        STRING_BYTE R0 ; [+3]
        4 MOVE                             R4 R0
        5 GETIMPORT                        R3 K5 [string.byte]
        7 CALL                             R3 1 -1
        8 CALL                             R1 -1 -1
        9 RETURN                           R1 -1

PROTO_3:
        0 GETIMPORT                        R1 K2 [string.gsub]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["[\r\n\"]"]
        4 DUPCLOSURE                       R4 K4 [PROTO_2]
        5 CALL                             R1 3 1
        6 RETURN                           R1 1

PROTO_4:
        0 GETIMPORT                        R4 K2 [string.find]
        2 MOVE                             R5 R0
        3 LOADK                            R6 K3 ["[\r\n]"]
        4 CALL                             R4 2 1
        5 NOT                              R3 R4
        6 LOADK                            R4 K4 ["%* must not contain CR or LF"]
        7 MOVE                             R6 R1
        8 NAMECALL                         R4 R4 K5 ["format"]
       10 CALL                             R4 2 1
       11 FASTCALL2                        ASSERT R3 R4 ; [+3]
       13 GETIMPORT                        R2 K7 [assert]
       15 CALL                             R2 2 0
       16 RETURN                           R0 0

PROTO_5:
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
       34 DUPCLOSURE                       R7 K17 [PROTO_2]
       35 CALL                             R4 3 1
       36 GETTABLEKS                       R6 R2 K18 ["name"]
       38 GETIMPORT                        R7 K15 [string.gsub]
       40 MOVE                             R8 R6
       41 LOADK                            R9 K16 ["[\r\n\"]"]
       42 DUPCLOSURE                       R10 K17 [PROTO_2]
       43 CALL                             R7 3 1
       44 MOVE                             R5 R7
       45 LOADK                            R6 K19 ["--%*\r\nContent-Disposition: form-data; name=\"%*\"; filename=\"%*\"\r\nContent-Type: %*\r\n\r\n%*\r\n"]
       46 MOVE                             R8 R0
       47 MOVE                             R9 R4
       48 MOVE                             R10 R5
       49 GETTABLEKS                       R11 R2 K0 ["contentType"]
       51 MOVE                             R12 R3
       52 NAMECALL                         R6 R6 K20 ["format"]
       54 CALL                             R6 6 1
       55 RETURN                           R6 1

PROTO_6:
        0 GETIMPORT                        R4 K2 [string.gsub]
        2 MOVE                             R5 R1
        3 LOADK                            R6 K3 ["[\r\n\"]"]
        4 DUPCLOSURE                       R7 K4 [PROTO_2]
        5 CALL                             R4 3 1
        6 LOADK                            R5 K5 [""]
        7 JUMPIFEQKNIL                     R3 ; [+19]
        9 GETIMPORT                        R8 K7 [string.find]
       11 MOVE                             R9 R3
       12 LOADK                            R10 K8 ["[\r\n]"]
       13 CALL                             R8 2 1
       14 NOT                              R7 R8
       15 FASTCALL2K                       ASSERT R7 K9 ; [+4]
       17 LOADK                            R8 K9 ["The form field content type must not contain CR or LF"]
       18 GETIMPORT                        R6 K11 [assert]
       20 CALL                             R6 2 0
       21 LOADK                            R6 K12 ["Content-Type: %*\r\n"]
       22 MOVE                             R8 R3
       23 NAMECALL                         R6 R6 K13 ["format"]
       25 CALL                             R6 2 1
       26 MOVE                             R5 R6
       27 LOADK                            R6 K14 ["--%*\r\nContent-Disposition: form-data; name=\"%*\"\r\n%*\r\n%*\r\n"]
       28 MOVE                             R8 R0
       29 MOVE                             R9 R4
       30 MOVE                             R10 R5
       31 MOVE                             R11 R2
       32 NAMECALL                         R6 R6 K13 ["format"]
       34 CALL                             R6 5 1
       35 RETURN                           R6 1

PROTO_7:
        0 GETIMPORT                        R0 K2 [table.create]
        2 LOADN                            R1 32
        3 LOADK                            R2 K3 [""]
        4 CALL                             R0 2 1
        5 LOADN                            R3 1
        6 LOADN                            R1 32
        7 LOADN                            R2 1
        8 FORNPREP                         R1
        9 GETIMPORT                        R4 K6 [string.format]
       11 LOADK                            R5 K7 ["%x"]
       12 GETIMPORT                        R6 K10 [math.random]
       14 LOADN                            R7 0
       15 LOADN                            R8 15
       16 CALL                             R6 2 -1
       17 CALL                             R4 -1 1
       18 SETTABLE                         R4 R0 R3
       19 FORNLOOP                         R1
       20 LOADK                            R1 K11 ["----OpenApiCoreBoundary-%*"]
       21 GETIMPORT                        R3 K13 [table.concat]
       23 MOVE                             R4 R0
       24 CALL                             R3 1 1
       25 NAMECALL                         R1 R1 K5 ["format"]
       27 CALL                             R1 2 1
       28 RETURN                           R1 1

PROTO_8:
        0 LOADB                            R1 0
        1 JUMPIFEQKNIL                     R0 ; [+15]
        3 GETIMPORT                        R2 K2 [string.find]
        5 GETIMPORT                        R3 K4 [string.lower]
        7 MOVE                             R4 R0
        8 CALL                             R3 1 1
        9 LOADK                            R4 K5 ["json"]
       10 LOADN                            R5 1
       11 LOADB                            R6 1
       12 CALL                             R2 4 1
       13 JUMPIFNOTEQKNIL                  R2 ; [+2]
       15 LOADB                            R1 0 +1
       16 LOADB                            R1 1
       17 RETURN                           R1 1

PROTO_9:
        0 LOADB                            R1 1
        1 GETIMPORT                        R2 K1 [next]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 JUMPIFEQKNIL                     R2 ; [+6]
        7 GETTABLEN                        R2 R0 1
        8 JUMPIFNOTEQKNIL                  R2 ; [+2]
       10 LOADB                            R1 0 +1
       11 LOADB                            R1 1
       12 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+14]
        4 GETUPVAL                         R2 1
        5 GETUPVAL                         R3 2
        6 GETUPVAL                         R4 3
        7 GETUPVAL                         R5 4
        8 GETTABLEKS                       R5 R5 K0 ["name"]
       10 MOVE                             R6 R0
       11 CALL                             R3 3 1
       12 FASTCALL2                        TABLE_INSERT R2 R3 ; [+3]
       14 GETIMPORT                        R1 K3 [table.insert]
       16 CALL                             R1 2 0
       17 RETURN                           R0 0
       18 FASTCALL1                        TYPE R0 ; [+3]
       19 MOVE                             R2 R0
       20 GETIMPORT                        R1 K5 [type]
       22 CALL                             R1 1 1
       23 JUMPIFEQKS                       R1 K1 ["table"] ; [+10]
       25 GETUPVAL                         R1 5
       26 JUMPIFEQ                         R0 R1 ; [+7]
       28 GETUPVAL                         R1 6
       29 GETUPVAL                         R2 4
       30 GETTABLEKS                       R2 R2 K6 ["contentType"]
       32 CALL                             R1 1 1
       33 JUMPIFNOT                        R1 ; [+54]
       34 GETUPVAL                         R2 1
       35 GETUPVAL                         R4 3
       36 GETUPVAL                         R5 4
       37 GETTABLEKS                       R5 R5 K0 ["name"]
       39 GETUPVAL                         R6 7
       40 MOVE                             R7 R0
       41 CALL                             R6 1 1
       42 GETUPVAL                         R8 4
       43 GETTABLEKS                       R8 R8 K6 ["contentType"]
       45 ORK                              R7 R8 K7 ["application/json"]
       46 GETIMPORT                        R8 K10 [string.gsub]
       48 MOVE                             R9 R5
       49 LOADK                            R10 K11 ["[\r\n\"]"]
       50 DUPCLOSURE                       R11 K12 [PROTO_2]
       51 CALL                             R8 3 1
       52 LOADK                            R9 K13 [""]
       53 JUMPIFEQKNIL                     R7 ; [+19]
       55 GETIMPORT                        R12 K15 [string.find]
       57 MOVE                             R13 R7
       58 LOADK                            R14 K16 ["[\r\n]"]
       59 CALL                             R12 2 1
       60 NOT                              R11 R12
       61 FASTCALL2K                       ASSERT R11 K17 ; [+4]
       63 LOADK                            R12 K17 ["The form field content type must not contain CR or LF"]
       64 GETIMPORT                        R10 K19 [assert]
       66 CALL                             R10 2 0
       67 LOADK                            R10 K20 ["Content-Type: %*\r\n"]
       68 MOVE                             R12 R7
       69 NAMECALL                         R10 R10 K21 ["format"]
       71 CALL                             R10 2 1
       72 MOVE                             R9 R10
       73 LOADK                            R10 K22 ["--%*\r\nContent-Disposition: form-data; name=\"%*\"\r\n%*\r\n%*\r\n"]
       74 MOVE                             R12 R4
       75 MOVE                             R13 R8
       76 MOVE                             R14 R9
       77 MOVE                             R15 R6
       78 NAMECALL                         R10 R10 K21 ["format"]
       80 CALL                             R10 5 1
       81 MOVE                             R3 R10
       82 FASTCALL2                        TABLE_INSERT R2 R3 ; [+3]
       84 GETIMPORT                        R1 K3 [table.insert]
       86 CALL                             R1 2 0
       87 RETURN                           R0 0
       88 GETUPVAL                         R2 1
       89 GETUPVAL                         R4 3
       90 GETUPVAL                         R5 4
       91 GETTABLEKS                       R5 R5 K0 ["name"]
       93 GETUPVAL                         R6 8
       94 MOVE                             R7 R0
       95 CALL                             R6 1 1
       96 GETUPVAL                         R7 4
       97 GETTABLEKS                       R7 R7 K6 ["contentType"]
       99 GETIMPORT                        R8 K10 [string.gsub]
      101 MOVE                             R9 R5
      102 LOADK                            R10 K11 ["[\r\n\"]"]
      103 DUPCLOSURE                       R11 K12 [PROTO_2]
      104 CALL                             R8 3 1
      105 LOADK                            R9 K13 [""]
      106 JUMPIFEQKNIL                     R7 ; [+19]
      108 GETIMPORT                        R12 K15 [string.find]
      110 MOVE                             R13 R7
      111 LOADK                            R14 K16 ["[\r\n]"]
      112 CALL                             R12 2 1
      113 NOT                              R11 R12
      114 FASTCALL2K                       ASSERT R11 K17 ; [+4]
      116 LOADK                            R12 K17 ["The form field content type must not contain CR or LF"]
      117 GETIMPORT                        R10 K19 [assert]
      119 CALL                             R10 2 0
      120 LOADK                            R10 K20 ["Content-Type: %*\r\n"]
      121 MOVE                             R12 R7
      122 NAMECALL                         R10 R10 K21 ["format"]
      124 CALL                             R10 2 1
      125 MOVE                             R9 R10
      126 LOADK                            R10 K22 ["--%*\r\nContent-Disposition: form-data; name=\"%*\"\r\n%*\r\n%*\r\n"]
      127 MOVE                             R12 R4
      128 MOVE                             R13 R8
      129 MOVE                             R14 R9
      130 MOVE                             R15 R6
      131 NAMECALL                         R10 R10 K21 ["format"]
      133 CALL                             R10 5 1
      134 MOVE                             R3 R10
      135 FASTCALL2                        TABLE_INSERT R2 R3 ; [+3]
      137 GETIMPORT                        R1 K3 [table.insert]
      139 CALL                             R1 2 0
      140 RETURN                           R0 0

PROTO_11:
        0 NEWCLOSURE                       R4 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R3
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          VAL R2
        9 CAPTURE                          UPVAL U4
       10 GETTABLEKS                       R5 R1 K0 ["value"]
       12 FASTCALL1                        TYPE R5 ; [+3]
       13 MOVE                             R7 R5
       14 GETIMPORT                        R6 K2 [type]
       16 CALL                             R6 1 1
       17 JUMPIFNOTEQKS                    R6 K3 ["table"] ; [+28]
       19 GETUPVAL                         R6 0
       20 MOVE                             R7 R5
       21 CALL                             R6 1 1
       22 JUMPIF                           R6 ; [+23]
       23 LOADB                            R6 1
       24 GETIMPORT                        R7 K5 [next]
       26 MOVE                             R8 R5
       27 CALL                             R7 1 1
       28 JUMPIFEQKNIL                     R7 ; [+6]
       30 GETTABLEN                        R7 R5 1
       31 JUMPIFNOTEQKNIL                  R7 ; [+2]
       33 LOADB                            R6 0 +1
       34 LOADB                            R6 1
       35 JUMPIFNOT                        R6 ; [+10]
       36 MOVE                             R6 R5
       37 LOADNIL                          R7
       38 LOADNIL                          R8
       39 FORGPREP                         R6
       40 MOVE                             R11 R4
       41 MOVE                             R12 R10
       42 CALL                             R11 1 0
       43 FORGLOOP                         R6 2 ; [-4]
       45 RETURN                           R0 0
       46 MOVE                             R6 R4
       47 MOVE                             R7 R5
       48 CALL                             R6 1 0
       49 RETURN                           R0 0

PROTO_12:
        0 NEWTABLE                         R3 0 0
        2 MOVE                             R4 R0
        3 LOADNIL                          R5
        4 LOADNIL                          R6
        5 FORGPREP                         R4
        6 GETUPVAL                         R9 0
        7 MOVE                             R10 R1
        8 MOVE                             R11 R8
        9 MOVE                             R12 R2
       10 MOVE                             R13 R3
       11 CALL                             R9 4 0
       12 FORGLOOP                         R4 2 ; [-7]
       14 LOADK                            R4 K0 ["%*--%*--\r\n"]
       15 GETIMPORT                        R6 K3 [table.concat]
       17 MOVE                             R7 R3
       18 CALL                             R6 1 1
       19 MOVE                             R7 R1
       20 NAMECALL                         R4 R4 K4 ["format"]
       22 CALL                             R4 3 1
       23 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 LOADK                            R1 K2 ["./Types"]
        4 CALL                             R0 1 1
        5 GETIMPORT                        R1 K1 [require]
        7 LOADK                            R2 K3 ["./emptyObject"]
        8 CALL                             R1 1 1
        9 GETIMPORT                        R2 K1 [require]
       11 LOADK                            R3 K4 ["./formatScalar"]
       12 CALL                             R2 1 1
       13 NEWTABLE                         R3 8 0
       15 DUPCLOSURE                       R4 K5 [PROTO_0]
       16 SETTABLEKS                       R4 R3 K6 ["formFile"]
       18 DUPCLOSURE                       R4 K7 [PROTO_1]
       19 SETTABLEKS                       R4 R3 K8 ["isFormFile"]
       21 GETTABLEKS                       R4 R3 K8 ["isFormFile"]
       23 DUPCLOSURE                       R5 K9 [PROTO_3]
       24 DUPCLOSURE                       R6 K10 [PROTO_4]
       25 DUPCLOSURE                       R7 K11 [PROTO_5]
       26 DUPCLOSURE                       R8 K12 [PROTO_6]
       27 DUPCLOSURE                       R9 K13 [PROTO_7]
       28 SETTABLEKS                       R9 R3 K14 ["buildBoundary"]
       30 DUPCLOSURE                       R9 K15 [PROTO_8]
       31 SETTABLEKS                       R9 R3 K16 ["isJsonType"]
       33 GETTABLEKS                       R9 R3 K16 ["isJsonType"]
       35 DUPCLOSURE                       R10 K17 [PROTO_9]
       36 DUPCLOSURE                       R11 K18 [PROTO_11]
       37 CAPTURE                          VAL R4
       38 CAPTURE                          VAL R7
       39 CAPTURE                          VAL R1
       40 CAPTURE                          VAL R9
       41 CAPTURE                          VAL R2
       42 DUPCLOSURE                       R12 K19 [PROTO_12]
       43 CAPTURE                          VAL R11
       44 SETTABLEKS                       R12 R3 K20 ["buildBody"]
       46 RETURN                           R3 1
