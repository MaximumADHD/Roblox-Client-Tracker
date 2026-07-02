PROTO_0:
        0 NEWTABLE                         R3 0 0
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K0 ["_sanitizeProps"]
        5 MOVE                             R5 R0
        6 MOVE                             R6 R1
        7 CALL                             R4 2 1
        8 MOVE                             R1 R4
        9 JUMPIFEQKNIL                     R2 ; [+8]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K0 ["_sanitizeProps"]
       14 MOVE                             R5 R0
       15 MOVE                             R6 R2
       16 CALL                             R4 2 1
       17 MOVE                             R2 R4
       18 LOADNIL                          R4
       19 LOADNIL                          R5
       20 LOADN                            R6 0
       21 LOADB                            R7 0
       22 LOADK                            R8 K1 [""]
       23 LOADK                            R11 K2 ["\r"]
       24 LOADK                            R12 K1 [""]
       25 NAMECALL                         R9 R1 K3 ["gsub"]
       27 CALL                             R9 3 1
       28 LOADK                            R11 K4 ["\n"]
       29 NAMECALL                         R9 R9 K5 ["split"]
       31 CALL                             R9 2 1
       32 GETIMPORT                        R10 K7 [ipairs]
       34 MOVE                             R11 R9
       35 CALL                             R10 1 3
       36 FORGPREP_INEXT                   R10
       37 GETIMPORT                        R15 K10 [string.match]
       39 MOVE                             R16 R14
       40 LOADK                            R17 K11 ["^%s*$"]
       41 CALL                             R15 2 1
       42 JUMPIFNOT                        R15 ; [+7]
       43 JUMPIFNOT                        R7 ; [+209]
       44 JUMPIFEQKNIL                     R4 ; [+208]
       46 MOVE                             R15 R4
       47 LOADK                            R16 K4 ["\n"]
       48 CONCAT                           R4 R15 R16
       49 JUMP                             ; [+203]
       50 GETIMPORT                        R15 K10 [string.match]
       52 MOVE                             R16 R14
       53 LOADK                            R17 K12 ["^%s*%]%]$"]
       54 CALL                             R15 2 1
       55 JUMPIFNOT                        R15 ; [+3]
       56 LOADB                            R7 0
       57 LOADK                            R8 K1 [""]
       58 JUMP                             ; [+194]
       59 LOADN                            R15 0
       60 JUMPIFNOTLT                      R15 R6 ; [+22]
       62 GETIMPORT                        R15 K10 [string.match]
       64 MOVE                             R16 R14
       65 LOADK                            R17 K13 ["^%s*%p+,$"]
       66 CALL                             R15 2 1
       67 JUMPIFNOT                        R15 ; [+15]
       68 SUBK                             R6 R6 K14 [1]
       69 JUMPIFNOT                        R5 ; [+10]
       70 MOVE                             R15 R5
       71 LOADK                            R16 K4 ["\n"]
       72 LOADK                            R20 K15 ["^"]
       73 MOVE                             R21 R8
       74 CONCAT                           R19 R20 R21
       75 LOADK                            R20 K1 [""]
       76 NAMECALL                         R17 R14 K3 ["gsub"]
       78 CALL                             R17 3 1
       79 CONCAT                           R5 R15 R17
       80 LOADN                            R15 0
       81 JUMPIFLT                         R15 R6 ; [+171]
       83 GETIMPORT                        R15 K10 [string.match]
       85 MOVE                             R16 R14
       86 LOADK                            R17 K16 ["[=:] .-[{%(]$"]
       87 CALL                             R15 2 1
       88 JUMPIFNOT                        R15 ; [+30]
       89 ADDK                             R6 R6 K14 [1]
       90 LOADN                            R15 1
       91 JUMPIFNOTLT                      R15 R6 ; [+13]
       93 JUMPIFNOT                        R5 ; [+159]
       94 MOVE                             R15 R5
       95 LOADK                            R16 K4 ["\n"]
       96 LOADK                            R20 K15 ["^"]
       97 MOVE                             R21 R8
       98 CONCAT                           R19 R20 R21
       99 LOADK                            R20 K1 [""]
      100 NAMECALL                         R17 R14 K3 ["gsub"]
      102 CALL                             R17 3 1
      103 CONCAT                           R5 R15 R17
      104 JUMP                             ; [+148]
      105 LOADK                            R17 K17 ["^(%s*)"]
      106 NAMECALL                         R15 R14 K9 ["match"]
      108 CALL                             R15 2 1
      109 ORK                              R8 R15 K1 [""]
      110 LOADK                            R18 K15 ["^"]
      111 MOVE                             R19 R8
      112 CONCAT                           R17 R18 R19
      113 LOADK                            R18 K1 [""]
      114 NAMECALL                         R15 R14 K3 ["gsub"]
      116 CALL                             R15 3 1
      117 MOVE                             R5 R15
      118 JUMP                             ; [+134]
      119 LOADN                            R15 0
      120 JUMPIFNOTLT                      R15 R6 ; [+22]
      122 JUMPIFNOTEQKNIL                  R5 ; [+2]
      124 LOADB                            R16 0 +1
      125 LOADB                            R16 1
      126 FASTCALL2K                       ASSERT R16 K18 ; [+4]
      128 LOADK                            R17 K18 ["Multiline prop type cannot be nil"]
      129 GETIMPORT                        R15 K20 [assert]
      131 CALL                             R15 2 0
      132 MOVE                             R15 R5
      133 LOADK                            R16 K4 ["\n"]
      134 LOADK                            R20 K15 ["^"]
      135 MOVE                             R21 R8
      136 CONCAT                           R19 R20 R21
      137 LOADK                            R20 K1 [""]
      138 NAMECALL                         R17 R14 K3 ["gsub"]
      140 CALL                             R17 3 1
      141 CONCAT                           R5 R15 R17
      142 JUMP                             ; [+110]
      143 GETIMPORT                        R15 K10 [string.match]
      145 MOVE                             R16 R14
      146 LOADK                            R17 K21 ["^(%s*)%-%-%s*([^\n]*)$"]
      147 CALL                             R15 2 2
      148 GETIMPORT                        R17 K10 [string.match]
      150 MOVE                             R18 R14
      151 LOADK                            R19 K22 ["(%s*)%-%-%[%["]
      152 CALL                             R17 2 1
      153 JUMPIFNOT                        R17 ; [+3]
      154 LOADB                            R7 1
      155 MOVE                             R8 R17
      156 JUMP                             ; [+96]
      157 JUMPIFNOT                        R16 ; [+14]
      158 JUMPIFEQKNIL                     R4 ; [+4]
      160 LOADN                            R18 0
      161 JUMPIFNOTLT                      R18 R6 ; [+3]
      163 MOVE                             R4 R16
      164 JUMP                             ; [+88]
      165 JUMPIFNOTEQKN                    R6 K23 [0] ; [+87]
      167 MOVE                             R18 R4
      168 LOADK                            R19 K24 [" "]
      169 MOVE                             R20 R16
      170 CONCAT                           R4 R18 R20
      171 JUMP                             ; [+81]
      172 JUMPIFNOT                        R7 ; [+21]
      173 GETIMPORT                        R18 K10 [string.match]
      175 MOVE                             R19 R14
      176 MOVE                             R21 R8
      177 LOADK                            R22 K25 ["\t(.*)$"]
      178 CONCAT                           R20 R21 R22
      179 CALL                             R18 2 1
      180 JUMPIFEQKNIL                     R4 ; [+4]
      182 LOADN                            R19 0
      183 JUMPIFNOTLT                      R19 R6 ; [+3]
      185 MOVE                             R4 R18
      186 JUMP                             ; [+66]
      187 JUMPIFNOTEQKN                    R6 K23 [0] ; [+65]
      189 MOVE                             R19 R4
      190 LOADK                            R20 K4 ["\n"]
      191 MOVE                             R21 R18
      192 CONCAT                           R4 R19 R21
      193 JUMP                             ; [+59]
      194 GETIMPORT                        R18 K10 [string.match]
      196 MOVE                             R19 R14
      197 LOADK                            R20 K26 ["(%s*)%-%-%s*([^\n]*)$"]
      198 CALL                             R18 2 2
      199 JUMPIFNOT                        R19 ; [+1]
      200 MOVE                             R4 R19
      201 GETUPVAL                         R20 0
      202 GETTABLEKS                       R20 R20 K27 ["_getProp"]
      204 MOVE                             R21 R0
      205 JUMPIFNOTEQKN                    R6 K23 [0] ; [+4]
      207 JUMPIFNOT                        R5 ; [+2]
      208 MOVE                             R22 R5
      209 JUMP                             ; [+1]
      210 MOVE                             R22 R14
      211 CALL                             R20 2 3
      212 JUMPIFEQKNIL                     R20 ; [+3]
      214 JUMPIFNOTEQKNIL                  R21 ; [+8]
      216 GETIMPORT                        R23 K29 [print]
      218 LOADK                            R25 K30 ["🤏  Unable to parse prop definition: "]
      219 MOVE                             R26 R14
      220 CONCAT                           R24 R25 R26
      221 CALL                             R23 1 0
      222 JUMP                             ; [+28]
      223 LOADNIL                          R23
      224 JUMPIFNOT                        R22 ; [+9]
      225 JUMPIFNOT                        R2 ; [+8]
      226 GETIMPORT                        R24 K10 [string.match]
      228 MOVE                             R25 R2
      229 MOVE                             R27 R20
      230 LOADK                            R28 K31 ["%s=%s([^\n]-),\n"]
      231 CONCAT                           R26 R27 R28
      232 CALL                             R24 2 1
      233 MOVE                             R23 R24
      234 DUPTABLE                         R26 K37 [{"Name", "Type", "IsOptional", "Default", "Comment"}]
      235 SETTABLEKS                       R20 R26 K32 ["Name"]
      237 SETTABLEKS                       R21 R26 K33 ["Type"]
      239 SETTABLEKS                       R22 R26 K34 ["IsOptional"]
      241 SETTABLEKS                       R23 R26 K35 ["Default"]
      243 SETTABLEKS                       R4 R26 K36 ["Comment"]
      245 FASTCALL2                        TABLE_INSERT R3 R26 ; [+4]
      247 MOVE                             R25 R3
      248 GETIMPORT                        R24 K40 [table.insert]
      250 CALL                             R24 2 0
      251 LOADNIL                          R4
      252 LOADNIL                          R5
      253 FORGLOOP                         R10 2 [inext] ; [-217]
      255 RETURN                           R3 1

