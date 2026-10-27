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
       14 GETTABLEKS                       R4 R0 K7 ["loggingLevel"]
       16 ORK                              R3 R4 K6 [0]
       17 GETTABLEKS                       R4 R0 K8 ["allowYielding"]
       19 JUMPIFNOTEQKNIL                  R2 ; [+2]
       21 LOADB                            R2 0
       22 JUMPIFNOTEQKNIL                  R4 ; [+2]
       24 LOADB                            R4 1
       25 JUMPIFNOT                        R2 ; [+2]
       26 LOADK                            R5 K9 ["RequestInternal"]
       27 JUMP                             ; [+1]
       28 LOADK                            R5 K10 ["RequestAsync"]
       29 GETTABLE                         R7 R1 R5
       30 GETIMPORT                        R8 K13 [string.format]
       32 LOADK                            R9 K14 ["Could not find %s defined on %s."]
       33 MOVE                             R10 R5
       34 GETTABLEKS                       R11 R1 K15 ["ClassName"]
       36 CALL                             R8 3 -1
       37 FASTCALL                         ASSERT ; [+2]
       38 GETIMPORT                        R6 K17 [assert]
       40 CALL                             R6 -1 0
       41 DUPTABLE                         R6 K23 [{"_httpImpl", "_isInternal", "_loggingLevel", "_allowYielding", "_isLoggingEnabled"}]
       42 SETTABLEKS                       R1 R6 K18 ["_httpImpl"]
       44 SETTABLEKS                       R2 R6 K19 ["_isInternal"]
       46 SETTABLEKS                       R3 R6 K20 ["_loggingLevel"]
       48 SETTABLEKS                       R4 R6 K21 ["_allowYielding"]
       50 NEWCLOSURE                       R7 P0
       51 CAPTURE                          VAL R3
       52 SETTABLEKS                       R7 R6 K22 ["_isLoggingEnabled"]
       54 GETUPVAL                         R9 0
       55 FASTCALL2                        SETMETATABLE R6 R9 ; [+4]
       57 MOVE                             R8 R6
       58 GETIMPORT                        R7 K25 [setmetatable]
       60 CALL                             R7 2 0
       61 RETURN                           R6 1

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
        0 DUPTABLE                         R2 K3 [{[1] = "Networking.lua's MockHttpService", ["_defaultResponse"]}]
        1 DUPTABLE                         R3 K12 [{["Body"] = "{}", ["Success"] = True, ["StatusMessage"] = "OK", ["StatusCode"] = 200}]
        2 SETTABLEKS                       R3 R2 K2 ["_defaultResponse"]
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          VAL R0
        6 SETTABLEKS                       R3 R2 K13 ["RequestAsync"]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K14 ["new"]
       11 DUPTABLE                         R4 K19 [{["httpImpl"], ["loggingLevel"], ["allowYielding"] = False}]
       12 SETTABLEKS                       R2 R4 K15 ["httpImpl"]
       14 SETTABLEKS                       R1 R4 K16 ["loggingLevel"]
       16 CALL                             R3 1 -1
       17 RETURN                           R3 -1

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
       14 LOADN                            R3 400
       15 JUMPIFNOTLE                      R3 R2 ; [+8]
       17 GETTABLEKS                       R2 R0 K1 ["responseCode"]
       19 LOADN                            R3 500
       20 JUMPIFLT                         R2 R3 ; [+2]
       22 LOADB                            R1 0 +1
       23 LOADB                            R1 1
       24 JUMPIFNOT                        R1 ; [+18]
       25 GETTABLEKS                       R2 R0 K1 ["responseCode"]
       27 JUMPIFEQKN                       R2 K2 [429] ; [+15]
       29 GETUPVAL                         R2 3
       30 GETTABLEKS                       R2 R2 K3 ["_isLoggingEnabled"]
       32 LOADN                            R3 4
       33 CALL                             R2 1 1
       34 JUMPIFNOT                        R2 ; [+4]
       35 GETIMPORT                        R2 K5 [print]
       37 LOADK                            R3 K6 ["Http request failed due to request errors. Ignoring retry."]
       38 CALL                             R2 1 0
       39 GETUPVAL                         R2 2
       40 MOVE                             R3 R0
       41 CALL                             R2 1 0
       42 RETURN                           R0 0
       43 GETUPVAL                         R2 3
       44 GETTABLEKS                       R2 R2 K3 ["_isLoggingEnabled"]
       46 LOADN                            R3 4
       47 CALL                             R2 1 1
       48 JUMPIFNOT                        R2 ; [+8]
       49 GETIMPORT                        R2 K5 [print]
       51 GETIMPORT                        R3 K9 [string.format]
       53 LOADK                            R4 K10 ["Http request failed. Attempting retry #%d"]
       54 GETUPVAL                         R5 0
       55 CALL                             R3 2 -1
       56 CALL                             R2 -1 0
       57 GETUPVAL                         R2 4
       58 JUMPIF                           R2 ; [+30]
       59 GETUPVAL                         R2 3
       60 GETTABLEKS                       R2 R2 K3 ["_isLoggingEnabled"]
       62 LOADN                            R3 4
       63 CALL                             R2 1 1
       64 JUMPIFNOT                        R2 ; [+14]
       65 GETIMPORT                        R2 K5 [print]
       67 GETIMPORT                        R3 K9 [string.format]
       69 LOADK                            R4 K11 ["- waiting for %d seconds before next attempt"]
       70 LOADN                            R6 2
       71 GETUPVAL                         R7 0
       72 FASTCALL2                        MATH_POW R6 R7 ; [+3]
       74 GETIMPORT                        R5 K14 [math.pow]
       76 CALL                             R5 2 1
       77 CALL                             R3 2 -1
       78 CALL                             R2 -1 0
       79 GETIMPORT                        R2 K16 [wait]
       81 LOADN                            R4 2
       82 GETUPVAL                         R5 0
       83 FASTCALL2                        MATH_POW R4 R5 ; [+3]
       85 GETIMPORT                        R3 K14 [math.pow]
       87 CALL                             R3 2 1
       88 CALL                             R2 1 0
       89 GETUPVAL                         R2 5
       90 GETTABLEKS                       R2 R2 K17 ["requestOptions"]
       92 GETUPVAL                         R3 3
       93 MOVE                             R5 R2
       94 NAMECALL                         R3 R3 K18 ["request"]
       96 CALL                             R3 2 1
       97 GETUPVAL                         R5 6
       98 GETUPVAL                         R6 7
       99 NAMECALL                         R3 R3 K19 ["andThen"]
      101 CALL                             R3 3 0
      102 RETURN                           R0 0

