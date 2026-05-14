PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["OnWidthChanged"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["X"]
        6 LOADN                            R5 2
        7 GETUPVAL                         R6 2
        8 MUL                              R4 R5 R6
        9 ADD                              R2 R3 R4
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R4 R0 K1 ["Title"]
        7 LOADN                            R5 16
        8 GETIMPORT                        R6 K5 [Enum.Font.SourceSansSemibold]
       10 GETIMPORT                        R7 K7 [Vector2.new]
       12 LOADN                            R8 16
       13 LOADN                            R9 16
       14 CALL                             R7 2 -1
       15 NAMECALL                         R2 R2 K8 ["GetTextSize"]
       17 CALL                             R2 -1 1
       18 GETUPVAL                         R3 2
       19 GETTABLEKS                       R3 R3 K9 ["createElement"]
       21 LOADK                            R4 K10 ["Frame"]
       22 NEWTABLE                         R5 4 0
       24 NAMECALL                         R6 R1 K11 ["getNextOrder"]
       26 CALL                             R6 1 1
       27 SETTABLEKS                       R6 R5 K12 ["LayoutOrder"]
       29 GETUPVAL                         R6 2
       30 GETTABLEKS                       R6 R6 K13 ["Tag"]
       32 LOADK                            R7 K14 ["X-FitY X-Row Component-ThumbnailAndTextInfo"]
       33 SETTABLE                         R7 R5 R6
       34 GETUPVAL                         R6 2
       35 GETTABLEKS                       R6 R6 K15 ["Change"]
       37 GETTABLEKS                       R6 R6 K16 ["AbsoluteSize"]
       39 NEWCLOSURE                       R7 P0
       40 CAPTURE                          VAL R0
       41 CAPTURE                          VAL R2
       42 CAPTURE                          UPVAL U3
       43 SETTABLE                         R7 R5 R6
       44 DUPTABLE                         R6 K20 [{"ThumbnailContainer", "Shimmer", "TextInfo"}]
       45 GETTABLEKS                       R8 R0 K21 ["Image"]
       47 JUMPIFEQKS                       R8 K22 [""] ; [+23]
       49 GETUPVAL                         R7 2
       50 GETTABLEKS                       R7 R7 K9 ["createElement"]
       52 LOADK                            R8 K23 ["ImageLabel"]
       53 NEWTABLE                         R9 4 0
       55 NAMECALL                         R10 R1 K11 ["getNextOrder"]
       57 CALL                             R10 1 1
       58 SETTABLEKS                       R10 R9 K12 ["LayoutOrder"]
       60 GETTABLEKS                       R10 R0 K21 ["Image"]
       62 SETTABLEKS                       R10 R9 K21 ["Image"]
       64 GETUPVAL                         R10 2
       65 GETTABLEKS                       R10 R10 K13 ["Tag"]
       67 LOADK                            R11 K24 ["Thumbnail"]
       68 SETTABLE                         R11 R9 R10
       69 CALL                             R7 2 1
       70 JUMP                             ; [+1]
       71 LOADNIL                          R7
       72 SETTABLEKS                       R7 R6 K17 ["ThumbnailContainer"]
       74 GETTABLEKS                       R8 R0 K21 ["Image"]
       76 JUMPIFNOTEQKS                    R8 K22 [""] ; [+22]
       78 GETUPVAL                         R7 2
       79 GETTABLEKS                       R7 R7 K9 ["createElement"]
       81 GETUPVAL                         R8 4
       82 DUPTABLE                         R9 K26 [{"Size", "LayoutOrder"}]
       83 GETIMPORT                        R10 K28 [UDim2.new]
       85 LOADN                            R11 0
       86 LOADN                            R12 50
       87 LOADN                            R13 0
       88 LOADN                            R14 50
       89 CALL                             R10 4 1
       90 SETTABLEKS                       R10 R9 K25 ["Size"]
       92 NAMECALL                         R10 R1 K11 ["getNextOrder"]
       94 CALL                             R10 1 1
       95 SETTABLEKS                       R10 R9 K12 ["LayoutOrder"]
       97 CALL                             R7 2 1
       98 JUMP                             ; [+1]
       99 LOADNIL                          R7
      100 SETTABLEKS                       R7 R6 K18 ["Shimmer"]
      102 GETUPVAL                         R7 2
      103 GETTABLEKS                       R7 R7 K9 ["createElement"]
      105 GETUPVAL                         R8 5
      106 DUPTABLE                         R9 K32 [{"Title", "Subtitle", "Status", "Size", "LayoutOrder", "OnShown"}]
      107 GETTABLEKS                       R10 R0 K1 ["Title"]
      109 SETTABLEKS                       R10 R9 K1 ["Title"]
      111 GETTABLEKS                       R10 R0 K29 ["Subtitle"]
      113 SETTABLEKS                       R10 R9 K29 ["Subtitle"]
      115 GETTABLEKS                       R10 R0 K30 ["Status"]
      117 SETTABLEKS                       R10 R9 K30 ["Status"]
      119 GETIMPORT                        R10 K28 [UDim2.new]
      121 LOADN                            R11 1
      122 GETUPVAL                         R13 3
      123 MINUS                            R12 R13
      124 LOADN                            R13 0
      125 LOADN                            R14 0
      126 CALL                             R10 4 1
      127 SETTABLEKS                       R10 R9 K25 ["Size"]
      129 NAMECALL                         R10 R1 K11 ["getNextOrder"]
      131 CALL                             R10 1 1
      132 SETTABLEKS                       R10 R9 K12 ["LayoutOrder"]
      134 GETTABLEKS                       R10 R0 K31 ["OnShown"]
      136 SETTABLEKS                       R10 R9 K31 ["OnShown"]
      138 CALL                             R7 2 1
      139 SETTABLEKS                       R7 R6 K19 ["TextInfo"]
      141 CALL                             R3 3 -1
      142 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CancellableDialog"]
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
       21 GETTABLEKS                       R3 R2 K9 ["Util"]
       23 GETTABLEKS                       R3 R3 K10 ["LayoutOrderIterator"]
       25 GETTABLEKS                       R4 R0 K11 ["Src"]
       27 GETTABLEKS                       R4 R4 K12 ["Components"]
       29 GETIMPORT                        R5 K5 [require]
       31 GETTABLEKS                       R6 R4 K13 ["Shimmer"]
       33 CALL                             R5 1 1
       34 GETIMPORT                        R6 K5 [require]
       36 GETTABLEKS                       R7 R4 K14 ["TextInfo"]
       38 CALL                             R6 1 1
       39 GETIMPORT                        R7 K5 [require]
       41 GETIMPORT                        R8 K1 [script]
       43 GETTABLEKS                       R8 R8 K15 ["styles"]
       45 CALL                             R7 1 1
       46 LOADK                            R11 K16 ["ThumbnailSize"]
       47 NAMECALL                         R9 R7 K17 ["GetAttribute"]
       49 CALL                             R9 2 1
       50 GETTABLEKS                       R9 R9 K18 ["X"]
       52 GETTABLEKS                       R9 R9 K19 ["Offset"]
       54 LOADK                            R12 K20 ["ThumbnailToContentPadding"]
       55 NAMECALL                         R10 R7 K17 ["GetAttribute"]
       57 CALL                             R10 2 1
       58 GETTABLEKS                       R10 R10 K19 ["Offset"]
       60 ADD                              R8 R9 R10
       61 GETIMPORT                        R9 K22 [game]
       63 LOADK                            R11 K23 ["TextService"]
       64 NAMECALL                         R9 R9 K24 ["GetService"]
       66 CALL                             R9 2 1
       67 DUPCLOSURE                       R10 K25 [PROTO_1]
       68 CAPTURE                          VAL R3
       69 CAPTURE                          VAL R9
       70 CAPTURE                          VAL R1
       71 CAPTURE                          VAL R8
       72 CAPTURE                          VAL R5
       73 CAPTURE                          VAL R6
       74 RETURN                           R10 1
