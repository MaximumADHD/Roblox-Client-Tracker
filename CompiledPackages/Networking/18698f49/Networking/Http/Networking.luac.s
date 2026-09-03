PROTO_0:
        0 MOVE                             R1 R0
        1 JUMPIF                           R1 ; [+2]
        2 NEWTABLE                         R1 0 0
        4 GETTABLEKS                       R2 R1 K0 ["loggingLevel"]
        6 JUMPIF                           R2 ; [+3]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K1 ["NONE"]
       10 FASTCALL1                        TYPE R2 ; [+3]
       11 MOVE                             R6 R2
       12 GETIMPORT                        R5 K3 [type]
       14 CALL                             R5 1 1
       15 JUMPIFEQKS                       R5 K4 ["number"] ; [+2]
       17 LOADB                            R4 0 +1
       18 LOADB                            R4 1
       19 FASTCALL2K                       ASSERT R4 K5 ; [+4]
       21 LOADK                            R5 K5 ["loggingLevel expected to be a LOGGING_CHANNELS enum"]
       22 GETIMPORT                        R3 K7 [assert]
       24 CALL                             R3 2 0
       25 LOADB                            R4 0
       26 GETUPVAL                         R5 0
       27 GETTABLEKS                       R5 R5 K1 ["NONE"]
       29 JUMPIFNOTLE                      R5 R2 ; [+8]
       31 GETUPVAL                         R5 0
       32 GETTABLEKS                       R5 R5 K8 ["VERBOSE"]
       34 JUMPIFLE                         R2 R5 ; [+2]
       36 LOADB                            R4 0 +1
       37 LOADB                            R4 1
       38 FASTCALL2K                       ASSERT R4 K9 ; [+4]
       40 LOADK                            R5 K9 ["loggingLevel expected to be valid"]
       41 GETIMPORT                        R3 K7 [assert]
       43 CALL                             R3 2 0
       44 GETTABLEKS                       R3 R1 K10 ["isInternal"]
       46 JUMPIFNOTEQKNIL                  R3 ; [+2]
       48 LOADB                            R3 0
       49 FASTCALL1                        TYPE R3 ; [+3]
       50 MOVE                             R7 R3
       51 GETIMPORT                        R6 K3 [type]
       53 CALL                             R6 1 1
       54 JUMPIFEQKS                       R6 K11 ["boolean"] ; [+2]
       56 LOADB                            R5 0 +1
       57 LOADB                            R5 1
       58 FASTCALL2K                       ASSERT R5 K12 ; [+4]
       60 LOADK                            R6 K12 ["isInternal is expected to be boolean"]
       61 GETIMPORT                        R4 K7 [assert]
       63 CALL                             R4 2 0
       64 GETTABLEKS                       R4 R1 K13 ["allowYielding"]
       66 JUMPIFNOTEQKNIL                  R4 ; [+2]
       68 LOADB                            R4 1
       69 FASTCALL1                        TYPE R4 ; [+3]
       70 MOVE                             R8 R4
       71 GETIMPORT                        R7 K3 [type]
       73 CALL                             R7 1 1
       74 JUMPIFEQKS                       R7 K11 ["boolean"] ; [+2]
       76 LOADB                            R6 0 +1
       77 LOADB                            R6 1
       78 FASTCALL2K                       ASSERT R6 K14 ; [+4]
       80 LOADK                            R7 K14 ["allowYielding is expected to be boolean"]
       81 GETIMPORT                        R5 K7 [assert]
       83 CALL                             R5 2 0
       84 GETTABLEKS                       R5 R1 K15 ["httpImpl"]
       86 JUMPIF                           R5 ; [+6]
       87 GETIMPORT                        R5 K17 [game]
       89 LOADK                            R7 K18 ["HttpService"]
       90 NAMECALL                         R5 R5 K19 ["GetService"]
       92 CALL                             R5 2 1
       93 JUMPIFNOT                        R3 ; [+2]
       94 LOADK                            R6 K20 ["RequestInternal"]
       95 JUMP                             ; [+1]
       96 LOADK                            R6 K21 ["RequestAsync"]
       97 GETTABLE                         R8 R5 R6
       98 GETIMPORT                        R9 K24 [string.format]
      100 LOADK                            R10 K25 ["Could not find %s defined on %s."]
      101 FASTCALL1                        TOSTRING R6 ; [+3]
      102 MOVE                             R12 R6
      103 GETIMPORT                        R11 K27 [tostring]
      105 CALL                             R11 1 1
      106 GETTABLEKS                       R13 R5 K28 ["ClassName"]
      108 FASTCALL1                        TOSTRING R13 ; [+2]
      109 GETIMPORT                        R12 K27 [tostring]
      111 CALL                             R12 1 1
      112 CALL                             R9 3 -1
      113 FASTCALL                         ASSERT ; [+2]
      114 GETIMPORT                        R7 K7 [assert]
      116 CALL                             R7 -1 0
      117 DUPTABLE                         R7 K33 [{"_httpImpl", "_isInternal", "_loggingLevel", "_allowYielding"}]
      118 SETTABLEKS                       R5 R7 K29 ["_httpImpl"]
      120 SETTABLEKS                       R3 R7 K30 ["_isInternal"]
      122 SETTABLEKS                       R2 R7 K31 ["_loggingLevel"]
      124 SETTABLEKS                       R4 R7 K32 ["_allowYielding"]
      126 GETUPVAL                         R10 1
      127 FASTCALL2                        SETMETATABLE R7 R10 ; [+4]
      129 MOVE                             R9 R7
      130 GETIMPORT                        R8 K35 [setmetatable]
      132 CALL                             R8 2 0
      133 RETURN                           R7 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["DEBUG"]
        4 JUMPIFNOTLE                      R2 R1 ; [+10]
        6 GETIMPORT                        R1 K2 [warn]
        8 GETIMPORT                        R2 K5 [string.format]
       10 LOADK                            R3 K6 ["Unhandled request to %s. Returning default response."]
       11 GETTABLEKS                       R4 R0 K7 ["requestUrl"]
       13 CALL                             R2 2 -1
       14 CALL                             R1 -1 0
       15 DUPTABLE                         R1 K16 [{["Body"] = "{}", ["Success"] = True, ["StatusMessage"] = "OK", ["StatusCode"] = 200}]
       16 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["onRequestHandler"]
        2 MOVE                             R3 R1
        3 CALL                             R2 1 1
        4 FASTCALL1                        TYPE R2 ; [+3]
        5 MOVE                             R6 R2
        6 GETIMPORT                        R5 K2 [type]
        8 CALL                             R5 1 1
        9 JUMPIFEQKS                       R5 K3 ["table"] ; [+2]
       11 LOADB                            R4 0 +1
       12 LOADB                            R4 1
       13 FASTCALL2K                       ASSERT R4 K4 ; [+4]
       15 LOADK                            R5 K4 ["onRequest is expected to return a table"]
       16 GETIMPORT                        R3 K6 [assert]
       18 CALL                             R3 2 0
       19 GETTABLEKS                       R6 R2 K7 ["Body"]
       21 FASTCALL1                        TYPE R6 ; [+2]
       22 GETIMPORT                        R5 K2 [type]
       24 CALL                             R5 1 1
       25 JUMPIFEQKS                       R5 K8 ["string"] ; [+2]
       27 LOADB                            R4 0 +1
       28 LOADB                            R4 1
       29 FASTCALL2K                       ASSERT R4 K9 ; [+4]
       31 LOADK                            R5 K9 ["onRequest is expected to return a table with a string Body property"]
       32 GETIMPORT                        R3 K6 [assert]
       34 CALL                             R3 2 0
       35 GETTABLEKS                       R6 R2 K10 ["Success"]
       37 FASTCALL1                        TYPE R6 ; [+2]
       38 GETIMPORT                        R5 K2 [type]
       40 CALL                             R5 1 1
       41 JUMPIFEQKS                       R5 K11 ["boolean"] ; [+2]
       43 LOADB                            R4 0 +1
       44 LOADB                            R4 1
       45 FASTCALL2K                       ASSERT R4 K12 ; [+4]
       47 LOADK                            R5 K12 ["onRequest is expected to return a table with a boolean Success property"]
       48 GETIMPORT                        R3 K6 [assert]
       50 CALL                             R3 2 0
       51 GETTABLEKS                       R6 R2 K13 ["StatusMessage"]
       53 FASTCALL1                        TYPE R6 ; [+2]
       54 GETIMPORT                        R5 K2 [type]
       56 CALL                             R5 1 1
       57 JUMPIFEQKS                       R5 K8 ["string"] ; [+2]
       59 LOADB                            R4 0 +1
       60 LOADB                            R4 1
       61 FASTCALL2K                       ASSERT R4 K14 ; [+4]
       63 LOADK                            R5 K14 ["onRequest is expected to return a table with a string StatusMessage property"]
       64 GETIMPORT                        R3 K6 [assert]
       66 CALL                             R3 2 0
       67 GETTABLEKS                       R6 R2 K15 ["StatusCode"]
       69 FASTCALL1                        TYPE R6 ; [+2]
       70 GETIMPORT                        R5 K2 [type]
       72 CALL                             R5 1 1
       73 JUMPIFEQKS                       R5 K16 ["number"] ; [+2]
       75 LOADB                            R4 0 +1
       76 LOADB                            R4 1
       77 FASTCALL2K                       ASSERT R4 K17 ; [+4]
       79 LOADK                            R5 K17 ["onRequest is expected to return a table with a number StatusCode property"]
       80 GETIMPORT                        R3 K6 [assert]
       82 CALL                             R3 2 0
       83 RETURN                           R2 1

