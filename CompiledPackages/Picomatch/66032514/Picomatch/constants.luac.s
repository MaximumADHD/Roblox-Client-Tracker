PROTO_0:
        0 NEWTABLE                         R1 8 0
        2 DUPTABLE                         R2 K5 [{[1] = "negate", ["open"] = "(?:(?!(?:", ["close"]}]
        3 LOADK                            R3 K6 ["))%s)"]
        4 GETTABLEKS                       R5 R0 K7 ["STAR"]
        6 NAMECALL                         R3 R3 K8 ["format"]
        8 CALL                             R3 2 1
        9 SETTABLEKS                       R3 R2 K4 ["close"]
       11 SETTABLEKS                       R2 R1 K9 ["!"]
       13 DUPTABLE                         R2 K13 [{[1] = "qmark", ["open"] = "(?:", ["close"] = ")?"}]
       14 SETTABLEKS                       R2 R1 K14 ["?"]
       16 DUPTABLE                         R2 K17 [{[1] = "plus", ["open"] = "(?:", ["close"] = ")+"}]
       17 SETTABLEKS                       R2 R1 K18 ["+"]
       19 DUPTABLE                         R2 K21 [{[1] = "star", ["open"] = "(?:", ["close"] = ")*"}]
       20 SETTABLEKS                       R2 R1 K22 ["*"]
       22 DUPTABLE                         R2 K25 [{[1] = "at", ["open"] = "(?:", ["close"] = ")"}]
       23 SETTABLEKS                       R2 R1 K26 ["@"]
       25 RETURN                           R1 1

