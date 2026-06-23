PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["createElement"]
        5 GETUPVAL                         R3 2
        6 DUPTABLE                         R4 K3 [{"tag", "backgroundStyle"}]
        7 LOADK                            R5 K4 ["size-full-0 auto-y padding-large col gap-small"]
        8 SETTABLEKS                       R5 R4 K1 ["tag"]
       10 GETTABLEKS                       R6 R0 K5 ["hasBackground"]
       12 JUMPIFNOT                        R6 ; [+7]
       13 GETTABLEKS                       R5 R1 K6 ["Inverse"]
       15 GETTABLEKS                       R5 R5 K7 ["Surface"]
       17 GETTABLEKS                       R5 R5 K8 ["Surface_0"]
       19 JUMP                             ; [+1]
       20 LOADNIL                          R5
       21 SETTABLEKS                       R5 R4 K2 ["backgroundStyle"]
       23 GETTABLEKS                       R5 R0 K9 ["children"]
       25 CALL                             R2 3 -1
       26 RETURN                           R2 -1

PROTO_1:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Toggle menu"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 NOT                              R1 R0
        1 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_3]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Robux"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Notifications"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["createElement"]
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R5 R0 K2 ["controls"]
       11 DUPTABLE                         R6 K4 [{"HeaderBar"}]
       12 GETUPVAL                         R7 0
       13 GETTABLEKS                       R7 R7 K1 ["createElement"]
       15 GETUPVAL                         R8 2
       16 GETTABLEKS                       R8 R8 K5 ["Root"]
       18 DUPTABLE                         R9 K7 [{"hasBackground"}]
       19 GETTABLEKS                       R10 R0 K2 ["controls"]
       21 GETTABLEKS                       R10 R10 K6 ["hasBackground"]
       23 SETTABLEKS                       R10 R9 K6 ["hasBackground"]
       25 DUPTABLE                         R10 K11 [{"Leading", "Content", "Trailing"}]
       26 GETUPVAL                         R11 0
       27 GETTABLEKS                       R11 R11 K1 ["createElement"]
       29 GETUPVAL                         R12 2
       30 GETTABLEKS                       R12 R12 K8 ["Leading"]
       32 LOADNIL                          R13
       33 DUPTABLE                         R14 K14 [{"Actions", "Title"}]
       34 GETUPVAL                         R15 0
       35 GETTABLEKS                       R15 R15 K1 ["createElement"]
       37 GETUPVAL                         R16 2
       38 GETTABLEKS                       R16 R16 K12 ["Actions"]
       40 DUPTABLE                         R17 K16 [{"actions"}]
       41 NEWTABLE                         R18 0 1
       43 DUPTABLE                         R19 K20 [{"id", "icon", "onActivated"}]
       44 LOADK                            R20 K21 ["menu"]
       45 SETTABLEKS                       R20 R19 K17 ["id"]
       47 GETUPVAL                         R20 3
       48 GETTABLEKS                       R20 R20 K22 ["Icon"]
       50 GETTABLEKS                       R20 R20 K23 ["ThreeBarsHorizontal"]
       52 SETTABLEKS                       R20 R19 K18 ["icon"]
       54 DUPCLOSURE                       R20 K24 [PROTO_1]
       55 SETTABLEKS                       R20 R19 K19 ["onActivated"]
       57 SETLIST                          R18 R19 1 [1]
       59 SETTABLEKS                       R18 R17 K15 ["actions"]
       61 CALL                             R15 2 1
       62 SETTABLEKS                       R15 R14 K12 ["Actions"]
       64 GETUPVAL                         R15 0
       65 GETTABLEKS                       R15 R15 K1 ["createElement"]
       67 GETUPVAL                         R16 4
       68 DUPTABLE                         R17 K28 [{"tag", "Text", "LayoutOrder"}]
       69 LOADK                            R18 K29 ["auto-xy content-emphasis text-heading-medium"]
       70 SETTABLEKS                       R18 R17 K25 ["tag"]
       72 GETTABLEKS                       R18 R0 K2 ["controls"]
       74 GETTABLEKS                       R18 R18 K30 ["title"]
       76 SETTABLEKS                       R18 R17 K26 ["Text"]
       78 LOADN                            R18 2
       79 SETTABLEKS                       R18 R17 K27 ["LayoutOrder"]
       81 CALL                             R15 2 1
       82 SETTABLEKS                       R15 R14 K13 ["Title"]
       84 CALL                             R11 3 1
       85 SETTABLEKS                       R11 R10 K8 ["Leading"]
       87 GETUPVAL                         R11 0
       88 GETTABLEKS                       R11 R11 K1 ["createElement"]
       90 GETUPVAL                         R12 2
       91 GETTABLEKS                       R12 R12 K9 ["Content"]
       93 LOADNIL                          R13
       94 DUPTABLE                         R14 K32 [{"Search"}]
       95 JUMPIFNOT                        R1 ; [+13]
       96 GETUPVAL                         R15 0
       97 GETTABLEKS                       R15 R15 K1 ["createElement"]
       99 GETUPVAL                         R16 5
      100 DUPTABLE                         R17 K35 [{"text", "onChanged"}]
      101 LOADK                            R18 K36 [""]
      102 SETTABLEKS                       R18 R17 K33 ["text"]
      104 DUPCLOSURE                       R18 K37 [PROTO_2]
      105 SETTABLEKS                       R18 R17 K34 ["onChanged"]
      107 CALL                             R15 2 1
      108 JUMP                             ; [+1]
      109 LOADNIL                          R15
      110 SETTABLEKS                       R15 R14 K31 ["Search"]
      112 CALL                             R11 3 1
      113 SETTABLEKS                       R11 R10 K9 ["Content"]
      115 GETUPVAL                         R11 0
      116 GETTABLEKS                       R11 R11 K1 ["createElement"]
      118 GETUPVAL                         R12 2
      119 GETTABLEKS                       R12 R12 K10 ["Trailing"]
      121 LOADNIL                          R13
      122 DUPTABLE                         R14 K38 [{"Actions"}]
      123 GETUPVAL                         R15 0
      124 GETTABLEKS                       R15 R15 K1 ["createElement"]
      126 GETUPVAL                         R16 2
      127 GETTABLEKS                       R16 R16 K12 ["Actions"]
      129 DUPTABLE                         R17 K16 [{"actions"}]
      130 NEWTABLE                         R18 0 3
      132 DUPTABLE                         R19 K20 [{"id", "icon", "onActivated"}]
      133 LOADK                            R20 K39 ["search"]
      134 SETTABLEKS                       R20 R19 K17 ["id"]
      136 GETUPVAL                         R20 3
      137 GETTABLEKS                       R20 R20 K22 ["Icon"]
      139 GETTABLEKS                       R20 R20 K40 ["MagnifyingGlass"]
      141 SETTABLEKS                       R20 R19 K18 ["icon"]
      143 NEWCLOSURE                       R20 P2
      144 CAPTURE                          VAL R2
      145 SETTABLEKS                       R20 R19 K19 ["onActivated"]
      147 DUPTABLE                         R20 K20 [{"id", "icon", "onActivated"}]
      148 LOADK                            R21 K41 ["robux"]
      149 SETTABLEKS                       R21 R20 K17 ["id"]
      151 GETUPVAL                         R21 3
      152 GETTABLEKS                       R21 R21 K22 ["Icon"]
      154 GETTABLEKS                       R21 R21 K42 ["Robux"]
      156 SETTABLEKS                       R21 R20 K18 ["icon"]
      158 DUPCLOSURE                       R21 K43 [PROTO_5]
      159 SETTABLEKS                       R21 R20 K19 ["onActivated"]
      161 DUPTABLE                         R21 K20 [{"id", "icon", "onActivated"}]
      162 LOADK                            R22 K44 ["notifications"]
      163 SETTABLEKS                       R22 R21 K17 ["id"]
      165 GETUPVAL                         R22 3
      166 GETTABLEKS                       R22 R22 K22 ["Icon"]
      168 GETTABLEKS                       R22 R22 K45 ["Bell"]
      170 SETTABLEKS                       R22 R21 K18 ["icon"]
      172 DUPCLOSURE                       R22 K46 [PROTO_6]
      173 SETTABLEKS                       R22 R21 K19 ["onActivated"]
      175 SETLIST                          R18 R19 3 [1]
      177 SETTABLEKS                       R18 R17 K15 ["actions"]
      179 CALL                             R15 2 1
      180 SETTABLEKS                       R15 R14 K12 ["Actions"]
      182 CALL                             R11 3 1
      183 SETTABLEKS                       R11 R10 K10 ["Trailing"]
      185 CALL                             R7 3 1
      186 SETTABLEKS                       R7 R6 K3 ["HeaderBar"]
      188 CALL                             R3 3 -1
      189 RETURN                           R3 -1

