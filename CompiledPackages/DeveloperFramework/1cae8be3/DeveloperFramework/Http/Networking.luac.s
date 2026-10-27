PROTO_0:
        0 MOVE                             R1 R0
        1 JUMPIF                           R1 ; [+2]
        2 NEWTABLE                         R1 0 0
        4 GETTABLEKS                       R3 R1 K1 ["loggingLevel"]
        6 ORK                              R2 R3 K0 [0]
        7 FASTCALL1                        TYPE R2 ; [+3]
        8 MOVE                             R6 R2
        9 GETIMPORT                        R5 K3 [type]
       11 CALL                             R5 1 1
       12 JUMPIFEQKS                       R5 K4 ["number"] ; [+2]
       14 LOADB                            R4 0 +1
       15 LOADB                            R4 1
       16 FASTCALL2K                       ASSERT R4 K5 ; [+4]
       18 LOADK                            R5 K5 ["loggingLevel expected to be a LOGGING_CHANNELS enum"]
       19 GETIMPORT                        R3 K7 [assert]
       21 CALL                             R3 2 0
       22 LOADB                            R4 0
       23 LOADN                            R5 0
       24 JUMPIFNOTLE                      R5 R2 ; [+6]
       26 LOADN                            R5 7
       27 JUMPIFLE                         R2 R5 ; [+2]
       29 LOADB                            R4 0 +1
       30 LOADB                            R4 1
       31 FASTCALL2K                       ASSERT R4 K8 ; [+4]
       33 LOADK                            R5 K8 ["loggingLevel expected to be valid"]
       34 GETIMPORT                        R3 K7 [assert]
       36 CALL                             R3 2 0
       37 GETTABLEKS                       R3 R1 K9 ["isInternal"]
       39 JUMPIFNOTEQKNIL                  R3 ; [+2]
       41 LOADB                            R3 0
       42 FASTCALL1                        TYPE R3 ; [+3]
       43 MOVE                             R7 R3
       44 GETIMPORT                        R6 K3 [type]
       46 CALL                             R6 1 1
       47 JUMPIFEQKS                       R6 K10 ["boolean"] ; [+2]
       49 LOADB                            R5 0 +1
       50 LOADB                            R5 1
       51 FASTCALL2K                       ASSERT R5 K11 ; [+4]
       53 LOADK                            R6 K11 ["isInternal is expected to be boolean"]
       54 GETIMPORT                        R4 K7 [assert]
       56 CALL                             R4 2 0
       57 GETTABLEKS                       R4 R1 K12 ["allowYielding"]
       59 JUMPIFNOTEQKNIL                  R4 ; [+2]
       61 LOADB                            R4 1
       62 FASTCALL1                        TYPE R4 ; [+3]
       63 MOVE                             R8 R4
       64 GETIMPORT                        R7 K3 [type]
       66 CALL                             R7 1 1
       67 JUMPIFEQKS                       R7 K10 ["boolean"] ; [+2]
       69 LOADB                            R6 0 +1
       70 LOADB                            R6 1
       71 FASTCALL2K                       ASSERT R6 K13 ; [+4]
       73 LOADK                            R7 K13 ["allowYielding is expected to be boolean"]
       74 GETIMPORT                        R5 K7 [assert]
       76 CALL                             R5 2 0
       77 GETTABLEKS                       R5 R1 K14 ["httpImpl"]
       79 JUMPIF                           R5 ; [+6]
       80 GETIMPORT                        R5 K16 [game]
       82 LOADK                            R7 K17 ["HttpService"]
       83 NAMECALL                         R5 R5 K18 ["GetService"]
       85 CALL                             R5 2 1
       86 JUMPIFNOT                        R3 ; [+2]
       87 LOADK                            R6 K19 ["RequestInternal"]
       88 JUMP                             ; [+1]
       89 LOADK                            R6 K20 ["RequestAsync"]
       90 GETTABLE                         R8 R5 R6
       91 GETIMPORT                        R9 K23 [string.format]
       93 LOADK                            R10 K24 ["Could not find %s defined on %s."]
       94 FASTCALL1                        TOSTRING R6 ; [+3]
       95 MOVE                             R12 R6
       96 GETIMPORT                        R11 K26 [tostring]
       98 CALL                             R11 1 1
       99 GETTABLEKS                       R13 R5 K27 ["ClassName"]
      101 FASTCALL1                        TOSTRING R13 ; [+2]
      102 GETIMPORT                        R12 K26 [tostring]
      104 CALL                             R12 1 1
      105 CALL                             R9 3 -1
      106 FASTCALL                         ASSERT ; [+2]
      107 GETIMPORT                        R7 K7 [assert]
      109 CALL                             R7 -1 0
      110 DUPTABLE                         R7 K32 [{"_httpImpl", "_isInternal", "_loggingLevel", "_allowYielding"}]
      111 SETTABLEKS                       R5 R7 K28 ["_httpImpl"]
      113 SETTABLEKS                       R3 R7 K29 ["_isInternal"]
      115 SETTABLEKS                       R2 R7 K30 ["_loggingLevel"]
      117 SETTABLEKS                       R4 R7 K31 ["_allowYielding"]
      119 GETUPVAL                         R10 0
      120 FASTCALL2                        SETMETATABLE R7 R10 ; [+4]
      122 MOVE                             R9 R7
      123 GETIMPORT                        R8 K34 [setmetatable]
      125 CALL                             R8 2 0
      126 RETURN                           R7 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 LOADN                            R2 4
        2 JUMPIFNOTLE                      R2 R1 ; [+10]
        4 GETIMPORT                        R1 K1 [warn]
        6 GETIMPORT                        R2 K4 [string.format]
        8 LOADK                            R3 K5 ["Unhandled request to %s. Returning default response."]
        9 GETTABLEKS                       R4 R0 K6 ["requestUrl"]
       11 CALL                             R2 2 -1
       12 CALL                             R1 -1 0
       13 DUPTABLE                         R1 K15 [{["Body"] = "{}", ["Success"] = True, ["StatusMessage"] = "OK", ["StatusCode"] = 200}]
       14 RETURN                           R1 1

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
        3 GETTABLEKS                       R2 R0 K1 ["loggingLevel"]
        5 ORK                              R1 R2 K0 [0]
        6 FASTCALL1                        TYPE R1 ; [+3]
        7 MOVE                             R5 R1
        8 GETIMPORT                        R4 K3 [type]
       10 CALL                             R4 1 1
       11 JUMPIFEQKS                       R4 K4 ["number"] ; [+2]
       13 LOADB                            R3 0 +1
       14 LOADB                            R3 1
       15 FASTCALL2K                       ASSERT R3 K5 ; [+4]
       17 LOADK                            R4 K5 ["loggingLevel expected to be a LOGGING_CHANNELS enum"]
       18 GETIMPORT                        R2 K7 [assert]
       20 CALL                             R2 2 0
       21 LOADB                            R3 0
       22 LOADN                            R4 0
       23 JUMPIFNOTLE                      R4 R1 ; [+6]
       25 LOADN                            R4 7
       26 JUMPIFLE                         R1 R4 ; [+2]
       28 LOADB                            R3 0 +1
       29 LOADB                            R3 1
       30 FASTCALL2K                       ASSERT R3 K8 ; [+4]
       32 LOADK                            R4 K8 ["loggingLevel expected to be valid"]
       33 GETIMPORT                        R2 K7 [assert]
       35 CALL                             R2 2 0
       36 GETTABLEKS                       R2 R0 K9 ["onRequest"]
       38 JUMPIF                           R2 ; [+2]
       39 NEWCLOSURE                       R2 P0
       40 CAPTURE                          VAL R1
       41 FASTCALL1                        TYPE R2 ; [+3]
       42 MOVE                             R6 R2
       43 GETIMPORT                        R5 K3 [type]
       45 CALL                             R5 1 1
       46 JUMPIFEQKS                       R5 K10 ["function"] ; [+2]
       48 LOADB                            R4 0 +1
       49 LOADB                            R4 1
       50 FASTCALL2K                       ASSERT R4 K11 ; [+4]
       52 LOADK                            R5 K11 ["onRequest expected to be a function."]
       53 GETIMPORT                        R3 K7 [assert]
       55 CALL                             R3 2 0
       56 DUPTABLE                         R3 K15 [{["ClassName"] = "Networking.lua's MockHttpService", ["onRequestHandler"]}]
       57 SETTABLEKS                       R2 R3 K14 ["onRequestHandler"]
       59 DUPCLOSURE                       R4 K16 [PROTO_2]
       60 SETTABLEKS                       R4 R3 K17 ["RequestAsync"]
       62 GETUPVAL                         R4 0
       63 GETTABLEKS                       R4 R4 K18 ["new"]
       65 DUPTABLE                         R5 K22 [{["httpImpl"], ["loggingLevel"], ["allowYielding"] = False}]
       66 SETTABLEKS                       R3 R5 K19 ["httpImpl"]
       68 SETTABLEKS                       R1 R5 K1 ["loggingLevel"]
       70 CALL                             R4 1 1
       71 RETURN                           R4 1

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
        6 JUMPIFNOT                        R0 ; [+193]
        7 GETUPVAL                         R4 1
        8 LOADN                            R6 2
        9 NAMECALL                         R4 R4 K3 ["_isLoggingEnabled"]
       11 CALL                             R4 2 1
       12 JUMPIFNOT                        R4 ; [+118]
       13 NEWTABLE                         R4 0 1
       15 LOADK                            R5 K4 ["Incoming Network Response :"]
       16 SETLIST                          R4 R5 1 [1]
       18 GETUPVAL                         R5 1
       19 LOADN                            R7 4
       20 NAMECALL                         R5 R5 K3 ["_isLoggingEnabled"]
       22 CALL                             R5 2 1
       23 JUMPIFNOT                        R5 ; [+84]
       24 GETIMPORT                        R5 K6 [pairs]
       26 MOVE                             R6 R1
       27 CALL                             R5 1 3
       28 FORGPREP_NEXT                    R5
       29 FASTCALL1                        TYPE R9 ; [+3]
       30 MOVE                             R11 R9
       31 GETIMPORT                        R10 K8 [type]
       33 CALL                             R10 1 1
       34 JUMPIFNOTEQKS                    R10 K9 ["table"] ; [+41]
       36 MOVE                             R11 R4
       37 GETIMPORT                        R12 K12 [string.format]
       39 LOADK                            R13 K13 [" - %s : {"]
       40 MOVE                             R14 R8
       41 CALL                             R12 2 -1
       42 FASTCALL                         TABLE_INSERT ; [+2]
       43 GETIMPORT                        R10 K15 [table.insert]
       45 CALL                             R10 -1 0
       46 GETIMPORT                        R10 K6 [pairs]
       48 MOVE                             R11 R9
       49 CALL                             R10 1 3
       50 FORGPREP_NEXT                    R10
       51 MOVE                             R16 R4
       52 GETIMPORT                        R17 K12 [string.format]
       54 LOADK                            R18 K16 ["\t- %s = %s"]
       55 MOVE                             R19 R13
       56 FASTCALL1                        TOSTRING R14 ; [+3]
       57 MOVE                             R21 R14
       58 GETIMPORT                        R20 K18 [tostring]
       60 CALL                             R20 1 1
       61 CALL                             R17 3 -1
       62 FASTCALL                         TABLE_INSERT ; [+2]
       63 GETIMPORT                        R15 K15 [table.insert]
       65 CALL                             R15 -1 0
       66 FORGLOOP                         R10 2 ; [-16]
       68 FASTCALL2K                       TABLE_INSERT R4 K19 ; [+5]
       70 MOVE                             R11 R4
       71 LOADK                            R12 K19 [" }"]
       72 GETIMPORT                        R10 K15 [table.insert]
       74 CALL                             R10 2 0
       75 JUMP                             ; [+15]
       76 MOVE                             R11 R4
       77 GETIMPORT                        R12 K12 [string.format]
       79 LOADK                            R13 K20 [" - %s : %s"]
       80 MOVE                             R14 R8
       81 FASTCALL1                        TOSTRING R9 ; [+3]
       82 MOVE                             R16 R9
       83 GETIMPORT                        R15 K18 [tostring]
       85 CALL                             R15 1 1
       86 CALL                             R12 3 -1
       87 FASTCALL                         TABLE_INSERT ; [+2]
       88 GETIMPORT                        R10 K15 [table.insert]
       90 CALL                             R10 -1 0
       91 FORGLOOP                         R5 2 ; [-63]
       93 MOVE                             R6 R4
       94 GETIMPORT                        R7 K12 [string.format]
       96 LOADK                            R8 K21 [" - Time (ms) : %s"]
       97 FASTCALL1                        TOSTRING R3 ; [+3]
       98 MOVE                             R10 R3
       99 GETIMPORT                        R9 K18 [tostring]
      101 CALL                             R9 1 1
      102 CALL                             R7 2 -1
      103 FASTCALL                         TABLE_INSERT ; [+2]
      104 GETIMPORT                        R5 K15 [table.insert]
      106 CALL                             R5 -1 0
      107 JUMP                             ; [+15]
      108 MOVE                             R6 R4
      109 GETIMPORT                        R7 K12 [string.format]
      111 LOADK                            R8 K22 [" - Body : %s"]
      112 GETTABLEKS                       R10 R1 K23 ["Body"]
      114 FASTCALL1                        TOSTRING R10 ; [+2]
      115 GETIMPORT                        R9 K18 [tostring]
      117 CALL                             R9 1 1
      118 CALL                             R7 2 -1
      119 FASTCALL                         TABLE_INSERT ; [+2]
      120 GETIMPORT                        R5 K15 [table.insert]
      122 CALL                             R5 -1 0
      123 GETIMPORT                        R5 K25 [print]
      125 GETIMPORT                        R6 K27 [table.concat]
      127 MOVE                             R7 R4
      128 LOADK                            R8 K28 ["\n"]
      129 CALL                             R6 2 -1
      130 CALL                             R5 -1 0
      131 GETTABLEKS                       R4 R1 K23 ["Body"]
      133 GETTABLEKS                       R5 R1 K29 ["StatusCode"]
      135 LOADNIL                          R6
      136 GETUPVAL                         R7 1
      137 GETTABLEKS                       R7 R7 K30 ["_isInternal"]
      139 JUMPIFNOT                        R7 ; [+5]
      140 JUMPIFEQKN                       R5 K31 [200] ; [+2]
      142 LOADB                            R6 0 +1
      143 LOADB                            R6 1
      144 JUMP                             ; [+2]
      145 GETTABLEKS                       R6 R1 K32 ["Success"]
      147 GETUPVAL                         R7 2
      148 GETTABLEKS                       R7 R7 K33 ["new"]
      150 MOVE                             R8 R4
      151 MOVE                             R9 R3
      152 MOVE                             R10 R5
      153 GETUPVAL                         R11 3
      154 CALL                             R7 4 1
      155 JUMPIFNOT                        R6 ; [+20]
      156 GETUPVAL                         R8 1
      157 LOADN                            R10 4
      158 NAMECALL                         R8 R8 K3 ["_isLoggingEnabled"]
      160 CALL                             R8 2 1
      161 JUMPIFNOT                        R8 ; [+10]
      162 GETIMPORT                        R8 K25 [print]
      164 GETIMPORT                        R9 K12 [string.format]
      166 LOADK                            R10 K34 ["Http request to %s resolved successfully."]
      167 GETUPVAL                         R12 3
      168 GETTABLEKS                       R11 R12 K35 ["Url"]
      170 CALL                             R9 2 -1
      171 CALL                             R8 -1 0
      172 GETUPVAL                         R8 4
      173 MOVE                             R9 R7
      174 CALL                             R8 1 0
      175 RETURN                           R0 0
      176 LOADK                            R8 K36 ["Http request to %* rejected because request did not succeed."]
      177 GETUPVAL                         R11 3
      178 GETTABLEKS                       R10 R11 K35 ["Url"]
      180 NAMECALL                         R8 R8 K11 ["format"]
      182 CALL                             R8 2 1
      183 SETTABLEKS                       R8 R7 K37 ["requestErrorMessage"]
      185 GETUPVAL                         R8 1
      186 LOADN                            R10 4
      187 NAMECALL                         R8 R8 K3 ["_isLoggingEnabled"]
      189 CALL                             R8 2 1
      190 JUMPIFNOT                        R8 ; [+5]
      191 GETIMPORT                        R8 K25 [print]
      193 GETTABLEKS                       R9 R7 K37 ["requestErrorMessage"]
      195 CALL                             R8 1 0
      196 GETUPVAL                         R8 5
      197 MOVE                             R9 R7
      198 CALL                             R8 1 0
      199 RETURN                           R0 0
      200 GETUPVAL                         R4 2
      201 GETTABLEKS                       R4 R4 K33 ["new"]
      203 MOVE                             R5 R1
      204 MOVE                             R6 R3
      205 GETUPVAL                         R7 6
      206 GETTABLEKS                       R7 R7 K38 ["UNKNOWN_ERROR"]
      208 GETUPVAL                         R8 3
      209 CALL                             R4 4 1
      210 LOADK                            R5 K39 ["Http request to %* rejected because pcall returned false with message: %*"]
      211 GETUPVAL                         R8 3
      212 GETTABLEKS                       R7 R8 K35 ["Url"]
      214 MOVE                             R8 R1
      215 NAMECALL                         R5 R5 K11 ["format"]
      217 CALL                             R5 3 1
      218 SETTABLEKS                       R5 R4 K37 ["requestErrorMessage"]
      220 GETUPVAL                         R5 1
      221 LOADN                            R7 4
      222 NAMECALL                         R5 R5 K3 ["_isLoggingEnabled"]
      224 CALL                             R5 2 1
      225 JUMPIFNOT                        R5 ; [+5]
      226 GETIMPORT                        R5 K25 [print]
      228 GETTABLEKS                       R6 R4 K37 ["requestErrorMessage"]
      230 CALL                             R5 1 0
      231 GETUPVAL                         R5 5
      232 MOVE                             R6 R4
      233 CALL                             R5 1 0
      234 RETURN                           R0 0

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
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 CAPTURE                          UPVAL U4
        8 NEWCLOSURE                       R3 P1
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          VAL R2
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R4 R4 K0 ["_allowYielding"]
       15 JUMPIFNOT                        R4 ; [+5]
       16 GETIMPORT                        R4 K2 [spawn]
       18 MOVE                             R5 R3
       19 CALL                             R4 1 0
       20 RETURN                           R0 0
       21 MOVE                             R4 R3
       22 CALL                             R4 0 0
       23 RETURN                           R0 0

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
       16 LOADN                            R4 1
       17 NAMECALL                         R2 R0 K6 ["_isLoggingEnabled"]
       19 CALL                             R2 2 1
       20 JUMPIFNOT                        R2 ; [+35]
       21 NEWTABLE                         R2 0 1
       23 LOADK                            R3 K7 ["Outgoing Network Request :"]
       24 SETLIST                          R2 R3 1 [1]
       26 GETIMPORT                        R3 K9 [pairs]
       28 MOVE                             R4 R1
       29 CALL                             R3 1 3
       30 FORGPREP_NEXT                    R3
       31 MOVE                             R9 R2
       32 GETIMPORT                        R10 K12 [string.format]
       34 LOADK                            R11 K13 [" - %s : %s"]
       35 MOVE                             R12 R6
       36 FASTCALL1                        TOSTRING R7 ; [+3]
       37 MOVE                             R14 R7
       38 GETIMPORT                        R13 K15 [tostring]
       40 CALL                             R13 1 1
       41 CALL                             R10 3 -1
       42 FASTCALL                         TABLE_INSERT ; [+2]
       43 GETIMPORT                        R8 K18 [table.insert]
       45 CALL                             R8 -1 0
       46 FORGLOOP                         R3 2 ; [-16]
       48 GETIMPORT                        R3 K20 [print]
       50 GETIMPORT                        R4 K22 [table.concat]
       52 MOVE                             R5 R2
       53 LOADK                            R6 K23 ["\n"]
       54 CALL                             R4 2 -1
       55 CALL                             R3 -1 0
       56 GETIMPORT                        R2 K25 [tick]
       58 CALL                             R2 0 1
       59 GETUPVAL                         R3 0
       60 GETTABLEKS                       R3 R3 K26 ["new"]
       62 NEWCLOSURE                       R4 P0
       63 CAPTURE                          VAL R2
       64 CAPTURE                          VAL R0
       65 CAPTURE                          UPVAL U1
       66 CAPTURE                          VAL R1
       67 CAPTURE                          UPVAL U2
       68 CALL                             R3 1 1
       69 RETURN                           R3 1

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
        9 JUMPIFNOT                        R1 ; [+13]
       10 SETTABLEKS                       R2 R0 K3 ["responseBody"]
       12 GETUPVAL                         R3 1
       13 LOADN                            R5 2
       14 NAMECALL                         R3 R3 K4 ["_isLoggingEnabled"]
       16 CALL                             R3 2 1
       17 JUMPIFNOT                        R3 ; [+4]
       18 GETIMPORT                        R3 K6 [print]
       20 LOADK                            R4 K7 ["ResponseBody parsed to JSON and stored into `result.responseBody`."]
       21 CALL                             R3 1 0
       22 RETURN                           R0 1
       23 LOADK                            R4 K8 ["Could not parse `result.responseBody` to JSON: "]
       24 FASTCALL1                        TOSTRING R2 ; [+3]
       25 MOVE                             R6 R2
       26 GETIMPORT                        R5 K10 [tostring]
       28 CALL                             R5 1 1
       29 CONCAT                           R3 R4 R5
       30 SETTABLEKS                       R3 R0 K11 ["parseJsonErrorMessage"]
       32 GETUPVAL                         R3 1
       33 LOADN                            R5 2
       34 NAMECALL                         R3 R3 K4 ["_isLoggingEnabled"]
       36 CALL                             R3 2 1
       37 JUMPIFNOT                        R3 ; [+5]
       38 GETIMPORT                        R3 K13 [warn]
       40 GETTABLEKS                       R4 R0 K11 ["parseJsonErrorMessage"]
       42 CALL                             R3 1 0
       43 GETUPVAL                         R3 2
       44 GETTABLEKS                       R3 R3 K14 ["reject"]
       46 MOVE                             R4 R0
       47 CALL                             R3 1 -1
       48 RETURN                           R3 -1

