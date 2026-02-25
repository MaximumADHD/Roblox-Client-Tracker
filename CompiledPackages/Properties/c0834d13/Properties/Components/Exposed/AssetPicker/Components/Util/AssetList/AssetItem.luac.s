PROTO_0:
        0 GETIMPORT                        R1 K2 [DateTime.fromIsoDate]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 JUMPIF                           R1 ; [+6]
        5 GETIMPORT                        R2 K4 [warn]
        7 LOADK                            R3 K5 ["Invalid date string provided"]
        8 CALL                             R2 1 0
        9 LOADK                            R2 K6 ["Invalid Date"]
       10 RETURN                           R2 1
       11 LOADK                            R4 K7 ["ll"]
       12 LOADK                            R5 K8 ["en-us"]
       13 NAMECALL                         R2 R1 K9 ["FormatUniversalTime"]
       15 CALL                             R2 3 -1
       16 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onAssetSelected"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R1 R2 K1 ["asset"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_2:
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
       19 LOADK                            R6 K7 ["size-full-1000 row align-y-center padding-x-small padding-y-xsmall"]
       20 SETTABLEKS                       R6 R5 K3 ["tag"]
       22 GETTABLEKS                       R6 R0 K8 ["layoutOrder"]
       24 SETTABLEKS                       R6 R5 K4 ["LayoutOrder"]
       26 SETTABLEKS                       R1 R5 K5 ["onActivated"]
       28 DUPTABLE                         R6 K11 [{"ThumbnailAndNameContainer", "DateContainer"}]
       29 GETUPVAL                         R7 2
       30 GETUPVAL                         R8 3
       31 DUPTABLE                         R9 K13 [{"tag", "Size", "LayoutOrder"}]
       32 LOADK                            R10 K14 ["row align-y-center gap-small"]
       33 SETTABLEKS                       R10 R9 K3 ["tag"]
       35 GETIMPORT                        R10 K17 [UDim2.fromScale]
       37 LOADK                            R11 K18 [0.7]
       38 LOADN                            R12 1
       39 CALL                             R10 2 1
       40 SETTABLEKS                       R10 R9 K12 ["Size"]
       42 MOVE                             R10 R2
       43 CALL                             R10 0 1
       44 SETTABLEKS                       R10 R9 K4 ["LayoutOrder"]
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
       95 DUPTABLE                         R9 K31 [{"Size", "LayoutOrder"}]
       96 GETIMPORT                        R10 K17 [UDim2.fromScale]
       98 LOADK                            R11 K32 [0.3]
       99 LOADN                            R12 1
      100 CALL                             R10 2 1
      101 SETTABLEKS                       R10 R9 K12 ["Size"]
      103 MOVE                             R10 R2
      104 CALL                             R10 0 1
      105 SETTABLEKS                       R10 R9 K4 ["LayoutOrder"]
      107 DUPTABLE                         R10 K34 [{"Date"}]
      108 GETUPVAL                         R11 2
      109 GETUPVAL                         R12 6
      110 DUPTABLE                         R13 K28 [{"tag", "LayoutOrder", "Text"}]
      111 LOADK                            R14 K29 ["size-full-full text-body-small text-align-x-left text-no-wrap"]
      112 SETTABLEKS                       R14 R13 K3 ["tag"]
      114 MOVE                             R14 R2
      115 CALL                             R14 0 1
      116 SETTABLEKS                       R14 R13 K4 ["LayoutOrder"]
      118 GETTABLEKS                       R16 R0 K1 ["asset"]
      120 GETTABLEKS                       R15 R16 K35 ["updateTime"]
      122 GETIMPORT                        R16 K38 [DateTime.fromIsoDate]
      124 MOVE                             R17 R15
      125 CALL                             R16 1 1
      126 JUMPIF                           R16 ; [+6]
      127 GETIMPORT                        R17 K40 [warn]
      129 LOADK                            R18 K41 ["Invalid date string provided"]
      130 CALL                             R17 1 0
      131 LOADK                            R14 K42 ["Invalid Date"]
      132 JUMP                             ; [+6]
      133 LOADK                            R19 K43 ["ll"]
      134 LOADK                            R20 K44 ["en-us"]
      135 NAMECALL                         R17 R16 K45 ["FormatUniversalTime"]
      137 CALL                             R17 3 1
      138 MOVE                             R14 R17
      139 SETTABLEKS                       R14 R13 K27 ["Text"]
      141 CALL                             R11 2 1
      142 SETTABLEKS                       R11 R10 K33 ["Date"]
      144 CALL                             R7 3 1
      145 SETTABLEKS                       R7 R6 K10 ["DateContainer"]
      147 CALL                             R3 3 -1
      148 RETURN                           R3 -1

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
       46 GETTABLEKS                       R10 R4 K16 ["createElement"]
       48 GETTABLEKS                       R11 R5 K17 ["createNextOrder"]
       50 DUPCLOSURE                       R12 K18 [PROTO_0]
       51 DUPCLOSURE                       R13 K19 [PROTO_2]
       52 CAPTURE                          VAL R4
       53 CAPTURE                          VAL R11
       54 CAPTURE                          VAL R10
       55 CAPTURE                          VAL R9
       56 CAPTURE                          VAL R3
       57 CAPTURE                          VAL R7
       58 CAPTURE                          VAL R8
       59 RETURN                           R13 1
