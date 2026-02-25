PROTO_0:
        0 GETUPVAL                         R2 0
        1 FASTCALL2                        BIT32_BTEST R2 R0 ; [+4]
        3 MOVE                             R3 R0
        4 GETIMPORT                        R1 K2 [bit32.btest]
        6 CALL                             R1 2 1
        7 RETURN                           R1 1

PROTO_1:
        0 JUMPIF                           R0 ; [+2]
        1 NEWTABLE                         R0 0 0
        3 GETTABLEKS                       R1 R0 K0 ["httpImpl"]
        5 JUMPIF                           R1 ; [+6]
        6 GETIMPORT                        R1 K2 [game]
        8 LOADK                            R3 K3 ["HttpService"]
        9 NAMECALL                         R1 R1 K4 ["GetService"]
       11 CALL                             R1 2 1
       12 GETTABLEKS                       R2 R0 K5 ["isInternal"]
       14 GETTABLEKS                       R3 R0 K6 ["loggingLevel"]
       16 JUMPIF                           R3 ; [+3]
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R3 R4 K7 ["NONE"]
       20 GETTABLEKS                       R4 R0 K8 ["allowYielding"]
       22 JUMPIFNOTEQKNIL                  R2 ; [+2]
       24 LOADB                            R2 0
       25 JUMPIFNOTEQKNIL                  R4 ; [+2]
       27 LOADB                            R4 1
       28 JUMPIFNOT                        R2 ; [+2]
       29 LOADK                            R5 K9 ["RequestInternal"]
       30 JUMP                             ; [+1]
       31 LOADK                            R5 K10 ["RequestAsync"]
       32 GETTABLE                         R7 R1 R5
       33 GETIMPORT                        R8 K13 [string.format]
       35 LOADK                            R9 K14 ["Could not find %s defined on %s."]
       36 MOVE                             R10 R5
       37 GETTABLEKS                       R11 R1 K15 ["ClassName"]
       39 CALL                             R8 3 -1
       40 FASTCALL                         ASSERT ; [+2]
       41 GETIMPORT                        R6 K17 [assert]
       43 CALL                             R6 -1 0
       44 DUPTABLE                         R6 K23 [{"_httpImpl", "_isInternal", "_loggingLevel", "_allowYielding", "_isLoggingEnabled"}]
       45 SETTABLEKS                       R1 R6 K18 ["_httpImpl"]
       47 SETTABLEKS                       R2 R6 K19 ["_isInternal"]
       49 SETTABLEKS                       R3 R6 K20 ["_loggingLevel"]
       51 SETTABLEKS                       R4 R6 K21 ["_allowYielding"]
       53 NEWCLOSURE                       R7 P0
       54 CAPTURE                          VAL R3
       55 SETTABLEKS                       R7 R6 K22 ["_isLoggingEnabled"]
       57 GETUPVAL                         R9 1
       58 FASTCALL2                        SETMETATABLE R6 R9 ; [+4]
       60 MOVE                             R8 R6
       61 GETIMPORT                        R7 K25 [setmetatable]
       63 CALL                             R7 2 0
       64 RETURN                           R6 1

PROTO_2:
        0 GETTABLEKS                       R2 R1 K0 ["Url"]
        2 GETUPVAL                         R4 0
        3 GETTABLE                         R3 R4 R2
        4 JUMPIFNOT                        R3 ; [+3]
        5 GETUPVAL                         R4 0
        6 GETTABLE                         R3 R4 R2
        7 RETURN                           R3 1
        8 GETIMPORT                        R3 K2 [pairs]
       10 GETUPVAL                         R4 0
       11 CALL                             R3 1 3
       12 FORGPREP_NEXT                    R3
       13 MOVE                             R10 R6
       14 NAMECALL                         R8 R2 K3 ["find"]
       16 CALL                             R8 2 1
       17 JUMPIFNOT                        R8 ; [+1]
       18 RETURN                           R7 1
       19 FORGLOOP                         R3 2 ; [-7]
       21 GETTABLEKS                       R3 R0 K4 ["_defaultResponse"]
       23 RETURN                           R3 1

