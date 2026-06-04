PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K2 [{"tag"}]
        5 LOADK                            R4 K3 ["col size-full-0 auto-y bg-surface-100"]
        6 SETTABLEKS                       R4 R3 K1 ["tag"]
        8 DUPTABLE                         R4 K5 [{"List"}]
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R5 R5 K0 ["createElement"]
       12 GETUPVAL                         R6 2
       13 GETTABLEKS                       R6 R6 K6 ["Root"]
       15 DUPTABLE                         R7 K10 [{"hasDivider", "isContained", "size"}]
       16 GETUPVAL                         R9 3
       17 GETTABLEKS                       R10 R0 K11 ["controls"]
       19 GETTABLEKS                       R10 R10 K7 ["hasDivider"]
       21 GETTABLE                         R8 R9 R10
       22 SETTABLEKS                       R8 R7 K7 ["hasDivider"]
       24 GETUPVAL                         R9 4
       25 GETTABLEKS                       R10 R0 K11 ["controls"]
       27 GETTABLEKS                       R10 R10 K8 ["isContained"]
       29 GETTABLE                         R8 R9 R10
       30 SETTABLEKS                       R8 R7 K8 ["isContained"]
       32 GETTABLEKS                       R8 R0 K11 ["controls"]
       34 GETTABLEKS                       R8 R8 K9 ["size"]
       36 SETTABLEKS                       R8 R7 K9 ["size"]
       38 DUPTABLE                         R8 K15 [{"ItemA", "ItemB", "ItemC"}]
       39 GETUPVAL                         R9 0
       40 GETTABLEKS                       R9 R9 K0 ["createElement"]
       42 GETUPVAL                         R10 2
       43 GETTABLEKS                       R10 R10 K16 ["Item"]
       45 DUPTABLE                         R11 K21 [{"title", "description", "onActivated", "LayoutOrder"}]
       46 LOADK                            R12 K22 ["Phone number"]
       47 SETTABLEKS                       R12 R11 K17 ["title"]
       49 LOADK                            R12 K23 ["***-***-883"]
       50 SETTABLEKS                       R12 R11 K18 ["description"]
       52 DUPCLOSURE                       R12 K24 [PROTO_0]
       53 SETTABLEKS                       R12 R11 K19 ["onActivated"]
       55 LOADN                            R12 1
       56 SETTABLEKS                       R12 R11 K20 ["LayoutOrder"]
       58 CALL                             R9 2 1
       59 SETTABLEKS                       R9 R8 K12 ["ItemA"]
       61 GETUPVAL                         R9 0
       62 GETTABLEKS                       R9 R9 K0 ["createElement"]
       64 GETUPVAL                         R10 2
       65 GETTABLEKS                       R10 R10 K16 ["Item"]
       67 DUPTABLE                         R11 K21 [{"title", "description", "onActivated", "LayoutOrder"}]
       68 LOADK                            R12 K25 ["Language"]
       69 SETTABLEKS                       R12 R11 K17 ["title"]
       71 LOADK                            R12 K26 ["English"]
       72 SETTABLEKS                       R12 R11 K18 ["description"]
       74 DUPCLOSURE                       R12 K27 [PROTO_1]
       75 SETTABLEKS                       R12 R11 K19 ["onActivated"]
       77 LOADN                            R12 2
       78 SETTABLEKS                       R12 R11 K20 ["LayoutOrder"]
       80 CALL                             R9 2 1
       81 SETTABLEKS                       R9 R8 K13 ["ItemB"]
       83 GETUPVAL                         R9 0
       84 GETTABLEKS                       R9 R9 K0 ["createElement"]
       86 GETUPVAL                         R10 2
       87 GETTABLEKS                       R10 R10 K16 ["Item"]
       89 DUPTABLE                         R11 K21 [{"title", "description", "onActivated", "LayoutOrder"}]
       90 LOADK                            R12 K28 ["Email address"]
       91 SETTABLEKS                       R12 R11 K17 ["title"]
       93 LOADK                            R12 K29 ["rob*******@gmail.com"]
       94 SETTABLEKS                       R12 R11 K18 ["description"]
       96 DUPCLOSURE                       R12 K30 [PROTO_2]
       97 SETTABLEKS                       R12 R11 K19 ["onActivated"]
       99 LOADN                            R12 3
      100 SETTABLEKS                       R12 R11 K20 ["LayoutOrder"]
      102 CALL                             R9 2 1
      103 SETTABLEKS                       R9 R8 K14 ["ItemC"]
      105 CALL                             R5 3 1
      106 SETTABLEKS                       R5 R4 K4 ["List"]
      108 CALL                             R1 3 -1
      109 RETURN                           R1 -1

PROTO_4:
        0 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_6:
        0 RETURN                           R0 0

PROTO_7:
        0 RETURN                           R0 0

PROTO_8:
        0 RETURN                           R0 0

PROTO_9:
        0 RETURN                           R0 0

