PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["measureText"]
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 MOVE                             R6 R2
        6 LOADB                            R7 1
        7 CALL                             R3 4 -1
        8 RETURN                           R3 -1

PROTO_1:
        0 LOADK                            R3 K0 ["[&<>\"']"]
        1 NEWTABLE                         R4 8 0
        3 LOADK                            R5 K1 ["&amp;"]
        4 SETTABLEKS                       R5 R4 K2 ["&"]
        6 LOADK                            R5 K3 ["&lt;"]
        7 SETTABLEKS                       R5 R4 K4 ["<"]
        9 LOADK                            R5 K5 ["&gt;"]
       10 SETTABLEKS                       R5 R4 K6 [">"]
       12 LOADK                            R5 K7 ["&quot;"]
       13 SETTABLEKS                       R5 R4 K8 ["\""]
       15 LOADK                            R5 K9 ["&apos;"]
       16 SETTABLEKS                       R5 R4 K10 ["'"]
       18 NAMECALL                         R1 R0 K11 ["gsub"]
       20 CALL                             R1 3 -1
       21 RETURN                           R1 -1

PROTO_2:
        0 LOADK                            R5 K0 ["[&<>\"']"]
        1 NEWTABLE                         R6 8 0
        3 LOADK                            R7 K1 ["&amp;"]
        4 SETTABLEKS                       R7 R6 K2 ["&"]
        6 LOADK                            R7 K3 ["&lt;"]
        7 SETTABLEKS                       R7 R6 K4 ["<"]
        9 LOADK                            R7 K5 ["&gt;"]
       10 SETTABLEKS                       R7 R6 K6 [">"]
       12 LOADK                            R7 K7 ["&quot;"]
       13 SETTABLEKS                       R7 R6 K8 ["\""]
       15 LOADK                            R7 K9 ["&apos;"]
       16 SETTABLEKS                       R7 R6 K10 ["'"]
       18 NAMECALL                         R3 R0 K11 ["gsub"]
       20 CALL                             R3 3 1
       21 GETTABLEKS                       R4 R1 K12 ["bold"]
       23 JUMPIFNOT                        R4 ; [+6]
       24 LOADK                            R4 K13 ["<b>%*</b>"]
       25 MOVE                             R6 R3
       26 NAMECALL                         R4 R4 K14 ["format"]
       28 CALL                             R4 2 1
       29 MOVE                             R3 R4
       30 GETTABLEKS                       R4 R1 K15 ["italic"]
       32 JUMPIFNOT                        R4 ; [+6]
       33 LOADK                            R4 K16 ["<i>%*</i>"]
       34 MOVE                             R6 R3
       35 NAMECALL                         R4 R4 K14 ["format"]
       37 CALL                             R4 2 1
       38 MOVE                             R3 R4
       39 GETTABLEKS                       R4 R1 K17 ["strike"]
       41 JUMPIFNOT                        R4 ; [+6]
       42 LOADK                            R4 K18 ["<s>%*</s>"]
       43 MOVE                             R6 R3
       44 NAMECALL                         R4 R4 K14 ["format"]
       46 CALL                             R4 2 1
       47 MOVE                             R3 R4
       48 GETTABLEKS                       R4 R1 K19 ["linkUrl"]
       50 JUMPIFNOT                        R4 ; [+21]
       51 LOADB                            R4 0
       52 JUMPIFEQKNIL                     R2 ; [+7]
       54 GETTABLEKS                       R5 R1 K19 ["linkUrl"]
       56 JUMPIFEQ                         R5 R2 ; [+2]
       58 LOADB                            R4 0 +1
       59 LOADB                            R4 1
       60 JUMPIFNOT                        R4 ; [+2]
       61 LOADK                            R5 K20 ["#6BB5FF"]
       62 JUMP                             ; [+1]
       63 LOADK                            R5 K21 ["#4A90D9"]
       64 LOADK                            R6 K22 ["<font color=\"%*\"><u>%*</u></font>"]
       65 MOVE                             R8 R5
       66 MOVE                             R9 R3
       67 NAMECALL                         R6 R6 K14 ["format"]
       69 CALL                             R6 3 1
       70 MOVE                             R3 R6
       71 RETURN                           R3 1
       72 GETTABLEKS                       R4 R1 K23 ["color"]
       74 JUMPIF                           R4 ; [+3]
       75 GETTABLEKS                       R4 R1 K24 ["fontFamily"]
       77 JUMPIFNOT                        R4 ; [+45]
       78 NEWTABLE                         R4 0 0
       80 GETTABLEKS                       R5 R1 K23 ["color"]
       82 JUMPIFNOT                        R5 ; [+13]
       83 LOADK                            R8 K25 ["color=\"%*\""]
       84 GETTABLEKS                       R10 R1 K23 ["color"]
       86 NAMECALL                         R8 R8 K14 ["format"]
       88 CALL                             R8 2 1
       89 MOVE                             R7 R8
       90 FASTCALL2                        TABLE_INSERT R4 R7 ; [+4]
       92 MOVE                             R6 R4
       93 GETIMPORT                        R5 K28 [table.insert]
       95 CALL                             R5 2 0
       96 GETTABLEKS                       R5 R1 K24 ["fontFamily"]
       98 JUMPIFNOT                        R5 ; [+13]
       99 LOADK                            R8 K29 ["family=\"%*\""]
      100 GETTABLEKS                       R10 R1 K24 ["fontFamily"]
      102 NAMECALL                         R8 R8 K14 ["format"]
      104 CALL                             R8 2 1
      105 MOVE                             R7 R8
      106 FASTCALL2                        TABLE_INSERT R4 R7 ; [+4]
      108 MOVE                             R6 R4
      109 GETIMPORT                        R5 K28 [table.insert]
      111 CALL                             R5 2 0
      112 LOADK                            R5 K30 ["<font %*>%*</font>"]
      113 GETIMPORT                        R7 K32 [table.concat]
      115 MOVE                             R8 R4
      116 LOADK                            R9 K33 [" "]
      117 CALL                             R7 2 1
      118 MOVE                             R8 R3
      119 NAMECALL                         R5 R5 K14 ["format"]
      121 CALL                             R5 3 1
      122 MOVE                             R3 R5
      123 RETURN                           R3 1

