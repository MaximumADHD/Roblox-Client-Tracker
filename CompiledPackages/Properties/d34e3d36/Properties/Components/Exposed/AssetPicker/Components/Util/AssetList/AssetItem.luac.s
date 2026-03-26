PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onAssetSelected"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R1 R2 K1 ["asset"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useCallback"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 NEWTABLE                         R3 0 2
        7 GETTABLEKS                       R4 R0 K1 ["asset"]
        9 GETTABLEKS                       R5 R0 K2 ["onAssetSelected"]
       11 SETLIST                          R3 R4 2 [1]
       13 CALL                             R1 2 1
       14 GETUPVAL                         R2 1
       15 CALL                             R2 0 1
       16 GETUPVAL                         R3 2
       17 CALL                             R3 0 1
       18 GETTABLEKS                       R5 R3 K3 ["Stroke"]
       20 GETTABLEKS                       R4 R5 K4 ["Standard"]
       22 GETUPVAL                         R5 3
       23 GETUPVAL                         R6 4
       24 DUPTABLE                         R7 K7 [{"tag", "LayoutOrder"}]
       25 LOADK                            R8 K8 ["size-full-1000"]
       26 SETTABLEKS                       R8 R7 K5 ["tag"]
       28 GETTABLEKS                       R8 R0 K9 ["layoutOrder"]
       30 SETTABLEKS                       R8 R7 K6 ["LayoutOrder"]
       32 DUPTABLE                         R8 K12 [{"Content", "Divider"}]
       33 GETUPVAL                         R9 3
       34 GETUPVAL                         R10 4
       35 DUPTABLE                         R11 K15 [{"tag", "Size", "LayoutOrder", "onActivated"}]
       36 LOADK                            R12 K16 ["padding-x-small padding-y-xsmall row align-y-center gap-small"]
       37 SETTABLEKS                       R12 R11 K5 ["tag"]
       39 GETIMPORT                        R12 K19 [UDim2.new]
       41 LOADN                            R13 1
       42 LOADN                            R14 0
       43 LOADN                            R15 1
       44 MINUS                            R16 R4
       45 CALL                             R12 4 1
       46 SETTABLEKS                       R12 R11 K13 ["Size"]
       48 GETTABLEKS                       R12 R0 K9 ["layoutOrder"]
       50 SETTABLEKS                       R12 R11 K6 ["LayoutOrder"]
       52 SETTABLEKS                       R1 R11 K14 ["onActivated"]
       54 DUPTABLE                         R12 K22 [{"ThumbnailAndNameContainer", "LastUpdatedContainer"}]
       55 GETUPVAL                         R13 3
       56 GETUPVAL                         R14 4
       57 DUPTABLE                         R15 K23 [{"tag", "LayoutOrder", "Size"}]
       58 LOADK                            R16 K24 ["clip gap-small row align-y-center"]
       59 SETTABLEKS                       R16 R15 K5 ["tag"]
       61 MOVE                             R16 R2
       62 CALL                             R16 0 1
       63 SETTABLEKS                       R16 R15 K6 ["LayoutOrder"]
       65 GETIMPORT                        R16 K26 [UDim2.fromScale]
       67 LOADK                            R17 K27 [0.68]
       68 LOADN                            R18 1
       69 CALL                             R16 2 1
       70 SETTABLEKS                       R16 R15 K13 ["Size"]
       72 DUPTABLE                         R16 K30 [{"Thumbnail", "Name"}]
       73 GETUPVAL                         R17 3
       74 GETUPVAL                         R19 5
       75 GETTABLEKS                       R18 R19 K31 ["Image"]
       77 DUPTABLE                         R19 K32 [{"tag", "LayoutOrder", "Image"}]
       78 LOADK                            R20 K33 ["size-700 radius-small"]
       79 SETTABLEKS                       R20 R19 K5 ["tag"]
       81 MOVE                             R20 R2
       82 CALL                             R20 0 1
       83 SETTABLEKS                       R20 R19 K6 ["LayoutOrder"]
       85 GETUPVAL                         R20 6
       86 LOADK                            R21 K34 ["CreatorContextAsset"]
       87 GETTABLEKS                       R23 R0 K1 ["asset"]
       89 GETTABLEKS                       R22 R23 K35 ["assetId"]
       91 CALL                             R20 2 1
       92 SETTABLEKS                       R20 R19 K31 ["Image"]
       94 CALL                             R17 2 1
       95 SETTABLEKS                       R17 R16 K28 ["Thumbnail"]
       97 GETUPVAL                         R17 3
       98 GETUPVAL                         R18 7
       99 DUPTABLE                         R19 K37 [{"tag", "LayoutOrder", "Text"}]
      100 LOADK                            R20 K38 ["size-full-full text-body-small text-align-x-left text-no-wrap"]
      101 SETTABLEKS                       R20 R19 K5 ["tag"]
      103 MOVE                             R20 R2
      104 CALL                             R20 0 1
      105 SETTABLEKS                       R20 R19 K6 ["LayoutOrder"]
      107 GETTABLEKS                       R21 R0 K1 ["asset"]
      109 GETTABLEKS                       R20 R21 K39 ["displayName"]
      111 SETTABLEKS                       R20 R19 K36 ["Text"]
      113 CALL                             R17 2 1
      114 SETTABLEKS                       R17 R16 K29 ["Name"]
      116 CALL                             R13 3 1
      117 SETTABLEKS                       R13 R12 K20 ["ThumbnailAndNameContainer"]
      119 GETUPVAL                         R13 3
      120 GETUPVAL                         R14 4
      121 DUPTABLE                         R15 K40 [{"tag", "Size", "LayoutOrder"}]
      122 LOADK                            R16 K41 ["clip"]
      123 SETTABLEKS                       R16 R15 K5 ["tag"]
      125 GETIMPORT                        R16 K26 [UDim2.fromScale]
      127 LOADK                            R17 K42 [0.32]
      128 LOADN                            R18 1
      129 CALL                             R16 2 1
      130 SETTABLEKS                       R16 R15 K13 ["Size"]
      132 MOVE                             R16 R2
      133 CALL                             R16 0 1
      134 SETTABLEKS                       R16 R15 K6 ["LayoutOrder"]
      136 DUPTABLE                         R16 K44 [{"LastUpdated"}]
      137 GETUPVAL                         R17 3
      138 GETUPVAL                         R18 7
      139 DUPTABLE                         R19 K37 [{"tag", "LayoutOrder", "Text"}]
      140 LOADK                            R20 K38 ["size-full-full text-body-small text-align-x-left text-no-wrap"]
      141 SETTABLEKS                       R20 R19 K5 ["tag"]
      143 MOVE                             R20 R2
      144 CALL                             R20 0 1
      145 SETTABLEKS                       R20 R19 K6 ["LayoutOrder"]
      147 GETTABLEKS                       R20 R0 K45 ["lastUpdated"]
      149 SETTABLEKS                       R20 R19 K36 ["Text"]
      151 CALL                             R17 2 1
      152 SETTABLEKS                       R17 R16 K43 ["LastUpdated"]
      154 CALL                             R13 3 1
      155 SETTABLEKS                       R13 R12 K21 ["LastUpdatedContainer"]
      157 CALL                             R9 3 1
      158 SETTABLEKS                       R9 R8 K10 ["Content"]
      160 GETUPVAL                         R9 3
      161 GETUPVAL                         R10 8
      162 DUPTABLE                         R11 K48 [{"Position", "orientation"}]
      163 GETIMPORT                        R12 K19 [UDim2.new]
      165 LOADN                            R13 0
      166 LOADN                            R14 0
      167 LOADN                            R15 1
      168 MINUS                            R16 R4
      169 CALL                             R12 4 1
      170 SETTABLEKS                       R12 R11 K46 ["Position"]
      172 GETUPVAL                         R15 5
      173 GETTABLEKS                       R14 R15 K49 ["Enums"]
      175 GETTABLEKS                       R13 R14 K50 ["Orientation"]
      177 GETTABLEKS                       R12 R13 K51 ["Horizontal"]
      179 SETTABLEKS                       R12 R11 K47 ["orientation"]
      181 CALL                             R9 2 1
      182 SETTABLEKS                       R9 R8 K11 ["Divider"]
      184 CALL                             R5 3 -1
      185 RETURN                           R5 -1

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
       35 GETIMPORT                        R7 K7 [require]
       37 GETTABLEKS                       R9 R1 K12 ["Util"]
       39 GETTABLEKS                       R8 R9 K13 ["getAssetThumbnailUri"]
       41 CALL                             R7 1 1
       42 GETTABLEKS                       R8 R3 K14 ["Divider"]
       44 GETTABLEKS                       R9 R3 K15 ["Text"]
       46 GETTABLEKS                       R10 R3 K16 ["View"]
       48 GETTABLEKS                       R11 R5 K17 ["createNextOrder"]
       50 GETTABLEKS                       R12 R4 K18 ["createElement"]
       52 GETTABLEKS                       R14 R3 K19 ["Hooks"]
       54 GETTABLEKS                       R13 R14 K20 ["useTokens"]
       56 DUPCLOSURE                       R14 K21 [PROTO_1]
       57 CAPTURE                          VAL R4
       58 CAPTURE                          VAL R11
       59 CAPTURE                          VAL R13
       60 CAPTURE                          VAL R12
       61 CAPTURE                          VAL R10
       62 CAPTURE                          VAL R3
       63 CAPTURE                          VAL R7
       64 CAPTURE                          VAL R9
       65 CAPTURE                          VAL R8
       66 RETURN                           R14 1
