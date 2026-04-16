PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 RETURN                           R0 0

PROTO_4:
        0 RETURN                           R0 0

PROTO_5:
        0 RETURN                           R0 0

PROTO_6:
        0 NOT                              R1 R0
        1 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_6]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_8:
        0 NOT                              R1 R0
        1 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_8]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K0 ["useState"]
        8 LOADB                            R4 0
        9 CALL                             R3 1 2
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R5 R6 K0 ["useState"]
       13 LOADK                            R6 K1 ["en"]
       14 CALL                             R5 1 2
       15 GETUPVAL                         R8 0
       16 GETTABLEKS                       R7 R8 K2 ["createElement"]
       18 GETUPVAL                         R9 1
       19 GETTABLEKS                       R8 R9 K3 ["Root"]
       21 DUPTABLE                         R9 K7 [{"hasDivider", "isInset", "size"}]
       22 GETTABLEKS                       R11 R0 K8 ["controls"]
       24 GETTABLEKS                       R10 R11 K4 ["hasDivider"]
       26 SETTABLEKS                       R10 R9 K4 ["hasDivider"]
       28 GETTABLEKS                       R11 R0 K8 ["controls"]
       30 GETTABLEKS                       R10 R11 K5 ["isInset"]
       32 SETTABLEKS                       R10 R9 K5 ["isInset"]
       34 GETTABLEKS                       R11 R0 K8 ["controls"]
       36 GETTABLEKS                       R10 R11 K6 ["size"]
       38 SETTABLEKS                       R10 R9 K6 ["size"]
       40 DUPTABLE                         R10 K17 [{"PhoneNumber", "Language", "EmailAddress", "Birthday", "AgeGroup", "Gender", "AutoChatTranslation", "TrackLocation"}]
       41 GETUPVAL                         R12 0
       42 GETTABLEKS                       R11 R12 K2 ["createElement"]
       44 GETUPVAL                         R13 1
       45 GETTABLEKS                       R12 R13 K18 ["Item"]
       47 DUPTABLE                         R13 K24 [{"title", "description", "trailing", "onActivated", "LayoutOrder"}]
       48 LOADK                            R14 K25 ["Phone number"]
       49 SETTABLEKS                       R14 R13 K19 ["title"]
       51 LOADK                            R14 K26 ["***-***-883"]
       52 SETTABLEKS                       R14 R13 K20 ["description"]
       54 GETUPVAL                         R15 0
       55 GETTABLEKS                       R14 R15 K2 ["createElement"]
       57 GETUPVAL                         R15 2
       58 DUPTABLE                         R16 K28 [{"tag"}]
       59 LOADK                            R17 K29 ["auto-xy"]
       60 SETTABLEKS                       R17 R16 K27 ["tag"]
       62 GETUPVAL                         R18 0
       63 GETTABLEKS                       R17 R18 K2 ["createElement"]
       65 GETUPVAL                         R18 3
       66 DUPTABLE                         R19 K33 [{"text", "icon", "variant"}]
       67 LOADK                            R20 K34 ["Verified"]
       68 SETTABLEKS                       R20 R19 K30 ["text"]
       70 GETUPVAL                         R22 4
       71 GETTABLEKS                       R21 R22 K35 ["Icon"]
       73 GETTABLEKS                       R20 R21 K36 ["CircleCheck"]
       75 SETTABLEKS                       R20 R19 K31 ["icon"]
       77 GETUPVAL                         R21 5
       78 GETTABLEKS                       R20 R21 K37 ["Primary"]
       80 SETTABLEKS                       R20 R19 K32 ["variant"]
       82 CALL                             R17 2 -1
       83 CALL                             R14 -1 1
       84 SETTABLEKS                       R14 R13 K21 ["trailing"]
       86 DUPCLOSURE                       R14 K38 [PROTO_0]
       87 SETTABLEKS                       R14 R13 K22 ["onActivated"]
       89 LOADN                            R14 1
       90 SETTABLEKS                       R14 R13 K23 ["LayoutOrder"]
       92 CALL                             R11 2 1
       93 SETTABLEKS                       R11 R10 K9 ["PhoneNumber"]
       95 GETUPVAL                         R12 0
       96 GETTABLEKS                       R11 R12 K2 ["createElement"]
       98 GETUPVAL                         R13 1
       99 GETTABLEKS                       R12 R13 K18 ["Item"]
      101 DUPTABLE                         R13 K39 [{"title", "trailing"}]
      102 LOADK                            R14 K10 ["Language"]
      103 SETTABLEKS                       R14 R13 K19 ["title"]
      105 GETUPVAL                         R15 0
      106 GETTABLEKS                       R14 R15 K2 ["createElement"]
      108 GETUPVAL                         R16 6
      109 GETTABLEKS                       R15 R16 K3 ["Root"]
      111 DUPTABLE                         R16 K45 [{"label", "value", "items", "onItemChanged", "width", "LayoutOrder"}]
      112 LOADK                            R17 K46 [""]
      113 SETTABLEKS                       R17 R16 K40 ["label"]
      115 SETTABLEKS                       R5 R16 K41 ["value"]
      117 NEWTABLE                         R17 0 3
      119 DUPTABLE                         R18 K48 [{"id", "text"}]
      120 LOADK                            R19 K1 ["en"]
      121 SETTABLEKS                       R19 R18 K47 ["id"]
      123 LOADK                            R19 K49 ["English"]
      124 SETTABLEKS                       R19 R18 K30 ["text"]
      126 DUPTABLE                         R19 K48 [{"id", "text"}]
      127 LOADK                            R20 K50 ["es"]
      128 SETTABLEKS                       R20 R19 K47 ["id"]
      130 LOADK                            R20 K51 ["Spanish"]
      131 SETTABLEKS                       R20 R19 K30 ["text"]
      133 DUPTABLE                         R20 K48 [{"id", "text"}]
      134 LOADK                            R21 K52 ["fr"]
      135 SETTABLEKS                       R21 R20 K47 ["id"]
      137 LOADK                            R21 K53 ["French"]
      138 SETTABLEKS                       R21 R20 K30 ["text"]
      140 SETLIST                          R17 R18 3 [1]
      142 SETTABLEKS                       R17 R16 K42 ["items"]
      144 NEWCLOSURE                       R17 P1
      145 CAPTURE                          VAL R6
      146 SETTABLEKS                       R17 R16 K43 ["onItemChanged"]
      148 GETIMPORT                        R17 K56 [UDim.new]
      150 LOADN                            R18 0
      151 LOADN                            R19 140
      152 CALL                             R17 2 1
      153 SETTABLEKS                       R17 R16 K44 ["width"]
      155 LOADN                            R17 2
      156 SETTABLEKS                       R17 R16 K23 ["LayoutOrder"]
      158 CALL                             R14 2 1
      159 SETTABLEKS                       R14 R13 K21 ["trailing"]
      161 CALL                             R11 2 1
      162 SETTABLEKS                       R11 R10 K10 ["Language"]
      164 GETUPVAL                         R12 0
      165 GETTABLEKS                       R11 R12 K2 ["createElement"]
      167 GETUPVAL                         R13 1
      168 GETTABLEKS                       R12 R13 K18 ["Item"]
      170 DUPTABLE                         R13 K57 [{"title", "description", "onActivated", "LayoutOrder"}]
      171 LOADK                            R14 K58 ["Email address"]
      172 SETTABLEKS                       R14 R13 K19 ["title"]
      174 LOADK                            R14 K59 ["rob*******@gmail.com"]
      175 SETTABLEKS                       R14 R13 K20 ["description"]
      177 DUPCLOSURE                       R14 K60 [PROTO_2]
      178 SETTABLEKS                       R14 R13 K22 ["onActivated"]
      180 LOADN                            R14 3
      181 SETTABLEKS                       R14 R13 K23 ["LayoutOrder"]
      183 CALL                             R11 2 1
      184 SETTABLEKS                       R11 R10 K11 ["EmailAddress"]
      186 GETUPVAL                         R12 0
      187 GETTABLEKS                       R11 R12 K2 ["createElement"]
      189 GETUPVAL                         R13 1
      190 GETTABLEKS                       R12 R13 K18 ["Item"]
      192 DUPTABLE                         R13 K57 [{"title", "description", "onActivated", "LayoutOrder"}]
      193 LOADK                            R14 K12 ["Birthday"]
      194 SETTABLEKS                       R14 R13 K19 ["title"]
      196 LOADK                            R14 K61 ["Sep 27, 2000"]
      197 SETTABLEKS                       R14 R13 K20 ["description"]
      199 DUPCLOSURE                       R14 K62 [PROTO_3]
      200 SETTABLEKS                       R14 R13 K22 ["onActivated"]
      202 LOADN                            R14 4
      203 SETTABLEKS                       R14 R13 K23 ["LayoutOrder"]
      205 CALL                             R11 2 1
      206 SETTABLEKS                       R11 R10 K12 ["Birthday"]
      208 GETUPVAL                         R12 0
      209 GETTABLEKS                       R11 R12 K2 ["createElement"]
      211 GETUPVAL                         R13 1
      212 GETTABLEKS                       R12 R13 K18 ["Item"]
      214 DUPTABLE                         R13 K57 [{"title", "description", "onActivated", "LayoutOrder"}]
      215 LOADK                            R14 K63 ["Age Group"]
      216 SETTABLEKS                       R14 R13 K19 ["title"]
      218 LOADK                            R14 K64 ["18+"]
      219 SETTABLEKS                       R14 R13 K20 ["description"]
      221 DUPCLOSURE                       R14 K65 [PROTO_4]
      222 SETTABLEKS                       R14 R13 K22 ["onActivated"]
      224 LOADN                            R14 5
      225 SETTABLEKS                       R14 R13 K23 ["LayoutOrder"]
      227 CALL                             R11 2 1
      228 SETTABLEKS                       R11 R10 K13 ["AgeGroup"]
      230 GETUPVAL                         R12 0
      231 GETTABLEKS                       R11 R12 K2 ["createElement"]
      233 GETUPVAL                         R13 1
      234 GETTABLEKS                       R12 R13 K18 ["Item"]
      236 DUPTABLE                         R13 K57 [{"title", "description", "onActivated", "LayoutOrder"}]
      237 LOADK                            R14 K14 ["Gender"]
      238 SETTABLEKS                       R14 R13 K19 ["title"]
      240 LOADK                            R14 K66 ["Male"]
      241 SETTABLEKS                       R14 R13 K20 ["description"]
      243 DUPCLOSURE                       R14 K67 [PROTO_5]
      244 SETTABLEKS                       R14 R13 K22 ["onActivated"]
      246 LOADN                            R14 6
      247 SETTABLEKS                       R14 R13 K23 ["LayoutOrder"]
      249 CALL                             R11 2 1
      250 SETTABLEKS                       R11 R10 K14 ["Gender"]
      252 GETUPVAL                         R12 0
      253 GETTABLEKS                       R11 R12 K2 ["createElement"]
      255 GETUPVAL                         R13 1
      256 GETTABLEKS                       R12 R13 K18 ["Item"]
      258 DUPTABLE                         R13 K69 [{"leading", "title", "description", "onActivated", "LayoutOrder"}]
      259 LOADK                            R14 K70 ["speech-bubble-align-left"]
      260 SETTABLEKS                       R14 R13 K68 ["leading"]
      262 LOADK                            R14 K71 ["Automatic chat translation"]
      263 SETTABLEKS                       R14 R13 K19 ["title"]
      265 LOADK                            R14 K72 ["Translate chat messages from others"]
      266 SETTABLEKS                       R14 R13 K20 ["description"]
      268 DUPTABLE                         R14 K75 [{"onActivated", "inputType", "isChecked"}]
      269 NEWCLOSURE                       R15 P6
      270 CAPTURE                          VAL R2
      271 SETTABLEKS                       R15 R14 K22 ["onActivated"]
      273 GETUPVAL                         R16 7
      274 GETTABLEKS                       R15 R16 K76 ["Toggle"]
      276 SETTABLEKS                       R15 R14 K73 ["inputType"]
      278 SETTABLEKS                       R1 R14 K74 ["isChecked"]
      280 SETTABLEKS                       R14 R13 K22 ["onActivated"]
      282 LOADN                            R14 7
      283 SETTABLEKS                       R14 R13 K23 ["LayoutOrder"]
      285 CALL                             R11 2 1
      286 SETTABLEKS                       R11 R10 K15 ["AutoChatTranslation"]
      288 GETUPVAL                         R12 0
      289 GETTABLEKS                       R11 R12 K2 ["createElement"]
      291 GETUPVAL                         R13 1
      292 GETTABLEKS                       R12 R13 K18 ["Item"]
      294 DUPTABLE                         R13 K69 [{"leading", "title", "description", "onActivated", "LayoutOrder"}]
      295 LOADK                            R14 K77 ["location-pin"]
      296 SETTABLEKS                       R14 R13 K68 ["leading"]
      298 LOADK                            R14 K78 ["Track Location"]
      299 SETTABLEKS                       R14 R13 K19 ["title"]
      301 LOADK                            R14 K79 ["California, United States"]
      302 SETTABLEKS                       R14 R13 K20 ["description"]
      304 DUPTABLE                         R14 K75 [{"onActivated", "inputType", "isChecked"}]
      305 NEWCLOSURE                       R15 P7
      306 CAPTURE                          VAL R4
      307 SETTABLEKS                       R15 R14 K22 ["onActivated"]
      309 GETUPVAL                         R16 7
      310 GETTABLEKS                       R15 R16 K76 ["Toggle"]
      312 SETTABLEKS                       R15 R14 K73 ["inputType"]
      314 SETTABLEKS                       R3 R14 K74 ["isChecked"]
      316 SETTABLEKS                       R14 R13 K22 ["onActivated"]
      318 LOADN                            R14 8
      319 SETTABLEKS                       R14 R13 K23 ["LayoutOrder"]
      321 CALL                             R11 2 1
      322 SETTABLEKS                       R11 R10 K16 ["TrackLocation"]
      324 CALL                             R7 3 -1
      325 RETURN                           R7 -1

