PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 CALL                             R2 0 1
        4 GETTABLEKS                       R4 R2 K0 ["Stroke"]
        6 GETTABLEKS                       R3 R4 K1 ["Standard"]
        8 GETUPVAL                         R4 2
        9 GETUPVAL                         R5 3
       10 DUPTABLE                         R6 K4 [{"tag", "testId"}]
       11 LOADK                            R7 K5 ["size-full-1000"]
       12 SETTABLEKS                       R7 R6 K2 ["tag"]
       14 LOADK                            R7 K6 ["AssetItem"]
       15 SETTABLEKS                       R7 R6 K3 ["testId"]
       17 DUPTABLE                         R7 K9 [{"Content", "Divider"}]
       18 GETUPVAL                         R8 2
       19 GETUPVAL                         R9 3
       20 DUPTABLE                         R10 K12 [{"tag", "Size", "onActivated"}]
       21 LOADK                            R11 K13 ["padding-x-small padding-y-xsmall row align-y-center gap-small"]
       22 SETTABLEKS                       R11 R10 K2 ["tag"]
       24 GETIMPORT                        R11 K16 [UDim2.new]
       26 LOADN                            R12 1
       27 LOADN                            R13 0
       28 LOADN                            R14 1
       29 MINUS                            R15 R3
       30 CALL                             R11 4 1
       31 SETTABLEKS                       R11 R10 K10 ["Size"]
       33 GETTABLEKS                       R11 R0 K11 ["onActivated"]
       35 SETTABLEKS                       R11 R10 K11 ["onActivated"]
       37 DUPTABLE                         R11 K19 [{"ThumbnailAndNameContainer", "LastUpdatedContainer"}]
       38 GETUPVAL                         R12 2
       39 GETUPVAL                         R13 3
       40 DUPTABLE                         R14 K21 [{"tag", "LayoutOrder", "Size"}]
       41 LOADK                            R15 K22 ["clip gap-small row align-y-center"]
       42 SETTABLEKS                       R15 R14 K2 ["tag"]
       44 MOVE                             R15 R1
       45 CALL                             R15 0 1
       46 SETTABLEKS                       R15 R14 K20 ["LayoutOrder"]
       48 GETIMPORT                        R15 K24 [UDim2.fromScale]
       50 LOADK                            R16 K25 [0.68]
       51 LOADN                            R17 1
       52 CALL                             R15 2 1
       53 SETTABLEKS                       R15 R14 K10 ["Size"]
       55 DUPTABLE                         R15 K28 [{"Thumbnail", "Name"}]
       56 GETUPVAL                         R16 2
       57 GETUPVAL                         R18 4
       58 GETTABLEKS                       R17 R18 K29 ["Image"]
       60 DUPTABLE                         R18 K30 [{"tag", "LayoutOrder", "Image"}]
       61 LOADK                            R19 K31 ["size-700 radius-small"]
       62 SETTABLEKS                       R19 R18 K2 ["tag"]
       64 MOVE                             R19 R1
       65 CALL                             R19 0 1
       66 SETTABLEKS                       R19 R18 K20 ["LayoutOrder"]
       68 GETTABLEKS                       R19 R0 K32 ["thumbnailUri"]
       70 SETTABLEKS                       R19 R18 K29 ["Image"]
       72 CALL                             R16 2 1
       73 SETTABLEKS                       R16 R15 K26 ["Thumbnail"]
       75 GETUPVAL                         R16 2
       76 GETUPVAL                         R17 5
       77 DUPTABLE                         R18 K34 [{"tag", "LayoutOrder", "Text"}]
       78 LOADK                            R19 K35 ["size-full-full text-body-small text-align-x-left text-no-wrap"]
       79 SETTABLEKS                       R19 R18 K2 ["tag"]
       81 MOVE                             R19 R1
       82 CALL                             R19 0 1
       83 SETTABLEKS                       R19 R18 K20 ["LayoutOrder"]
       85 GETTABLEKS                       R19 R0 K36 ["displayName"]
       87 SETTABLEKS                       R19 R18 K33 ["Text"]
       89 CALL                             R16 2 1
       90 SETTABLEKS                       R16 R15 K27 ["Name"]
       92 CALL                             R12 3 1
       93 SETTABLEKS                       R12 R11 K17 ["ThumbnailAndNameContainer"]
       95 GETUPVAL                         R12 2
       96 GETUPVAL                         R13 3
       97 DUPTABLE                         R14 K37 [{"tag", "Size", "LayoutOrder"}]
       98 LOADK                            R15 K38 ["clip"]
       99 SETTABLEKS                       R15 R14 K2 ["tag"]
      101 GETIMPORT                        R15 K24 [UDim2.fromScale]
      103 LOADK                            R16 K39 [0.32]
      104 LOADN                            R17 1
      105 CALL                             R15 2 1
      106 SETTABLEKS                       R15 R14 K10 ["Size"]
      108 MOVE                             R15 R1
      109 CALL                             R15 0 1
      110 SETTABLEKS                       R15 R14 K20 ["LayoutOrder"]
      112 DUPTABLE                         R15 K41 [{"LastUpdated"}]
      113 GETUPVAL                         R16 2
      114 GETUPVAL                         R17 5
      115 DUPTABLE                         R18 K34 [{"tag", "LayoutOrder", "Text"}]
      116 LOADK                            R19 K35 ["size-full-full text-body-small text-align-x-left text-no-wrap"]
      117 SETTABLEKS                       R19 R18 K2 ["tag"]
      119 MOVE                             R19 R1
      120 CALL                             R19 0 1
      121 SETTABLEKS                       R19 R18 K20 ["LayoutOrder"]
      123 GETTABLEKS                       R19 R0 K42 ["lastUpdated"]
      125 SETTABLEKS                       R19 R18 K33 ["Text"]
      127 CALL                             R16 2 1
      128 SETTABLEKS                       R16 R15 K40 ["LastUpdated"]
      130 CALL                             R12 3 1
      131 SETTABLEKS                       R12 R11 K18 ["LastUpdatedContainer"]
      133 CALL                             R8 3 1
      134 SETTABLEKS                       R8 R7 K7 ["Content"]
      136 GETUPVAL                         R8 2
      137 GETUPVAL                         R9 6
      138 DUPTABLE                         R10 K45 [{"Position", "orientation"}]
      139 GETIMPORT                        R11 K16 [UDim2.new]
      141 LOADN                            R12 0
      142 LOADN                            R13 0
      143 LOADN                            R14 1
      144 MINUS                            R15 R3
      145 CALL                             R11 4 1
      146 SETTABLEKS                       R11 R10 K43 ["Position"]
      148 GETUPVAL                         R14 4
      149 GETTABLEKS                       R13 R14 K46 ["Enums"]
      151 GETTABLEKS                       R12 R13 K47 ["Orientation"]
      153 GETTABLEKS                       R11 R12 K48 ["Horizontal"]
      155 SETTABLEKS                       R11 R10 K44 ["orientation"]
      157 CALL                             R8 2 1
      158 SETTABLEKS                       R8 R7 K8 ["Divider"]
      160 CALL                             R4 3 -1
      161 RETURN                           R4 -1

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
       45 GETTABLEKS                       R13 R3 K17 ["Hooks"]
       47 GETTABLEKS                       R12 R13 K18 ["useTokens"]
       49 DUPCLOSURE                       R13 K19 [PROTO_0]
       50 CAPTURE                          VAL R10
       51 CAPTURE                          VAL R12
       52 CAPTURE                          VAL R11
       53 CAPTURE                          VAL R9
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R8
       56 CAPTURE                          VAL R7
       57 RETURN                           R13 1
