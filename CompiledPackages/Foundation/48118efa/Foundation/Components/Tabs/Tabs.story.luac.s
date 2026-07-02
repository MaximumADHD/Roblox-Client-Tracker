PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useState"]
        3 LOADK                            R1 K1 ["1"]
        4 CALL                             R0 1 2
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K2 ["createElement"]
        8 GETUPVAL                         R3 1
        9 DUPTABLE                         R4 K5 [{["tag"] = "col auto-y size-full-0"}]
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R5 R5 K2 ["createElement"]
       13 GETUPVAL                         R6 2
       14 DUPTABLE                         R7 K13 [{["LayoutOrder"] = 1, ["activeTabId"], ["onActivated"], ["tabs"], ["size"], ["fillBehavior"]}]
       15 SETTABLEKS                       R0 R7 K8 ["activeTabId"]
       17 SETTABLEKS                       R1 R7 K9 ["onActivated"]
       19 NEWTABLE                         R8 0 2
       21 DUPTABLE                         R9 K17 [{["id"] = "1", ["text"] = "Nested tab 1"}]
       22 DUPTABLE                         R10 K20 [{["id"] = "2", ["text"] = "Nested tab 2"}]
       23 SETLIST                          R8 R9 2 [1]
       25 SETTABLEKS                       R8 R7 K10 ["tabs"]
       27 GETUPVAL                         R8 3
       28 GETTABLEKS                       R8 R8 K21 ["Medium"]
       30 SETTABLEKS                       R8 R7 K11 ["size"]
       32 GETUPVAL                         R8 4
       33 GETTABLEKS                       R8 R8 K22 ["Fill"]
       35 SETTABLEKS                       R8 R7 K12 ["fillBehavior"]
       37 CALL                             R5 2 1
       38 GETUPVAL                         R6 0
       39 GETTABLEKS                       R6 R6 K2 ["createElement"]
       41 GETUPVAL                         R7 1
       42 DUPTABLE                         R8 K26 [{["LayoutOrder"] = 2, ["tag"] = "size-full-0 auto-y padding-xxlarge", ["Visible"]}]
       43 JUMPIFEQKS                       R0 K1 ["1"] ; [+2]
       45 LOADB                            R9 0 +1
       46 LOADB                            R9 1
       47 SETTABLEKS                       R9 R8 K25 ["Visible"]
       49 GETUPVAL                         R9 0
       50 GETTABLEKS                       R9 R9 K2 ["createElement"]
       52 GETUPVAL                         R10 5
       53 DUPTABLE                         R11 K30 [{["tag"] = "text-align-x-left auto-xy text-wrap", ["Text"] = "Content of nested tab 1"}]
       54 CALL                             R9 2 -1
       55 CALL                             R6 -1 1
       56 GETUPVAL                         R7 0
       57 GETTABLEKS                       R7 R7 K2 ["createElement"]
       59 GETUPVAL                         R8 1
       60 DUPTABLE                         R9 K26 [{["LayoutOrder"] = 2, ["tag"] = "size-full-0 auto-y padding-xxlarge", ["Visible"]}]
       61 JUMPIFEQKS                       R0 K18 ["2"] ; [+2]
       63 LOADB                            R10 0 +1
       64 LOADB                            R10 1
       65 SETTABLEKS                       R10 R9 K25 ["Visible"]
       67 GETUPVAL                         R10 0
       68 GETTABLEKS                       R10 R10 K2 ["createElement"]
       70 GETUPVAL                         R11 5
       71 DUPTABLE                         R12 K32 [{["tag"] = "text-align-x-left auto-xy text-wrap", ["Text"] = "Content of nested tab 2"}]
       72 CALL                             R10 2 -1
       73 CALL                             R7 -1 -1
       74 CALL                             R2 -1 -1
       75 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{["tag"] = "col auto-y size-full-0"}]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K0 ["createElement"]
        8 GETUPVAL                         R5 2
        9 DUPTABLE                         R6 K9 [{["defaultActiveTabId"] = "1", ["tabs"], ["size"], ["fillBehavior"]}]
       10 NEWTABLE                         R7 0 5
       12 DUPTABLE                         R8 K14 [{["id"] = "1", ["text"] = "lll", ["content"]}]
       13 GETUPVAL                         R9 0
       14 GETTABLEKS                       R9 R9 K0 ["createElement"]
       16 GETUPVAL                         R10 1
       17 DUPTABLE                         R11 K16 [{["tag"] = "size-full-0 auto-y padding-xxlarge"}]
       18 GETUPVAL                         R12 0
       19 GETTABLEKS                       R12 R12 K0 ["createElement"]
       21 GETUPVAL                         R13 3
       22 DUPTABLE                         R14 K20 [{["tag"] = "text-align-x-left auto-xy text-wrap", ["Text"] = "You fully controll how content is rendered. No padding or other styles are applied by default"}]
       23 CALL                             R12 2 -1
       24 CALL                             R9 -1 1
       25 SETTABLEKS                       R9 R8 K13 ["content"]
       27 DUPTABLE                         R9 K23 [{["id"] = "2", ["text"] = "A big one", ["content"]}]
       28 GETUPVAL                         R10 0
       29 GETTABLEKS                       R10 R10 K0 ["createElement"]
       31 GETUPVAL                         R11 1
       32 DUPTABLE                         R12 K16 [{["tag"] = "size-full-0 auto-y padding-xxlarge"}]
       33 GETUPVAL                         R13 0
       34 GETTABLEKS                       R13 R13 K0 ["createElement"]
       36 GETUPVAL                         R14 3
       37 DUPTABLE                         R15 K26 [{["tag"] = "text-align-x-left auto-xy", ["Text"] = "The Jurassic ranges from 200 million years to 145 million years ago."}]
       38 CALL                             R13 2 -1
       39 CALL                             R10 -1 1
       40 SETTABLEKS                       R10 R9 K13 ["content"]
       42 DUPTABLE                         R10 K31 [{["id"] = "3", ["text"] = "With builder icon", ["icon"] = "star", ["content"]}]
       43 GETUPVAL                         R11 0
       44 GETTABLEKS                       R11 R11 K0 ["createElement"]
       46 GETUPVAL                         R12 1
       47 DUPTABLE                         R13 K16 [{["tag"] = "size-full-0 auto-y padding-xxlarge"}]
       48 GETUPVAL                         R14 0
       49 GETTABLEKS                       R14 R14 K0 ["createElement"]
       51 GETUPVAL                         R15 3
       52 DUPTABLE                         R16 K33 [{["tag"] = "text-align-x-left auto-xy", ["Text"] = "You are perfect!"}]
       53 CALL                             R14 2 -1
       54 CALL                             R11 -1 1
       55 SETTABLEKS                       R11 R10 K13 ["content"]
       57 DUPTABLE                         R11 K36 [{["id"] = "4", ["text"] = "With filled builder icon", ["icon"], ["content"]}]
       58 GETUPVAL                         R12 4
       59 SETTABLEKS                       R12 R11 K29 ["icon"]
       61 GETUPVAL                         R12 0
       62 GETTABLEKS                       R12 R12 K0 ["createElement"]
       64 GETUPVAL                         R13 1
       65 DUPTABLE                         R14 K16 [{["tag"] = "size-full-0 auto-y padding-xxlarge"}]
       66 GETUPVAL                         R15 0
       67 GETTABLEKS                       R15 R15 K0 ["createElement"]
       69 GETUPVAL                         R16 3
       70 DUPTABLE                         R17 K38 [{["tag"] = "text-align-x-left auto-xy", ["Text"] = "You are still perfect!"}]
       71 CALL                             R15 2 -1
       72 CALL                             R12 -1 1
       73 SETTABLEKS                       R12 R11 K13 ["content"]
       75 DUPTABLE                         R12 K44 [{["id"] = "5", ["text"] = "With icon", ["icon"] = "icons/menu/clothing/limited_on", ["isDisabled"] = True}]
       76 SETLIST                          R7 R8 5 [1]
       78 SETTABLEKS                       R7 R6 K6 ["tabs"]
       80 GETTABLEKS                       R7 R0 K45 ["controls"]
       82 GETTABLEKS                       R7 R7 K7 ["size"]
       84 SETTABLEKS                       R7 R6 K7 ["size"]
       86 GETTABLEKS                       R7 R0 K45 ["controls"]
       88 GETTABLEKS                       R7 R7 K8 ["fillBehavior"]
       90 SETTABLEKS                       R7 R6 K8 ["fillBehavior"]
       92 CALL                             R4 2 -1
       93 CALL                             R1 -1 -1
       94 RETURN                           R1 -1

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
        4 DUPTABLE                         R3 K3 [{["tag"] = "col auto-y size-full-0"}]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K0 ["createElement"]
        8 GETUPVAL                         R5 2
        9 DUPTABLE                         R6 K10 [{["defaultActiveTabId"] = "1", ["onActivated"], ["tabs"], ["size"], ["fillBehavior"]}]
       10 DUPCLOSURE                       R7 K11 [PROTO_2]
       11 SETTABLEKS                       R7 R6 K6 ["onActivated"]
       13 NEWTABLE                         R7 0 5
       15 DUPTABLE                         R8 K16 [{["id"] = "1", ["text"] = "With nested tabs", ["content"]}]
       16 GETUPVAL                         R9 0
       17 GETTABLEKS                       R9 R9 K0 ["createElement"]
       19 GETUPVAL                         R10 3
       20 CALL                             R9 1 1
       21 SETTABLEKS                       R9 R8 K15 ["content"]
       23 DUPTABLE                         R9 K19 [{["id"] = "2", ["text"] = "Regular tab", ["content"]}]
       24 GETUPVAL                         R10 0
       25 GETTABLEKS                       R10 R10 K0 ["createElement"]
       27 GETUPVAL                         R11 1
       28 DUPTABLE                         R12 K21 [{["tag"] = "size-full-0 auto-y padding-xxlarge"}]
       29 GETUPVAL                         R13 0
       30 GETTABLEKS                       R13 R13 K0 ["createElement"]
       32 GETUPVAL                         R14 4
       33 DUPTABLE                         R15 K25 [{["tag"] = "text-align-x-left auto-xy", ["Text"] = "Regular tab content."}]
       34 CALL                             R13 2 -1
       35 CALL                             R10 -1 1
       36 SETTABLEKS                       R10 R9 K15 ["content"]
       38 DUPTABLE                         R10 K30 [{["id"] = "3", ["text"] = "With builder icon", ["icon"] = "star", ["content"]}]
       39 GETUPVAL                         R11 0
       40 GETTABLEKS                       R11 R11 K0 ["createElement"]
       42 GETUPVAL                         R12 1
       43 DUPTABLE                         R13 K21 [{["tag"] = "size-full-0 auto-y padding-xxlarge"}]
       44 GETUPVAL                         R14 0
       45 GETTABLEKS                       R14 R14 K0 ["createElement"]
       47 GETUPVAL                         R15 4
       48 DUPTABLE                         R16 K32 [{["tag"] = "text-align-x-left auto-xy", ["Text"] = "You are perfect!"}]
       49 CALL                             R14 2 -1
       50 CALL                             R11 -1 1
       51 SETTABLEKS                       R11 R10 K15 ["content"]
       53 DUPTABLE                         R11 K35 [{["id"] = "4", ["text"] = "With filled builder icon", ["icon"], ["content"]}]
       54 GETUPVAL                         R12 5
       55 SETTABLEKS                       R12 R11 K28 ["icon"]
       57 GETUPVAL                         R12 0
       58 GETTABLEKS                       R12 R12 K0 ["createElement"]
       60 GETUPVAL                         R13 1
       61 DUPTABLE                         R14 K21 [{["tag"] = "size-full-0 auto-y padding-xxlarge"}]
       62 GETUPVAL                         R15 0
       63 GETTABLEKS                       R15 R15 K0 ["createElement"]
       65 GETUPVAL                         R16 4
       66 DUPTABLE                         R17 K37 [{["tag"] = "text-align-x-left auto-xy", ["Text"] = "You are still perfect!"}]
       67 CALL                             R15 2 -1
       68 CALL                             R12 -1 1
       69 SETTABLEKS                       R12 R11 K15 ["content"]
       71 DUPTABLE                         R12 K43 [{["id"] = "5", ["text"] = "With icon", ["icon"] = "icons/menu/clothing/limited_on", ["isDisabled"] = True, ["content"]}]
       72 GETUPVAL                         R13 0
       73 GETTABLEKS                       R13 R13 K0 ["createElement"]
       75 GETUPVAL                         R14 1
       76 DUPTABLE                         R15 K21 [{["tag"] = "size-full-0 auto-y padding-xxlarge"}]
       77 GETUPVAL                         R16 0
       78 GETTABLEKS                       R16 R16 K0 ["createElement"]
       80 GETUPVAL                         R17 4
       81 DUPTABLE                         R18 K37 [{["tag"] = "text-align-x-left auto-xy", ["Text"] = "You are still perfect!"}]
       82 CALL                             R16 2 -1
       83 CALL                             R13 -1 1
       84 SETTABLEKS                       R13 R12 K15 ["content"]
       86 SETLIST                          R7 R8 5 [1]
       88 SETTABLEKS                       R7 R6 K7 ["tabs"]
       90 GETTABLEKS                       R7 R0 K44 ["controls"]
       92 GETTABLEKS                       R7 R7 K8 ["size"]
       94 SETTABLEKS                       R7 R6 K8 ["size"]
       96 GETTABLEKS                       R7 R0 K44 ["controls"]
       98 GETTABLEKS                       R7 R7 K9 ["fillBehavior"]
      100 SETTABLEKS                       R7 R6 K9 ["fillBehavior"]
      102 CALL                             R4 2 -1
      103 CALL                             R1 -1 -1
      104 RETURN                           R1 -1

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
       14 DUPTABLE                         R6 K5 [{["tag"] = "col auto-y size-full-0"}]
       15 DUPTABLE                         R7 K8 [{"TabsComponent", "CoachmarkComponent"}]
       16 GETUPVAL                         R8 0
       17 GETTABLEKS                       R8 R8 K2 ["createElement"]
       19 GETUPVAL                         R9 2
       20 DUPTABLE                         R10 K16 [{["LayoutOrder"] = 1, ["defaultActiveTabId"] = "hair", ["tabs"], ["size"], ["fillBehavior"]}]
       21 NEWTABLE                         R11 0 3
       23 DUPTABLE                         R12 K22 [{["id"] = "hair", ["text"] = "Hair", ["icon"], ["content"]}]
       24 DUPTABLE                         R13 K26 [{["name"] = "head-male", ["variant"]}]
       25 GETUPVAL                         R14 3
       26 GETTABLEKS                       R14 R14 K27 ["Filled"]
       28 SETTABLEKS                       R14 R13 K25 ["variant"]
       30 SETTABLEKS                       R13 R12 K20 ["icon"]
       32 GETUPVAL                         R13 0
       33 GETTABLEKS                       R13 R13 K2 ["createElement"]
       35 GETUPVAL                         R14 1
       36 DUPTABLE                         R15 K29 [{["tag"] = "size-full-0 auto-y padding-xxlarge"}]
       37 GETUPVAL                         R16 0
       38 GETTABLEKS                       R16 R16 K2 ["createElement"]
       40 GETUPVAL                         R17 4
       41 DUPTABLE                         R18 K33 [{["tag"] = "text-align-x-left auto-xy text-wrap", ["Text"] = "Browse hairstyles for your avatar."}]
       42 CALL                             R16 2 -1
       43 CALL                             R13 -1 1
       44 SETTABLEKS                       R13 R12 K21 ["content"]
       46 DUPTABLE                         R13 K37 [{["id"] = "body", ["text"] = "Body", ["icon"], ["ref"], ["content"]}]
       47 DUPTABLE                         R14 K39 [{["name"] = "torso", ["variant"]}]
       48 GETUPVAL                         R15 3
       49 GETTABLEKS                       R15 R15 K27 ["Filled"]
       51 SETTABLEKS                       R15 R14 K25 ["variant"]
       53 SETTABLEKS                       R14 R13 K20 ["icon"]
       55 SETTABLEKS                       R1 R13 K36 ["ref"]
       57 GETUPVAL                         R14 0
       58 GETTABLEKS                       R14 R14 K2 ["createElement"]
       60 GETUPVAL                         R15 1
       61 DUPTABLE                         R16 K29 [{["tag"] = "size-full-0 auto-y padding-xxlarge"}]
       62 GETUPVAL                         R17 0
       63 GETTABLEKS                       R17 R17 K2 ["createElement"]
       65 GETUPVAL                         R18 4
       66 DUPTABLE                         R19 K41 [{["tag"] = "text-align-x-left auto-xy text-wrap", ["Text"] = "Customize your avatar's body type and proportions."}]
       67 CALL                             R17 2 -1
       68 CALL                             R14 -1 1
       69 SETTABLEKS                       R14 R13 K21 ["content"]
       71 DUPTABLE                         R14 K44 [{["id"] = "accessories", ["text"] = "Accessories", ["icon"], ["content"]}]
       72 DUPTABLE                         R15 K46 [{["name"] = "bow-tie", ["variant"]}]
       73 GETUPVAL                         R16 3
       74 GETTABLEKS                       R16 R16 K27 ["Filled"]
       76 SETTABLEKS                       R16 R15 K25 ["variant"]
       78 SETTABLEKS                       R15 R14 K20 ["icon"]
       80 GETUPVAL                         R15 0
       81 GETTABLEKS                       R15 R15 K2 ["createElement"]
       83 GETUPVAL                         R16 1
       84 DUPTABLE                         R17 K29 [{["tag"] = "size-full-0 auto-y padding-xxlarge"}]
       85 GETUPVAL                         R18 0
       86 GETTABLEKS                       R18 R18 K2 ["createElement"]
       88 GETUPVAL                         R19 4
       89 DUPTABLE                         R20 K48 [{["tag"] = "text-align-x-left auto-xy text-wrap", ["Text"] = "Pick accessories to complete the look!"}]
       90 CALL                             R18 2 -1
       91 CALL                             R15 -1 1
       92 SETTABLEKS                       R15 R14 K21 ["content"]
       94 SETLIST                          R11 R12 3 [1]
       96 SETTABLEKS                       R11 R10 K13 ["tabs"]
       98 GETTABLEKS                       R11 R0 K49 ["controls"]
      100 GETTABLEKS                       R11 R11 K14 ["size"]
      102 SETTABLEKS                       R11 R10 K14 ["size"]
      104 GETTABLEKS                       R11 R0 K49 ["controls"]
      106 GETTABLEKS                       R11 R11 K15 ["fillBehavior"]
      108 SETTABLEKS                       R11 R10 K15 ["fillBehavior"]
      110 CALL                             R8 2 1
      111 SETTABLEKS                       R8 R7 K6 ["TabsComponent"]
      113 GETUPVAL                         R8 0
      114 GETTABLEKS                       R8 R8 K2 ["createElement"]
      116 GETUPVAL                         R9 5
      117 DUPTABLE                         R10 K60 [{["LayoutOrder"] = 2, ["title"] = "Heads have moved here!", ["text"] = "Find all head customization options under Body.", ["isOpen"], ["side"], ["align"], ["anchorRef"], ["onClose"], ["actions"]}]
      118 SETTABLEKS                       R2 R10 K54 ["isOpen"]
      120 GETUPVAL                         R11 6
      121 GETTABLEKS                       R11 R11 K61 ["Bottom"]
      123 SETTABLEKS                       R11 R10 K55 ["side"]
      125 GETUPVAL                         R11 7
      126 GETTABLEKS                       R11 R11 K62 ["Center"]
      128 SETTABLEKS                       R11 R10 K56 ["align"]
      130 SETTABLEKS                       R1 R10 K57 ["anchorRef"]
      132 NEWCLOSURE                       R11 P0
      133 CAPTURE                          VAL R3
      134 SETTABLEKS                       R11 R10 K58 ["onClose"]
      136 NEWTABLE                         R11 0 1
      138 DUPTABLE                         R12 K65 [{["text"] = "Got it!", ["onActivated"], ["variant"]}]
      139 NEWCLOSURE                       R13 P1
      140 CAPTURE                          VAL R3
      141 SETTABLEKS                       R13 R12 K64 ["onActivated"]
      143 GETUPVAL                         R13 8
      144 GETTABLEKS                       R13 R13 K66 ["Emphasis"]
      146 SETTABLEKS                       R13 R12 K25 ["variant"]
      148 SETLIST                          R11 R12 1 [1]
      150 SETTABLEKS                       R11 R10 K59 ["actions"]
      152 CALL                             R8 2 1
      153 SETTABLEKS                       R8 R7 K7 ["CoachmarkComponent"]
      155 CALL                             R4 3 -1
      156 RETURN                           R4 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{["tag"] = "col auto-y size-full-0"}]
        5 DUPTABLE                         R4 K7 [{"First", "TabsComponent", "Last"}]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R5 R5 K0 ["createElement"]
        9 GETUPVAL                         R6 2
       10 DUPTABLE                         R7 K13 [{["LayoutOrder"] = 1, ["Text"] = "I go first!", ["Size"]}]
       11 GETIMPORT                        R8 K16 [UDim2.fromOffset]
       13 LOADN                            R9 50
       14 LOADN                            R10 50
       15 CALL                             R8 2 1
       16 SETTABLEKS                       R8 R7 K12 ["Size"]
       18 CALL                             R5 2 1
       19 SETTABLEKS                       R5 R4 K4 ["First"]
       21 GETUPVAL                         R5 0
       22 GETTABLEKS                       R5 R5 K0 ["createElement"]
       24 GETUPVAL                         R6 3
       25 DUPTABLE                         R7 K23 [{["LayoutOrder"] = 2, ["defaultActiveTabId"] = "hair", ["tabs"], ["size"], ["fillBehavior"]}]
       26 NEWTABLE                         R8 0 2
       28 DUPTABLE                         R9 K29 [{["id"] = "hair", ["text"] = "Hair", ["icon"], ["content"]}]
       29 DUPTABLE                         R10 K33 [{["name"] = "head-male", ["variant"]}]
       30 GETUPVAL                         R11 4
       31 GETTABLEKS                       R11 R11 K34 ["Filled"]
       33 SETTABLEKS                       R11 R10 K32 ["variant"]
       35 SETTABLEKS                       R10 R9 K27 ["icon"]
       37 GETUPVAL                         R10 0
       38 GETTABLEKS                       R10 R10 K0 ["createElement"]
       40 GETUPVAL                         R11 1
       41 DUPTABLE                         R12 K36 [{["tag"] = "size-full-0 auto-y padding-xxlarge"}]
       42 GETUPVAL                         R13 0
       43 GETTABLEKS                       R13 R13 K0 ["createElement"]
       45 GETUPVAL                         R14 2
       46 DUPTABLE                         R15 K39 [{["tag"] = "text-align-x-left auto-xy text-wrap", ["Text"] = "Browse hairstyles for your avatar."}]
       47 CALL                             R13 2 -1
       48 CALL                             R10 -1 1
       49 SETTABLEKS                       R10 R9 K28 ["content"]
       51 DUPTABLE                         R10 K42 [{["id"] = "body", ["text"] = "Body", ["icon"], ["content"]}]
       52 DUPTABLE                         R11 K44 [{["name"] = "torso", ["variant"]}]
       53 GETUPVAL                         R12 4
       54 GETTABLEKS                       R12 R12 K34 ["Filled"]
       56 SETTABLEKS                       R12 R11 K32 ["variant"]
       58 SETTABLEKS                       R11 R10 K27 ["icon"]
       60 GETUPVAL                         R11 0
       61 GETTABLEKS                       R11 R11 K0 ["createElement"]
       63 GETUPVAL                         R12 1
       64 DUPTABLE                         R13 K36 [{["tag"] = "size-full-0 auto-y padding-xxlarge"}]
       65 GETUPVAL                         R14 0
       66 GETTABLEKS                       R14 R14 K0 ["createElement"]
       68 GETUPVAL                         R15 2
       69 DUPTABLE                         R16 K46 [{["tag"] = "text-align-x-left auto-xy text-wrap", ["Text"] = "Customize your avatar's body type and proportions."}]
       70 CALL                             R14 2 -1
       71 CALL                             R11 -1 1
       72 SETTABLEKS                       R11 R10 K28 ["content"]
       74 SETLIST                          R8 R9 2 [1]
       76 SETTABLEKS                       R8 R7 K20 ["tabs"]
       78 GETTABLEKS                       R8 R0 K47 ["controls"]
       80 GETTABLEKS                       R8 R8 K21 ["size"]
       82 SETTABLEKS                       R8 R7 K21 ["size"]
       84 GETTABLEKS                       R8 R0 K47 ["controls"]
       86 GETTABLEKS                       R8 R8 K22 ["fillBehavior"]
       88 SETTABLEKS                       R8 R7 K22 ["fillBehavior"]
       90 CALL                             R5 2 1
       91 SETTABLEKS                       R5 R4 K5 ["TabsComponent"]
       93 GETUPVAL                         R5 0
       94 GETTABLEKS                       R5 R5 K0 ["createElement"]
       96 GETUPVAL                         R6 2
       97 DUPTABLE                         R7 K50 [{["LayoutOrder"] = 3, ["Text"] = "I go last!", ["Size"]}]
       98 GETIMPORT                        R8 K16 [UDim2.fromOffset]
      100 LOADN                            R9 50
      101 LOADN                            R10 50
      102 CALL                             R8 2 1
      103 SETTABLEKS                       R8 R7 K12 ["Size"]
      105 CALL                             R5 2 1
      106 SETTABLEKS                       R5 R4 K6 ["Last"]
      108 CALL                             R1 3 -1
      109 RETURN                           R1 -1

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
       96 DUPTABLE                         R16 K26 [{["name"] = "star", ["variant"]}]
       97 GETTABLEKS                       R17 R15 K27 ["Filled"]
       99 SETTABLEKS                       R17 R16 K25 ["variant"]
      101 DUPCLOSURE                       R17 K28 [PROTO_0]
      102 CAPTURE                          VAL R3
      103 CAPTURE                          VAL R13
      104 CAPTURE                          VAL R10
      105 CAPTURE                          VAL R7
      106 CAPTURE                          VAL R6
      107 CAPTURE                          VAL R11
      108 DUPTABLE                         R18 K32 [{["summary"] = "Tabs", ["stories"], ["controls"]}]
      109 DUPTABLE                         R19 K37 [{"Basic", "Uncontrolled", "WithCoachmark", "AsChild"}]
      110 DUPTABLE                         R20 K39 [{["name"] = "Basic", ["story"]}]
      111 DUPCLOSURE                       R21 K40 [PROTO_1]
      112 CAPTURE                          VAL R3
      113 CAPTURE                          VAL R13
      114 CAPTURE                          VAL R10
      115 CAPTURE                          VAL R11
      116 CAPTURE                          VAL R16
      117 SETTABLEKS                       R21 R20 K38 ["story"]
      119 SETTABLEKS                       R20 R19 K33 ["Basic"]
      121 DUPTABLE                         R20 K42 [{["name"] = "Uncontrolled with nested controlled tabs", ["story"]}]
      122 DUPCLOSURE                       R21 K43 [PROTO_3]
      123 CAPTURE                          VAL R3
      124 CAPTURE                          VAL R13
      125 CAPTURE                          VAL R10
      126 CAPTURE                          VAL R17
      127 CAPTURE                          VAL R11
      128 CAPTURE                          VAL R16
      129 SETTABLEKS                       R21 R20 K38 ["story"]
      131 SETTABLEKS                       R20 R19 K34 ["Uncontrolled"]
      133 DUPTABLE                         R20 K45 [{["name"] = "With Coachmark", ["story"]}]
      134 DUPCLOSURE                       R21 K46 [PROTO_6]
      135 CAPTURE                          VAL R3
      136 CAPTURE                          VAL R13
      137 CAPTURE                          VAL R10
      138 CAPTURE                          VAL R15
      139 CAPTURE                          VAL R11
      140 CAPTURE                          VAL R5
      141 CAPTURE                          VAL R9
      142 CAPTURE                          VAL R8
      143 CAPTURE                          VAL R4
      144 SETTABLEKS                       R21 R20 K38 ["story"]
      146 SETTABLEKS                       R20 R19 K35 ["WithCoachmark"]
      148 DUPTABLE                         R20 K48 [{["name"] = "As Child", ["story"]}]
      149 DUPCLOSURE                       R21 K49 [PROTO_7]
      150 CAPTURE                          VAL R3
      151 CAPTURE                          VAL R13
      152 CAPTURE                          VAL R11
      153 CAPTURE                          VAL R10
      154 CAPTURE                          VAL R15
      155 SETTABLEKS                       R21 R20 K38 ["story"]
      157 SETTABLEKS                       R20 R19 K36 ["AsChild"]
      159 SETTABLEKS                       R19 R18 K30 ["stories"]
      161 DUPTABLE                         R19 K52 [{"size", "fillBehavior"}]
      162 GETTABLEKS                       R20 R2 K53 ["values"]
      164 MOVE                             R21 R7
      165 CALL                             R20 1 1
      166 SETTABLEKS                       R20 R19 K50 ["size"]
      168 GETTABLEKS                       R20 R2 K53 ["values"]
      170 MOVE                             R21 R6
      171 CALL                             R20 1 1
      172 SETTABLEKS                       R20 R19 K51 ["fillBehavior"]
      174 SETTABLEKS                       R19 R18 K31 ["controls"]
      176 RETURN                           R18 1