PROTO_3:
        0 DUPTABLE                         R2 K2 [{"ClassName", "_defaultResponse"}]
        1 LOADK                            R3 K3 ["Networking.lua's MockHttpService"]
        2 SETTABLEKS                       R3 R2 K0 ["ClassName"]
        4 DUPTABLE                         R3 K8 [{"Body", "Success", "StatusMessage", "StatusCode"}]
        5 LOADK                            R4 K9 ["{}"]
        6 SETTABLEKS                       R4 R3 K4 ["Body"]
        8 LOADB                            R4 1
        9 SETTABLEKS                       R4 R3 K5 ["Success"]
       11 LOADK                            R4 K10 ["OK"]
       12 SETTABLEKS                       R4 R3 K6 ["StatusMessage"]
       14 LOADN                            R4 200
       15 SETTABLEKS                       R4 R3 K7 ["StatusCode"]
       17 SETTABLEKS                       R3 R2 K1 ["_defaultResponse"]
       19 NEWCLOSURE                       R3 P0
       20 CAPTURE                          VAL R0
       21 SETTABLEKS                       R3 R2 K11 ["RequestAsync"]
       23 GETUPVAL                         R4 0
       24 GETTABLEKS                       R3 R4 K12 ["new"]
       26 DUPTABLE                         R4 K16 [{"httpImpl", "loggingLevel", "allowYielding"}]
       27 SETTABLEKS                       R2 R4 K13 ["httpImpl"]
       29 SETTABLEKS                       R1 R4 K14 ["loggingLevel"]
       31 LOADB                            R5 0
       32 SETTABLEKS                       R5 R4 K15 ["allowYielding"]
       34 CALL                             R3 1 -1
       35 RETURN                           R3 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["responseBody"]
        3 NAMECALL                         R1 R1 K1 ["JSONDecode"]
        5 CALL                             R1 2 1
        6 SETTABLEKS                       R1 R0 K0 ["responseBody"]
        8 RETURN                           R0 1

PROTO_5:
        0 RETURN                           R0 1

PROTO_6:
        0 DUPCLOSURE                       R3 K0 [PROTO_4]
        1 CAPTURE                          UPVAL U0
        2 DUPCLOSURE                       R4 K1 [PROTO_5]
        3 NAMECALL                         R1 R0 K2 ["andThen"]
        5 CALL                             R1 3 -1
        6 RETURN                           R1 -1

