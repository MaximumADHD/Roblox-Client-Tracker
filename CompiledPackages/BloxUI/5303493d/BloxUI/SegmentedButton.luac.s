PROTO_0:
        0 RETURN                           R0 0

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
       27 LOADK                            R10 K14 ["SegmentedButton"]
       28 DUPTABLE                         R11 K18 [{"items", "selectedIndex", "onSelect"}]
       29 NEWTABLE                         R12 0 0
       31 SETTABLEKS                       R12 R11 K15 ["items"]
       33 LOADN                            R12 1
       34 SETTABLEKS                       R12 R11 K16 ["selectedIndex"]
       36 DUPCLOSURE                       R12 K19 [PROTO_0]
       37 SETTABLEKS                       R12 R11 K17 ["onSelect"]
       39 NEWTABLE                         R12 0 1
       41 MOVE                             R13 R5
       42 NEWTABLE                         R14 4 1
       44 LOADK                            R16 K14 ["SegmentedButton"]
       45 SETTABLEKS                       R16 R14 K20 ["Name"]
       47 LOADK                            R16 K21 ["segmented"]
       48 SETTABLEKS                       R16 R14 K22 ["Tags"]
       50 MOVE                             R16 R3
       51 LOADK                            R17 K23 ["api.childOrder"]
       52 CALL                             R16 1 1
       53 SETTABLEKS                       R16 R14 K24 ["LayoutOrder"]
       55 MOVE                             R15 R8
       56 DUPTABLE                         R16 K26 [{"items", "Each"}]
       57 MOVE                             R17 R3
       58 LOADK                            R18 K15 ["items"]
       59 CALL                             R17 1 1
       60 SETTABLEKS                       R17 R16 K15 ["items"]
       62 MOVE                             R17 R4
       63 NEWTABLE                         R18 0 2
       65 LOADK                            R19 K27 ["index"]
       66 LOADK                            R20 K28 ["item"]
       67 SETLIST                          R18 R19 2 [1]
       69 NEWTABLE                         R19 0 1
       71 MOVE                             R20 R6
       72 NEWTABLE                         R21 4 1
       74 LOADK                            R23 K29 ["SegmentedItem"]
       75 SETTABLEKS                       R23 R21 K20 ["Name"]
       77 MOVE                             R23 R3
       78 LOADK                            R24 K30 ["{ \"segmented-item\", [\"state-selected\"] = (index == selectedIndex) }"]
       79 CALL                             R23 1 1
       80 SETTABLEKS                       R23 R21 K22 ["Tags"]
       82 MOVE                             R23 R3
       83 LOADK                            R24 K31 ["fn() onSelect(index)"]
       84 CALL                             R23 1 1
       85 SETTABLEKS                       R23 R21 K32 ["OnActivated"]
       87 MOVE                             R23 R3
       88 LOADK                            R24 K27 ["index"]
       89 CALL                             R23 1 1
       90 SETTABLEKS                       R23 R21 K24 ["LayoutOrder"]
       92 MOVE                             R22 R7
       93 DUPTABLE                         R23 K34 [{"Name", "Tags", "Text"}]
       94 LOADK                            R24 K35 ["SegmentedLabel"]
       95 SETTABLEKS                       R24 R23 K20 ["Name"]
       97 LOADK                            R24 K36 ["segmented-label"]
       98 SETTABLEKS                       R24 R23 K22 ["Tags"]
      100 MOVE                             R24 R3
      101 LOADK                            R25 K28 ["item"]
      102 CALL                             R24 1 1
      103 SETTABLEKS                       R24 R23 K33 ["Text"]
      105 CALL                             R22 1 -1
      106 SETLIST                          R21 R22 -1 [1]
      108 CALL                             R20 1 -1
      109 SETLIST                          R19 R20 -1 [1]
      111 CALL                             R17 2 1
      112 SETTABLEKS                       R17 R16 K25 ["Each"]
      114 CALL                             R15 1 -1
      115 SETLIST                          R14 R15 -1 [1]
      117 CALL                             R13 1 -1
      118 SETLIST                          R12 R13 -1 [1]
      120 CALL                             R9 3 1
      121 RETURN                           R9 1