PROTO_17:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [type]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["table"] ; [+68]
        7 GETTABLEKS                       R2 R0 K3 ["responseBody"]
        9 FASTCALL1                        TYPE R2 ; [+2]
       10 GETIMPORT                        R1 K1 [type]
       12 CALL                             R1 1 1
       13 JUMPIFNOTEQKS                    R1 K4 ["string"] ; [+45]
       15 GETIMPORT                        R1 K6 [pcall]
       17 GETUPVAL                         R2 0
       18 GETTABLEKS                       R2 R2 K7 ["JSONDecode"]
       20 GETUPVAL                         R3 0
       21 GETTABLEKS                       R4 R0 K3 ["responseBody"]
       23 CALL                             R1 3 2
       24 JUMPIFNOT                        R1 ; [+13]
       25 SETTABLEKS                       R2 R0 K3 ["responseBody"]
       27 GETUPVAL                         R3 1
       28 LOADN                            R5 2
       29 NAMECALL                         R3 R3 K8 ["_isLoggingEnabled"]
       31 CALL                             R3 2 1
       32 JUMPIFNOT                        R3 ; [+51]
       33 GETIMPORT                        R3 K10 [print]
       35 LOADK                            R4 K11 ["ResponseBody parsed to JSON and stored into `err.responseBody`."]
       36 CALL                             R3 1 0
       37 JUMP                             ; [+46]
       38 LOADK                            R4 K12 ["Could not parse `err.responseBody` to JSON: "]
       39 FASTCALL1                        TOSTRING R2 ; [+3]
       40 MOVE                             R6 R2
       41 GETIMPORT                        R5 K14 [tostring]
       43 CALL                             R5 1 1
       44 CONCAT                           R3 R4 R5
       45 SETTABLEKS                       R3 R0 K15 ["parseJsonErrorMessage"]
       47 GETUPVAL                         R3 1
       48 LOADN                            R5 4
       49 NAMECALL                         R3 R3 K8 ["_isLoggingEnabled"]
       51 CALL                             R3 2 1
       52 JUMPIFNOT                        R3 ; [+31]
       53 GETIMPORT                        R3 K17 [warn]
       55 GETTABLEKS                       R4 R0 K15 ["parseJsonErrorMessage"]
       57 CALL                             R3 1 0
       58 JUMP                             ; [+25]
       59 LOADK                            R1 K18 ["ResponseBody was not parsed to JSON because failed request returned unexpected type."]
       60 SETTABLEKS                       R1 R0 K15 ["parseJsonErrorMessage"]
       62 GETUPVAL                         R1 1
       63 LOADN                            R3 2
       64 NAMECALL                         R1 R1 K8 ["_isLoggingEnabled"]
       66 CALL                             R1 2 1
       67 JUMPIFNOT                        R1 ; [+16]
       68 GETIMPORT                        R1 K17 [warn]
       70 GETTABLEKS                       R2 R0 K15 ["parseJsonErrorMessage"]
       72 CALL                             R1 1 0
       73 JUMP                             ; [+10]
       74 GETUPVAL                         R1 1
       75 LOADN                            R3 2
       76 NAMECALL                         R1 R1 K8 ["_isLoggingEnabled"]
       78 CALL                             R1 2 1
       79 JUMPIFNOT                        R1 ; [+4]
       80 GETIMPORT                        R1 K17 [warn]
       82 LOADK                            R2 K18 ["ResponseBody was not parsed to JSON because failed request returned unexpected type."]
       83 CALL                             R1 1 0
       84 GETUPVAL                         R1 2
       85 GETTABLEKS                       R1 R1 K19 ["reject"]
       87 MOVE                             R2 R0
       88 CALL                             R1 1 -1
       89 RETURN                           R1 -1