PROTO_7:
        0 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 ADDK                             R1 R2 K0 [1]
        2 SETUPVAL                         R1 0
        3 GETUPVAL                         R1 0
        4 GETUPVAL                         R2 1
        5 JUMPIFNOTLT                      R2 R1 ; [+5]
        7 GETUPVAL                         R1 2
        8 MOVE                             R2 R0
        9 CALL                             R1 1 0
       10 RETURN                           R0 0
       11 LOADB                            R1 0
       12 GETTABLEKS                       R2 R0 K1 ["responseCode"]
       14 LOADN                            R3 144
       15 JUMPIFNOTLE                      R3 R2 ; [+8]
       17 GETTABLEKS                       R2 R0 K1 ["responseCode"]
       19 LOADN                            R3 244
       20 JUMPIFLT                         R2 R3 ; [+2]
       22 LOADB                            R1 0 +1
       23 LOADB                            R1 1
       24 JUMPIFNOT                        R1 ; [+20]
       25 GETTABLEKS                       R2 R0 K1 ["responseCode"]
       27 JUMPIFEQKN                       R2 K2 [429] ; [+17]
       29 GETUPVAL                         R3 3
       30 GETTABLEKS                       R2 R3 K3 ["_isLoggingEnabled"]
       32 GETUPVAL                         R4 4
       33 GETTABLEKS                       R3 R4 K4 ["DEBUG"]
       35 CALL                             R2 1 1
       36 JUMPIFNOT                        R2 ; [+4]
       37 GETIMPORT                        R2 K6 [print]
       39 LOADK                            R3 K7 ["Http request failed due to request errors. Ignoring retry."]
       40 CALL                             R2 1 0
       41 GETUPVAL                         R2 2
       42 MOVE                             R3 R0
       43 CALL                             R2 1 0
       44 RETURN                           R0 0
       45 GETUPVAL                         R3 3
       46 GETTABLEKS                       R2 R3 K3 ["_isLoggingEnabled"]
       48 GETUPVAL                         R4 4
       49 GETTABLEKS                       R3 R4 K4 ["DEBUG"]
       51 CALL                             R2 1 1
       52 JUMPIFNOT                        R2 ; [+8]
       53 GETIMPORT                        R2 K6 [print]
       55 GETIMPORT                        R3 K10 [string.format]
       57 LOADK                            R4 K11 ["Http request failed. Attempting retry #%d"]
       58 GETUPVAL                         R5 0
       59 CALL                             R3 2 -1
       60 CALL                             R2 -1 0
       61 GETUPVAL                         R2 5
       62 JUMPIF                           R2 ; [+32]
       63 GETUPVAL                         R3 3
       64 GETTABLEKS                       R2 R3 K3 ["_isLoggingEnabled"]
       66 GETUPVAL                         R4 4
       67 GETTABLEKS                       R3 R4 K4 ["DEBUG"]
       69 CALL                             R2 1 1
       70 JUMPIFNOT                        R2 ; [+14]
       71 GETIMPORT                        R2 K6 [print]
       73 GETIMPORT                        R3 K10 [string.format]
       75 LOADK                            R4 K12 ["- waiting for %d seconds before next attempt"]
       76 LOADN                            R6 2
       77 GETUPVAL                         R7 0
       78 FASTCALL2                        MATH_POW R6 R7 ; [+3]
       80 GETIMPORT                        R5 K15 [math.pow]
       82 CALL                             R5 2 1
       83 CALL                             R3 2 -1
       84 CALL                             R2 -1 0
       85 GETIMPORT                        R2 K17 [wait]
       87 LOADN                            R4 2
       88 GETUPVAL                         R5 0
       89 FASTCALL2                        MATH_POW R4 R5 ; [+3]
       91 GETIMPORT                        R3 K15 [math.pow]
       93 CALL                             R3 2 1
       94 CALL                             R2 1 0
       95 GETUPVAL                         R3 6
       96 GETTABLEKS                       R2 R3 K18 ["requestOptions"]
       98 GETUPVAL                         R3 3
       99 MOVE                             R5 R2
      100 NAMECALL                         R3 R3 K19 ["request"]
      102 CALL                             R3 2 1
      103 GETUPVAL                         R5 7
      104 GETUPVAL                         R6 8
      105 NAMECALL                         R3 R3 K20 ["andThen"]
      107 CALL                             R3 3 0
      108 RETURN                           R0 0