PROTO_3:
        0 NEWTABLE                         R3 0 0
        2 MOVE                             R4 R0
        3 LOADNIL                          R5
        4 LOADNIL                          R6
        5 FORGPREP                         R4
        6 GETTABLEKS                       R9 R8 K0 ["globalIndex"]
        8 JUMPIFNOTEQ                      R9 R1 ; [+33]
       10 JUMPIFNOT                        R2 ; [+55]
       11 LOADN                            R9 0
       12 JUMPIFNOTLT                      R9 R2 ; [+53]
       14 GETTABLEKS                       R9 R8 K1 ["type"]
       16 JUMPIFNOTEQKS                    R9 K2 ["text"] ; [+49]
       18 GETTABLEKS                       R9 R8 K2 ["text"]
       20 JUMPIFNOT                        R9 ; [+45]
       21 GETTABLEKS                       R9 R8 K2 ["text"]
       23 JUMPIFEQKS                       R9 K3 ["\n"] ; [+42]
       25 GETUPVAL                         R11 0
       26 GETTABLEKS                       R12 R8 K2 ["text"]
       28 LOADN                            R14 1
       29 MOVE                             R15 R2
       30 NAMECALL                         R12 R12 K4 ["sub"]
       32 CALL                             R12 3 1
       33 MOVE                             R13 R8
       34 CALL                             R11 2 1
       35 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       37 MOVE                             R10 R3
       38 GETIMPORT                        R9 K7 [table.insert]
       40 CALL                             R9 2 0
       41 JUMP                             ; [+24]
       42 GETTABLEKS                       R9 R8 K1 ["type"]
       44 JUMPIFNOTEQKS                    R9 K2 ["text"] ; [+19]
       46 GETTABLEKS                       R9 R8 K2 ["text"]
       48 JUMPIFNOT                        R9 ; [+15]
       49 GETTABLEKS                       R9 R8 K2 ["text"]
       51 JUMPIFEQKS                       R9 K3 ["\n"] ; [+12]
       53 GETUPVAL                         R11 0
       54 GETTABLEKS                       R12 R8 K2 ["text"]
       56 MOVE                             R13 R8
       57 CALL                             R11 2 1
       58 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       60 MOVE                             R10 R3
       61 GETIMPORT                        R9 K7 [table.insert]
       63 CALL                             R9 2 0
       64 FORGLOOP                         R4 2 ; [-59]
       66 GETIMPORT                        R4 K9 [table.concat]
       68 MOVE                             R5 R3
       69 CALL                             R4 1 -1
       70 RETURN                           R4 -1

PROTO_4:
        0 NEWTABLE                         R1 0 0
        2 LOADN                            R2 1
        3 LENGTH                           R3 R0
        4 JUMPIFNOTLE                      R2 R3 ; [+47]
        6 MOVE                             R5 R2
        7 NAMECALL                         R3 R0 K0 ["sub"]
        9 CALL                             R3 2 1
       10 LOADK                            R6 K1 ["^(%s*%S+%s*)"]
       11 NAMECALL                         R4 R3 K2 ["match"]
       13 CALL                             R4 2 1
       14 JUMPIFNOT                        R4 ; [+10]
       15 FASTCALL2                        TABLE_INSERT R1 R4 ; [+5]
       17 MOVE                             R6 R1
       18 MOVE                             R7 R4
       19 GETIMPORT                        R5 K5 [table.insert]
       21 CALL                             R5 2 0
       22 LENGTH                           R5 R4
       23 ADD                              R2 R2 R5
       24 JUMP                             ; [+26]
       25 LOADK                            R7 K6 ["^(%s+)"]
       26 NAMECALL                         R5 R3 K2 ["match"]
       28 CALL                             R5 2 1
       29 JUMPIFNOT                        R5 ; [+22]
       30 LENGTH                           R6 R1
       31 LOADN                            R7 0
       32 JUMPIFNOTLT                      R7 R6 ; [+7]
       34 LENGTH                           R6 R1
       35 GETTABLE                         R8 R1 R6
       36 MOVE                             R9 R5
       37 CONCAT                           R7 R8 R9
       38 SETTABLE                         R7 R1 R6
       39 JUMP                             ; [+7]
       40 FASTCALL2                        TABLE_INSERT R1 R5 ; [+5]
       42 MOVE                             R7 R1
       43 MOVE                             R8 R5
       44 GETIMPORT                        R6 K5 [table.insert]
       46 CALL                             R6 2 0
       47 LENGTH                           R6 R5
       48 ADD                              R2 R2 R6
       49 JUMP                             ; [+1]
       50 RETURN                           R1 1
       51 JUMPBACK                         ; [-49]
       52 RETURN                           R1 1