PROTO_3:
        0 JUMPIF                           R0 ; [+2]
        1 NEWTABLE                         R0 0 0
        3 GETTABLEKS                       R1 R0 K0 ["loggingLevel"]
        5 JUMPIF                           R1 ; [+3]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K1 ["NONE"]
        9 FASTCALL1                        TYPE R1 ; [+3]
       10 MOVE                             R5 R1
       11 GETIMPORT                        R4 K3 [type]
       13 CALL                             R4 1 1
       14 JUMPIFEQKS                       R4 K4 ["number"] ; [+2]
       16 LOADB                            R3 0 +1
       17 LOADB                            R3 1
       18 FASTCALL2K                       ASSERT R3 K5 ; [+4]
       20 LOADK                            R4 K5 ["loggingLevel expected to be a LOGGING_CHANNELS enum"]
       21 GETIMPORT                        R2 K7 [assert]
       23 CALL                             R2 2 0
       24 LOADB                            R3 0
       25 GETUPVAL                         R4 0
       26 GETTABLEKS                       R4 R4 K1 ["NONE"]
       28 JUMPIFNOTLE                      R4 R1 ; [+8]
       30 GETUPVAL                         R4 0
       31 GETTABLEKS                       R4 R4 K8 ["VERBOSE"]
       33 JUMPIFLE                         R1 R4 ; [+2]
       35 LOADB                            R3 0 +1
       36 LOADB                            R3 1
       37 FASTCALL2K                       ASSERT R3 K9 ; [+4]
       39 LOADK                            R4 K9 ["loggingLevel expected to be valid"]
       40 GETIMPORT                        R2 K7 [assert]
       42 CALL                             R2 2 0
       43 GETTABLEKS                       R2 R0 K10 ["onRequest"]
       45 JUMPIF                           R2 ; [+3]
       46 NEWCLOSURE                       R2 P0
       47 CAPTURE                          VAL R1
       48 CAPTURE                          UPVAL U0
       49 FASTCALL1                        TYPE R2 ; [+3]
       50 MOVE                             R6 R2
       51 GETIMPORT                        R5 K3 [type]
       53 CALL                             R5 1 1
       54 JUMPIFEQKS                       R5 K11 ["function"] ; [+2]
       56 LOADB                            R4 0 +1
       57 LOADB                            R4 1
       58 FASTCALL2K                       ASSERT R4 K12 ; [+4]
       60 LOADK                            R5 K12 ["onRequest expected to be a function."]
       61 GETIMPORT                        R3 K7 [assert]
       63 CALL                             R3 2 0
       64 DUPTABLE                         R3 K16 [{["ClassName"] = "Networking.lua's MockHttpService", ["onRequestHandler"]}]
       65 SETTABLEKS                       R2 R3 K15 ["onRequestHandler"]
       67 DUPCLOSURE                       R4 K17 [PROTO_2]
       68 SETTABLEKS                       R4 R3 K18 ["RequestAsync"]
       70 GETUPVAL                         R4 1
       71 GETTABLEKS                       R4 R4 K19 ["new"]
       73 DUPTABLE                         R5 K23 [{["httpImpl"], [2], ["allowYielding"] = False}]
       74 SETTABLEKS                       R3 R5 K20 ["httpImpl"]
       76 SETTABLEKS                       R1 R5 K0 ["loggingLevel"]
       78 CALL                             R4 1 1
       79 RETURN                           R4 1

