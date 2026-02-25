PROTO_0:
        0 NEWTABLE                         R1 8 0
        2 DUPTABLE                         R2 K3 [{"type", "open", "close"}]
        3 LOADK                            R3 K4 ["negate"]
        4 SETTABLEKS                       R3 R2 K0 ["type"]
        6 LOADK                            R3 K5 ["(?:(?!(?:"]
        7 SETTABLEKS                       R3 R2 K1 ["open"]
        9 LOADK                            R3 K6 ["))%s)"]
       10 GETTABLEKS                       R5 R0 K7 ["STAR"]
       12 NAMECALL                         R3 R3 K8 ["format"]
       14 CALL                             R3 2 1
       15 SETTABLEKS                       R3 R2 K2 ["close"]
       17 SETTABLEKS                       R2 R1 K9 ["!"]
       19 DUPTABLE                         R2 K3 [{"type", "open", "close"}]
       20 LOADK                            R3 K10 ["qmark"]
       21 SETTABLEKS                       R3 R2 K0 ["type"]
       23 LOADK                            R3 K11 ["(?:"]
       24 SETTABLEKS                       R3 R2 K1 ["open"]
       26 LOADK                            R3 K12 [")?"]
       27 SETTABLEKS                       R3 R2 K2 ["close"]
       29 SETTABLEKS                       R2 R1 K13 ["?"]
       31 DUPTABLE                         R2 K3 [{"type", "open", "close"}]
       32 LOADK                            R3 K14 ["plus"]
       33 SETTABLEKS                       R3 R2 K0 ["type"]
       35 LOADK                            R3 K11 ["(?:"]
       36 SETTABLEKS                       R3 R2 K1 ["open"]
       38 LOADK                            R3 K15 [")+"]
       39 SETTABLEKS                       R3 R2 K2 ["close"]
       41 SETTABLEKS                       R2 R1 K16 ["+"]
       43 DUPTABLE                         R2 K3 [{"type", "open", "close"}]
       44 LOADK                            R3 K17 ["star"]
       45 SETTABLEKS                       R3 R2 K0 ["type"]
       47 LOADK                            R3 K11 ["(?:"]
       48 SETTABLEKS                       R3 R2 K1 ["open"]
       50 LOADK                            R3 K18 [")*"]
       51 SETTABLEKS                       R3 R2 K2 ["close"]
       53 SETTABLEKS                       R2 R1 K19 ["*"]
       55 DUPTABLE                         R2 K3 [{"type", "open", "close"}]
       56 LOADK                            R3 K20 ["at"]
       57 SETTABLEKS                       R3 R2 K0 ["type"]
       59 LOADK                            R3 K11 ["(?:"]
       60 SETTABLEKS                       R3 R2 K1 ["open"]
       62 LOADK                            R3 K21 [")"]
       63 SETTABLEKS                       R3 R2 K2 ["close"]
       65 SETTABLEKS                       R2 R1 K22 ["@"]
       67 RETURN                           R1 1

