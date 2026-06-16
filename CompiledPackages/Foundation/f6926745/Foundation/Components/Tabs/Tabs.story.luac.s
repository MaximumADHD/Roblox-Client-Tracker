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
       64 LOADK                            R9 K23 ["size-full-0 auto-y padding-xxlarge"]
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
       94 LOADK                            R10 K23 ["size-full-0 auto-y padding-xxlarge"]
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
       30 LOADK                            R12 K15 ["size-full-0 auto-y padding-xxlarge"]
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
       60 LOADK                            R13 K15 ["size-full-0 auto-y padding-xxlarge"]
       61 SETTABLEKS                       R13 R12 K1 ["tag"]
       63 GETUPVAL                         R13 0
       64 GETTABLEKS                       R13 R13 K0 ["createElement"]
       66 GETUPVAL                         R14 3
       67 DUPTABLE                         R15 K17 [{"tag", "Text"}]
       68 LOADK                            R16 K22 ["text-align-x-left auto-xy"]
       69 SETTABLEKS                       R16 R15 K1 ["tag"]
       71 LOADK                            R16 K23 ["The Jurassic ranges from 200 million years to 145 million years ago."]
       72 SETTABLEKS                       R16 R15 K16 ["Text"]
       74 CALL                             R13 2 -1
       75 CALL                             R10 -1 1
       76 SETTABLEKS                       R10 R9 K12 ["content"]
       78 DUPTABLE                         R10 K25 [{"id", "text", "icon", "content"}]
       79 LOADK                            R11 K26 ["3"]
       80 SETTABLEKS                       R11 R10 K10 ["id"]
       82 LOADK                            R11 K27 ["With builder icon"]
       83 SETTABLEKS                       R11 R10 K11 ["text"]
       85 LOADK                            R11 K28 ["star"]
       86 SETTABLEKS                       R11 R10 K24 ["icon"]
       88 GETUPVAL                         R11 0
       89 GETTABLEKS                       R11 R11 K0 ["createElement"]
       91 GETUPVAL                         R12 1
       92 DUPTABLE                         R13 K2 [{"tag"}]
       93 LOADK                            R14 K15 ["size-full-0 auto-y padding-xxlarge"]
       94 SETTABLEKS                       R14 R13 K1 ["tag"]
       96 GETUPVAL                         R14 0
       97 GETTABLEKS                       R14 R14 K0 ["createElement"]
       99 GETUPVAL                         R15 3
      100 DUPTABLE                         R16 K17 [{"tag", "Text"}]
      101 LOADK                            R17 K22 ["text-align-x-left auto-xy"]
      102 SETTABLEKS                       R17 R16 K1 ["tag"]
      104 LOADK                            R17 K29 ["You are perfect!"]
      105 SETTABLEKS                       R17 R16 K16 ["Text"]
      107 CALL                             R14 2 -1
      108 CALL                             R11 -1 1
      109 SETTABLEKS                       R11 R10 K12 ["content"]
      111 DUPTABLE                         R11 K25 [{"id", "text", "icon", "content"}]
      112 LOADK                            R12 K30 ["4"]
      113 SETTABLEKS                       R12 R11 K10 ["id"]
      115 LOADK                            R12 K31 ["With filled builder icon"]
      116 SETTABLEKS                       R12 R11 K11 ["text"]
      118 GETUPVAL                         R12 4
      119 SETTABLEKS                       R12 R11 K24 ["icon"]
      121 GETUPVAL                         R12 0
      122 GETTABLEKS                       R12 R12 K0 ["createElement"]
      124 GETUPVAL                         R13 1
      125 DUPTABLE                         R14 K2 [{"tag"}]
      126 LOADK                            R15 K15 ["size-full-0 auto-y padding-xxlarge"]
      127 SETTABLEKS                       R15 R14 K1 ["tag"]
      129 GETUPVAL                         R15 0
      130 GETTABLEKS                       R15 R15 K0 ["createElement"]
      132 GETUPVAL                         R16 3
      133 DUPTABLE                         R17 K17 [{"tag", "Text"}]
      134 LOADK                            R18 K22 ["text-align-x-left auto-xy"]
      135 SETTABLEKS                       R18 R17 K1 ["tag"]
      137 LOADK                            R18 K32 ["You are still perfect!"]
      138 SETTABLEKS                       R18 R17 K16 ["Text"]
      140 CALL                             R15 2 -1
      141 CALL                             R12 -1 1
      142 SETTABLEKS                       R12 R11 K12 ["content"]
      144 DUPTABLE                         R12 K34 [{"id", "text", "icon", "isDisabled"}]
      145 LOADK                            R13 K35 ["5"]
      146 SETTABLEKS                       R13 R12 K10 ["id"]
      148 LOADK                            R13 K36 ["With icon"]
      149 SETTABLEKS                       R13 R12 K11 ["text"]
      151 LOADK                            R13 K37 ["icons/menu/clothing/limited_on"]
      152 SETTABLEKS                       R13 R12 K24 ["icon"]
      154 LOADB                            R13 1
      155 SETTABLEKS                       R13 R12 K33 ["isDisabled"]
      157 SETLIST                          R7 R8 5 [1]
      159 SETTABLEKS                       R7 R6 K5 ["tabs"]
      161 GETTABLEKS                       R7 R0 K38 ["controls"]
      163 GETTABLEKS                       R7 R7 K6 ["size"]
      165 SETTABLEKS                       R7 R6 K6 ["size"]
      167 GETTABLEKS                       R7 R0 K38 ["controls"]
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
       47 LOADK                            R13 K19 ["size-full-0 auto-y padding-xxlarge"]
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
       80 LOADK                            R14 K19 ["size-full-0 auto-y padding-xxlarge"]
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
      113 LOADK                            R15 K19 ["size-full-0 auto-y padding-xxlarge"]
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
      149 LOADK                            R16 K19 ["size-full-0 auto-y padding-xxlarge"]
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

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useRef"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["useState"]
        8 LOADB                            R3 1
        9 CALL                             R2 1 2
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K2 ["createElement"]
       13 GETUPVAL                         R5 1
       14 DUPTABLE                         R6 K4 [{"tag"}]
       15 LOADK                            R7 K5 ["col auto-y size-full-0"]
       16 SETTABLEKS                       R7 R6 K3 ["tag"]
       18 DUPTABLE                         R7 K8 [{"TabsComponent", "CoachmarkComponent"}]
       19 GETUPVAL                         R8 0
       20 GETTABLEKS                       R8 R8 K2 ["createElement"]
       22 GETUPVAL                         R9 2
       23 DUPTABLE                         R10 K14 [{"LayoutOrder", "defaultActiveTabId", "tabs", "size", "fillBehavior"}]
       24 LOADN                            R11 1
       25 SETTABLEKS                       R11 R10 K9 ["LayoutOrder"]
       27 LOADK                            R11 K15 ["hair"]
       28 SETTABLEKS                       R11 R10 K10 ["defaultActiveTabId"]
       30 NEWTABLE                         R11 0 3
       32 DUPTABLE                         R12 K20 [{"id", "text", "icon", "content"}]
       33 LOADK                            R13 K15 ["hair"]
       34 SETTABLEKS                       R13 R12 K16 ["id"]
       36 LOADK                            R13 K21 ["Hair"]
       37 SETTABLEKS                       R13 R12 K17 ["text"]
       39 DUPTABLE                         R13 K24 [{"name", "variant"}]
       40 LOADK                            R14 K25 ["head-male"]
       41 SETTABLEKS                       R14 R13 K22 ["name"]
       43 GETUPVAL                         R14 3
       44 GETTABLEKS                       R14 R14 K26 ["Filled"]
       46 SETTABLEKS                       R14 R13 K23 ["variant"]
       48 SETTABLEKS                       R13 R12 K18 ["icon"]
       50 GETUPVAL                         R13 0
       51 GETTABLEKS                       R13 R13 K2 ["createElement"]
       53 GETUPVAL                         R14 1
       54 DUPTABLE                         R15 K4 [{"tag"}]
       55 LOADK                            R16 K27 ["size-full-0 auto-y padding-xxlarge"]
       56 SETTABLEKS                       R16 R15 K3 ["tag"]
       58 GETUPVAL                         R16 0
       59 GETTABLEKS                       R16 R16 K2 ["createElement"]
       61 GETUPVAL                         R17 4
       62 DUPTABLE                         R18 K29 [{"tag", "Text"}]
       63 LOADK                            R19 K30 ["text-align-x-left auto-xy text-wrap"]
       64 SETTABLEKS                       R19 R18 K3 ["tag"]
       66 LOADK                            R19 K31 ["Browse hairstyles for your avatar."]
       67 SETTABLEKS                       R19 R18 K28 ["Text"]
       69 CALL                             R16 2 -1
       70 CALL                             R13 -1 1
       71 SETTABLEKS                       R13 R12 K19 ["content"]
       73 DUPTABLE                         R13 K33 [{"id", "text", "icon", "ref", "content"}]
       74 LOADK                            R14 K34 ["body"]
       75 SETTABLEKS                       R14 R13 K16 ["id"]
       77 LOADK                            R14 K35 ["Body"]
       78 SETTABLEKS                       R14 R13 K17 ["text"]
       80 DUPTABLE                         R14 K24 [{"name", "variant"}]
       81 LOADK                            R15 K36 ["torso"]
       82 SETTABLEKS                       R15 R14 K22 ["name"]
       84 GETUPVAL                         R15 3
       85 GETTABLEKS                       R15 R15 K26 ["Filled"]
       87 SETTABLEKS                       R15 R14 K23 ["variant"]
       89 SETTABLEKS                       R14 R13 K18 ["icon"]
       91 SETTABLEKS                       R1 R13 K32 ["ref"]
       93 GETUPVAL                         R14 0
       94 GETTABLEKS                       R14 R14 K2 ["createElement"]
       96 GETUPVAL                         R15 1
       97 DUPTABLE                         R16 K4 [{"tag"}]
       98 LOADK                            R17 K27 ["size-full-0 auto-y padding-xxlarge"]
       99 SETTABLEKS                       R17 R16 K3 ["tag"]
      101 GETUPVAL                         R17 0
      102 GETTABLEKS                       R17 R17 K2 ["createElement"]
      104 GETUPVAL                         R18 4
      105 DUPTABLE                         R19 K29 [{"tag", "Text"}]
      106 LOADK                            R20 K30 ["text-align-x-left auto-xy text-wrap"]
      107 SETTABLEKS                       R20 R19 K3 ["tag"]
      109 LOADK                            R20 K37 ["Customize your avatar's body type and proportions."]
      110 SETTABLEKS                       R20 R19 K28 ["Text"]
      112 CALL                             R17 2 -1
      113 CALL                             R14 -1 1
      114 SETTABLEKS                       R14 R13 K19 ["content"]
      116 DUPTABLE                         R14 K20 [{"id", "text", "icon", "content"}]
      117 LOADK                            R15 K38 ["accessories"]
      118 SETTABLEKS                       R15 R14 K16 ["id"]
      120 LOADK                            R15 K39 ["Accessories"]
      121 SETTABLEKS                       R15 R14 K17 ["text"]
      123 DUPTABLE                         R15 K24 [{"name", "variant"}]
      124 LOADK                            R16 K40 ["bow-tie"]
      125 SETTABLEKS                       R16 R15 K22 ["name"]
      127 GETUPVAL                         R16 3
      128 GETTABLEKS                       R16 R16 K26 ["Filled"]
      130 SETTABLEKS                       R16 R15 K23 ["variant"]
      132 SETTABLEKS                       R15 R14 K18 ["icon"]
      134 GETUPVAL                         R15 0
      135 GETTABLEKS                       R15 R15 K2 ["createElement"]
      137 GETUPVAL                         R16 1
      138 DUPTABLE                         R17 K4 [{"tag"}]
      139 LOADK                            R18 K27 ["size-full-0 auto-y padding-xxlarge"]
      140 SETTABLEKS                       R18 R17 K3 ["tag"]
      142 GETUPVAL                         R18 0
      143 GETTABLEKS                       R18 R18 K2 ["createElement"]
      145 GETUPVAL                         R19 4
      146 DUPTABLE                         R20 K29 [{"tag", "Text"}]
      147 LOADK                            R21 K30 ["text-align-x-left auto-xy text-wrap"]
      148 SETTABLEKS                       R21 R20 K3 ["tag"]
      150 LOADK                            R21 K41 ["Pick accessories to complete the look!"]
      151 SETTABLEKS                       R21 R20 K28 ["Text"]
      153 CALL                             R18 2 -1
      154 CALL                             R15 -1 1
      155 SETTABLEKS                       R15 R14 K19 ["content"]
      157 SETLIST                          R11 R12 3 [1]
      159 SETTABLEKS                       R11 R10 K11 ["tabs"]
      161 GETTABLEKS                       R11 R0 K42 ["controls"]
      163 GETTABLEKS                       R11 R11 K12 ["size"]
      165 SETTABLEKS                       R11 R10 K12 ["size"]
      167 GETTABLEKS                       R11 R0 K42 ["controls"]
      169 GETTABLEKS                       R11 R11 K13 ["fillBehavior"]
      171 SETTABLEKS                       R11 R10 K13 ["fillBehavior"]
      173 CALL                             R8 2 1
      174 SETTABLEKS                       R8 R7 K6 ["TabsComponent"]
      176 GETUPVAL                         R8 0
      177 GETTABLEKS                       R8 R8 K2 ["createElement"]
      179 GETUPVAL                         R9 5
      180 DUPTABLE                         R10 K50 [{"LayoutOrder", "title", "text", "isOpen", "side", "align", "anchorRef", "onClose", "actions"}]
      181 LOADN                            R11 2
      182 SETTABLEKS                       R11 R10 K9 ["LayoutOrder"]
      184 LOADK                            R11 K51 ["Heads have moved here!"]
      185 SETTABLEKS                       R11 R10 K43 ["title"]
      187 LOADK                            R11 K52 ["Find all head customization options under Body."]
      188 SETTABLEKS                       R11 R10 K17 ["text"]
      190 SETTABLEKS                       R2 R10 K44 ["isOpen"]
      192 GETUPVAL                         R11 6
      193 GETTABLEKS                       R11 R11 K53 ["Bottom"]
      195 SETTABLEKS                       R11 R10 K45 ["side"]
      197 GETUPVAL                         R11 7
      198 GETTABLEKS                       R11 R11 K54 ["Center"]
      200 SETTABLEKS                       R11 R10 K46 ["align"]
      202 SETTABLEKS                       R1 R10 K47 ["anchorRef"]
      204 NEWCLOSURE                       R11 P0
      205 CAPTURE                          VAL R3
      206 SETTABLEKS                       R11 R10 K48 ["onClose"]
      208 NEWTABLE                         R11 0 1
      210 DUPTABLE                         R12 K56 [{"text", "onActivated", "variant"}]
      211 LOADK                            R13 K57 ["Got it!"]
      212 SETTABLEKS                       R13 R12 K17 ["text"]
      214 NEWCLOSURE                       R13 P1
      215 CAPTURE                          VAL R3
      216 SETTABLEKS                       R13 R12 K55 ["onActivated"]
      218 GETUPVAL                         R13 8
      219 GETTABLEKS                       R13 R13 K58 ["Emphasis"]
      221 SETTABLEKS                       R13 R12 K23 ["variant"]
      223 SETLIST                          R11 R12 1 [1]
      225 SETTABLEKS                       R11 R10 K49 ["actions"]
      227 CALL                             R8 2 1
      228 SETTABLEKS                       R8 R7 K7 ["CoachmarkComponent"]
      230 CALL                             R4 3 -1
      231 RETURN                           R4 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K2 [{"tag"}]
        5 LOADK                            R4 K3 ["col auto-y size-full-0"]
        6 SETTABLEKS                       R4 R3 K1 ["tag"]
        8 DUPTABLE                         R4 K7 [{"First", "TabsComponent", "Last"}]
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R5 R5 K0 ["createElement"]
       12 GETUPVAL                         R6 2
       13 DUPTABLE                         R7 K11 [{"LayoutOrder", "Text", "Size"}]
       14 LOADN                            R8 1
       15 SETTABLEKS                       R8 R7 K8 ["LayoutOrder"]
       17 LOADK                            R8 K12 ["I go first!"]
       18 SETTABLEKS                       R8 R7 K9 ["Text"]
       20 GETIMPORT                        R8 K15 [UDim2.fromOffset]
       22 LOADN                            R9 50
       23 LOADN                            R10 50
       24 CALL                             R8 2 1
       25 SETTABLEKS                       R8 R7 K10 ["Size"]
       27 CALL                             R5 2 1
       28 SETTABLEKS                       R5 R4 K4 ["First"]
       30 GETUPVAL                         R5 0
       31 GETTABLEKS                       R5 R5 K0 ["createElement"]
       33 GETUPVAL                         R6 3
       34 DUPTABLE                         R7 K20 [{"LayoutOrder", "defaultActiveTabId", "tabs", "size", "fillBehavior"}]
       35 LOADN                            R8 2
       36 SETTABLEKS                       R8 R7 K8 ["LayoutOrder"]
       38 LOADK                            R8 K21 ["hair"]
       39 SETTABLEKS                       R8 R7 K16 ["defaultActiveTabId"]
       41 NEWTABLE                         R8 0 2
       43 DUPTABLE                         R9 K26 [{"id", "text", "icon", "content"}]
       44 LOADK                            R10 K21 ["hair"]
       45 SETTABLEKS                       R10 R9 K22 ["id"]
       47 LOADK                            R10 K27 ["Hair"]
       48 SETTABLEKS                       R10 R9 K23 ["text"]
       50 DUPTABLE                         R10 K30 [{"name", "variant"}]
       51 LOADK                            R11 K31 ["head-male"]
       52 SETTABLEKS                       R11 R10 K28 ["name"]
       54 GETUPVAL                         R11 4
       55 GETTABLEKS                       R11 R11 K32 ["Filled"]
       57 SETTABLEKS                       R11 R10 K29 ["variant"]
       59 SETTABLEKS                       R10 R9 K24 ["icon"]
       61 GETUPVAL                         R10 0
       62 GETTABLEKS                       R10 R10 K0 ["createElement"]
       64 GETUPVAL                         R11 1
       65 DUPTABLE                         R12 K2 [{"tag"}]
       66 LOADK                            R13 K33 ["size-full-0 auto-y padding-xxlarge"]
       67 SETTABLEKS                       R13 R12 K1 ["tag"]
       69 GETUPVAL                         R13 0
       70 GETTABLEKS                       R13 R13 K0 ["createElement"]
       72 GETUPVAL                         R14 2
       73 DUPTABLE                         R15 K34 [{"tag", "Text"}]
       74 LOADK                            R16 K35 ["text-align-x-left auto-xy text-wrap"]
       75 SETTABLEKS                       R16 R15 K1 ["tag"]
       77 LOADK                            R16 K36 ["Browse hairstyles for your avatar."]
       78 SETTABLEKS                       R16 R15 K9 ["Text"]
       80 CALL                             R13 2 -1
       81 CALL                             R10 -1 1
       82 SETTABLEKS                       R10 R9 K25 ["content"]
       84 DUPTABLE                         R10 K26 [{"id", "text", "icon", "content"}]
       85 LOADK                            R11 K37 ["body"]
       86 SETTABLEKS                       R11 R10 K22 ["id"]
       88 LOADK                            R11 K38 ["Body"]
       89 SETTABLEKS                       R11 R10 K23 ["text"]
       91 DUPTABLE                         R11 K30 [{"name", "variant"}]
       92 LOADK                            R12 K39 ["torso"]
       93 SETTABLEKS                       R12 R11 K28 ["name"]
       95 GETUPVAL                         R12 4
       96 GETTABLEKS                       R12 R12 K32 ["Filled"]
       98 SETTABLEKS                       R12 R11 K29 ["variant"]
      100 SETTABLEKS                       R11 R10 K24 ["icon"]
      102 GETUPVAL                         R11 0
      103 GETTABLEKS                       R11 R11 K0 ["createElement"]
      105 GETUPVAL                         R12 1
      106 DUPTABLE                         R13 K2 [{"tag"}]
      107 LOADK                            R14 K33 ["size-full-0 auto-y padding-xxlarge"]
      108 SETTABLEKS                       R14 R13 K1 ["tag"]
      110 GETUPVAL                         R14 0
      111 GETTABLEKS                       R14 R14 K0 ["createElement"]
      113 GETUPVAL                         R15 2
      114 DUPTABLE                         R16 K34 [{"tag", "Text"}]
      115 LOADK                            R17 K35 ["text-align-x-left auto-xy text-wrap"]
      116 SETTABLEKS                       R17 R16 K1 ["tag"]
      118 LOADK                            R17 K40 ["Customize your avatar's body type and proportions."]
      119 SETTABLEKS                       R17 R16 K9 ["Text"]
      121 CALL                             R14 2 -1
      122 CALL                             R11 -1 1
      123 SETTABLEKS                       R11 R10 K25 ["content"]
      125 SETLIST                          R8 R9 2 [1]
      127 SETTABLEKS                       R8 R7 K17 ["tabs"]
      129 GETTABLEKS                       R8 R0 K41 ["controls"]
      131 GETTABLEKS                       R8 R8 K18 ["size"]
      133 SETTABLEKS                       R8 R7 K18 ["size"]
      135 GETTABLEKS                       R8 R0 K41 ["controls"]
      137 GETTABLEKS                       R8 R8 K19 ["fillBehavior"]
      139 SETTABLEKS                       R8 R7 K19 ["fillBehavior"]
      141 CALL                             R5 2 1
      142 SETTABLEKS                       R5 R4 K5 ["TabsComponent"]
      144 GETUPVAL                         R5 0
      145 GETTABLEKS                       R5 R5 K0 ["createElement"]
      147 GETUPVAL                         R6 2
      148 DUPTABLE                         R7 K11 [{"LayoutOrder", "Text", "Size"}]
      149 LOADN                            R8 3
      150 SETTABLEKS                       R8 R7 K8 ["LayoutOrder"]
      152 LOADK                            R8 K42 ["I go last!"]
      153 SETTABLEKS                       R8 R7 K9 ["Text"]
      155 GETIMPORT                        R8 K15 [UDim2.fromOffset]
      157 LOADN                            R9 50
      158 LOADN                            R10 50
      159 CALL                             R8 2 1
      160 SETTABLEKS                       R8 R7 K10 ["Size"]
      162 CALL                             R5 2 1
      163 SETTABLEKS                       R5 R4 K6 ["Last"]
      165 CALL                             R1 3 -1
      166 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Dash"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Enums"]
       23 GETTABLEKS                       R5 R5 K10 ["ButtonVariant"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K11 ["Components"]
       30 GETTABLEKS                       R6 R6 K12 ["Coachmark"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K9 ["Enums"]
       37 GETTABLEKS                       R7 R7 K13 ["FillBehavior"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K9 ["Enums"]
       44 GETTABLEKS                       R8 R8 K14 ["InputSize"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R0 K9 ["Enums"]
       51 GETTABLEKS                       R9 R9 K15 ["PopoverAlign"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R10 R0 K9 ["Enums"]
       58 GETTABLEKS                       R10 R10 K16 ["PopoverSide"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K6 [require]
       63 GETTABLEKS                       R11 R0 K11 ["Components"]
       65 GETTABLEKS                       R11 R11 K17 ["Tabs"]
       67 CALL                             R10 1 1
       68 GETIMPORT                        R11 K6 [require]
       70 GETTABLEKS                       R12 R0 K11 ["Components"]
       72 GETTABLEKS                       R12 R12 K18 ["Text"]
       74 CALL                             R11 1 1
       75 GETIMPORT                        R12 K6 [require]
       77 GETTABLEKS                       R13 R0 K11 ["Components"]
       79 GETTABLEKS                       R13 R13 K19 ["Types"]
       81 CALL                             R12 1 1
       82 GETIMPORT                        R13 K6 [require]
       84 GETTABLEKS                       R14 R0 K11 ["Components"]
       86 GETTABLEKS                       R14 R14 K20 ["View"]
       88 CALL                             R13 1 1
       89 GETIMPORT                        R14 K6 [require]
       91 GETTABLEKS                       R15 R1 K21 ["BuilderIcons"]
       93 CALL                             R14 1 1
       94 GETTABLEKS                       R15 R14 K22 ["IconVariant"]
       96 DUPTABLE                         R16 K25 [{"name", "variant"}]
       97 LOADK                            R17 K26 ["star"]
       98 SETTABLEKS                       R17 R16 K23 ["name"]
      100 GETTABLEKS                       R17 R15 K27 ["Filled"]
      102 SETTABLEKS                       R17 R16 K24 ["variant"]
      104 DUPCLOSURE                       R17 K28 [PROTO_0]
      105 CAPTURE                          VAL R3
      106 CAPTURE                          VAL R13
      107 CAPTURE                          VAL R10
      108 CAPTURE                          VAL R7
      109 CAPTURE                          VAL R6
      110 CAPTURE                          VAL R11
      111 DUPTABLE                         R18 K32 [{"summary", "stories", "controls"}]
      112 LOADK                            R19 K17 ["Tabs"]
      113 SETTABLEKS                       R19 R18 K29 ["summary"]
      115 DUPTABLE                         R19 K37 [{"Basic", "Uncontrolled", "WithCoachmark", "AsChild"}]
      116 DUPTABLE                         R20 K39 [{"name", "story"}]
      117 LOADK                            R21 K33 ["Basic"]
      118 SETTABLEKS                       R21 R20 K23 ["name"]
      120 DUPCLOSURE                       R21 K40 [PROTO_1]
      121 CAPTURE                          VAL R3
      122 CAPTURE                          VAL R13
      123 CAPTURE                          VAL R10
      124 CAPTURE                          VAL R11
      125 CAPTURE                          VAL R16
      126 SETTABLEKS                       R21 R20 K38 ["story"]
      128 SETTABLEKS                       R20 R19 K33 ["Basic"]
      130 DUPTABLE                         R20 K39 [{"name", "story"}]
      131 LOADK                            R21 K41 ["Uncontrolled with nested controlled tabs"]
      132 SETTABLEKS                       R21 R20 K23 ["name"]
      134 DUPCLOSURE                       R21 K42 [PROTO_3]
      135 CAPTURE                          VAL R3
      136 CAPTURE                          VAL R13
      137 CAPTURE                          VAL R10
      138 CAPTURE                          VAL R17
      139 CAPTURE                          VAL R11
      140 CAPTURE                          VAL R16
      141 SETTABLEKS                       R21 R20 K38 ["story"]
      143 SETTABLEKS                       R20 R19 K34 ["Uncontrolled"]
      145 DUPTABLE                         R20 K39 [{"name", "story"}]
      146 LOADK                            R21 K43 ["With Coachmark"]
      147 SETTABLEKS                       R21 R20 K23 ["name"]
      149 DUPCLOSURE                       R21 K44 [PROTO_6]
      150 CAPTURE                          VAL R3
      151 CAPTURE                          VAL R13
      152 CAPTURE                          VAL R10
      153 CAPTURE                          VAL R15
      154 CAPTURE                          VAL R11
      155 CAPTURE                          VAL R5
      156 CAPTURE                          VAL R9
      157 CAPTURE                          VAL R8
      158 CAPTURE                          VAL R4
      159 SETTABLEKS                       R21 R20 K38 ["story"]
      161 SETTABLEKS                       R20 R19 K35 ["WithCoachmark"]
      163 DUPTABLE                         R20 K39 [{"name", "story"}]
      164 LOADK                            R21 K45 ["As Child"]
      165 SETTABLEKS                       R21 R20 K23 ["name"]
      167 DUPCLOSURE                       R21 K46 [PROTO_7]
      168 CAPTURE                          VAL R3
      169 CAPTURE                          VAL R13
      170 CAPTURE                          VAL R11
      171 CAPTURE                          VAL R10
      172 CAPTURE                          VAL R15
      173 SETTABLEKS                       R21 R20 K38 ["story"]
      175 SETTABLEKS                       R20 R19 K36 ["AsChild"]
      177 SETTABLEKS                       R19 R18 K30 ["stories"]
      179 DUPTABLE                         R19 K49 [{"size", "fillBehavior"}]
      180 GETTABLEKS                       R20 R2 K50 ["values"]
      182 MOVE                             R21 R7
      183 CALL                             R20 1 1
      184 SETTABLEKS                       R20 R19 K47 ["size"]
      186 GETTABLEKS                       R20 R2 K50 ["values"]
      188 MOVE                             R21 R6
      189 CALL                             R20 1 1
      190 SETTABLEKS                       R20 R19 K48 ["fillBehavior"]
      192 SETTABLEKS                       R19 R18 K31 ["controls"]
      194 RETURN                           R18 1