PROTO_11:
        0 NOT                              R1 R0
        1 RETURN                           R1 1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_11]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_13:
        0 NOT                              R1 R0
        1 RETURN                           R1 1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_13]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_15:
        0 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_17:
        0 RETURN                           R0 0

PROTO_18:
        0 RETURN                           R0 0

PROTO_19:
        0 RETURN                           R0 0

PROTO_20:
        0 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K0 ["useState"]
        8 LOADB                            R4 0
        9 CALL                             R3 1 2
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R5 R6 K0 ["useState"]
       13 LOADK                            R6 K1 ["en"]
       14 CALL                             R5 1 2
       15 GETUPVAL                         R8 0
       16 GETTABLEKS                       R7 R8 K2 ["createElement"]
       18 GETUPVAL                         R8 1
       19 DUPTABLE                         R9 K4 [{"tag"}]
       20 LOADK                            R10 K5 ["col gap-medium size-full-0 auto-y"]
       21 SETTABLEKS                       R10 R9 K3 ["tag"]
       23 DUPTABLE                         R10 K7 [{"SettingsSection"}]
       24 GETUPVAL                         R12 0
       25 GETTABLEKS                       R11 R12 K2 ["createElement"]
       27 GETUPVAL                         R13 2
       28 GETTABLEKS                       R12 R13 K8 ["Root"]
       30 DUPTABLE                         R13 K12 [{"hasDivider", "isInset", "size"}]
       31 GETTABLEKS                       R15 R0 K13 ["controls"]
       33 GETTABLEKS                       R14 R15 K9 ["hasDivider"]
       35 SETTABLEKS                       R14 R13 K9 ["hasDivider"]
       37 GETTABLEKS                       R15 R0 K13 ["controls"]
       39 GETTABLEKS                       R14 R15 K10 ["isInset"]
       41 SETTABLEKS                       R14 R13 K10 ["isInset"]
       43 GETTABLEKS                       R15 R0 K13 ["controls"]
       45 GETTABLEKS                       R14 R15 K11 ["size"]
       47 SETTABLEKS                       R14 R13 K11 ["size"]
       49 DUPTABLE                         R14 K22 [{"AutoChatTranslation", "AutoChatTranslation2", "Birthday", "Language", "GameItem", "GameItem2", "GameItem3", "GameItem4"}]
       50 GETUPVAL                         R16 0
       51 GETTABLEKS                       R15 R16 K2 ["createElement"]
       53 GETUPVAL                         R17 2
       54 GETTABLEKS                       R16 R17 K23 ["Item"]
       56 DUPTABLE                         R17 K28 [{"title", "description", "onActivated", "LayoutOrder"}]
       57 LOADK                            R18 K29 ["Automatic chat translation"]
       58 SETTABLEKS                       R18 R17 K24 ["title"]
       60 LOADK                            R18 K30 ["Translate chat messages from others"]
       61 SETTABLEKS                       R18 R17 K25 ["description"]
       63 DUPTABLE                         R18 K33 [{"onActivated", "inputType", "isChecked"}]
       64 NEWCLOSURE                       R19 P0
       65 CAPTURE                          VAL R2
       66 SETTABLEKS                       R19 R18 K26 ["onActivated"]
       68 GETUPVAL                         R20 3
       69 GETTABLEKS                       R19 R20 K34 ["Toggle"]
       71 SETTABLEKS                       R19 R18 K31 ["inputType"]
       73 SETTABLEKS                       R1 R18 K32 ["isChecked"]
       75 SETTABLEKS                       R18 R17 K26 ["onActivated"]
       77 LOADN                            R18 1
       78 SETTABLEKS                       R18 R17 K27 ["LayoutOrder"]
       80 CALL                             R15 2 1
       81 SETTABLEKS                       R15 R14 K14 ["AutoChatTranslation"]
       83 GETUPVAL                         R16 0
       84 GETTABLEKS                       R15 R16 K2 ["createElement"]
       86 GETUPVAL                         R17 2
       87 GETTABLEKS                       R16 R17 K23 ["Item"]
       89 DUPTABLE                         R17 K28 [{"title", "description", "onActivated", "LayoutOrder"}]
       90 LOADK                            R18 K29 ["Automatic chat translation"]
       91 SETTABLEKS                       R18 R17 K24 ["title"]
       93 LOADK                            R18 K30 ["Translate chat messages from others"]
       94 SETTABLEKS                       R18 R17 K25 ["description"]
       96 DUPTABLE                         R18 K33 [{"onActivated", "inputType", "isChecked"}]
       97 NEWCLOSURE                       R19 P1
       98 CAPTURE                          VAL R4
       99 SETTABLEKS                       R19 R18 K26 ["onActivated"]
      101 GETUPVAL                         R20 3
      102 GETTABLEKS                       R19 R20 K34 ["Toggle"]
      104 SETTABLEKS                       R19 R18 K31 ["inputType"]
      106 SETTABLEKS                       R3 R18 K32 ["isChecked"]
      108 SETTABLEKS                       R18 R17 K26 ["onActivated"]
      110 LOADN                            R18 2
      111 SETTABLEKS                       R18 R17 K27 ["LayoutOrder"]
      113 CALL                             R15 2 1
      114 SETTABLEKS                       R15 R14 K15 ["AutoChatTranslation2"]
      116 GETUPVAL                         R16 0
      117 GETTABLEKS                       R15 R16 K2 ["createElement"]
      119 GETUPVAL                         R17 2
      120 GETTABLEKS                       R16 R17 K23 ["Item"]
      122 DUPTABLE                         R17 K36 [{"title", "description", "trailing", "onActivated", "LayoutOrder"}]
      123 LOADK                            R18 K16 ["Birthday"]
      124 SETTABLEKS                       R18 R17 K24 ["title"]
      126 LOADK                            R18 K37 ["Sep 27, 2000"]
      127 SETTABLEKS                       R18 R17 K25 ["description"]
      129 GETUPVAL                         R19 0
      130 GETTABLEKS                       R18 R19 K2 ["createElement"]
      132 GETUPVAL                         R19 1
      133 DUPTABLE                         R20 K4 [{"tag"}]
      134 LOADK                            R21 K38 ["auto-xy"]
      135 SETTABLEKS                       R21 R20 K3 ["tag"]
      137 GETUPVAL                         R22 0
      138 GETTABLEKS                       R21 R22 K2 ["createElement"]
      140 GETUPVAL                         R22 4
      141 DUPTABLE                         R23 K42 [{"text", "icon", "variant"}]
      142 LOADK                            R24 K43 ["Verified"]
      143 SETTABLEKS                       R24 R23 K39 ["text"]
      145 GETUPVAL                         R26 5
      146 GETTABLEKS                       R25 R26 K44 ["Icon"]
      148 GETTABLEKS                       R24 R25 K45 ["CircleCheck"]
      150 SETTABLEKS                       R24 R23 K40 ["icon"]
      152 GETUPVAL                         R25 6
      153 GETTABLEKS                       R24 R25 K46 ["Primary"]
      155 SETTABLEKS                       R24 R23 K41 ["variant"]
      157 CALL                             R21 2 -1
      158 CALL                             R18 -1 1
      159 SETTABLEKS                       R18 R17 K35 ["trailing"]
      161 DUPCLOSURE                       R18 K47 [PROTO_15]
      162 SETTABLEKS                       R18 R17 K26 ["onActivated"]
      164 LOADN                            R18 3
      165 SETTABLEKS                       R18 R17 K27 ["LayoutOrder"]
      167 CALL                             R15 2 1
      168 SETTABLEKS                       R15 R14 K16 ["Birthday"]
      170 GETUPVAL                         R16 0
      171 GETTABLEKS                       R15 R16 K2 ["createElement"]
      173 GETUPVAL                         R17 2
      174 GETTABLEKS                       R16 R17 K23 ["Item"]
      176 DUPTABLE                         R17 K48 [{"title", "trailing", "LayoutOrder"}]
      177 LOADK                            R18 K17 ["Language"]
      178 SETTABLEKS                       R18 R17 K24 ["title"]
      180 GETUPVAL                         R19 0
      181 GETTABLEKS                       R18 R19 K2 ["createElement"]
      183 GETUPVAL                         R20 7
      184 GETTABLEKS                       R19 R20 K8 ["Root"]
      186 DUPTABLE                         R20 K54 [{"value", "items", "onItemChanged", "label", "width"}]
      187 SETTABLEKS                       R5 R20 K49 ["value"]
      189 NEWTABLE                         R21 0 3
      191 DUPTABLE                         R22 K56 [{"id", "text"}]
      192 LOADK                            R23 K1 ["en"]
      193 SETTABLEKS                       R23 R22 K55 ["id"]
      195 LOADK                            R23 K57 ["English"]
      196 SETTABLEKS                       R23 R22 K39 ["text"]
      198 DUPTABLE                         R23 K56 [{"id", "text"}]
      199 LOADK                            R24 K58 ["es"]
      200 SETTABLEKS                       R24 R23 K55 ["id"]
      202 LOADK                            R24 K59 ["Spanish"]
      203 SETTABLEKS                       R24 R23 K39 ["text"]
      205 DUPTABLE                         R24 K56 [{"id", "text"}]
      206 LOADK                            R25 K60 ["fr"]
      207 SETTABLEKS                       R25 R24 K55 ["id"]
      209 LOADK                            R25 K61 ["French"]
      210 SETTABLEKS                       R25 R24 K39 ["text"]
      212 SETLIST                          R21 R22 3 [1]
      214 SETTABLEKS                       R21 R20 K50 ["items"]
      216 NEWCLOSURE                       R21 P3
      217 CAPTURE                          VAL R6
      218 SETTABLEKS                       R21 R20 K51 ["onItemChanged"]
      220 LOADK                            R21 K62 [""]
      221 SETTABLEKS                       R21 R20 K52 ["label"]
      223 GETIMPORT                        R21 K65 [UDim.new]
      225 LOADN                            R22 0
      226 LOADN                            R23 140
      227 CALL                             R21 2 1
      228 SETTABLEKS                       R21 R20 K53 ["width"]
      230 CALL                             R18 2 1
      231 SETTABLEKS                       R18 R17 K35 ["trailing"]
      233 LOADN                            R18 4
      234 SETTABLEKS                       R18 R17 K27 ["LayoutOrder"]
      236 CALL                             R15 2 1
      237 SETTABLEKS                       R15 R14 K17 ["Language"]
      239 GETUPVAL                         R16 0
      240 GETTABLEKS                       R15 R16 K2 ["createElement"]
      242 GETUPVAL                         R17 2
      243 GETTABLEKS                       R16 R17 K23 ["Item"]
      245 DUPTABLE                         R17 K67 [{"leading", "title", "trailing", "onActivated", "LayoutOrder"}]
      246 DUPTABLE                         R18 K69 [{"iconName"}]
      247 LOADK                            R19 K70 ["rbxthumb://type=GameIcon&id=1818&w=150&h=150"]
      248 SETTABLEKS                       R19 R18 K68 ["iconName"]
      250 SETTABLEKS                       R18 R17 K66 ["leading"]
      252 DUPTABLE                         R18 K72 [{"title", "metadata"}]
      253 LOADK                            R19 K73 ["Item Name"]
      254 SETTABLEKS                       R19 R18 K24 ["title"]
      256 LOADK                            R19 K74 ["Metadata"]
      257 SETTABLEKS                       R19 R18 K71 ["metadata"]
      259 SETTABLEKS                       R18 R17 K24 ["title"]
      261 GETUPVAL                         R19 0
      262 GETTABLEKS                       R18 R19 K2 ["createElement"]
      264 GETUPVAL                         R19 8
      265 DUPTABLE                         R20 K75 [{"variant"}]
      266 GETUPVAL                         R22 9
      267 GETTABLEKS                       R21 R22 K76 ["Emphasis"]
      269 SETTABLEKS                       R21 R20 K41 ["variant"]
      271 CALL                             R18 2 1
      272 SETTABLEKS                       R18 R17 K35 ["trailing"]
      274 DUPCLOSURE                       R18 K77 [PROTO_17]
      275 SETTABLEKS                       R18 R17 K26 ["onActivated"]
      277 LOADN                            R18 5
      278 SETTABLEKS                       R18 R17 K27 ["LayoutOrder"]
      280 CALL                             R15 2 1
      281 SETTABLEKS                       R15 R14 K18 ["GameItem"]
      283 GETUPVAL                         R16 0
      284 GETTABLEKS                       R15 R16 K2 ["createElement"]
      286 GETUPVAL                         R17 2
      287 GETTABLEKS                       R16 R17 K23 ["Item"]
      289 DUPTABLE                         R17 K78 [{"leading", "title", "onActivated", "LayoutOrder"}]
      290 DUPTABLE                         R18 K69 [{"iconName"}]
      291 LOADK                            R19 K79 ["rbxthumb://type=GameIcon&id=2788229376&w=150&h=150"]
      292 SETTABLEKS                       R19 R18 K68 ["iconName"]
      294 SETTABLEKS                       R18 R17 K66 ["leading"]
      296 DUPTABLE                         R18 K72 [{"title", "metadata"}]
      297 LOADK                            R19 K73 ["Item Name"]
      298 SETTABLEKS                       R19 R18 K24 ["title"]
      300 LOADK                            R19 K74 ["Metadata"]
      301 SETTABLEKS                       R19 R18 K71 ["metadata"]
      303 SETTABLEKS                       R18 R17 K24 ["title"]
      305 DUPCLOSURE                       R18 K80 [PROTO_18]
      306 SETTABLEKS                       R18 R17 K26 ["onActivated"]
      308 LOADN                            R18 6
      309 SETTABLEKS                       R18 R17 K27 ["LayoutOrder"]
      311 CALL                             R15 2 1
      312 SETTABLEKS                       R15 R14 K19 ["GameItem2"]
      314 GETUPVAL                         R16 0
      315 GETTABLEKS                       R15 R16 K2 ["createElement"]
      317 GETUPVAL                         R17 2
      318 GETTABLEKS                       R16 R17 K23 ["Item"]
      320 DUPTABLE                         R17 K67 [{"leading", "title", "trailing", "onActivated", "LayoutOrder"}]
      321 DUPTABLE                         R18 K69 [{"iconName"}]
      322 LOADK                            R19 K81 ["rbxthumb://type=GameIcon&id=1281960580&w=150&h=150"]
      323 SETTABLEKS                       R19 R18 K68 ["iconName"]
      325 SETTABLEKS                       R18 R17 K66 ["leading"]
      327 DUPTABLE                         R18 K72 [{"title", "metadata"}]
      328 LOADK                            R19 K73 ["Item Name"]
      329 SETTABLEKS                       R19 R18 K24 ["title"]
      331 LOADK                            R19 K74 ["Metadata"]
      332 SETTABLEKS                       R19 R18 K71 ["metadata"]
      334 SETTABLEKS                       R18 R17 K24 ["title"]
      336 GETUPVAL                         R19 0
      337 GETTABLEKS                       R18 R19 K2 ["createElement"]
      339 GETUPVAL                         R19 1
      340 DUPTABLE                         R20 K4 [{"tag"}]
      341 LOADK                            R21 K82 ["row items-center gap-large auto-xy"]
      342 SETTABLEKS                       R21 R20 K3 ["tag"]
      344 DUPTABLE                         R21 K85 [{"Dot", "UpdateBadge"}]
      345 GETUPVAL                         R23 0
      346 GETTABLEKS                       R22 R23 K2 ["createElement"]
      348 GETUPVAL                         R23 8
      349 DUPTABLE                         R24 K75 [{"variant"}]
      350 GETUPVAL                         R26 9
      351 GETTABLEKS                       R25 R26 K76 ["Emphasis"]
      353 SETTABLEKS                       R25 R24 K41 ["variant"]
      355 CALL                             R22 2 1
      356 SETTABLEKS                       R22 R21 K83 ["Dot"]
      358 GETUPVAL                         R23 0
      359 GETTABLEKS                       R22 R23 K2 ["createElement"]
      361 GETUPVAL                         R23 4
      362 DUPTABLE                         R24 K86 [{"text", "variant", "LayoutOrder"}]
      363 LOADK                            R25 K87 ["Update"]
      364 SETTABLEKS                       R25 R24 K39 ["text"]
      366 GETUPVAL                         R26 6
      367 GETTABLEKS                       R25 R26 K88 ["Neutral"]
      369 SETTABLEKS                       R25 R24 K41 ["variant"]
      371 LOADN                            R25 2
      372 SETTABLEKS                       R25 R24 K27 ["LayoutOrder"]
      374 CALL                             R22 2 1
      375 SETTABLEKS                       R22 R21 K84 ["UpdateBadge"]
      377 CALL                             R18 3 1
      378 SETTABLEKS                       R18 R17 K35 ["trailing"]
      380 DUPCLOSURE                       R18 K89 [PROTO_19]
      381 SETTABLEKS                       R18 R17 K26 ["onActivated"]
      383 LOADN                            R18 7
      384 SETTABLEKS                       R18 R17 K27 ["LayoutOrder"]
      386 CALL                             R15 2 1
      387 SETTABLEKS                       R15 R14 K20 ["GameItem3"]
      389 GETUPVAL                         R16 0
      390 GETTABLEKS                       R15 R16 K2 ["createElement"]
      392 GETUPVAL                         R17 2
      393 GETTABLEKS                       R16 R17 K23 ["Item"]
      395 DUPTABLE                         R17 K78 [{"leading", "title", "onActivated", "LayoutOrder"}]
      396 DUPTABLE                         R18 K69 [{"iconName"}]
      397 LOADK                            R19 K90 ["rbxthumb://type=GameIcon&id=606849621&w=150&h=150"]
      398 SETTABLEKS                       R19 R18 K68 ["iconName"]
      400 SETTABLEKS                       R18 R17 K66 ["leading"]
      402 DUPTABLE                         R18 K72 [{"title", "metadata"}]
      403 LOADK                            R19 K73 ["Item Name"]
      404 SETTABLEKS                       R19 R18 K24 ["title"]
      406 LOADK                            R19 K74 ["Metadata"]
      407 SETTABLEKS                       R19 R18 K71 ["metadata"]
      409 SETTABLEKS                       R18 R17 K24 ["title"]
      411 DUPCLOSURE                       R18 K91 [PROTO_20]
      412 SETTABLEKS                       R18 R17 K26 ["onActivated"]
      414 LOADN                            R18 8
      415 SETTABLEKS                       R18 R17 K27 ["LayoutOrder"]
      417 CALL                             R15 2 1
      418 SETTABLEKS                       R15 R14 K21 ["GameItem4"]
      420 CALL                             R11 3 1
      421 SETTABLEKS                       R11 R10 K6 ["SettingsSection"]
      423 CALL                             R7 3 -1
      424 RETURN                           R7 -1