PROTO_1:
        0 JUMPIFNOTEQKB                    R0 TRUE ; [+3]
        2 GETUPVAL                         R1 0
        3 RETURN                           R1 1
        4 GETUPVAL                         R1 1
        5 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETIMPORT                        R2 K4 [require]
        9 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
       11 CALL                             R2 1 1
       12 GETTABLEKS                       R3 R2 K6 ["Object"]
       14 GETIMPORT                        R4 K4 [require]
       16 GETTABLEKS                       R5 R1 K7 ["RegExp"]
       18 CALL                             R4 1 1
       19 LOADK                            R5 K8 ["[^%s]"]
       20 LOADK                            R7 K9 ["\\\\/"]
       21 NAMECALL                         R5 R5 K10 ["format"]
       23 CALL                             R5 2 1
       24 LOADK                            R6 K11 ["(?:%s|$)"]
       25 LOADK                            R8 K12 ["\\/"]
       26 NAMECALL                         R6 R6 K10 ["format"]
       28 CALL                             R6 2 1
       29 LOADK                            R7 K13 ["(?:^|%s)"]
       30 LOADK                            R9 K12 ["\\/"]
       31 NAMECALL                         R7 R7 K10 ["format"]
       33 CALL                             R7 2 1
       34 LOADK                            R8 K14 ["%s{1,2}%s"]
       35 LOADK                            R10 K15 ["\\."]
       36 MOVE                             R11 R6
       37 NAMECALL                         R8 R8 K10 ["format"]
       39 CALL                             R8 3 1
       40 LOADK                            R9 K16 ["(?!%s)"]
       41 LOADK                            R11 K15 ["\\."]
       42 NAMECALL                         R9 R9 K10 ["format"]
       44 CALL                             R9 2 1
       45 LOADK                            R10 K17 ["(?!%s%s)"]
       46 MOVE                             R12 R7
       47 MOVE                             R13 R8
       48 NAMECALL                         R10 R10 K10 ["format"]
       50 CALL                             R10 3 1
       51 LOADK                            R11 K18 ["(?!%s{0,1}%s)"]
       52 LOADK                            R13 K15 ["\\."]
       53 MOVE                             R14 R6
       54 NAMECALL                         R11 R11 K10 ["format"]
       56 CALL                             R11 3 1
       57 LOADK                            R12 K16 ["(?!%s)"]
       58 MOVE                             R14 R8
       59 NAMECALL                         R12 R12 K10 ["format"]
       61 CALL                             R12 2 1
       62 LOADK                            R13 K19 ["[^.%s]"]
       63 LOADK                            R15 K12 ["\\/"]
       64 NAMECALL                         R13 R13 K10 ["format"]
       66 CALL                             R13 2 1
       67 LOADK                            R14 K20 ["%s*?"]
       68 LOADK                            R16 K21 ["[^/]"]
       69 NAMECALL                         R14 R14 K10 ["format"]
       71 CALL                             R14 2 1
       72 DUPTABLE                         R15 K37 [{"DOT_LITERAL", "PLUS_LITERAL", "QMARK_LITERAL", "SLASH_LITERAL", "ONE_CHAR", "QMARK", "END_ANCHOR", "DOTS_SLASH", "NO_DOT", "NO_DOTS", "NO_DOT_SLASH", "NO_DOTS_SLASH", "QMARK_NO_DOT", "STAR", "START_ANCHOR"}]
       73 LOADK                            R16 K15 ["\\."]
       74 SETTABLEKS                       R16 R15 K22 ["DOT_LITERAL"]
       76 LOADK                            R16 K38 ["\\+"]
       77 SETTABLEKS                       R16 R15 K23 ["PLUS_LITERAL"]
       79 LOADK                            R16 K39 ["\\?"]
       80 SETTABLEKS                       R16 R15 K24 ["QMARK_LITERAL"]
       82 LOADK                            R16 K12 ["\\/"]
       83 SETTABLEKS                       R16 R15 K25 ["SLASH_LITERAL"]
       85 LOADK                            R16 K40 ["(?=.)"]
       86 SETTABLEKS                       R16 R15 K26 ["ONE_CHAR"]
       88 LOADK                            R16 K21 ["[^/]"]
       89 SETTABLEKS                       R16 R15 K27 ["QMARK"]
       91 SETTABLEKS                       R6 R15 K28 ["END_ANCHOR"]
       93 SETTABLEKS                       R8 R15 K29 ["DOTS_SLASH"]
       95 SETTABLEKS                       R9 R15 K30 ["NO_DOT"]
       97 SETTABLEKS                       R10 R15 K31 ["NO_DOTS"]
       99 SETTABLEKS                       R11 R15 K32 ["NO_DOT_SLASH"]
      101 SETTABLEKS                       R12 R15 K33 ["NO_DOTS_SLASH"]
      103 SETTABLEKS                       R13 R15 K34 ["QMARK_NO_DOT"]
      105 SETTABLEKS                       R14 R15 K35 ["STAR"]
      107 SETTABLEKS                       R7 R15 K36 ["START_ANCHOR"]
      109 GETTABLEKS                       R16 R3 K41 ["assign"]
      111 NEWTABLE                         R17 0 0
      113 MOVE                             R18 R15
      114 DUPTABLE                         R19 K42 [{"SLASH_LITERAL", "QMARK", "STAR", "DOTS_SLASH", "NO_DOT", "NO_DOTS", "NO_DOT_SLASH", "NO_DOTS_SLASH", "QMARK_NO_DOT", "START_ANCHOR", "END_ANCHOR"}]
      115 LOADK                            R20 K43 ["[%s]"]
      116 LOADK                            R22 K9 ["\\\\/"]
      117 NAMECALL                         R20 R20 K10 ["format"]
      119 CALL                             R20 2 1
      120 SETTABLEKS                       R20 R19 K25 ["SLASH_LITERAL"]
      122 SETTABLEKS                       R5 R19 K27 ["QMARK"]
      124 LOADK                            R20 K20 ["%s*?"]
      125 MOVE                             R22 R5
      126 NAMECALL                         R20 R20 K10 ["format"]
      128 CALL                             R20 2 1
      129 SETTABLEKS                       R20 R19 K35 ["STAR"]
      131 LOADK                            R20 K44 ["%s{1,2}(?:[%s]|$)"]
      132 LOADK                            R22 K15 ["\\."]
      133 LOADK                            R23 K9 ["\\\\/"]
      134 NAMECALL                         R20 R20 K10 ["format"]
      136 CALL                             R20 3 1
      137 SETTABLEKS                       R20 R19 K29 ["DOTS_SLASH"]
      139 LOADK                            R20 K16 ["(?!%s)"]
      140 LOADK                            R22 K15 ["\\."]
      141 NAMECALL                         R20 R20 K10 ["format"]
      143 CALL                             R20 2 1
      144 SETTABLEKS                       R20 R19 K30 ["NO_DOT"]
      146 LOADK                            R20 K45 ["(?!(?:^|[%s])%s{1,2}(?:[%s]|$))"]
      147 LOADK                            R22 K9 ["\\\\/"]
      148 LOADK                            R23 K15 ["\\."]
      149 LOADK                            R24 K9 ["\\\\/"]
      150 NAMECALL                         R20 R20 K10 ["format"]
      152 CALL                             R20 4 1
      153 SETTABLEKS                       R20 R19 K31 ["NO_DOTS"]
      155 LOADK                            R20 K46 ["(?!%s{0,1}(?:[%s]|$))"]
      156 LOADK                            R22 K15 ["\\."]
      157 LOADK                            R23 K9 ["\\\\/"]
      158 NAMECALL                         R20 R20 K10 ["format"]
      160 CALL                             R20 3 1
      161 SETTABLEKS                       R20 R19 K32 ["NO_DOT_SLASH"]
      163 LOADK                            R20 K47 ["(?!%s{1,2}(?:[%s]|$))"]
      164 LOADK                            R22 K15 ["\\."]
      165 LOADK                            R23 K9 ["\\\\/"]
      166 NAMECALL                         R20 R20 K10 ["format"]
      168 CALL                             R20 3 1
      169 SETTABLEKS                       R20 R19 K33 ["NO_DOTS_SLASH"]
      171 LOADK                            R20 K19 ["[^.%s]"]
      172 LOADK                            R22 K9 ["\\\\/"]
      173 NAMECALL                         R20 R20 K10 ["format"]
      175 CALL                             R20 2 1
      176 SETTABLEKS                       R20 R19 K34 ["QMARK_NO_DOT"]
      178 LOADK                            R20 K48 ["(?:^|[%s])"]
      179 LOADK                            R22 K9 ["\\\\/"]
      180 NAMECALL                         R20 R20 K10 ["format"]
      182 CALL                             R20 2 1
      183 SETTABLEKS                       R20 R19 K36 ["START_ANCHOR"]
      185 LOADK                            R20 K49 ["(?:[%s]|$)"]
      186 LOADK                            R22 K9 ["\\\\/"]
      187 NAMECALL                         R20 R20 K10 ["format"]
      189 CALL                             R20 2 1
      190 SETTABLEKS                       R20 R19 K28 ["END_ANCHOR"]
      192 CALL                             R16 3 1
      193 DUPTABLE                         R17 K64 [{"alnum", "alpha", "ascii", "blank", "cntrl", "digit", "graph", "lower", "print", "punct", "space", "upper", "word", "xdigit"}]
      194 LOADK                            R18 K65 ["a-zA-Z0-9"]
      195 SETTABLEKS                       R18 R17 K50 ["alnum"]
      197 LOADK                            R18 K66 ["a-zA-Z"]
      198 SETTABLEKS                       R18 R17 K51 ["alpha"]
      200 LOADK                            R18 K67 ["\\x00-\\x7F"]
      201 SETTABLEKS                       R18 R17 K52 ["ascii"]
      203 LOADK                            R18 K68 [" \\t"]
      204 SETTABLEKS                       R18 R17 K53 ["blank"]
      206 LOADK                            R18 K69 ["\\x00-\\x1F\\x7F"]
      207 SETTABLEKS                       R18 R17 K54 ["cntrl"]
      209 LOADK                            R18 K70 ["0-9"]
      210 SETTABLEKS                       R18 R17 K55 ["digit"]
      212 LOADK                            R18 K71 ["\\x21-\\x7E"]
      213 SETTABLEKS                       R18 R17 K56 ["graph"]
      215 LOADK                            R18 K72 ["a-z"]
      216 SETTABLEKS                       R18 R17 K57 ["lower"]
      218 LOADK                            R18 K73 ["\\x20-\\x7E "]
      219 SETTABLEKS                       R18 R17 K58 ["print"]
      221 LOADK                            R18 K74 ["\\-!\"#$%&'()\\*+,./:;<=>?@[\\]^_`{|}~"]
      222 SETTABLEKS                       R18 R17 K59 ["punct"]
      224 LOADK                            R18 K75 [" \\t\\r\\n\\v\\f"]
      225 SETTABLEKS                       R18 R17 K60 ["space"]
      227 LOADK                            R18 K76 ["A-Z"]
      228 SETTABLEKS                       R18 R17 K61 ["upper"]
      230 LOADK                            R18 K77 ["A-Za-z0-9_"]
      231 SETTABLEKS                       R18 R17 K62 ["word"]
      233 LOADK                            R18 K78 ["A-Fa-f0-9"]
      234 SETTABLEKS                       R18 R17 K63 ["xdigit"]
      236 NEWTABLE                         R18 64 0
      238 LOADK                            R19 K79 [65536]
      239 SETTABLEKS                       R19 R18 K80 ["MAX_LENGTH"]
      241 SETTABLEKS                       R17 R18 K81 ["POSIX_REGEX_SOURCE"]
      243 LOADK                            R19 K82 ["^[^@![%].,$*+?^{}()|\\/]+"]
      244 SETTABLEKS                       R19 R18 K83 ["REGEX_NON_SPECIAL_CHARS"]
      246 LOADK                            R19 K84 ["[-*+?.^${}(|)[%]]"]
      247 SETTABLEKS                       R19 R18 K85 ["REGEX_SPECIAL_CHARS"]
      249 MOVE                             R19 R4
      250 LOADK                            R20 K86 ["(\\\\?)((\\W)(\\3*))"]
      251 CALL                             R19 1 1
      252 SETTABLEKS                       R19 R18 K87 ["REGEX_SPECIAL_CHARS_BACKREF"]
      254 MOVE                             R19 R4
      255 LOADK                            R20 K88 ["([-*+?.^${}(|)[\\]])"]
      256 CALL                             R19 1 1
      257 SETTABLEKS                       R19 R18 K89 ["REGEX_SPECIAL_CHARS_GLOBAL"]
      259 NEWTABLE                         R19 4 0
      261 LOADK                            R20 K90 ["*"]
      262 SETTABLEKS                       R20 R19 K91 ["***"]
      264 LOADK                            R20 K92 ["**"]
      265 SETTABLEKS                       R20 R19 K93 ["**/**"]
      267 LOADK                            R20 K92 ["**"]
      268 SETTABLEKS                       R20 R19 K94 ["**/**/**"]
      270 SETTABLEKS                       R19 R18 K95 ["REPLACEMENTS"]
      272 LOADN                            R19 48
      273 SETTABLEKS                       R19 R18 K96 ["CHAR_0"]
      275 LOADN                            R19 57
      276 SETTABLEKS                       R19 R18 K97 ["CHAR_9"]
      278 LOADN                            R19 65
      279 SETTABLEKS                       R19 R18 K98 ["CHAR_UPPERCASE_A"]
      281 LOADN                            R19 97
      282 SETTABLEKS                       R19 R18 K99 ["CHAR_LOWERCASE_A"]
      284 LOADN                            R19 90
      285 SETTABLEKS                       R19 R18 K100 ["CHAR_UPPERCASE_Z"]
      287 LOADN                            R19 122
      288 SETTABLEKS                       R19 R18 K101 ["CHAR_LOWERCASE_Z"]
      290 LOADN                            R19 40
      291 SETTABLEKS                       R19 R18 K102 ["CHAR_LEFT_PARENTHESES"]
      293 LOADN                            R19 41
      294 SETTABLEKS                       R19 R18 K103 ["CHAR_RIGHT_PARENTHESES"]
      296 LOADN                            R19 42
      297 SETTABLEKS                       R19 R18 K104 ["CHAR_ASTERISK"]
      299 LOADN                            R19 38
      300 SETTABLEKS                       R19 R18 K105 ["CHAR_AMPERSAND"]
      302 LOADN                            R19 64
      303 SETTABLEKS                       R19 R18 K106 ["CHAR_AT"]
      305 LOADN                            R19 92
      306 SETTABLEKS                       R19 R18 K107 ["CHAR_BACKWARD_SLASH"]
      308 LOADN                            R19 13
      309 SETTABLEKS                       R19 R18 K108 ["CHAR_CARRIAGE_RETURN"]
      311 LOADN                            R19 94
      312 SETTABLEKS                       R19 R18 K109 ["CHAR_CIRCUMFLEX_ACCENT"]
      314 LOADN                            R19 58
      315 SETTABLEKS                       R19 R18 K110 ["CHAR_COLON"]
      317 LOADN                            R19 44
      318 SETTABLEKS                       R19 R18 K111 ["CHAR_COMMA"]
      320 LOADN                            R19 46
      321 SETTABLEKS                       R19 R18 K112 ["CHAR_DOT"]
      323 LOADN                            R19 34
      324 SETTABLEKS                       R19 R18 K113 ["CHAR_DOUBLE_QUOTE"]
      326 LOADN                            R19 61
      327 SETTABLEKS                       R19 R18 K114 ["CHAR_EQUAL"]
      329 LOADN                            R19 33
      330 SETTABLEKS                       R19 R18 K115 ["CHAR_EXCLAMATION_MARK"]
      332 LOADN                            R19 12
      333 SETTABLEKS                       R19 R18 K116 ["CHAR_FORM_FEED"]
      335 LOADN                            R19 47
      336 SETTABLEKS                       R19 R18 K117 ["CHAR_FORWARD_SLASH"]
      338 LOADN                            R19 96
      339 SETTABLEKS                       R19 R18 K118 ["CHAR_GRAVE_ACCENT"]
      341 LOADN                            R19 35
      342 SETTABLEKS                       R19 R18 K119 ["CHAR_HASH"]
      344 LOADN                            R19 45
      345 SETTABLEKS                       R19 R18 K120 ["CHAR_HYPHEN_MINUS"]
      347 LOADN                            R19 60
      348 SETTABLEKS                       R19 R18 K121 ["CHAR_LEFT_ANGLE_BRACKET"]
      350 LOADN                            R19 123
      351 SETTABLEKS                       R19 R18 K122 ["CHAR_LEFT_CURLY_BRACE"]
      353 LOADN                            R19 91
      354 SETTABLEKS                       R19 R18 K123 ["CHAR_LEFT_SQUARE_BRACKET"]
      356 LOADN                            R19 10
      357 SETTABLEKS                       R19 R18 K124 ["CHAR_LINE_FEED"]
      359 LOADN                            R19 160
      360 SETTABLEKS                       R19 R18 K125 ["CHAR_NO_BREAK_SPACE"]
      362 LOADN                            R19 37
      363 SETTABLEKS                       R19 R18 K126 ["CHAR_PERCENT"]
      365 LOADN                            R19 43
      366 SETTABLEKS                       R19 R18 K127 ["CHAR_PLUS"]
      368 LOADN                            R19 63
      369 SETTABLEKS                       R19 R18 K128 ["CHAR_QUESTION_MARK"]
      371 LOADN                            R19 62
      372 SETTABLEKS                       R19 R18 K129 ["CHAR_RIGHT_ANGLE_BRACKET"]
      374 LOADN                            R19 125
      375 SETTABLEKS                       R19 R18 K130 ["CHAR_RIGHT_CURLY_BRACE"]
      377 LOADN                            R19 93
      378 SETTABLEKS                       R19 R18 K131 ["CHAR_RIGHT_SQUARE_BRACKET"]
      380 LOADN                            R19 59
      381 SETTABLEKS                       R19 R18 K132 ["CHAR_SEMICOLON"]
      383 LOADN                            R19 39
      384 SETTABLEKS                       R19 R18 K133 ["CHAR_SINGLE_QUOTE"]
      386 LOADN                            R19 32
      387 SETTABLEKS                       R19 R18 K134 ["CHAR_SPACE"]
      389 LOADN                            R19 9
      390 SETTABLEKS                       R19 R18 K135 ["CHAR_TAB"]
      392 LOADN                            R19 95
      393 SETTABLEKS                       R19 R18 K136 ["CHAR_UNDERSCORE"]
      395 LOADN                            R19 124
      396 SETTABLEKS                       R19 R18 K137 ["CHAR_VERTICAL_LINE"]
      398 LOADK                            R19 K138 [65279]
      399 SETTABLEKS                       R19 R18 K139 ["CHAR_ZERO_WIDTH_NOBREAK_SPACE"]
      401 LOADK                            R19 K140 ["/"]
      402 SETTABLEKS                       R19 R18 K141 ["SEP"]
      404 DUPCLOSURE                       R19 K142 [PROTO_0]
      405 SETTABLEKS                       R19 R18 K143 ["extglobChars"]
      407 DUPCLOSURE                       R19 K144 [PROTO_1]
      408 CAPTURE                          VAL R16
      409 CAPTURE                          VAL R15
      410 SETTABLEKS                       R19 R18 K145 ["globChars"]
      412 RETURN                           R18 1