PROTO_9:
        0 LOADN                            R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          REF R2
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          VAL R0
       10 CAPTURE                          VAL R3
       11 MOVE                             R4 R3
       12 GETUPVAL                         R5 4
       13 CALL                             R4 1 0
       14 CLOSEUPVALS                      R2
       15 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["new"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          VAL R0
        9 CALL                             R1 1 -1
       10 RETURN                           R1 -1

PROTO_11:
        0 JUMPIF                           R2 ; [+1]
        1 LOADN                            R2 3
        2 JUMPIFNOTEQKNIL                  R3 ; [+2]
        4 LOADB                            R3 0
        5 DUPCLOSURE                       R6 K0 [PROTO_7]
        6 NEWCLOSURE                       R7 P1
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          REF R2
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          REF R3
       12 NAMECALL                         R4 R1 K1 ["andThen"]
       14 CALL                             R4 3 -1
       15 CLOSEUPVALS                      R2
       16 RETURN                           R4 -1

PROTO_12:
        0 GETIMPORT                        R2 K1 [tick]
        2 CALL                             R2 0 1
        3 GETUPVAL                         R5 0
        4 SUB                              R4 R2 R5
        5 MULK                             R3 R4 K2 [1000]
        6 JUMPIFNOT                        R0 ; [+199]
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R4 R5 K3 ["_isLoggingEnabled"]
       10 GETUPVAL                         R6 2
       11 GETTABLEKS                       R5 R6 K4 ["RESPONSES"]
       13 CALL                             R4 1 1
       14 JUMPIFNOT                        R4 ; [+120]
       15 NEWTABLE                         R4 0 1
       17 LOADK                            R5 K5 ["Incoming Network Response :"]
       18 SETLIST                          R4 R5 1 [1]
       20 GETUPVAL                         R6 1
       21 GETTABLEKS                       R5 R6 K3 ["_isLoggingEnabled"]
       23 GETUPVAL                         R7 2
       24 GETTABLEKS                       R6 R7 K6 ["DEBUG"]
       26 CALL                             R5 1 1
       27 JUMPIFNOT                        R5 ; [+84]
       28 GETIMPORT                        R5 K8 [pairs]
       30 MOVE                             R6 R1
       31 CALL                             R5 1 3
       32 FORGPREP_NEXT                    R5
       33 FASTCALL1                        TYPE R9 ; [+3]
       34 MOVE                             R11 R9
       35 GETIMPORT                        R10 K10 [type]
       37 CALL                             R10 1 1
       38 JUMPIFNOTEQKS                    R10 K11 ["table"] ; [+41]
       40 MOVE                             R11 R4
       41 GETIMPORT                        R12 K14 [string.format]
       43 LOADK                            R13 K15 [" - %s : {"]
       44 MOVE                             R14 R8
       45 CALL                             R12 2 -1
       46 FASTCALL                         TABLE_INSERT ; [+2]
       47 GETIMPORT                        R10 K17 [table.insert]
       49 CALL                             R10 -1 0
       50 GETIMPORT                        R10 K8 [pairs]
       52 MOVE                             R11 R9
       53 CALL                             R10 1 3
       54 FORGPREP_NEXT                    R10
       55 MOVE                             R16 R4
       56 GETIMPORT                        R17 K14 [string.format]
       58 LOADK                            R18 K18 ["\t- %s = %s"]
       59 MOVE                             R19 R13
       60 FASTCALL1                        TOSTRING R14 ; [+3]
       61 MOVE                             R21 R14
       62 GETIMPORT                        R20 K20 [tostring]
       64 CALL                             R20 1 1
       65 CALL                             R17 3 -1
       66 FASTCALL                         TABLE_INSERT ; [+2]
       67 GETIMPORT                        R15 K17 [table.insert]
       69 CALL                             R15 -1 0
       70 FORGLOOP                         R10 2 ; [-16]
       72 FASTCALL2K                       TABLE_INSERT R4 K21 ; [+5]
       74 MOVE                             R11 R4
       75 LOADK                            R12 K21 [" }"]
       76 GETIMPORT                        R10 K17 [table.insert]
       78 CALL                             R10 2 0
       79 JUMP                             ; [+15]
       80 MOVE                             R11 R4
       81 GETIMPORT                        R12 K14 [string.format]
       83 LOADK                            R13 K22 [" - %s : %s"]
       84 MOVE                             R14 R8
       85 FASTCALL1                        TOSTRING R9 ; [+3]
       86 MOVE                             R16 R9
       87 GETIMPORT                        R15 K20 [tostring]
       89 CALL                             R15 1 1
       90 CALL                             R12 3 -1
       91 FASTCALL                         TABLE_INSERT ; [+2]
       92 GETIMPORT                        R10 K17 [table.insert]
       94 CALL                             R10 -1 0
       95 FORGLOOP                         R5 2 ; [-63]
       97 MOVE                             R6 R4
       98 GETIMPORT                        R7 K14 [string.format]
      100 LOADK                            R8 K23 [" - Time (ms) : %s"]
      101 FASTCALL1                        TOSTRING R3 ; [+3]
      102 MOVE                             R10 R3
      103 GETIMPORT                        R9 K20 [tostring]
      105 CALL                             R9 1 1
      106 CALL                             R7 2 -1
      107 FASTCALL                         TABLE_INSERT ; [+2]
      108 GETIMPORT                        R5 K17 [table.insert]
      110 CALL                             R5 -1 0
      111 JUMP                             ; [+15]
      112 MOVE                             R6 R4
      113 GETIMPORT                        R7 K14 [string.format]
      115 LOADK                            R8 K24 [" - Body : %s"]
      116 GETTABLEKS                       R10 R1 K25 ["Body"]
      118 FASTCALL1                        TOSTRING R10 ; [+2]
      119 GETIMPORT                        R9 K20 [tostring]
      121 CALL                             R9 1 1
      122 CALL                             R7 2 -1
      123 FASTCALL                         TABLE_INSERT ; [+2]
      124 GETIMPORT                        R5 K17 [table.insert]
      126 CALL                             R5 -1 0
      127 GETIMPORT                        R5 K27 [print]
      129 GETIMPORT                        R6 K29 [table.concat]
      131 MOVE                             R7 R4
      132 LOADK                            R8 K30 ["\n"]
      133 CALL                             R6 2 -1
      134 CALL                             R5 -1 0
      135 GETTABLEKS                       R4 R1 K25 ["Body"]
      137 GETTABLEKS                       R5 R1 K31 ["StatusMessage"]
      139 GETTABLEKS                       R6 R1 K32 ["StatusCode"]
      141 LOADNIL                          R7
      142 GETUPVAL                         R9 1
      143 GETTABLEKS                       R8 R9 K33 ["_isInternal"]
      145 JUMPIFNOT                        R8 ; [+5]
      146 JUMPIFEQKN                       R6 K34 [200] ; [+2]
      148 LOADB                            R7 0 +1
      149 LOADB                            R7 1
      150 JUMP                             ; [+2]
      151 GETTABLEKS                       R7 R1 K35 ["Success"]
      153 GETUPVAL                         R9 3
      154 GETTABLEKS                       R8 R9 K36 ["new"]
      156 MOVE                             R9 R4
      157 MOVE                             R10 R3
      158 MOVE                             R11 R6
      159 GETUPVAL                         R12 4
      160 CALL                             R8 4 1
      161 JUMPIFNOT                        R7 ; [+22]
      162 GETUPVAL                         R10 1
      163 GETTABLEKS                       R9 R10 K3 ["_isLoggingEnabled"]
      165 GETUPVAL                         R11 2
      166 GETTABLEKS                       R10 R11 K6 ["DEBUG"]
      168 CALL                             R9 1 1
      169 JUMPIFNOT                        R9 ; [+10]
      170 GETIMPORT                        R9 K27 [print]
      172 GETIMPORT                        R10 K14 [string.format]
      174 LOADK                            R11 K37 ["Http request to %s resolved successfully."]
      175 GETUPVAL                         R13 4
      176 GETTABLEKS                       R12 R13 K38 ["Url"]
      178 CALL                             R10 2 -1
      179 CALL                             R9 -1 0
      180 GETUPVAL                         R9 5
      181 MOVE                             R10 R8
      182 CALL                             R9 1 0
      183 RETURN                           R0 0
      184 GETUPVAL                         R10 1
      185 GETTABLEKS                       R9 R10 K3 ["_isLoggingEnabled"]
      187 GETUPVAL                         R11 2
      188 GETTABLEKS                       R10 R11 K6 ["DEBUG"]
      190 CALL                             R9 1 1
      191 JUMPIFNOT                        R9 ; [+10]
      192 GETIMPORT                        R9 K27 [print]
      194 GETIMPORT                        R10 K14 [string.format]
      196 LOADK                            R11 K39 ["Http request to %s rejected because request did not succeed."]
      197 GETUPVAL                         R13 4
      198 GETTABLEKS                       R12 R13 K38 ["Url"]
      200 CALL                             R10 2 -1
      201 CALL                             R9 -1 0
      202 GETUPVAL                         R9 6
      203 MOVE                             R10 R8
      204 CALL                             R9 1 0
      205 RETURN                           R0 0
      206 GETUPVAL                         R5 1
      207 GETTABLEKS                       R4 R5 K3 ["_isLoggingEnabled"]
      209 GETUPVAL                         R6 2
      210 GETTABLEKS                       R5 R6 K6 ["DEBUG"]
      212 CALL                             R4 1 1
      213 JUMPIFNOT                        R4 ; [+11]
      214 GETIMPORT                        R4 K27 [print]
      216 GETIMPORT                        R5 K14 [string.format]
      218 LOADK                            R6 K40 ["Http request to %s rejected because pcall returned false with message : %s"]
      219 GETUPVAL                         R8 4
      220 GETTABLEKS                       R7 R8 K38 ["Url"]
      222 MOVE                             R8 R1
      223 CALL                             R5 3 -1
      224 CALL                             R4 -1 0
      225 GETUPVAL                         R4 6
      226 GETUPVAL                         R6 3
      227 GETTABLEKS                       R5 R6 K36 ["new"]
      229 MOVE                             R6 R1
      230 MOVE                             R7 R3
      231 GETUPVAL                         R9 7
      232 GETTABLEKS                       R8 R9 K41 ["UNKNOWN_ERROR"]
      234 GETUPVAL                         R9 4
      235 CALL                             R5 4 -1
      236 CALL                             R4 -1 0
      237 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 0
        4 RETURN                           R0 0

PROTO_14:
        0 GETIMPORT                        R2 K1 [spawn]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 CALL                             R2 1 0
        7 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["_isInternal"]
        3 JUMPIFNOT                        R0 ; [+29]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K1 ["_allowYielding"]
        7 JUMPIFNOT                        R0 ; [+13]
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R0 R1 K2 ["_httpImpl"]
       11 GETUPVAL                         R2 1
       12 NAMECALL                         R0 R0 K3 ["RequestInternal"]
       14 CALL                             R0 2 1
       15 NEWCLOSURE                       R2 P0
       16 CAPTURE                          UPVAL U2
       17 NAMECALL                         R0 R0 K4 ["Start"]
       19 CALL                             R0 2 0
       20 RETURN                           R0 0
       21 GETUPVAL                         R1 0
       22 GETTABLEKS                       R0 R1 K2 ["_httpImpl"]
       24 GETUPVAL                         R2 1
       25 NAMECALL                         R0 R0 K3 ["RequestInternal"]
       27 CALL                             R0 2 1
       28 GETUPVAL                         R2 2
       29 NAMECALL                         R0 R0 K4 ["Start"]
       31 CALL                             R0 2 0
       32 RETURN                           R0 0
       33 GETIMPORT                        R0 K6 [pcall]
       35 GETUPVAL                         R3 0
       36 GETTABLEKS                       R2 R3 K2 ["_httpImpl"]
       38 GETTABLEKS                       R1 R2 K7 ["RequestAsync"]
       40 GETUPVAL                         R3 0
       41 GETTABLEKS                       R2 R3 K2 ["_httpImpl"]
       43 GETUPVAL                         R3 1
       44 CALL                             R0 3 2
       45 GETUPVAL                         R2 2
       46 MOVE                             R3 R0
       47 MOVE                             R4 R1
       48 CALL                             R2 2 0
       49 RETURN                           R0 0

PROTO_16:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          VAL R0
        7 CAPTURE                          VAL R1
        8 CAPTURE                          UPVAL U5
        9 NEWCLOSURE                       R3 P1
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          UPVAL U4
       12 CAPTURE                          VAL R2
       13 GETUPVAL                         R5 1
       14 GETTABLEKS                       R4 R5 K0 ["_allowYielding"]
       16 JUMPIFNOT                        R4 ; [+5]
       17 GETIMPORT                        R4 K2 [spawn]
       19 MOVE                             R5 R3
       20 CALL                             R4 1 0
       21 RETURN                           R0 0
       22 MOVE                             R4 R3
       23 CALL                             R4 0 0
       24 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R3 R1 K0 ["Url"]
        2 FASTCALL2K                       ASSERT R3 K1 ; [+4]
        4 LOADK                            R4 K1 ["Options table requires a 'Url' field"]
        5 GETIMPORT                        R2 K3 [assert]
        7 CALL                             R2 2 0
        8 GETTABLEKS                       R3 R1 K4 ["Method"]
       10 FASTCALL2K                       ASSERT R3 K5 ; [+4]
       12 LOADK                            R4 K5 ["Options table requires a 'Method' field"]
       13 GETIMPORT                        R2 K3 [assert]
       15 CALL                             R2 2 0
       16 GETTABLEKS                       R2 R0 K6 ["_isLoggingEnabled"]
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R3 R4 K7 ["REQUESTS"]
       21 CALL                             R2 1 1
       22 JUMPIFNOT                        R2 ; [+31]
       23 NEWTABLE                         R2 0 1
       25 LOADK                            R3 K8 ["Outgoing Network Request :"]
       26 SETLIST                          R2 R3 1 [1]
       28 GETIMPORT                        R3 K10 [pairs]
       30 MOVE                             R4 R1
       31 CALL                             R3 1 3
       32 FORGPREP_NEXT                    R3
       33 MOVE                             R9 R2
       34 GETIMPORT                        R10 K13 [string.format]
       36 LOADK                            R11 K14 [" - %s : %s"]
       37 MOVE                             R12 R6
       38 MOVE                             R13 R7
       39 CALL                             R10 3 -1
       40 FASTCALL                         TABLE_INSERT ; [+2]
       41 GETIMPORT                        R8 K17 [table.insert]
       43 CALL                             R8 -1 0
       44 FORGLOOP                         R3 2 ; [-12]
       46 GETIMPORT                        R3 K19 [print]
       48 GETIMPORT                        R4 K21 [table.concat]
       50 MOVE                             R5 R2
       51 LOADK                            R6 K22 ["\n"]
       52 CALL                             R4 2 -1
       53 CALL                             R3 -1 0
       54 GETIMPORT                        R2 K24 [tick]
       56 CALL                             R2 0 1
       57 GETUPVAL                         R4 1
       58 GETTABLEKS                       R3 R4 K25 ["new"]
       60 NEWCLOSURE                       R4 P0
       61 CAPTURE                          VAL R2
       62 CAPTURE                          VAL R0
       63 CAPTURE                          UPVAL U0
       64 CAPTURE                          UPVAL U2
       65 CAPTURE                          VAL R1
       66 CAPTURE                          UPVAL U3
       67 CALL                             R3 1 1
       68 RETURN                           R3 1

PROTO_18:
        0 DUPTABLE                         R3 K3 [{"Url", "Method", "Headers"}]
        1 SETTABLEKS                       R1 R3 K0 ["Url"]
        3 LOADK                            R4 K4 ["GET"]
        4 SETTABLEKS                       R4 R3 K1 ["Method"]
        6 SETTABLEKS                       R2 R3 K2 ["Headers"]
        8 MOVE                             R6 R3
        9 NAMECALL                         R4 R0 K5 ["request"]
       11 CALL                             R4 2 -1
       12 RETURN                           R4 -1

PROTO_19:
        0 DUPTABLE                         R4 K4 [{"Url", "Body", "Method", "Headers"}]
        1 SETTABLEKS                       R1 R4 K0 ["Url"]
        3 SETTABLEKS                       R2 R4 K1 ["Body"]
        5 LOADK                            R5 K5 ["POST"]
        6 SETTABLEKS                       R5 R4 K2 ["Method"]
        8 SETTABLEKS                       R3 R4 K3 ["Headers"]
       10 MOVE                             R7 R4
       11 NAMECALL                         R5 R0 K6 ["request"]
       13 CALL                             R5 2 -1
       14 RETURN                           R5 -1

PROTO_20:
        0 DUPTABLE                         R3 K3 [{"Url", "Method", "Headers"}]
        1 SETTABLEKS                       R1 R3 K0 ["Url"]
        3 LOADK                            R4 K4 ["DELETE"]
        4 SETTABLEKS                       R4 R3 K1 ["Method"]
        6 SETTABLEKS                       R2 R3 K2 ["Headers"]
        8 MOVE                             R6 R3
        9 NAMECALL                         R4 R0 K5 ["request"]
       11 CALL                             R4 2 -1
       12 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R5 K7 [script]
       11 GETTABLEKS                       R4 R5 K8 ["Parent"]
       13 GETTABLEKS                       R3 R4 K8 ["Parent"]
       15 GETTABLEKS                       R2 R3 K9 ["Promise"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETIMPORT                        R5 K7 [script]
       22 GETTABLEKS                       R4 R5 K8 ["Parent"]
       24 GETTABLEKS                       R3 R4 K10 ["HttpResponse"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETIMPORT                        R6 K7 [script]
       31 GETTABLEKS                       R5 R6 K8 ["Parent"]
       33 GETTABLEKS                       R4 R5 K11 ["StatusCodes"]
       35 CALL                             R3 1 1
       36 DUPTABLE                         R4 K17 [{"NONE", "REQUESTS", "RESPONSES", "DEBUG", "VERBOSE"}]
       37 LOADN                            R5 0
       38 SETTABLEKS                       R5 R4 K12 ["NONE"]
       40 LOADN                            R5 1
       41 SETTABLEKS                       R5 R4 K13 ["REQUESTS"]
       43 LOADN                            R5 2
       44 SETTABLEKS                       R5 R4 K14 ["RESPONSES"]
       46 LOADN                            R5 4
       47 SETTABLEKS                       R5 R4 K15 ["DEBUG"]
       49 LOADN                            R5 7
       50 SETTABLEKS                       R5 R4 K16 ["VERBOSE"]
       52 NEWTABLE                         R5 16 0
       54 SETTABLEKS                       R5 R5 K18 ["__index"]
       56 DUPCLOSURE                       R6 K19 [PROTO_1]
       57 CAPTURE                          VAL R4
       58 CAPTURE                          VAL R5
       59 SETTABLEKS                       R6 R5 K20 ["new"]
       61 DUPCLOSURE                       R6 K21 [PROTO_3]
       62 CAPTURE                          VAL R5
       63 SETTABLEKS                       R6 R5 K22 ["mock"]
       65 DUPCLOSURE                       R6 K23 [PROTO_6]
       66 CAPTURE                          VAL R0
       67 SETTABLEKS                       R6 R5 K24 ["parseJson"]
       69 DUPCLOSURE                       R6 K25 [PROTO_11]
       70 CAPTURE                          VAL R1
       71 CAPTURE                          VAL R4
       72 SETTABLEKS                       R6 R5 K26 ["handleRetry"]
       74 DUPCLOSURE                       R6 K27 [PROTO_17]
       75 CAPTURE                          VAL R4
       76 CAPTURE                          VAL R1
       77 CAPTURE                          VAL R2
       78 CAPTURE                          VAL R3
       79 SETTABLEKS                       R6 R5 K28 ["request"]
       81 DUPCLOSURE                       R6 K29 [PROTO_18]
       82 SETTABLEKS                       R6 R5 K30 ["get"]
       84 DUPCLOSURE                       R6 K31 [PROTO_19]
       85 SETTABLEKS                       R6 R5 K32 ["post"]
       87 DUPCLOSURE                       R6 K33 [PROTO_20]
       88 SETTABLEKS                       R6 R5 K34 ["delete"]
       90 RETURN                           R5 1
