PROTO_0:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["new"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K2 ["createElement"]
       11 LOADK                            R4 K3 ["Frame"]
       12 NEWTABLE                         R5 1 0
       14 GETUPVAL                         R6 2
       15 GETTABLEKS                       R6 R6 K4 ["Tag"]
       17 LOADK                            R7 K5 ["Component-BasicExample X-Column X-Middle X-Fill"]
       18 SETTABLE                         R7 R5 R6
       19 DUPTABLE                         R6 K7 [{"InnerFrame"}]
       20 GETUPVAL                         R7 2
       21 GETTABLEKS                       R7 R7 K2 ["createElement"]
       23 LOADK                            R8 K3 ["Frame"]
       24 NEWTABLE                         R9 1 0
       26 GETUPVAL                         R10 2
       27 GETTABLEKS                       R10 R10 K4 ["Tag"]
       29 LOADK                            R11 K8 ["InnerFrame X-Column X-Top X-Fill"]
       30 SETTABLE                         R11 R9 R10
       31 DUPTABLE                         R10 K12 [{"Header", "subtitle", "BodyFrame"}]
       32 GETUPVAL                         R11 2
       33 GETTABLEKS                       R11 R11 K2 ["createElement"]
       35 LOADK                            R12 K13 ["TextLabel"]
       36 DUPTABLE                         R13 K19 [{"LayoutOrder", "Size", "TextXAlignment", "Font", "Text"}]
       37 NAMECALL                         R14 R2 K20 ["getNextOrder"]
       39 CALL                             R14 1 1
       40 SETTABLEKS                       R14 R13 K14 ["LayoutOrder"]
       42 GETIMPORT                        R14 K22 [UDim2.new]
       44 LOADN                            R15 1
       45 LOADN                            R16 0
       46 LOADK                            R17 K23 [0.1]
       47 LOADN                            R18 0
       48 CALL                             R14 4 1
       49 SETTABLEKS                       R14 R13 K15 ["Size"]
       51 GETIMPORT                        R14 K26 [Enum.TextXAlignment.Left]
       53 SETTABLEKS                       R14 R13 K16 ["TextXAlignment"]
       55 GETIMPORT                        R14 K28 [Enum.Font.BuilderSansBold]
       57 SETTABLEKS                       R14 R13 K17 ["Font"]
       59 LOADK                            R14 K29 ["Saving to Roblox Warning"]
       60 SETTABLEKS                       R14 R13 K18 ["Text"]
       62 CALL                             R11 2 1
       63 SETTABLEKS                       R11 R10 K9 ["Header"]
       65 GETUPVAL                         R11 2
       66 GETTABLEKS                       R11 R11 K2 ["createElement"]
       68 LOADK                            R12 K13 ["TextLabel"]
       69 DUPTABLE                         R13 K19 [{"LayoutOrder", "Size", "TextXAlignment", "Font", "Text"}]
       70 NAMECALL                         R14 R2 K20 ["getNextOrder"]
       72 CALL                             R14 1 1
       73 SETTABLEKS                       R14 R13 K14 ["LayoutOrder"]
       75 GETIMPORT                        R14 K22 [UDim2.new]
       77 LOADN                            R15 1
       78 LOADN                            R16 0
       79 LOADK                            R17 K23 [0.1]
       80 LOADN                            R18 0
       81 CALL                             R14 4 1
       82 SETTABLEKS                       R14 R13 K15 ["Size"]
       84 GETIMPORT                        R14 K26 [Enum.TextXAlignment.Left]
       86 SETTABLEKS                       R14 R13 K16 ["TextXAlignment"]
       88 GETIMPORT                        R14 K31 [Enum.Font.BuilderSans]
       90 SETTABLEKS                       R14 R13 K17 ["Font"]
       92 LOADK                            R14 K32 ["Approaching Size Limit"]
       93 SETTABLEKS                       R14 R13 K18 ["Text"]
       95 CALL                             R11 2 1
       96 SETTABLEKS                       R11 R10 K10 ["subtitle"]
       98 GETUPVAL                         R11 2
       99 GETTABLEKS                       R11 R11 K2 ["createElement"]
      101 LOADK                            R12 K3 ["Frame"]
      102 NEWTABLE                         R13 4 0
      104 GETUPVAL                         R14 2
      105 GETTABLEKS                       R14 R14 K4 ["Tag"]
      107 LOADK                            R15 K33 ["X-Middle X-Fill"]
      108 SETTABLE                         R15 R13 R14
      109 GETIMPORT                        R14 K22 [UDim2.new]
      111 LOADN                            R15 1
      112 LOADN                            R16 0
      113 LOADK                            R17 K34 [0.8]
      114 LOADN                            R18 0
      115 CALL                             R14 4 1
      116 SETTABLEKS                       R14 R13 K15 ["Size"]
      118 NAMECALL                         R14 R2 K20 ["getNextOrder"]
      120 CALL                             R14 1 1
      121 SETTABLEKS                       R14 R13 K14 ["LayoutOrder"]
      123 DUPTABLE                         R14 K36 [{"bodytext"}]
      124 GETUPVAL                         R15 2
      125 GETTABLEKS                       R15 R15 K2 ["createElement"]
      127 LOADK                            R16 K13 ["TextLabel"]
      128 DUPTABLE                         R17 K38 [{"Size", "Font", "TextWrapped", "Text"}]
      129 GETIMPORT                        R18 K22 [UDim2.new]
      131 LOADN                            R19 1
      132 LOADN                            R20 0
      133 LOADN                            R21 1
      134 LOADN                            R22 0
      135 CALL                             R18 4 1
      136 SETTABLEKS                       R18 R17 K15 ["Size"]
      138 GETIMPORT                        R18 K31 [Enum.Font.BuilderSans]
      140 SETTABLEKS                       R18 R17 K17 ["Font"]
      142 LOADB                            R18 1
      143 SETTABLEKS                       R18 R17 K37 ["TextWrapped"]
      145 LOADK                            R18 K39 ["Your Place is nearing the stable size limit. Consider reducing its size to avoid issues with saving and publishing. Learn more"]
      146 SETTABLEKS                       R18 R17 K18 ["Text"]
      148 CALL                             R15 2 1
      149 SETTABLEKS                       R15 R14 K35 ["bodytext"]
      151 CALL                             R11 3 1
      152 SETTABLEKS                       R11 R10 K11 ["BodyFrame"]
      154 CALL                             R7 3 1
      155 SETTABLEKS                       R7 R6 K6 ["InnerFrame"]
      157 CALL                             R3 3 -1
      158 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ConnectionIndicator"]
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
       21 GETTABLEKS                       R3 R2 K9 ["ContextServices"]
       23 GETTABLEKS                       R4 R3 K10 ["Localization"]
       25 GETTABLEKS                       R5 R2 K11 ["Util"]
       27 GETTABLEKS                       R5 R5 K12 ["LayoutOrderIterator"]
       29 DUPCLOSURE                       R6 K13 [PROTO_0]
       30 CAPTURE                          VAL R4
       31 CAPTURE                          VAL R5
       32 CAPTURE                          VAL R1
       33 RETURN                           R6 1