PROTO_18:
        0 NEWCLOSURE                       R4 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 NEWCLOSURE                       R5 P1
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U1
        8 NAMECALL                         R2 R1 K0 ["andThen"]
       10 CALL                             R2 3 -1
       11 RETURN                           R2 -1

PROTO_19:
        0 RETURN                           R0 1

PROTO_20:
        0 GETUPVAL                         R2 0
        1 ADDK                             R1 R2 K0 [1]
        2 SETUPVAL                         R1 0
        3 GETUPVAL                         R1 0
        4 GETUPVAL                         R2 1
        5 JUMPIFNOTLT                      R2 R1 ; [+23]
        7 LOADK                            R1 K1 ["Reached maximum number of retries (%*). Rejecting request."]
        8 GETUPVAL                         R3 1
        9 NAMECALL                         R1 R1 K2 ["format"]
       11 CALL                             R1 2 1
       12 SETTABLEKS                       R1 R0 K3 ["handleRetryErrorMessage"]
       14 GETUPVAL                         R1 2
       15 LOADN                            R3 2
       16 NAMECALL                         R1 R1 K4 ["_isLoggingEnabled"]
       18 CALL                             R1 2 1
       19 JUMPIFNOT                        R1 ; [+5]
       20 GETIMPORT                        R1 K6 [print]
       22 GETTABLEKS                       R2 R0 K3 ["handleRetryErrorMessage"]
       24 CALL                             R1 1 0
       25 GETUPVAL                         R1 3
       26 MOVE                             R2 R0
       27 CALL                             R1 1 0
       28 RETURN                           R0 0
       29 GETTABLEKS                       R1 R0 K7 ["responseCode"]
       31 LOADN                            R2 400
       32 JUMPIFNOTLE                      R2 R1 ; [+24]
       34 GETTABLEKS                       R1 R0 K7 ["responseCode"]
       36 LOADN                            R2 500
       37 JUMPIFNOTLT                      R1 R2 ; [+19]
       39 LOADK                            R1 K8 ["4xx error response. Rejecting request."]
       40 SETTABLEKS                       R1 R0 K3 ["handleRetryErrorMessage"]
       42 GETUPVAL                         R1 2
       43 LOADN                            R3 2
       44 NAMECALL                         R1 R1 K4 ["_isLoggingEnabled"]
       46 CALL                             R1 2 1
       47 JUMPIFNOT                        R1 ; [+5]
       48 GETIMPORT                        R1 K6 [print]
       50 GETTABLEKS                       R2 R0 K3 ["handleRetryErrorMessage"]
       52 CALL                             R1 1 0
       53 GETUPVAL                         R1 3
       54 MOVE                             R2 R0
       55 CALL                             R1 1 0
       56 RETURN                           R0 0
       57 GETUPVAL                         R2 4
       58 GETTABLEKS                       R2 R2 K10 ["requestOptions"]
       60 GETTABLEKS                       R1 R2 K9 ["Method"]
       62 JUMPIFEQKS                       R1 K11 ["POST"] ; [+3]
       64 JUMPIFNOTEQKS                    R1 K12 ["PATCH"] ; [+23]
       66 LOADK                            R2 K13 ["Error response to %* request. Rejecting request."]
       67 MOVE                             R4 R1
       68 NAMECALL                         R2 R2 K2 ["format"]
       70 CALL                             R2 2 1
       71 SETTABLEKS                       R2 R0 K3 ["handleRetryErrorMessage"]
       73 GETUPVAL                         R2 2
       74 LOADN                            R4 2
       75 NAMECALL                         R2 R2 K4 ["_isLoggingEnabled"]
       77 CALL                             R2 2 1
       78 JUMPIFNOT                        R2 ; [+5]
       79 GETIMPORT                        R2 K6 [print]
       81 GETTABLEKS                       R3 R0 K3 ["handleRetryErrorMessage"]
       83 CALL                             R2 1 0
       84 GETUPVAL                         R2 3
       85 MOVE                             R3 R0
       86 CALL                             R2 1 0
       87 RETURN                           R0 0
       88 GETUPVAL                         R2 2
       89 LOADN                            R4 4
       90 NAMECALL                         R2 R2 K4 ["_isLoggingEnabled"]
       92 CALL                             R2 2 1
       93 JUMPIFNOT                        R2 ; [+8]
       94 GETIMPORT                        R2 K6 [print]
       96 GETIMPORT                        R3 K15 [string.format]
       98 LOADK                            R4 K16 ["Http request failed. Attempting retry #%d"]
       99 GETUPVAL                         R5 0
      100 CALL                             R3 2 -1
      101 CALL                             R2 -1 0
      102 GETUPVAL                         R2 5
      103 JUMPIF                           R2 ; [+30]
      104 GETUPVAL                         R2 2
      105 LOADN                            R4 4
      106 NAMECALL                         R2 R2 K4 ["_isLoggingEnabled"]
      108 CALL                             R2 2 1
      109 JUMPIFNOT                        R2 ; [+14]
      110 GETIMPORT                        R2 K6 [print]
      112 GETIMPORT                        R3 K15 [string.format]
      114 LOADK                            R4 K17 ["- waiting for %d seconds before next attempt"]
      115 LOADN                            R6 2
      116 GETUPVAL                         R7 0
      117 FASTCALL2                        MATH_POW R6 R7 ; [+3]
      119 GETIMPORT                        R5 K20 [math.pow]
      121 CALL                             R5 2 1
      122 CALL                             R3 2 -1
      123 CALL                             R2 -1 0
      124 GETIMPORT                        R2 K22 [wait]
      126 LOADN                            R4 2
      127 GETUPVAL                         R5 0
      128 FASTCALL2                        MATH_POW R4 R5 ; [+3]
      130 GETIMPORT                        R3 K20 [math.pow]
      132 CALL                             R3 2 1
      133 CALL                             R2 1 0
      134 GETUPVAL                         R2 4
      135 GETTABLEKS                       R2 R2 K10 ["requestOptions"]
      137 GETUPVAL                         R3 2
      138 MOVE                             R5 R2
      139 NAMECALL                         R3 R3 K23 ["request"]
      141 CALL                             R3 2 1
      142 GETUPVAL                         R5 6
      143 GETUPVAL                         R6 7
      144 NAMECALL                         R3 R3 K24 ["andThen"]
      146 CALL                             R3 3 0
      147 RETURN                           R0 0

