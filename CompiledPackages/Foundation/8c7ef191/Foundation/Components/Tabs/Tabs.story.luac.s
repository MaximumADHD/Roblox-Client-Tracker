PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useState"]
        3 LOADK                            R1 K1 ["1"]
        4 CALL                             R0 1 2
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K2 ["createElement"]
        8 GETUPVAL                         R3 1
        9 DUPTABLE                         R4 K4 [{"tag"}]
       10 LOADK                            R5 K5 ["col auto-y size-full-0"]
       11 SETTABLEKS                       R5 R4 K3 ["tag"]
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R5 R5 K2 ["createElement"]
       16 GETUPVAL                         R6 2
       17 DUPTABLE                         R7 K12 [{"LayoutOrder", "activeTabId", "onActivated", "tabs", "size", "fillBehavior"}]
       18 LOADN                            R8 1
       19 SETTABLEKS                       R8 R7 K6 ["LayoutOrder"]
       21 SETTABLEKS                       R0 R7 K7 ["activeTabId"]
       23 SETTABLEKS                       R1 R7 K8 ["onActivated"]
       25 NEWTABLE                         R8 0 2
       27 DUPTABLE                         R9 K15 [{"id", "text"}]
       28 LOADK                            R10 K1 ["1"]
       29 SETTABLEKS                       R10 R9 K13 ["id"]
       31 LOADK                            R10 K16 ["Nested tab 1"]
       32 SETTABLEKS                       R10 R9 K14 ["text"]
       34 DUPTABLE                         R10 K15 [{"id", "text"}]
       35 LOADK                            R11 K17 ["2"]
       36 SETTABLEKS                       R11 R10 K13 ["id"]
       38 LOADK                            R11 K18 ["Nested tab 2"]
       39 SETTABLEKS                       R11 R10 K14 ["text"]
       41 SETLIST                          R8 R9 2 [1]
       43 SETTABLEKS                       R8 R7 K9 ["tabs"]
       45 GETUPVAL                         R8 3
       46 GETTABLEKS                       R8 R8 K19 ["Medium"]
       48 SETTABLEKS                       R8 R7 K10 ["size"]
       50 GETUPVAL                         R8 4
       51 GETTABLEKS                       R8 R8 K20 ["Fill"]
       53 SETTABLEKS                       R8 R7 K11 ["fillBehavior"]
       55 CALL                             R5 2 1
       56 GETUPVAL                         R6 0
       57 GETTABLEKS                       R6 R6 K2 ["createElement"]
       59 GETUPVAL                         R7 1
       60 DUPTABLE                         R8 K22 [{"LayoutOrder", "tag", "Visible"}]
       61 LOADN                            R9 2
       62 SETTABLEKS                       R9 R8 K6 ["LayoutOrder"]
       64 LOADK                            R9 K23 ["auto-y size-full-0"]
       65 SETTABLEKS                       R9 R8 K3 ["tag"]
       67 JUMPIFEQKS                       R0 K1 ["1"] ; [+2]
       69 LOADB                            R9 0 +1
       70 LOADB                            R9 1
       71 SETTABLEKS                       R9 R8 K21 ["Visible"]
       73 GETUPVAL                         R9 0
       74 GETTABLEKS                       R9 R9 K2 ["createElement"]
       76 GETUPVAL                         R10 5
       77 DUPTABLE                         R11 K25 [{"tag", "Text"}]
       78 LOADK                            R12 K26 ["text-align-x-left auto-xy text-wrap"]
       79 SETTABLEKS                       R12 R11 K3 ["tag"]
       81 LOADK                            R12 K27 ["Content of nested tab 1"]
       82 SETTABLEKS                       R12 R11 K24 ["Text"]
       84 CALL                             R9 2 -1
       85 CALL                             R6 -1 1
       86 GETUPVAL                         R7 0
       87 GETTABLEKS                       R7 R7 K2 ["createElement"]
       89 GETUPVAL                         R8 1
       90 DUPTABLE                         R9 K22 [{"LayoutOrder", "tag", "Visible"}]
       91 LOADN                            R10 2
       92 SETTABLEKS                       R10 R9 K6 ["LayoutOrder"]
       94 LOADK                            R10 K23 ["auto-y size-full-0"]
       95 SETTABLEKS                       R10 R9 K3 ["tag"]
       97 JUMPIFEQKS                       R0 K17 ["2"] ; [+2]
       99 LOADB                            R10 0 +1
      100 LOADB                            R10 1
      101 SETTABLEKS                       R10 R9 K21 ["Visible"]
      103 GETUPVAL                         R10 0
      104 GETTABLEKS                       R10 R10 K2 ["createElement"]
      106 GETUPVAL                         R11 5
      107 DUPTABLE                         R12 K25 [{"tag", "Text"}]
      108 LOADK                            R13 K26 ["text-align-x-left auto-xy text-wrap"]
      109 SETTABLEKS                       R13 R12 K3 ["tag"]
      111 LOADK                            R13 K28 ["Content of nested tab 2"]
      112 SETTABLEKS                       R13 R12 K24 ["Text"]
      114 CALL                             R10 2 -1
      115 CALL                             R7 -1 -1
      116 CALL                             R2 -1 -1
      117 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K2 [{"tag"}]
        5 LOADK                            R4 K3 ["col auto-y size-full-0"]
        6 SETTABLEKS                       R4 R3 K1 ["tag"]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K0 ["createElement"]
       11 GETUPVAL                         R5 2
       12 DUPTABLE                         R6 K8 [{"defaultActiveTabId", "tabs", "size", "fillBehavior"}]
       13 LOADK                            R7 K9 ["1"]
       14 SETTABLEKS                       R7 R6 K4 ["defaultActiveTabId"]
       16 NEWTABLE                         R7 0 5
       18 DUPTABLE                         R8 K13 [{"id", "text", "content"}]
       19 LOADK                            R9 K9 ["1"]
       20 SETTABLEKS                       R9 R8 K10 ["id"]
       22 LOADK                            R9 K14 ["lll"]
       23 SETTABLEKS                       R9 R8 K11 ["text"]
       25 GETUPVAL                         R9 0
       26 GETTABLEKS                       R9 R9 K0 ["createElement"]
       28 GETUPVAL                         R10 1
       29 DUPTABLE                         R11 K2 [{"tag"}]
       30 LOADK                            R12 K15 ["auto-y size-full-0"]
       31 SETTABLEKS                       R12 R11 K1 ["tag"]
       33 GETUPVAL                         R12 0
       34 GETTABLEKS                       R12 R12 K0 ["createElement"]
       36 GETUPVAL                         R13 3
       37 DUPTABLE                         R14 K17 [{"tag", "Text"}]
       38 LOADK                            R15 K18 ["text-align-x-left auto-xy text-wrap"]
       39 SETTABLEKS                       R15 R14 K1 ["tag"]
       41 LOADK                            R15 K19 ["You fully controll how content is rendered. No padding or other styles are applied by default"]
       42 SETTABLEKS                       R15 R14 K16 ["Text"]
       44 CALL                             R12 2 -1
       45 CALL                             R9 -1 1
       46 SETTABLEKS                       R9 R8 K12 ["content"]
       48 DUPTABLE                         R9 K13 [{"id", "text", "content"}]
       49 LOADK                            R10 K20 ["2"]
       50 SETTABLEKS                       R10 R9 K10 ["id"]
       52 LOADK                            R10 K21 ["A big one"]
       53 SETTABLEKS                       R10 R9 K11 ["text"]
       55 GETUPVAL                         R10 0
       56 GETTABLEKS                       R10 R10 K0 ["createElement"]
       58 GETUPVAL                         R11 1
       59 DUPTABLE                         R12 K2 [{"tag"}]
       60 LOADK                            R13 K22 ["padding-xxlarge auto-y size-full-0"]
       61 SETTABLEKS                       R13 R12 K1 ["tag"]
       63 GETUPVAL                         R13 0
       64 GETTABLEKS                       R13 R13 K0 ["createElement"]
       66 GETUPVAL                         R14 3
       67 DUPTABLE                         R15 K17 [{"tag", "Text"}]
       68 LOADK                            R16 K23 ["text-align-x-left auto-xy"]
       69 SETTABLEKS                       R16 R15 K1 ["tag"]
       71 LOADK                            R16 K24 ["The Jurassic ranges from 200 million years to 145 million years ago."]
       72 SETTABLEKS                       R16 R15 K16 ["Text"]
       74 CALL                             R13 2 -1
       75 CALL                             R10 -1 1
       76 SETTABLEKS                       R10 R9 K12 ["content"]
       78 DUPTABLE                         R10 K26 [{"id", "text", "icon", "content"}]
       79 LOADK                            R11 K27 ["3"]
       80 SETTABLEKS                       R11 R10 K10 ["id"]
       82 LOADK                            R11 K28 ["With builder icon"]
       83 SETTABLEKS                       R11 R10 K11 ["text"]
       85 LOADK                            R11 K29 ["star"]
       86 SETTABLEKS                       R11 R10 K25 ["icon"]
       88 GETUPVAL                         R11 0
       89 GETTABLEKS                       R11 R11 K0 ["createElement"]
       91 GETUPVAL                         R12 1
       92 DUPTABLE                         R13 K2 [{"tag"}]
       93 LOADK                            R14 K22 ["padding-xxlarge auto-y size-full-0"]
       94 SETTABLEKS                       R14 R13 K1 ["tag"]
       96 GETUPVAL                         R14 0
       97 GETTABLEKS                       R14 R14 K0 ["createElement"]
       99 GETUPVAL                         R15 3
      100 DUPTABLE                         R16 K17 [{"tag", "Text"}]
      101 LOADK                            R17 K23 ["text-align-x-left auto-xy"]
      102 SETTABLEKS                       R17 R16 K1 ["tag"]
      104 LOADK                            R17 K30 ["You are perfect!"]
      105 SETTABLEKS                       R17 R16 K16 ["Text"]
      107 CALL                             R14 2 -1
      108 CALL                             R11 -1 1
      109 SETTABLEKS                       R11 R10 K12 ["content"]
      111 DUPTABLE                         R11 K26 [{"id", "text", "icon", "content"}]
      112 LOADK                            R12 K31 ["4"]
      113 SETTABLEKS                       R12 R11 K10 ["id"]
      115 LOADK                            R12 K32 ["With filled builder icon"]
      116 SETTABLEKS                       R12 R11 K11 ["text"]
      118 GETUPVAL                         R12 4
      119 SETTABLEKS                       R12 R11 K25 ["icon"]
      121 GETUPVAL                         R12 0
      122 GETTABLEKS                       R12 R12 K0 ["createElement"]
      124 GETUPVAL                         R13 1
      125 DUPTABLE                         R14 K2 [{"tag"}]
      126 LOADK                            R15 K22 ["padding-xxlarge auto-y size-full-0"]
      127 SETTABLEKS                       R15 R14 K1 ["tag"]
      129 GETUPVAL                         R15 0
      130 GETTABLEKS                       R15 R15 K0 ["createElement"]
      132 GETUPVAL                         R16 3
      133 DUPTABLE                         R17 K17 [{"tag", "Text"}]
      134 LOADK                            R18 K23 ["text-align-x-left auto-xy"]
      135 SETTABLEKS                       R18 R17 K1 ["tag"]
      137 LOADK                            R18 K33 ["You are still perfect!"]
      138 SETTABLEKS                       R18 R17 K16 ["Text"]
      140 CALL                             R15 2 -1
      141 CALL                             R12 -1 1
      142 SETTABLEKS                       R12 R11 K12 ["content"]
      144 DUPTABLE                         R12 K35 [{"id", "text", "icon", "isDisabled"}]
      145 LOADK                            R13 K36 ["5"]
      146 SETTABLEKS                       R13 R12 K10 ["id"]
      148 LOADK                            R13 K37 ["With icon"]
      149 SETTABLEKS                       R13 R12 K11 ["text"]
      151 LOADK                            R13 K38 ["icons/menu/clothing/limited_on"]
      152 SETTABLEKS                       R13 R12 K25 ["icon"]
      154 LOADB                            R13 1
      155 SETTABLEKS                       R13 R12 K34 ["isDisabled"]
      157 SETLIST                          R7 R8 5 [1]
      159 SETTABLEKS                       R7 R6 K5 ["tabs"]
      161 GETTABLEKS                       R7 R0 K39 ["controls"]
      163 GETTABLEKS                       R7 R7 K6 ["size"]
      165 SETTABLEKS                       R7 R6 K6 ["size"]
      167 GETTABLEKS                       R7 R0 K39 ["controls"]
      169 GETTABLEKS                       R7 R7 K7 ["fillBehavior"]
      171 SETTABLEKS                       R7 R6 K7 ["fillBehavior"]
      173 CALL                             R4 2 -1
      174 CALL                             R1 -1 -1
      175 RETURN                           R1 -1

