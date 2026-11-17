PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["id"]
        2 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["BloxUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Blox"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R2 K8 ["expr"]
       16 GETTABLEKS                       R4 R2 K9 ["template"]
       18 GETTABLEKS                       R5 R2 K10 ["Frame"]
       20 GETTABLEKS                       R6 R2 K11 ["TextButton"]
       22 GETTABLEKS                       R7 R2 K12 ["TextLabel"]
       24 GETTABLEKS                       R8 R2 K13 ["For"]
       26 MOVE                             R9 R4
       27 LOADK                            R10 K14 ["Tabs"]
       28 DUPTABLE                         R11 K19 [{["items"], ["selectedId"] = "", ["onSelect"]}]
       29 NEWTABLE                         R12 0 0
       31 SETTABLEKS                       R12 R11 K15 ["items"]
       33 DUPCLOSURE                       R12 K20 [PROTO_0]
       34 SETTABLEKS                       R12 R11 K18 ["onSelect"]
       36 NEWTABLE                         R12 0 1
       38 MOVE                             R13 R5
       39 NEWTABLE                         R14 4 1
       41 LOADK                            R16 K14 ["Tabs"]
       42 SETTABLEKS                       R16 R14 K21 ["Name"]
       44 LOADK                            R16 K22 ["tabs"]
       45 SETTABLEKS                       R16 R14 K23 ["Tags"]
       47 MOVE                             R16 R3
       48 LOADK                            R17 K24 ["api.childOrder"]
       49 CALL                             R16 1 1
       50 SETTABLEKS                       R16 R14 K25 ["LayoutOrder"]
       52 MOVE                             R15 R8
       53 DUPTABLE                         R16 K28 [{"items", "keyBy", "Each"}]
       54 MOVE                             R17 R3
       55 LOADK                            R18 K15 ["items"]
       56 CALL                             R17 1 1
       57 SETTABLEKS                       R17 R16 K15 ["items"]
       59 DUPCLOSURE                       R17 K29 [PROTO_1]
       60 SETTABLEKS                       R17 R16 K26 ["keyBy"]
       62 MOVE                             R17 R4
       63 NEWTABLE                         R18 0 2
       65 LOADK                            R19 K30 ["index"]
       66 LOADK                            R20 K31 ["tab"]
       67 SETLIST                          R18 R19 2 [1]
       69 NEWTABLE                         R19 0 1
       71 MOVE                             R20 R6
       72 NEWTABLE                         R21 4 2
       74 LOADK                            R24 K32 ["Tab"]
       75 SETTABLEKS                       R24 R21 K21 ["Name"]
       77 LOADK                            R24 K31 ["tab"]
       78 SETTABLEKS                       R24 R21 K23 ["Tags"]
       80 MOVE                             R24 R3
       81 LOADK                            R25 K33 ["fn() onSelect(api.peek(tab).id)"]
       82 CALL                             R24 1 1
       83 SETTABLEKS                       R24 R21 K34 ["OnActivated"]
       85 MOVE                             R24 R3
       86 LOADK                            R25 K30 ["index"]
       87 CALL                             R24 1 1
       88 SETTABLEKS                       R24 R21 K25 ["LayoutOrder"]
       90 MOVE                             R22 R7
       91 DUPTABLE                         R23 K37 [{["Name"] = "TabLabel", ["Tags"], ["Text"]}]
       92 MOVE                             R24 R3
       93 LOADK                            R25 K38 ["{ \"tab-label\", [\"state-selected\"] = (api.peek(tab).id == selectedId) }"]
       94 CALL                             R24 1 1
       95 SETTABLEKS                       R24 R23 K23 ["Tags"]
       97 MOVE                             R24 R3
       98 LOADK                            R25 K39 ["api.peek(tab).text"]
       99 CALL                             R24 1 1
      100 SETTABLEKS                       R24 R23 K36 ["Text"]
      102 CALL                             R22 1 1
      103 MOVE                             R23 R5
      104 DUPTABLE                         R24 K41 [{["Name"] = "TabIndicator", ["Tags"]}]
      105 MOVE                             R25 R3
      106 LOADK                            R26 K42 ["{ \"tab-indicator\", [\"state-selected\"] = (api.peek(tab).id == selectedId) }"]
      107 CALL                             R25 1 1
      108 SETTABLEKS                       R25 R24 K23 ["Tags"]
      110 CALL                             R23 1 -1
      111 SETLIST                          R21 R22 -1 [1]
      113 CALL                             R20 1 -1
      114 SETLIST                          R19 R20 -1 [1]
      116 CALL                             R17 2 1
      117 SETTABLEKS                       R17 R16 K27 ["Each"]
      119 CALL                             R15 1 -1
      120 SETLIST                          R14 R15 -1 [1]
      122 CALL                             R13 1 -1
      123 SETLIST                          R12 R13 -1 [1]
      125 CALL                             R9 3 1
      126 RETURN                           R9 1
