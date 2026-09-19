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
       28 DUPTABLE                         R11 K19 [{["items"], ["selectedIndex"] = 1, ["onSelect"]}]
       29 NEWTABLE                         R12 0 0
       31 SETTABLEKS                       R12 R11 K15 ["items"]
       33 DUPCLOSURE                       R12 K20 [PROTO_0]
       34 SETTABLEKS                       R12 R11 K18 ["onSelect"]
       36 NEWTABLE                         R12 0 1
       38 MOVE                             R13 R5
       39 NEWTABLE                         R14 4 1
       41 LOADK                            R16 K14 ["SegmentedButton"]
       42 SETTABLEKS                       R16 R14 K21 ["Name"]
       44 LOADK                            R16 K22 ["segmented"]
       45 SETTABLEKS                       R16 R14 K23 ["Tags"]
       47 MOVE                             R16 R3
       48 LOADK                            R17 K24 ["api.childOrder"]
       49 CALL                             R16 1 1
       50 SETTABLEKS                       R16 R14 K25 ["LayoutOrder"]
       52 MOVE                             R15 R8
       53 DUPTABLE                         R16 K27 [{"items", "Each"}]
       54 MOVE                             R17 R3
       55 LOADK                            R18 K15 ["items"]
       56 CALL                             R17 1 1
       57 SETTABLEKS                       R17 R16 K15 ["items"]
       59 MOVE                             R17 R4
       60 NEWTABLE                         R18 0 2
       62 LOADK                            R19 K28 ["index"]
       63 LOADK                            R20 K29 ["item"]
       64 SETLIST                          R18 R19 2 [1]
       66 NEWTABLE                         R19 0 1
       68 MOVE                             R20 R6
       69 NEWTABLE                         R21 4 1
       71 LOADK                            R23 K30 ["SegmentedItem"]
       72 SETTABLEKS                       R23 R21 K21 ["Name"]
       74 MOVE                             R23 R3
       75 LOADK                            R24 K31 ["{ \"segmented-item\", [\"state-selected\"] = (index == selectedIndex) }"]
       76 CALL                             R23 1 1
       77 SETTABLEKS                       R23 R21 K23 ["Tags"]
       79 MOVE                             R23 R3
       80 LOADK                            R24 K32 ["fn() onSelect(index)"]
       81 CALL                             R23 1 1
       82 SETTABLEKS                       R23 R21 K33 ["OnActivated"]
       84 MOVE                             R23 R3
       85 LOADK                            R24 K28 ["index"]
       86 CALL                             R23 1 1
       87 SETTABLEKS                       R23 R21 K25 ["LayoutOrder"]
       89 MOVE                             R22 R7
       90 DUPTABLE                         R23 K37 [{["Name"] = "SegmentedLabel", ["Tags"] = "segmented-label", ["Text"]}]
       91 MOVE                             R24 R3
       92 LOADK                            R25 K29 ["item"]
       93 CALL                             R24 1 1
       94 SETTABLEKS                       R24 R23 K36 ["Text"]
       96 CALL                             R22 1 -1
       97 SETLIST                          R21 R22 -1 [1]
       99 CALL                             R20 1 -1
      100 SETLIST                          R19 R20 -1 [1]
      102 CALL                             R17 2 1
      103 SETTABLEKS                       R17 R16 K26 ["Each"]
      105 CALL                             R15 1 -1
      106 SETLIST                          R14 R15 -1 [1]
      108 CALL                             R13 1 -1
      109 SETLIST                          R12 R13 -1 [1]
      111 CALL                             R9 3 1
      112 RETURN                           R9 1
