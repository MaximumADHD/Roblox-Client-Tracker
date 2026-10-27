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
       43 JUMPIFNOT                        R7 ; [+211]
       44 JUMPIFEQKNIL                     R4 ; [+210]
       46 MOVE                             R15 R4
       47 LOADK                            R16 K4 ["\n"]
       48 CONCAT                           R4 R15 R16
       49 JUMP                             ; [+205]
       50 GETIMPORT                        R15 K10 [string.match]
       52 MOVE                             R16 R14
       53 LOADK                            R17 K12 ["^%s*%]%]$"]
       54 CALL                             R15 2 1
       55 JUMPIFNOT                        R15 ; [+3]
       56 LOADB                            R7 0
       57 LOADK                            R8 K1 [""]
       58 JUMP                             ; [+196]
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
       81 JUMPIFLT                         R15 R6 ; [+173]
       83 GETIMPORT                        R15 K10 [string.match]
       85 MOVE                             R16 R14
       86 LOADK                            R17 K16 ["[=:] .-[{%(]$"]
       87 CALL                             R15 2 1
       88 JUMPIFNOT                        R15 ; [+30]
       89 ADDK                             R6 R6 K14 [1]
       90 LOADN                            R15 1
       91 JUMPIFNOTLT                      R15 R6 ; [+13]
       93 JUMPIFNOT                        R5 ; [+161]
       94 MOVE                             R15 R5
       95 LOADK                            R16 K4 ["\n"]
       96 LOADK                            R20 K15 ["^"]
       97 MOVE                             R21 R8
       98 CONCAT                           R19 R20 R21
       99 LOADK                            R20 K1 [""]
      100 NAMECALL                         R17 R14 K3 ["gsub"]
      102 CALL                             R17 3 1
      103 CONCAT                           R5 R15 R17
      104 JUMP                             ; [+150]
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
      118 JUMP                             ; [+136]
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
      142 JUMP                             ; [+112]
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
      156 JUMP                             ; [+98]
      157 JUMPIFNOT                        R16 ; [+14]
      158 JUMPIFEQKNIL                     R4 ; [+4]
      160 LOADN                            R18 0
      161 JUMPIFNOTLT                      R18 R6 ; [+3]
      163 MOVE                             R4 R16
      164 JUMP                             ; [+90]
      165 JUMPIFNOTEQKN                    R6 K23 [0] ; [+89]
      167 MOVE                             R18 R4
      168 LOADK                            R19 K24 [" "]
      169 MOVE                             R20 R16
      170 CONCAT                           R4 R18 R20
      171 JUMP                             ; [+83]
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
      186 JUMP                             ; [+68]
      187 JUMPIFNOTEQKN                    R6 K23 [0] ; [+67]
      189 MOVE                             R19 R4
      190 LOADK                            R20 K4 ["\n"]
      191 MOVE                             R21 R18
      192 CONCAT                           R4 R19 R21
      193 JUMP                             ; [+61]
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
      214 JUMPIFNOTEQKNIL                  R21 ; [+10]
      216 GETIMPORT                        R23 K29 [print]
      218 LOADK                            R24 K30 ["🤏  Unable to parse prop definition: %*"]
      219 MOVE                             R26 R14
      220 NAMECALL                         R24 R24 K31 ["format"]
      222 CALL                             R24 2 1
      223 CALL                             R23 1 0
      224 JUMP                             ; [+28]
      225 LOADNIL                          R23
      226 JUMPIFNOT                        R22 ; [+9]
      227 JUMPIFNOT                        R2 ; [+8]
      228 GETIMPORT                        R24 K10 [string.match]
      230 MOVE                             R25 R2
      231 MOVE                             R27 R20
      232 LOADK                            R28 K32 ["%s=%s([^\n]-),\n"]
      233 CONCAT                           R26 R27 R28
      234 CALL                             R24 2 1
      235 MOVE                             R23 R24
      236 DUPTABLE                         R26 K38 [{"Name", "Type", "IsOptional", "Default", "Comment"}]
      237 SETTABLEKS                       R20 R26 K33 ["Name"]
      239 SETTABLEKS                       R21 R26 K34 ["Type"]
      241 SETTABLEKS                       R22 R26 K35 ["IsOptional"]
      243 SETTABLEKS                       R23 R26 K36 ["Default"]
      245 SETTABLEKS                       R4 R26 K37 ["Comment"]
      247 FASTCALL2                        TABLE_INSERT R3 R26 ; [+4]
      249 MOVE                             R25 R3
      250 GETIMPORT                        R24 K41 [table.insert]
      252 CALL                             R24 2 0
      253 LOADNIL                          R4
      254 LOADNIL                          R5
      255 FORGLOOP                         R10 2 [inext] ; [-219]
      257 RETURN                           R3 1

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
        0 GETIMPORT                        R1 K2 [string.find]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["%s|%s"]
        4 CALL                             R1 2 1
        5 GETIMPORT                        R2 K2 [string.find]
        7 MOVE                             R3 R0
        8 LOADK                            R4 K4 ["%s&%s"]
        9 CALL                             R2 2 1
       10 JUMPIF                           R1 ; [+3]
       11 JUMPIF                           R2 ; [+2]
       12 LOADNIL                          R3
       13 RETURN                           R3 1
       14 JUMPIFNOT                        R1 ; [+11]
       15 JUMPIFNOT                        R2 ; [+10]
       16 GETIMPORT                        R3 K6 [warn]
       18 LOADK                            R4 K7 ["⚠️ Mixed union and intersection types are not fully supported: \"%*\". Documentation may not be complete."]
       19 MOVE                             R6 R0
       20 NAMECALL                         R4 R4 K8 ["format"]
       22 CALL                             R4 2 1
       23 CALL                             R3 1 0
       24 LOADNIL                          R3
       25 RETURN                           R3 1
       26 JUMPIFNOT                        R1 ; [+6]
       27 GETUPVAL                         R3 0
       28 GETTABLEKS                       R3 R3 K9 ["PropTypeQualifiers"]
       30 GETTABLEKS                       R3 R3 K10 ["Union"]
       32 JUMPIF                           R3 ; [+5]
       33 GETUPVAL                         R3 0
       34 GETTABLEKS                       R3 R3 K9 ["PropTypeQualifiers"]
       36 GETTABLEKS                       R3 R3 K11 ["Intersection"]
       38 GETUPVAL                         R5 1
       39 GETTABLE                         R4 R5 R3
       40 NEWTABLE                         R5 0 0
       42 GETIMPORT                        R6 K13 [string.gmatch]
       44 MOVE                             R7 R0
       45 LOADK                            R9 K14 ["[^"]
       46 MOVE                             R10 R4
       47 LOADK                            R11 K15 ["]+"]
       48 CONCAT                           R8 R9 R11
       49 CALL                             R6 2 3
       50 FORGPREP                         R6
       51 LOADK                            R13 K16 ["^%s*(.-)%s*$"]
       52 NAMECALL                         R11 R9 K17 ["match"]
       54 CALL                             R11 2 1
       55 JUMPIFNOT                        R11 ; [+13]
       56 JUMPIFEQKS                       R11 K18 [""] ; [+12]
       58 DUPTABLE                         R14 K23 [{["Name"], ["Type"], ["IsOptional"] = False}]
       59 SETTABLEKS                       R11 R14 K19 ["Name"]
       61 SETTABLEKS                       R11 R14 K20 ["Type"]
       63 FASTCALL2                        TABLE_INSERT R5 R14 ; [+4]
       65 MOVE                             R13 R5
       66 GETIMPORT                        R12 K26 [table.insert]
       68 CALL                             R12 2 0
       69 FORGLOOP                         R6 1 ; [-19]
       71 LENGTH                           R6 R5
       72 LOADN                            R7 0
       73 JUMPIFNOTLT                      R7 R6 ; [+7]
       75 DUPTABLE                         R6 K29 [{"Qualifier", "Props"}]
       76 SETTABLEKS                       R3 R6 K27 ["Qualifier"]
       78 SETTABLEKS                       R5 R6 K28 ["Props"]
       80 RETURN                           R6 1
       81 LOADNIL                          R6
       82 RETURN                           R6 1