PROTO_5:
        0 MOVE                             R2 R0
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 GETTABLEKS                       R7 R6 K0 ["name"]
        6 JUMPIFNOTEQKS                    R7 K1 ["TEXT"] ; [+109]
        8 GETTABLEKS                       R8 R6 K3 ["text"]
       10 ORK                              R7 R8 K2 [""]
       11 LENGTH                           R8 R7
       12 JUMPIFNOTEQKN                    R8 K4 [0] ; [+47]
       14 GETUPVAL                         R9 0
       15 DUPTABLE                         R10 K15 [{"type", "text", "bold", "italic", "strike", "color", "linkUrl", "fontFamily", "width", "sourceNode", "sourceOffset"}]
       16 LOADK                            R11 K3 ["text"]
       17 SETTABLEKS                       R11 R10 K5 ["type"]
       19 LOADK                            R11 K2 [""]
       20 SETTABLEKS                       R11 R10 K3 ["text"]
       22 GETTABLEKS                       R11 R1 K6 ["bold"]
       24 SETTABLEKS                       R11 R10 K6 ["bold"]
       26 GETTABLEKS                       R11 R1 K7 ["italic"]
       28 SETTABLEKS                       R11 R10 K7 ["italic"]
       30 GETTABLEKS                       R11 R1 K8 ["strike"]
       32 SETTABLEKS                       R11 R10 K8 ["strike"]
       34 GETTABLEKS                       R11 R1 K9 ["color"]
       36 SETTABLEKS                       R11 R10 K9 ["color"]
       38 GETTABLEKS                       R11 R1 K10 ["linkUrl"]
       40 SETTABLEKS                       R11 R10 K10 ["linkUrl"]
       42 GETTABLEKS                       R11 R1 K11 ["fontFamily"]
       44 SETTABLEKS                       R11 R10 K11 ["fontFamily"]
       46 LOADN                            R11 0
       47 SETTABLEKS                       R11 R10 K12 ["width"]
       49 SETTABLEKS                       R6 R10 K13 ["sourceNode"]
       51 LOADN                            R11 0
       52 SETTABLEKS                       R11 R10 K14 ["sourceOffset"]
       54 FASTCALL2                        TABLE_INSERT R9 R10 ; [+3]
       56 GETIMPORT                        R8 K18 [table.insert]
       58 CALL                             R8 2 0
       59 JUMP                             ; [+287]
       60 GETUPVAL                         R8 1
       61 MOVE                             R9 R7
       62 CALL                             R8 1 1
       63 LOADN                            R9 0
       64 MOVE                             R10 R8
       65 LOADNIL                          R11
       66 LOADNIL                          R12
       67 FORGPREP                         R10
       68 GETUPVAL                         R16 0
       69 DUPTABLE                         R17 K15 [{"type", "text", "bold", "italic", "strike", "color", "linkUrl", "fontFamily", "width", "sourceNode", "sourceOffset"}]
       70 LOADK                            R18 K3 ["text"]
       71 SETTABLEKS                       R18 R17 K5 ["type"]
       73 SETTABLEKS                       R14 R17 K3 ["text"]
       75 GETTABLEKS                       R18 R1 K6 ["bold"]
       77 SETTABLEKS                       R18 R17 K6 ["bold"]
       79 GETTABLEKS                       R18 R1 K7 ["italic"]
       81 SETTABLEKS                       R18 R17 K7 ["italic"]
       83 GETTABLEKS                       R18 R1 K8 ["strike"]
       85 SETTABLEKS                       R18 R17 K8 ["strike"]
       87 GETTABLEKS                       R18 R1 K9 ["color"]
       89 SETTABLEKS                       R18 R17 K9 ["color"]
       91 GETTABLEKS                       R18 R1 K10 ["linkUrl"]
       93 SETTABLEKS                       R18 R17 K10 ["linkUrl"]
       95 GETTABLEKS                       R18 R1 K11 ["fontFamily"]
       97 SETTABLEKS                       R18 R17 K11 ["fontFamily"]
       99 LOADN                            R18 0
      100 SETTABLEKS                       R18 R17 K12 ["width"]
      102 SETTABLEKS                       R6 R17 K13 ["sourceNode"]
      104 SETTABLEKS                       R9 R17 K14 ["sourceOffset"]
      106 FASTCALL2                        TABLE_INSERT R16 R17 ; [+3]
      108 GETIMPORT                        R15 K18 [table.insert]
      110 CALL                             R15 2 0
      111 LENGTH                           R15 R14
      112 ADD                              R9 R9 R15
      113 FORGLOOP                         R10 2 ; [-46]
      115 JUMP                             ; [+231]
      116 GETTABLEKS                       R7 R6 K0 ["name"]
      118 JUMPIFNOTEQKS                    R7 K19 ["STYLED_TEXT"] ; [+47]
      120 GETIMPORT                        R7 K21 [table.clone]
      122 MOVE                             R8 R1
      123 CALL                             R7 1 1
      124 GETTABLEKS                       R8 R6 K22 ["attributes"]
      126 JUMPIFNOT                        R8 ; [+4]
      127 GETTABLEKS                       R8 R6 K22 ["attributes"]
      129 GETTABLEKS                       R8 R8 K23 ["style"]
      131 JUMPIFNOTEQKS                    R8 K24 ["BOLD"] ; [+5]
      133 LOADB                            R9 1
      134 SETTABLEKS                       R9 R7 K6 ["bold"]
      136 JUMP                             ; [+20]
      137 JUMPIFNOTEQKS                    R8 K25 ["ITALIC"] ; [+5]
      139 LOADB                            R9 1
      140 SETTABLEKS                       R9 R7 K7 ["italic"]
      142 JUMP                             ; [+14]
      143 JUMPIFNOTEQKS                    R8 K26 ["STRIKE"] ; [+5]
      145 LOADB                            R9 1
      146 SETTABLEKS                       R9 R7 K8 ["strike"]
      148 JUMP                             ; [+8]
      149 JUMPIFNOTEQKS                    R8 K27 ["INLINE_CODE"] ; [+7]
      151 LOADK                            R9 K28 ["#d63384"]
      152 SETTABLEKS                       R9 R7 K9 ["color"]
      154 LOADK                            R9 K29 ["rbxasset://fonts/families/BuilderMono.json"]
      155 SETTABLEKS                       R9 R7 K11 ["fontFamily"]
      157 GETUPVAL                         R9 2
      158 GETTABLEKS                       R10 R6 K30 ["children"]
      160 JUMPIF                           R10 ; [+2]
      161 NEWTABLE                         R10 0 0
      163 MOVE                             R11 R7
      164 CALL                             R9 2 0
      165 JUMP                             ; [+181]
      166 GETTABLEKS                       R7 R6 K0 ["name"]
      168 JUMPIFNOTEQKS                    R7 K31 ["LINK"] ; [+94]
      170 GETIMPORT                        R7 K21 [table.clone]
      172 MOVE                             R8 R1
      173 CALL                             R7 1 1
      174 GETTABLEKS                       R9 R6 K22 ["attributes"]
      176 JUMPIFNOT                        R9 ; [+5]
      177 GETTABLEKS                       R8 R6 K22 ["attributes"]
      179 GETTABLEKS                       R8 R8 K32 ["url"]
      181 JUMPIF                           R8 ; [+4]
      182 GETTABLEKS                       R8 R6 K32 ["url"]
      184 JUMPIF                           R8 ; [+1]
      185 LOADK                            R8 K2 [""]
      186 SETTABLEKS                       R8 R7 K10 ["linkUrl"]
      188 GETTABLEKS                       R8 R6 K30 ["children"]
      190 JUMPIFNOT                        R8 ; [+12]
      191 GETTABLEKS                       R9 R6 K30 ["children"]
      193 LENGTH                           R8 R9
      194 LOADN                            R9 0
      195 JUMPIFNOTLT                      R9 R8 ; [+7]
      197 GETUPVAL                         R8 2
      198 GETTABLEKS                       R9 R6 K30 ["children"]
      200 MOVE                             R10 R7
      201 CALL                             R8 2 0
      202 JUMP                             ; [+144]
      203 GETTABLEKS                       R8 R6 K3 ["text"]
      205 JUMPIFNOT                        R8 ; [+141]
      206 GETUPVAL                         R8 1
      207 GETTABLEKS                       R9 R6 K3 ["text"]
      209 CALL                             R8 1 1
      210 LOADN                            R9 0
      211 MOVE                             R10 R8
      212 LOADNIL                          R11
      213 LOADNIL                          R12
      214 FORGPREP                         R10
      215 GETUPVAL                         R16 0
      216 DUPTABLE                         R17 K15 [{"type", "text", "bold", "italic", "strike", "color", "linkUrl", "fontFamily", "width", "sourceNode", "sourceOffset"}]
      217 LOADK                            R18 K3 ["text"]
      218 SETTABLEKS                       R18 R17 K5 ["type"]
      220 SETTABLEKS                       R14 R17 K3 ["text"]
      222 GETTABLEKS                       R18 R7 K6 ["bold"]
      224 SETTABLEKS                       R18 R17 K6 ["bold"]
      226 GETTABLEKS                       R18 R7 K7 ["italic"]
      228 SETTABLEKS                       R18 R17 K7 ["italic"]
      230 GETTABLEKS                       R18 R7 K8 ["strike"]
      232 SETTABLEKS                       R18 R17 K8 ["strike"]
      234 GETTABLEKS                       R18 R7 K9 ["color"]
      236 SETTABLEKS                       R18 R17 K9 ["color"]
      238 GETTABLEKS                       R18 R7 K10 ["linkUrl"]
      240 SETTABLEKS                       R18 R17 K10 ["linkUrl"]
      242 GETTABLEKS                       R18 R7 K11 ["fontFamily"]
      244 SETTABLEKS                       R18 R17 K11 ["fontFamily"]
      246 LOADN                            R18 0
      247 SETTABLEKS                       R18 R17 K12 ["width"]
      249 SETTABLEKS                       R6 R17 K13 ["sourceNode"]
      251 SETTABLEKS                       R9 R17 K14 ["sourceOffset"]
      253 FASTCALL2                        TABLE_INSERT R16 R17 ; [+3]
      255 GETIMPORT                        R15 K18 [table.insert]
      257 CALL                             R15 2 0
      258 LENGTH                           R15 R14
      259 ADD                              R9 R9 R15
      260 FORGLOOP                         R10 2 ; [-46]
      262 JUMP                             ; [+84]
      263 GETTABLEKS                       R7 R6 K0 ["name"]
      265 JUMPIFNOTEQKS                    R7 K33 ["IMAGE"] ; [+41]
      267 GETTABLEKS                       R8 R6 K22 ["attributes"]
      269 JUMPIFNOT                        R8 ; [+5]
      270 GETTABLEKS                       R7 R6 K22 ["attributes"]
      272 GETTABLEKS                       R7 R7 K32 ["url"]
      274 JUMPIF                           R7 ; [+1]
      275 LOADK                            R7 K2 [""]
      276 GETUPVAL                         R9 0
      277 DUPTABLE                         R10 K37 [{"type", "imageUrl", "text", "width", "imageWidth", "imageHeight", "sourceNode", "sourceOffset"}]
      278 LOADK                            R11 K38 ["image"]
      279 SETTABLEKS                       R11 R10 K5 ["type"]
      281 SETTABLEKS                       R7 R10 K34 ["imageUrl"]
      283 GETTABLEKS                       R11 R6 K3 ["text"]
      285 SETTABLEKS                       R11 R10 K3 ["text"]
      287 LOADN                            R11 0
      288 SETTABLEKS                       R11 R10 K12 ["width"]
      290 LOADN                            R11 16
      291 SETTABLEKS                       R11 R10 K35 ["imageWidth"]
      293 LOADN                            R11 16
      294 SETTABLEKS                       R11 R10 K36 ["imageHeight"]
      296 SETTABLEKS                       R6 R10 K13 ["sourceNode"]
      298 LOADN                            R11 0
      299 SETTABLEKS                       R11 R10 K14 ["sourceOffset"]
      301 FASTCALL2                        TABLE_INSERT R9 R10 ; [+3]
      303 GETIMPORT                        R8 K18 [table.insert]
      305 CALL                             R8 2 0
      306 JUMP                             ; [+40]
      307 GETTABLEKS                       R7 R6 K0 ["name"]
      309 JUMPIFNOTEQKS                    R7 K39 ["BREAK"] ; [+23]
      311 GETUPVAL                         R8 0
      312 DUPTABLE                         R9 K40 [{"type", "text", "width", "sourceNode", "sourceOffset"}]
      313 LOADK                            R10 K3 ["text"]
      314 SETTABLEKS                       R10 R9 K5 ["type"]
      316 LOADK                            R10 K41 ["\n"]
      317 SETTABLEKS                       R10 R9 K3 ["text"]
      319 LOADN                            R10 0
      320 SETTABLEKS                       R10 R9 K12 ["width"]
      322 SETTABLEKS                       R6 R9 K13 ["sourceNode"]
      324 LOADN                            R10 0
      325 SETTABLEKS                       R10 R9 K14 ["sourceOffset"]
      327 FASTCALL2                        TABLE_INSERT R8 R9 ; [+3]
      329 GETIMPORT                        R7 K18 [table.insert]
      331 CALL                             R7 2 0
      332 JUMP                             ; [+14]
      333 GETTABLEKS                       R7 R6 K30 ["children"]
      335 JUMPIFNOT                        R7 ; [+11]
      336 GETTABLEKS                       R8 R6 K30 ["children"]
      338 LENGTH                           R7 R8
      339 LOADN                            R8 0
      340 JUMPIFNOTLT                      R8 R7 ; [+6]
      342 GETUPVAL                         R7 2
      343 GETTABLEKS                       R8 R6 K30 ["children"]
      345 MOVE                             R9 R1
      346 CALL                             R7 2 0
      347 FORGLOOP                         R2 2 ; [-344]
      349 RETURN                           R0 0