PROTO_4:
        0 GETTABLEKS                       R3 R0 K0 ["_loggingLevel"]
        2 FASTCALL2                        BIT32_BTEST R3 R1 ; [+4]
        4 MOVE                             R4 R1
        5 GETIMPORT                        R2 K3 [bit32.btest]
        7 CALL                             R2 2 1
        8 RETURN                           R2 1

PROTO_5:
        0 GETIMPORT                        R2 K1 [tick]
        2 CALL                             R2 0 1
        3 GETUPVAL                         R5 0
        4 SUB                              R4 R2 R5
        5 MULK                             R3 R4 K2 [1000]
        6 JUMPIFNOT                        R0 ; [+202]
        7 GETUPVAL                         R4 1
        8 GETUPVAL                         R6 2
        9 GETTABLEKS                       R6 R6 K3 ["RESPONSES"]
       11 NAMECALL                         R4 R4 K4 ["_isLoggingEnabled"]
       13 CALL                             R4 2 1
       14 JUMPIFNOT                        R4 ; [+120]
       15 NEWTABLE                         R4 0 1
       17 LOADK                            R5 K5 ["Incoming Network Response :"]
       18 SETLIST                          R4 R5 1 [1]
       20 GETUPVAL                         R5 1
       21 GETUPVAL                         R7 2
       22 GETTABLEKS                       R7 R7 K6 ["DEBUG"]
       24 NAMECALL                         R5 R5 K4 ["_isLoggingEnabled"]
       26 CALL                             R5 2 1
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
      137 GETTABLEKS                       R5 R1 K31 ["StatusCode"]
      139 LOADNIL                          R6
      140 GETUPVAL                         R7 1
      141 GETTABLEKS                       R7 R7 K32 ["_isInternal"]
      143 JUMPIFNOT                        R7 ; [+5]
      144 JUMPIFEQKN                       R5 K33 [200] ; [+2]
      146 LOADB                            R6 0 +1
      147 LOADB                            R6 1
      148 JUMP                             ; [+2]
      149 GETTABLEKS                       R6 R1 K34 ["Success"]
      151 GETUPVAL                         R7 3
      152 GETTABLEKS                       R7 R7 K35 ["new"]
      154 MOVE                             R8 R4
      155 MOVE                             R9 R3
      156 MOVE                             R10 R5
      157 GETUPVAL                         R11 4
      158 CALL                             R7 4 1
      159 JUMPIFNOT                        R6 ; [+22]
      160 GETUPVAL                         R8 1
      161 GETUPVAL                         R10 2
      162 GETTABLEKS                       R10 R10 K6 ["DEBUG"]
      164 NAMECALL                         R8 R8 K4 ["_isLoggingEnabled"]
      166 CALL                             R8 2 1
      167 JUMPIFNOT                        R8 ; [+10]
      168 GETIMPORT                        R8 K27 [print]
      170 GETIMPORT                        R9 K14 [string.format]
      172 LOADK                            R10 K36 ["Http request to %s resolved successfully."]
      173 GETUPVAL                         R12 4
      174 GETTABLEKS                       R11 R12 K37 ["Url"]
      176 CALL                             R9 2 -1
      177 CALL                             R8 -1 0
      178 GETUPVAL                         R8 5
      179 MOVE                             R9 R7
      180 CALL                             R8 1 0
      181 RETURN                           R0 0
      182 LOADK                            R9 K38 ["Http request to %* rejected because request did not succeed."]
      183 GETUPVAL                         R12 4
      184 GETTABLEKS                       R11 R12 K37 ["Url"]
      186 NAMECALL                         R9 R9 K13 ["format"]
      188 CALL                             R9 2 1
      189 MOVE                             R8 R9
      190 SETTABLEKS                       R8 R7 K39 ["requestErrorMessage"]
      192 GETUPVAL                         R8 1
      193 GETUPVAL                         R10 2
      194 GETTABLEKS                       R10 R10 K6 ["DEBUG"]
      196 NAMECALL                         R8 R8 K4 ["_isLoggingEnabled"]
      198 CALL                             R8 2 1
      199 JUMPIFNOT                        R8 ; [+5]
      200 GETIMPORT                        R8 K27 [print]
      202 GETTABLEKS                       R9 R7 K39 ["requestErrorMessage"]
      204 CALL                             R8 1 0
      205 GETUPVAL                         R8 6
      206 MOVE                             R9 R7
      207 CALL                             R8 1 0
      208 RETURN                           R0 0
      209 GETUPVAL                         R4 3
      210 GETTABLEKS                       R4 R4 K35 ["new"]
      212 MOVE                             R5 R1
      213 MOVE                             R6 R3
      214 GETUPVAL                         R7 7
      215 GETTABLEKS                       R7 R7 K40 ["UNKNOWN_ERROR"]
      217 GETUPVAL                         R8 4
      218 CALL                             R4 4 1
      219 LOADK                            R6 K41 ["Http request to %* rejected because pcall returned false with message: %*"]
      220 GETUPVAL                         R9 4
      221 GETTABLEKS                       R8 R9 K37 ["Url"]
      223 MOVE                             R9 R1
      224 NAMECALL                         R6 R6 K13 ["format"]
      226 CALL                             R6 3 1
      227 MOVE                             R5 R6
      228 SETTABLEKS                       R5 R4 K39 ["requestErrorMessage"]
      230 GETUPVAL                         R5 1
      231 GETUPVAL                         R7 2
      232 GETTABLEKS                       R7 R7 K6 ["DEBUG"]
      234 NAMECALL                         R5 R5 K4 ["_isLoggingEnabled"]
      236 CALL                             R5 2 1
      237 JUMPIFNOT                        R5 ; [+5]
      238 GETIMPORT                        R5 K27 [print]
      240 GETTABLEKS                       R6 R4 K39 ["requestErrorMessage"]
      242 CALL                             R5 1 0
      243 GETUPVAL                         R5 6
      244 MOVE                             R6 R4
      245 CALL                             R5 1 0
      246 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["_allowYielding"]
        3 JUMPIFNOT                        R2 ; [+8]
        4 GETIMPORT                        R2 K2 [spawn]
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          VAL R0
        9 CAPTURE                          VAL R1
       10 CALL                             R2 1 0
       11 RETURN                           R0 0
       12 GETUPVAL                         R2 1
       13 MOVE                             R3 R0
       14 MOVE                             R4 R1
       15 CALL                             R2 2 0
       16 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_isInternal"]
        3 JUMPIFNOT                        R0 ; [+14]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["_httpImpl"]
        7 GETUPVAL                         R2 1
        8 NAMECALL                         R0 R0 K2 ["RequestInternal"]
       10 CALL                             R0 2 1
       11 NEWCLOSURE                       R2 P0
       12 CAPTURE                          UPVAL U0
       13 CAPTURE                          UPVAL U2
       14 NAMECALL                         R0 R0 K3 ["Start"]
       16 CALL                             R0 2 0
       17 RETURN                           R0 0
       18 GETIMPORT                        R0 K5 [pcall]
       20 GETUPVAL                         R1 0
       21 GETTABLEKS                       R1 R1 K1 ["_httpImpl"]
       23 GETTABLEKS                       R1 R1 K6 ["RequestAsync"]
       25 GETUPVAL                         R2 0
       26 GETTABLEKS                       R2 R2 K1 ["_httpImpl"]
       28 GETUPVAL                         R3 1
       29 CALL                             R0 3 2
       30 GETUPVAL                         R2 2
       31 MOVE                             R3 R0
       32 MOVE                             R4 R1
       33 CALL                             R2 2 0
       34 RETURN                           R0 0

