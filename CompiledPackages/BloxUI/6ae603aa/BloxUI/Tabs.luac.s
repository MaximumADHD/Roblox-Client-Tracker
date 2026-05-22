PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["id"]
        2 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Packages"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Blox"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K7 ["expr"]
       14 GETTABLEKS                       R3 R1 K8 ["template"]
       16 GETTABLEKS                       R4 R1 K9 ["Frame"]
       18 GETTABLEKS                       R5 R1 K10 ["TextButton"]
       20 GETTABLEKS                       R6 R1 K11 ["TextLabel"]
       22 GETTABLEKS                       R7 R1 K12 ["For"]
       24 MOVE                             R8 R3
       25 LOADK                            R9 K13 ["Tabs"]
       26 DUPTABLE                         R10 K17 [{"items", "selectedId", "onSelect"}]
       27 NEWTABLE                         R11 0 0
       29 SETTABLEKS                       R11 R10 K14 ["items"]
       31 LOADK                            R11 K18 [""]
       32 SETTABLEKS                       R11 R10 K15 ["selectedId"]
       34 DUPCLOSURE                       R11 K19 [PROTO_0]
       35 SETTABLEKS                       R11 R10 K16 ["onSelect"]
       37 NEWTABLE                         R11 0 1
       39 MOVE                             R12 R4
       40 NEWTABLE                         R13 4 1
       42 LOADK                            R15 K13 ["Tabs"]
       43 SETTABLEKS                       R15 R13 K20 ["Name"]
       45 LOADK                            R15 K21 ["tabs"]
       46 SETTABLEKS                       R15 R13 K22 ["Tags"]
       48 MOVE                             R15 R2
       49 LOADK                            R16 K23 ["api.childOrder"]
       50 CALL                             R15 1 1
       51 SETTABLEKS                       R15 R13 K24 ["LayoutOrder"]
       53 MOVE                             R14 R7
       54 DUPTABLE                         R15 K27 [{"items", "keyBy", "Each"}]
       55 MOVE                             R16 R2
       56 LOADK                            R17 K14 ["items"]
       57 CALL                             R16 1 1
       58 SETTABLEKS                       R16 R15 K14 ["items"]
       60 DUPCLOSURE                       R16 K28 [PROTO_1]
       61 SETTABLEKS                       R16 R15 K25 ["keyBy"]
       63 MOVE                             R16 R3
       64 NEWTABLE                         R17 0 2
       66 LOADK                            R18 K29 ["index"]
       67 LOADK                            R19 K30 ["tab"]
       68 SETLIST                          R17 R18 2 [1]
       70 NEWTABLE                         R18 0 1
       72 MOVE                             R19 R5
       73 NEWTABLE                         R20 4 2
       75 LOADK                            R23 K31 ["Tab"]
       76 SETTABLEKS                       R23 R20 K20 ["Name"]
       78 LOADK                            R23 K30 ["tab"]
       79 SETTABLEKS                       R23 R20 K22 ["Tags"]
       81 MOVE                             R23 R2
       82 LOADK                            R24 K32 ["fn() onSelect(api.peek(tab).id)"]
       83 CALL                             R23 1 1
       84 SETTABLEKS                       R23 R20 K33 ["OnActivated"]
       86 MOVE                             R23 R2
       87 LOADK                            R24 K29 ["index"]
       88 CALL                             R23 1 1
       89 SETTABLEKS                       R23 R20 K24 ["LayoutOrder"]
       91 MOVE                             R21 R6
       92 DUPTABLE                         R22 K35 [{"Name", "Tags", "Text"}]
       93 LOADK                            R23 K36 ["TabLabel"]
       94 SETTABLEKS                       R23 R22 K20 ["Name"]
       96 MOVE                             R23 R2
       97 LOADK                            R24 K37 ["{ \"tab-label\", [\"state-selected\"] = (api.peek(tab).id == selectedId) }"]
       98 CALL                             R23 1 1
       99 SETTABLEKS                       R23 R22 K22 ["Tags"]
      101 MOVE                             R23 R2
      102 LOADK                            R24 K38 ["api.peek(tab).text"]
      103 CALL                             R23 1 1
      104 SETTABLEKS                       R23 R22 K34 ["Text"]
      106 CALL                             R21 1 1
      107 MOVE                             R22 R4
      108 DUPTABLE                         R23 K39 [{"Name", "Tags"}]
      109 LOADK                            R24 K40 ["TabIndicator"]
      110 SETTABLEKS                       R24 R23 K20 ["Name"]
      112 MOVE                             R24 R2
      113 LOADK                            R25 K41 ["{ \"tab-indicator\", [\"state-selected\"] = (api.peek(tab).id == selectedId) }"]
      114 CALL                             R24 1 1
      115 SETTABLEKS                       R24 R23 K22 ["Tags"]
      117 CALL                             R22 1 -1
      118 SETLIST                          R20 R21 -1 [1]
      120 CALL                             R19 1 -1
      121 SETLIST                          R18 R19 -1 [1]
      123 CALL                             R16 2 1
      124 SETTABLEKS                       R16 R15 K26 ["Each"]
      126 CALL                             R14 1 -1
      127 SETLIST                          R13 R14 -1 [1]
      129 CALL                             R12 1 -1
      130 SETLIST                          R11 R12 -1 [1]
      132 CALL                             R8 3 1
      133 RETURN                           R8 1