PROTO_10:
        0 NOT                              R1 R0
        1 RETURN                           R1 1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_10]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_12:
        0 NOT                              R1 R0
        1 RETURN                           R1 1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_12]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K0 ["useState"]
        8 LOADB                            R4 0
        9 CALL                             R3 1 2
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R5 R5 K0 ["useState"]
       13 LOADK                            R6 K1 ["en"]
       14 CALL                             R5 1 2
       15 GETUPVAL                         R7 0
       16 GETTABLEKS                       R7 R7 K2 ["createElement"]
       18 GETUPVAL                         R8 1
       19 GETTABLEKS                       R8 R8 K3 ["Root"]
       21 DUPTABLE                         R9 K7 [{"hasDivider", "isContained", "size"}]
       22 GETUPVAL                         R11 2
       23 GETTABLEKS                       R12 R0 K8 ["controls"]
       25 GETTABLEKS                       R12 R12 K4 ["hasDivider"]
       27 GETTABLE                         R10 R11 R12
       28 SETTABLEKS                       R10 R9 K4 ["hasDivider"]
       30 GETUPVAL                         R11 3
       31 GETTABLEKS                       R12 R0 K8 ["controls"]
       33 GETTABLEKS                       R12 R12 K5 ["isContained"]
       35 GETTABLE                         R10 R11 R12
       36 SETTABLEKS                       R10 R9 K5 ["isContained"]
       38 GETTABLEKS                       R10 R0 K8 ["controls"]
       40 GETTABLEKS                       R10 R10 K6 ["size"]
       42 SETTABLEKS                       R10 R9 K6 ["size"]
       44 DUPTABLE                         R10 K17 [{"PhoneNumber", "Language", "EmailAddress", "Birthday", "AgeGroup", "Gender", "AutoChatTranslation", "TrackLocation"}]
       45 GETUPVAL                         R11 0
       46 GETTABLEKS                       R11 R11 K2 ["createElement"]
       48 GETUPVAL                         R12 1
       49 GETTABLEKS                       R12 R12 K18 ["Item"]
       51 DUPTABLE                         R13 K24 [{"title", "description", "trailing", "onActivated", "LayoutOrder"}]
       52 LOADK                            R14 K25 ["Phone number"]
       53 SETTABLEKS                       R14 R13 K19 ["title"]
       55 LOADK                            R14 K26 ["***-***-883"]
       56 SETTABLEKS                       R14 R13 K20 ["description"]
       58 GETUPVAL                         R14 0
       59 GETTABLEKS                       R14 R14 K2 ["createElement"]
       61 GETUPVAL                         R15 4
       62 DUPTABLE                         R16 K28 [{"tag"}]
       63 LOADK                            R17 K29 ["auto-xy"]
       64 SETTABLEKS                       R17 R16 K27 ["tag"]
       66 GETUPVAL                         R17 0
       67 GETTABLEKS                       R17 R17 K2 ["createElement"]
       69 GETUPVAL                         R18 5
       70 DUPTABLE                         R19 K33 [{"text", "icon", "variant"}]
       71 LOADK                            R20 K34 ["Verified"]
       72 SETTABLEKS                       R20 R19 K30 ["text"]
       74 GETUPVAL                         R20 6
       75 GETTABLEKS                       R20 R20 K35 ["Icon"]
       77 GETTABLEKS                       R20 R20 K36 ["CircleCheck"]
       79 SETTABLEKS                       R20 R19 K31 ["icon"]
       81 GETUPVAL                         R20 7
       82 GETTABLEKS                       R20 R20 K37 ["Primary"]
       84 SETTABLEKS                       R20 R19 K32 ["variant"]
       86 CALL                             R17 2 -1
       87 CALL                             R14 -1 1
       88 SETTABLEKS                       R14 R13 K21 ["trailing"]
       90 DUPCLOSURE                       R14 K38 [PROTO_4]
       91 SETTABLEKS                       R14 R13 K22 ["onActivated"]
       93 LOADN                            R14 1
       94 SETTABLEKS                       R14 R13 K23 ["LayoutOrder"]
       96 CALL                             R11 2 1
       97 SETTABLEKS                       R11 R10 K9 ["PhoneNumber"]
       99 GETUPVAL                         R11 0
      100 GETTABLEKS                       R11 R11 K2 ["createElement"]
      102 GETUPVAL                         R12 1
      103 GETTABLEKS                       R12 R12 K18 ["Item"]
      105 DUPTABLE                         R13 K39 [{"title", "trailing"}]
      106 LOADK                            R14 K10 ["Language"]
      107 SETTABLEKS                       R14 R13 K19 ["title"]
      109 GETUPVAL                         R14 0
      110 GETTABLEKS                       R14 R14 K2 ["createElement"]
      112 GETUPVAL                         R15 8
      113 GETTABLEKS                       R15 R15 K3 ["Root"]
      115 DUPTABLE                         R16 K45 [{"label", "value", "items", "onItemChanged", "width", "LayoutOrder"}]
      116 LOADK                            R17 K46 [""]
      117 SETTABLEKS                       R17 R16 K40 ["label"]
      119 SETTABLEKS                       R5 R16 K41 ["value"]
      121 NEWTABLE                         R17 0 3
      123 DUPTABLE                         R18 K48 [{"id", "text"}]
      124 LOADK                            R19 K1 ["en"]
      125 SETTABLEKS                       R19 R18 K47 ["id"]
      127 LOADK                            R19 K49 ["English"]
      128 SETTABLEKS                       R19 R18 K30 ["text"]
      130 DUPTABLE                         R19 K48 [{"id", "text"}]
      131 LOADK                            R20 K50 ["es"]
      132 SETTABLEKS                       R20 R19 K47 ["id"]
      134 LOADK                            R20 K51 ["Spanish"]
      135 SETTABLEKS                       R20 R19 K30 ["text"]
      137 DUPTABLE                         R20 K48 [{"id", "text"}]
      138 LOADK                            R21 K52 ["fr"]
      139 SETTABLEKS                       R21 R20 K47 ["id"]
      141 LOADK                            R21 K53 ["French"]
      142 SETTABLEKS                       R21 R20 K30 ["text"]
      144 SETLIST                          R17 R18 3 [1]
      146 SETTABLEKS                       R17 R16 K42 ["items"]
      148 NEWCLOSURE                       R17 P1
      149 CAPTURE                          VAL R6
      150 SETTABLEKS                       R17 R16 K43 ["onItemChanged"]
      152 GETIMPORT                        R17 K56 [UDim.new]
      154 LOADN                            R18 0
      155 LOADN                            R19 140
      156 CALL                             R17 2 1
      157 SETTABLEKS                       R17 R16 K44 ["width"]
      159 LOADN                            R17 2
      160 SETTABLEKS                       R17 R16 K23 ["LayoutOrder"]
      162 CALL                             R14 2 1
      163 SETTABLEKS                       R14 R13 K21 ["trailing"]
      165 CALL                             R11 2 1
      166 SETTABLEKS                       R11 R10 K10 ["Language"]
      168 GETUPVAL                         R11 0
      169 GETTABLEKS                       R11 R11 K2 ["createElement"]
      171 GETUPVAL                         R12 1
      172 GETTABLEKS                       R12 R12 K18 ["Item"]
      174 DUPTABLE                         R13 K57 [{"title", "description", "onActivated", "LayoutOrder"}]
      175 LOADK                            R14 K58 ["Email address"]
      176 SETTABLEKS                       R14 R13 K19 ["title"]
      178 LOADK                            R14 K59 ["rob*******@gmail.com"]
      179 SETTABLEKS                       R14 R13 K20 ["description"]
      181 DUPCLOSURE                       R14 K60 [PROTO_6]
      182 SETTABLEKS                       R14 R13 K22 ["onActivated"]
      184 LOADN                            R14 3
      185 SETTABLEKS                       R14 R13 K23 ["LayoutOrder"]
      187 CALL                             R11 2 1
      188 SETTABLEKS                       R11 R10 K11 ["EmailAddress"]
      190 GETUPVAL                         R11 0
      191 GETTABLEKS                       R11 R11 K2 ["createElement"]
      193 GETUPVAL                         R12 1
      194 GETTABLEKS                       R12 R12 K18 ["Item"]
      196 DUPTABLE                         R13 K57 [{"title", "description", "onActivated", "LayoutOrder"}]
      197 LOADK                            R14 K12 ["Birthday"]
      198 SETTABLEKS                       R14 R13 K19 ["title"]
      200 LOADK                            R14 K61 ["Sep 27, 2000"]
      201 SETTABLEKS                       R14 R13 K20 ["description"]
      203 DUPCLOSURE                       R14 K62 [PROTO_7]
      204 SETTABLEKS                       R14 R13 K22 ["onActivated"]
      206 LOADN                            R14 4
      207 SETTABLEKS                       R14 R13 K23 ["LayoutOrder"]
      209 CALL                             R11 2 1
      210 SETTABLEKS                       R11 R10 K12 ["Birthday"]
      212 GETUPVAL                         R11 0
      213 GETTABLEKS                       R11 R11 K2 ["createElement"]
      215 GETUPVAL                         R12 1
      216 GETTABLEKS                       R12 R12 K18 ["Item"]
      218 DUPTABLE                         R13 K57 [{"title", "description", "onActivated", "LayoutOrder"}]
      219 LOADK                            R14 K63 ["Age Group"]
      220 SETTABLEKS                       R14 R13 K19 ["title"]
      222 LOADK                            R14 K64 ["18+"]
      223 SETTABLEKS                       R14 R13 K20 ["description"]
      225 DUPCLOSURE                       R14 K65 [PROTO_8]
      226 SETTABLEKS                       R14 R13 K22 ["onActivated"]
      228 LOADN                            R14 5
      229 SETTABLEKS                       R14 R13 K23 ["LayoutOrder"]
      231 CALL                             R11 2 1
      232 SETTABLEKS                       R11 R10 K13 ["AgeGroup"]
      234 GETUPVAL                         R11 0
      235 GETTABLEKS                       R11 R11 K2 ["createElement"]
      237 GETUPVAL                         R12 1
      238 GETTABLEKS                       R12 R12 K18 ["Item"]
      240 DUPTABLE                         R13 K57 [{"title", "description", "onActivated", "LayoutOrder"}]
      241 LOADK                            R14 K14 ["Gender"]
      242 SETTABLEKS                       R14 R13 K19 ["title"]
      244 LOADK                            R14 K66 ["Male"]
      245 SETTABLEKS                       R14 R13 K20 ["description"]
      247 DUPCLOSURE                       R14 K67 [PROTO_9]
      248 SETTABLEKS                       R14 R13 K22 ["onActivated"]
      250 LOADN                            R14 6
      251 SETTABLEKS                       R14 R13 K23 ["LayoutOrder"]
      253 CALL                             R11 2 1
      254 SETTABLEKS                       R11 R10 K14 ["Gender"]
      256 GETUPVAL                         R11 0
      257 GETTABLEKS                       R11 R11 K2 ["createElement"]
      259 GETUPVAL                         R12 1
      260 GETTABLEKS                       R12 R12 K18 ["Item"]
      262 DUPTABLE                         R13 K69 [{"leading", "title", "description", "onActivated", "LayoutOrder"}]
      263 LOADK                            R14 K70 ["speech-bubble-align-left"]
      264 SETTABLEKS                       R14 R13 K68 ["leading"]
      266 LOADK                            R14 K71 ["Automatic chat translation"]
      267 SETTABLEKS                       R14 R13 K19 ["title"]
      269 LOADK                            R14 K72 ["Translate chat messages from others"]
      270 SETTABLEKS                       R14 R13 K20 ["description"]
      272 DUPTABLE                         R14 K75 [{"onActivated", "inputType", "isChecked"}]
      273 NEWCLOSURE                       R15 P6
      274 CAPTURE                          VAL R2
      275 SETTABLEKS                       R15 R14 K22 ["onActivated"]
      277 GETUPVAL                         R15 9
      278 GETTABLEKS                       R15 R15 K76 ["Toggle"]
      280 SETTABLEKS                       R15 R14 K73 ["inputType"]
      282 SETTABLEKS                       R1 R14 K74 ["isChecked"]
      284 SETTABLEKS                       R14 R13 K22 ["onActivated"]
      286 LOADN                            R14 7
      287 SETTABLEKS                       R14 R13 K23 ["LayoutOrder"]
      289 CALL                             R11 2 1
      290 SETTABLEKS                       R11 R10 K15 ["AutoChatTranslation"]
      292 GETUPVAL                         R11 0
      293 GETTABLEKS                       R11 R11 K2 ["createElement"]
      295 GETUPVAL                         R12 1
      296 GETTABLEKS                       R12 R12 K18 ["Item"]
      298 DUPTABLE                         R13 K69 [{"leading", "title", "description", "onActivated", "LayoutOrder"}]
      299 LOADK                            R14 K77 ["location-pin"]
      300 SETTABLEKS                       R14 R13 K68 ["leading"]
      302 LOADK                            R14 K78 ["Track Location"]
      303 SETTABLEKS                       R14 R13 K19 ["title"]
      305 LOADK                            R14 K79 ["California, United States"]
      306 SETTABLEKS                       R14 R13 K20 ["description"]
      308 DUPTABLE                         R14 K75 [{"onActivated", "inputType", "isChecked"}]
      309 NEWCLOSURE                       R15 P7
      310 CAPTURE                          VAL R4
      311 SETTABLEKS                       R15 R14 K22 ["onActivated"]
      313 GETUPVAL                         R15 9
      314 GETTABLEKS                       R15 R15 K76 ["Toggle"]
      316 SETTABLEKS                       R15 R14 K73 ["inputType"]
      318 SETTABLEKS                       R3 R14 K74 ["isChecked"]
      320 SETTABLEKS                       R14 R13 K22 ["onActivated"]
      322 LOADN                            R14 8
      323 SETTABLEKS                       R14 R13 K23 ["LayoutOrder"]
      325 CALL                             R11 2 1
      326 SETTABLEKS                       R11 R10 K16 ["TrackLocation"]
      328 CALL                             R7 3 -1
      329 RETURN                           R7 -1