PROTO_9:
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
       13 GETUPVAL                         R4 1
       14 GETTABLEKS                       R4 R4 K0 ["_allowYielding"]
       16 JUMPIFNOT                        R4 ; [+5]
       17 GETIMPORT                        R4 K2 [spawn]
       19 MOVE                             R5 R3
       20 CALL                             R4 1 0
       21 RETURN                           R0 0
       22 MOVE                             R4 R3
       23 CALL                             R4 0 0
       24 RETURN                           R0 0

PROTO_10:
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
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R4 R4 K6 ["REQUESTS"]
       19 NAMECALL                         R2 R0 K7 ["_isLoggingEnabled"]
       21 CALL                             R2 2 1
       22 JUMPIFNOT                        R2 ; [+35]
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
       38 FASTCALL1                        TOSTRING R7 ; [+3]
       39 MOVE                             R14 R7
       40 GETIMPORT                        R13 K16 [tostring]
       42 CALL                             R13 1 1
       43 CALL                             R10 3 -1
       44 FASTCALL                         TABLE_INSERT ; [+2]
       45 GETIMPORT                        R8 K19 [table.insert]
       47 CALL                             R8 -1 0
       48 FORGLOOP                         R3 2 ; [-16]
       50 GETIMPORT                        R3 K21 [print]
       52 GETIMPORT                        R4 K23 [table.concat]
       54 MOVE                             R5 R2
       55 LOADK                            R6 K24 ["\n"]
       56 CALL                             R4 2 -1
       57 CALL                             R3 -1 0
       58 GETIMPORT                        R2 K26 [tick]
       60 CALL                             R2 0 1
       61 GETUPVAL                         R3 1
       62 GETTABLEKS                       R3 R3 K27 ["new"]
       64 NEWCLOSURE                       R4 P0
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R0
       67 CAPTURE                          UPVAL U0
       68 CAPTURE                          UPVAL U2
       69 CAPTURE                          VAL R1
       70 CAPTURE                          UPVAL U3
       71 CALL                             R3 1 1
       72 RETURN                           R3 1

