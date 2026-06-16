PROTO_0:
        0 RETURN                           R0 0

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
       25 LOADK                            R9 K13 ["SegmentedButton"]
       26 DUPTABLE                         R10 K17 [{"items", "selectedIndex", "onSelect"}]
       27 NEWTABLE                         R11 0 0
       29 SETTABLEKS                       R11 R10 K14 ["items"]
       31 LOADN                            R11 1
       32 SETTABLEKS                       R11 R10 K15 ["selectedIndex"]
       34 DUPCLOSURE                       R11 K18 [PROTO_0]
       35 SETTABLEKS                       R11 R10 K16 ["onSelect"]
       37 NEWTABLE                         R11 0 1
       39 MOVE                             R12 R4
       40 NEWTABLE                         R13 4 1
       42 LOADK                            R15 K13 ["SegmentedButton"]
       43 SETTABLEKS                       R15 R13 K19 ["Name"]
       45 LOADK                            R15 K20 ["segmented"]
       46 SETTABLEKS                       R15 R13 K21 ["Tags"]
       48 MOVE                             R15 R2
       49 LOADK                            R16 K22 ["api.childOrder"]
       50 CALL                             R15 1 1
       51 SETTABLEKS                       R15 R13 K23 ["LayoutOrder"]
       53 MOVE                             R14 R7
       54 DUPTABLE                         R15 K25 [{"items", "Each"}]
       55 MOVE                             R16 R2
       56 LOADK                            R17 K14 ["items"]
       57 CALL                             R16 1 1
       58 SETTABLEKS                       R16 R15 K14 ["items"]
       60 MOVE                             R16 R3
       61 NEWTABLE                         R17 0 2
       63 LOADK                            R18 K26 ["index"]
       64 LOADK                            R19 K27 ["item"]
       65 SETLIST                          R17 R18 2 [1]
       67 NEWTABLE                         R18 0 1
       69 MOVE                             R19 R5
       70 NEWTABLE                         R20 4 1
       72 LOADK                            R22 K28 ["SegmentedItem"]
       73 SETTABLEKS                       R22 R20 K19 ["Name"]
       75 MOVE                             R22 R2
       76 LOADK                            R23 K29 ["{ \"segmented-item\", [\"state-selected\"] = (index == selectedIndex) }"]
       77 CALL                             R22 1 1
       78 SETTABLEKS                       R22 R20 K21 ["Tags"]
       80 MOVE                             R22 R2
       81 LOADK                            R23 K30 ["fn() onSelect(index)"]
       82 CALL                             R22 1 1
       83 SETTABLEKS                       R22 R20 K31 ["OnActivated"]
       85 MOVE                             R22 R2
       86 LOADK                            R23 K26 ["index"]
       87 CALL                             R22 1 1
       88 SETTABLEKS                       R22 R20 K23 ["LayoutOrder"]
       90 MOVE                             R21 R6
       91 DUPTABLE                         R22 K33 [{"Name", "Tags", "Text"}]
       92 LOADK                            R23 K34 ["SegmentedLabel"]
       93 SETTABLEKS                       R23 R22 K19 ["Name"]
       95 LOADK                            R23 K35 ["segmented-label"]
       96 SETTABLEKS                       R23 R22 K21 ["Tags"]
       98 MOVE                             R23 R2
       99 LOADK                            R24 K27 ["item"]
      100 CALL                             R23 1 1
      101 SETTABLEKS                       R23 R22 K32 ["Text"]
      103 CALL                             R21 1 -1
      104 SETLIST                          R20 R21 -1 [1]
      106 CALL                             R19 1 -1
      107 SETLIST                          R18 R19 -1 [1]
      109 CALL                             R16 2 1
      110 SETTABLEKS                       R16 R15 K24 ["Each"]
      112 CALL                             R14 1 -1
      113 SETLIST                          R13 R14 -1 [1]
      115 CALL                             R12 1 -1
      116 SETLIST                          R11 R12 -1 [1]
      118 CALL                             R8 3 1
      119 RETURN                           R8 1
