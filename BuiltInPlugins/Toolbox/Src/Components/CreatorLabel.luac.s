PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["CreatorType"]
        3 GETIMPORT                        R2 K3 [Enum.CreatorType.Group]
        5 JUMPIFNOTEQ                      R1 R2 ; [+7]
        7 GETUPVAL                         R0 1
        8 GETTABLEKS                       R0 R0 K4 ["Icon"]
       10 GETTABLEKS                       R0 R0 K5 ["GroupIcon"]
       12 RETURN                           R0 1
       13 GETUPVAL                         R0 1
       14 GETTABLEKS                       R0 R0 K4 ["Icon"]
       16 GETTABLEKS                       R0 R0 K6 ["AvatarHeadShot"]
       18 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 NEWTABLE                         R3 0 1
        8 GETTABLEKS                       R4 R0 K1 ["CreatorType"]
       10 SETLIST                          R3 R4 1 [1]
       12 CALL                             R1 2 1
       13 GETUPVAL                         R2 2
       14 NAMECALL                         R2 R2 K2 ["use"]
       16 CALL                             R2 1 1
       17 GETUPVAL                         R3 3
       18 GETTABLEKS                       R3 R3 K3 ["new"]
       20 CALL                             R3 0 1
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R4 R4 K4 ["createElement"]
       24 GETUPVAL                         R5 4
       25 DUPTABLE                         R6 K9 [{"AutomaticSize", "Layout", "LayoutOrder", "Spacing"}]
       26 GETIMPORT                        R7 K12 [Enum.AutomaticSize.XY]
       28 SETTABLEKS                       R7 R6 K5 ["AutomaticSize"]
       30 GETIMPORT                        R7 K15 [Enum.FillDirection.Horizontal]
       32 SETTABLEKS                       R7 R6 K6 ["Layout"]
       34 GETTABLEKS                       R7 R0 K7 ["LayoutOrder"]
       36 SETTABLEKS                       R7 R6 K7 ["LayoutOrder"]
       38 GETTABLEKS                       R7 R2 K16 ["creatorLabel"]
       40 GETTABLEKS                       R7 R7 K17 ["spacingUnit"]
       42 SETTABLEKS                       R7 R6 K8 ["Spacing"]
       44 DUPTABLE                         R7 K20 [{"Thumbnail", "Name"}]
       45 GETUPVAL                         R8 0
       46 GETTABLEKS                       R8 R8 K4 ["createElement"]
       48 LOADK                            R9 K21 ["ImageLabel"]
       49 DUPTABLE                         R10 K25 [{"BackgroundColor3", "Image", "LayoutOrder", "Size"}]
       50 GETTABLEKS                       R11 R2 K16 ["creatorLabel"]
       52 GETTABLEKS                       R11 R11 K26 ["thumbnailBackgroundColor"]
       54 SETTABLEKS                       R11 R10 K22 ["BackgroundColor3"]
       56 GETUPVAL                         R11 5
       57 GETTABLEKS                       R11 R11 K27 ["constructAssetThumbnailUrl"]
       59 GETTABLEKS                       R12 R0 K28 ["CreatorId"]
       61 LOADN                            R13 150
       62 LOADN                            R14 150
       63 MOVE                             R15 R1
       64 CALL                             R11 4 1
       65 SETTABLEKS                       R11 R10 K23 ["Image"]
       67 NAMECALL                         R11 R3 K29 ["getNextOrder"]
       69 CALL                             R11 1 1
       70 SETTABLEKS                       R11 R10 K7 ["LayoutOrder"]
       72 GETIMPORT                        R11 K32 [UDim2.fromOffset]
       74 GETTABLEKS                       R12 R2 K16 ["creatorLabel"]
       76 GETTABLEKS                       R12 R12 K33 ["textSize"]
       78 GETTABLEKS                       R13 R2 K16 ["creatorLabel"]
       80 GETTABLEKS                       R13 R13 K33 ["textSize"]
       82 CALL                             R11 2 1
       83 SETTABLEKS                       R11 R10 K24 ["Size"]
       85 DUPTABLE                         R11 K35 [{"Corner"}]
       86 GETUPVAL                         R12 0
       87 GETTABLEKS                       R12 R12 K4 ["createElement"]
       89 LOADK                            R13 K36 ["UICorner"]
       90 DUPTABLE                         R14 K38 [{"CornerRadius"}]
       91 GETTABLEKS                       R16 R0 K1 ["CreatorType"]
       93 GETIMPORT                        R17 K40 [Enum.CreatorType.User]
       95 JUMPIFNOTEQ                      R16 R17 ; [+7]
       97 GETIMPORT                        R15 K42 [UDim.new]
       99 LOADK                            R16 K43 [0.5]
      100 LOADN                            R17 0
      101 CALL                             R15 2 1
      102 JUMP                             ; [+9]
      103 GETIMPORT                        R15 K42 [UDim.new]
      105 LOADN                            R16 0
      106 GETTABLEKS                       R18 R2 K16 ["creatorLabel"]
      108 GETTABLEKS                       R18 R18 K17 ["spacingUnit"]
      110 DIVK                             R17 R18 K44 [2]
      111 CALL                             R15 2 1
      112 SETTABLEKS                       R15 R14 K37 ["CornerRadius"]
      114 CALL                             R12 2 1
      115 SETTABLEKS                       R12 R11 K34 ["Corner"]
      117 CALL                             R8 3 1
      118 SETTABLEKS                       R8 R7 K18 ["Thumbnail"]
      120 GETUPVAL                         R8 0
      121 GETTABLEKS                       R8 R8 K4 ["createElement"]
      123 GETUPVAL                         R9 6
      124 DUPTABLE                         R10 K49 [{"AutomaticSize", "Font", "LayoutOrder", "Text", "TextColor", "TextSize"}]
      125 GETIMPORT                        R11 K12 [Enum.AutomaticSize.XY]
      127 SETTABLEKS                       R11 R10 K5 ["AutomaticSize"]
      129 GETTABLEKS                       R11 R2 K16 ["creatorLabel"]
      131 GETTABLEKS                       R11 R11 K50 ["font"]
      133 SETTABLEKS                       R11 R10 K45 ["Font"]
      135 NAMECALL                         R11 R3 K29 ["getNextOrder"]
      137 CALL                             R11 1 1
      138 SETTABLEKS                       R11 R10 K7 ["LayoutOrder"]
      140 GETTABLEKS                       R11 R0 K51 ["CreatorName"]
      142 SETTABLEKS                       R11 R10 K46 ["Text"]
      144 GETTABLEKS                       R11 R2 K16 ["creatorLabel"]
      146 GETTABLEKS                       R11 R11 K52 ["textColor"]
      148 SETTABLEKS                       R11 R10 K47 ["TextColor"]
      150 GETTABLEKS                       R11 R2 K16 ["creatorLabel"]
      152 GETTABLEKS                       R11 R11 K33 ["textSize"]
      154 SETTABLEKS                       R11 R10 K48 ["TextSize"]
      156 CALL                             R8 2 1
      157 SETTABLEKS                       R8 R7 K19 ["Name"]
      159 CALL                             R4 3 -1
      160 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Util"]
       27 GETTABLEKS                       R4 R4 K11 ["Urls"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Src"]
       34 GETTABLEKS                       R5 R5 K10 ["Util"]
       36 GETTABLEKS                       R5 R5 K12 ["LayoutOrderIterator"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K9 ["Src"]
       43 GETTABLEKS                       R6 R6 K13 ["Types"]
       45 GETTABLEKS                       R6 R6 K14 ["ThumbnailTypes"]
       47 CALL                             R5 1 1
       48 GETTABLEKS                       R6 R2 K15 ["UI"]
       50 GETTABLEKS                       R6 R6 K16 ["Pane"]
       52 GETTABLEKS                       R7 R2 K15 ["UI"]
       54 GETTABLEKS                       R7 R7 K17 ["TextLabel"]
       56 GETTABLEKS                       R8 R2 K18 ["ContextServices"]
       58 GETTABLEKS                       R8 R8 K19 ["Stylizer"]
       60 DUPCLOSURE                       R9 K20 [PROTO_1]
       61 CAPTURE                          VAL R1
       62 CAPTURE                          VAL R5
       63 CAPTURE                          VAL R8
       64 CAPTURE                          VAL R4
       65 CAPTURE                          VAL R6
       66 CAPTURE                          VAL R3
       67 CAPTURE                          VAL R7
       68 RETURN                           R9 1
