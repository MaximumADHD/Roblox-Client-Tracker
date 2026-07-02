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
       42 DUPTABLE                         R8 K26 [{["LayoutOrder"] = 2, ["tag"] = "auto-y size-full-0", ["Visible"]}]
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
       60 DUPTABLE                         R9 K26 [{["LayoutOrder"] = 2, ["tag"] = "auto-y size-full-0", ["Visible"]}]
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
       17 DUPTABLE                         R11 K16 [{["tag"] = "auto-y size-full-0"}]
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
       32 DUPTABLE                         R12 K25 [{["tag"] = "padding-xxlarge auto-y size-full-0"}]
       33 GETUPVAL                         R13 0
       34 GETTABLEKS                       R13 R13 K0 ["createElement"]
       36 GETUPVAL                         R14 3
       37 DUPTABLE                         R15 K28 [{["tag"] = "text-align-x-left auto-xy", ["Text"] = "The Jurassic ranges from 200 million years to 145 million years ago."}]
       38 CALL                             R13 2 -1
       39 CALL                             R10 -1 1
       40 SETTABLEKS                       R10 R9 K13 ["content"]
       42 DUPTABLE                         R10 K33 [{["id"] = "3", ["text"] = "With builder icon", ["icon"] = "star", ["content"]}]
       43 GETUPVAL                         R11 0
       44 GETTABLEKS                       R11 R11 K0 ["createElement"]
       46 GETUPVAL                         R12 1
       47 DUPTABLE                         R13 K25 [{["tag"] = "padding-xxlarge auto-y size-full-0"}]
       48 GETUPVAL                         R14 0
       49 GETTABLEKS                       R14 R14 K0 ["createElement"]
       51 GETUPVAL                         R15 3
       52 DUPTABLE                         R16 K35 [{["tag"] = "text-align-x-left auto-xy", ["Text"] = "You are perfect!"}]
       53 CALL                             R14 2 -1
       54 CALL                             R11 -1 1
       55 SETTABLEKS                       R11 R10 K13 ["content"]
       57 DUPTABLE                         R11 K38 [{["id"] = "4", ["text"] = "With filled builder icon", ["icon"], ["content"]}]
       58 GETUPVAL                         R12 4
       59 SETTABLEKS                       R12 R11 K31 ["icon"]
       61 GETUPVAL                         R12 0
       62 GETTABLEKS                       R12 R12 K0 ["createElement"]
       64 GETUPVAL                         R13 1
       65 DUPTABLE                         R14 K25 [{["tag"] = "padding-xxlarge auto-y size-full-0"}]
       66 GETUPVAL                         R15 0
       67 GETTABLEKS                       R15 R15 K0 ["createElement"]
       69 GETUPVAL                         R16 3
       70 DUPTABLE                         R17 K40 [{["tag"] = "text-align-x-left auto-xy", ["Text"] = "You are still perfect!"}]
       71 CALL                             R15 2 -1
       72 CALL                             R12 -1 1
       73 SETTABLEKS                       R12 R11 K13 ["content"]
       75 DUPTABLE                         R12 K46 [{["id"] = "5", ["text"] = "With icon", ["icon"] = "icons/menu/clothing/limited_on", ["isDisabled"] = True}]
       76 SETLIST                          R7 R8 5 [1]
       78 SETTABLEKS                       R7 R6 K6 ["tabs"]
       80 GETTABLEKS                       R7 R0 K47 ["controls"]
       82 GETTABLEKS                       R7 R7 K7 ["size"]
       84 SETTABLEKS                       R7 R6 K7 ["size"]
       86 GETTABLEKS                       R7 R0 K47 ["controls"]
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
       28 DUPTABLE                         R12 K21 [{["tag"] = "padding-xxlarge auto-y size-full-0"}]
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
       43 DUPTABLE                         R13 K21 [{["tag"] = "padding-xxlarge auto-y size-full-0"}]
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
       61 DUPTABLE                         R14 K21 [{["tag"] = "padding-xxlarge auto-y size-full-0"}]
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
       76 DUPTABLE                         R15 K21 [{["tag"] = "padding-xxlarge auto-y size-full-0"}]
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
       23 GETTABLEKS                       R5 R5 K10 ["FillBehavior"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K9 ["Enums"]
       30 GETTABLEKS                       R6 R6 K11 ["InputSize"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K12 ["Components"]
       37 GETTABLEKS                       R7 R7 K13 ["Tabs"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K12 ["Components"]
       44 GETTABLEKS                       R8 R8 K14 ["Text"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R0 K12 ["Components"]
       51 GETTABLEKS                       R9 R9 K15 ["Types"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R10 R0 K12 ["Components"]
       58 GETTABLEKS                       R10 R10 K16 ["View"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K6 [require]
       63 GETTABLEKS                       R11 R1 K17 ["BuilderIcons"]
       65 CALL                             R10 1 1
       66 GETTABLEKS                       R11 R10 K18 ["IconVariant"]
       68 DUPTABLE                         R12 K22 [{["name"] = "star", ["variant"]}]
       69 GETTABLEKS                       R13 R11 K23 ["Filled"]
       71 SETTABLEKS                       R13 R12 K21 ["variant"]
       73 DUPCLOSURE                       R13 K24 [PROTO_0]
       74 CAPTURE                          VAL R3
       75 CAPTURE                          VAL R9
       76 CAPTURE                          VAL R6
       77 CAPTURE                          VAL R5
       78 CAPTURE                          VAL R4
       79 CAPTURE                          VAL R7
       80 DUPTABLE                         R14 K28 [{["summary"] = "Tabs", ["stories"], ["controls"]}]
       81 DUPTABLE                         R15 K31 [{"Basic", "Uncontrolled"}]
       82 DUPTABLE                         R16 K33 [{["name"] = "Basic", ["story"]}]
       83 DUPCLOSURE                       R17 K34 [PROTO_1]
       84 CAPTURE                          VAL R3
       85 CAPTURE                          VAL R9
       86 CAPTURE                          VAL R6
       87 CAPTURE                          VAL R7
       88 CAPTURE                          VAL R12
       89 SETTABLEKS                       R17 R16 K32 ["story"]
       91 SETTABLEKS                       R16 R15 K29 ["Basic"]
       93 DUPTABLE                         R16 K36 [{["name"] = "Uncontrolled with nested controlled tabs", ["story"]}]
       94 DUPCLOSURE                       R17 K37 [PROTO_3]
       95 CAPTURE                          VAL R3
       96 CAPTURE                          VAL R9
       97 CAPTURE                          VAL R6
       98 CAPTURE                          VAL R13
       99 CAPTURE                          VAL R7
      100 CAPTURE                          VAL R12
      101 SETTABLEKS                       R17 R16 K32 ["story"]
      103 SETTABLEKS                       R16 R15 K30 ["Uncontrolled"]
      105 SETTABLEKS                       R15 R14 K26 ["stories"]
      107 DUPTABLE                         R15 K40 [{"size", "fillBehavior"}]
      108 GETTABLEKS                       R16 R2 K41 ["values"]
      110 MOVE                             R17 R5
      111 CALL                             R16 1 1
      112 SETTABLEKS                       R16 R15 K38 ["size"]
      114 GETTABLEKS                       R16 R2 K41 ["values"]
      116 MOVE                             R17 R4
      117 CALL                             R16 1 1
      118 SETTABLEKS                       R16 R15 K39 ["fillBehavior"]
      120 SETTABLEKS                       R15 R14 K27 ["controls"]
      122 RETURN                           R14 1