PROTO_15:
        0 NOT                              R1 R0
        1 RETURN                           R1 1

PROTO_16:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_15]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_17:
        0 NOT                              R1 R0
        1 RETURN                           R1 1

PROTO_18:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_17]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_19:
        0 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_21:
        0 RETURN                           R0 0

PROTO_22:
        0 RETURN                           R0 0

PROTO_23:
        0 RETURN                           R0 0

PROTO_24:
        0 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K0 ["useState"]
        8 LOADB                            R4 0
        9 CALL                             R3 1 2
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R5 R5 K0 ["useState"]
       13 LOADK                            R6 K1 ["en"]
       14 CALL                             R5 1 2
       15 GETUPVAL                         R7 0
       16 GETTABLEKS                       R7 R7 K2 ["createElement"]
       18 GETUPVAL                         R8 1
       19 DUPTABLE                         R9 K4 [{"tag"}]
       20 LOADK                            R10 K5 ["col gap-medium size-full-0 auto-y"]
       21 SETTABLEKS                       R10 R9 K3 ["tag"]
       23 DUPTABLE                         R10 K7 [{"SettingsSection"}]
       24 GETUPVAL                         R11 0
       25 GETTABLEKS                       R11 R11 K2 ["createElement"]
       27 GETUPVAL                         R12 2
       28 GETTABLEKS                       R12 R12 K8 ["Root"]
       30 DUPTABLE                         R13 K12 [{"hasDivider", "isContained", "size"}]
       31 GETUPVAL                         R15 3
       32 GETTABLEKS                       R16 R0 K13 ["controls"]
       34 GETTABLEKS                       R16 R16 K9 ["hasDivider"]
       36 GETTABLE                         R14 R15 R16
       37 SETTABLEKS                       R14 R13 K9 ["hasDivider"]
       39 GETUPVAL                         R15 4
       40 GETTABLEKS                       R16 R0 K13 ["controls"]
       42 GETTABLEKS                       R16 R16 K10 ["isContained"]
       44 GETTABLE                         R14 R15 R16
       45 SETTABLEKS                       R14 R13 K10 ["isContained"]
       47 GETTABLEKS                       R14 R0 K13 ["controls"]
       49 GETTABLEKS                       R14 R14 K11 ["size"]
       51 SETTABLEKS                       R14 R13 K11 ["size"]
       53 DUPTABLE                         R14 K22 [{"AutoChatTranslation", "AutoChatTranslation2", "Birthday", "Language", "GameItem", "GameItem2", "GameItem3", "GameItem4"}]
       54 GETUPVAL                         R15 0
       55 GETTABLEKS                       R15 R15 K2 ["createElement"]
       57 GETUPVAL                         R16 2
       58 GETTABLEKS                       R16 R16 K23 ["Item"]
       60 DUPTABLE                         R17 K28 [{"title", "description", "onActivated", "LayoutOrder"}]
       61 LOADK                            R18 K29 ["Automatic chat translation"]
       62 SETTABLEKS                       R18 R17 K24 ["title"]
       64 LOADK                            R18 K30 ["Translate chat messages from others"]
       65 SETTABLEKS                       R18 R17 K25 ["description"]
       67 DUPTABLE                         R18 K33 [{"onActivated", "inputType", "isChecked"}]
       68 NEWCLOSURE                       R19 P0
       69 CAPTURE                          VAL R2
       70 SETTABLEKS                       R19 R18 K26 ["onActivated"]
       72 GETUPVAL                         R19 5
       73 GETTABLEKS                       R19 R19 K34 ["Toggle"]
       75 SETTABLEKS                       R19 R18 K31 ["inputType"]
       77 SETTABLEKS                       R1 R18 K32 ["isChecked"]
       79 SETTABLEKS                       R18 R17 K26 ["onActivated"]
       81 LOADN                            R18 1
       82 SETTABLEKS                       R18 R17 K27 ["LayoutOrder"]
       84 CALL                             R15 2 1
       85 SETTABLEKS                       R15 R14 K14 ["AutoChatTranslation"]
       87 GETUPVAL                         R15 0
       88 GETTABLEKS                       R15 R15 K2 ["createElement"]
       90 GETUPVAL                         R16 2
       91 GETTABLEKS                       R16 R16 K23 ["Item"]
       93 DUPTABLE                         R17 K28 [{"title", "description", "onActivated", "LayoutOrder"}]
       94 LOADK                            R18 K29 ["Automatic chat translation"]
       95 SETTABLEKS                       R18 R17 K24 ["title"]
       97 LOADK                            R18 K30 ["Translate chat messages from others"]
       98 SETTABLEKS                       R18 R17 K25 ["description"]
      100 DUPTABLE                         R18 K33 [{"onActivated", "inputType", "isChecked"}]
      101 NEWCLOSURE                       R19 P1
      102 CAPTURE                          VAL R4
      103 SETTABLEKS                       R19 R18 K26 ["onActivated"]
      105 GETUPVAL                         R19 5
      106 GETTABLEKS                       R19 R19 K34 ["Toggle"]
      108 SETTABLEKS                       R19 R18 K31 ["inputType"]
      110 SETTABLEKS                       R3 R18 K32 ["isChecked"]
      112 SETTABLEKS                       R18 R17 K26 ["onActivated"]
      114 LOADN                            R18 2
      115 SETTABLEKS                       R18 R17 K27 ["LayoutOrder"]
      117 CALL                             R15 2 1
      118 SETTABLEKS                       R15 R14 K15 ["AutoChatTranslation2"]
      120 GETUPVAL                         R15 0
      121 GETTABLEKS                       R15 R15 K2 ["createElement"]
      123 GETUPVAL                         R16 2
      124 GETTABLEKS                       R16 R16 K23 ["Item"]
      126 DUPTABLE                         R17 K36 [{"title", "description", "trailing", "onActivated", "LayoutOrder"}]
      127 LOADK                            R18 K16 ["Birthday"]
      128 SETTABLEKS                       R18 R17 K24 ["title"]
      130 LOADK                            R18 K37 ["Sep 27, 2000"]
      131 SETTABLEKS                       R18 R17 K25 ["description"]
      133 GETUPVAL                         R18 0
      134 GETTABLEKS                       R18 R18 K2 ["createElement"]
      136 GETUPVAL                         R19 1
      137 DUPTABLE                         R20 K4 [{"tag"}]
      138 LOADK                            R21 K38 ["auto-xy"]
      139 SETTABLEKS                       R21 R20 K3 ["tag"]
      141 GETUPVAL                         R21 0
      142 GETTABLEKS                       R21 R21 K2 ["createElement"]
      144 GETUPVAL                         R22 6
      145 DUPTABLE                         R23 K42 [{"text", "icon", "variant"}]
      146 LOADK                            R24 K43 ["Verified"]
      147 SETTABLEKS                       R24 R23 K39 ["text"]
      149 GETUPVAL                         R24 7
      150 GETTABLEKS                       R24 R24 K44 ["Icon"]
      152 GETTABLEKS                       R24 R24 K45 ["CircleCheck"]
      154 SETTABLEKS                       R24 R23 K40 ["icon"]
      156 GETUPVAL                         R24 8
      157 GETTABLEKS                       R24 R24 K46 ["Primary"]
      159 SETTABLEKS                       R24 R23 K41 ["variant"]
      161 CALL                             R21 2 -1
      162 CALL                             R18 -1 1
      163 SETTABLEKS                       R18 R17 K35 ["trailing"]
      165 DUPCLOSURE                       R18 K47 [PROTO_19]
      166 SETTABLEKS                       R18 R17 K26 ["onActivated"]
      168 LOADN                            R18 3
      169 SETTABLEKS                       R18 R17 K27 ["LayoutOrder"]
      171 CALL                             R15 2 1
      172 SETTABLEKS                       R15 R14 K16 ["Birthday"]
      174 GETUPVAL                         R15 0
      175 GETTABLEKS                       R15 R15 K2 ["createElement"]
      177 GETUPVAL                         R16 2
      178 GETTABLEKS                       R16 R16 K23 ["Item"]
      180 DUPTABLE                         R17 K48 [{"title", "trailing", "LayoutOrder"}]
      181 LOADK                            R18 K17 ["Language"]
      182 SETTABLEKS                       R18 R17 K24 ["title"]
      184 GETUPVAL                         R18 0
      185 GETTABLEKS                       R18 R18 K2 ["createElement"]
      187 GETUPVAL                         R19 9
      188 GETTABLEKS                       R19 R19 K8 ["Root"]
      190 DUPTABLE                         R20 K54 [{"value", "items", "onItemChanged", "label", "width"}]
      191 SETTABLEKS                       R5 R20 K49 ["value"]
      193 NEWTABLE                         R21 0 3
      195 DUPTABLE                         R22 K56 [{"id", "text"}]
      196 LOADK                            R23 K1 ["en"]
      197 SETTABLEKS                       R23 R22 K55 ["id"]
      199 LOADK                            R23 K57 ["English"]
      200 SETTABLEKS                       R23 R22 K39 ["text"]
      202 DUPTABLE                         R23 K56 [{"id", "text"}]
      203 LOADK                            R24 K58 ["es"]
      204 SETTABLEKS                       R24 R23 K55 ["id"]
      206 LOADK                            R24 K59 ["Spanish"]
      207 SETTABLEKS                       R24 R23 K39 ["text"]
      209 DUPTABLE                         R24 K56 [{"id", "text"}]
      210 LOADK                            R25 K60 ["fr"]
      211 SETTABLEKS                       R25 R24 K55 ["id"]
      213 LOADK                            R25 K61 ["French"]
      214 SETTABLEKS                       R25 R24 K39 ["text"]
      216 SETLIST                          R21 R22 3 [1]
      218 SETTABLEKS                       R21 R20 K50 ["items"]
      220 NEWCLOSURE                       R21 P3
      221 CAPTURE                          VAL R6
      222 SETTABLEKS                       R21 R20 K51 ["onItemChanged"]
      224 LOADK                            R21 K62 [""]
      225 SETTABLEKS                       R21 R20 K52 ["label"]
      227 GETIMPORT                        R21 K65 [UDim.new]
      229 LOADN                            R22 0
      230 LOADN                            R23 140
      231 CALL                             R21 2 1
      232 SETTABLEKS                       R21 R20 K53 ["width"]
      234 CALL                             R18 2 1
      235 SETTABLEKS                       R18 R17 K35 ["trailing"]
      237 LOADN                            R18 4
      238 SETTABLEKS                       R18 R17 K27 ["LayoutOrder"]
      240 CALL                             R15 2 1
      241 SETTABLEKS                       R15 R14 K17 ["Language"]
      243 GETUPVAL                         R15 0
      244 GETTABLEKS                       R15 R15 K2 ["createElement"]
      246 GETUPVAL                         R16 2
      247 GETTABLEKS                       R16 R16 K23 ["Item"]
      249 DUPTABLE                         R17 K67 [{"leading", "title", "trailing", "onActivated", "LayoutOrder"}]
      250 DUPTABLE                         R18 K69 [{"iconName"}]
      251 LOADK                            R19 K70 ["rbxthumb://type=GameIcon&id=1818&w=150&h=150"]
      252 SETTABLEKS                       R19 R18 K68 ["iconName"]
      254 SETTABLEKS                       R18 R17 K66 ["leading"]
      256 DUPTABLE                         R18 K72 [{"title", "metadata"}]
      257 LOADK                            R19 K73 ["Item Name"]
      258 SETTABLEKS                       R19 R18 K24 ["title"]
      260 LOADK                            R19 K74 ["Metadata"]
      261 SETTABLEKS                       R19 R18 K71 ["metadata"]
      263 SETTABLEKS                       R18 R17 K24 ["title"]
      265 GETUPVAL                         R18 0
      266 GETTABLEKS                       R18 R18 K2 ["createElement"]
      268 GETUPVAL                         R19 10
      269 DUPTABLE                         R20 K75 [{"variant"}]
      270 GETUPVAL                         R21 11
      271 GETTABLEKS                       R21 R21 K76 ["Emphasis"]
      273 SETTABLEKS                       R21 R20 K41 ["variant"]
      275 CALL                             R18 2 1
      276 SETTABLEKS                       R18 R17 K35 ["trailing"]
      278 DUPCLOSURE                       R18 K77 [PROTO_21]
      279 SETTABLEKS                       R18 R17 K26 ["onActivated"]
      281 LOADN                            R18 5
      282 SETTABLEKS                       R18 R17 K27 ["LayoutOrder"]
      284 CALL                             R15 2 1
      285 SETTABLEKS                       R15 R14 K18 ["GameItem"]
      287 GETUPVAL                         R15 0
      288 GETTABLEKS                       R15 R15 K2 ["createElement"]
      290 GETUPVAL                         R16 2
      291 GETTABLEKS                       R16 R16 K23 ["Item"]
      293 DUPTABLE                         R17 K78 [{"leading", "title", "onActivated", "LayoutOrder"}]
      294 DUPTABLE                         R18 K69 [{"iconName"}]
      295 LOADK                            R19 K79 ["rbxthumb://type=GameIcon&id=2788229376&w=150&h=150"]
      296 SETTABLEKS                       R19 R18 K68 ["iconName"]
      298 SETTABLEKS                       R18 R17 K66 ["leading"]
      300 DUPTABLE                         R18 K72 [{"title", "metadata"}]
      301 LOADK                            R19 K73 ["Item Name"]
      302 SETTABLEKS                       R19 R18 K24 ["title"]
      304 LOADK                            R19 K74 ["Metadata"]
      305 SETTABLEKS                       R19 R18 K71 ["metadata"]
      307 SETTABLEKS                       R18 R17 K24 ["title"]
      309 DUPCLOSURE                       R18 K80 [PROTO_22]
      310 SETTABLEKS                       R18 R17 K26 ["onActivated"]
      312 LOADN                            R18 6
      313 SETTABLEKS                       R18 R17 K27 ["LayoutOrder"]
      315 CALL                             R15 2 1
      316 SETTABLEKS                       R15 R14 K19 ["GameItem2"]
      318 GETUPVAL                         R15 0
      319 GETTABLEKS                       R15 R15 K2 ["createElement"]
      321 GETUPVAL                         R16 2
      322 GETTABLEKS                       R16 R16 K23 ["Item"]
      324 DUPTABLE                         R17 K67 [{"leading", "title", "trailing", "onActivated", "LayoutOrder"}]
      325 DUPTABLE                         R18 K69 [{"iconName"}]
      326 LOADK                            R19 K81 ["rbxthumb://type=GameIcon&id=1281960580&w=150&h=150"]
      327 SETTABLEKS                       R19 R18 K68 ["iconName"]
      329 SETTABLEKS                       R18 R17 K66 ["leading"]
      331 DUPTABLE                         R18 K72 [{"title", "metadata"}]
      332 LOADK                            R19 K73 ["Item Name"]
      333 SETTABLEKS                       R19 R18 K24 ["title"]
      335 LOADK                            R19 K74 ["Metadata"]
      336 SETTABLEKS                       R19 R18 K71 ["metadata"]
      338 SETTABLEKS                       R18 R17 K24 ["title"]
      340 GETUPVAL                         R18 0
      341 GETTABLEKS                       R18 R18 K2 ["createElement"]
      343 GETUPVAL                         R19 1
      344 DUPTABLE                         R20 K4 [{"tag"}]
      345 LOADK                            R21 K82 ["row items-center gap-large auto-xy"]
      346 SETTABLEKS                       R21 R20 K3 ["tag"]
      348 DUPTABLE                         R21 K85 [{"Dot", "UpdateBadge"}]
      349 GETUPVAL                         R22 0
      350 GETTABLEKS                       R22 R22 K2 ["createElement"]
      352 GETUPVAL                         R23 10
      353 DUPTABLE                         R24 K75 [{"variant"}]
      354 GETUPVAL                         R25 11
      355 GETTABLEKS                       R25 R25 K76 ["Emphasis"]
      357 SETTABLEKS                       R25 R24 K41 ["variant"]
      359 CALL                             R22 2 1
      360 SETTABLEKS                       R22 R21 K83 ["Dot"]
      362 GETUPVAL                         R22 0
      363 GETTABLEKS                       R22 R22 K2 ["createElement"]
      365 GETUPVAL                         R23 6
      366 DUPTABLE                         R24 K86 [{"text", "variant", "LayoutOrder"}]
      367 LOADK                            R25 K87 ["Update"]
      368 SETTABLEKS                       R25 R24 K39 ["text"]
      370 GETUPVAL                         R25 8
      371 GETTABLEKS                       R25 R25 K88 ["Neutral"]
      373 SETTABLEKS                       R25 R24 K41 ["variant"]
      375 LOADN                            R25 2
      376 SETTABLEKS                       R25 R24 K27 ["LayoutOrder"]
      378 CALL                             R22 2 1
      379 SETTABLEKS                       R22 R21 K84 ["UpdateBadge"]
      381 CALL                             R18 3 1
      382 SETTABLEKS                       R18 R17 K35 ["trailing"]
      384 DUPCLOSURE                       R18 K89 [PROTO_23]
      385 SETTABLEKS                       R18 R17 K26 ["onActivated"]
      387 LOADN                            R18 7
      388 SETTABLEKS                       R18 R17 K27 ["LayoutOrder"]
      390 CALL                             R15 2 1
      391 SETTABLEKS                       R15 R14 K20 ["GameItem3"]
      393 GETUPVAL                         R15 0
      394 GETTABLEKS                       R15 R15 K2 ["createElement"]
      396 GETUPVAL                         R16 2
      397 GETTABLEKS                       R16 R16 K23 ["Item"]
      399 DUPTABLE                         R17 K78 [{"leading", "title", "onActivated", "LayoutOrder"}]
      400 DUPTABLE                         R18 K69 [{"iconName"}]
      401 LOADK                            R19 K90 ["rbxthumb://type=GameIcon&id=606849621&w=150&h=150"]
      402 SETTABLEKS                       R19 R18 K68 ["iconName"]
      404 SETTABLEKS                       R18 R17 K66 ["leading"]
      406 DUPTABLE                         R18 K72 [{"title", "metadata"}]
      407 LOADK                            R19 K73 ["Item Name"]
      408 SETTABLEKS                       R19 R18 K24 ["title"]
      410 LOADK                            R19 K74 ["Metadata"]
      411 SETTABLEKS                       R19 R18 K71 ["metadata"]
      413 SETTABLEKS                       R18 R17 K24 ["title"]
      415 DUPCLOSURE                       R18 K91 [PROTO_24]
      416 SETTABLEKS                       R18 R17 K26 ["onActivated"]
      418 LOADN                            R18 8
      419 SETTABLEKS                       R18 R17 K27 ["LayoutOrder"]
      421 CALL                             R15 2 1
      422 SETTABLEKS                       R15 R14 K21 ["GameItem4"]
      424 CALL                             R11 3 1
      425 SETTABLEKS                       R11 R10 K6 ["SettingsSection"]
      427 CALL                             R7 3 -1
      428 RETURN                           R7 -1