PROTO_22:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Root"]
        6 DUPTABLE                         R3 K5 [{"hasDivider", "isInset", "size"}]
        7 GETTABLEKS                       R5 R0 K6 ["controls"]
        9 GETTABLEKS                       R4 R5 K2 ["hasDivider"]
       11 SETTABLEKS                       R4 R3 K2 ["hasDivider"]
       13 GETTABLEKS                       R5 R0 K6 ["controls"]
       15 GETTABLEKS                       R4 R5 K3 ["isInset"]
       17 SETTABLEKS                       R4 R3 K3 ["isInset"]
       19 GETTABLEKS                       R5 R0 K6 ["controls"]
       21 GETTABLEKS                       R4 R5 K4 ["size"]
       23 SETTABLEKS                       R4 R3 K4 ["size"]
       25 DUPTABLE                         R4 K11 [{"MediaItem", "AvatarItem", "IconItem", "NoLeadingItem"}]
       26 GETUPVAL                         R6 0
       27 GETTABLEKS                       R5 R6 K0 ["createElement"]
       29 GETUPVAL                         R7 1
       30 GETTABLEKS                       R6 R7 K12 ["Item"]
       32 DUPTABLE                         R7 K17 [{"leading", "title", "description", "LayoutOrder"}]
       33 DUPTABLE                         R8 K19 [{"iconName"}]
       34 LOADK                            R9 K20 ["rbxthumb://type=GameIcon&id=1818&w=150&h=150"]
       35 SETTABLEKS                       R9 R8 K18 ["iconName"]
       37 SETTABLEKS                       R8 R7 K13 ["leading"]
       39 DUPTABLE                         R8 K22 [{"title", "metadata"}]
       40 LOADK                            R9 K23 ["Media"]
       41 SETTABLEKS                       R9 R8 K14 ["title"]
       43 LOADK                            R9 K24 ["Metadata"]
       44 SETTABLEKS                       R9 R8 K21 ["metadata"]
       46 SETTABLEKS                       R8 R7 K14 ["title"]
       48 LOADK                            R8 K25 ["Leading media thumbnail"]
       49 SETTABLEKS                       R8 R7 K15 ["description"]
       51 LOADN                            R8 1
       52 SETTABLEKS                       R8 R7 K16 ["LayoutOrder"]
       54 CALL                             R5 2 1
       55 SETTABLEKS                       R5 R4 K7 ["MediaItem"]
       57 GETUPVAL                         R6 0
       58 GETTABLEKS                       R5 R6 K0 ["createElement"]
       60 GETUPVAL                         R7 1
       61 GETTABLEKS                       R6 R7 K12 ["Item"]
       63 DUPTABLE                         R7 K17 [{"leading", "title", "description", "LayoutOrder"}]
       64 DUPTABLE                         R8 K28 [{"type", "userId"}]
       65 GETUPVAL                         R10 2
       66 GETTABLEKS                       R9 R10 K29 ["Avatar"]
       68 SETTABLEKS                       R9 R8 K26 ["type"]
       70 LOADK                            R9 K30 [24813339]
       71 SETTABLEKS                       R9 R8 K27 ["userId"]
       73 SETTABLEKS                       R8 R7 K13 ["leading"]
       75 DUPTABLE                         R8 K22 [{"title", "metadata"}]
       76 LOADK                            R9 K29 ["Avatar"]
       77 SETTABLEKS                       R9 R8 K14 ["title"]
       79 LOADK                            R9 K24 ["Metadata"]
       80 SETTABLEKS                       R9 R8 K21 ["metadata"]
       82 SETTABLEKS                       R8 R7 K14 ["title"]
       84 LOADK                            R8 K31 ["Leading avatar"]
       85 SETTABLEKS                       R8 R7 K15 ["description"]
       87 LOADN                            R8 2
       88 SETTABLEKS                       R8 R7 K16 ["LayoutOrder"]
       90 CALL                             R5 2 1
       91 SETTABLEKS                       R5 R4 K8 ["AvatarItem"]
       93 GETUPVAL                         R6 0
       94 GETTABLEKS                       R5 R6 K0 ["createElement"]
       96 GETUPVAL                         R7 1
       97 GETTABLEKS                       R6 R7 K12 ["Item"]
       99 DUPTABLE                         R7 K17 [{"leading", "title", "description", "LayoutOrder"}]
      100 GETUPVAL                         R10 3
      101 GETTABLEKS                       R9 R10 K32 ["Icon"]
      103 GETTABLEKS                       R8 R9 K33 ["Robux"]
      105 SETTABLEKS                       R8 R7 K13 ["leading"]
      107 DUPTABLE                         R8 K22 [{"title", "metadata"}]
      108 LOADK                            R9 K32 ["Icon"]
      109 SETTABLEKS                       R9 R8 K14 ["title"]
      111 LOADK                            R9 K24 ["Metadata"]
      112 SETTABLEKS                       R9 R8 K21 ["metadata"]
      114 SETTABLEKS                       R8 R7 K14 ["title"]
      116 LOADK                            R8 K34 ["Leading icon"]
      117 SETTABLEKS                       R8 R7 K15 ["description"]
      119 LOADN                            R8 3
      120 SETTABLEKS                       R8 R7 K16 ["LayoutOrder"]
      122 CALL                             R5 2 1
      123 SETTABLEKS                       R5 R4 K9 ["IconItem"]
      125 GETUPVAL                         R6 0
      126 GETTABLEKS                       R5 R6 K0 ["createElement"]
      128 GETUPVAL                         R7 1
      129 GETTABLEKS                       R6 R7 K12 ["Item"]
      131 DUPTABLE                         R7 K35 [{"title", "description", "LayoutOrder"}]
      132 DUPTABLE                         R8 K22 [{"title", "metadata"}]
      133 LOADK                            R9 K36 ["No Leading"]
      134 SETTABLEKS                       R9 R8 K14 ["title"]
      136 LOADK                            R9 K24 ["Metadata"]
      137 SETTABLEKS                       R9 R8 K21 ["metadata"]
      139 SETTABLEKS                       R8 R7 K14 ["title"]
      141 LOADK                            R8 K37 ["No leading accessory"]
      142 SETTABLEKS                       R8 R7 K15 ["description"]
      144 LOADN                            R8 4
      145 SETTABLEKS                       R8 R7 K16 ["LayoutOrder"]
      147 CALL                             R5 2 1
      148 SETTABLEKS                       R5 R4 K10 ["NoLeadingItem"]
      150 CALL                             R1 3 -1
      151 RETURN                           R1 -1

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
       16 GETTABLEKS                       R4 R1 K8 ["Dash"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["React"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R7 R0 K10 ["Enums"]
       28 GETTABLEKS                       R6 R7 K11 ["AccessoryType"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K6 [require]
       33 GETTABLEKS                       R8 R0 K12 ["Components"]
       35 GETTABLEKS                       R7 R8 K13 ["Badge"]
       37 CALL                             R6 1 1
       38 GETIMPORT                        R7 K6 [require]
       40 GETTABLEKS                       R9 R0 K10 ["Enums"]
       42 GETTABLEKS                       R8 R9 K14 ["BadgeVariant"]
       44 CALL                             R7 1 1
       45 GETIMPORT                        R8 K6 [require]
       47 GETTABLEKS                       R10 R0 K12 ["Components"]
       49 GETTABLEKS                       R9 R10 K15 ["Dropdown"]
       51 CALL                             R8 1 1
       52 GETIMPORT                        R9 K6 [require]
       54 GETTABLEKS                       R11 R0 K10 ["Enums"]
       56 GETTABLEKS                       R10 R11 K16 ["InputSize"]
       58 CALL                             R9 1 1
       59 GETIMPORT                        R10 K6 [require]
       61 GETTABLEKS                       R12 R0 K12 ["Components"]
       63 GETTABLEKS                       R11 R12 K17 ["List"]
       65 CALL                             R10 1 1
       66 GETIMPORT                        R11 K6 [require]
       68 GETTABLEKS                       R13 R0 K10 ["Enums"]
       70 GETTABLEKS                       R12 R13 K18 ["ListItemInputType"]
       72 CALL                             R11 1 1
       73 GETIMPORT                        R12 K6 [require]
       75 GETTABLEKS                       R14 R0 K12 ["Components"]
       77 GETTABLEKS                       R13 R14 K19 ["StatusIndicator"]
       79 CALL                             R12 1 1
       80 GETIMPORT                        R13 K6 [require]
       82 GETTABLEKS                       R15 R0 K10 ["Enums"]
       84 GETTABLEKS                       R14 R15 K20 ["StatusIndicatorVariant"]
       86 CALL                             R13 1 1
       87 GETIMPORT                        R14 K6 [require]
       89 GETTABLEKS                       R16 R0 K12 ["Components"]
       91 GETTABLEKS                       R15 R16 K21 ["View"]
       93 CALL                             R14 1 1
       94 DUPCLOSURE                       R15 K22 [PROTO_10]
       95 CAPTURE                          VAL R4
       96 CAPTURE                          VAL R10
       97 CAPTURE                          VAL R14
       98 CAPTURE                          VAL R6
       99 CAPTURE                          VAL R2
      100 CAPTURE                          VAL R7
      101 CAPTURE                          VAL R8
      102 CAPTURE                          VAL R11
      103 DUPCLOSURE                       R16 K23 [PROTO_21]
      104 CAPTURE                          VAL R4
      105 CAPTURE                          VAL R14
      106 CAPTURE                          VAL R10
      107 CAPTURE                          VAL R11
      108 CAPTURE                          VAL R6
      109 CAPTURE                          VAL R2
      110 CAPTURE                          VAL R7
      111 CAPTURE                          VAL R8
      112 CAPTURE                          VAL R12
      113 CAPTURE                          VAL R13
      114 DUPTABLE                         R17 K27 [{"summary", "stories", "controls"}]
      115 LOADK                            R18 K17 ["List"]
      116 SETTABLEKS                       R18 R17 K24 ["summary"]
      118 NEWTABLE                         R18 0 3
      120 DUPTABLE                         R19 K30 [{"name", "story"}]
      121 LOADK                            R20 K31 ["Base"]
      122 SETTABLEKS                       R20 R19 K28 ["name"]
      124 DUPCLOSURE                       R20 K32 [PROTO_22]
      125 CAPTURE                          VAL R4
      126 CAPTURE                          VAL R10
      127 CAPTURE                          VAL R5
      128 CAPTURE                          VAL R2
      129 SETTABLEKS                       R20 R19 K29 ["story"]
      131 DUPTABLE                         R20 K30 [{"name", "story"}]
      132 LOADK                            R21 K33 ["Settings"]
      133 SETTABLEKS                       R21 R20 K28 ["name"]
      135 SETTABLEKS                       R15 R20 K29 ["story"]
      137 DUPTABLE                         R21 K30 [{"name", "story"}]
      138 LOADK                            R22 K34 ["Games List"]
      139 SETTABLEKS                       R22 R21 K28 ["name"]
      141 SETTABLEKS                       R16 R21 K29 ["story"]
      143 SETLIST                          R18 R19 3 [1]
      145 SETTABLEKS                       R18 R17 K25 ["stories"]
      147 DUPTABLE                         R18 K38 [{"hasDivider", "isInset", "size"}]
      148 LOADB                            R19 1
      149 SETTABLEKS                       R19 R18 K35 ["hasDivider"]
      151 LOADB                            R19 1
      152 SETTABLEKS                       R19 R18 K36 ["isInset"]
      154 GETTABLEKS                       R19 R3 K39 ["values"]
      156 MOVE                             R20 R9
      157 CALL                             R19 1 1
      158 SETTABLEKS                       R19 R18 K37 ["size"]
      160 SETTABLEKS                       R18 R17 K26 ["controls"]
      162 RETURN                           R17 1