PROTO_11:
        0 DUPTABLE                         R4 K4 [{[1], ["Method"] = "DELETE", ["Headers"]}]
        1 SETTABLEKS                       R1 R4 K0 ["Url"]
        3 SETTABLEKS                       R2 R4 K3 ["Headers"]
        5 JUMPIFNOT                        R3 ; [+2]
        6 SETTABLEKS                       R3 R4 K5 ["Body"]
        8 MOVE                             R7 R4
        9 NAMECALL                         R5 R0 K6 ["request"]
       11 CALL                             R5 2 -1
       12 RETURN                           R5 -1

PROTO_12:
        0 DUPTABLE                         R3 K4 [{[1], ["Method"] = "GET", ["Headers"]}]
        1 SETTABLEKS                       R1 R3 K0 ["Url"]
        3 SETTABLEKS                       R2 R3 K3 ["Headers"]
        5 MOVE                             R6 R3
        6 NAMECALL                         R4 R0 K5 ["request"]
        8 CALL                             R4 2 -1
        9 RETURN                           R4 -1

PROTO_13:
        0 DUPTABLE                         R4 K5 [{[1], ["Body"], ["Method"] = "PATCH", ["Headers"]}]
        1 SETTABLEKS                       R1 R4 K0 ["Url"]
        3 SETTABLEKS                       R2 R4 K1 ["Body"]
        5 SETTABLEKS                       R3 R4 K4 ["Headers"]
        7 MOVE                             R7 R4
        8 NAMECALL                         R5 R0 K6 ["request"]
       10 CALL                             R5 2 -1
       11 RETURN                           R5 -1

PROTO_14:
        0 DUPTABLE                         R4 K5 [{[1], ["Body"], ["Method"] = "POST", ["Headers"]}]
        1 SETTABLEKS                       R1 R4 K0 ["Url"]
        3 SETTABLEKS                       R2 R4 K1 ["Body"]
        5 SETTABLEKS                       R3 R4 K4 ["Headers"]
        7 MOVE                             R7 R4
        8 NAMECALL                         R5 R0 K6 ["request"]
       10 CALL                             R5 2 -1
       11 RETURN                           R5 -1

PROTO_15:
        0 DUPTABLE                         R3 K4 [{[1], ["Method"] = "PUT", ["Headers"]}]
        1 SETTABLEKS                       R1 R3 K0 ["Url"]
        3 SETTABLEKS                       R2 R3 K3 ["Headers"]
        5 MOVE                             R6 R3
        6 NAMECALL                         R4 R0 K5 ["request"]
        8 CALL                             R4 2 -1
        9 RETURN                           R4 -1