PROTO_21:
        0 LOADN                            R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          REF R2
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          VAL R0
        9 CAPTURE                          VAL R3
       10 MOVE                             R4 R3
       11 GETUPVAL                         R5 2
       12 CALL                             R4 1 0
       13 CLOSEUPVALS                      R2
       14 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U3
        8 CALL                             R1 1 -1
        9 RETURN                           R1 -1

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
       10 CAPTURE                          REF R3
       11 NAMECALL                         R4 R1 K1 ["andThen"]
       13 CALL                             R4 3 -1
       14 CLOSEUPVALS                      R2
       15 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETIMPORT                        R2 K8 [require]
       15 GETTABLEKS                       R3 R1 K9 ["Util"]
       17 CALL                             R2 1 1
       18 GETTABLEKS                       R2 R2 K10 ["Promise"]
       20 GETIMPORT                        R3 K8 [require]
       22 GETIMPORT                        R4 K5 [script]
       24 GETTABLEKS                       R4 R4 K6 ["Parent"]
       26 GETTABLEKS                       R4 R4 K11 ["HttpResponse"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K8 [require]
       31 GETIMPORT                        R5 K5 [script]
       33 GETTABLEKS                       R5 R5 K6 ["Parent"]
       35 GETTABLEKS                       R5 R5 K12 ["StatusCodes"]
       37 CALL                             R4 1 1
       38 DUPTABLE                         R5 K23 [{["NONE"] = 0, ["REQUESTS"] = 1, ["RESPONSES"] = 2, ["DEBUG"] = 4, ["VERBOSE"] = 7}]
       39 NEWTABLE                         R6 16 0
       41 SETTABLEKS                       R6 R6 K24 ["__index"]
       43 DUPCLOSURE                       R7 K25 [PROTO_0]
       44 CAPTURE                          VAL R6
       45 SETTABLEKS                       R7 R6 K26 ["new"]
       47 DUPCLOSURE                       R7 K27 [PROTO_3]
       48 CAPTURE                          VAL R6
       49 SETTABLEKS                       R7 R6 K28 ["mock"]
       51 DUPCLOSURE                       R7 K29 [PROTO_4]
       52 SETTABLEKS                       R7 R6 K30 ["_isLoggingEnabled"]
       54 DUPCLOSURE                       R7 K31 [PROTO_10]
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R3
       57 CAPTURE                          VAL R4
       58 SETTABLEKS                       R7 R6 K32 ["request"]
       60 DUPCLOSURE                       R7 K33 [PROTO_11]
       61 SETTABLEKS                       R7 R6 K34 ["delete"]
       63 DUPCLOSURE                       R7 K35 [PROTO_12]
       64 SETTABLEKS                       R7 R6 K36 ["get"]
       66 DUPCLOSURE                       R7 K37 [PROTO_13]
       67 SETTABLEKS                       R7 R6 K38 ["patch"]
       69 DUPCLOSURE                       R7 K39 [PROTO_14]
       70 SETTABLEKS                       R7 R6 K40 ["post"]
       72 DUPCLOSURE                       R7 K41 [PROTO_15]
       73 SETTABLEKS                       R7 R6 K42 ["put"]
       75 DUPCLOSURE                       R7 K43 [PROTO_18]
       76 CAPTURE                          VAL R0
       77 CAPTURE                          VAL R2
       78 SETTABLEKS                       R7 R6 K44 ["parseJson"]
       80 DUPCLOSURE                       R7 K45 [PROTO_23]
       81 CAPTURE                          VAL R2
       82 SETTABLEKS                       R7 R6 K46 ["handleRetry"]
       84 RETURN                           R6 1
