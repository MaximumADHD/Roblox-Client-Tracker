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
       17 GETUPVAL                         R4 3
       18 DUPTABLE                         R5 K6 [{"tag", "LayoutOrder", "onActivated"}]
       19 LOADK                            R6 K7 ["size-full-1000 row align-y-center gap-small padding-x-small padding-y-xsmall"]
       20 SETTABLEKS                       R6 R5 K3 ["tag"]
       22 GETTABLEKS                       R6 R0 K8 ["layoutOrder"]
       24 SETTABLEKS                       R6 R5 K4 ["LayoutOrder"]
       26 SETTABLEKS                       R1 R5 K5 ["onActivated"]
       28 DUPTABLE                         R6 K11 [{"ThumbnailAndNameContainer", "LastUpdatedContainer"}]
       29 GETUPVAL                         R7 2
       30 GETUPVAL                         R8 3
       31 DUPTABLE                         R9 K13 [{"tag", "LayoutOrder", "Size"}]
       32 LOADK                            R10 K14 ["clip row align-y-center gap-small"]
       33 SETTABLEKS                       R10 R9 K3 ["tag"]
       35 MOVE                             R10 R2
       36 CALL                             R10 0 1
       37 SETTABLEKS                       R10 R9 K4 ["LayoutOrder"]
       39 GETIMPORT                        R10 K17 [UDim2.fromScale]
       41 LOADK                            R11 K18 [0.68]
       42 LOADN                            R12 1
       43 CALL                             R10 2 1
       44 SETTABLEKS                       R10 R9 K12 ["Size"]
       46 DUPTABLE                         R10 K21 [{"Thumbnail", "Name"}]
       47 GETUPVAL                         R11 2
       48 GETUPVAL                         R13 4
       49 GETTABLEKS                       R12 R13 K22 ["Image"]
       51 DUPTABLE                         R13 K23 [{"tag", "LayoutOrder", "Image"}]
       52 LOADK                            R14 K24 ["size-700 radius-small"]
       53 SETTABLEKS                       R14 R13 K3 ["tag"]
       55 MOVE                             R14 R2
       56 CALL                             R14 0 1
       57 SETTABLEKS                       R14 R13 K4 ["LayoutOrder"]
       59 GETUPVAL                         R14 5
       60 LOADK                            R15 K25 ["CreatorContextAsset"]
       61 GETTABLEKS                       R17 R0 K1 ["asset"]
       63 GETTABLEKS                       R16 R17 K26 ["assetId"]
       65 CALL                             R14 2 1
       66 SETTABLEKS                       R14 R13 K22 ["Image"]
       68 CALL                             R11 2 1
       69 SETTABLEKS                       R11 R10 K19 ["Thumbnail"]
       71 GETUPVAL                         R11 2
       72 GETUPVAL                         R12 6
       73 DUPTABLE                         R13 K28 [{"tag", "LayoutOrder", "Text"}]
       74 LOADK                            R14 K29 ["size-full-full text-body-small text-align-x-left text-no-wrap"]
       75 SETTABLEKS                       R14 R13 K3 ["tag"]
       77 MOVE                             R14 R2
       78 CALL                             R14 0 1
       79 SETTABLEKS                       R14 R13 K4 ["LayoutOrder"]
       81 GETTABLEKS                       R15 R0 K1 ["asset"]
       83 GETTABLEKS                       R14 R15 K30 ["displayName"]
       85 SETTABLEKS                       R14 R13 K27 ["Text"]
       87 CALL                             R11 2 1
       88 SETTABLEKS                       R11 R10 K20 ["Name"]
       90 CALL                             R7 3 1
       91 SETTABLEKS                       R7 R6 K9 ["ThumbnailAndNameContainer"]
       93 GETUPVAL                         R7 2
       94 GETUPVAL                         R8 3
       95 DUPTABLE                         R9 K31 [{"tag", "Size", "LayoutOrder"}]
       96 LOADK                            R10 K32 ["clip"]
       97 SETTABLEKS                       R10 R9 K3 ["tag"]
       99 GETIMPORT                        R10 K17 [UDim2.fromScale]
      101 LOADK                            R11 K33 [0.32]
      102 LOADN                            R12 1
      103 CALL                             R10 2 1
      104 SETTABLEKS                       R10 R9 K12 ["Size"]
      106 MOVE                             R10 R2
      107 CALL                             R10 0 1
      108 SETTABLEKS                       R10 R9 K4 ["LayoutOrder"]
      110 DUPTABLE                         R10 K35 [{"LastUpdated"}]
      111 GETUPVAL                         R11 2
      112 GETUPVAL                         R12 6
      113 DUPTABLE                         R13 K28 [{"tag", "LayoutOrder", "Text"}]
      114 LOADK                            R14 K29 ["size-full-full text-body-small text-align-x-left text-no-wrap"]
      115 SETTABLEKS                       R14 R13 K3 ["tag"]
      117 MOVE                             R14 R2
      118 CALL                             R14 0 1
      119 SETTABLEKS                       R14 R13 K4 ["LayoutOrder"]
      121 GETTABLEKS                       R14 R0 K36 ["lastUpdated"]
      123 SETTABLEKS                       R14 R13 K27 ["Text"]
      125 CALL                             R11 2 1
      126 SETTABLEKS                       R11 R10 K34 ["LastUpdated"]
      128 CALL                             R7 3 1
      129 SETTABLEKS                       R7 R6 K10 ["LastUpdatedContainer"]
      131 CALL                             R3 3 -1
      132 RETURN                           R3 -1

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
       42 GETTABLEKS                       R8 R3 K14 ["Text"]
       44 GETTABLEKS                       R9 R3 K15 ["View"]
       46 GETTABLEKS                       R10 R5 K16 ["createNextOrder"]
       48 GETTABLEKS                       R11 R4 K17 ["createElement"]
       50 DUPCLOSURE                       R12 K18 [PROTO_1]
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R10
       53 CAPTURE                          VAL R11
       54 CAPTURE                          VAL R9
       55 CAPTURE                          VAL R3
       56 CAPTURE                          VAL R7
       57 CAPTURE                          VAL R8
       58 RETURN                           R12 1