PROTO_16:
        0 GETIMPORT                        R1 K1 [pcall]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K2 ["JSONDecode"]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R4 R0 K3 ["responseBody"]
        8 CALL                             R1 3 2
        9 JUMPIFNOT                        R1 ; [+15]
       10 SETTABLEKS                       R2 R0 K3 ["responseBody"]
       12 GETUPVAL                         R3 1
       13 GETUPVAL                         R5 2
       14 GETTABLEKS                       R5 R5 K4 ["RESPONSES"]
       16 NAMECALL                         R3 R3 K5 ["_isLoggingEnabled"]
       18 CALL                             R3 2 1
       19 JUMPIFNOT                        R3 ; [+4]
       20 GETIMPORT                        R3 K7 [print]
       22 LOADK                            R4 K8 ["ResponseBody parsed to JSON and stored into `result.responseBody`."]
       23 CALL                             R3 1 0
       24 RETURN                           R0 1
       25 LOADK                            R4 K9 ["Could not parse `result.responseBody` to JSON: "]
       26 FASTCALL1                        TOSTRING R2 ; [+3]
       27 MOVE                             R6 R2
       28 GETIMPORT                        R5 K11 [tostring]
       30 CALL                             R5 1 1
       31 CONCAT                           R3 R4 R5
       32 SETTABLEKS                       R3 R0 K12 ["parseJsonErrorMessage"]
       34 GETUPVAL                         R3 1
       35 GETUPVAL                         R5 2
       36 GETTABLEKS                       R5 R5 K4 ["RESPONSES"]
       38 NAMECALL                         R3 R3 K5 ["_isLoggingEnabled"]
       40 CALL                             R3 2 1
       41 JUMPIFNOT                        R3 ; [+5]
       42 GETIMPORT                        R3 K14 [warn]
       44 GETTABLEKS                       R4 R0 K12 ["parseJsonErrorMessage"]
       46 CALL                             R3 1 0
       47 GETUPVAL                         R3 3
       48 GETTABLEKS                       R3 R3 K15 ["reject"]
       50 MOVE                             R4 R0
       51 CALL                             R3 1 -1
       52 RETURN                           R3 -1

PROTO_17:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [type]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["table"] ; [+74]
        7 GETTABLEKS                       R2 R0 K3 ["responseBody"]
        9 FASTCALL1                        TYPE R2 ; [+2]
       10 GETIMPORT                        R1 K1 [type]
       12 CALL                             R1 1 1
       13 JUMPIFNOTEQKS                    R1 K4 ["string"] ; [+49]
       15 GETIMPORT                        R1 K6 [pcall]
       17 GETUPVAL                         R2 0
       18 GETTABLEKS                       R2 R2 K7 ["JSONDecode"]
       20 GETUPVAL                         R3 0
       21 GETTABLEKS                       R4 R0 K3 ["responseBody"]
       23 CALL                             R1 3 2
       24 JUMPIFNOT                        R1 ; [+15]
       25 SETTABLEKS                       R2 R0 K3 ["responseBody"]
       27 GETUPVAL                         R3 1
       28 GETUPVAL                         R5 2
       29 GETTABLEKS                       R5 R5 K8 ["RESPONSES"]
       31 NAMECALL                         R3 R3 K9 ["_isLoggingEnabled"]
       33 CALL                             R3 2 1
       34 JUMPIFNOT                        R3 ; [+57]
       35 GETIMPORT                        R3 K11 [print]
       37 LOADK                            R4 K12 ["ResponseBody parsed to JSON and stored into `err.responseBody`."]
       38 CALL                             R3 1 0
       39 JUMP                             ; [+52]
       40 LOADK                            R4 K13 ["Could not parse `err.responseBody` to JSON: "]
       41 FASTCALL1                        TOSTRING R2 ; [+3]
       42 MOVE                             R6 R2
       43 GETIMPORT                        R5 K15 [tostring]
       45 CALL                             R5 1 1
       46 CONCAT                           R3 R4 R5
       47 SETTABLEKS                       R3 R0 K16 ["parseJsonErrorMessage"]
       49 GETUPVAL                         R3 1
       50 GETUPVAL                         R5 2
       51 GETTABLEKS                       R5 R5 K17 ["DEBUG"]
       53 NAMECALL                         R3 R3 K9 ["_isLoggingEnabled"]
       55 CALL                             R3 2 1
       56 JUMPIFNOT                        R3 ; [+35]
       57 GETIMPORT                        R3 K19 [warn]
       59 GETTABLEKS                       R4 R0 K16 ["parseJsonErrorMessage"]
       61 CALL                             R3 1 0
       62 JUMP                             ; [+29]
       63 LOADK                            R1 K20 ["ResponseBody was not parsed to JSON because failed request returned unexpected type."]
       64 SETTABLEKS                       R1 R0 K16 ["parseJsonErrorMessage"]
       66 GETUPVAL                         R1 1
       67 GETUPVAL                         R3 2
       68 GETTABLEKS                       R3 R3 K8 ["RESPONSES"]
       70 NAMECALL                         R1 R1 K9 ["_isLoggingEnabled"]
       72 CALL                             R1 2 1
       73 JUMPIFNOT                        R1 ; [+18]
       74 GETIMPORT                        R1 K19 [warn]
       76 GETTABLEKS                       R2 R0 K16 ["parseJsonErrorMessage"]
       78 CALL                             R1 1 0
       79 JUMP                             ; [+12]
       80 GETUPVAL                         R1 1
       81 GETUPVAL                         R3 2
       82 GETTABLEKS                       R3 R3 K8 ["RESPONSES"]
       84 NAMECALL                         R1 R1 K9 ["_isLoggingEnabled"]
       86 CALL                             R1 2 1
       87 JUMPIFNOT                        R1 ; [+4]
       88 GETIMPORT                        R1 K19 [warn]
       90 LOADK                            R2 K20 ["ResponseBody was not parsed to JSON because failed request returned unexpected type."]
       91 CALL                             R1 1 0
       92 GETUPVAL                         R1 3
       93 GETTABLEKS                       R1 R1 K21 ["reject"]
       95 MOVE                             R2 R0
       96 CALL                             R1 1 -1
       97 RETURN                           R1 -1