PROTO_9:
        0 LOADN                            R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          REF R2
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          VAL R0
        9 CAPTURE                          VAL R3
       10 MOVE                             R4 R3
       11 GETUPVAL                         R5 3
       12 CALL                             R4 1 0
       13 CLOSEUPVALS                      R2
       14 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          VAL R0
        8 CALL                             R1 1 -1
        9 RETURN                           R1 -1

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
       10 CAPTURE                          REF R3
       11 NAMECALL                         R4 R1 K1 ["andThen"]
       13 CALL                             R4 3 -1
       14 CLOSEUPVALS                      R2
       15 RETURN                           R4 -1

PROTO_12:
        0 GETIMPORT                        R2 K1 [tick]
        2 CALL                             R2 0 1
        3 GETUPVAL                         R5 0
        4 SUB                              R4 R2 R5
        5 MULK                             R3 R4 K2 [1000]
        6 JUMPIFNOT                        R0 ; [+191]
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K3 ["_isLoggingEnabled"]
       10 LOADN                            R5 2
       11 CALL                             R4 1 1
       12 JUMPIFNOT                        R4 ; [+118]
       13 NEWTABLE                         R4 0 1
       15 LOADK                            R5 K4 ["Incoming Network Response :"]
       16 SETLIST                          R4 R5 1 [1]
       18 GETUPVAL                         R5 1
       19 GETTABLEKS                       R5 R5 K3 ["_isLoggingEnabled"]
       21 LOADN                            R6 4
       22 CALL                             R5 1 1
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
      133 GETTABLEKS                       R5 R1 K29 ["StatusMessage"]
      135 GETTABLEKS                       R6 R1 K30 ["StatusCode"]
      137 LOADNIL                          R7
      138 GETUPVAL                         R8 1
      139 GETTABLEKS                       R8 R8 K31 ["_isInternal"]
      141 JUMPIFNOT                        R8 ; [+5]
      142 JUMPIFEQKN                       R6 K32 [200] ; [+2]
      144 LOADB                            R7 0 +1
      145 LOADB                            R7 1
      146 JUMP                             ; [+2]
      147 GETTABLEKS                       R7 R1 K33 ["Success"]
      149 GETUPVAL                         R8 2
      150 GETTABLEKS                       R8 R8 K34 ["new"]
      152 MOVE                             R9 R4
      153 MOVE                             R10 R3
      154 MOVE                             R11 R6
      155 GETUPVAL                         R12 3
      156 CALL                             R8 4 1
      157 JUMPIFNOT                        R7 ; [+20]
      158 GETUPVAL                         R9 1
      159 GETTABLEKS                       R9 R9 K3 ["_isLoggingEnabled"]
      161 LOADN                            R10 4
      162 CALL                             R9 1 1
      163 JUMPIFNOT                        R9 ; [+10]
      164 GETIMPORT                        R9 K25 [print]
      166 GETIMPORT                        R10 K12 [string.format]
      168 LOADK                            R11 K35 ["Http request to %s resolved successfully."]
      169 GETUPVAL                         R13 3
      170 GETTABLEKS                       R12 R13 K36 ["Url"]
      172 CALL                             R10 2 -1
      173 CALL                             R9 -1 0
      174 GETUPVAL                         R9 4
      175 MOVE                             R10 R8
      176 CALL                             R9 1 0
      177 RETURN                           R0 0
      178 GETUPVAL                         R9 1
      179 GETTABLEKS                       R9 R9 K3 ["_isLoggingEnabled"]
      181 LOADN                            R10 4
      182 CALL                             R9 1 1
      183 JUMPIFNOT                        R9 ; [+10]
      184 GETIMPORT                        R9 K25 [print]
      186 GETIMPORT                        R10 K12 [string.format]
      188 LOADK                            R11 K37 ["Http request to %s rejected because request did not succeed."]
      189 GETUPVAL                         R13 3
      190 GETTABLEKS                       R12 R13 K36 ["Url"]
      192 CALL                             R10 2 -1
      193 CALL                             R9 -1 0
      194 GETUPVAL                         R9 5
      195 MOVE                             R10 R8
      196 CALL                             R9 1 0
      197 RETURN                           R0 0
      198 GETUPVAL                         R4 1
      199 GETTABLEKS                       R4 R4 K3 ["_isLoggingEnabled"]
      201 LOADN                            R5 4
      202 CALL                             R4 1 1
      203 JUMPIFNOT                        R4 ; [+11]
      204 GETIMPORT                        R4 K25 [print]
      206 GETIMPORT                        R5 K12 [string.format]
      208 LOADK                            R6 K38 ["Http request to %s rejected because pcall returned false with message : %s"]
      209 GETUPVAL                         R8 3
      210 GETTABLEKS                       R7 R8 K36 ["Url"]
      212 MOVE                             R8 R1
      213 CALL                             R5 3 -1
      214 CALL                             R4 -1 0
      215 GETUPVAL                         R4 5
      216 GETUPVAL                         R5 2
      217 GETTABLEKS                       R5 R5 K34 ["new"]
      219 MOVE                             R6 R1
      220 MOVE                             R7 R3
      221 GETUPVAL                         R8 6
      222 GETTABLEKS                       R8 R8 K39 ["UNKNOWN_ERROR"]
      224 GETUPVAL                         R9 3
      225 CALL                             R5 4 -1
      226 CALL                             R4 -1 0
      227 RETURN                           R0 0

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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_isInternal"]
        3 JUMPIFNOT                        R0 ; [+29]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["_allowYielding"]
        7 JUMPIFNOT                        R0 ; [+13]
        8 GETUPVAL                         R0 0
        9 GETTABLEKS                       R0 R0 K2 ["_httpImpl"]
       11 GETUPVAL                         R2 1
       12 NAMECALL                         R0 R0 K3 ["RequestInternal"]
       14 CALL                             R0 2 1
       15 NEWCLOSURE                       R2 P0
       16 CAPTURE                          UPVAL U2
       17 NAMECALL                         R0 R0 K4 ["Start"]
       19 CALL                             R0 2 0
       20 RETURN                           R0 0
       21 GETUPVAL                         R0 0
       22 GETTABLEKS                       R0 R0 K2 ["_httpImpl"]
       24 GETUPVAL                         R2 1
       25 NAMECALL                         R0 R0 K3 ["RequestInternal"]
       27 CALL                             R0 2 1
       28 GETUPVAL                         R2 2
       29 NAMECALL                         R0 R0 K4 ["Start"]
       31 CALL                             R0 2 0
       32 RETURN                           R0 0
       33 GETIMPORT                        R0 K6 [pcall]
       35 GETUPVAL                         R1 0
       36 GETTABLEKS                       R1 R1 K2 ["_httpImpl"]
       38 GETTABLEKS                       R1 R1 K7 ["RequestAsync"]
       40 GETUPVAL                         R2 0
       41 GETTABLEKS                       R2 R2 K2 ["_httpImpl"]
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
       18 LOADN                            R3 1
       19 CALL                             R2 1 1
       20 JUMPIFNOT                        R2 ; [+31]
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
       36 MOVE                             R13 R7
       37 CALL                             R10 3 -1
       38 FASTCALL                         TABLE_INSERT ; [+2]
       39 GETIMPORT                        R8 K16 [table.insert]
       41 CALL                             R8 -1 0
       42 FORGLOOP                         R3 2 ; [-12]
       44 GETIMPORT                        R3 K18 [print]
       46 GETIMPORT                        R4 K20 [table.concat]
       48 MOVE                             R5 R2
       49 LOADK                            R6 K21 ["\n"]
       50 CALL                             R4 2 -1
       51 CALL                             R3 -1 0
       52 GETIMPORT                        R2 K23 [tick]
       54 CALL                             R2 0 1
       55 GETUPVAL                         R3 0
       56 GETTABLEKS                       R3 R3 K24 ["new"]
       58 NEWCLOSURE                       R4 P0
       59 CAPTURE                          VAL R2
       60 CAPTURE                          VAL R0
       61 CAPTURE                          UPVAL U1
       62 CAPTURE                          VAL R1
       63 CAPTURE                          UPVAL U2
       64 CALL                             R3 1 1
       65 RETURN                           R3 1

