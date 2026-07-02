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
        4 DUPTABLE                         R3 K3 [{["tag"] = "col size-full-0 auto-y bg-surface-100"}]
        5 DUPTABLE                         R4 K5 [{"List"}]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R5 R5 K0 ["createElement"]
        9 GETUPVAL                         R6 2
       10 GETTABLEKS                       R6 R6 K6 ["Root"]
       12 DUPTABLE                         R7 K10 [{"hasDivider", "isContained", "size"}]
       13 GETUPVAL                         R9 3
       14 GETTABLEKS                       R10 R0 K11 ["controls"]
       16 GETTABLEKS                       R10 R10 K7 ["hasDivider"]
       18 GETTABLE                         R8 R9 R10
       19 SETTABLEKS                       R8 R7 K7 ["hasDivider"]
       21 GETUPVAL                         R9 4
       22 GETTABLEKS                       R10 R0 K11 ["controls"]
       24 GETTABLEKS                       R10 R10 K8 ["isContained"]
       26 GETTABLE                         R8 R9 R10
       27 SETTABLEKS                       R8 R7 K8 ["isContained"]
       29 GETTABLEKS                       R8 R0 K11 ["controls"]
       31 GETTABLEKS                       R8 R8 K9 ["size"]
       33 SETTABLEKS                       R8 R7 K9 ["size"]
       35 DUPTABLE                         R8 K15 [{"ItemA", "ItemB", "ItemC"}]
       36 GETUPVAL                         R9 0
       37 GETTABLEKS                       R9 R9 K0 ["createElement"]
       39 GETUPVAL                         R10 2
       40 GETTABLEKS                       R10 R10 K16 ["Item"]
       42 DUPTABLE                         R11 K24 [{["title"] = "Phone number", ["description"] = "***-***-883", ["onActivated"], ["LayoutOrder"] = 1}]
       43 DUPCLOSURE                       R12 K25 [PROTO_0]
       44 SETTABLEKS                       R12 R11 K21 ["onActivated"]
       46 CALL                             R9 2 1
       47 SETTABLEKS                       R9 R8 K12 ["ItemA"]
       49 GETUPVAL                         R9 0
       50 GETTABLEKS                       R9 R9 K0 ["createElement"]
       52 GETUPVAL                         R10 2
       53 GETTABLEKS                       R10 R10 K16 ["Item"]
       55 DUPTABLE                         R11 K29 [{["title"] = "Language", ["description"] = "English", ["onActivated"], ["LayoutOrder"] = 2}]
       56 DUPCLOSURE                       R12 K30 [PROTO_1]
       57 SETTABLEKS                       R12 R11 K21 ["onActivated"]
       59 CALL                             R9 2 1
       60 SETTABLEKS                       R9 R8 K13 ["ItemB"]
       62 GETUPVAL                         R9 0
       63 GETTABLEKS                       R9 R9 K0 ["createElement"]
       65 GETUPVAL                         R10 2
       66 GETTABLEKS                       R10 R10 K16 ["Item"]
       68 DUPTABLE                         R11 K34 [{["title"] = "Email address", ["description"] = "rob*******@gmail.com", ["onActivated"], ["LayoutOrder"] = 3}]
       69 DUPCLOSURE                       R12 K35 [PROTO_2]
       70 SETTABLEKS                       R12 R11 K21 ["onActivated"]
       72 CALL                             R9 2 1
       73 SETTABLEKS                       R9 R8 K14 ["ItemC"]
       75 CALL                             R5 3 1
       76 SETTABLEKS                       R5 R4 K4 ["List"]
       78 CALL                             R1 3 -1
       79 RETURN                           R1 -1

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
       51 DUPTABLE                         R13 K27 [{["title"] = "Phone number", ["description"] = "***-***-883", ["trailing"], ["onActivated"], ["LayoutOrder"] = 1}]
       52 GETUPVAL                         R14 0
       53 GETTABLEKS                       R14 R14 K2 ["createElement"]
       55 GETUPVAL                         R15 4
       56 DUPTABLE                         R16 K30 [{["tag"] = "auto-xy"}]
       57 GETUPVAL                         R17 0
       58 GETTABLEKS                       R17 R17 K2 ["createElement"]
       60 GETUPVAL                         R18 5
       61 DUPTABLE                         R19 K35 [{["text"] = "Verified", ["icon"], ["variant"]}]
       62 GETUPVAL                         R20 6
       63 GETTABLEKS                       R20 R20 K36 ["Icon"]
       65 GETTABLEKS                       R20 R20 K37 ["CircleCheck"]
       67 SETTABLEKS                       R20 R19 K33 ["icon"]
       69 GETUPVAL                         R20 7
       70 GETTABLEKS                       R20 R20 K38 ["Primary"]
       72 SETTABLEKS                       R20 R19 K34 ["variant"]
       74 CALL                             R17 2 -1
       75 CALL                             R14 -1 1
       76 SETTABLEKS                       R14 R13 K23 ["trailing"]
       78 DUPCLOSURE                       R14 K39 [PROTO_4]
       79 SETTABLEKS                       R14 R13 K24 ["onActivated"]
       81 CALL                             R11 2 1
       82 SETTABLEKS                       R11 R10 K9 ["PhoneNumber"]
       84 GETUPVAL                         R11 0
       85 GETTABLEKS                       R11 R11 K2 ["createElement"]
       87 GETUPVAL                         R12 1
       88 GETTABLEKS                       R12 R12 K18 ["Item"]
       90 DUPTABLE                         R13 K40 [{["title"] = "Language", ["trailing"]}]
       91 GETUPVAL                         R14 0
       92 GETTABLEKS                       R14 R14 K2 ["createElement"]
       94 GETUPVAL                         R15 8
       95 GETTABLEKS                       R15 R15 K3 ["Root"]
       97 DUPTABLE                         R16 K48 [{["label"] = "", ["value"], ["items"], ["onItemChanged"], ["width"], ["LayoutOrder"] = 2}]
       98 SETTABLEKS                       R5 R16 K43 ["value"]
      100 NEWTABLE                         R17 0 3
      102 DUPTABLE                         R18 K51 [{["id"] = "en", ["text"] = "English"}]
      103 DUPTABLE                         R19 K54 [{["id"] = "es", ["text"] = "Spanish"}]
      104 DUPTABLE                         R20 K57 [{["id"] = "fr", ["text"] = "French"}]
      105 SETLIST                          R17 R18 3 [1]
      107 SETTABLEKS                       R17 R16 K44 ["items"]
      109 NEWCLOSURE                       R17 P1
      110 CAPTURE                          VAL R6
      111 SETTABLEKS                       R17 R16 K45 ["onItemChanged"]
      113 GETIMPORT                        R17 K60 [UDim.new]
      115 LOADN                            R18 0
      116 LOADN                            R19 140
      117 CALL                             R17 2 1
      118 SETTABLEKS                       R17 R16 K46 ["width"]
      120 CALL                             R14 2 1
      121 SETTABLEKS                       R14 R13 K23 ["trailing"]
      123 CALL                             R11 2 1
      124 SETTABLEKS                       R11 R10 K10 ["Language"]
      126 GETUPVAL                         R11 0
      127 GETTABLEKS                       R11 R11 K2 ["createElement"]
      129 GETUPVAL                         R12 1
      130 GETTABLEKS                       R12 R12 K18 ["Item"]
      132 DUPTABLE                         R13 K64 [{["title"] = "Email address", ["description"] = "rob*******@gmail.com", ["onActivated"], ["LayoutOrder"] = 3}]
      133 DUPCLOSURE                       R14 K65 [PROTO_6]
      134 SETTABLEKS                       R14 R13 K24 ["onActivated"]
      136 CALL                             R11 2 1
      137 SETTABLEKS                       R11 R10 K11 ["EmailAddress"]
      139 GETUPVAL                         R11 0
      140 GETTABLEKS                       R11 R11 K2 ["createElement"]
      142 GETUPVAL                         R12 1
      143 GETTABLEKS                       R12 R12 K18 ["Item"]
      145 DUPTABLE                         R13 K68 [{["title"] = "Birthday", ["description"] = "Sep 27, 2000", ["onActivated"], ["LayoutOrder"] = 4}]
      146 DUPCLOSURE                       R14 K69 [PROTO_7]
      147 SETTABLEKS                       R14 R13 K24 ["onActivated"]
      149 CALL                             R11 2 1
      150 SETTABLEKS                       R11 R10 K12 ["Birthday"]
      152 GETUPVAL                         R11 0
      153 GETTABLEKS                       R11 R11 K2 ["createElement"]
      155 GETUPVAL                         R12 1
      156 GETTABLEKS                       R12 R12 K18 ["Item"]
      158 DUPTABLE                         R13 K73 [{["title"] = "Age Group", ["description"] = "18+", ["onActivated"], ["LayoutOrder"] = 5}]
      159 DUPCLOSURE                       R14 K74 [PROTO_8]
      160 SETTABLEKS                       R14 R13 K24 ["onActivated"]
      162 CALL                             R11 2 1
      163 SETTABLEKS                       R11 R10 K13 ["AgeGroup"]
      165 GETUPVAL                         R11 0
      166 GETTABLEKS                       R11 R11 K2 ["createElement"]
      168 GETUPVAL                         R12 1
      169 GETTABLEKS                       R12 R12 K18 ["Item"]
      171 DUPTABLE                         R13 K77 [{["title"] = "Gender", ["description"] = "Male", ["onActivated"], ["LayoutOrder"] = 6}]
      172 DUPCLOSURE                       R14 K78 [PROTO_9]
      173 SETTABLEKS                       R14 R13 K24 ["onActivated"]
      175 CALL                             R11 2 1
      176 SETTABLEKS                       R11 R10 K14 ["Gender"]
      178 GETUPVAL                         R11 0
      179 GETTABLEKS                       R11 R11 K2 ["createElement"]
      181 GETUPVAL                         R12 1
      182 GETTABLEKS                       R12 R12 K18 ["Item"]
      184 DUPTABLE                         R13 K84 [{["leading"] = "speech-bubble-align-left", ["title"] = "Automatic chat translation", ["description"] = "Translate chat messages from others", ["onActivated"], ["LayoutOrder"] = 7}]
      185 DUPTABLE                         R14 K87 [{"onActivated", "inputType", "isChecked"}]
      186 NEWCLOSURE                       R15 P6
      187 CAPTURE                          VAL R2
      188 SETTABLEKS                       R15 R14 K24 ["onActivated"]
      190 GETUPVAL                         R15 9
      191 GETTABLEKS                       R15 R15 K88 ["Toggle"]
      193 SETTABLEKS                       R15 R14 K85 ["inputType"]
      195 SETTABLEKS                       R1 R14 K86 ["isChecked"]
      197 SETTABLEKS                       R14 R13 K24 ["onActivated"]
      199 CALL                             R11 2 1
      200 SETTABLEKS                       R11 R10 K15 ["AutoChatTranslation"]
      202 GETUPVAL                         R11 0
      203 GETTABLEKS                       R11 R11 K2 ["createElement"]
      205 GETUPVAL                         R12 1
      206 GETTABLEKS                       R12 R12 K18 ["Item"]
      208 DUPTABLE                         R13 K93 [{["leading"] = "location-pin", ["title"] = "Track Location", ["description"] = "California, United States", ["onActivated"], ["LayoutOrder"] = 8}]
      209 DUPTABLE                         R14 K87 [{"onActivated", "inputType", "isChecked"}]
      210 NEWCLOSURE                       R15 P7
      211 CAPTURE                          VAL R4
      212 SETTABLEKS                       R15 R14 K24 ["onActivated"]
      214 GETUPVAL                         R15 9
      215 GETTABLEKS                       R15 R15 K88 ["Toggle"]
      217 SETTABLEKS                       R15 R14 K85 ["inputType"]
      219 SETTABLEKS                       R3 R14 K86 ["isChecked"]
      221 SETTABLEKS                       R14 R13 K24 ["onActivated"]
      223 CALL                             R11 2 1
      224 SETTABLEKS                       R11 R10 K16 ["TrackLocation"]
      226 CALL                             R7 3 -1
      227 RETURN                           R7 -1

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
       19 DUPTABLE                         R9 K5 [{["tag"] = "col gap-medium size-full-0 auto-y"}]
       20 DUPTABLE                         R10 K7 [{"SettingsSection"}]
       21 GETUPVAL                         R11 0
       22 GETTABLEKS                       R11 R11 K2 ["createElement"]
       24 GETUPVAL                         R12 2
       25 GETTABLEKS                       R12 R12 K8 ["Root"]
       27 DUPTABLE                         R13 K12 [{"hasDivider", "isContained", "size"}]
       28 GETUPVAL                         R15 3
       29 GETTABLEKS                       R16 R0 K13 ["controls"]
       31 GETTABLEKS                       R16 R16 K9 ["hasDivider"]
       33 GETTABLE                         R14 R15 R16
       34 SETTABLEKS                       R14 R13 K9 ["hasDivider"]
       36 GETUPVAL                         R15 4
       37 GETTABLEKS                       R16 R0 K13 ["controls"]
       39 GETTABLEKS                       R16 R16 K10 ["isContained"]
       41 GETTABLE                         R14 R15 R16
       42 SETTABLEKS                       R14 R13 K10 ["isContained"]
       44 GETTABLEKS                       R14 R0 K13 ["controls"]
       46 GETTABLEKS                       R14 R14 K11 ["size"]
       48 SETTABLEKS                       R14 R13 K11 ["size"]
       50 DUPTABLE                         R14 K22 [{"AutoChatTranslation", "AutoChatTranslation2", "Birthday", "Language", "GameItem", "GameItem2", "GameItem3", "GameItem4"}]
       51 GETUPVAL                         R15 0
       52 GETTABLEKS                       R15 R15 K2 ["createElement"]
       54 GETUPVAL                         R16 2
       55 GETTABLEKS                       R16 R16 K23 ["Item"]
       57 DUPTABLE                         R17 K31 [{["title"] = "Automatic chat translation", ["description"] = "Translate chat messages from others", ["onActivated"], ["LayoutOrder"] = 1}]
       58 DUPTABLE                         R18 K34 [{"onActivated", "inputType", "isChecked"}]
       59 NEWCLOSURE                       R19 P0
       60 CAPTURE                          VAL R2
       61 SETTABLEKS                       R19 R18 K28 ["onActivated"]
       63 GETUPVAL                         R19 5
       64 GETTABLEKS                       R19 R19 K35 ["Toggle"]
       66 SETTABLEKS                       R19 R18 K32 ["inputType"]
       68 SETTABLEKS                       R1 R18 K33 ["isChecked"]
       70 SETTABLEKS                       R18 R17 K28 ["onActivated"]
       72 CALL                             R15 2 1
       73 SETTABLEKS                       R15 R14 K14 ["AutoChatTranslation"]
       75 GETUPVAL                         R15 0
       76 GETTABLEKS                       R15 R15 K2 ["createElement"]
       78 GETUPVAL                         R16 2
       79 GETTABLEKS                       R16 R16 K23 ["Item"]
       81 DUPTABLE                         R17 K37 [{["title"] = "Automatic chat translation", ["description"] = "Translate chat messages from others", ["onActivated"], ["LayoutOrder"] = 2}]
       82 DUPTABLE                         R18 K34 [{"onActivated", "inputType", "isChecked"}]
       83 NEWCLOSURE                       R19 P1
       84 CAPTURE                          VAL R4
       85 SETTABLEKS                       R19 R18 K28 ["onActivated"]
       87 GETUPVAL                         R19 5
       88 GETTABLEKS                       R19 R19 K35 ["Toggle"]
       90 SETTABLEKS                       R19 R18 K32 ["inputType"]
       92 SETTABLEKS                       R3 R18 K33 ["isChecked"]
       94 SETTABLEKS                       R18 R17 K28 ["onActivated"]
       96 CALL                             R15 2 1
       97 SETTABLEKS                       R15 R14 K15 ["AutoChatTranslation2"]
       99 GETUPVAL                         R15 0
      100 GETTABLEKS                       R15 R15 K2 ["createElement"]
      102 GETUPVAL                         R16 2
      103 GETTABLEKS                       R16 R16 K23 ["Item"]
      105 DUPTABLE                         R17 K41 [{["title"] = "Birthday", ["description"] = "Sep 27, 2000", ["trailing"], ["onActivated"], ["LayoutOrder"] = 3}]
      106 GETUPVAL                         R18 0
      107 GETTABLEKS                       R18 R18 K2 ["createElement"]
      109 GETUPVAL                         R19 1
      110 DUPTABLE                         R20 K43 [{["tag"] = "auto-xy"}]
      111 GETUPVAL                         R21 0
      112 GETTABLEKS                       R21 R21 K2 ["createElement"]
      114 GETUPVAL                         R22 6
      115 DUPTABLE                         R23 K48 [{["text"] = "Verified", ["icon"], ["variant"]}]
      116 GETUPVAL                         R24 7
      117 GETTABLEKS                       R24 R24 K49 ["Icon"]
      119 GETTABLEKS                       R24 R24 K50 ["CircleCheck"]
      121 SETTABLEKS                       R24 R23 K46 ["icon"]
      123 GETUPVAL                         R24 8
      124 GETTABLEKS                       R24 R24 K51 ["Primary"]
      126 SETTABLEKS                       R24 R23 K47 ["variant"]
      128 CALL                             R21 2 -1
      129 CALL                             R18 -1 1
      130 SETTABLEKS                       R18 R17 K39 ["trailing"]
      132 DUPCLOSURE                       R18 K52 [PROTO_19]
      133 SETTABLEKS                       R18 R17 K28 ["onActivated"]
      135 CALL                             R15 2 1
      136 SETTABLEKS                       R15 R14 K16 ["Birthday"]
      138 GETUPVAL                         R15 0
      139 GETTABLEKS                       R15 R15 K2 ["createElement"]
      141 GETUPVAL                         R16 2
      142 GETTABLEKS                       R16 R16 K23 ["Item"]
      144 DUPTABLE                         R17 K54 [{["title"] = "Language", ["trailing"], ["LayoutOrder"] = 4}]
      145 GETUPVAL                         R18 0
      146 GETTABLEKS                       R18 R18 K2 ["createElement"]
      148 GETUPVAL                         R19 9
      149 GETTABLEKS                       R19 R19 K8 ["Root"]
      151 DUPTABLE                         R20 K61 [{["value"], ["items"], ["onItemChanged"], ["label"] = "", ["width"]}]
      152 SETTABLEKS                       R5 R20 K55 ["value"]
      154 NEWTABLE                         R21 0 3
      156 DUPTABLE                         R22 K64 [{["id"] = "en", ["text"] = "English"}]
      157 DUPTABLE                         R23 K67 [{["id"] = "es", ["text"] = "Spanish"}]
      158 DUPTABLE                         R24 K70 [{["id"] = "fr", ["text"] = "French"}]
      159 SETLIST                          R21 R22 3 [1]
      161 SETTABLEKS                       R21 R20 K56 ["items"]
      163 NEWCLOSURE                       R21 P3
      164 CAPTURE                          VAL R6
      165 SETTABLEKS                       R21 R20 K57 ["onItemChanged"]
      167 GETIMPORT                        R21 K73 [UDim.new]
      169 LOADN                            R22 0
      170 LOADN                            R23 140
      171 CALL                             R21 2 1
      172 SETTABLEKS                       R21 R20 K60 ["width"]
      174 CALL                             R18 2 1
      175 SETTABLEKS                       R18 R17 K39 ["trailing"]
      177 CALL                             R15 2 1
      178 SETTABLEKS                       R15 R14 K17 ["Language"]
      180 GETUPVAL                         R15 0
      181 GETTABLEKS                       R15 R15 K2 ["createElement"]
      183 GETUPVAL                         R16 2
      184 GETTABLEKS                       R16 R16 K23 ["Item"]
      186 DUPTABLE                         R17 K76 [{["leading"], ["title"], ["trailing"], ["onActivated"], ["LayoutOrder"] = 5}]
      187 DUPTABLE                         R18 K79 [{["iconName"] = "rbxthumb://type=GameIcon&id=1818&w=150&h=150"}]
      188 SETTABLEKS                       R18 R17 K74 ["leading"]
      190 DUPTABLE                         R18 K83 [{["title"] = "Item Name", ["metadata"] = "Metadata"}]
      191 SETTABLEKS                       R18 R17 K24 ["title"]
      193 GETUPVAL                         R18 0
      194 GETTABLEKS                       R18 R18 K2 ["createElement"]
      196 GETUPVAL                         R19 10
      197 DUPTABLE                         R20 K84 [{"variant"}]
      198 GETUPVAL                         R21 11
      199 GETTABLEKS                       R21 R21 K85 ["Emphasis"]
      201 SETTABLEKS                       R21 R20 K47 ["variant"]
      203 CALL                             R18 2 1
      204 SETTABLEKS                       R18 R17 K39 ["trailing"]
      206 DUPCLOSURE                       R18 K86 [PROTO_21]
      207 SETTABLEKS                       R18 R17 K28 ["onActivated"]
      209 CALL                             R15 2 1
      210 SETTABLEKS                       R15 R14 K18 ["GameItem"]
      212 GETUPVAL                         R15 0
      213 GETTABLEKS                       R15 R15 K2 ["createElement"]
      215 GETUPVAL                         R16 2
      216 GETTABLEKS                       R16 R16 K23 ["Item"]
      218 DUPTABLE                         R17 K88 [{["leading"], ["title"], ["onActivated"], ["LayoutOrder"] = 6}]
      219 DUPTABLE                         R18 K90 [{["iconName"] = "rbxthumb://type=GameIcon&id=2788229376&w=150&h=150"}]
      220 SETTABLEKS                       R18 R17 K74 ["leading"]
      222 DUPTABLE                         R18 K83 [{["title"] = "Item Name", ["metadata"] = "Metadata"}]
      223 SETTABLEKS                       R18 R17 K24 ["title"]
      225 DUPCLOSURE                       R18 K91 [PROTO_22]
      226 SETTABLEKS                       R18 R17 K28 ["onActivated"]
      228 CALL                             R15 2 1
      229 SETTABLEKS                       R15 R14 K19 ["GameItem2"]
      231 GETUPVAL                         R15 0
      232 GETTABLEKS                       R15 R15 K2 ["createElement"]
      234 GETUPVAL                         R16 2
      235 GETTABLEKS                       R16 R16 K23 ["Item"]
      237 DUPTABLE                         R17 K93 [{["leading"], ["title"], ["trailing"], ["onActivated"], ["LayoutOrder"] = 7}]
      238 DUPTABLE                         R18 K95 [{["iconName"] = "rbxthumb://type=GameIcon&id=1281960580&w=150&h=150"}]
      239 SETTABLEKS                       R18 R17 K74 ["leading"]
      241 DUPTABLE                         R18 K83 [{["title"] = "Item Name", ["metadata"] = "Metadata"}]
      242 SETTABLEKS                       R18 R17 K24 ["title"]
      244 GETUPVAL                         R18 0
      245 GETTABLEKS                       R18 R18 K2 ["createElement"]
      247 GETUPVAL                         R19 1
      248 DUPTABLE                         R20 K97 [{["tag"] = "row items-center gap-large auto-xy"}]
      249 DUPTABLE                         R21 K100 [{"Dot", "UpdateBadge"}]
      250 GETUPVAL                         R22 0
      251 GETTABLEKS                       R22 R22 K2 ["createElement"]
      253 GETUPVAL                         R23 10
      254 DUPTABLE                         R24 K84 [{"variant"}]
      255 GETUPVAL                         R25 11
      256 GETTABLEKS                       R25 R25 K85 ["Emphasis"]
      258 SETTABLEKS                       R25 R24 K47 ["variant"]
      260 CALL                             R22 2 1
      261 SETTABLEKS                       R22 R21 K98 ["Dot"]
      263 GETUPVAL                         R22 0
      264 GETTABLEKS                       R22 R22 K2 ["createElement"]
      266 GETUPVAL                         R23 6
      267 DUPTABLE                         R24 K102 [{["text"] = "Update", ["variant"], ["LayoutOrder"] = 2}]
      268 GETUPVAL                         R25 8
      269 GETTABLEKS                       R25 R25 K103 ["Neutral"]
      271 SETTABLEKS                       R25 R24 K47 ["variant"]
      273 CALL                             R22 2 1
      274 SETTABLEKS                       R22 R21 K99 ["UpdateBadge"]
      276 CALL                             R18 3 1
      277 SETTABLEKS                       R18 R17 K39 ["trailing"]
      279 DUPCLOSURE                       R18 K104 [PROTO_23]
      280 SETTABLEKS                       R18 R17 K28 ["onActivated"]
      282 CALL                             R15 2 1
      283 SETTABLEKS                       R15 R14 K20 ["GameItem3"]
      285 GETUPVAL                         R15 0
      286 GETTABLEKS                       R15 R15 K2 ["createElement"]
      288 GETUPVAL                         R16 2
      289 GETTABLEKS                       R16 R16 K23 ["Item"]
      291 DUPTABLE                         R17 K106 [{["leading"], ["title"], ["onActivated"], ["LayoutOrder"] = 8}]
      292 DUPTABLE                         R18 K108 [{["iconName"] = "rbxthumb://type=GameIcon&id=606849621&w=150&h=150"}]
      293 SETTABLEKS                       R18 R17 K74 ["leading"]
      295 DUPTABLE                         R18 K83 [{["title"] = "Item Name", ["metadata"] = "Metadata"}]
      296 SETTABLEKS                       R18 R17 K24 ["title"]
      298 DUPCLOSURE                       R18 K109 [PROTO_24]
      299 SETTABLEKS                       R18 R17 K28 ["onActivated"]
      301 CALL                             R15 2 1
      302 SETTABLEKS                       R15 R14 K21 ["GameItem4"]
      304 CALL                             R11 3 1
      305 SETTABLEKS                       R11 R10 K6 ["SettingsSection"]
      307 CALL                             R7 3 -1
      308 RETURN                           R7 -1

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
       36 DUPTABLE                         R7 K19 [{["leading"], ["title"], ["description"] = "Leading media thumbnail", ["LayoutOrder"] = 1}]
       37 DUPTABLE                         R8 K22 [{["iconName"] = "rbxthumb://type=GameIcon&id=1818&w=150&h=150"}]
       38 SETTABLEKS                       R8 R7 K13 ["leading"]
       40 DUPTABLE                         R8 K26 [{["title"] = "Media", ["metadata"] = "Metadata"}]
       41 SETTABLEKS                       R8 R7 K14 ["title"]
       43 CALL                             R5 2 1
       44 SETTABLEKS                       R5 R4 K7 ["MediaItem"]
       46 GETUPVAL                         R5 0
       47 GETTABLEKS                       R5 R5 K0 ["createElement"]
       49 GETUPVAL                         R6 1
       50 GETTABLEKS                       R6 R6 K12 ["Item"]
       52 DUPTABLE                         R7 K29 [{["leading"], ["title"], ["description"] = "Leading avatar", ["LayoutOrder"] = 2}]
       53 DUPTABLE                         R8 K33 [{["type"], ["userId"] = 24813339}]
       54 GETUPVAL                         R9 4
       55 GETTABLEKS                       R9 R9 K34 ["Avatar"]
       57 SETTABLEKS                       R9 R8 K30 ["type"]
       59 SETTABLEKS                       R8 R7 K13 ["leading"]
       61 DUPTABLE                         R8 K35 [{["title"] = "Avatar", ["metadata"] = "Metadata"}]
       62 SETTABLEKS                       R8 R7 K14 ["title"]
       64 CALL                             R5 2 1
       65 SETTABLEKS                       R5 R4 K8 ["AvatarItem"]
       67 GETUPVAL                         R5 0
       68 GETTABLEKS                       R5 R5 K0 ["createElement"]
       70 GETUPVAL                         R6 1
       71 GETTABLEKS                       R6 R6 K12 ["Item"]
       73 DUPTABLE                         R7 K38 [{["leading"], ["title"], ["description"] = "Leading icon", ["LayoutOrder"] = 3}]
       74 GETUPVAL                         R8 5
       75 GETTABLEKS                       R8 R8 K39 ["Icon"]
       77 GETTABLEKS                       R8 R8 K40 ["Robux"]
       79 SETTABLEKS                       R8 R7 K13 ["leading"]
       81 DUPTABLE                         R8 K41 [{["title"] = "Icon", ["metadata"] = "Metadata"}]
       82 SETTABLEKS                       R8 R7 K14 ["title"]
       84 CALL                             R5 2 1
       85 SETTABLEKS                       R5 R4 K9 ["IconItem"]
       87 GETUPVAL                         R5 0
       88 GETTABLEKS                       R5 R5 K0 ["createElement"]
       90 GETUPVAL                         R6 1
       91 GETTABLEKS                       R6 R6 K12 ["Item"]
       93 DUPTABLE                         R7 K44 [{["title"], ["description"] = "No leading accessory", ["LayoutOrder"] = 4}]
       94 DUPTABLE                         R8 K46 [{["title"] = "No Leading", ["metadata"] = "Metadata"}]
       95 SETTABLEKS                       R8 R7 K14 ["title"]
       97 CALL                             R5 2 1
       98 SETTABLEKS                       R5 R4 K10 ["NoLeadingItem"]
      100 CALL                             R1 3 -1
      101 RETURN                           R1 -1

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
       94 DUPTABLE                         R15 K26 [{["None"] = False, ["Inset"], ["Full"]}]
       95 DUPTABLE                         R16 K29 [{["isInset"] = True}]
       96 SETTABLEKS                       R16 R15 K24 ["Inset"]
       98 DUPTABLE                         R16 K30 [{["isInset"] = False}]
       99 SETTABLEKS                       R16 R15 K25 ["Full"]
      101 NEWTABLE                         R16 4 0
      103 LOADB                            R17 1
      104 SETTABLEKS                       R17 R16 K31 ["Contained"]
      106 DUPTABLE                         R17 K34 [{["isContained"] = False, ["hasMargin"] = False}]
      107 SETTABLEKS                       R17 R16 K35 ["Full Width"]
      109 DUPTABLE                         R17 K36 [{["isContained"] = False, ["hasMargin"] = True}]
      110 SETTABLEKS                       R17 R16 K37 ["Has Margin"]
      112 DUPCLOSURE                       R17 K38 [PROTO_3]
      113 CAPTURE                          VAL R4
      114 CAPTURE                          VAL R14
      115 CAPTURE                          VAL R10
      116 CAPTURE                          VAL R15
      117 CAPTURE                          VAL R16
      118 DUPCLOSURE                       R18 K39 [PROTO_14]
      119 CAPTURE                          VAL R4
      120 CAPTURE                          VAL R10
      121 CAPTURE                          VAL R15
      122 CAPTURE                          VAL R16
      123 CAPTURE                          VAL R14
      124 CAPTURE                          VAL R6
      125 CAPTURE                          VAL R2
      126 CAPTURE                          VAL R7
      127 CAPTURE                          VAL R8
      128 CAPTURE                          VAL R11
      129 DUPCLOSURE                       R19 K40 [PROTO_25]
      130 CAPTURE                          VAL R4
      131 CAPTURE                          VAL R14
      132 CAPTURE                          VAL R10
      133 CAPTURE                          VAL R15
      134 CAPTURE                          VAL R16
      135 CAPTURE                          VAL R11
      136 CAPTURE                          VAL R6
      137 CAPTURE                          VAL R2
      138 CAPTURE                          VAL R7
      139 CAPTURE                          VAL R8
      140 CAPTURE                          VAL R12
      141 CAPTURE                          VAL R13
      142 DUPTABLE                         R20 K44 [{["summary"] = "List", ["stories"], ["controls"]}]
      143 NEWTABLE                         R21 0 4
      145 DUPTABLE                         R22 K48 [{["name"] = "In Parent Container", ["story"]}]
      146 SETTABLEKS                       R17 R22 K47 ["story"]
      148 DUPTABLE                         R23 K50 [{["name"] = "Base", ["story"]}]
      149 DUPCLOSURE                       R24 K51 [PROTO_26]
      150 CAPTURE                          VAL R4
      151 CAPTURE                          VAL R10
      152 CAPTURE                          VAL R15
      153 CAPTURE                          VAL R16
      154 CAPTURE                          VAL R5
      155 CAPTURE                          VAL R2
      156 SETTABLEKS                       R24 R23 K47 ["story"]
      158 DUPTABLE                         R24 K53 [{["name"] = "Settings", ["story"]}]
      159 SETTABLEKS                       R18 R24 K47 ["story"]
      161 DUPTABLE                         R25 K55 [{["name"] = "Games List", ["story"]}]
      162 SETTABLEKS                       R19 R25 K47 ["story"]
      164 SETLIST                          R21 R22 4 [1]
      166 SETTABLEKS                       R21 R20 K42 ["stories"]
      168 DUPTABLE                         R21 K58 [{"hasDivider", "isContained", "size"}]
      169 GETTABLEKS                       R22 R3 K59 ["keys"]
      171 MOVE                             R23 R15
      172 CALL                             R22 1 1
      173 SETTABLEKS                       R22 R21 K56 ["hasDivider"]
      175 GETTABLEKS                       R22 R3 K59 ["keys"]
      177 MOVE                             R23 R16
      178 CALL                             R22 1 1
      179 SETTABLEKS                       R22 R21 K32 ["isContained"]
      181 GETTABLEKS                       R22 R3 K60 ["values"]
      183 MOVE                             R23 R9
      184 CALL                             R22 1 1
      185 SETTABLEKS                       R22 R21 K57 ["size"]
      187 SETTABLEKS                       R21 R20 K43 ["controls"]
      189 RETURN                           R20 1