PROTO_18:
        0 NEWCLOSURE                       R4 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 NEWCLOSURE                       R5 P1
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          UPVAL U2
       10 NAMECALL                         R2 R1 K0 ["andThen"]
       12 CALL                             R2 3 -1
       13 RETURN                           R2 -1

PROTO_19:
        0 RETURN                           R0 1

PROTO_20:
        0 GETUPVAL                         R2 0
        1 ADDK                             R1 R2 K0 [1]
        2 SETUPVAL                         R1 0
        3 GETUPVAL                         R1 0
        4 GETUPVAL                         R2 1
        5 JUMPIFNOTLT                      R2 R1 ; [+26]
        7 LOADK                            R2 K1 ["Reached maximum number of retries (%*). Rejecting request."]
        8 GETUPVAL                         R4 1
        9 NAMECALL                         R2 R2 K2 ["format"]
       11 CALL                             R2 2 1
       12 MOVE                             R1 R2
       13 SETTABLEKS                       R1 R0 K3 ["handleRetryErrorMessage"]
       15 GETUPVAL                         R1 2
       16 GETUPVAL                         R3 3
       17 GETTABLEKS                       R3 R3 K4 ["RESPONSES"]
       19 NAMECALL                         R1 R1 K5 ["_isLoggingEnabled"]
       21 CALL                             R1 2 1
       22 JUMPIFNOT                        R1 ; [+5]
       23 GETIMPORT                        R1 K7 [print]
       25 GETTABLEKS                       R2 R0 K3 ["handleRetryErrorMessage"]
       27 CALL                             R1 1 0
       28 GETUPVAL                         R1 4
       29 MOVE                             R2 R0
       30 CALL                             R1 1 0
       31 RETURN                           R0 0
       32 GETTABLEKS                       R1 R0 K8 ["responseCode"]
       34 LOADN                            R2 400
       35 JUMPIFNOTLE                      R2 R1 ; [+26]
       37 GETTABLEKS                       R1 R0 K8 ["responseCode"]
       39 LOADN                            R2 500
       40 JUMPIFNOTLT                      R1 R2 ; [+21]
       42 LOADK                            R1 K9 ["4xx error response. Rejecting request."]
       43 SETTABLEKS                       R1 R0 K3 ["handleRetryErrorMessage"]
       45 GETUPVAL                         R1 2
       46 GETUPVAL                         R3 3
       47 GETTABLEKS                       R3 R3 K4 ["RESPONSES"]
       49 NAMECALL                         R1 R1 K5 ["_isLoggingEnabled"]
       51 CALL                             R1 2 1
       52 JUMPIFNOT                        R1 ; [+5]
       53 GETIMPORT                        R1 K7 [print]
       55 GETTABLEKS                       R2 R0 K3 ["handleRetryErrorMessage"]
       57 CALL                             R1 1 0
       58 GETUPVAL                         R1 4
       59 MOVE                             R2 R0
       60 CALL                             R1 1 0
       61 RETURN                           R0 0
       62 GETUPVAL                         R2 5
       63 GETTABLEKS                       R2 R2 K11 ["requestOptions"]
       65 GETTABLEKS                       R1 R2 K10 ["Method"]
       67 JUMPIFEQKS                       R1 K12 ["POST"] ; [+3]
       69 JUMPIFNOTEQKS                    R1 K13 ["PATCH"] ; [+26]
       71 LOADK                            R3 K14 ["Error response to %* request. Rejecting request."]
       72 MOVE                             R5 R1
       73 NAMECALL                         R3 R3 K2 ["format"]
       75 CALL                             R3 2 1
       76 MOVE                             R2 R3
       77 SETTABLEKS                       R2 R0 K3 ["handleRetryErrorMessage"]
       79 GETUPVAL                         R2 2
       80 GETUPVAL                         R4 3
       81 GETTABLEKS                       R4 R4 K4 ["RESPONSES"]
       83 NAMECALL                         R2 R2 K5 ["_isLoggingEnabled"]
       85 CALL                             R2 2 1
       86 JUMPIFNOT                        R2 ; [+5]
       87 GETIMPORT                        R2 K7 [print]
       89 GETTABLEKS                       R3 R0 K3 ["handleRetryErrorMessage"]
       91 CALL                             R2 1 0
       92 GETUPVAL                         R2 4
       93 MOVE                             R3 R0
       94 CALL                             R2 1 0
       95 RETURN                           R0 0
       96 GETUPVAL                         R2 2
       97 GETUPVAL                         R4 3
       98 GETTABLEKS                       R4 R4 K15 ["DEBUG"]
      100 NAMECALL                         R2 R2 K5 ["_isLoggingEnabled"]
      102 CALL                             R2 2 1
      103 JUMPIFNOT                        R2 ; [+8]
      104 GETIMPORT                        R2 K7 [print]
      106 GETIMPORT                        R3 K17 [string.format]
      108 LOADK                            R4 K18 ["Http request failed. Attempting retry #%d"]
      109 GETUPVAL                         R5 0
      110 CALL                             R3 2 -1
      111 CALL                             R2 -1 0
      112 GETUPVAL                         R2 6
      113 JUMPIF                           R2 ; [+32]
      114 GETUPVAL                         R2 2
      115 GETUPVAL                         R4 3
      116 GETTABLEKS                       R4 R4 K15 ["DEBUG"]
      118 NAMECALL                         R2 R2 K5 ["_isLoggingEnabled"]
      120 CALL                             R2 2 1
      121 JUMPIFNOT                        R2 ; [+14]
      122 GETIMPORT                        R2 K7 [print]
      124 GETIMPORT                        R3 K17 [string.format]
      126 LOADK                            R4 K19 ["- waiting for %d seconds before next attempt"]
      127 LOADN                            R6 2
      128 GETUPVAL                         R7 0
      129 FASTCALL2                        MATH_POW R6 R7 ; [+3]
      131 GETIMPORT                        R5 K22 [math.pow]
      133 CALL                             R5 2 1
      134 CALL                             R3 2 -1
      135 CALL                             R2 -1 0
      136 GETIMPORT                        R2 K24 [wait]
      138 LOADN                            R4 2
      139 GETUPVAL                         R5 0
      140 FASTCALL2                        MATH_POW R4 R5 ; [+3]
      142 GETIMPORT                        R3 K22 [math.pow]
      144 CALL                             R3 2 1
      145 CALL                             R2 1 0
      146 GETUPVAL                         R2 5
      147 GETTABLEKS                       R2 R2 K11 ["requestOptions"]
      149 GETUPVAL                         R3 2
      150 MOVE                             R5 R2
      151 NAMECALL                         R3 R3 K25 ["request"]
      153 CALL                             R3 2 1
      154 GETUPVAL                         R5 7
      155 GETUPVAL                         R6 8
      156 NAMECALL                         R3 R3 K26 ["andThen"]
      158 CALL                             R3 3 0
      159 RETURN                           R0 0