PROTO_18:
        0 DUPTABLE                         R3 K4 [{[1], ["Method"] = "GET", ["Headers"]}]
        1 SETTABLEKS                       R1 R3 K0 ["Url"]
        3 SETTABLEKS                       R2 R3 K3 ["Headers"]
        5 MOVE                             R6 R3
        6 NAMECALL                         R4 R0 K5 ["request"]
        8 CALL                             R4 2 -1
        9 RETURN                           R4 -1

PROTO_19:
        0 DUPTABLE                         R4 K5 [{[1], ["Body"], ["Method"] = "POST", ["Headers"]}]
        1 SETTABLEKS                       R1 R4 K0 ["Url"]
        3 SETTABLEKS                       R2 R4 K1 ["Body"]
        5 SETTABLEKS                       R3 R4 K4 ["Headers"]
        7 MOVE                             R7 R4
        8 NAMECALL                         R5 R0 K6 ["request"]
       10 CALL                             R5 2 -1
       11 RETURN                           R5 -1

PROTO_20:
        0 DUPTABLE                         R3 K4 [{[1], ["Method"] = "DELETE", ["Headers"]}]
        1 SETTABLEKS                       R1 R3 K0 ["Url"]
        3 SETTABLEKS                       R2 R3 K3 ["Headers"]
        5 MOVE                             R6 R3
        6 NAMECALL                         R4 R0 K5 ["request"]
        8 CALL                             R4 2 -1
        9 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R2 K7 [script]
       11 GETTABLEKS                       R2 R2 K8 ["Parent"]
       13 GETTABLEKS                       R2 R2 K8 ["Parent"]
       15 GETTABLEKS                       R2 R2 K9 ["Promise"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETIMPORT                        R3 K7 [script]
       22 GETTABLEKS                       R3 R3 K8 ["Parent"]
       24 GETTABLEKS                       R3 R3 K10 ["HttpResponse"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETIMPORT                        R4 K7 [script]
       31 GETTABLEKS                       R4 R4 K8 ["Parent"]
       33 GETTABLEKS                       R4 R4 K11 ["StatusCodes"]
       35 CALL                             R3 1 1
       36 DUPTABLE                         R4 K22 [{["NONE"] = 0, ["REQUESTS"] = 1, ["RESPONSES"] = 2, ["DEBUG"] = 4, ["VERBOSE"] = 7}]
       37 NEWTABLE                         R5 16 0
       39 SETTABLEKS                       R5 R5 K23 ["__index"]
       41 DUPCLOSURE                       R6 K24 [PROTO_1]
       42 CAPTURE                          VAL R5
       43 SETTABLEKS                       R6 R5 K25 ["new"]
       45 DUPCLOSURE                       R6 K26 [PROTO_3]
       46 CAPTURE                          VAL R5
       47 SETTABLEKS                       R6 R5 K27 ["mock"]
       49 DUPCLOSURE                       R6 K28 [PROTO_6]
       50 CAPTURE                          VAL R0
       51 SETTABLEKS                       R6 R5 K29 ["parseJson"]
       53 DUPCLOSURE                       R6 K30 [PROTO_11]
       54 CAPTURE                          VAL R1
       55 SETTABLEKS                       R6 R5 K31 ["handleRetry"]
       57 DUPCLOSURE                       R6 K32 [PROTO_17]
       58 CAPTURE                          VAL R1
       59 CAPTURE                          VAL R2
       60 CAPTURE                          VAL R3
       61 SETTABLEKS                       R6 R5 K33 ["request"]
       63 DUPCLOSURE                       R6 K34 [PROTO_18]
       64 SETTABLEKS                       R6 R5 K35 ["get"]
       66 DUPCLOSURE                       R6 K36 [PROTO_19]
       67 SETTABLEKS                       R6 R5 K37 ["post"]
       69 DUPCLOSURE                       R6 K38 [PROTO_20]
       70 SETTABLEKS                       R6 R5 K39 ["delete"]
       72 RETURN                           R5 1