PROTO_26:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Root"]
        6 DUPTABLE                         R3 K5 [{"hasDivider", "isContained", "size"}]
        7 GETUPVAL                         R5 2
        8 GETTABLEKS                       R6 R0 K6 ["controls"]
       10 GETTABLEKS                       R6 R6 K2 ["hasDivider"]
       12 GETTABLE                         R4 R5 R6
       13 SETTABLEKS                       R4 R3 K2 ["hasDivider"]
       15 GETUPVAL                         R5 3
       16 GETTABLEKS                       R6 R0 K6 ["controls"]
       18 GETTABLEKS                       R6 R6 K3 ["isContained"]
       20 GETTABLE                         R4 R5 R6
       21 SETTABLEKS                       R4 R3 K3 ["isContained"]
       23 GETTABLEKS                       R4 R0 K6 ["controls"]
       25 GETTABLEKS                       R4 R4 K4 ["size"]
       27 SETTABLEKS                       R4 R3 K4 ["size"]
       29 DUPTABLE                         R4 K11 [{"MediaItem", "AvatarItem", "IconItem", "NoLeadingItem"}]
       30 GETUPVAL                         R5 0
       31 GETTABLEKS                       R5 R5 K0 ["createElement"]
       33 GETUPVAL                         R6 1
       34 GETTABLEKS                       R6 R6 K12 ["Item"]
       36 DUPTABLE                         R7 K17 [{"leading", "title", "description", "LayoutOrder"}]
       37 DUPTABLE                         R8 K19 [{"iconName"}]
       38 LOADK                            R9 K20 ["rbxthumb://type=GameIcon&id=1818&w=150&h=150"]
       39 SETTABLEKS                       R9 R8 K18 ["iconName"]
       41 SETTABLEKS                       R8 R7 K13 ["leading"]
       43 DUPTABLE                         R8 K22 [{"title", "metadata"}]
       44 LOADK                            R9 K23 ["Media"]
       45 SETTABLEKS                       R9 R8 K14 ["title"]
       47 LOADK                            R9 K24 ["Metadata"]
       48 SETTABLEKS                       R9 R8 K21 ["metadata"]
       50 SETTABLEKS                       R8 R7 K14 ["title"]
       52 LOADK                            R8 K25 ["Leading media thumbnail"]
       53 SETTABLEKS                       R8 R7 K15 ["description"]
       55 LOADN                            R8 1
       56 SETTABLEKS                       R8 R7 K16 ["LayoutOrder"]
       58 CALL                             R5 2 1
       59 SETTABLEKS                       R5 R4 K7 ["MediaItem"]
       61 GETUPVAL                         R5 0
       62 GETTABLEKS                       R5 R5 K0 ["createElement"]
       64 GETUPVAL                         R6 1
       65 GETTABLEKS                       R6 R6 K12 ["Item"]
       67 DUPTABLE                         R7 K17 [{"leading", "title", "description", "LayoutOrder"}]
       68 DUPTABLE                         R8 K28 [{"type", "userId"}]
       69 GETUPVAL                         R9 4
       70 GETTABLEKS                       R9 R9 K29 ["Avatar"]
       72 SETTABLEKS                       R9 R8 K26 ["type"]
       74 LOADK                            R9 K30 [24813339]
       75 SETTABLEKS                       R9 R8 K27 ["userId"]
       77 SETTABLEKS                       R8 R7 K13 ["leading"]
       79 DUPTABLE                         R8 K22 [{"title", "metadata"}]
       80 LOADK                            R9 K29 ["Avatar"]
       81 SETTABLEKS                       R9 R8 K14 ["title"]
       83 LOADK                            R9 K24 ["Metadata"]
       84 SETTABLEKS                       R9 R8 K21 ["metadata"]
       86 SETTABLEKS                       R8 R7 K14 ["title"]
       88 LOADK                            R8 K31 ["Leading avatar"]
       89 SETTABLEKS                       R8 R7 K15 ["description"]
       91 LOADN                            R8 2
       92 SETTABLEKS                       R8 R7 K16 ["LayoutOrder"]
       94 CALL                             R5 2 1
       95 SETTABLEKS                       R5 R4 K8 ["AvatarItem"]
       97 GETUPVAL                         R5 0
       98 GETTABLEKS                       R5 R5 K0 ["createElement"]
      100 GETUPVAL                         R6 1
      101 GETTABLEKS                       R6 R6 K12 ["Item"]
      103 DUPTABLE                         R7 K17 [{"leading", "title", "description", "LayoutOrder"}]
      104 GETUPVAL                         R8 5
      105 GETTABLEKS                       R8 R8 K32 ["Icon"]
      107 GETTABLEKS                       R8 R8 K33 ["Robux"]
      109 SETTABLEKS                       R8 R7 K13 ["leading"]
      111 DUPTABLE                         R8 K22 [{"title", "metadata"}]
      112 LOADK                            R9 K32 ["Icon"]
      113 SETTABLEKS                       R9 R8 K14 ["title"]
      115 LOADK                            R9 K24 ["Metadata"]
      116 SETTABLEKS                       R9 R8 K21 ["metadata"]
      118 SETTABLEKS                       R8 R7 K14 ["title"]
      120 LOADK                            R8 K34 ["Leading icon"]
      121 SETTABLEKS                       R8 R7 K15 ["description"]
      123 LOADN                            R8 3
      124 SETTABLEKS                       R8 R7 K16 ["LayoutOrder"]
      126 CALL                             R5 2 1
      127 SETTABLEKS                       R5 R4 K9 ["IconItem"]
      129 GETUPVAL                         R5 0
      130 GETTABLEKS                       R5 R5 K0 ["createElement"]
      132 GETUPVAL                         R6 1
      133 GETTABLEKS                       R6 R6 K12 ["Item"]
      135 DUPTABLE                         R7 K35 [{"title", "description", "LayoutOrder"}]
      136 DUPTABLE                         R8 K22 [{"title", "metadata"}]
      137 LOADK                            R9 K36 ["No Leading"]
      138 SETTABLEKS                       R9 R8 K14 ["title"]
      140 LOADK                            R9 K24 ["Metadata"]
      141 SETTABLEKS                       R9 R8 K21 ["metadata"]
      143 SETTABLEKS                       R8 R7 K14 ["title"]
      145 LOADK                            R8 K37 ["No leading accessory"]
      146 SETTABLEKS                       R8 R7 K15 ["description"]
      148 LOADN                            R8 4
      149 SETTABLEKS                       R8 R7 K16 ["LayoutOrder"]
      151 CALL                             R5 2 1
      152 SETTABLEKS                       R5 R4 K10 ["NoLeadingItem"]
      154 CALL                             R1 3 -1
      155 RETURN                           R1 -1

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
       26 GETTABLEKS                       R6 R0 K10 ["Enums"]
       28 GETTABLEKS                       R6 R6 K11 ["AccessoryType"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K6 [require]
       33 GETTABLEKS                       R7 R0 K12 ["Components"]
       35 GETTABLEKS                       R7 R7 K13 ["Badge"]
       37 CALL                             R6 1 1
       38 GETIMPORT                        R7 K6 [require]
       40 GETTABLEKS                       R8 R0 K10 ["Enums"]
       42 GETTABLEKS                       R8 R8 K14 ["BadgeVariant"]
       44 CALL                             R7 1 1
       45 GETIMPORT                        R8 K6 [require]
       47 GETTABLEKS                       R9 R0 K12 ["Components"]
       49 GETTABLEKS                       R9 R9 K15 ["Dropdown"]
       51 CALL                             R8 1 1
       52 GETIMPORT                        R9 K6 [require]
       54 GETTABLEKS                       R10 R0 K10 ["Enums"]
       56 GETTABLEKS                       R10 R10 K16 ["InputSize"]
       58 CALL                             R9 1 1
       59 GETIMPORT                        R10 K6 [require]
       61 GETTABLEKS                       R11 R0 K12 ["Components"]
       63 GETTABLEKS                       R11 R11 K17 ["List"]
       65 CALL                             R10 1 1
       66 GETIMPORT                        R11 K6 [require]
       68 GETTABLEKS                       R12 R0 K10 ["Enums"]
       70 GETTABLEKS                       R12 R12 K18 ["ListItemInputType"]
       72 CALL                             R11 1 1
       73 GETIMPORT                        R12 K6 [require]
       75 GETTABLEKS                       R13 R0 K12 ["Components"]
       77 GETTABLEKS                       R13 R13 K19 ["StatusIndicator"]
       79 CALL                             R12 1 1
       80 GETIMPORT                        R13 K6 [require]
       82 GETTABLEKS                       R14 R0 K10 ["Enums"]
       84 GETTABLEKS                       R14 R14 K20 ["StatusIndicatorVariant"]
       86 CALL                             R13 1 1
       87 GETIMPORT                        R14 K6 [require]
       89 GETTABLEKS                       R15 R0 K12 ["Components"]
       91 GETTABLEKS                       R15 R15 K21 ["View"]
       93 CALL                             R14 1 1
       94 DUPTABLE                         R15 K25 [{"None", "Inset", "Full"}]
       95 LOADB                            R16 0
       96 SETTABLEKS                       R16 R15 K22 ["None"]
       98 DUPTABLE                         R16 K27 [{"isInset"}]
       99 LOADB                            R17 1
      100 SETTABLEKS                       R17 R16 K26 ["isInset"]
      102 SETTABLEKS                       R16 R15 K23 ["Inset"]
      104 DUPTABLE                         R16 K27 [{"isInset"}]
      105 LOADB                            R17 0
      106 SETTABLEKS                       R17 R16 K26 ["isInset"]
      108 SETTABLEKS                       R16 R15 K24 ["Full"]
      110 NEWTABLE                         R16 4 0
      112 LOADB                            R17 1
      113 SETTABLEKS                       R17 R16 K28 ["Contained"]
      115 DUPTABLE                         R17 K31 [{"isContained", "hasMargin"}]
      116 LOADB                            R18 0
      117 SETTABLEKS                       R18 R17 K29 ["isContained"]
      119 LOADB                            R18 0
      120 SETTABLEKS                       R18 R17 K30 ["hasMargin"]
      122 SETTABLEKS                       R17 R16 K32 ["Full Width"]
      124 DUPTABLE                         R17 K31 [{"isContained", "hasMargin"}]
      125 LOADB                            R18 0
      126 SETTABLEKS                       R18 R17 K29 ["isContained"]
      128 LOADB                            R18 1
      129 SETTABLEKS                       R18 R17 K30 ["hasMargin"]
      131 SETTABLEKS                       R17 R16 K33 ["Has Margin"]
      133 DUPCLOSURE                       R17 K34 [PROTO_3]
      134 CAPTURE                          VAL R4
      135 CAPTURE                          VAL R14
      136 CAPTURE                          VAL R10
      137 CAPTURE                          VAL R15
      138 CAPTURE                          VAL R16
      139 DUPCLOSURE                       R18 K35 [PROTO_14]
      140 CAPTURE                          VAL R4
      141 CAPTURE                          VAL R10
      142 CAPTURE                          VAL R15
      143 CAPTURE                          VAL R16
      144 CAPTURE                          VAL R14
      145 CAPTURE                          VAL R6
      146 CAPTURE                          VAL R2
      147 CAPTURE                          VAL R7
      148 CAPTURE                          VAL R8
      149 CAPTURE                          VAL R11
      150 DUPCLOSURE                       R19 K36 [PROTO_25]
      151 CAPTURE                          VAL R4
      152 CAPTURE                          VAL R14
      153 CAPTURE                          VAL R10
      154 CAPTURE                          VAL R15
      155 CAPTURE                          VAL R16
      156 CAPTURE                          VAL R11
      157 CAPTURE                          VAL R6
      158 CAPTURE                          VAL R2
      159 CAPTURE                          VAL R7
      160 CAPTURE                          VAL R8
      161 CAPTURE                          VAL R12
      162 CAPTURE                          VAL R13
      163 DUPTABLE                         R20 K40 [{"summary", "stories", "controls"}]
      164 LOADK                            R21 K17 ["List"]
      165 SETTABLEKS                       R21 R20 K37 ["summary"]
      167 NEWTABLE                         R21 0 4
      169 DUPTABLE                         R22 K43 [{"name", "story"}]
      170 LOADK                            R23 K44 ["In Parent Container"]
      171 SETTABLEKS                       R23 R22 K41 ["name"]
      173 SETTABLEKS                       R17 R22 K42 ["story"]
      175 DUPTABLE                         R23 K43 [{"name", "story"}]
      176 LOADK                            R24 K45 ["Base"]
      177 SETTABLEKS                       R24 R23 K41 ["name"]
      179 DUPCLOSURE                       R24 K46 [PROTO_26]
      180 CAPTURE                          VAL R4
      181 CAPTURE                          VAL R10
      182 CAPTURE                          VAL R15
      183 CAPTURE                          VAL R16
      184 CAPTURE                          VAL R5
      185 CAPTURE                          VAL R2
      186 SETTABLEKS                       R24 R23 K42 ["story"]
      188 DUPTABLE                         R24 K43 [{"name", "story"}]
      189 LOADK                            R25 K47 ["Settings"]
      190 SETTABLEKS                       R25 R24 K41 ["name"]
      192 SETTABLEKS                       R18 R24 K42 ["story"]
      194 DUPTABLE                         R25 K43 [{"name", "story"}]
      195 LOADK                            R26 K48 ["Games List"]
      196 SETTABLEKS                       R26 R25 K41 ["name"]
      198 SETTABLEKS                       R19 R25 K42 ["story"]
      200 SETLIST                          R21 R22 4 [1]
      202 SETTABLEKS                       R21 R20 K38 ["stories"]
      204 DUPTABLE                         R21 K51 [{"hasDivider", "isContained", "size"}]
      205 GETTABLEKS                       R22 R3 K52 ["keys"]
      207 MOVE                             R23 R15
      208 CALL                             R22 1 1
      209 SETTABLEKS                       R22 R21 K49 ["hasDivider"]
      211 GETTABLEKS                       R22 R3 K52 ["keys"]
      213 MOVE                             R23 R16
      214 CALL                             R22 1 1
      215 SETTABLEKS                       R22 R21 K29 ["isContained"]
      217 GETTABLEKS                       R22 R3 K53 ["values"]
      219 MOVE                             R23 R9
      220 CALL                             R22 1 1
      221 SETTABLEKS                       R22 R21 K50 ["size"]
      223 SETTABLEKS                       R21 R20 K39 ["controls"]
      225 RETURN                           R20 1