PROTO_21:
        0 LOADN                            R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          REF R2
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          VAL R1
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          VAL R0
       10 CAPTURE                          VAL R3
       11 MOVE                             R4 R3
       12 GETUPVAL                         R5 3
       13 CALL                             R4 1 0
       14 CLOSEUPVALS                      R2
       15 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U4
        9 CALL                             R1 1 -1
       10 RETURN                           R1 -1

PROTO_23:
        0 JUMPIF                           R2 ; [+1]
        1 LOADN                            R2 3
        2 JUMPIFNOTEQKNIL                  R3 ; [+2]
        4 LOADB                            R3 0
        5 DUPCLOSURE                       R6 K0 [PROTO_19]
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

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["Networking"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Parent"]
       17 GETTABLEKS                       R3 R3 K11 ["Promise"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K12 ["Http"]
       24 GETTABLEKS                       R4 R4 K13 ["HttpResponse"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R1 K12 ["Http"]
       31 GETTABLEKS                       R5 R5 K14 ["StatusCodes"]
       33 CALL                             R4 1 1
       34 DUPTABLE                         R5 K25 [{["NONE"] = 0, ["REQUESTS"] = 1, ["RESPONSES"] = 2, ["DEBUG"] = 4, ["VERBOSE"] = 7}]
       35 NEWTABLE                         R6 16 0
       37 SETTABLEKS                       R6 R6 K26 ["__index"]
       39 DUPCLOSURE                       R7 K27 [PROTO_0]
       40 CAPTURE                          VAL R5
       41 CAPTURE                          VAL R6
       42 SETTABLEKS                       R7 R6 K28 ["new"]
       44 DUPCLOSURE                       R7 K29 [PROTO_3]
       45 CAPTURE                          VAL R5
       46 CAPTURE                          VAL R6
       47 SETTABLEKS                       R7 R6 K30 ["mock"]
       49 DUPCLOSURE                       R7 K31 [PROTO_4]
       50 SETTABLEKS                       R7 R6 K32 ["_isLoggingEnabled"]
       52 DUPCLOSURE                       R7 K33 [PROTO_10]
       53 CAPTURE                          VAL R5
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R3
       56 CAPTURE                          VAL R4
       57 SETTABLEKS                       R7 R6 K34 ["request"]
       59 DUPCLOSURE                       R7 K35 [PROTO_11]
       60 SETTABLEKS                       R7 R6 K36 ["delete"]
       62 DUPCLOSURE                       R7 K37 [PROTO_12]
       63 SETTABLEKS                       R7 R6 K38 ["get"]
       65 DUPCLOSURE                       R7 K39 [PROTO_13]
       66 SETTABLEKS                       R7 R6 K40 ["patch"]
       68 DUPCLOSURE                       R7 K41 [PROTO_14]
       69 SETTABLEKS                       R7 R6 K42 ["post"]
       71 DUPCLOSURE                       R7 K43 [PROTO_15]
       72 SETTABLEKS                       R7 R6 K44 ["put"]
       74 DUPCLOSURE                       R7 K45 [PROTO_18]
       75 CAPTURE                          VAL R0
       76 CAPTURE                          VAL R5
       77 CAPTURE                          VAL R2
       78 SETTABLEKS                       R7 R6 K46 ["parseJson"]
       80 DUPCLOSURE                       R7 K47 [PROTO_23]
       81 CAPTURE                          VAL R2
       82 CAPTURE                          VAL R5
       83 SETTABLEKS                       R7 R6 K48 ["handleRetry"]
       85 RETURN                           R6 1