PROTO_8:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Toggle menu"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_9:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Search"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_10:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Robux"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_11:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Notifications"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_12:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Sign in"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_13:
        0 NEWTABLE                         R1 0 1
        2 DUPTABLE                         R2 K3 [{"id", "icon", "onActivated"}]
        3 LOADK                            R3 K4 ["menu"]
        4 SETTABLEKS                       R3 R2 K0 ["id"]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K5 ["Icon"]
        9 GETTABLEKS                       R3 R3 K6 ["ThreeBarsHorizontal"]
       11 SETTABLEKS                       R3 R2 K1 ["icon"]
       13 DUPCLOSURE                       R3 K7 [PROTO_8]
       14 SETTABLEKS                       R3 R2 K2 ["onActivated"]
       16 SETLIST                          R1 R2 1 [1]
       18 NEWTABLE                         R2 0 3
       20 DUPTABLE                         R3 K3 [{"id", "icon", "onActivated"}]
       21 LOADK                            R4 K8 ["search"]
       22 SETTABLEKS                       R4 R3 K0 ["id"]
       24 GETUPVAL                         R4 0
       25 GETTABLEKS                       R4 R4 K5 ["Icon"]
       27 GETTABLEKS                       R4 R4 K9 ["MagnifyingGlass"]
       29 SETTABLEKS                       R4 R3 K1 ["icon"]
       31 DUPCLOSURE                       R4 K10 [PROTO_9]
       32 SETTABLEKS                       R4 R3 K2 ["onActivated"]
       34 DUPTABLE                         R4 K3 [{"id", "icon", "onActivated"}]
       35 LOADK                            R5 K11 ["robux"]
       36 SETTABLEKS                       R5 R4 K0 ["id"]
       38 GETUPVAL                         R5 0
       39 GETTABLEKS                       R5 R5 K5 ["Icon"]
       41 GETTABLEKS                       R5 R5 K12 ["Robux"]
       43 SETTABLEKS                       R5 R4 K1 ["icon"]
       45 DUPCLOSURE                       R5 K13 [PROTO_10]
       46 SETTABLEKS                       R5 R4 K2 ["onActivated"]
       48 DUPTABLE                         R5 K3 [{"id", "icon", "onActivated"}]
       49 LOADK                            R6 K14 ["notifications"]
       50 SETTABLEKS                       R6 R5 K0 ["id"]
       52 GETUPVAL                         R6 0
       53 GETTABLEKS                       R6 R6 K5 ["Icon"]
       55 GETTABLEKS                       R6 R6 K15 ["Bell"]
       57 SETTABLEKS                       R6 R5 K1 ["icon"]
       59 DUPCLOSURE                       R6 K16 [PROTO_11]
       60 SETTABLEKS                       R6 R5 K2 ["onActivated"]
       62 SETLIST                          R2 R3 3 [1]
       64 GETUPVAL                         R3 1
       65 GETTABLEKS                       R3 R3 K17 ["createElement"]
       67 GETUPVAL                         R4 2
       68 GETTABLEKS                       R5 R0 K18 ["controls"]
       70 DUPTABLE                         R6 K22 [{"LeadingAndTrailingActions", "TrailingActionsOnly", "TrailingButton"}]
       71 GETUPVAL                         R7 1
       72 GETTABLEKS                       R7 R7 K17 ["createElement"]
       74 GETUPVAL                         R8 3
       75 GETTABLEKS                       R8 R8 K23 ["Root"]
       77 DUPTABLE                         R9 K26 [{"hasBackground", "LayoutOrder"}]
       78 GETTABLEKS                       R10 R0 K18 ["controls"]
       80 GETTABLEKS                       R10 R10 K24 ["hasBackground"]
       82 SETTABLEKS                       R10 R9 K24 ["hasBackground"]
       84 LOADN                            R10 1
       85 SETTABLEKS                       R10 R9 K25 ["LayoutOrder"]
       87 DUPTABLE                         R10 K29 [{"Leading", "Trailing"}]
       88 GETUPVAL                         R11 1
       89 GETTABLEKS                       R11 R11 K17 ["createElement"]
       91 GETUPVAL                         R12 3
       92 GETTABLEKS                       R12 R12 K27 ["Leading"]
       94 LOADNIL                          R13
       95 DUPTABLE                         R14 K32 [{"Actions", "Title"}]
       96 GETUPVAL                         R15 1
       97 GETTABLEKS                       R15 R15 K17 ["createElement"]
       99 GETUPVAL                         R16 3
      100 GETTABLEKS                       R16 R16 K30 ["Actions"]
      102 DUPTABLE                         R17 K34 [{"actions"}]
      103 SETTABLEKS                       R1 R17 K33 ["actions"]
      105 CALL                             R15 2 1
      106 SETTABLEKS                       R15 R14 K30 ["Actions"]
      108 GETUPVAL                         R15 1
      109 GETTABLEKS                       R15 R15 K17 ["createElement"]
      111 GETUPVAL                         R16 4
      112 DUPTABLE                         R17 K37 [{"tag", "Text", "LayoutOrder"}]
      113 LOADK                            R18 K38 ["auto-xy content-emphasis text-heading-medium"]
      114 SETTABLEKS                       R18 R17 K35 ["tag"]
      116 GETTABLEKS                       R18 R0 K18 ["controls"]
      118 GETTABLEKS                       R18 R18 K39 ["title"]
      120 SETTABLEKS                       R18 R17 K36 ["Text"]
      122 LOADN                            R18 2
      123 SETTABLEKS                       R18 R17 K25 ["LayoutOrder"]
      125 CALL                             R15 2 1
      126 SETTABLEKS                       R15 R14 K31 ["Title"]
      128 CALL                             R11 3 1
      129 SETTABLEKS                       R11 R10 K27 ["Leading"]
      131 GETUPVAL                         R11 1
      132 GETTABLEKS                       R11 R11 K17 ["createElement"]
      134 GETUPVAL                         R12 3
      135 GETTABLEKS                       R12 R12 K28 ["Trailing"]
      137 LOADNIL                          R13
      138 DUPTABLE                         R14 K40 [{"Actions"}]
      139 GETUPVAL                         R15 1
      140 GETTABLEKS                       R15 R15 K17 ["createElement"]
      142 GETUPVAL                         R16 3
      143 GETTABLEKS                       R16 R16 K30 ["Actions"]
      145 DUPTABLE                         R17 K34 [{"actions"}]
      146 SETTABLEKS                       R2 R17 K33 ["actions"]
      148 CALL                             R15 2 1
      149 SETTABLEKS                       R15 R14 K30 ["Actions"]
      151 CALL                             R11 3 1
      152 SETTABLEKS                       R11 R10 K28 ["Trailing"]
      154 CALL                             R7 3 1
      155 SETTABLEKS                       R7 R6 K19 ["LeadingAndTrailingActions"]
      157 GETUPVAL                         R7 1
      158 GETTABLEKS                       R7 R7 K17 ["createElement"]
      160 GETUPVAL                         R8 3
      161 GETTABLEKS                       R8 R8 K23 ["Root"]
      163 DUPTABLE                         R9 K26 [{"hasBackground", "LayoutOrder"}]
      164 GETTABLEKS                       R10 R0 K18 ["controls"]
      166 GETTABLEKS                       R10 R10 K24 ["hasBackground"]
      168 SETTABLEKS                       R10 R9 K24 ["hasBackground"]
      170 LOADN                            R10 2
      171 SETTABLEKS                       R10 R9 K25 ["LayoutOrder"]
      173 DUPTABLE                         R10 K29 [{"Leading", "Trailing"}]
      174 GETUPVAL                         R11 1
      175 GETTABLEKS                       R11 R11 K17 ["createElement"]
      177 GETUPVAL                         R12 3
      178 GETTABLEKS                       R12 R12 K27 ["Leading"]
      180 LOADNIL                          R13
      181 DUPTABLE                         R14 K41 [{"Title"}]
      182 GETUPVAL                         R15 1
      183 GETTABLEKS                       R15 R15 K17 ["createElement"]
      185 GETUPVAL                         R16 4
      186 DUPTABLE                         R17 K42 [{"tag", "Text"}]
      187 LOADK                            R18 K38 ["auto-xy content-emphasis text-heading-medium"]
      188 SETTABLEKS                       R18 R17 K35 ["tag"]
      190 GETTABLEKS                       R18 R0 K18 ["controls"]
      192 GETTABLEKS                       R18 R18 K39 ["title"]
      194 SETTABLEKS                       R18 R17 K36 ["Text"]
      196 CALL                             R15 2 1
      197 SETTABLEKS                       R15 R14 K31 ["Title"]
      199 CALL                             R11 3 1
      200 SETTABLEKS                       R11 R10 K27 ["Leading"]
      202 GETUPVAL                         R11 1
      203 GETTABLEKS                       R11 R11 K17 ["createElement"]
      205 GETUPVAL                         R12 3
      206 GETTABLEKS                       R12 R12 K28 ["Trailing"]
      208 LOADNIL                          R13
      209 DUPTABLE                         R14 K40 [{"Actions"}]
      210 GETUPVAL                         R15 1
      211 GETTABLEKS                       R15 R15 K17 ["createElement"]
      213 GETUPVAL                         R16 3
      214 GETTABLEKS                       R16 R16 K30 ["Actions"]
      216 DUPTABLE                         R17 K34 [{"actions"}]
      217 SETTABLEKS                       R2 R17 K33 ["actions"]
      219 CALL                             R15 2 1
      220 SETTABLEKS                       R15 R14 K30 ["Actions"]
      222 CALL                             R11 3 1
      223 SETTABLEKS                       R11 R10 K28 ["Trailing"]
      225 CALL                             R7 3 1
      226 SETTABLEKS                       R7 R6 K20 ["TrailingActionsOnly"]
      228 GETUPVAL                         R7 1
      229 GETTABLEKS                       R7 R7 K17 ["createElement"]
      231 GETUPVAL                         R8 3
      232 GETTABLEKS                       R8 R8 K23 ["Root"]
      234 DUPTABLE                         R9 K26 [{"hasBackground", "LayoutOrder"}]
      235 GETTABLEKS                       R10 R0 K18 ["controls"]
      237 GETTABLEKS                       R10 R10 K24 ["hasBackground"]
      239 SETTABLEKS                       R10 R9 K24 ["hasBackground"]
      241 LOADN                            R10 3
      242 SETTABLEKS                       R10 R9 K25 ["LayoutOrder"]
      244 DUPTABLE                         R10 K29 [{"Leading", "Trailing"}]
      245 GETUPVAL                         R11 1
      246 GETTABLEKS                       R11 R11 K17 ["createElement"]
      248 GETUPVAL                         R12 3
      249 GETTABLEKS                       R12 R12 K27 ["Leading"]
      251 LOADNIL                          R13
      252 DUPTABLE                         R14 K32 [{"Actions", "Title"}]
      253 GETUPVAL                         R15 1
      254 GETTABLEKS                       R15 R15 K17 ["createElement"]
      256 GETUPVAL                         R16 3
      257 GETTABLEKS                       R16 R16 K30 ["Actions"]
      259 DUPTABLE                         R17 K34 [{"actions"}]
      260 SETTABLEKS                       R1 R17 K33 ["actions"]
      262 CALL                             R15 2 1
      263 SETTABLEKS                       R15 R14 K30 ["Actions"]
      265 GETUPVAL                         R15 1
      266 GETTABLEKS                       R15 R15 K17 ["createElement"]
      268 GETUPVAL                         R16 4
      269 DUPTABLE                         R17 K37 [{"tag", "Text", "LayoutOrder"}]
      270 LOADK                            R18 K38 ["auto-xy content-emphasis text-heading-medium"]
      271 SETTABLEKS                       R18 R17 K35 ["tag"]
      273 GETTABLEKS                       R18 R0 K18 ["controls"]
      275 GETTABLEKS                       R18 R18 K39 ["title"]
      277 SETTABLEKS                       R18 R17 K36 ["Text"]
      279 LOADN                            R18 2
      280 SETTABLEKS                       R18 R17 K25 ["LayoutOrder"]
      282 CALL                             R15 2 1
      283 SETTABLEKS                       R15 R14 K31 ["Title"]
      285 CALL                             R11 3 1
      286 SETTABLEKS                       R11 R10 K27 ["Leading"]
      288 GETUPVAL                         R11 1
      289 GETTABLEKS                       R11 R11 K17 ["createElement"]
      291 GETUPVAL                         R12 3
      292 GETTABLEKS                       R12 R12 K28 ["Trailing"]
      294 LOADNIL                          R13
      295 DUPTABLE                         R14 K44 [{"Button"}]
      296 GETUPVAL                         R15 1
      297 GETTABLEKS                       R15 R15 K17 ["createElement"]
      299 GETUPVAL                         R16 5
      300 DUPTABLE                         R17 K46 [{"text", "onActivated"}]
      301 LOADK                            R18 K47 ["Sign in"]
      302 SETTABLEKS                       R18 R17 K45 ["text"]
      304 DUPCLOSURE                       R18 K48 [PROTO_12]
      305 SETTABLEKS                       R18 R17 K2 ["onActivated"]
      307 CALL                             R15 2 1
      308 SETTABLEKS                       R15 R14 K43 ["Button"]
      310 CALL                             R11 3 1
      311 SETTABLEKS                       R11 R10 K28 ["Trailing"]
      313 CALL                             R7 3 1
      314 SETTABLEKS                       R7 R6 K21 ["TrailingButton"]
      316 CALL                             R3 3 -1
      317 RETURN                           R3 -1

