PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 CALL                             R2 0 1
        4 GETTABLEKS                       R3 R2 K0 ["Stroke"]
        6 GETTABLEKS                       R3 R3 K1 ["Standard"]
        8 GETUPVAL                         R4 2
        9 GETUPVAL                         R5 3
       10 DUPTABLE                         R6 K6 [{["tag"] = "size-full-1000", ["testId"] = "AssetItem"}]
       11 DUPTABLE                         R7 K9 [{"Content", "Divider"}]
       12 GETUPVAL                         R8 2
       13 GETUPVAL                         R9 3
       14 DUPTABLE                         R10 K13 [{["tag"] = "row align-y-center gap-small padding-x-small padding-y-xsmall", ["Size"], ["onActivated"]}]
       15 GETIMPORT                        R11 K16 [UDim2.new]
       17 LOADN                            R12 1
       18 LOADN                            R13 0
       19 LOADN                            R14 1
       20 MINUS                            R15 R3
       21 CALL                             R11 4 1
       22 SETTABLEKS                       R11 R10 K11 ["Size"]
       24 GETTABLEKS                       R11 R0 K12 ["onActivated"]
       26 SETTABLEKS                       R11 R10 K12 ["onActivated"]
       28 DUPTABLE                         R11 K19 [{"ThumbnailAndNameContainer", "LastUpdatedContainer"}]
       29 GETUPVAL                         R12 2
       30 GETUPVAL                         R13 3
       31 DUPTABLE                         R14 K22 [{["tag"] = "row align-y-center gap-small clip", ["LayoutOrder"], ["Size"]}]
       32 MOVE                             R15 R1
       33 CALL                             R15 0 1
       34 SETTABLEKS                       R15 R14 K21 ["LayoutOrder"]
       36 GETIMPORT                        R15 K24 [UDim2.fromScale]
       38 LOADK                            R16 K25 [0.68]
       39 LOADN                            R17 1
       40 CALL                             R15 2 1
       41 SETTABLEKS                       R15 R14 K11 ["Size"]
       43 DUPTABLE                         R15 K28 [{"Thumbnail", "Name"}]
       44 GETUPVAL                         R16 2
       45 GETUPVAL                         R17 4
       46 GETTABLEKS                       R17 R17 K29 ["Image"]
       48 DUPTABLE                         R18 K31 [{["tag"] = "size-700 radius-small", ["LayoutOrder"], ["Image"]}]
       49 MOVE                             R19 R1
       50 CALL                             R19 0 1
       51 SETTABLEKS                       R19 R18 K21 ["LayoutOrder"]
       53 GETTABLEKS                       R19 R0 K32 ["thumbnailUri"]
       55 SETTABLEKS                       R19 R18 K29 ["Image"]
       57 CALL                             R16 2 1
       58 SETTABLEKS                       R16 R15 K26 ["Thumbnail"]
       60 GETUPVAL                         R16 2
       61 GETUPVAL                         R17 5
       62 DUPTABLE                         R18 K35 [{["tag"] = "size-full-full text-body-small text-no-wrap text-align-x-left", ["LayoutOrder"], ["Text"]}]
       63 MOVE                             R19 R1
       64 CALL                             R19 0 1
       65 SETTABLEKS                       R19 R18 K21 ["LayoutOrder"]
       67 GETTABLEKS                       R19 R0 K36 ["displayName"]
       69 SETTABLEKS                       R19 R18 K34 ["Text"]
       71 CALL                             R16 2 1
       72 SETTABLEKS                       R16 R15 K27 ["Name"]
       74 CALL                             R12 3 1
       75 SETTABLEKS                       R12 R11 K17 ["ThumbnailAndNameContainer"]
       77 GETUPVAL                         R12 2
       78 GETUPVAL                         R13 3
       79 DUPTABLE                         R14 K38 [{["tag"] = "clip", ["Size"], ["LayoutOrder"]}]
       80 GETIMPORT                        R15 K24 [UDim2.fromScale]
       82 LOADK                            R16 K39 [0.32]
       83 LOADN                            R17 1
       84 CALL                             R15 2 1
       85 SETTABLEKS                       R15 R14 K11 ["Size"]
       87 MOVE                             R15 R1
       88 CALL                             R15 0 1
       89 SETTABLEKS                       R15 R14 K21 ["LayoutOrder"]
       91 DUPTABLE                         R15 K41 [{"LastUpdated"}]
       92 GETUPVAL                         R16 2
       93 GETUPVAL                         R17 5
       94 DUPTABLE                         R18 K35 [{["tag"] = "size-full-full text-body-small text-no-wrap text-align-x-left", ["LayoutOrder"], ["Text"]}]
       95 MOVE                             R19 R1
       96 CALL                             R19 0 1
       97 SETTABLEKS                       R19 R18 K21 ["LayoutOrder"]
       99 GETTABLEKS                       R19 R0 K42 ["lastUpdated"]
      101 SETTABLEKS                       R19 R18 K34 ["Text"]
      103 CALL                             R16 2 1
      104 SETTABLEKS                       R16 R15 K40 ["LastUpdated"]
      106 CALL                             R12 3 1
      107 SETTABLEKS                       R12 R11 K18 ["LastUpdatedContainer"]
      109 CALL                             R8 3 1
      110 SETTABLEKS                       R8 R7 K7 ["Content"]
      112 GETUPVAL                         R8 2
      113 GETUPVAL                         R9 6
      114 DUPTABLE                         R10 K45 [{"Position", "orientation"}]
      115 GETIMPORT                        R11 K16 [UDim2.new]
      117 LOADN                            R12 0
      118 LOADN                            R13 0
      119 LOADN                            R14 1
      120 MINUS                            R15 R3
      121 CALL                             R11 4 1
      122 SETTABLEKS                       R11 R10 K43 ["Position"]
      124 GETUPVAL                         R11 4
      125 GETTABLEKS                       R11 R11 K46 ["Enums"]
      127 GETTABLEKS                       R11 R11 K47 ["Orientation"]
      129 GETTABLEKS                       R11 R11 K48 ["Horizontal"]
      131 SETTABLEKS                       R11 R10 K44 ["orientation"]
      133 CALL                             R8 2 1
      134 SETTABLEKS                       R8 R7 K8 ["Divider"]
      136 CALL                             R4 3 -1
      137 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [script]
        9 LOADK                            R3 K4 ["AssetPicker"]
       10 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETTABLEKS                       R2 R0 K5 ["Parent"]
       15 GETIMPORT                        R3 K7 [require]
       17 GETTABLEKS                       R4 R2 K8 ["Foundation"]
       19 CALL                             R3 1 1
       20 GETIMPORT                        R4 K7 [require]
       22 GETTABLEKS                       R5 R2 K9 ["React"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K7 [require]
       27 GETTABLEKS                       R6 R2 K10 ["ReactUtils"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K7 [require]
       32 GETTABLEKS                       R7 R1 K11 ["Types"]
       34 CALL                             R6 1 1
       35 GETTABLEKS                       R7 R3 K12 ["Divider"]
       37 GETTABLEKS                       R8 R3 K13 ["Text"]
       39 GETTABLEKS                       R9 R3 K14 ["View"]
       41 GETTABLEKS                       R10 R5 K15 ["createNextOrder"]
       43 GETTABLEKS                       R11 R4 K16 ["createElement"]
       45 GETTABLEKS                       R12 R3 K17 ["Hooks"]
       47 GETTABLEKS                       R12 R12 K18 ["useTokens"]
       49 DUPCLOSURE                       R13 K19 [PROTO_0]
       50 CAPTURE                          VAL R10
       51 CAPTURE                          VAL R12
       52 CAPTURE                          VAL R11
       53 CAPTURE                          VAL R9
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R8
       56 CAPTURE                          VAL R7
       57 RETURN                           R13 1