PROTO_5:
        0 LOADK                            R1 K0 ["Array<%*>"]
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K1 ["format"]
        4 CALL                             R1 2 1
        5 RETURN                           R1 1

PROTO_6:
        0 LOADK                            R1 K0 ["Array<%*>"]
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K1 ["format"]
        4 CALL                             R1 2 1
        5 RETURN                           R1 1

PROTO_7:
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
       31 JUMPIF                           R3 ; [+14]
       32 GETUPVAL                         R5 0
       33 GETTABLEKS                       R5 R5 K10 ["Typecheckers"]
       35 GETTABLEKS                       R5 R5 K11 ["Luau"]
       37 JUMPIFNOTEQ                      R0 R5 ; [+8]
       39 GETIMPORT                        R5 K2 [string.match]
       41 MOVE                             R6 R1
       42 LOADK                            R7 K12 ["^%s*([%w%.]+)%s=%s(.*)"]
       43 CALL                             R5 2 2
       44 MOVE                             R3 R5
       45 MOVE                             R4 R6
       46 JUMPIFNOT                        R3 ; [+125]
       47 JUMPIFNOT                        R4 ; [+124]
       48 GETUPVAL                         R7 0
       49 GETTABLEKS                       R7 R7 K10 ["Typecheckers"]
       51 GETTABLEKS                       R7 R7 K11 ["Luau"]
       53 JUMPIFEQ                         R0 R7 ; [+2]
       55 LOADB                            R6 0 +1
       56 LOADB                            R6 1
       57 FASTCALL2K                       ASSERT R6 K13 ; [+4]
       59 LOADK                            R7 K13 ["Typechecker must be Luau at this point"]
       60 GETIMPORT                        R5 K15 [assert]
       62 CALL                             R5 2 0
       63 GETIMPORT                        R5 K2 [string.match]
       65 MOVE                             R6 R4
       66 LOADK                            R7 K16 ["(%??)$"]
       67 CALL                             R5 2 1
       68 LOADK                            R8 K16 ["(%??)$"]
       69 LOADK                            R9 K5 [""]
       70 NAMECALL                         R6 R4 K6 ["gsub"]
       72 CALL                             R6 3 1
       73 MOVE                             R4 R6
       74 JUMPIFNOT                        R2 ; [+49]
       75 GETUPVAL                         R6 0
       76 GETTABLEKS                       R6 R6 K17 ["PropTypeQualifiers"]
       78 GETTABLEKS                       R6 R6 K18 ["Interface"]
       80 GETIMPORT                        R7 K2 [string.match]
       82 MOVE                             R8 R4
       83 LOADK                            R9 K19 ["^%s*{(.*)%s*},*"]
       84 CALL                             R7 2 1
       85 JUMPIFNOT                        R7 ; [+21]
       86 GETIMPORT                        R8 K2 [string.match]
       88 MOVE                             R9 R7
       89 LOADK                            R10 K20 ["^%s*%[(%w+)%]: %{\n(.*)\n%s*%}"]
       90 CALL                             R8 2 1
       91 JUMPIFNOT                        R8 ; [+15]
       92 LOADNIL                          R8
       93 GETIMPORT                        R9 K2 [string.match]
       95 MOVE                             R10 R7
       96 LOADK                            R11 K20 ["^%s*%[(%w+)%]: %{\n(.*)\n%s*%}"]
       97 CALL                             R9 2 2
       98 MOVE                             R8 R9
       99 MOVE                             R4 R10
      100 JUMPIFNOTEQKS                    R8 K21 ["number"] ; [+6]
      102 GETUPVAL                         R9 0
      103 GETTABLEKS                       R9 R9 K17 ["PropTypeQualifiers"]
      105 GETTABLEKS                       R6 R9 K22 ["Array"]
      107 MOVE                             R8 R3
      108 DUPTABLE                         R9 K25 [{"Qualifier", "Props"}]
      109 SETTABLEKS                       R6 R9 K23 ["Qualifier"]
      111 GETUPVAL                         R10 1
      112 GETTABLEKS                       R10 R10 K26 ["parseProps"]
      114 MOVE                             R11 R0
      115 MOVE                             R12 R4
      116 CALL                             R10 2 1
      117 SETTABLEKS                       R10 R9 K24 ["Props"]
      119 JUMPIFNOTEQKS                    R5 K5 [""] ; [+2]
      121 LOADB                            R10 0 +1
      122 LOADB                            R10 1
      123 RETURN                           R8 3
      124 JUMPIFNOTEQKS                    R4 K5 [""] ; [+2]
      126 LOADK                            R4 K27 ["🤷"]
      127 GETIMPORT                        R6 K2 [string.match]
      129 MOVE                             R7 R4
      130 LOADK                            R8 K28 ["^%b()$"]
      131 CALL                             R6 2 1
      132 JUMPIFNOT                        R6 ; [+9]
      133 LOADN                            R8 2
      134 LOADN                            R9 -2
      135 FASTCALL3                        STRING_SUB R4 R8 R9
      137 MOVE                             R7 R4
      138 GETIMPORT                        R6 K30 [string.sub]
      140 CALL                             R6 3 1
      141 MOVE                             R4 R6
      142 LOADK                            R8 K31 ["^{ %[number%]: (.-)%s*}$"]
      143 DUPCLOSURE                       R9 K32 [PROTO_5]
      144 NAMECALL                         R6 R4 K6 ["gsub"]
      146 CALL                             R6 3 1
      147 MOVE                             R4 R6
      148 LOADK                            R8 K33 ["^{ (%w*)%s*}$"]
      149 DUPCLOSURE                       R9 K34 [PROTO_6]
      150 NAMECALL                         R6 R4 K6 ["gsub"]
      152 CALL                             R6 3 1
      153 MOVE                             R4 R6
      154 GETUPVAL                         R6 2
      155 MOVE                             R7 R4
      156 CALL                             R6 1 1
      157 JUMPIFNOT                        R6 ; [+7]
      158 MOVE                             R7 R3
      159 MOVE                             R8 R6
      160 JUMPIFNOTEQKS                    R5 K5 [""] ; [+2]
      162 LOADB                            R9 0 +1
      163 LOADB                            R9 1
      164 RETURN                           R7 3
      165 MOVE                             R7 R3
      166 MOVE                             R8 R4
      167 JUMPIFNOTEQKS                    R5 K5 [""] ; [+2]
      169 LOADB                            R9 0 +1
      170 LOADB                            R9 1
      171 RETURN                           R7 3
      172 GETUPVAL                         R5 0
      173 GETTABLEKS                       R5 R5 K10 ["Typecheckers"]
      175 GETTABLEKS                       R5 R5 K35 ["T"]
      177 JUMPIFNOTEQ                      R0 R5 ; [+240]
      179 GETIMPORT                        R5 K2 [string.match]
      181 MOVE                             R6 R1
      182 LOADK                            R8 K36 ["^%s*%[?([%w%.]+)%]?%s=%s(.*)"]
      183 JUMPIFNOT                        R2 ; [+2]
      184 LOADK                            R9 K5 [""]
      185 JUMP                             ; [+1]
      186 LOADK                            R9 K9 [",$"]
      187 CONCAT                           R7 R8 R9
      188 CALL                             R5 2 2
      189 MOVE                             R3 R5
      190 MOVE                             R4 R6
      191 JUMPIFNOT                        R3 ; [+226]
      192 JUMPIFNOT                        R4 ; [+225]
      193 LOADB                            R5 0
      194 LOADK                            R6 K37 ["%s"]
      195 LOADN                            R7 0
      196 LOADNIL                          R8
      197 LOADK                            R10 K38 ["^%s*(%w+)%((.+)"]
      198 JUMPIFNOT                        R2 ; [+2]
      199 LOADK                            R11 K3 ["\n"]
      200 JUMP                             ; [+1]
      201 LOADK                            R11 K39 ["%s*%)$"]
      202 CONCAT                           R9 R10 R11
      203 GETIMPORT                        R10 K2 [string.match]
      205 MOVE                             R11 R4
      206 MOVE                             R12 R9
      207 CALL                             R10 2 2
      208 JUMPIFNOT                        R10 ; [+141]
      209 JUMPIFNOT                        R11 ; [+140]
      210 LOADN                            R12 20
      211 JUMPIFNOTLT                      R7 R12 ; [+138]
      213 JUMPIFNOTEQKNIL                  R10 ; [+2]
      215 LOADB                            R13 0 +1
      216 LOADB                            R13 1
      217 FASTCALL2K                       ASSERT R13 K40 ; [+4]
      219 LOADK                            R14 K40 ["outerClassifier cannot be nil in this codepath"]
      220 GETIMPORT                        R12 K15 [assert]
      222 CALL                             R12 2 0
      223 JUMPIFNOTEQKNIL                  R11 ; [+2]
      225 LOADB                            R13 0 +1
      226 LOADB                            R13 1
      227 FASTCALL2K                       ASSERT R13 K41 ; [+4]
      229 LOADK                            R14 K41 ["innerPropType cannot be nil in this codepath"]
      230 GETIMPORT                        R12 K15 [assert]
      232 CALL                             R12 2 0
      233 JUMPIFNOTEQKS                    R10 K42 ["optional"] ; [+4]
      235 MOVE                             R4 R11
      236 LOADB                            R5 1
      237 JUMP                             ; [+95]
      238 JUMPIFNOTEQKS                    R10 K43 ["array"] ; [+14]
      240 GETUPVAL                         R12 0
      241 GETTABLEKS                       R12 R12 K17 ["PropTypeQualifiers"]
      243 GETTABLEKS                       R8 R12 K22 ["Array"]
      245 MOVE                             R4 R11
      246 LOADK                            R12 K44 ["Array<%*>"]
      247 MOVE                             R14 R6
      248 NAMECALL                         R12 R12 K45 ["format"]
      250 CALL                             R12 2 1
      251 MOVE                             R6 R12
      252 JUMP                             ; [+80]
      253 JUMPIFNOTEQKS                    R10 K46 ["map"] ; [+9]
      255 MOVE                             R4 R11
      256 LOADK                            R12 K47 ["Map<%*>"]
      257 MOVE                             R14 R6
      258 NAMECALL                         R12 R12 K45 ["format"]
      260 CALL                             R12 2 1
      261 MOVE                             R6 R12
      262 JUMP                             ; [+70]
      263 JUMPIFNOTEQKS                    R10 K48 ["union"] ; [+15]
      265 GETUPVAL                         R12 0
      266 GETTABLEKS                       R12 R12 K17 ["PropTypeQualifiers"]
      268 GETTABLEKS                       R8 R12 K49 ["Union"]
      270 GETGLOBAL                        R12 K50 ["splitPropOnDelimiter"]
      272 MOVE                             R13 R11
      273 GETUPVAL                         R15 3
      274 GETTABLE                         R14 R15 R8
      275 MOVE                             R15 R2
      276 CALL                             R12 3 1
      277 MOVE                             R4 R12
      278 JUMP                             ; [+54]
      279 JUMPIFNOTEQKS                    R10 K51 ["intersection"] ; [+15]
      281 GETUPVAL                         R12 0
      282 GETTABLEKS                       R12 R12 K17 ["PropTypeQualifiers"]
      284 GETTABLEKS                       R8 R12 K52 ["Intersection"]
      286 GETGLOBAL                        R12 K50 ["splitPropOnDelimiter"]
      288 MOVE                             R13 R11
      289 GETUPVAL                         R15 3
      290 GETTABLE                         R14 R15 R8
      291 MOVE                             R15 R2
      292 CALL                             R12 3 1
      293 MOVE                             R4 R12
      294 JUMP                             ; [+38]
      295 JUMPIFNOTEQKS                    R10 K53 ["numberMin"] ; [+9]
      297 MOVE                             R4 R11
      298 LOADK                            R12 K54 ["number > %*"]
      299 MOVE                             R14 R6
      300 NAMECALL                         R12 R12 K45 ["format"]
      302 CALL                             R12 2 1
      303 MOVE                             R6 R12
      304 JUMP                             ; [+28]
      305 JUMPIFNOTEQKS                    R10 K55 ["enumerateValidator"] ; [+8]
      307 LOADK                            R12 K56 ["Enum.%*"]
      308 MOVE                             R14 R11
      309 NAMECALL                         R12 R12 K45 ["format"]
      311 CALL                             R12 2 1
      312 MOVE                             R4 R12
      313 JUMP                             ; [+19]
      314 JUMPIFNOTEQKS                    R10 K57 ["enum"] ; [+3]
      316 MOVE                             R4 R11
      317 JUMP                             ; [+15]
      318 JUMPIFEQKS                       R10 K58 ["strictInterface"] ; [+3]
      320 JUMPIFNOTEQKS                    R10 K59 ["interface"] ; [+3]
      322 LOADK                            R4 K27 ["🤷"]
      323 JUMP                             ; [+9]
      324 GETIMPORT                        R12 K61 [print]
      326 LOADK                            R13 K62 ["🍵 Unhandled classifier: %*"]
      327 MOVE                             R15 R10
      328 NAMECALL                         R13 R13 K45 ["format"]
      330 CALL                             R13 2 1
      331 CALL                             R12 1 0
      332 MOVE                             R4 R11
      333 GETIMPORT                        R12 K2 [string.match]
      335 MOVE                             R13 R4
      336 MOVE                             R14 R9
      337 CALL                             R12 2 2
      338 MOVE                             R10 R12
      339 MOVE                             R11 R13
      340 JUMPIFNOT                        R2 ; [+7]
      341 JUMPIFNOT                        R11 ; [+6]
      342 LOADK                            R14 K63 ["\n%s*"]
      343 LOADK                            R15 K3 ["\n"]
      344 NAMECALL                         R12 R11 K6 ["gsub"]
      346 CALL                             R12 3 1
      347 MOVE                             R11 R12
      348 ADDK                             R7 R7 K64 [1]
      349 JUMPBACK                         ; [-142]
      350 JUMPIFNOT                        R2 ; [+27]
      351 GETIMPORT                        R12 K2 [string.match]
      353 MOVE                             R13 R1
      354 LOADK                            R14 K65 ["s?t?r?i?c?t?[iI]nterface%(%{\n(.*)\n%s*%}%).*"]
      355 CALL                             R12 2 1
      356 JUMPIFNOT                        R12 ; [+21]
      357 MOVE                             R13 R3
      358 DUPTABLE                         R14 K25 [{"Qualifier", "Props"}]
      359 MOVE                             R15 R8
      360 JUMPIF                           R15 ; [+5]
      361 GETUPVAL                         R15 0
      362 GETTABLEKS                       R15 R15 K17 ["PropTypeQualifiers"]
      364 GETTABLEKS                       R15 R15 K18 ["Interface"]
      366 SETTABLEKS                       R15 R14 K23 ["Qualifier"]
      368 GETUPVAL                         R15 1
      369 GETTABLEKS                       R15 R15 K26 ["parseProps"]
      371 MOVE                             R16 R0
      372 MOVE                             R17 R12
      373 CALL                             R15 2 1
      374 SETTABLEKS                       R15 R14 K24 ["Props"]
      376 MOVE                             R15 R5
      377 RETURN                           R13 3
      378 JUMPIFNOTEQKN                    R7 K66 [20] ; [+9]
      380 GETIMPORT                        R12 K68 [warn]
      382 LOADK                            R13 K69 ["⌛ Exceeded iterations for parsing %*"]
      383 MOVE                             R15 R1
      384 NAMECALL                         R13 R13 K45 ["format"]
      386 CALL                             R13 2 1
      387 CALL                             R12 1 0
      388 GETUPVAL                         R12 0
      389 GETTABLEKS                       R12 R12 K17 ["PropTypeQualifiers"]
      391 GETTABLEKS                       R12 R12 K49 ["Union"]
      393 JUMPIFEQ                         R8 R12 ; [+8]
      395 GETUPVAL                         R12 0
      396 GETTABLEKS                       R12 R12 K17 ["PropTypeQualifiers"]
      398 GETTABLEKS                       R12 R12 K52 ["Intersection"]
      400 JUMPIFNOTEQ                      R8 R12 ; [+9]
      402 GETUPVAL                         R12 2
      403 MOVE                             R13 R4
      404 CALL                             R12 1 1
      405 JUMPIFNOT                        R12 ; [+4]
      406 MOVE                             R13 R3
      407 MOVE                             R14 R12
      408 MOVE                             R15 R5
      409 RETURN                           R13 3
      410 MOVE                             R12 R3
      411 GETIMPORT                        R13 K70 [string.format]
      413 MOVE                             R14 R6
      414 MOVE                             R15 R4
      415 CALL                             R13 2 1
      416 MOVE                             R14 R5
      417 RETURN                           R12 3
      418 GETIMPORT                        R5 K61 [print]
      420 LOADK                            R6 K71 ["📛 Unable to find name or type: %*"]
      421 MOVE                             R8 R1
      422 NAMECALL                         R6 R6 K45 ["format"]
      424 CALL                             R6 2 1
      425 CALL                             R5 1 0
      426 LOADNIL                          R5
      427 LOADNIL                          R6
      428 LOADB                            R7 1
      429 RETURN                           R5 3

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
       23 NEWTABLE                         R2 2 0
       25 GETTABLEKS                       R3 R0 K12 ["PropTypeQualifiers"]
       27 GETTABLEKS                       R3 R3 K13 ["Union"]
       29 LOADK                            R4 K14 ["|"]
       30 SETTABLE                         R4 R2 R3
       31 GETTABLEKS                       R3 R0 K12 ["PropTypeQualifiers"]
       33 GETTABLEKS                       R3 R3 K15 ["Intersection"]
       35 LOADK                            R4 K16 ["&"]
       36 SETTABLE                         R4 R2 R3
       37 DUPCLOSURE                       R3 K17 [PROTO_4]
       38 CAPTURE                          VAL R0
       39 CAPTURE                          VAL R2
       40 DUPCLOSURE                       R4 K18 [PROTO_7]
       41 CAPTURE                          VAL R0
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R3
       44 CAPTURE                          VAL R2
       45 SETTABLEKS                       R4 R1 K19 ["_getProp"]
       47 RETURN                           R1 1