PROTO_1:
        0 JUMPIFNOTEQKB                    R0 TRUE ; [+3]
        2 GETUPVAL                         R1 0
        3 RETURN                           R1 1
        4 GETUPVAL                         R1 1
        5 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
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
       72 DUPTABLE                         R15 K40 [{["DOT_LITERAL"] = "\\.", ["PLUS_LITERAL"] = "\\+", ["QMARK_LITERAL"] = "\\?", ["SLASH_LITERAL"] = "\\/", ["ONE_CHAR"] = "(?=.)", ["QMARK"] = "[^/]", ["END_ANCHOR"], ["DOTS_SLASH"], ["NO_DOT"], ["NO_DOTS"], ["NO_DOT_SLASH"], ["NO_DOTS_SLASH"], ["QMARK_NO_DOT"], ["STAR"], ["START_ANCHOR"]}]
       73 SETTABLEKS                       R6 R15 K31 ["END_ANCHOR"]
       75 SETTABLEKS                       R8 R15 K32 ["DOTS_SLASH"]
       77 SETTABLEKS                       R9 R15 K33 ["NO_DOT"]
       79 SETTABLEKS                       R10 R15 K34 ["NO_DOTS"]
       81 SETTABLEKS                       R11 R15 K35 ["NO_DOT_SLASH"]
       83 SETTABLEKS                       R12 R15 K36 ["NO_DOTS_SLASH"]
       85 SETTABLEKS                       R13 R15 K37 ["QMARK_NO_DOT"]
       87 SETTABLEKS                       R14 R15 K38 ["STAR"]
       89 SETTABLEKS                       R7 R15 K39 ["START_ANCHOR"]
       91 GETTABLEKS                       R16 R3 K41 ["assign"]
       93 NEWTABLE                         R17 0 0
       95 MOVE                             R18 R15
       96 DUPTABLE                         R19 K42 [{"SLASH_LITERAL", "QMARK", "STAR", "DOTS_SLASH", "NO_DOT", "NO_DOTS", "NO_DOT_SLASH", "NO_DOTS_SLASH", "QMARK_NO_DOT", "START_ANCHOR", "END_ANCHOR"}]
       97 LOADK                            R20 K43 ["[%s]"]
       98 LOADK                            R22 K9 ["\\\\/"]
       99 NAMECALL                         R20 R20 K10 ["format"]
      101 CALL                             R20 2 1
      102 SETTABLEKS                       R20 R19 K27 ["SLASH_LITERAL"]
      104 SETTABLEKS                       R5 R19 K30 ["QMARK"]
      106 LOADK                            R20 K20 ["%s*?"]
      107 MOVE                             R22 R5
      108 NAMECALL                         R20 R20 K10 ["format"]
      110 CALL                             R20 2 1
      111 SETTABLEKS                       R20 R19 K38 ["STAR"]
      113 LOADK                            R20 K44 ["%s{1,2}(?:[%s]|$)"]
      114 LOADK                            R22 K15 ["\\."]
      115 LOADK                            R23 K9 ["\\\\/"]
      116 NAMECALL                         R20 R20 K10 ["format"]
      118 CALL                             R20 3 1
      119 SETTABLEKS                       R20 R19 K32 ["DOTS_SLASH"]
      121 LOADK                            R20 K16 ["(?!%s)"]
      122 LOADK                            R22 K15 ["\\."]
      123 NAMECALL                         R20 R20 K10 ["format"]
      125 CALL                             R20 2 1
      126 SETTABLEKS                       R20 R19 K33 ["NO_DOT"]
      128 LOADK                            R20 K45 ["(?!(?:^|[%s])%s{1,2}(?:[%s]|$))"]
      129 LOADK                            R22 K9 ["\\\\/"]
      130 LOADK                            R23 K15 ["\\."]
      131 LOADK                            R24 K9 ["\\\\/"]
      132 NAMECALL                         R20 R20 K10 ["format"]
      134 CALL                             R20 4 1
      135 SETTABLEKS                       R20 R19 K34 ["NO_DOTS"]
      137 LOADK                            R20 K46 ["(?!%s{0,1}(?:[%s]|$))"]
      138 LOADK                            R22 K15 ["\\."]
      139 LOADK                            R23 K9 ["\\\\/"]
      140 NAMECALL                         R20 R20 K10 ["format"]
      142 CALL                             R20 3 1
      143 SETTABLEKS                       R20 R19 K35 ["NO_DOT_SLASH"]
      145 LOADK                            R20 K47 ["(?!%s{1,2}(?:[%s]|$))"]
      146 LOADK                            R22 K15 ["\\."]
      147 LOADK                            R23 K9 ["\\\\/"]
      148 NAMECALL                         R20 R20 K10 ["format"]
      150 CALL                             R20 3 1
      151 SETTABLEKS                       R20 R19 K36 ["NO_DOTS_SLASH"]
      153 LOADK                            R20 K19 ["[^.%s]"]
      154 LOADK                            R22 K9 ["\\\\/"]
      155 NAMECALL                         R20 R20 K10 ["format"]
      157 CALL                             R20 2 1
      158 SETTABLEKS                       R20 R19 K37 ["QMARK_NO_DOT"]
      160 LOADK                            R20 K48 ["(?:^|[%s])"]
      161 LOADK                            R22 K9 ["\\\\/"]
      162 NAMECALL                         R20 R20 K10 ["format"]
      164 CALL                             R20 2 1
      165 SETTABLEKS                       R20 R19 K39 ["START_ANCHOR"]
      167 LOADK                            R20 K49 ["(?:[%s]|$)"]
      168 LOADK                            R22 K9 ["\\\\/"]
      169 NAMECALL                         R20 R20 K10 ["format"]
      171 CALL                             R20 2 1
      172 SETTABLEKS                       R20 R19 K31 ["END_ANCHOR"]
      174 CALL                             R16 3 1
      175 DUPTABLE                         R17 K78 [{["alnum"] = "a-zA-Z0-9", ["alpha"] = "a-zA-Z", ["ascii"] = "\\x00-\\x7F", ["blank"] = " \\t", ["cntrl"] = "\\x00-\\x1F\\x7F", ["digit"] = "0-9", ["graph"] = "\\x21-\\x7E", ["lower"] = "a-z", ["print"] = "\\x20-\\x7E ", ["punct"] = "\\-!\"#$%&'()\\*+,./:;<=>?@[\\]^_`{|}~", ["space"] = " \\t\\r\\n\\v\\f", ["upper"] = "A-Z", ["word"] = "A-Za-z0-9_", ["xdigit"] = "A-Fa-f0-9"}]
      176 NEWTABLE                         R18 64 0
      178 LOADK                            R19 K79 [65536]
      179 SETTABLEKS                       R19 R18 K80 ["MAX_LENGTH"]
      181 SETTABLEKS                       R17 R18 K81 ["POSIX_REGEX_SOURCE"]
      183 LOADK                            R19 K82 ["^[^@![%].,$*+?^{}()|\\/]+"]
      184 SETTABLEKS                       R19 R18 K83 ["REGEX_NON_SPECIAL_CHARS"]
      186 LOADK                            R19 K84 ["[-*+?.^${}(|)[%]]"]
      187 SETTABLEKS                       R19 R18 K85 ["REGEX_SPECIAL_CHARS"]
      189 MOVE                             R19 R4
      190 LOADK                            R20 K86 ["(\\\\?)((\\W)(\\3*))"]
      191 CALL                             R19 1 1
      192 SETTABLEKS                       R19 R18 K87 ["REGEX_SPECIAL_CHARS_BACKREF"]
      194 MOVE                             R19 R4
      195 LOADK                            R20 K88 ["([-*+?.^${}(|)[\\]])"]
      196 CALL                             R19 1 1
      197 SETTABLEKS                       R19 R18 K89 ["REGEX_SPECIAL_CHARS_GLOBAL"]
      199 NEWTABLE                         R19 4 0
      201 LOADK                            R20 K90 ["*"]
      202 SETTABLEKS                       R20 R19 K91 ["***"]
      204 LOADK                            R20 K92 ["**"]
      205 SETTABLEKS                       R20 R19 K93 ["**/**"]
      207 LOADK                            R20 K92 ["**"]
      208 SETTABLEKS                       R20 R19 K94 ["**/**/**"]
      210 SETTABLEKS                       R19 R18 K95 ["REPLACEMENTS"]
      212 LOADN                            R19 48
      213 SETTABLEKS                       R19 R18 K96 ["CHAR_0"]
      215 LOADN                            R19 57
      216 SETTABLEKS                       R19 R18 K97 ["CHAR_9"]
      218 LOADN                            R19 65
      219 SETTABLEKS                       R19 R18 K98 ["CHAR_UPPERCASE_A"]
      221 LOADN                            R19 97
      222 SETTABLEKS                       R19 R18 K99 ["CHAR_LOWERCASE_A"]
      224 LOADN                            R19 90
      225 SETTABLEKS                       R19 R18 K100 ["CHAR_UPPERCASE_Z"]
      227 LOADN                            R19 122
      228 SETTABLEKS                       R19 R18 K101 ["CHAR_LOWERCASE_Z"]
      230 LOADN                            R19 40
      231 SETTABLEKS                       R19 R18 K102 ["CHAR_LEFT_PARENTHESES"]
      233 LOADN                            R19 41
      234 SETTABLEKS                       R19 R18 K103 ["CHAR_RIGHT_PARENTHESES"]
      236 LOADN                            R19 42
      237 SETTABLEKS                       R19 R18 K104 ["CHAR_ASTERISK"]
      239 LOADN                            R19 38
      240 SETTABLEKS                       R19 R18 K105 ["CHAR_AMPERSAND"]
      242 LOADN                            R19 64
      243 SETTABLEKS                       R19 R18 K106 ["CHAR_AT"]
      245 LOADN                            R19 92
      246 SETTABLEKS                       R19 R18 K107 ["CHAR_BACKWARD_SLASH"]
      248 LOADN                            R19 13
      249 SETTABLEKS                       R19 R18 K108 ["CHAR_CARRIAGE_RETURN"]
      251 LOADN                            R19 94
      252 SETTABLEKS                       R19 R18 K109 ["CHAR_CIRCUMFLEX_ACCENT"]
      254 LOADN                            R19 58
      255 SETTABLEKS                       R19 R18 K110 ["CHAR_COLON"]
      257 LOADN                            R19 44
      258 SETTABLEKS                       R19 R18 K111 ["CHAR_COMMA"]
      260 LOADN                            R19 46
      261 SETTABLEKS                       R19 R18 K112 ["CHAR_DOT"]
      263 LOADN                            R19 34
      264 SETTABLEKS                       R19 R18 K113 ["CHAR_DOUBLE_QUOTE"]
      266 LOADN                            R19 61
      267 SETTABLEKS                       R19 R18 K114 ["CHAR_EQUAL"]
      269 LOADN                            R19 33
      270 SETTABLEKS                       R19 R18 K115 ["CHAR_EXCLAMATION_MARK"]
      272 LOADN                            R19 12
      273 SETTABLEKS                       R19 R18 K116 ["CHAR_FORM_FEED"]
      275 LOADN                            R19 47
      276 SETTABLEKS                       R19 R18 K117 ["CHAR_FORWARD_SLASH"]
      278 LOADN                            R19 96
      279 SETTABLEKS                       R19 R18 K118 ["CHAR_GRAVE_ACCENT"]
      281 LOADN                            R19 35
      282 SETTABLEKS                       R19 R18 K119 ["CHAR_HASH"]
      284 LOADN                            R19 45
      285 SETTABLEKS                       R19 R18 K120 ["CHAR_HYPHEN_MINUS"]
      287 LOADN                            R19 60
      288 SETTABLEKS                       R19 R18 K121 ["CHAR_LEFT_ANGLE_BRACKET"]
      290 LOADN                            R19 123
      291 SETTABLEKS                       R19 R18 K122 ["CHAR_LEFT_CURLY_BRACE"]
      293 LOADN                            R19 91
      294 SETTABLEKS                       R19 R18 K123 ["CHAR_LEFT_SQUARE_BRACKET"]
      296 LOADN                            R19 10
      297 SETTABLEKS                       R19 R18 K124 ["CHAR_LINE_FEED"]
      299 LOADN                            R19 160
      300 SETTABLEKS                       R19 R18 K125 ["CHAR_NO_BREAK_SPACE"]
      302 LOADN                            R19 37
      303 SETTABLEKS                       R19 R18 K126 ["CHAR_PERCENT"]
      305 LOADN                            R19 43
      306 SETTABLEKS                       R19 R18 K127 ["CHAR_PLUS"]
      308 LOADN                            R19 63
      309 SETTABLEKS                       R19 R18 K128 ["CHAR_QUESTION_MARK"]
      311 LOADN                            R19 62
      312 SETTABLEKS                       R19 R18 K129 ["CHAR_RIGHT_ANGLE_BRACKET"]
      314 LOADN                            R19 125
      315 SETTABLEKS                       R19 R18 K130 ["CHAR_RIGHT_CURLY_BRACE"]
      317 LOADN                            R19 93
      318 SETTABLEKS                       R19 R18 K131 ["CHAR_RIGHT_SQUARE_BRACKET"]
      320 LOADN                            R19 59
      321 SETTABLEKS                       R19 R18 K132 ["CHAR_SEMICOLON"]
      323 LOADN                            R19 39
      324 SETTABLEKS                       R19 R18 K133 ["CHAR_SINGLE_QUOTE"]
      326 LOADN                            R19 32
      327 SETTABLEKS                       R19 R18 K134 ["CHAR_SPACE"]
      329 LOADN                            R19 9
      330 SETTABLEKS                       R19 R18 K135 ["CHAR_TAB"]
      332 LOADN                            R19 95
      333 SETTABLEKS                       R19 R18 K136 ["CHAR_UNDERSCORE"]
      335 LOADN                            R19 124
      336 SETTABLEKS                       R19 R18 K137 ["CHAR_VERTICAL_LINE"]
      338 LOADK                            R19 K138 [65279]
      339 SETTABLEKS                       R19 R18 K139 ["CHAR_ZERO_WIDTH_NOBREAK_SPACE"]
      341 LOADK                            R19 K140 ["/"]
      342 SETTABLEKS                       R19 R18 K141 ["SEP"]
      344 DUPCLOSURE                       R19 K142 [PROTO_0]
      345 SETTABLEKS                       R19 R18 K143 ["extglobChars"]
      347 DUPCLOSURE                       R19 K144 [PROTO_1]
      348 CAPTURE                          VAL R16
      349 CAPTURE                          VAL R15
      350 SETTABLEKS                       R19 R18 K145 ["globChars"]
      352 RETURN                           R18 1