PROTO_14:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Search activated"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_15:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Robux activated"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_16:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Notifications activated"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_19:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Button activated"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_20:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["useState"]
        5 LOADNIL                          R3
        6 CALL                             R2 1 2
        7 GETUPVAL                         R4 1
        8 MOVE                             R5 R2
        9 CALL                             R4 1 1
       10 LOADB                            R5 1
       11 GETUPVAL                         R6 2
       12 GETTABLEKS                       R6 R6 K2 ["XSmall"]
       14 JUMPIFEQ                         R4 R6 ; [+8]
       16 GETUPVAL                         R6 2
       17 GETTABLEKS                       R6 R6 K3 ["Small"]
       19 JUMPIFEQ                         R4 R6 ; [+2]
       21 LOADB                            R5 0 +1
       22 LOADB                            R5 1
       23 GETUPVAL                         R6 0
       24 GETTABLEKS                       R6 R6 K1 ["useState"]
       26 LOADB                            R7 0
       27 CALL                             R6 1 2
       28 NOT                              R8 R5
       29 JUMPIF                           R8 ; [+1]
       30 NOT                              R8 R6
       31 NOT                              R10 R5
       32 OR                               R9 R10 R6
       33 GETUPVAL                         R10 0
       34 GETTABLEKS                       R10 R10 K4 ["createElement"]
       36 GETUPVAL                         R11 3
       37 GETTABLEKS                       R12 R0 K0 ["controls"]
       39 DUPTABLE                         R13 K6 [{"Story"}]
       40 GETUPVAL                         R14 0
       41 GETTABLEKS                       R14 R14 K4 ["createElement"]
       43 GETUPVAL                         R15 4
       44 DUPTABLE                         R16 K11 [{"tag", "sizeConstraint", "LayoutOrder", "ref"}]
       45 LOADK                            R17 K12 ["row size-full-0 auto-y bg-surface-0 stroke-default"]
       46 SETTABLEKS                       R17 R16 K7 ["tag"]
       48 DUPTABLE                         R17 K14 [{"MaxSize"}]
       49 GETIMPORT                        R18 K17 [Vector2.new]
       51 LOADK                            R19 K18 [∞]
       52 LOADN                            R20 44
       53 CALL                             R18 2 1
       54 SETTABLEKS                       R18 R17 K13 ["MaxSize"]
       56 SETTABLEKS                       R17 R16 K8 ["sizeConstraint"]
       58 LOADN                            R17 1
       59 SETTABLEKS                       R17 R16 K9 ["LayoutOrder"]
       61 SETTABLEKS                       R3 R16 K10 ["ref"]
       63 DUPTABLE                         R17 K22 [{"ChatHistory", "Divider", "MessageView"}]
       64 JUMPIFNOT                        R8 ; [+218]
       65 GETUPVAL                         R18 0
       66 GETTABLEKS                       R18 R18 K4 ["createElement"]
       68 GETUPVAL                         R19 4
       69 DUPTABLE                         R20 K23 [{"tag", "sizeConstraint", "LayoutOrder"}]
       70 LOADK                            R21 K24 ["col size-full shrink"]
       71 SETTABLEKS                       R21 R20 K7 ["tag"]
       73 DUPTABLE                         R21 K14 [{"MaxSize"}]
       74 GETIMPORT                        R22 K17 [Vector2.new]
       76 GETUPVAL                         R24 5
       77 GETTABLEKS                       R24 R24 K25 ["widths"]
       79 GETUPVAL                         R25 2
       80 GETTABLEKS                       R25 R25 K3 ["Small"]
       82 GETTABLE                         R23 R24 R25
       83 LOADK                            R24 K18 [∞]
       84 CALL                             R22 2 1
       85 SETTABLEKS                       R22 R21 K13 ["MaxSize"]
       87 SETTABLEKS                       R21 R20 K8 ["sizeConstraint"]
       89 LOADN                            R21 1
       90 SETTABLEKS                       R21 R20 K9 ["LayoutOrder"]
       92 DUPTABLE                         R21 K28 [{"HeaderBar", "Content"}]
       93 GETUPVAL                         R22 0
       94 GETTABLEKS                       R22 R22 K4 ["createElement"]
       96 GETUPVAL                         R23 6
       97 GETTABLEKS                       R23 R23 K29 ["Root"]
       99 DUPTABLE                         R24 K31 [{"hasBackground", "LayoutOrder"}]
      100 GETTABLEKS                       R25 R1 K30 ["hasBackground"]
      102 SETTABLEKS                       R25 R24 K30 ["hasBackground"]
      104 LOADN                            R25 1
      105 SETTABLEKS                       R25 R24 K9 ["LayoutOrder"]
      107 DUPTABLE                         R25 K34 [{"Leading", "Trailing"}]
      108 GETUPVAL                         R26 0
      109 GETTABLEKS                       R26 R26 K4 ["createElement"]
      111 GETUPVAL                         R27 6
      112 GETTABLEKS                       R27 R27 K32 ["Leading"]
      114 LOADNIL                          R28
      115 DUPTABLE                         R29 K36 [{"Title"}]
      116 GETUPVAL                         R30 0
      117 GETTABLEKS                       R30 R30 K4 ["createElement"]
      119 GETUPVAL                         R31 7
      120 DUPTABLE                         R32 K38 [{"tag", "Text", "LayoutOrder"}]
      121 LOADK                            R33 K39 ["auto-xy content-emphasis text-heading-medium"]
      122 SETTABLEKS                       R33 R32 K7 ["tag"]
      124 GETTABLEKS                       R33 R1 K40 ["title"]
      126 SETTABLEKS                       R33 R32 K37 ["Text"]
      128 LOADN                            R33 1
      129 SETTABLEKS                       R33 R32 K9 ["LayoutOrder"]
      131 CALL                             R30 2 1
      132 SETTABLEKS                       R30 R29 K35 ["Title"]
      134 CALL                             R26 3 1
      135 SETTABLEKS                       R26 R25 K32 ["Leading"]
      137 GETUPVAL                         R26 0
      138 GETTABLEKS                       R26 R26 K4 ["createElement"]
      140 GETUPVAL                         R27 6
      141 GETTABLEKS                       R27 R27 K33 ["Trailing"]
      143 LOADNIL                          R28
      144 DUPTABLE                         R29 K44 [{"Search", "Robux", "Notifications"}]
      145 GETUPVAL                         R30 0
      146 GETTABLEKS                       R30 R30 K4 ["createElement"]
      148 GETUPVAL                         R31 8
      149 DUPTABLE                         R32 K47 [{"icon", "onActivated", "LayoutOrder"}]
      150 GETUPVAL                         R33 9
      151 GETTABLEKS                       R33 R33 K48 ["Icon"]
      153 GETTABLEKS                       R33 R33 K49 ["MagnifyingGlass"]
      155 SETTABLEKS                       R33 R32 K45 ["icon"]
      157 DUPCLOSURE                       R33 K50 [PROTO_14]
      158 SETTABLEKS                       R33 R32 K46 ["onActivated"]
      160 LOADN                            R33 1
      161 SETTABLEKS                       R33 R32 K9 ["LayoutOrder"]
      163 CALL                             R30 2 1
      164 SETTABLEKS                       R30 R29 K41 ["Search"]
      166 GETUPVAL                         R30 0
      167 GETTABLEKS                       R30 R30 K4 ["createElement"]
      169 GETUPVAL                         R31 8
      170 DUPTABLE                         R32 K47 [{"icon", "onActivated", "LayoutOrder"}]
      171 GETUPVAL                         R33 9
      172 GETTABLEKS                       R33 R33 K48 ["Icon"]
      174 GETTABLEKS                       R33 R33 K42 ["Robux"]
      176 SETTABLEKS                       R33 R32 K45 ["icon"]
      178 DUPCLOSURE                       R33 K51 [PROTO_15]
      179 SETTABLEKS                       R33 R32 K46 ["onActivated"]
      181 LOADN                            R33 2
      182 SETTABLEKS                       R33 R32 K9 ["LayoutOrder"]
      184 CALL                             R30 2 1
      185 SETTABLEKS                       R30 R29 K42 ["Robux"]
      187 GETUPVAL                         R30 0
      188 GETTABLEKS                       R30 R30 K4 ["createElement"]
      190 GETUPVAL                         R31 8
      191 DUPTABLE                         R32 K47 [{"icon", "onActivated", "LayoutOrder"}]
      192 GETUPVAL                         R33 9
      193 GETTABLEKS                       R33 R33 K48 ["Icon"]
      195 GETTABLEKS                       R33 R33 K52 ["Bell"]
      197 SETTABLEKS                       R33 R32 K45 ["icon"]
      199 DUPCLOSURE                       R33 K53 [PROTO_16]
      200 SETTABLEKS                       R33 R32 K46 ["onActivated"]
      202 LOADN                            R33 3
      203 SETTABLEKS                       R33 R32 K9 ["LayoutOrder"]
      205 CALL                             R30 2 1
      206 SETTABLEKS                       R30 R29 K43 ["Notifications"]
      208 CALL                             R26 3 1
      209 SETTABLEKS                       R26 R25 K33 ["Trailing"]
      211 CALL                             R22 3 1
      212 SETTABLEKS                       R22 R21 K26 ["HeaderBar"]
      214 GETUPVAL                         R22 0
      215 GETTABLEKS                       R22 R22 K4 ["createElement"]
      217 GETUPVAL                         R23 4
      218 DUPTABLE                         R24 K54 [{"tag", "LayoutOrder"}]
      219 LOADK                            R25 K55 ["col size-full-0 fill gap-medium padding-large"]
      220 SETTABLEKS                       R25 R24 K7 ["tag"]
      222 LOADN                            R25 2
      223 SETTABLEKS                       R25 R24 K9 ["LayoutOrder"]
      225 DUPTABLE                         R25 K58 [{"Description", "ChatRow"}]
      226 GETUPVAL                         R26 0
      227 GETTABLEKS                       R26 R26 K4 ["createElement"]
      229 GETUPVAL                         R27 7
      230 DUPTABLE                         R28 K38 [{"tag", "Text", "LayoutOrder"}]
      231 LOADK                            R29 K59 ["size-full-0 auto-y content-default text-body-medium text-align-x-left"]
      232 SETTABLEKS                       R29 R28 K7 ["tag"]
      234 LOADK                            R29 K60 ["Recent conversations"]
      235 SETTABLEKS                       R29 R28 K37 ["Text"]
      237 LOADN                            R29 1
      238 SETTABLEKS                       R29 R28 K9 ["LayoutOrder"]
      240 CALL                             R26 2 1
      241 SETTABLEKS                       R26 R25 K56 ["Description"]
      243 GETUPVAL                         R26 0
      244 GETTABLEKS                       R26 R26 K4 ["createElement"]
      246 GETUPVAL                         R27 10
      247 DUPTABLE                         R28 K65 [{"text", "variant", "size", "width", "onActivated", "LayoutOrder"}]
      248 LOADK                            R29 K66 ["Username"]
      249 SETTABLEKS                       R29 R28 K61 ["text"]
      251 GETUPVAL                         R29 11
      252 GETTABLEKS                       R29 R29 K67 ["Standard"]
      254 SETTABLEKS                       R29 R28 K62 ["variant"]
      256 GETUPVAL                         R29 12
      257 GETTABLEKS                       R29 R29 K68 ["Medium"]
      259 SETTABLEKS                       R29 R28 K63 ["size"]
      261 GETIMPORT                        R29 K70 [UDim.new]
      263 LOADN                            R30 1
      264 LOADN                            R31 0
      265 CALL                             R29 2 1
      266 SETTABLEKS                       R29 R28 K64 ["width"]
      268 NEWCLOSURE                       R29 P3
      269 CAPTURE                          VAL R7
      270 SETTABLEKS                       R29 R28 K46 ["onActivated"]
      272 LOADN                            R29 2
      273 SETTABLEKS                       R29 R28 K9 ["LayoutOrder"]
      275 CALL                             R26 2 1
      276 SETTABLEKS                       R26 R25 K57 ["ChatRow"]
      278 CALL                             R22 3 1
      279 SETTABLEKS                       R22 R21 K27 ["Content"]
      281 CALL                             R18 3 1
      282 JUMP                             ; [+1]
      283 LOADNIL                          R18
      284 SETTABLEKS                       R18 R17 K19 ["ChatHistory"]
      286 JUMPIFNOT                        R5 ; [+2]
      287 LOADNIL                          R18
      288 JUMP                             ; [+14]
      289 GETUPVAL                         R18 0
      290 GETTABLEKS                       R18 R18 K4 ["createElement"]
      292 GETUPVAL                         R19 13
      293 DUPTABLE                         R20 K72 [{"orientation", "LayoutOrder"}]
      294 GETUPVAL                         R21 14
      295 GETTABLEKS                       R21 R21 K73 ["Vertical"]
      297 SETTABLEKS                       R21 R20 K71 ["orientation"]
      299 LOADN                            R21 2
      300 SETTABLEKS                       R21 R20 K9 ["LayoutOrder"]
      302 CALL                             R18 2 1
      303 SETTABLEKS                       R18 R17 K20 ["Divider"]
      305 JUMPIFNOT                        R9 ; [+209]
      306 GETUPVAL                         R18 0
      307 GETTABLEKS                       R18 R18 K4 ["createElement"]
      309 GETUPVAL                         R19 4
      310 DUPTABLE                         R20 K54 [{"tag", "LayoutOrder"}]
      311 LOADK                            R21 K74 ["col size-full fill"]
      312 SETTABLEKS                       R21 R20 K7 ["tag"]
      314 LOADN                            R21 3
      315 SETTABLEKS                       R21 R20 K9 ["LayoutOrder"]
      317 DUPTABLE                         R21 K28 [{"HeaderBar", "Content"}]
      318 GETUPVAL                         R22 0
      319 GETTABLEKS                       R22 R22 K4 ["createElement"]
      321 GETUPVAL                         R23 6
      322 GETTABLEKS                       R23 R23 K29 ["Root"]
      324 DUPTABLE                         R24 K31 [{"hasBackground", "LayoutOrder"}]
      325 GETTABLEKS                       R25 R1 K30 ["hasBackground"]
      327 SETTABLEKS                       R25 R24 K30 ["hasBackground"]
      329 LOADN                            R25 1
      330 SETTABLEKS                       R25 R24 K9 ["LayoutOrder"]
      332 DUPTABLE                         R25 K34 [{"Leading", "Trailing"}]
      333 GETUPVAL                         R26 0
      334 GETTABLEKS                       R26 R26 K4 ["createElement"]
      336 GETUPVAL                         R27 6
      337 GETTABLEKS                       R27 R27 K32 ["Leading"]
      339 LOADNIL                          R28
      340 DUPTABLE                         R29 K77 [{"Back", "Account"}]
      341 JUMPIFNOT                        R5 ; [+24]
      342 GETUPVAL                         R30 0
      343 GETTABLEKS                       R30 R30 K4 ["createElement"]
      345 GETUPVAL                         R31 8
      346 DUPTABLE                         R32 K79 [{"icon", "isCircular", "onActivated", "LayoutOrder"}]
      347 GETUPVAL                         R33 9
      348 GETTABLEKS                       R33 R33 K48 ["Icon"]
      350 GETTABLEKS                       R33 R33 K80 ["ChevronLargeLeft"]
      352 SETTABLEKS                       R33 R32 K45 ["icon"]
      354 LOADB                            R33 1
      355 SETTABLEKS                       R33 R32 K78 ["isCircular"]
      357 NEWCLOSURE                       R33 P4
      358 CAPTURE                          VAL R7
      359 SETTABLEKS                       R33 R32 K46 ["onActivated"]
      361 LOADN                            R33 1
      362 SETTABLEKS                       R33 R32 K9 ["LayoutOrder"]
      364 CALL                             R30 2 1
      365 JUMP                             ; [+1]
      366 LOADNIL                          R30
      367 SETTABLEKS                       R30 R29 K75 ["Back"]
      369 GETUPVAL                         R30 0
      370 GETTABLEKS                       R30 R30 K4 ["createElement"]
      372 GETUPVAL                         R31 4
      373 DUPTABLE                         R32 K54 [{"tag", "LayoutOrder"}]
      374 LOADK                            R33 K81 ["row align-y-center gap-small auto-xy"]
      375 SETTABLEKS                       R33 R32 K7 ["tag"]
      377 LOADN                            R33 2
      378 SETTABLEKS                       R33 R32 K9 ["LayoutOrder"]
      380 DUPTABLE                         R33 K83 [{"Avatar", "Text"}]
      381 GETUPVAL                         R34 0
      382 GETTABLEKS                       R34 R34 K4 ["createElement"]
      384 GETUPVAL                         R35 15
      385 DUPTABLE                         R36 K85 [{"userId", "size", "LayoutOrder"}]
      386 LOADK                            R37 K86 [24813339]
      387 SETTABLEKS                       R37 R36 K84 ["userId"]
      389 GETUPVAL                         R37 12
      390 GETTABLEKS                       R37 R37 K68 ["Medium"]
      392 SETTABLEKS                       R37 R36 K63 ["size"]
      394 LOADN                            R37 1
      395 SETTABLEKS                       R37 R36 K9 ["LayoutOrder"]
      397 CALL                             R34 2 1
      398 SETTABLEKS                       R34 R33 K82 ["Avatar"]
      400 GETUPVAL                         R34 0
      401 GETTABLEKS                       R34 R34 K4 ["createElement"]
      403 GETUPVAL                         R35 4
      404 DUPTABLE                         R36 K54 [{"tag", "LayoutOrder"}]
      405 LOADK                            R37 K87 ["col auto-xy"]
      406 SETTABLEKS                       R37 R36 K7 ["tag"]
      408 LOADN                            R37 2
      409 SETTABLEKS                       R37 R36 K9 ["LayoutOrder"]
      411 DUPTABLE                         R37 K90 [{"Name", "Handle"}]
      412 GETUPVAL                         R38 0
      413 GETTABLEKS                       R38 R38 K4 ["createElement"]
      415 GETUPVAL                         R39 7
      416 DUPTABLE                         R40 K38 [{"tag", "Text", "LayoutOrder"}]
      417 LOADK                            R41 K91 ["auto-xy content-emphasis text-label-medium"]
      418 SETTABLEKS                       R41 R40 K7 ["tag"]
      420 LOADK                            R41 K66 ["Username"]
      421 SETTABLEKS                       R41 R40 K37 ["Text"]
      423 LOADN                            R41 1
      424 SETTABLEKS                       R41 R40 K9 ["LayoutOrder"]
      426 CALL                             R38 2 1
      427 SETTABLEKS                       R38 R37 K88 ["Name"]
      429 GETUPVAL                         R38 0
      430 GETTABLEKS                       R38 R38 K4 ["createElement"]
      432 GETUPVAL                         R39 7
      433 DUPTABLE                         R40 K38 [{"tag", "Text", "LayoutOrder"}]
      434 LOADK                            R41 K92 ["auto-xy content-default text-body-small"]
      435 SETTABLEKS                       R41 R40 K7 ["tag"]
      437 LOADK                            R41 K93 ["@handle"]
      438 SETTABLEKS                       R41 R40 K37 ["Text"]
      440 LOADN                            R41 2
      441 SETTABLEKS                       R41 R40 K9 ["LayoutOrder"]
      443 CALL                             R38 2 1
      444 SETTABLEKS                       R38 R37 K89 ["Handle"]
      446 CALL                             R34 3 1
      447 SETTABLEKS                       R34 R33 K37 ["Text"]
      449 CALL                             R30 3 1
      450 SETTABLEKS                       R30 R29 K76 ["Account"]
      452 CALL                             R26 3 1
      453 SETTABLEKS                       R26 R25 K32 ["Leading"]
      455 GETUPVAL                         R26 0
      456 GETTABLEKS                       R26 R26 K4 ["createElement"]
      458 GETUPVAL                         R27 6
      459 GETTABLEKS                       R27 R27 K33 ["Trailing"]
      461 LOADNIL                          R28
      462 DUPTABLE                         R29 K95 [{"Button"}]
      463 GETUPVAL                         R30 0
      464 GETTABLEKS                       R30 R30 K4 ["createElement"]
      466 GETUPVAL                         R31 10
      467 DUPTABLE                         R32 K96 [{"text", "variant", "size", "onActivated", "LayoutOrder"}]
      468 LOADK                            R33 K94 ["Button"]
      469 SETTABLEKS                       R33 R32 K61 ["text"]
      471 GETUPVAL                         R33 11
      472 GETTABLEKS                       R33 R33 K67 ["Standard"]
      474 SETTABLEKS                       R33 R32 K62 ["variant"]
      476 GETUPVAL                         R33 12
      477 GETTABLEKS                       R33 R33 K68 ["Medium"]
      479 SETTABLEKS                       R33 R32 K63 ["size"]
      481 DUPCLOSURE                       R33 K97 [PROTO_19]
      482 SETTABLEKS                       R33 R32 K46 ["onActivated"]
      484 LOADN                            R33 1
      485 SETTABLEKS                       R33 R32 K9 ["LayoutOrder"]
      487 CALL                             R30 2 1
      488 SETTABLEKS                       R30 R29 K94 ["Button"]
      490 CALL                             R26 3 1
      491 SETTABLEKS                       R26 R25 K33 ["Trailing"]
      493 CALL                             R22 3 1
      494 SETTABLEKS                       R22 R21 K26 ["HeaderBar"]
      496 GETUPVAL                         R22 0
      497 GETTABLEKS                       R22 R22 K4 ["createElement"]
      499 GETUPVAL                         R23 7
      500 DUPTABLE                         R24 K38 [{"tag", "Text", "LayoutOrder"}]
      501 LOADK                            R25 K98 ["size-full-0 fill content-default text-body-medium padding-large text-align-x-left text-align-y-top"]
      502 SETTABLEKS                       R25 R24 K7 ["tag"]
      504 LOADK                            R25 K99 ["Conversation pane"]
      505 SETTABLEKS                       R25 R24 K37 ["Text"]
      507 LOADN                            R25 2
      508 SETTABLEKS                       R25 R24 K9 ["LayoutOrder"]
      510 CALL                             R22 2 1
      511 SETTABLEKS                       R22 R21 K27 ["Content"]
      513 CALL                             R18 3 1
      514 JUMP                             ; [+1]
      515 LOADNIL                          R18
      516 SETTABLEKS                       R18 R17 K21 ["MessageView"]
      518 CALL                             R14 3 1
      519 SETTABLEKS                       R14 R13 K5 ["Story"]
      521 CALL                             R10 3 -1
      522 RETURN                           R10 -1