PROTO_2:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R3 K2 ["Tab %* activated"]
        3 MOVE                             R5 R0
        4 NAMECALL                         R3 R3 K3 ["format"]
        6 CALL                             R3 2 1
        7 MOVE                             R2 R3
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K2 [{"tag"}]
        5 LOADK                            R4 K3 ["col auto-y size-full-0"]
        6 SETTABLEKS                       R4 R3 K1 ["tag"]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K0 ["createElement"]
       11 GETUPVAL                         R5 2
       12 DUPTABLE                         R6 K9 [{"defaultActiveTabId", "onActivated", "tabs", "size", "fillBehavior"}]
       13 LOADK                            R7 K10 ["1"]
       14 SETTABLEKS                       R7 R6 K4 ["defaultActiveTabId"]
       16 DUPCLOSURE                       R7 K11 [PROTO_2]
       17 SETTABLEKS                       R7 R6 K5 ["onActivated"]
       19 NEWTABLE                         R7 0 5
       21 DUPTABLE                         R8 K15 [{"id", "text", "content"}]
       22 LOADK                            R9 K10 ["1"]
       23 SETTABLEKS                       R9 R8 K12 ["id"]
       25 LOADK                            R9 K16 ["With nested tabs"]
       26 SETTABLEKS                       R9 R8 K13 ["text"]
       28 GETUPVAL                         R9 0
       29 GETTABLEKS                       R9 R9 K0 ["createElement"]
       31 GETUPVAL                         R10 3
       32 CALL                             R9 1 1
       33 SETTABLEKS                       R9 R8 K14 ["content"]
       35 DUPTABLE                         R9 K15 [{"id", "text", "content"}]
       36 LOADK                            R10 K17 ["2"]
       37 SETTABLEKS                       R10 R9 K12 ["id"]
       39 LOADK                            R10 K18 ["Regular tab"]
       40 SETTABLEKS                       R10 R9 K13 ["text"]
       42 GETUPVAL                         R10 0
       43 GETTABLEKS                       R10 R10 K0 ["createElement"]
       45 GETUPVAL                         R11 1
       46 DUPTABLE                         R12 K2 [{"tag"}]
       47 LOADK                            R13 K19 ["padding-xxlarge auto-y size-full-0"]
       48 SETTABLEKS                       R13 R12 K1 ["tag"]
       50 GETUPVAL                         R13 0
       51 GETTABLEKS                       R13 R13 K0 ["createElement"]
       53 GETUPVAL                         R14 4
       54 DUPTABLE                         R15 K21 [{"tag", "Text"}]
       55 LOADK                            R16 K22 ["text-align-x-left auto-xy"]
       56 SETTABLEKS                       R16 R15 K1 ["tag"]
       58 LOADK                            R16 K23 ["Regular tab content."]
       59 SETTABLEKS                       R16 R15 K20 ["Text"]
       61 CALL                             R13 2 -1
       62 CALL                             R10 -1 1
       63 SETTABLEKS                       R10 R9 K14 ["content"]
       65 DUPTABLE                         R10 K25 [{"id", "text", "icon", "content"}]
       66 LOADK                            R11 K26 ["3"]
       67 SETTABLEKS                       R11 R10 K12 ["id"]
       69 LOADK                            R11 K27 ["With builder icon"]
       70 SETTABLEKS                       R11 R10 K13 ["text"]
       72 LOADK                            R11 K28 ["star"]
       73 SETTABLEKS                       R11 R10 K24 ["icon"]
       75 GETUPVAL                         R11 0
       76 GETTABLEKS                       R11 R11 K0 ["createElement"]
       78 GETUPVAL                         R12 1
       79 DUPTABLE                         R13 K2 [{"tag"}]
       80 LOADK                            R14 K19 ["padding-xxlarge auto-y size-full-0"]
       81 SETTABLEKS                       R14 R13 K1 ["tag"]
       83 GETUPVAL                         R14 0
       84 GETTABLEKS                       R14 R14 K0 ["createElement"]
       86 GETUPVAL                         R15 4
       87 DUPTABLE                         R16 K21 [{"tag", "Text"}]
       88 LOADK                            R17 K22 ["text-align-x-left auto-xy"]
       89 SETTABLEKS                       R17 R16 K1 ["tag"]
       91 LOADK                            R17 K29 ["You are perfect!"]
       92 SETTABLEKS                       R17 R16 K20 ["Text"]
       94 CALL                             R14 2 -1
       95 CALL                             R11 -1 1
       96 SETTABLEKS                       R11 R10 K14 ["content"]
       98 DUPTABLE                         R11 K25 [{"id", "text", "icon", "content"}]
       99 LOADK                            R12 K30 ["4"]
      100 SETTABLEKS                       R12 R11 K12 ["id"]
      102 LOADK                            R12 K31 ["With filled builder icon"]
      103 SETTABLEKS                       R12 R11 K13 ["text"]
      105 GETUPVAL                         R12 5
      106 SETTABLEKS                       R12 R11 K24 ["icon"]
      108 GETUPVAL                         R12 0
      109 GETTABLEKS                       R12 R12 K0 ["createElement"]
      111 GETUPVAL                         R13 1
      112 DUPTABLE                         R14 K2 [{"tag"}]
      113 LOADK                            R15 K19 ["padding-xxlarge auto-y size-full-0"]
      114 SETTABLEKS                       R15 R14 K1 ["tag"]
      116 GETUPVAL                         R15 0
      117 GETTABLEKS                       R15 R15 K0 ["createElement"]
      119 GETUPVAL                         R16 4
      120 DUPTABLE                         R17 K21 [{"tag", "Text"}]
      121 LOADK                            R18 K22 ["text-align-x-left auto-xy"]
      122 SETTABLEKS                       R18 R17 K1 ["tag"]
      124 LOADK                            R18 K32 ["You are still perfect!"]
      125 SETTABLEKS                       R18 R17 K20 ["Text"]
      127 CALL                             R15 2 -1
      128 CALL                             R12 -1 1
      129 SETTABLEKS                       R12 R11 K14 ["content"]
      131 DUPTABLE                         R12 K34 [{"id", "text", "icon", "isDisabled", "content"}]
      132 LOADK                            R13 K35 ["5"]
      133 SETTABLEKS                       R13 R12 K12 ["id"]
      135 LOADK                            R13 K36 ["With icon"]
      136 SETTABLEKS                       R13 R12 K13 ["text"]
      138 LOADK                            R13 K37 ["icons/menu/clothing/limited_on"]
      139 SETTABLEKS                       R13 R12 K24 ["icon"]
      141 LOADB                            R13 1
      142 SETTABLEKS                       R13 R12 K33 ["isDisabled"]
      144 GETUPVAL                         R13 0
      145 GETTABLEKS                       R13 R13 K0 ["createElement"]
      147 GETUPVAL                         R14 1
      148 DUPTABLE                         R15 K2 [{"tag"}]
      149 LOADK                            R16 K19 ["padding-xxlarge auto-y size-full-0"]
      150 SETTABLEKS                       R16 R15 K1 ["tag"]
      152 GETUPVAL                         R16 0
      153 GETTABLEKS                       R16 R16 K0 ["createElement"]
      155 GETUPVAL                         R17 4
      156 DUPTABLE                         R18 K21 [{"tag", "Text"}]
      157 LOADK                            R19 K22 ["text-align-x-left auto-xy"]
      158 SETTABLEKS                       R19 R18 K1 ["tag"]
      160 LOADK                            R19 K32 ["You are still perfect!"]
      161 SETTABLEKS                       R19 R18 K20 ["Text"]
      163 CALL                             R16 2 -1
      164 CALL                             R13 -1 1
      165 SETTABLEKS                       R13 R12 K14 ["content"]
      167 SETLIST                          R7 R8 5 [1]
      169 SETTABLEKS                       R7 R6 K6 ["tabs"]
      171 GETTABLEKS                       R7 R0 K38 ["controls"]
      173 GETTABLEKS                       R7 R7 K7 ["size"]
      175 SETTABLEKS                       R7 R6 K7 ["size"]
      177 GETTABLEKS                       R7 R0 K38 ["controls"]
      179 GETTABLEKS                       R7 R7 K8 ["fillBehavior"]
      181 SETTABLEKS                       R7 R6 K8 ["fillBehavior"]
      183 CALL                             R4 2 -1
      184 CALL                             R1 -1 -1
      185 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Dash"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R5 K10 ["Types"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K9 ["Components"]
       30 GETTABLEKS                       R6 R6 K11 ["Tabs"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K9 ["Components"]
       37 GETTABLEKS                       R7 R7 K12 ["Text"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K9 ["Components"]
       44 GETTABLEKS                       R8 R8 K13 ["View"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R0 K14 ["Enums"]
       51 GETTABLEKS                       R9 R9 K15 ["InputSize"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R10 R0 K14 ["Enums"]
       58 GETTABLEKS                       R10 R10 K16 ["FillBehavior"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K6 [require]
       63 GETTABLEKS                       R11 R1 K17 ["BuilderIcons"]
       65 CALL                             R10 1 1
       66 GETTABLEKS                       R11 R10 K18 ["IconVariant"]
       68 DUPTABLE                         R12 K21 [{"name", "variant"}]
       69 LOADK                            R13 K22 ["star"]
       70 SETTABLEKS                       R13 R12 K19 ["name"]
       72 GETTABLEKS                       R13 R11 K23 ["Filled"]
       74 SETTABLEKS                       R13 R12 K20 ["variant"]
       76 DUPCLOSURE                       R13 K24 [PROTO_0]
       77 CAPTURE                          VAL R2
       78 CAPTURE                          VAL R7
       79 CAPTURE                          VAL R5
       80 CAPTURE                          VAL R8
       81 CAPTURE                          VAL R9
       82 CAPTURE                          VAL R6
       83 DUPTABLE                         R14 K28 [{"summary", "stories", "controls"}]
       84 LOADK                            R15 K11 ["Tabs"]
       85 SETTABLEKS                       R15 R14 K25 ["summary"]
       87 DUPTABLE                         R15 K31 [{"Basic", "Uncontrolled"}]
       88 DUPTABLE                         R16 K33 [{"name", "story"}]
       89 LOADK                            R17 K29 ["Basic"]
       90 SETTABLEKS                       R17 R16 K19 ["name"]
       92 DUPCLOSURE                       R17 K34 [PROTO_1]
       93 CAPTURE                          VAL R2
       94 CAPTURE                          VAL R7
       95 CAPTURE                          VAL R5
       96 CAPTURE                          VAL R6
       97 CAPTURE                          VAL R12
       98 SETTABLEKS                       R17 R16 K32 ["story"]
      100 SETTABLEKS                       R16 R15 K29 ["Basic"]
      102 DUPTABLE                         R16 K33 [{"name", "story"}]
      103 LOADK                            R17 K35 ["Uncontrolled with nested controlled tabs"]
      104 SETTABLEKS                       R17 R16 K19 ["name"]
      106 DUPCLOSURE                       R17 K36 [PROTO_3]
      107 CAPTURE                          VAL R2
      108 CAPTURE                          VAL R7
      109 CAPTURE                          VAL R5
      110 CAPTURE                          VAL R13
      111 CAPTURE                          VAL R6
      112 CAPTURE                          VAL R12
      113 SETTABLEKS                       R17 R16 K32 ["story"]
      115 SETTABLEKS                       R16 R15 K30 ["Uncontrolled"]
      117 SETTABLEKS                       R15 R14 K26 ["stories"]
      119 DUPTABLE                         R15 K39 [{"size", "fillBehavior"}]
      120 GETTABLEKS                       R16 R3 K40 ["values"]
      122 MOVE                             R17 R8
      123 CALL                             R16 1 1
      124 SETTABLEKS                       R16 R15 K37 ["size"]
      126 GETTABLEKS                       R16 R3 K40 ["values"]
      128 MOVE                             R17 R9
      129 CALL                             R16 1 1
      130 SETTABLEKS                       R16 R15 K38 ["fillBehavior"]
      132 SETTABLEKS                       R15 R14 K27 ["controls"]
      134 RETURN                           R14 1