PROTO_1:
        0 LOADN                            R3 0
        1 LOADN                            R4 1
        2 NAMECALL                         R1 R0 K0 ["sub"]
        4 CALL                             R1 3 -1
        5 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Typecheckers"]
        3 GETTABLEKS                       R2 R2 K1 ["T"]
        5 JUMPIFNOTEQ                      R0 R2 ; [+7]
        7 LOADK                            R4 K2 ["[^%w]t%."]
        8 DUPCLOSURE                       R5 K3 [PROTO_1]
        9 NAMECALL                         R2 R1 K4 ["gsub"]
       11 CALL                             R2 3 1
       12 MOVE                             R1 R2
       13 LOADK                            R4 K5 ["\n$"]
       14 NAMECALL                         R2 R1 K6 ["match"]
       16 CALL                             R2 2 1
       17 JUMPIF                           R2 ; [+3]
       18 MOVE                             R2 R1
       19 LOADK                            R3 K7 ["\n"]
       20 CONCAT                           R1 R2 R3
       21 RETURN                           R1 1

PROTO_3:
        0 LOADK                            R4 K0 [","]
        1 JUMPIFNOT                        R2 ; [+2]
        2 LOADK                            R5 K1 ["\n"]
        3 JUMP                             ; [+1]
        4 LOADK                            R5 K2 [" "]
        5 CONCAT                           R3 R4 R5
        6 GETIMPORT                        R4 K5 [table.concat]
        8 GETIMPORT                        R5 K8 [string.split]
       10 MOVE                             R6 R0
       11 MOVE                             R7 R3
       12 CALL                             R5 2 1
       13 LOADK                            R7 K2 [" "]
       14 MOVE                             R8 R1
       15 LOADK                            R9 K2 [" "]
       16 CONCAT                           R6 R7 R9
       17 CALL                             R4 2 -1
       18 RETURN                           R4 -1