PROTO_21:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Menu activated"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_22:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Search activated"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_23:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Robux activated"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_24:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Notifications activated"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_25:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Menu activated"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_26:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Search activated"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_27:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Robux activated"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_28:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Notifications activated"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_29:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["useState"]
        5 LOADNIL                          R3
        6 CALL                             R2 1 2
        7 GETUPVAL                         R4 1
        8 MOVE                             R5 R2
        9 CALL                             R4 1 1
       10 LOADB                            R5 1
       11 GETUPVAL                         R6 2
       12 GETTABLEKS                       R6 R6 K2 ["XSmall"]
       14 JUMPIFEQ                         R4 R6 ; [+8]
       16 GETUPVAL                         R6 2
       17 GETTABLEKS                       R6 R6 K3 ["Small"]
       19 JUMPIFEQ                         R4 R6 ; [+2]
       21 LOADB                            R5 0 +1
       22 LOADB                            R5 1
       23 GETUPVAL                         R6 0
       24 GETTABLEKS                       R6 R6 K4 ["createElement"]
       26 GETUPVAL                         R7 3
       27 GETTABLEKS                       R8 R0 K0 ["controls"]
       29 DUPTABLE                         R9 K6 [{"Story"}]
       30 JUMPIFNOT                        R5 ; [+174]
       31 GETUPVAL                         R10 0
       32 GETTABLEKS                       R10 R10 K4 ["createElement"]
       34 GETUPVAL                         R11 4
       35 DUPTABLE                         R12 K10 [{"tag", "LayoutOrder", "ref"}]
       36 LOADK                            R13 K11 ["col size-full-0 auto-y bg-surface-0 stroke-default"]
       37 SETTABLEKS                       R13 R12 K7 ["tag"]
       39 LOADN                            R13 1
       40 SETTABLEKS                       R13 R12 K8 ["LayoutOrder"]
       42 SETTABLEKS                       R3 R12 K9 ["ref"]
       44 DUPTABLE                         R13 K14 [{"HeaderBar", "Content"}]
       45 GETUPVAL                         R14 0
       46 GETTABLEKS                       R14 R14 K4 ["createElement"]
       48 GETUPVAL                         R15 5
       49 GETTABLEKS                       R15 R15 K15 ["Root"]
       51 DUPTABLE                         R16 K17 [{"hasBackground", "LayoutOrder"}]
       52 GETTABLEKS                       R17 R1 K16 ["hasBackground"]
       54 SETTABLEKS                       R17 R16 K16 ["hasBackground"]
       56 LOADN                            R17 1
       57 SETTABLEKS                       R17 R16 K8 ["LayoutOrder"]
       59 DUPTABLE                         R17 K20 [{"Leading", "Trailing"}]
       60 GETUPVAL                         R18 0
       61 GETTABLEKS                       R18 R18 K4 ["createElement"]
       63 GETUPVAL                         R19 5
       64 GETTABLEKS                       R19 R19 K18 ["Leading"]
       66 LOADNIL                          R20
       67 DUPTABLE                         R21 K23 [{"Menu", "Logo"}]
       68 GETUPVAL                         R22 0
       69 GETTABLEKS                       R22 R22 K4 ["createElement"]
       71 GETUPVAL                         R23 6
       72 DUPTABLE                         R24 K26 [{"icon", "onActivated", "LayoutOrder"}]
       73 GETUPVAL                         R25 7
       74 GETTABLEKS                       R25 R25 K27 ["Icon"]
       76 GETTABLEKS                       R25 R25 K28 ["ThreeBarsHorizontal"]
       78 SETTABLEKS                       R25 R24 K24 ["icon"]
       80 DUPCLOSURE                       R25 K29 [PROTO_21]
       81 SETTABLEKS                       R25 R24 K25 ["onActivated"]
       83 LOADN                            R25 1
       84 SETTABLEKS                       R25 R24 K8 ["LayoutOrder"]
       86 CALL                             R22 2 1
       87 SETTABLEKS                       R22 R21 K21 ["Menu"]
       89 GETUPVAL                         R22 0
       90 GETTABLEKS                       R22 R22 K4 ["createElement"]
       92 GETUPVAL                         R23 8
       93 DUPTABLE                         R24 K31 [{"tag", "Text", "LayoutOrder"}]
       94 LOADK                            R25 K32 ["auto-xy content-emphasis text-heading-medium"]
       95 SETTABLEKS                       R25 R24 K7 ["tag"]
       97 LOADK                            R25 K33 ["ROBLOX"]
       98 SETTABLEKS                       R25 R24 K30 ["Text"]
      100 LOADN                            R25 2
      101 SETTABLEKS                       R25 R24 K8 ["LayoutOrder"]
      103 CALL                             R22 2 1
      104 SETTABLEKS                       R22 R21 K22 ["Logo"]
      106 CALL                             R18 3 1
      107 SETTABLEKS                       R18 R17 K18 ["Leading"]
      109 GETUPVAL                         R18 0
      110 GETTABLEKS                       R18 R18 K4 ["createElement"]
      112 GETUPVAL                         R19 5
      113 GETTABLEKS                       R19 R19 K19 ["Trailing"]
      115 LOADNIL                          R20
      116 DUPTABLE                         R21 K37 [{"Search", "Robux", "Notifications"}]
      117 GETUPVAL                         R22 0
      118 GETTABLEKS                       R22 R22 K4 ["createElement"]
      120 GETUPVAL                         R23 6
      121 DUPTABLE                         R24 K26 [{"icon", "onActivated", "LayoutOrder"}]
      122 GETUPVAL                         R25 7
      123 GETTABLEKS                       R25 R25 K27 ["Icon"]
      125 GETTABLEKS                       R25 R25 K38 ["MagnifyingGlass"]
      127 SETTABLEKS                       R25 R24 K24 ["icon"]
      129 DUPCLOSURE                       R25 K39 [PROTO_22]
      130 SETTABLEKS                       R25 R24 K25 ["onActivated"]
      132 LOADN                            R25 1
      133 SETTABLEKS                       R25 R24 K8 ["LayoutOrder"]
      135 CALL                             R22 2 1
      136 SETTABLEKS                       R22 R21 K34 ["Search"]
      138 GETUPVAL                         R22 0
      139 GETTABLEKS                       R22 R22 K4 ["createElement"]
      141 GETUPVAL                         R23 6
      142 DUPTABLE                         R24 K26 [{"icon", "onActivated", "LayoutOrder"}]
      143 GETUPVAL                         R25 7
      144 GETTABLEKS                       R25 R25 K27 ["Icon"]
      146 GETTABLEKS                       R25 R25 K35 ["Robux"]
      148 SETTABLEKS                       R25 R24 K24 ["icon"]
      150 DUPCLOSURE                       R25 K40 [PROTO_23]
      151 SETTABLEKS                       R25 R24 K25 ["onActivated"]
      153 LOADN                            R25 2
      154 SETTABLEKS                       R25 R24 K8 ["LayoutOrder"]
      156 CALL                             R22 2 1
      157 SETTABLEKS                       R22 R21 K35 ["Robux"]
      159 GETUPVAL                         R22 0
      160 GETTABLEKS                       R22 R22 K4 ["createElement"]
      162 GETUPVAL                         R23 6
      163 DUPTABLE                         R24 K26 [{"icon", "onActivated", "LayoutOrder"}]
      164 GETUPVAL                         R25 7
      165 GETTABLEKS                       R25 R25 K27 ["Icon"]
      167 GETTABLEKS                       R25 R25 K41 ["Bell"]
      169 SETTABLEKS                       R25 R24 K24 ["icon"]
      171 DUPCLOSURE                       R25 K42 [PROTO_24]
      172 SETTABLEKS                       R25 R24 K25 ["onActivated"]
      174 LOADN                            R25 3
      175 SETTABLEKS                       R25 R24 K8 ["LayoutOrder"]
      177 CALL                             R22 2 1
      178 SETTABLEKS                       R22 R21 K36 ["Notifications"]
      180 CALL                             R18 3 1
      181 SETTABLEKS                       R18 R17 K19 ["Trailing"]
      183 CALL                             R14 3 1
      184 SETTABLEKS                       R14 R13 K12 ["HeaderBar"]
      186 GETUPVAL                         R14 0
      187 GETTABLEKS                       R14 R14 K4 ["createElement"]
      189 GETUPVAL                         R15 8
      190 DUPTABLE                         R16 K31 [{"tag", "Text", "LayoutOrder"}]
      191 LOADK                            R17 K43 ["auto-xy content-default text-body-medium padding-large"]
      192 SETTABLEKS                       R17 R16 K7 ["tag"]
      194 LOADK                            R17 K44 ["Mobile menu lives in HeaderBar."]
      195 SETTABLEKS                       R17 R16 K30 ["Text"]
      197 LOADN                            R17 2
      198 SETTABLEKS                       R17 R16 K8 ["LayoutOrder"]
      200 CALL                             R14 2 1
      201 SETTABLEKS                       R14 R13 K13 ["Content"]
      203 CALL                             R10 3 1
      204 JUMP                             ; [+221]
      205 GETUPVAL                         R10 0
      206 GETTABLEKS                       R10 R10 K4 ["createElement"]
      208 GETUPVAL                         R11 4
      209 DUPTABLE                         R12 K10 [{"tag", "LayoutOrder", "ref"}]
      210 LOADK                            R13 K45 ["row size-full-0 auto-y bg-surface-0 stroke-default"]
      211 SETTABLEKS                       R13 R12 K7 ["tag"]
      213 LOADN                            R13 1
      214 SETTABLEKS                       R13 R12 K8 ["LayoutOrder"]
      216 SETTABLEKS                       R3 R12 K9 ["ref"]
      218 DUPTABLE                         R13 K48 [{"NavRail", "Main"}]
      219 GETUPVAL                         R14 0
      220 GETTABLEKS                       R14 R14 K4 ["createElement"]
      222 GETUPVAL                         R15 4
      223 DUPTABLE                         R16 K50 [{"tag", "Size", "LayoutOrder"}]
      224 LOADK                            R17 K51 ["col gap-small padding-medium bg-surface-0"]
      225 SETTABLEKS                       R17 R16 K7 ["tag"]
      227 GETIMPORT                        R17 K54 [UDim2.new]
      229 LOADN                            R18 0
      230 LOADN                            R19 72
      231 LOADN                            R20 1
      232 LOADN                            R21 0
      233 CALL                             R17 4 1
      234 SETTABLEKS                       R17 R16 K49 ["Size"]
      236 LOADN                            R17 1
      237 SETTABLEKS                       R17 R16 K8 ["LayoutOrder"]
      239 DUPTABLE                         R17 K55 [{"Menu"}]
      240 GETUPVAL                         R18 0
      241 GETTABLEKS                       R18 R18 K4 ["createElement"]
      243 GETUPVAL                         R19 6
      244 DUPTABLE                         R20 K26 [{"icon", "onActivated", "LayoutOrder"}]
      245 GETUPVAL                         R21 7
      246 GETTABLEKS                       R21 R21 K27 ["Icon"]
      248 GETTABLEKS                       R21 R21 K28 ["ThreeBarsHorizontal"]
      250 SETTABLEKS                       R21 R20 K24 ["icon"]
      252 DUPCLOSURE                       R21 K56 [PROTO_25]
      253 SETTABLEKS                       R21 R20 K25 ["onActivated"]
      255 LOADN                            R21 1
      256 SETTABLEKS                       R21 R20 K8 ["LayoutOrder"]
      258 CALL                             R18 2 1
      259 SETTABLEKS                       R18 R17 K21 ["Menu"]
      261 CALL                             R14 3 1
      262 SETTABLEKS                       R14 R13 K46 ["NavRail"]
      264 GETUPVAL                         R14 0
      265 GETTABLEKS                       R14 R14 K4 ["createElement"]
      267 GETUPVAL                         R15 4
      268 DUPTABLE                         R16 K50 [{"tag", "Size", "LayoutOrder"}]
      269 LOADK                            R17 K57 ["col size-full-0"]
      270 SETTABLEKS                       R17 R16 K7 ["tag"]
      272 GETIMPORT                        R17 K54 [UDim2.new]
      274 LOADN                            R18 1
      275 LOADN                            R19 184
      276 LOADN                            R20 1
      277 LOADN                            R21 0
      278 CALL                             R17 4 1
      279 SETTABLEKS                       R17 R16 K49 ["Size"]
      281 LOADN                            R17 2
      282 SETTABLEKS                       R17 R16 K8 ["LayoutOrder"]
      284 DUPTABLE                         R17 K14 [{"HeaderBar", "Content"}]
      285 GETUPVAL                         R18 0
      286 GETTABLEKS                       R18 R18 K4 ["createElement"]
      288 GETUPVAL                         R19 5
      289 GETTABLEKS                       R19 R19 K15 ["Root"]
      291 DUPTABLE                         R20 K17 [{"hasBackground", "LayoutOrder"}]
      292 GETTABLEKS                       R21 R1 K16 ["hasBackground"]
      294 SETTABLEKS                       R21 R20 K16 ["hasBackground"]
      296 LOADN                            R21 1
      297 SETTABLEKS                       R21 R20 K8 ["LayoutOrder"]
      299 DUPTABLE                         R21 K20 [{"Leading", "Trailing"}]
      300 GETUPVAL                         R22 0
      301 GETTABLEKS                       R22 R22 K4 ["createElement"]
      303 GETUPVAL                         R23 5
      304 GETTABLEKS                       R23 R23 K18 ["Leading"]
      306 LOADNIL                          R24
      307 DUPTABLE                         R25 K58 [{"Logo"}]
      308 GETUPVAL                         R26 0
      309 GETTABLEKS                       R26 R26 K4 ["createElement"]
      311 GETUPVAL                         R27 8
      312 DUPTABLE                         R28 K31 [{"tag", "Text", "LayoutOrder"}]
      313 LOADK                            R29 K32 ["auto-xy content-emphasis text-heading-medium"]
      314 SETTABLEKS                       R29 R28 K7 ["tag"]
      316 LOADK                            R29 K33 ["ROBLOX"]
      317 SETTABLEKS                       R29 R28 K30 ["Text"]
      319 LOADN                            R29 1
      320 SETTABLEKS                       R29 R28 K8 ["LayoutOrder"]
      322 CALL                             R26 2 1
      323 SETTABLEKS                       R26 R25 K22 ["Logo"]
      325 CALL                             R22 3 1
      326 SETTABLEKS                       R22 R21 K18 ["Leading"]
      328 GETUPVAL                         R22 0
      329 GETTABLEKS                       R22 R22 K4 ["createElement"]
      331 GETUPVAL                         R23 5
      332 GETTABLEKS                       R23 R23 K19 ["Trailing"]
      334 LOADNIL                          R24
      335 DUPTABLE                         R25 K37 [{"Search", "Robux", "Notifications"}]
      336 GETUPVAL                         R26 0
      337 GETTABLEKS                       R26 R26 K4 ["createElement"]
      339 GETUPVAL                         R27 6
      340 DUPTABLE                         R28 K26 [{"icon", "onActivated", "LayoutOrder"}]
      341 GETUPVAL                         R29 7
      342 GETTABLEKS                       R29 R29 K27 ["Icon"]
      344 GETTABLEKS                       R29 R29 K38 ["MagnifyingGlass"]
      346 SETTABLEKS                       R29 R28 K24 ["icon"]
      348 DUPCLOSURE                       R29 K59 [PROTO_26]
      349 SETTABLEKS                       R29 R28 K25 ["onActivated"]
      351 LOADN                            R29 1
      352 SETTABLEKS                       R29 R28 K8 ["LayoutOrder"]
      354 CALL                             R26 2 1
      355 SETTABLEKS                       R26 R25 K34 ["Search"]
      357 GETUPVAL                         R26 0
      358 GETTABLEKS                       R26 R26 K4 ["createElement"]
      360 GETUPVAL                         R27 6
      361 DUPTABLE                         R28 K26 [{"icon", "onActivated", "LayoutOrder"}]
      362 GETUPVAL                         R29 7
      363 GETTABLEKS                       R29 R29 K27 ["Icon"]
      365 GETTABLEKS                       R29 R29 K35 ["Robux"]
      367 SETTABLEKS                       R29 R28 K24 ["icon"]
      369 DUPCLOSURE                       R29 K60 [PROTO_27]
      370 SETTABLEKS                       R29 R28 K25 ["onActivated"]
      372 LOADN                            R29 2
      373 SETTABLEKS                       R29 R28 K8 ["LayoutOrder"]
      375 CALL                             R26 2 1
      376 SETTABLEKS                       R26 R25 K35 ["Robux"]
      378 GETUPVAL                         R26 0
      379 GETTABLEKS                       R26 R26 K4 ["createElement"]
      381 GETUPVAL                         R27 6
      382 DUPTABLE                         R28 K26 [{"icon", "onActivated", "LayoutOrder"}]
      383 GETUPVAL                         R29 7
      384 GETTABLEKS                       R29 R29 K27 ["Icon"]
      386 GETTABLEKS                       R29 R29 K41 ["Bell"]
      388 SETTABLEKS                       R29 R28 K24 ["icon"]
      390 DUPCLOSURE                       R29 K61 [PROTO_28]
      391 SETTABLEKS                       R29 R28 K25 ["onActivated"]
      393 LOADN                            R29 3
      394 SETTABLEKS                       R29 R28 K8 ["LayoutOrder"]
      396 CALL                             R26 2 1
      397 SETTABLEKS                       R26 R25 K36 ["Notifications"]
      399 CALL                             R22 3 1
      400 SETTABLEKS                       R22 R21 K19 ["Trailing"]
      402 CALL                             R18 3 1
      403 SETTABLEKS                       R18 R17 K12 ["HeaderBar"]
      405 GETUPVAL                         R18 0
      406 GETTABLEKS                       R18 R18 K4 ["createElement"]
      408 GETUPVAL                         R19 8
      409 DUPTABLE                         R20 K31 [{"tag", "Text", "LayoutOrder"}]
      410 LOADK                            R21 K43 ["auto-xy content-default text-body-medium padding-large"]
      411 SETTABLEKS                       R21 R20 K7 ["tag"]
      413 LOADK                            R21 K62 ["Collapsed nav leaves logo content in HeaderBar."]
      414 SETTABLEKS                       R21 R20 K30 ["Text"]
      416 LOADN                            R21 2
      417 SETTABLEKS                       R21 R20 K8 ["LayoutOrder"]
      419 CALL                             R18 2 1
      420 SETTABLEKS                       R18 R17 K13 ["Content"]
      422 CALL                             R14 3 1
      423 SETTABLEKS                       R14 R13 K47 ["Main"]
      425 CALL                             R10 3 1
      426 SETTABLEKS                       R10 R9 K5 ["Story"]
      428 CALL                             R6 3 -1
      429 RETURN                           R6 -1

