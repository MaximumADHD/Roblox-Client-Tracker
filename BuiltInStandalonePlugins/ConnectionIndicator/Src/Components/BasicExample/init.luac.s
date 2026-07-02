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
       36 DUPTABLE                         R13 K20 [{["LayoutOrder"], ["Size"], ["TextXAlignment"], ["Font"], ["Text"] = "Saving to Roblox Warning"}]
       37 NAMECALL                         R14 R2 K21 ["getNextOrder"]
       39 CALL                             R14 1 1
       40 SETTABLEKS                       R14 R13 K14 ["LayoutOrder"]
       42 GETIMPORT                        R14 K23 [UDim2.new]
       44 LOADN                            R15 1
       45 LOADN                            R16 0
       46 LOADK                            R17 K24 [0.1]
       47 LOADN                            R18 0
       48 CALL                             R14 4 1
       49 SETTABLEKS                       R14 R13 K15 ["Size"]
       51 GETIMPORT                        R14 K27 [Enum.TextXAlignment.Left]
       53 SETTABLEKS                       R14 R13 K16 ["TextXAlignment"]
       55 GETIMPORT                        R14 K29 [Enum.Font.BuilderSansBold]
       57 SETTABLEKS                       R14 R13 K17 ["Font"]
       59 CALL                             R11 2 1
       60 SETTABLEKS                       R11 R10 K9 ["Header"]
       62 GETUPVAL                         R11 2
       63 GETTABLEKS                       R11 R11 K2 ["createElement"]
       65 LOADK                            R12 K13 ["TextLabel"]
       66 DUPTABLE                         R13 K31 [{["LayoutOrder"], ["Size"], ["TextXAlignment"], ["Font"], ["Text"] = "Approaching Size Limit"}]
       67 NAMECALL                         R14 R2 K21 ["getNextOrder"]
       69 CALL                             R14 1 1
       70 SETTABLEKS                       R14 R13 K14 ["LayoutOrder"]
       72 GETIMPORT                        R14 K23 [UDim2.new]
       74 LOADN                            R15 1
       75 LOADN                            R16 0
       76 LOADK                            R17 K24 [0.1]
       77 LOADN                            R18 0
       78 CALL                             R14 4 1
       79 SETTABLEKS                       R14 R13 K15 ["Size"]
       81 GETIMPORT                        R14 K27 [Enum.TextXAlignment.Left]
       83 SETTABLEKS                       R14 R13 K16 ["TextXAlignment"]
       85 GETIMPORT                        R14 K33 [Enum.Font.BuilderSans]
       87 SETTABLEKS                       R14 R13 K17 ["Font"]
       89 CALL                             R11 2 1
       90 SETTABLEKS                       R11 R10 K10 ["subtitle"]
       92 GETUPVAL                         R11 2
       93 GETTABLEKS                       R11 R11 K2 ["createElement"]
       95 LOADK                            R12 K3 ["Frame"]
       96 NEWTABLE                         R13 4 0
       98 GETUPVAL                         R14 2
       99 GETTABLEKS                       R14 R14 K4 ["Tag"]
      101 LOADK                            R15 K34 ["X-Middle X-Fill"]
      102 SETTABLE                         R15 R13 R14
      103 GETIMPORT                        R14 K23 [UDim2.new]
      105 LOADN                            R15 1
      106 LOADN                            R16 0
      107 LOADK                            R17 K35 [0.8]
      108 LOADN                            R18 0
      109 CALL                             R14 4 1
      110 SETTABLEKS                       R14 R13 K15 ["Size"]
      112 NAMECALL                         R14 R2 K21 ["getNextOrder"]
      114 CALL                             R14 1 1
      115 SETTABLEKS                       R14 R13 K14 ["LayoutOrder"]
      117 DUPTABLE                         R14 K37 [{"bodytext"}]
      118 GETUPVAL                         R15 2
      119 GETTABLEKS                       R15 R15 K2 ["createElement"]
      121 LOADK                            R16 K13 ["TextLabel"]
      122 DUPTABLE                         R17 K41 [{["Size"], ["Font"], ["TextWrapped"] = True, ["Text"] = "Your Place is nearing the stable size limit. Consider reducing its size to avoid issues with saving and publishing. Learn more"}]
      123 GETIMPORT                        R18 K23 [UDim2.new]
      125 LOADN                            R19 1
      126 LOADN                            R20 0
      127 LOADN                            R21 1
      128 LOADN                            R22 0
      129 CALL                             R18 4 1
      130 SETTABLEKS                       R18 R17 K15 ["Size"]
      132 GETIMPORT                        R18 K33 [Enum.Font.BuilderSans]
      134 SETTABLEKS                       R18 R17 K17 ["Font"]
      136 CALL                             R15 2 1
      137 SETTABLEKS                       R15 R14 K36 ["bodytext"]
      139 CALL                             R11 3 1
      140 SETTABLEKS                       R11 R10 K11 ["BodyFrame"]
      142 CALL                             R7 3 1
      143 SETTABLEKS                       R7 R6 K6 ["InnerFrame"]
      145 CALL                             R3 3 -1
      146 RETURN                           R3 -1

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