PROTO_4:
        0 LOADK                            R2 K0 ["Array<"]
        1 MOVE                             R3 R0
        2 LOADK                            R4 K1 [">"]
        3 CONCAT                           R1 R2 R4
        4 RETURN                           R1 1

PROTO_5:
        0 LOADK                            R2 K0 ["Array<"]
        1 MOVE                             R3 R0
        2 LOADK                            R4 K1 [">"]
        3 CONCAT                           R1 R2 R4
        4 RETURN                           R1 1

PROTO_6:
        0 GETIMPORT                        R3 K2 [string.match]
        2 MOVE                             R4 R1
        3 LOADK                            R5 K3 ["\n"]
        4 CALL                             R3 2 1
        5 JUMPIFNOTEQKNIL                  R3 ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 LOADK                            R5 K4 ["%s+$"]
       10 LOADK                            R6 K5 [""]
       11 NAMECALL                         R3 R1 K6 ["gsub"]
       13 CALL                             R3 3 1
       14 MOVE                             R1 R3
       15 LOADK                            R5 K7 ["(%s*)%-%-%s*([^\n]*)$"]
       16 LOADK                            R6 K5 [""]
       17 NAMECALL                         R3 R1 K6 ["gsub"]
       19 CALL                             R3 3 1
       20 MOVE                             R1 R3
       21 GETIMPORT                        R3 K2 [string.match]
       23 MOVE                             R4 R1
       24 LOADK                            R6 K8 ["^%s*(%[?%w+%]?):%s+(.*)"]
       25 JUMPIFNOT                        R2 ; [+2]
       26 LOADK                            R7 K5 [""]
       27 JUMP                             ; [+1]
       28 LOADK                            R7 K9 [",$"]
       29 CONCAT                           R5 R6 R7
       30 CALL                             R3 2 2
       31 JUMPIFNOT                        R3 ; [+99]
       32 JUMPIFNOT                        R4 ; [+98]
       33 GETUPVAL                         R7 0
       34 GETTABLEKS                       R7 R7 K10 ["Typecheckers"]
       36 GETTABLEKS                       R7 R7 K11 ["Luau"]
       38 JUMPIFEQ                         R0 R7 ; [+2]
       40 LOADB                            R6 0 +1
       41 LOADB                            R6 1
       42 FASTCALL2K                       ASSERT R6 K12 ; [+4]
       44 LOADK                            R7 K12 ["Typechecker must be Luau at this point"]
       45 GETIMPORT                        R5 K14 [assert]
       47 CALL                             R5 2 0
       48 GETIMPORT                        R5 K2 [string.match]
       50 MOVE                             R6 R4
       51 LOADK                            R7 K15 ["(%??)$"]
       52 CALL                             R5 2 1
       53 LOADK                            R8 K15 ["(%??)$"]
       54 LOADK                            R9 K5 [""]
       55 NAMECALL                         R6 R4 K6 ["gsub"]
       57 CALL                             R6 3 1
       58 MOVE                             R4 R6
       59 JUMPIFNOT                        R2 ; [+49]
       60 GETUPVAL                         R6 0
       61 GETTABLEKS                       R6 R6 K16 ["PropTypeQualifiers"]
       63 GETTABLEKS                       R6 R6 K17 ["Interface"]
       65 GETIMPORT                        R7 K2 [string.match]
       67 MOVE                             R8 R4
       68 LOADK                            R9 K18 ["^%s*{(.*)%s*},*"]
       69 CALL                             R7 2 1
       70 JUMPIFNOT                        R7 ; [+21]
       71 GETIMPORT                        R8 K2 [string.match]
       73 MOVE                             R9 R7
       74 LOADK                            R10 K19 ["^%s*%[(%w+)%]: %{\n(.*)\n%s*%}"]
       75 CALL                             R8 2 1
       76 JUMPIFNOT                        R8 ; [+15]
       77 LOADNIL                          R8
       78 GETIMPORT                        R9 K2 [string.match]
       80 MOVE                             R10 R7
       81 LOADK                            R11 K19 ["^%s*%[(%w+)%]: %{\n(.*)\n%s*%}"]
       82 CALL                             R9 2 2
       83 MOVE                             R8 R9
       84 MOVE                             R4 R10
       85 JUMPIFNOTEQKS                    R8 K20 ["number"] ; [+6]
       87 GETUPVAL                         R9 0
       88 GETTABLEKS                       R9 R9 K16 ["PropTypeQualifiers"]
       90 GETTABLEKS                       R6 R9 K21 ["Array"]
       92 MOVE                             R8 R3
       93 DUPTABLE                         R9 K24 [{"Qualifier", "Props"}]
       94 SETTABLEKS                       R6 R9 K22 ["Qualifier"]
       96 GETUPVAL                         R10 1
       97 GETTABLEKS                       R10 R10 K25 ["parseProps"]
       99 MOVE                             R11 R0
      100 MOVE                             R12 R4
      101 CALL                             R10 2 1
      102 SETTABLEKS                       R10 R9 K23 ["Props"]
      104 JUMPIFNOTEQKS                    R5 K5 [""] ; [+2]
      106 LOADB                            R10 0 +1
      107 LOADB                            R10 1
      108 RETURN                           R8 3
      109 JUMPIFNOTEQKS                    R4 K5 [""] ; [+2]
      111 LOADK                            R4 K26 ["🤷"]
      112 LOADK                            R8 K27 ["^{ %[number%]: (.-)%s*}$"]
      113 DUPCLOSURE                       R9 K28 [PROTO_4]
      114 NAMECALL                         R6 R4 K6 ["gsub"]
      116 CALL                             R6 3 1
      117 MOVE                             R4 R6
      118 LOADK                            R8 K29 ["^{ (%w*)%s*}$"]
      119 DUPCLOSURE                       R9 K30 [PROTO_5]
      120 NAMECALL                         R6 R4 K6 ["gsub"]
      122 CALL                             R6 3 1
      123 MOVE                             R4 R6
      124 MOVE                             R6 R3
      125 MOVE                             R7 R4
      126 JUMPIFNOTEQKS                    R5 K5 [""] ; [+2]
      128 LOADB                            R8 0 +1
      129 LOADB                            R8 1
      130 RETURN                           R6 3
      131 GETUPVAL                         R5 0
      132 GETTABLEKS                       R5 R5 K10 ["Typecheckers"]
      134 GETTABLEKS                       R5 R5 K31 ["T"]
      136 JUMPIFNOTEQ                      R0 R5 ; [+192]
      138 GETIMPORT                        R5 K2 [string.match]
      140 MOVE                             R6 R1
      141 LOADK                            R8 K32 ["^%s*%[?([%w%.]+)%]?%s=%s(.*)"]
      142 JUMPIFNOT                        R2 ; [+2]
      143 LOADK                            R9 K5 [""]
      144 JUMP                             ; [+1]
      145 LOADK                            R9 K9 [",$"]
      146 CONCAT                           R7 R8 R9
      147 CALL                             R5 2 2
      148 MOVE                             R3 R5
      149 MOVE                             R4 R6
      150 JUMPIFNOT                        R3 ; [+178]
      151 JUMPIFNOT                        R4 ; [+177]
      152 LOADB                            R5 0
      153 LOADK                            R6 K33 ["%s"]
      154 LOADN                            R7 0
      155 LOADNIL                          R8
      156 LOADK                            R10 K34 ["^%s*(%w+)%((.+)"]
      157 JUMPIFNOT                        R2 ; [+2]
      158 LOADK                            R11 K3 ["\n"]
      159 JUMP                             ; [+1]
      160 LOADK                            R11 K35 ["%s*%)$"]
      161 CONCAT                           R9 R10 R11
      162 GETIMPORT                        R10 K2 [string.match]
      164 MOVE                             R11 R4
      165 MOVE                             R12 R9
      166 CALL                             R10 2 2
      167 JUMPIFNOT                        R10 ; [+117]
      168 JUMPIFNOT                        R11 ; [+116]
      169 LOADN                            R12 20
      170 JUMPIFNOTLT                      R7 R12 ; [+114]
      172 JUMPIFNOTEQKNIL                  R10 ; [+2]
      174 LOADB                            R13 0 +1
      175 LOADB                            R13 1
      176 FASTCALL2K                       ASSERT R13 K36 ; [+4]
      178 LOADK                            R14 K36 ["outerClassifier cannot be nil in this codepath"]
      179 GETIMPORT                        R12 K14 [assert]
      181 CALL                             R12 2 0
      182 JUMPIFNOTEQKNIL                  R11 ; [+2]
      184 LOADB                            R13 0 +1
      185 LOADB                            R13 1
      186 FASTCALL2K                       ASSERT R13 K37 ; [+4]
      188 LOADK                            R14 K37 ["innerPropType cannot be nil in this codepath"]
      189 GETIMPORT                        R12 K14 [assert]
      191 CALL                             R12 2 0
      192 JUMPIFNOTEQKS                    R10 K38 ["optional"] ; [+4]
      194 MOVE                             R4 R11
      195 LOADB                            R5 1
      196 JUMP                             ; [+71]
      197 JUMPIFNOTEQKS                    R10 K39 ["array"] ; [+12]
      199 GETUPVAL                         R12 0
      200 GETTABLEKS                       R12 R12 K16 ["PropTypeQualifiers"]
      202 GETTABLEKS                       R8 R12 K21 ["Array"]
      204 MOVE                             R4 R11
      205 LOADK                            R12 K40 ["Array<"]
      206 MOVE                             R13 R6
      207 LOADK                            R14 K41 [">"]
      208 CONCAT                           R6 R12 R14
      209 JUMP                             ; [+58]
      210 JUMPIFNOTEQKS                    R10 K42 ["map"] ; [+7]
      212 MOVE                             R4 R11
      213 LOADK                            R12 K43 ["Map<"]
      214 MOVE                             R13 R6
      215 LOADK                            R14 K41 [">"]
      216 CONCAT                           R6 R12 R14
      217 JUMP                             ; [+50]
      218 JUMPIFNOTEQKS                    R10 K44 ["union"] ; [+9]
      220 GETGLOBAL                        R12 K45 ["splitPropOnDelimiter"]
      222 MOVE                             R13 R11
      223 LOADK                            R14 K46 ["|"]
      224 MOVE                             R15 R2
      225 CALL                             R12 3 1
      226 MOVE                             R4 R12
      227 JUMP                             ; [+40]
      228 JUMPIFNOTEQKS                    R10 K47 ["intersection"] ; [+9]
      230 GETGLOBAL                        R12 K45 ["splitPropOnDelimiter"]
      232 MOVE                             R13 R11
      233 LOADK                            R14 K48 ["&"]
      234 MOVE                             R15 R2
      235 CALL                             R12 3 1
      236 MOVE                             R4 R12
      237 JUMP                             ; [+30]
      238 JUMPIFNOTEQKS                    R10 K49 ["numberMin"] ; [+6]
      240 MOVE                             R4 R11
      241 LOADK                            R12 K50 ["number > "]
      242 MOVE                             R13 R6
      243 CONCAT                           R6 R12 R13
      244 JUMP                             ; [+23]
      245 JUMPIFNOTEQKS                    R10 K51 ["enumerateValidator"] ; [+5]
      247 LOADK                            R12 K52 ["Enum."]
      248 MOVE                             R13 R11
      249 CONCAT                           R4 R12 R13
      250 JUMP                             ; [+17]
      251 JUMPIFNOTEQKS                    R10 K53 ["enum"] ; [+3]
      253 MOVE                             R4 R11
      254 JUMP                             ; [+13]
      255 JUMPIFEQKS                       R10 K54 ["strictInterface"] ; [+3]
      257 JUMPIFNOTEQKS                    R10 K55 ["interface"] ; [+3]
      259 LOADK                            R4 K26 ["🤷"]
      260 JUMP                             ; [+7]
      261 GETIMPORT                        R12 K57 [print]
      263 LOADK                            R14 K58 ["🍵 Unhandled classifier: "]
      264 MOVE                             R15 R10
      265 CONCAT                           R13 R14 R15
      266 CALL                             R12 1 0
      267 MOVE                             R4 R11
      268 GETIMPORT                        R12 K2 [string.match]
      270 MOVE                             R13 R4
      271 MOVE                             R14 R9
      272 CALL                             R12 2 2
      273 MOVE                             R10 R12
      274 MOVE                             R11 R13
      275 JUMPIFNOT                        R2 ; [+7]
      276 JUMPIFNOT                        R11 ; [+6]
      277 LOADK                            R14 K59 ["\n%s*"]
      278 LOADK                            R15 K3 ["\n"]
      279 NAMECALL                         R12 R11 K6 ["gsub"]
      281 CALL                             R12 3 1
      282 MOVE                             R11 R12
      283 ADDK                             R7 R7 K60 [1]
      284 JUMPBACK                         ; [-118]
      285 JUMPIFNOT                        R2 ; [+27]
      286 GETIMPORT                        R12 K2 [string.match]
      288 MOVE                             R13 R1
      289 LOADK                            R14 K61 ["s?t?r?i?c?t?[iI]nterface%(%{\n(.*)\n%s*%}%).*"]
      290 CALL                             R12 2 1
      291 JUMPIFNOT                        R12 ; [+21]
      292 MOVE                             R13 R3
      293 DUPTABLE                         R14 K24 [{"Qualifier", "Props"}]
      294 MOVE                             R15 R8
      295 JUMPIF                           R15 ; [+5]
      296 GETUPVAL                         R15 0
      297 GETTABLEKS                       R15 R15 K16 ["PropTypeQualifiers"]
      299 GETTABLEKS                       R15 R15 K17 ["Interface"]
      301 SETTABLEKS                       R15 R14 K22 ["Qualifier"]
      303 GETUPVAL                         R15 1
      304 GETTABLEKS                       R15 R15 K25 ["parseProps"]
      306 MOVE                             R16 R0
      307 MOVE                             R17 R12
      308 CALL                             R15 2 1
      309 SETTABLEKS                       R15 R14 K23 ["Props"]
      311 MOVE                             R15 R5
      312 RETURN                           R13 3
      313 JUMPIFNOTEQKN                    R7 K62 [20] ; [+7]
      315 GETIMPORT                        R12 K64 [warn]
      317 LOADK                            R14 K65 ["⌛ Exceeded iterations for parsing "]
      318 MOVE                             R15 R1
      319 CONCAT                           R13 R14 R15
      320 CALL                             R12 1 0
      321 MOVE                             R12 R3
      322 GETIMPORT                        R13 K67 [string.format]
      324 MOVE                             R14 R6
      325 MOVE                             R15 R4
      326 CALL                             R13 2 1
      327 MOVE                             R14 R5
      328 RETURN                           R12 3
      329 GETIMPORT                        R5 K57 [print]
      331 LOADK                            R7 K68 ["📛 Unable to find name or type: "]
      332 MOVE                             R8 R1
      333 CONCAT                           R6 R7 R8
      334 CALL                             R5 1 0
      335 LOADNIL                          R5
      336 LOADNIL                          R6
      337 LOADB                            R7 1
      338 RETURN                           R5 3

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["Types"]
        9 CALL                             R0 1 1
       10 NEWTABLE                         R1 4 0
       12 DUPCLOSURE                       R2 K6 [PROTO_0]
       13 CAPTURE                          VAL R1
       14 SETTABLEKS                       R2 R1 K7 ["parseProps"]
       16 DUPCLOSURE                       R2 K8 [PROTO_2]
       17 CAPTURE                          VAL R0
       18 SETTABLEKS                       R2 R1 K9 ["_sanitizeProps"]
       20 DUPCLOSURE                       R2 K10 [PROTO_3]
       21 SETGLOBAL                        R2 K11 ["splitPropOnDelimiter"]
       23 DUPCLOSURE                       R2 K12 [PROTO_6]
       24 CAPTURE                          VAL R0
       25 CAPTURE                          VAL R1
       26 SETTABLEKS                       R2 R1 K13 ["_getProp"]
       28 RETURN                           R1 1