PROTO_6:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R1
        3 JUMPIF                           R3 ; [+2]
        4 NEWTABLE                         R3 0 0
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          VAL R2
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          VAL R4
       10 MOVE                             R5 R4
       11 MOVE                             R6 R0
       12 MOVE                             R7 R3
       13 CALL                             R5 2 0
       14 MOVE                             R5 R2
       15 LOADNIL                          R6
       16 LOADNIL                          R7
       17 FORGPREP                         R5
       18 SETTABLEKS                       R8 R9 K0 ["globalIndex"]
       20 FORGLOOP                         R5 2 ; [-3]
       22 RETURN                           R2 1

PROTO_7:
        0 NEWTABLE                         R2 0 0
        2 GETIMPORT                        R3 K2 [string.split]
        4 MOVE                             R4 R0
        5 LOADK                            R5 K3 ["\n"]
        6 CALL                             R3 2 1
        7 MOVE                             R4 R3
        8 LOADNIL                          R5
        9 LOADNIL                          R6
       10 FORGPREP                         R4
       11 DUPTABLE                         R11 K7 [{"name", "children", "text"}]
       12 LOADK                            R12 K8 ["TEXT"]
       13 SETTABLEKS                       R12 R11 K4 ["name"]
       15 NEWTABLE                         R12 0 0
       17 SETTABLEKS                       R12 R11 K5 ["children"]
       19 SETTABLEKS                       R8 R11 K6 ["text"]
       21 FASTCALL2                        TABLE_INSERT R2 R11 ; [+4]
       23 MOVE                             R10 R2
       24 GETIMPORT                        R9 K11 [table.insert]
       26 CALL                             R9 2 0
       27 LENGTH                           R9 R3
       28 JUMPIFNOTLT                      R7 R9 ; [+15]
       30 DUPTABLE                         R11 K12 [{"name", "children"}]
       31 LOADK                            R12 K13 ["BREAK"]
       32 SETTABLEKS                       R12 R11 K4 ["name"]
       34 NEWTABLE                         R12 0 0
       36 SETTABLEKS                       R12 R11 K5 ["children"]
       38 FASTCALL2                        TABLE_INSERT R2 R11 ; [+4]
       40 MOVE                             R10 R2
       41 GETIMPORT                        R9 K11 [table.insert]
       43 CALL                             R9 2 0
       44 FORGLOOP                         R4 2 ; [-34]
       46 GETUPVAL                         R4 0
       47 GETTABLEKS                       R4 R4 K14 ["buildSegments"]
       49 MOVE                             R5 R2
       50 MOVE                             R6 R1
       51 CALL                             R4 2 -1
       52 RETURN                           R4 -1

