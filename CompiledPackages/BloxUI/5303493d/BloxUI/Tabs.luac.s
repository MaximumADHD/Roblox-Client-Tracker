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
       28 DUPTABLE                         R11 K18 [{"items", "selectedId", "onSelect"}]
       29 NEWTABLE                         R12 0 0
       31 SETTABLEKS                       R12 R11 K15 ["items"]
       33 LOADK                            R12 K19 [""]
       34 SETTABLEKS                       R12 R11 K16 ["selectedId"]
       36 DUPCLOSURE                       R12 K20 [PROTO_0]
       37 SETTABLEKS                       R12 R11 K17 ["onSelect"]
       39 NEWTABLE                         R12 0 1
       41 MOVE                             R13 R5
       42 NEWTABLE                         R14 4 1
       44 LOADK                            R16 K14 ["Tabs"]
       45 SETTABLEKS                       R16 R14 K21 ["Name"]
       47 LOADK                            R16 K22 ["tabs"]
       48 SETTABLEKS                       R16 R14 K23 ["Tags"]
       50 MOVE                             R16 R3
       51 LOADK                            R17 K24 ["api.childOrder"]
       52 CALL                             R16 1 1
       53 SETTABLEKS                       R16 R14 K25 ["LayoutOrder"]
       55 MOVE                             R15 R8
       56 DUPTABLE                         R16 K28 [{"items", "keyBy", "Each"}]
       57 MOVE                             R17 R3
       58 LOADK                            R18 K15 ["items"]
       59 CALL                             R17 1 1
       60 SETTABLEKS                       R17 R16 K15 ["items"]
       62 DUPCLOSURE                       R17 K29 [PROTO_1]
       63 SETTABLEKS                       R17 R16 K26 ["keyBy"]
       65 MOVE                             R17 R4
       66 NEWTABLE                         R18 0 2
       68 LOADK                            R19 K30 ["index"]
       69 LOADK                            R20 K31 ["tab"]
       70 SETLIST                          R18 R19 2 [1]
       72 NEWTABLE                         R19 0 1
       74 MOVE                             R20 R6
       75 NEWTABLE                         R21 4 2
       77 LOADK                            R24 K32 ["Tab"]
       78 SETTABLEKS                       R24 R21 K21 ["Name"]
       80 LOADK                            R24 K31 ["tab"]
       81 SETTABLEKS                       R24 R21 K23 ["Tags"]
       83 MOVE                             R24 R3
       84 LOADK                            R25 K33 ["fn() onSelect(api.peek(tab).id)"]
       85 CALL                             R24 1 1
       86 SETTABLEKS                       R24 R21 K34 ["OnActivated"]
       88 MOVE                             R24 R3
       89 LOADK                            R25 K30 ["index"]
       90 CALL                             R24 1 1
       91 SETTABLEKS                       R24 R21 K25 ["LayoutOrder"]
       93 MOVE                             R22 R7
       94 DUPTABLE                         R23 K36 [{"Name", "Tags", "Text"}]
       95 LOADK                            R24 K37 ["TabLabel"]
       96 SETTABLEKS                       R24 R23 K21 ["Name"]
       98 MOVE                             R24 R3
       99 LOADK                            R25 K38 ["{ \"tab-label\", [\"state-selected\"] = (api.peek(tab).id == selectedId) }"]
      100 CALL                             R24 1 1
      101 SETTABLEKS                       R24 R23 K23 ["Tags"]
      103 MOVE                             R24 R3
      104 LOADK                            R25 K39 ["api.peek(tab).text"]
      105 CALL                             R24 1 1
      106 SETTABLEKS                       R24 R23 K35 ["Text"]
      108 CALL                             R22 1 1
      109 MOVE                             R23 R5
      110 DUPTABLE                         R24 K40 [{"Name", "Tags"}]
      111 LOADK                            R25 K41 ["TabIndicator"]
      112 SETTABLEKS                       R25 R24 K21 ["Name"]
      114 MOVE                             R25 R3
      115 LOADK                            R26 K42 ["{ \"tab-indicator\", [\"state-selected\"] = (api.peek(tab).id == selectedId) }"]
      116 CALL                             R25 1 1
      117 SETTABLEKS                       R25 R24 K23 ["Tags"]
      119 CALL                             R23 1 -1
      120 SETLIST                          R21 R22 -1 [1]
      122 CALL                             R20 1 -1
      123 SETLIST                          R19 R20 -1 [1]
      125 CALL                             R17 2 1
      126 SETTABLEKS                       R17 R16 K27 ["Each"]
      128 CALL                             R15 1 -1
      129 SETLIST                          R14 R15 -1 [1]
      131 CALL                             R13 1 -1
      132 SETLIST                          R12 R13 -1 [1]
      134 CALL                             R9 3 1
      135 RETURN                           R9 1
