PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R4 R4 K0 ["props"]
        4 GETTABLEKS                       R4 R4 K1 ["AssetId"]
        6 FASTCALL1                        TOSTRING R4 ; [+2]
        7 GETIMPORT                        R3 K3 [tostring]
        9 CALL                             R3 1 1
       10 NAMECALL                         R1 R1 K4 ["CopyToClipboard"]
       12 CALL                             R1 2 0
       13 GETUPVAL                         R1 1
       14 DUPTABLE                         R3 K7 [{["copied"] = True}]
       15 NAMECALL                         R1 R1 K8 ["setState"]
       17 CALL                             R1 2 0
       18 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R1 K2 [{[1] = False}]
        1 SETTABLEKS                       R1 R0 K3 ["state"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          VAL R0
        6 SETTABLEKS                       R1 R0 K4 ["onCopyClicked"]
        8 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        6 GETTABLEKS                       R4 R2 K3 ["copied"]
        8 GETTABLEKS                       R5 R1 K4 ["YPos"]
       10 GETTABLEKS                       R6 R1 K5 ["AssetId"]
       12 GETUPVAL                         R7 0
       13 GETTABLEKS                       R7 R7 K6 ["createElement"]
       15 GETUPVAL                         R8 1
       16 GETTABLEKS                       R8 R8 K7 ["View"]
       18 DUPTABLE                         R9 K11 [{"Position", "AnchorPoint", "Size"}]
       19 GETIMPORT                        R10 K14 [UDim2.new]
       21 LOADK                            R11 K15 [0.5]
       22 LOADN                            R12 0
       23 LOADN                            R13 0
       24 MOVE                             R14 R5
       25 CALL                             R10 4 1
       26 SETTABLEKS                       R10 R9 K8 ["Position"]
       28 GETIMPORT                        R10 K17 [Vector2.new]
       30 LOADK                            R11 K15 [0.5]
       31 LOADN                            R12 0
       32 CALL                             R10 2 1
       33 SETTABLEKS                       R10 R9 K9 ["AnchorPoint"]
       35 GETIMPORT                        R10 K14 [UDim2.new]
       37 LOADN                            R11 0
       38 LOADN                            R12 145
       39 LOADN                            R13 0
       40 LOADN                            R14 24
       41 CALL                             R10 4 1
       42 SETTABLEKS                       R10 R9 K10 ["Size"]
       44 DUPTABLE                         R10 K20 [{"Row", "CopiedLabel"}]
       45 GETUPVAL                         R11 0
       46 GETTABLEKS                       R11 R11 K6 ["createElement"]
       48 GETUPVAL                         R12 1
       49 GETTABLEKS                       R12 R12 K7 ["View"]
       51 DUPTABLE                         R13 K23 [{["tag"] = "row align-x-center align-y-center gap-xsmall", ["Size"]}]
       52 GETIMPORT                        R14 K14 [UDim2.new]
       54 LOADN                            R15 1
       55 LOADN                            R16 0
       56 LOADN                            R17 1
       57 LOADN                            R18 0
       58 CALL                             R14 4 1
       59 SETTABLEKS                       R14 R13 K10 ["Size"]
       61 DUPTABLE                         R14 K26 [{"IDLabel", "CopyButton"}]
       62 GETUPVAL                         R15 0
       63 GETTABLEKS                       R15 R15 K6 ["createElement"]
       65 GETUPVAL                         R16 1
       66 GETTABLEKS                       R16 R16 K27 ["Text"]
       68 DUPTABLE                         R17 K32 [{["tag"] = "text-body-medium text-align-x-right", ["Text"], ["textStyle"], ["Size"], ["LayoutOrder"] = 1}]
       69 LOADK                            R19 K33 ["ID: "]
       70 MOVE                             R20 R6
       71 CONCAT                           R18 R19 R20
       72 SETTABLEKS                       R18 R17 K27 ["Text"]
       74 DUPTABLE                         R18 K35 [{"Color3"}]
       75 GETTABLEKS                       R19 R3 K36 ["uploadResult"]
       77 GETTABLEKS                       R19 R19 K37 ["idText"]
       79 SETTABLEKS                       R19 R18 K34 ["Color3"]
       81 SETTABLEKS                       R18 R17 K29 ["textStyle"]
       83 GETIMPORT                        R18 K14 [UDim2.new]
       85 LOADN                            R19 0
       86 LOADN                            R20 120
       87 LOADN                            R21 1
       88 LOADN                            R22 0
       89 CALL                             R18 4 1
       90 SETTABLEKS                       R18 R17 K10 ["Size"]
       92 CALL                             R15 2 1
       93 SETTABLEKS                       R15 R14 K24 ["IDLabel"]
       95 GETUPVAL                         R15 0
       96 GETTABLEKS                       R15 R15 K6 ["createElement"]
       98 LOADK                            R16 K38 ["ImageButton"]
       99 NEWTABLE                         R17 8 0
      101 GETIMPORT                        R18 K14 [UDim2.new]
      103 LOADN                            R19 0
      104 LOADN                            R20 20
      105 LOADN                            R21 0
      106 LOADN                            R22 20
      107 CALL                             R18 4 1
      108 SETTABLEKS                       R18 R17 K10 ["Size"]
      110 LOADK                            R18 K39 ["rbxasset://textures/StudioToolbox/AssetConfig/copy_2x.png"]
      111 SETTABLEKS                       R18 R17 K40 ["Image"]
      113 GETTABLEKS                       R18 R3 K36 ["uploadResult"]
      115 GETTABLEKS                       R18 R18 K41 ["buttonColor"]
      117 SETTABLEKS                       R18 R17 K42 ["ImageColor3"]
      119 LOADN                            R18 1
      120 SETTABLEKS                       R18 R17 K43 ["BackgroundTransparency"]
      122 LOADN                            R18 2
      123 SETTABLEKS                       R18 R17 K30 ["LayoutOrder"]
      125 GETUPVAL                         R18 0
      126 GETTABLEKS                       R18 R18 K44 ["Event"]
      128 GETTABLEKS                       R18 R18 K45 ["MouseButton1Click"]
      130 GETTABLEKS                       R19 R0 K46 ["onCopyClicked"]
      132 SETTABLE                         R19 R17 R18
      133 CALL                             R15 2 1
      134 SETTABLEKS                       R15 R14 K25 ["CopyButton"]
      136 CALL                             R11 3 1
      137 SETTABLEKS                       R11 R10 K18 ["Row"]
      139 JUMPIFNOT                        R4 ; [+52]
      140 GETUPVAL                         R11 0
      141 GETTABLEKS                       R11 R11 K6 ["createElement"]
      143 GETUPVAL                         R12 1
      144 GETTABLEKS                       R12 R12 K27 ["Text"]
      146 DUPTABLE                         R13 K48 [{["tag"] = "text-body-medium text-align-x-center", ["Text"], ["textStyle"], ["Size"], ["AnchorPoint"], ["Position"]}]
      147 GETTABLEKS                       R14 R1 K49 ["Localization"]
      149 LOADK                            R16 K50 ["AssetConfigUpload"]
      150 LOADK                            R17 K51 ["IDCopied"]
      151 NAMECALL                         R14 R14 K52 ["getText"]
      153 CALL                             R14 3 1
      154 SETTABLEKS                       R14 R13 K27 ["Text"]
      156 DUPTABLE                         R14 K35 [{"Color3"}]
      157 GETTABLEKS                       R15 R3 K36 ["uploadResult"]
      159 GETTABLEKS                       R15 R15 K53 ["greenText"]
      161 SETTABLEKS                       R15 R14 K34 ["Color3"]
      163 SETTABLEKS                       R14 R13 K29 ["textStyle"]
      165 GETIMPORT                        R14 K14 [UDim2.new]
      167 LOADN                            R15 0
      168 LOADN                            R16 64
      169 LOADN                            R17 1
      170 LOADN                            R18 0
      171 CALL                             R14 4 1
      172 SETTABLEKS                       R14 R13 K10 ["Size"]
      174 GETIMPORT                        R14 K17 [Vector2.new]
      176 LOADN                            R15 0
      177 LOADK                            R16 K15 [0.5]
      178 CALL                             R14 2 1
      179 SETTABLEKS                       R14 R13 K9 ["AnchorPoint"]
      181 GETIMPORT                        R14 K14 [UDim2.new]
      183 LOADN                            R15 0
      184 LOADN                            R16 150
      185 LOADK                            R17 K15 [0.5]
      186 LOADN                            R18 0
      187 CALL                             R14 4 1
      188 SETTABLEKS                       R14 R13 K8 ["Position"]
      190 CALL                             R11 2 1
      191 JUMPIF                           R11 ; [+1]
      192 LOADNIL                          R11
      193 SETTABLEKS                       R11 R10 K19 ["CopiedLabel"]
      195 CALL                             R7 3 -1
      196 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [game]
       13 LOADK                            R3 K5 ["StudioService"]
       14 NAMECALL                         R1 R1 K6 ["GetService"]
       16 CALL                             R1 2 1
       17 GETTABLEKS                       R2 R0 K7 ["Packages"]
       19 GETIMPORT                        R3 K9 [require]
       21 GETTABLEKS                       R4 R2 K10 ["Roact"]
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K9 [require]
       26 GETTABLEKS                       R5 R2 K11 ["React"]
       28 CALL                             R4 1 1
       29 GETIMPORT                        R5 K9 [require]
       31 GETTABLEKS                       R6 R2 K12 ["Foundation"]
       33 CALL                             R5 1 1
       34 GETIMPORT                        R6 K9 [require]
       36 GETTABLEKS                       R7 R2 K13 ["Framework"]
       38 CALL                             R6 1 1
       39 GETTABLEKS                       R6 R6 K14 ["ContextServices"]
       41 GETTABLEKS                       R7 R6 K15 ["withContext"]
       43 GETTABLEKS                       R8 R3 K16 ["PureComponent"]
       45 LOADK                            R10 K17 ["CopyID"]
       46 NAMECALL                         R8 R8 K18 ["extend"]
       48 CALL                             R8 2 1
       49 DUPCLOSURE                       R9 K19 [PROTO_1]
       50 CAPTURE                          VAL R1
       51 SETTABLEKS                       R9 R8 K20 ["init"]
       53 DUPCLOSURE                       R9 K21 [PROTO_2]
       54 CAPTURE                          VAL R4
       55 CAPTURE                          VAL R5
       56 SETTABLEKS                       R9 R8 K22 ["render"]
       58 MOVE                             R9 R7
       59 DUPTABLE                         R10 K25 [{"Stylizer", "Localization"}]
       60 GETTABLEKS                       R11 R6 K23 ["Stylizer"]
       62 SETTABLEKS                       R11 R10 K23 ["Stylizer"]
       64 GETTABLEKS                       R11 R6 K24 ["Localization"]
       66 SETTABLEKS                       R11 R10 K24 ["Localization"]
       68 CALL                             R9 1 1
       69 MOVE                             R10 R8
       70 CALL                             R9 1 1
       71 MOVE                             R8 R9
       72 RETURN                           R8 1