PROTO_8:
        0 MOVE                             R3 R0
        1 LOADNIL                          R4
        2 LOADNIL                          R5
        3 FORGPREP                         R3
        4 GETTABLEKS                       R8 R7 K0 ["type"]
        6 JUMPIFNOTEQKS                    R8 K1 ["image"] ; [+7]
        8 GETTABLEKS                       R9 R7 K3 ["imageWidth"]
       10 ORK                              R8 R9 K2 [16]
       11 SETTABLEKS                       R8 R7 K4 ["width"]
       13 JUMP                             ; [+25]
       14 GETTABLEKS                       R8 R7 K5 ["text"]
       16 JUMPIFNOTEQKS                    R8 K6 ["\n"] ; [+5]
       18 LOADN                            R8 0
       19 SETTABLEKS                       R8 R7 K4 ["width"]
       21 JUMP                             ; [+17]
       22 GETUPVAL                         R9 0
       23 GETTABLEKS                       R11 R7 K5 ["text"]
       25 ORK                              R10 R11 K7 [""]
       26 MOVE                             R11 R7
       27 CALL                             R9 2 1
       28 GETUPVAL                         R10 1
       29 GETTABLEKS                       R10 R10 K8 ["measureText"]
       31 MOVE                             R11 R9
       32 MOVE                             R12 R1
       33 MOVE                             R13 R2
       34 LOADB                            R14 1
       35 CALL                             R10 4 1
       36 MOVE                             R8 R10
       37 SETTABLEKS                       R8 R7 K4 ["width"]
       39 FORGLOOP                         R3 2 ; [-36]
       41 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["measureLineHeight"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 LENGTH                           R0 R1
        2 LOADN                            R1 0
        3 JUMPIFNOTLT                      R1 R0 ; [+13]
        5 GETUPVAL                         R1 1
        6 GETUPVAL                         R2 0
        7 FASTCALL2                        TABLE_INSERT R1 R2 ; [+3]
        9 GETIMPORT                        R0 K2 [table.insert]
       11 CALL                             R0 2 0
       12 NEWTABLE                         R0 0 0
       14 SETUPVAL                         R0 0
       15 LOADN                            R0 0
       16 SETUPVAL                         R0 2
       17 RETURN                           R0 0

PROTO_11:
        0 LOADN                            R2 0
        1 JUMPIFNOTLE                      R1 R2 ; [+7]
        3 NEWTABLE                         R2 0 1
        5 MOVE                             R3 R0
        6 SETLIST                          R2 R3 1 [1]
        8 RETURN                           R2 1
        9 NEWTABLE                         R2 0 0
       11 NEWTABLE                         R3 0 0
       13 LOADN                            R4 0
       14 NEWCLOSURE                       R5 P0
       15 CAPTURE                          REF R3
       16 CAPTURE                          VAL R2
       17 CAPTURE                          REF R4
       18 MOVE                             R6 R0
       19 LOADNIL                          R7
       20 LOADNIL                          R8
       21 FORGPREP                         R6
       22 GETTABLEKS                       R11 R10 K0 ["type"]
       24 JUMPIFNOTEQKS                    R11 K1 ["text"] ; [+20]
       26 GETTABLEKS                       R11 R10 K1 ["text"]
       28 JUMPIFNOTEQKS                    R11 K2 ["\n"] ; [+16]
       30 LENGTH                           R11 R3
       31 LOADN                            R12 0
       32 JUMPIFNOTLT                      R12 R11 ; [+45]
       34 FASTCALL2                        TABLE_INSERT R2 R3 ; [+5]
       36 MOVE                             R12 R2
       37 MOVE                             R13 R3
       38 GETIMPORT                        R11 K5 [table.insert]
       40 CALL                             R11 2 0
       41 NEWTABLE                         R3 0 0
       43 LOADN                            R4 0
       44 JUMP                             ; [+33]
       45 GETTABLEKS                       R12 R10 K6 ["width"]
       47 ADD                              R11 R4 R12
       48 JUMPIFNOTLT                      R1 R11 ; [+19]
       50 LENGTH                           R11 R3
       51 LOADN                            R12 0
       52 JUMPIFNOTLT                      R12 R11 ; [+15]
       54 LENGTH                           R11 R3
       55 LOADN                            R12 0
       56 JUMPIFNOTLT                      R12 R11 ; [+11]
       58 FASTCALL2                        TABLE_INSERT R2 R3 ; [+5]
       60 MOVE                             R12 R2
       61 MOVE                             R13 R3
       62 GETIMPORT                        R11 K5 [table.insert]
       64 CALL                             R11 2 0
       65 NEWTABLE                         R3 0 0
       67 LOADN                            R4 0
       68 FASTCALL2                        TABLE_INSERT R3 R10 ; [+5]
       70 MOVE                             R12 R3
       71 MOVE                             R13 R10
       72 GETIMPORT                        R11 K5 [table.insert]
       74 CALL                             R11 2 0
       75 GETTABLEKS                       R11 R10 K6 ["width"]
       77 ADD                              R4 R4 R11
       78 FORGLOOP                         R6 2 ; [-57]
       80 LENGTH                           R6 R3
       81 LOADN                            R7 0
       82 JUMPIFNOTLT                      R7 R6 ; [+11]
       84 FASTCALL2                        TABLE_INSERT R2 R3 ; [+5]
       86 MOVE                             R7 R2
       87 MOVE                             R8 R3
       88 GETIMPORT                        R6 K5 [table.insert]
       90 CALL                             R6 2 0
       91 NEWTABLE                         R3 0 0
       93 LOADN                            R4 0
       94 CLOSEUPVALS                      R3
       95 RETURN                           R2 1

PROTO_12:
        0 LENGTH                           R5 R1
        1 JUMPIFEQKN                       R5 K0 [0] ; [+4]
        3 LOADN                            R5 0
        4 JUMPIFNOTLE                      R2 R5 ; [+3]
        6 LOADNIL                          R5
        7 RETURN                           R5 1
        8 GETTABLEKS                       R8 R0 K2 ["Y"]
       10 DIV                              R7 R8 R2
       11 FASTCALL1                        MATH_FLOOR R7 ; [+2]
       12 GETIMPORT                        R6 K5 [math.floor]
       14 CALL                             R6 1 1
       15 ADDK                             R5 R6 K1 [1]
       16 LOADN                            R6 1
       17 JUMPIFLT                         R5 R6 ; [+4]
       19 LENGTH                           R6 R1
       20 JUMPIFNOTLT                      R6 R5 ; [+3]
       22 LOADNIL                          R6
       23 RETURN                           R6 1
       24 GETTABLE                         R6 R1 R5
       25 JUMPIFNOT                        R3 ; [+1]
       26 JUMPIF                           R4 ; [+26]
       27 LOADN                            R7 0
       28 MOVE                             R8 R6
       29 LOADNIL                          R9
       30 LOADNIL                          R10
       31 FORGPREP                         R8
       32 GETTABLEKS                       R13 R0 K6 ["X"]
       34 JUMPIFNOTLE                      R7 R13 ; [+11]
       36 GETTABLEKS                       R13 R0 K6 ["X"]
       38 GETTABLEKS                       R15 R12 K7 ["width"]
       40 ADD                              R14 R7 R15
       41 JUMPIFNOTLT                      R13 R14 ; [+4]
       43 GETTABLEKS                       R13 R12 K8 ["linkUrl"]
       45 RETURN                           R13 1
       46 GETTABLEKS                       R13 R12 K7 ["width"]
       48 ADD                              R7 R7 R13
       49 FORGLOOP                         R8 2 ; [-18]
       51 LOADNIL                          R8
       52 RETURN                           R8 1
       53 MOVE                             R7 R6
       54 LOADNIL                          R8
       55 LOADNIL                          R9
       56 FORGPREP                         R7
       57 GETTABLEKS                       R12 R11 K9 ["type"]
       59 JUMPIFNOTEQKS                    R12 K10 ["text"] ; [+32]
       61 GETTABLEKS                       R12 R11 K10 ["text"]
       63 JUMPIFNOT                        R12 ; [+28]
       64 GETTABLEKS                       R12 R11 K10 ["text"]
       66 JUMPIFEQKS                       R12 K11 ["\n"] ; [+25]
       68 GETTABLEKS                       R12 R11 K12 ["globalIndex"]
       70 GETUPVAL                         R13 0
       71 MOVE                             R14 R6
       72 MOVE                             R15 R12
       73 GETTABLEKS                       R17 R11 K10 ["text"]
       75 LENGTH                           R16 R17
       76 CALL                             R13 3 1
       77 GETUPVAL                         R14 1
       78 GETTABLEKS                       R14 R14 K13 ["measureText"]
       80 MOVE                             R15 R13
       81 MOVE                             R16 R3
       82 MOVE                             R17 R4
       83 LOADB                            R18 1
       84 CALL                             R14 4 1
       85 GETTABLEKS                       R15 R0 K6 ["X"]
       87 JUMPIFNOTLT                      R15 R14 ; [+4]
       89 GETTABLEKS                       R15 R11 K8 ["linkUrl"]
       91 RETURN                           R15 1
       92 FORGLOOP                         R7 2 ; [-36]
       94 LOADNIL                          R7
       95 RETURN                           R7 1

PROTO_13:
        0 LENGTH                           R5 R1
        1 JUMPIFEQKN                       R5 K0 [0] ; [+4]
        3 LOADN                            R5 0
        4 JUMPIFNOTLE                      R2 R5 ; [+4]
        6 LOADNIL                          R5
        7 LOADNIL                          R6
        8 RETURN                           R5 2
        9 GETTABLEKS                       R8 R0 K2 ["Y"]
       11 DIV                              R7 R8 R2
       12 FASTCALL1                        MATH_FLOOR R7 ; [+2]
       13 GETIMPORT                        R6 K5 [math.floor]
       15 CALL                             R6 1 1
       16 ADDK                             R5 R6 K1 [1]
       17 LOADN                            R6 1
       18 JUMPIFNOTLT                      R5 R6 ; [+3]
       20 LOADN                            R5 1
       21 JUMP                             ; [+4]
       22 LENGTH                           R6 R1
       23 JUMPIFNOTLT                      R6 R5 ; [+2]
       25 LENGTH                           R5 R1
       26 GETTABLE                         R6 R1 R5
       27 GETTABLEKS                       R7 R0 K6 ["X"]
       29 LOADNIL                          R8
       30 LOADN                            R9 0
       31 MOVE                             R10 R6
       32 LOADNIL                          R11
       33 LOADNIL                          R12
       34 FORGPREP                         R10
       35 GETTABLEKS                       R15 R14 K7 ["type"]
       37 JUMPIFNOTEQKS                    R15 K8 ["text"] ; [+49]
       39 GETTABLEKS                       R15 R14 K8 ["text"]
       41 JUMPIFNOT                        R15 ; [+45]
       42 GETTABLEKS                       R15 R14 K8 ["text"]
       44 JUMPIFEQKS                       R15 K9 ["\n"] ; [+42]
       46 GETTABLEKS                       R15 R14 K10 ["globalIndex"]
       48 GETUPVAL                         R16 0
       49 MOVE                             R17 R6
       50 MOVE                             R18 R15
       51 GETTABLEKS                       R20 R14 K8 ["text"]
       53 LENGTH                           R19 R20
       54 CALL                             R16 3 1
       55 GETUPVAL                         R17 1
       56 GETTABLEKS                       R17 R17 K11 ["measureText"]
       58 MOVE                             R18 R16
       59 MOVE                             R19 R3
       60 MOVE                             R20 R4
       61 LOADB                            R21 1
       62 CALL                             R17 4 1
       63 JUMPIFNOTLT                      R7 R17 ; [+23]
       65 MOVE                             R8 R14
       66 GETUPVAL                         R18 0
       67 MOVE                             R19 R6
       68 MOVE                             R20 R15
       69 LOADN                            R21 0
       70 CALL                             R18 3 1
       71 LENGTH                           R19 R18
       72 LOADN                            R20 0
       73 JUMPIFNOTLT                      R20 R19 ; [+11]
       75 GETUPVAL                         R19 1
       76 GETTABLEKS                       R19 R19 K11 ["measureText"]
       78 MOVE                             R20 R18
       79 MOVE                             R21 R3
       80 MOVE                             R22 R4
       81 LOADB                            R23 1
       82 CALL                             R19 4 1
       83 MOVE                             R9 R19
       84 JUMP                             ; [+4]
       85 LOADN                            R9 0
       86 JUMP                             ; [+2]
       87 FORGLOOP                         R10 2 ; [-53]
       89 JUMPIF                           R8 ; [+16]
       90 LENGTH                           R11 R6
       91 GETTABLE                         R10 R6 R11
       92 JUMPIFNOT                        R10 ; [+10]
       93 GETTABLEKS                       R11 R10 K10 ["globalIndex"]
       95 JUMPIFNOT                        R11 ; [+7]
       96 GETTABLEKS                       R11 R10 K10 ["globalIndex"]
       98 GETTABLEKS                       R14 R10 K8 ["text"]
      100 ORK                              R13 R14 K12 [""]
      101 LENGTH                           R12 R13
      102 RETURN                           R11 2
      103 LOADNIL                          R11
      104 LOADNIL                          R12
      105 RETURN                           R11 2
      106 GETTABLEKS                       R10 R8 K7 ["type"]
      108 JUMPIFNOTEQKS                    R10 K8 ["text"] ; [+8]
      110 GETTABLEKS                       R10 R8 K8 ["text"]
      112 JUMPIFNOT                        R10 ; [+4]
      113 GETTABLEKS                       R10 R8 K8 ["text"]
      115 JUMPIFNOTEQKS                    R10 K9 ["\n"] ; [+5]
      117 GETTABLEKS                       R10 R8 K10 ["globalIndex"]
      119 LOADN                            R11 0
      120 RETURN                           R10 2
      121 GETTABLEKS                       R10 R8 K8 ["text"]
      123 GETTABLEKS                       R11 R8 K10 ["globalIndex"]
      125 LOADN                            R12 0
      126 LENGTH                           R13 R10
      127 JUMPIFNOTLT                      R12 R13 ; [+32]
      129 ADD                              R16 R12 R13
      130 DIVK                             R15 R16 K13 [2]
      131 FASTCALL1                        MATH_FLOOR R15 ; [+2]
      132 GETIMPORT                        R14 K5 [math.floor]
      134 CALL                             R14 1 1
      135 GETUPVAL                         R15 0
      136 MOVE                             R16 R6
      137 MOVE                             R17 R11
      138 MOVE                             R18 R14
      139 CALL                             R15 3 1
      140 LENGTH                           R17 R15
      141 LOADN                            R18 0
      142 JUMPIFNOTLT                      R18 R17 ; [+10]
      144 GETUPVAL                         R16 1
      145 GETTABLEKS                       R16 R16 K11 ["measureText"]
      147 MOVE                             R17 R15
      148 MOVE                             R18 R3
      149 MOVE                             R19 R4
      150 LOADB                            R20 1
      151 CALL                             R16 4 1
      152 JUMP                             ; [+1]
      153 LOADN                            R16 0
      154 JUMPIFNOTLT                      R16 R7 ; [+3]
      156 ADDK                             R12 R14 K1 [1]
      157 JUMP                             ; [+1]
      158 MOVE                             R13 R14
      159 JUMPBACK                         ; [-33]
      160 GETTABLEKS                       R14 R8 K10 ["globalIndex"]
      162 MOVE                             R15 R12
      163 RETURN                           R14 2

PROTO_14:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R0
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 GETTABLEKS                       R8 R7 K0 ["type"]
        8 JUMPIFEQKS                       R8 K1 ["image"] ; [+26]
       10 GETTABLEKS                       R8 R7 K2 ["text"]
       12 JUMPIFNOTEQKS                    R8 K3 ["\n"] ; [+9]
       14 FASTCALL2K                       TABLE_INSERT R2 K3 ; [+5]
       16 MOVE                             R9 R2
       17 LOADK                            R10 K3 ["\n"]
       18 GETIMPORT                        R8 K6 [table.insert]
       20 CALL                             R8 2 0
       21 JUMP                             ; [+13]
       22 GETUPVAL                         R10 0
       23 GETTABLEKS                       R12 R7 K2 ["text"]
       25 ORK                              R11 R12 K7 [""]
       26 MOVE                             R12 R7
       27 MOVE                             R13 R1
       28 CALL                             R10 3 1
       29 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       31 MOVE                             R9 R2
       32 GETIMPORT                        R8 K6 [table.insert]
       34 CALL                             R8 2 0
       35 FORGLOOP                         R3 2 ; [-30]
       37 GETIMPORT                        R3 K9 [table.concat]
       39 MOVE                             R4 R2
       40 CALL                             R3 1 -1
       41 RETURN                           R3 -1

PROTO_15:
        0 NEWTABLE                         R9 0 0
        2 MOVE                             R10 R0
        3 LOADNIL                          R11
        4 LOADNIL                          R12
        5 FORGPREP                         R10
        6 SUBK                             R16 R13 K0 [1]
        7 MUL                              R15 R16 R1
        8 GETTABLEN                        R17 R14 1
        9 JUMPIFNOT                        R17 ; [+4]
       10 GETTABLEN                        R16 R14 1
       11 GETTABLEKS                       R16 R16 K1 ["globalIndex"]
       13 JUMPIF                           R16 ; [+1]
       14 LOADN                            R16 0
       15 LENGTH                           R19 R14
       16 GETTABLE                         R18 R14 R19
       17 JUMPIFNOT                        R18 ; [+5]
       18 LENGTH                           R18 R14
       19 GETTABLE                         R17 R14 R18
       20 GETTABLEKS                       R17 R17 K1 ["globalIndex"]
       22 JUMPIF                           R17 ; [+1]
       23 LOADN                            R17 0
       24 JUMPIFLT                         R17 R3 ; [+126]
       26 JUMPIFLT                         R5 R16 ; [+124]
       28 LOADNIL                          R18
       29 LOADNIL                          R19
       30 JUMPIFNOTLE                      R3 R16 ; [+5]
       32 JUMPIFNOTEQKN                    R4 K2 [0] ; [+3]
       34 LOADN                            R18 0
       35 JUMP                             ; [+26]
       36 JUMPIFNOTLE                      R16 R3 ; [+24]
       38 JUMPIFNOTLE                      R3 R17 ; [+22]
       40 GETUPVAL                         R20 0
       41 MOVE                             R21 R14
       42 MOVE                             R22 R3
       43 MOVE                             R23 R4
       44 CALL                             R20 3 1
       45 LENGTH                           R21 R20
       46 LOADN                            R22 0
       47 JUMPIFNOTLT                      R22 R21 ; [+11]
       49 GETUPVAL                         R21 1
       50 GETTABLEKS                       R21 R21 K3 ["measureText"]
       52 MOVE                             R22 R20
       53 MOVE                             R23 R7
       54 MOVE                             R24 R8
       55 LOADB                            R25 1
       56 CALL                             R21 4 1
       57 MOVE                             R18 R21
       58 JUMP                             ; [+3]
       59 LOADN                            R18 0
       60 JUMP                             ; [+1]
       61 LOADN                            R18 0
       62 JUMPIFNOTLE                      R17 R5 ; [+50]
       64 LENGTH                           R21 R14
       65 GETTABLE                         R20 R14 R21
       66 JUMPIFNOTLT                      R17 R5 ; [+25]
       68 GETUPVAL                         R21 0
       69 MOVE                             R22 R14
       70 MOVE                             R23 R17
       71 GETTABLEKS                       R26 R20 K5 ["text"]
       73 ORK                              R25 R26 K4 [""]
       74 LENGTH                           R24 R25
       75 CALL                             R21 3 1
       76 LENGTH                           R22 R21
       77 LOADN                            R23 0
       78 JUMPIFNOTLT                      R23 R22 ; [+11]
       80 GETUPVAL                         R22 1
       81 GETTABLEKS                       R22 R22 K3 ["measureText"]
       83 MOVE                             R23 R21
       84 MOVE                             R24 R7
       85 MOVE                             R25 R8
       86 LOADB                            R26 1
       87 CALL                             R22 4 1
       88 MOVE                             R19 R22
       89 JUMP                             ; [+43]
       90 LOADN                            R19 0
       91 JUMP                             ; [+41]
       92 GETUPVAL                         R21 0
       93 MOVE                             R22 R14
       94 MOVE                             R23 R5
       95 MOVE                             R24 R6
       96 CALL                             R21 3 1
       97 LENGTH                           R22 R21
       98 LOADN                            R23 0
       99 JUMPIFNOTLT                      R23 R22 ; [+11]
      101 GETUPVAL                         R22 1
      102 GETTABLEKS                       R22 R22 K3 ["measureText"]
      104 MOVE                             R23 R21
      105 MOVE                             R24 R7
      106 MOVE                             R25 R8
      107 LOADB                            R26 1
      108 CALL                             R22 4 1
      109 MOVE                             R19 R22
      110 JUMP                             ; [+22]
      111 LOADN                            R19 0
      112 JUMP                             ; [+20]
      113 GETUPVAL                         R20 0
      114 MOVE                             R21 R14
      115 MOVE                             R22 R5
      116 MOVE                             R23 R6
      117 CALL                             R20 3 1
      118 LENGTH                           R21 R20
      119 LOADN                            R22 0
      120 JUMPIFNOTLT                      R22 R21 ; [+11]
      122 GETUPVAL                         R21 1
      123 GETTABLEKS                       R21 R21 K3 ["measureText"]
      125 MOVE                             R22 R20
      126 MOVE                             R23 R7
      127 MOVE                             R24 R8
      128 LOADB                            R25 1
      129 CALL                             R21 4 1
      130 MOVE                             R19 R21
      131 JUMP                             ; [+1]
      132 LOADN                            R19 0
      133 JUMPIFNOTLT                      R18 R19 ; [+17]
      135 DUPTABLE                         R22 K10 [{"x", "y", "width", "height"}]
      136 SETTABLEKS                       R18 R22 K6 ["x"]
      138 SETTABLEKS                       R15 R22 K7 ["y"]
      140 SUB                              R23 R19 R18
      141 SETTABLEKS                       R23 R22 K8 ["width"]
      143 SETTABLEKS                       R1 R22 K9 ["height"]
      145 FASTCALL2                        TABLE_INSERT R9 R22 ; [+4]
      147 MOVE                             R21 R9
      148 GETIMPORT                        R20 K13 [table.insert]
      150 CALL                             R20 2 0
      151 FORGLOOP                         R10 2 ; [-146]
      153 RETURN                           R9 1

PROTO_16:
        0 LENGTH                           R6 R0
        1 JUMPIFNOTEQKN                    R6 K0 [0] ; [+11]
        3 DUPTABLE                         R6 K4 [{"x", "y", "height"}]
        4 LOADN                            R7 0
        5 SETTABLEKS                       R7 R6 K1 ["x"]
        7 LOADN                            R7 0
        8 SETTABLEKS                       R7 R6 K2 ["y"]
       10 SETTABLEKS                       R1 R6 K3 ["height"]
       12 RETURN                           R6 1
       13 MOVE                             R6 R0
       14 LOADNIL                          R7
       15 LOADNIL                          R8
       16 FORGPREP                         R6
       17 MOVE                             R11 R10
       18 LOADNIL                          R12
       19 LOADNIL                          R13
       20 FORGPREP                         R11
       21 GETTABLEKS                       R16 R15 K5 ["globalIndex"]
       23 JUMPIFNOTEQ                      R16 R2 ; [+30]
       25 GETUPVAL                         R16 0
       26 MOVE                             R17 R10
       27 MOVE                             R18 R2
       28 MOVE                             R19 R3
       29 CALL                             R16 3 1
       30 LENGTH                           R18 R16
       31 LOADN                            R19 0
       32 JUMPIFNOTLT                      R19 R18 ; [+10]
       34 GETUPVAL                         R17 1
       35 GETTABLEKS                       R17 R17 K6 ["measureText"]
       37 MOVE                             R18 R16
       38 MOVE                             R19 R4
       39 MOVE                             R20 R5
       40 LOADB                            R21 1
       41 CALL                             R17 4 1
       42 JUMP                             ; [+1]
       43 LOADN                            R17 0
       44 DUPTABLE                         R18 K4 [{"x", "y", "height"}]
       45 SETTABLEKS                       R17 R18 K1 ["x"]
       47 SUBK                             R20 R9 K7 [1]
       48 MUL                              R19 R20 R1
       49 SETTABLEKS                       R19 R18 K2 ["y"]
       51 SETTABLEKS                       R1 R18 K3 ["height"]
       53 RETURN                           R18 1
       54 FORGLOOP                         R11 2 ; [-34]
       56 FORGLOOP                         R6 2 ; [-40]
       58 LOADNIL                          R6
       59 RETURN                           R6 1

PROTO_17:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETTABLEKS                       R7 R6 K0 ["type"]
        8 JUMPIFNOTEQKS                    R7 K1 ["image"] ; [+8]
       10 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       12 MOVE                             R8 R1
       13 MOVE                             R9 R6
       14 GETIMPORT                        R7 K4 [table.insert]
       16 CALL                             R7 2 0
       17 FORGLOOP                         R2 2 ; [-12]
       19 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["TextMeasure"]
        9 CALL                             R0 1 1
       10 NEWTABLE                         R1 16 0
       12 DUPCLOSURE                       R2 K6 [PROTO_0]
       13 CAPTURE                          VAL R0
       14 DUPCLOSURE                       R3 K7 [PROTO_1]
       15 DUPCLOSURE                       R4 K8 [PROTO_2]
       16 DUPCLOSURE                       R5 K9 [PROTO_3]
       17 CAPTURE                          VAL R4
       18 DUPCLOSURE                       R6 K10 [PROTO_4]
       19 DUPCLOSURE                       R7 K11 [PROTO_6]
       20 CAPTURE                          VAL R6
       21 SETTABLEKS                       R7 R1 K12 ["buildSegments"]
       23 DUPCLOSURE                       R7 K13 [PROTO_7]
       24 CAPTURE                          VAL R1
       25 SETTABLEKS                       R7 R1 K14 ["buildTextSegments"]
       27 DUPCLOSURE                       R7 K15 [PROTO_8]
       28 CAPTURE                          VAL R4
       29 CAPTURE                          VAL R0
       30 SETTABLEKS                       R7 R1 K16 ["measureSegments"]
       32 DUPCLOSURE                       R7 K17 [PROTO_9]
       33 CAPTURE                          VAL R0
       34 SETTABLEKS                       R7 R1 K18 ["measureLineHeight"]
       36 DUPCLOSURE                       R7 K19 [PROTO_11]
       37 SETTABLEKS                       R7 R1 K20 ["layoutSegments"]
       39 DUPCLOSURE                       R7 K21 [PROTO_12]
       40 CAPTURE                          VAL R5
       41 CAPTURE                          VAL R0
       42 SETTABLEKS                       R7 R1 K22 ["hitTest"]
       44 DUPCLOSURE                       R7 K23 [PROTO_13]
       45 CAPTURE                          VAL R5
       46 CAPTURE                          VAL R0
       47 SETTABLEKS                       R7 R1 K24 ["charHitTest"]
       49 DUPCLOSURE                       R7 K25 [PROTO_14]
       50 CAPTURE                          VAL R4
       51 SETTABLEKS                       R7 R1 K26 ["buildRichText"]
       53 DUPCLOSURE                       R7 K27 [PROTO_15]
       54 CAPTURE                          VAL R5
       55 CAPTURE                          VAL R0
       56 SETTABLEKS                       R7 R1 K28 ["computeSelectionRects"]
       58 DUPCLOSURE                       R7 K29 [PROTO_16]
       59 CAPTURE                          VAL R5
       60 CAPTURE                          VAL R0
       61 SETTABLEKS                       R7 R1 K30 ["computeCursorPosition"]
       63 DUPCLOSURE                       R7 K31 [PROTO_17]
       64 SETTABLEKS                       R7 R1 K32 ["getImageSegments"]
       66 RETURN                           R1 1