PROTO_30:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Menu activated"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_31:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Search activated"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_32:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Robux activated"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_33:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Notifications activated"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_34:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["useState"]
        5 LOADNIL                          R3
        6 CALL                             R2 1 2
        7 GETUPVAL                         R4 1
        8 MOVE                             R5 R2
        9 CALL                             R4 1 1
       10 LOADB                            R5 1
       11 GETUPVAL                         R6 2
       12 GETTABLEKS                       R6 R6 K2 ["XSmall"]
       14 JUMPIFEQ                         R4 R6 ; [+8]
       16 GETUPVAL                         R6 2
       17 GETTABLEKS                       R6 R6 K3 ["Small"]
       19 JUMPIFEQ                         R4 R6 ; [+2]
       21 LOADB                            R5 0 +1
       22 LOADB                            R5 1
       23 GETUPVAL                         R6 0
       24 GETTABLEKS                       R6 R6 K4 ["createElement"]
       26 GETUPVAL                         R7 3
       27 GETTABLEKS                       R8 R0 K0 ["controls"]
       29 DUPTABLE                         R9 K6 [{"Story"}]
       30 GETUPVAL                         R10 0
       31 GETTABLEKS                       R10 R10 K4 ["createElement"]
       33 GETUPVAL                         R11 4
       34 DUPTABLE                         R12 K10 [{"tag", "LayoutOrder", "ref"}]
       35 LOADK                            R13 K11 ["col size-full-0 auto-y bg-surface-0 stroke-default"]
       36 SETTABLEKS                       R13 R12 K7 ["tag"]
       38 LOADN                            R13 1
       39 SETTABLEKS                       R13 R12 K8 ["LayoutOrder"]
       41 SETTABLEKS                       R3 R12 K9 ["ref"]
       43 DUPTABLE                         R13 K15 [{"HeaderBar", "PageTitle", "Content"}]
       44 GETUPVAL                         R14 0
       45 GETTABLEKS                       R14 R14 K4 ["createElement"]
       47 GETUPVAL                         R15 5
       48 GETTABLEKS                       R15 R15 K16 ["Root"]
       50 DUPTABLE                         R16 K18 [{"hasBackground", "LayoutOrder"}]
       51 GETTABLEKS                       R17 R1 K17 ["hasBackground"]
       53 SETTABLEKS                       R17 R16 K17 ["hasBackground"]
       55 LOADN                            R17 1
       56 SETTABLEKS                       R17 R16 K8 ["LayoutOrder"]
       58 DUPTABLE                         R17 K21 [{"Leading", "Trailing"}]
       59 GETUPVAL                         R18 0
       60 GETTABLEKS                       R18 R18 K4 ["createElement"]
       62 GETUPVAL                         R19 5
       63 GETTABLEKS                       R19 R19 K19 ["Leading"]
       65 LOADNIL                          R20
       66 DUPTABLE                         R21 K24 [{"Menu", "Breadcrumbs"}]
       67 JUMPIF                           R5 ; [+20]
       68 GETUPVAL                         R22 0
       69 GETTABLEKS                       R22 R22 K4 ["createElement"]
       71 GETUPVAL                         R23 6
       72 DUPTABLE                         R24 K27 [{"icon", "onActivated", "LayoutOrder"}]
       73 GETUPVAL                         R25 7
       74 GETTABLEKS                       R25 R25 K28 ["Icon"]
       76 GETTABLEKS                       R25 R25 K29 ["ThreeBarsHorizontal"]
       78 SETTABLEKS                       R25 R24 K25 ["icon"]
       80 DUPCLOSURE                       R25 K30 [PROTO_30]
       81 SETTABLEKS                       R25 R24 K26 ["onActivated"]
       83 LOADN                            R25 1
       84 SETTABLEKS                       R25 R24 K8 ["LayoutOrder"]
       86 CALL                             R22 2 1
       87 JUMP                             ; [+1]
       88 LOADNIL                          R22
       89 SETTABLEKS                       R22 R21 K22 ["Menu"]
       91 JUMPIF                           R5 ; [+99]
       92 GETUPVAL                         R22 0
       93 GETTABLEKS                       R22 R22 K4 ["createElement"]
       95 GETUPVAL                         R23 4
       96 DUPTABLE                         R24 K31 [{"tag", "LayoutOrder"}]
       97 LOADK                            R25 K32 ["row align-y-center gap-small auto-xy"]
       98 SETTABLEKS                       R25 R24 K7 ["tag"]
      100 LOADN                            R25 2
      101 SETTABLEKS                       R25 R24 K8 ["LayoutOrder"]
      103 DUPTABLE                         R25 K38 [{"First", "FirstSeparator", "Second", "SecondSeparator", "Current"}]
      104 GETUPVAL                         R26 0
      105 GETTABLEKS                       R26 R26 K4 ["createElement"]
      107 GETUPVAL                         R27 8
      108 DUPTABLE                         R28 K40 [{"tag", "Text", "LayoutOrder"}]
      109 LOADK                            R29 K41 ["auto-xy content-default text-body-medium"]
      110 SETTABLEKS                       R29 R28 K7 ["tag"]
      112 LOADK                            R29 K42 ["Link"]
      113 SETTABLEKS                       R29 R28 K39 ["Text"]
      115 LOADN                            R29 1
      116 SETTABLEKS                       R29 R28 K8 ["LayoutOrder"]
      118 CALL                             R26 2 1
      119 SETTABLEKS                       R26 R25 K33 ["First"]
      121 GETUPVAL                         R26 0
      122 GETTABLEKS                       R26 R26 K4 ["createElement"]
      124 GETUPVAL                         R27 8
      125 DUPTABLE                         R28 K40 [{"tag", "Text", "LayoutOrder"}]
      126 LOADK                            R29 K41 ["auto-xy content-default text-body-medium"]
      127 SETTABLEKS                       R29 R28 K7 ["tag"]
      129 LOADK                            R29 K43 ["/"]
      130 SETTABLEKS                       R29 R28 K39 ["Text"]
      132 LOADN                            R29 2
      133 SETTABLEKS                       R29 R28 K8 ["LayoutOrder"]
      135 CALL                             R26 2 1
      136 SETTABLEKS                       R26 R25 K34 ["FirstSeparator"]
      138 GETUPVAL                         R26 0
      139 GETTABLEKS                       R26 R26 K4 ["createElement"]
      141 GETUPVAL                         R27 8
      142 DUPTABLE                         R28 K40 [{"tag", "Text", "LayoutOrder"}]
      143 LOADK                            R29 K41 ["auto-xy content-default text-body-medium"]
      144 SETTABLEKS                       R29 R28 K7 ["tag"]
      146 LOADK                            R29 K42 ["Link"]
      147 SETTABLEKS                       R29 R28 K39 ["Text"]
      149 LOADN                            R29 3
      150 SETTABLEKS                       R29 R28 K8 ["LayoutOrder"]
      152 CALL                             R26 2 1
      153 SETTABLEKS                       R26 R25 K35 ["Second"]
      155 GETUPVAL                         R26 0
      156 GETTABLEKS                       R26 R26 K4 ["createElement"]
      158 GETUPVAL                         R27 8
      159 DUPTABLE                         R28 K40 [{"tag", "Text", "LayoutOrder"}]
      160 LOADK                            R29 K41 ["auto-xy content-default text-body-medium"]
      161 SETTABLEKS                       R29 R28 K7 ["tag"]
      163 LOADK                            R29 K43 ["/"]
      164 SETTABLEKS                       R29 R28 K39 ["Text"]
      166 LOADN                            R29 4
      167 SETTABLEKS                       R29 R28 K8 ["LayoutOrder"]
      169 CALL                             R26 2 1
      170 SETTABLEKS                       R26 R25 K36 ["SecondSeparator"]
      172 GETUPVAL                         R26 0
      173 GETTABLEKS                       R26 R26 K4 ["createElement"]
      175 GETUPVAL                         R27 8
      176 DUPTABLE                         R28 K40 [{"tag", "Text", "LayoutOrder"}]
      177 LOADK                            R29 K44 ["auto-xy content-emphasis text-label-medium"]
      178 SETTABLEKS                       R29 R28 K7 ["tag"]
      180 LOADK                            R29 K42 ["Link"]
      181 SETTABLEKS                       R29 R28 K39 ["Text"]
      183 LOADN                            R29 5
      184 SETTABLEKS                       R29 R28 K8 ["LayoutOrder"]
      186 CALL                             R26 2 1
      187 SETTABLEKS                       R26 R25 K37 ["Current"]
      189 CALL                             R22 3 1
      190 JUMP                             ; [+16]
      191 GETUPVAL                         R22 0
      192 GETTABLEKS                       R22 R22 K4 ["createElement"]
      194 GETUPVAL                         R23 8
      195 DUPTABLE                         R24 K40 [{"tag", "Text", "LayoutOrder"}]
      196 LOADK                            R25 K45 ["auto-xy content-emphasis text-heading-medium"]
      197 SETTABLEKS                       R25 R24 K7 ["tag"]
      199 GETTABLEKS                       R25 R1 K46 ["title"]
      201 SETTABLEKS                       R25 R24 K39 ["Text"]
      203 LOADN                            R25 1
      204 SETTABLEKS                       R25 R24 K8 ["LayoutOrder"]
      206 CALL                             R22 2 1
      207 SETTABLEKS                       R22 R21 K23 ["Breadcrumbs"]
      209 CALL                             R18 3 1
      210 SETTABLEKS                       R18 R17 K19 ["Leading"]
      212 GETUPVAL                         R18 0
      213 GETTABLEKS                       R18 R18 K4 ["createElement"]
      215 GETUPVAL                         R19 5
      216 GETTABLEKS                       R19 R19 K20 ["Trailing"]
      218 LOADNIL                          R20
      219 DUPTABLE                         R21 K50 [{"Search", "Robux", "Notifications"}]
      220 GETUPVAL                         R22 0
      221 GETTABLEKS                       R22 R22 K4 ["createElement"]
      223 GETUPVAL                         R23 6
      224 DUPTABLE                         R24 K27 [{"icon", "onActivated", "LayoutOrder"}]
      225 GETUPVAL                         R25 7
      226 GETTABLEKS                       R25 R25 K28 ["Icon"]
      228 GETTABLEKS                       R25 R25 K51 ["MagnifyingGlass"]
      230 SETTABLEKS                       R25 R24 K25 ["icon"]
      232 DUPCLOSURE                       R25 K52 [PROTO_31]
      233 SETTABLEKS                       R25 R24 K26 ["onActivated"]
      235 LOADN                            R25 1
      236 SETTABLEKS                       R25 R24 K8 ["LayoutOrder"]
      238 CALL                             R22 2 1
      239 SETTABLEKS                       R22 R21 K47 ["Search"]
      241 GETUPVAL                         R22 0
      242 GETTABLEKS                       R22 R22 K4 ["createElement"]
      244 GETUPVAL                         R23 6
      245 DUPTABLE                         R24 K27 [{"icon", "onActivated", "LayoutOrder"}]
      246 GETUPVAL                         R25 7
      247 GETTABLEKS                       R25 R25 K28 ["Icon"]
      249 GETTABLEKS                       R25 R25 K48 ["Robux"]
      251 SETTABLEKS                       R25 R24 K25 ["icon"]
      253 DUPCLOSURE                       R25 K53 [PROTO_32]
      254 SETTABLEKS                       R25 R24 K26 ["onActivated"]
      256 LOADN                            R25 2
      257 SETTABLEKS                       R25 R24 K8 ["LayoutOrder"]
      259 CALL                             R22 2 1
      260 SETTABLEKS                       R22 R21 K48 ["Robux"]
      262 GETUPVAL                         R22 0
      263 GETTABLEKS                       R22 R22 K4 ["createElement"]
      265 GETUPVAL                         R23 6
      266 DUPTABLE                         R24 K27 [{"icon", "onActivated", "LayoutOrder"}]
      267 GETUPVAL                         R25 7
      268 GETTABLEKS                       R25 R25 K28 ["Icon"]
      270 GETTABLEKS                       R25 R25 K54 ["Bell"]
      272 SETTABLEKS                       R25 R24 K25 ["icon"]
      274 DUPCLOSURE                       R25 K55 [PROTO_33]
      275 SETTABLEKS                       R25 R24 K26 ["onActivated"]
      277 LOADN                            R25 3
      278 SETTABLEKS                       R25 R24 K8 ["LayoutOrder"]
      280 CALL                             R22 2 1
      281 SETTABLEKS                       R22 R21 K49 ["Notifications"]
      283 CALL                             R18 3 1
      284 SETTABLEKS                       R18 R17 K20 ["Trailing"]
      286 CALL                             R14 3 1
      287 SETTABLEKS                       R14 R13 K12 ["HeaderBar"]
      289 JUMPIFNOT                        R5 ; [+2]
      290 LOADNIL                          R14
      291 JUMP                             ; [+31]
      292 GETUPVAL                         R14 0
      293 GETTABLEKS                       R14 R14 K4 ["createElement"]
      295 GETUPVAL                         R15 4
      296 DUPTABLE                         R16 K31 [{"tag", "LayoutOrder"}]
      297 LOADK                            R17 K56 ["row align-y-center size-full-1200 padding-x-large"]
      298 SETTABLEKS                       R17 R16 K7 ["tag"]
      300 LOADN                            R17 2
      301 SETTABLEKS                       R17 R16 K8 ["LayoutOrder"]
      303 DUPTABLE                         R17 K58 [{"Title"}]
      304 GETUPVAL                         R18 0
      305 GETTABLEKS                       R18 R18 K4 ["createElement"]
      307 GETUPVAL                         R19 8
      308 DUPTABLE                         R20 K40 [{"tag", "Text", "LayoutOrder"}]
      309 LOADK                            R21 K45 ["auto-xy content-emphasis text-heading-medium"]
      310 SETTABLEKS                       R21 R20 K7 ["tag"]
      312 GETTABLEKS                       R21 R1 K46 ["title"]
      314 SETTABLEKS                       R21 R20 K39 ["Text"]
      316 LOADN                            R21 1
      317 SETTABLEKS                       R21 R20 K8 ["LayoutOrder"]
      319 CALL                             R18 2 1
      320 SETTABLEKS                       R18 R17 K57 ["Title"]
      322 CALL                             R14 3 1
      323 SETTABLEKS                       R14 R13 K13 ["PageTitle"]
      325 GETUPVAL                         R14 0
      326 GETTABLEKS                       R14 R14 K4 ["createElement"]
      328 GETUPVAL                         R15 8
      329 DUPTABLE                         R16 K40 [{"tag", "Text", "LayoutOrder"}]
      330 LOADK                            R17 K59 ["auto-xy content-default text-body-medium padding-large"]
      331 SETTABLEKS                       R17 R16 K7 ["tag"]
      333 JUMPIFNOT                        R5 ; [+2]
      334 LOADK                            R17 K60 ["Title is inside HeaderBar."]
      335 JUMP                             ; [+1]
      336 LOADK                            R17 K61 ["Title is positioned below HeaderBar."]
      337 SETTABLEKS                       R17 R16 K39 ["Text"]
      339 LOADN                            R17 3
      340 SETTABLEKS                       R17 R16 K8 ["LayoutOrder"]
      342 CALL                             R14 2 1
      343 SETTABLEKS                       R14 R13 K14 ["Content"]
      345 CALL                             R10 3 1
      346 SETTABLEKS                       R10 R9 K5 ["Story"]
      348 CALL                             R6 3 -1
      349 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["BuilderIcons"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R5 K10 ["Avatar"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K11 ["Enums"]
       30 GETTABLEKS                       R6 R6 K12 ["Breakpoint"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K13 ["Utility"]
       37 GETTABLEKS                       R7 R7 K14 ["Responsive"]
       39 GETTABLEKS                       R7 R7 K15 ["BreakpointConfig"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R0 K9 ["Components"]
       46 GETTABLEKS                       R8 R8 K16 ["Button"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R9 R0 K11 ["Enums"]
       53 GETTABLEKS                       R9 R9 K17 ["ButtonVariant"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R10 R0 K9 ["Components"]
       60 GETTABLEKS                       R10 R10 K18 ["Divider"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K6 [require]
       65 GETTABLEKS                       R11 R0 K9 ["Components"]
       67 GETTABLEKS                       R11 R11 K19 ["IconButton"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K6 [require]
       72 GETTABLEKS                       R12 R0 K11 ["Enums"]
       74 GETTABLEKS                       R12 R12 K20 ["InputSize"]
       76 CALL                             R11 1 1
       77 GETIMPORT                        R12 K6 [require]
       79 GETTABLEKS                       R13 R0 K11 ["Enums"]
       81 GETTABLEKS                       R13 R13 K21 ["Orientation"]
       83 CALL                             R12 1 1
       84 GETIMPORT                        R13 K6 [require]
       86 GETTABLEKS                       R14 R0 K9 ["Components"]
       88 GETTABLEKS                       R14 R14 K22 ["SearchInput"]
       90 CALL                             R13 1 1
       91 GETIMPORT                        R14 K6 [require]
       93 GETTABLEKS                       R15 R0 K9 ["Components"]
       95 GETTABLEKS                       R15 R15 K23 ["Text"]
       97 CALL                             R14 1 1
       98 GETIMPORT                        R15 K6 [require]
      100 GETTABLEKS                       R16 R0 K9 ["Components"]
      102 GETTABLEKS                       R16 R16 K24 ["View"]
      104 CALL                             R15 1 1
      105 GETIMPORT                        R16 K6 [require]
      107 GETTABLEKS                       R17 R0 K25 ["Providers"]
      109 GETTABLEKS                       R17 R17 K14 ["Responsive"]
      111 GETTABLEKS                       R17 R17 K26 ["Hooks"]
      113 GETTABLEKS                       R17 R17 K27 ["useBreakpoint"]
      115 CALL                             R16 1 1
      116 GETIMPORT                        R17 K6 [require]
      118 GETTABLEKS                       R18 R0 K25 ["Providers"]
      120 GETTABLEKS                       R18 R18 K28 ["Style"]
      122 GETTABLEKS                       R18 R18 K29 ["useTokens"]
      124 CALL                             R17 1 1
      125 GETIMPORT                        R18 K6 [require]
      127 GETIMPORT                        R19 K1 [script]
      129 GETTABLEKS                       R19 R19 K4 ["Parent"]
      131 CALL                             R18 1 1
      132 DUPCLOSURE                       R19 K30 [PROTO_0]
      133 CAPTURE                          VAL R17
      134 CAPTURE                          VAL R3
      135 CAPTURE                          VAL R15
      136 DUPTABLE                         R20 K33 [{"controls", "stories"}]
      137 DUPTABLE                         R21 K36 [{"hasBackground", "title"}]
      138 LOADB                            R22 1
      139 SETTABLEKS                       R22 R21 K34 ["hasBackground"]
      141 LOADK                            R22 K37 ["Title"]
      142 SETTABLEKS                       R22 R21 K35 ["title"]
      144 SETTABLEKS                       R21 R20 K31 ["controls"]
      146 NEWTABLE                         R21 0 5
      148 DUPTABLE                         R22 K40 [{"name", "story"}]
      149 LOADK                            R23 K41 ["Base"]
      150 SETTABLEKS                       R23 R22 K38 ["name"]
      152 DUPCLOSURE                       R23 K42 [PROTO_7]
      153 CAPTURE                          VAL R3
      154 CAPTURE                          VAL R19
      155 CAPTURE                          VAL R18
      156 CAPTURE                          VAL R2
      157 CAPTURE                          VAL R14
      158 CAPTURE                          VAL R13
      159 SETTABLEKS                       R23 R22 K39 ["story"]
      161 DUPTABLE                         R23 K44 [{"name", "summary", "story"}]
      162 LOADK                            R24 K45 ["Negative margins"]
      163 SETTABLEKS                       R24 R23 K38 ["name"]
      165 LOADK                            R24 K46 ["`HeaderBar.Actions` implicitly applies a negative margin so that the glyph of the left- or right-most IconButton will be aligned with the page content."]
      166 SETTABLEKS                       R24 R23 K43 ["summary"]
      168 DUPCLOSURE                       R24 K47 [PROTO_13]
      169 CAPTURE                          VAL R2
      170 CAPTURE                          VAL R3
      171 CAPTURE                          VAL R19
      172 CAPTURE                          VAL R18
      173 CAPTURE                          VAL R14
      174 CAPTURE                          VAL R7
      175 SETTABLEKS                       R24 R23 K39 ["story"]
      177 DUPTABLE                         R24 K44 [{"name", "summary", "story"}]
      178 LOADK                            R25 K48 ["Dual-pane layout"]
      179 SETTABLEKS                       R25 R24 K38 ["name"]
      181 LOADK                            R25 K49 ["Shows how HeaderBar composition adapts across multiple panes. At Small breakpoints, the Primary pane collapses and can be opened from the Aside pane."]
      182 SETTABLEKS                       R25 R24 K43 ["summary"]
      184 DUPCLOSURE                       R25 K50 [PROTO_20]
      185 CAPTURE                          VAL R3
      186 CAPTURE                          VAL R16
      187 CAPTURE                          VAL R5
      188 CAPTURE                          VAL R19
      189 CAPTURE                          VAL R15
      190 CAPTURE                          VAL R6
      191 CAPTURE                          VAL R18
      192 CAPTURE                          VAL R14
      193 CAPTURE                          VAL R10
      194 CAPTURE                          VAL R2
      195 CAPTURE                          VAL R7
      196 CAPTURE                          VAL R8
      197 CAPTURE                          VAL R11
      198 CAPTURE                          VAL R9
      199 CAPTURE                          VAL R12
      200 CAPTURE                          VAL R4
      201 SETTABLEKS                       R25 R24 K39 ["story"]
      203 DUPTABLE                         R25 K44 [{"name", "summary", "story"}]
      204 LOADK                            R26 K51 ["Menu leading accessory"]
      205 SETTABLEKS                       R26 R25 K38 ["name"]
      207 LOADK                            R26 K52 ["Shows when menu and logo content belongs in HeaderBar versus the surrounding navigation shell."]
      208 SETTABLEKS                       R26 R25 K43 ["summary"]
      210 DUPCLOSURE                       R26 K53 [PROTO_29]
      211 CAPTURE                          VAL R3
      212 CAPTURE                          VAL R16
      213 CAPTURE                          VAL R5
      214 CAPTURE                          VAL R19
      215 CAPTURE                          VAL R15
      216 CAPTURE                          VAL R18
      217 CAPTURE                          VAL R10
      218 CAPTURE                          VAL R2
      219 CAPTURE                          VAL R14
      220 SETTABLEKS                       R26 R25 K39 ["story"]
      222 DUPTABLE                         R26 K44 [{"name", "summary", "story"}]
      223 LOADK                            R27 K54 ["Title positioning"]
      224 SETTABLEKS                       R27 R26 K38 ["name"]
      226 LOADK                            R27 K55 ["Shows whether title content lives inside HeaderBar or below it in the page body."]
      227 SETTABLEKS                       R27 R26 K43 ["summary"]
      229 DUPCLOSURE                       R27 K56 [PROTO_34]
      230 CAPTURE                          VAL R3
      231 CAPTURE                          VAL R16
      232 CAPTURE                          VAL R5
      233 CAPTURE                          VAL R19
      234 CAPTURE                          VAL R15
      235 CAPTURE                          VAL R18
      236 CAPTURE                          VAL R10
      237 CAPTURE                          VAL R2
      238 CAPTURE                          VAL R14
      239 SETTABLEKS                       R27 R26 K39 ["story"]
      241 SETLIST                          R21 R22 5 [1]
      243 SETTABLEKS                       R21 R20 K32 ["stories"]
      245 RETURN                           R20 1
