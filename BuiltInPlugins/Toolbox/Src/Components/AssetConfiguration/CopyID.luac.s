PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["mounted"]
        3 JUMPIFNOT                        R0 ; [+11]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["copyToken"]
        7 GETUPVAL                         R1 1
        8 JUMPIFNOTEQ                      R0 R1 ; [+6]
       10 GETUPVAL                         R0 0
       11 DUPTABLE                         R2 K4 [{["copied"] = False}]
       12 NAMECALL                         R0 R0 K5 ["setState"]
       14 CALL                             R0 2 0
       15 RETURN                           R0 0

PROTO_1:
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
       14 GETTABLEKS                       R2 R1 K5 ["copyToken"]
       16 ADDK                             R2 R2 K6 [1]
       17 SETTABLEKS                       R2 R1 K5 ["copyToken"]
       19 GETUPVAL                         R1 1
       20 GETTABLEKS                       R1 R1 K5 ["copyToken"]
       22 GETUPVAL                         R2 1
       23 DUPTABLE                         R4 K9 [{["copied"] = True}]
       24 NAMECALL                         R2 R2 K10 ["setState"]
       26 CALL                             R2 2 0
       27 GETIMPORT                        R2 K13 [task.delay]
       29 LOADN                            R3 2
       30 NEWCLOSURE                       R4 P0
       31 CAPTURE                          UPVAL U1
       32 CAPTURE                          VAL R1
       33 CALL                             R2 2 0
       34 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R1 K2 [{[1] = False}]
        1 SETTABLEKS                       R1 R0 K3 ["state"]
        3 LOADB                            R1 1
        4 SETTABLEKS                       R1 R0 K4 ["mounted"]
        6 LOADN                            R1 0
        7 SETTABLEKS                       R1 R0 K5 ["copyToken"]
        9 NEWCLOSURE                       R1 P0
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          VAL R0
       12 SETTABLEKS                       R1 R0 K6 ["onCopyClicked"]
       14 RETURN                           R0 0

PROTO_3:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["mounted"]
        3 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["new"]
        7 CALL                             R3 0 1
        8 GETTABLEKS                       R4 R0 K3 ["state"]
       10 GETTABLEKS                       R4 R4 K4 ["copied"]
       12 GETTABLEKS                       R5 R1 K5 ["YPos"]
       14 GETTABLEKS                       R6 R1 K6 ["AssetId"]
       16 GETUPVAL                         R7 1
       17 GETTABLEKS                       R7 R7 K7 ["createElement"]
       19 GETUPVAL                         R8 2
       20 GETTABLEKS                       R8 R8 K8 ["View"]
       22 DUPTABLE                         R9 K14 [{["tag"] = "row auto-x align-y-center gap-xsmall", ["Position"], ["AnchorPoint"], ["Size"]}]
       23 GETIMPORT                        R10 K16 [UDim2.new]
       25 LOADK                            R11 K17 [0.5]
       26 LOADN                            R12 0
       27 LOADN                            R13 0
       28 MOVE                             R14 R5
       29 CALL                             R10 4 1
       30 SETTABLEKS                       R10 R9 K11 ["Position"]
       32 GETIMPORT                        R10 K19 [Vector2.new]
       34 LOADK                            R11 K17 [0.5]
       35 LOADN                            R12 0
       36 CALL                             R10 2 1
       37 SETTABLEKS                       R10 R9 K12 ["AnchorPoint"]
       39 GETIMPORT                        R10 K21 [UDim2.fromOffset]
       41 LOADN                            R11 0
       42 LOADN                            R12 24
       43 CALL                             R10 2 1
       44 SETTABLEKS                       R10 R9 K13 ["Size"]
       46 DUPTABLE                         R10 K24 [{"IDLabel", "CopyButton"}]
       47 GETUPVAL                         R11 1
       48 GETTABLEKS                       R11 R11 K7 ["createElement"]
       50 GETUPVAL                         R12 2
       51 GETTABLEKS                       R12 R12 K25 ["Text"]
       53 DUPTABLE                         R13 K29 [{["tag"] = "auto-xy text-body-medium", ["Text"], ["textStyle"], ["LayoutOrder"]}]
       54 GETTABLEKS                       R18 R1 K31 ["Label"]
       56 ORK                              R15 R18 K30 ["ID:"]
       57 LOADK                            R16 K32 [" "]
       58 FASTCALL1                        TOSTRING R6 ; [+3]
       59 MOVE                             R18 R6
       60 GETIMPORT                        R17 K34 [tostring]
       62 CALL                             R17 1 1
       63 CONCAT                           R14 R15 R17
       64 SETTABLEKS                       R14 R13 K25 ["Text"]
       66 DUPTABLE                         R14 K36 [{"Color3"}]
       67 GETTABLEKS                       R15 R2 K37 ["uploadResult"]
       69 GETTABLEKS                       R15 R15 K38 ["idText"]
       71 SETTABLEKS                       R15 R14 K35 ["Color3"]
       73 SETTABLEKS                       R14 R13 K27 ["textStyle"]
       75 NAMECALL                         R14 R3 K39 ["getNextOrder"]
       77 CALL                             R14 1 1
       78 SETTABLEKS                       R14 R13 K28 ["LayoutOrder"]
       80 CALL                             R11 2 1
       81 SETTABLEKS                       R11 R10 K22 ["IDLabel"]
       83 GETUPVAL                         R11 1
       84 GETTABLEKS                       R11 R11 K7 ["createElement"]
       86 LOADK                            R12 K40 ["ImageButton"]
       87 NEWTABLE                         R13 8 0
       89 GETIMPORT                        R14 K21 [UDim2.fromOffset]
       91 LOADN                            R15 20
       92 LOADN                            R16 20
       93 CALL                             R14 2 1
       94 SETTABLEKS                       R14 R13 K13 ["Size"]
       96 LOADK                            R14 K41 ["rbxasset://textures/StudioToolbox/AssetConfig/copy_2x.png"]
       97 SETTABLEKS                       R14 R13 K42 ["Image"]
       99 GETTABLEKS                       R14 R2 K37 ["uploadResult"]
      101 GETTABLEKS                       R14 R14 K43 ["buttonColor"]
      103 SETTABLEKS                       R14 R13 K44 ["ImageColor3"]
      105 LOADN                            R14 1
      106 SETTABLEKS                       R14 R13 K45 ["BackgroundTransparency"]
      108 NAMECALL                         R14 R3 K39 ["getNextOrder"]
      110 CALL                             R14 1 1
      111 SETTABLEKS                       R14 R13 K28 ["LayoutOrder"]
      113 GETUPVAL                         R14 1
      114 GETTABLEKS                       R14 R14 K46 ["Event"]
      116 GETTABLEKS                       R14 R14 K47 ["MouseButton1Click"]
      118 GETTABLEKS                       R15 R0 K48 ["onCopyClicked"]
      120 SETTABLE                         R15 R13 R14
      121 DUPTABLE                         R14 K50 [{"CopiedLabel"}]
      122 JUMPIFNOT                        R4 ; [+43]
      123 GETUPVAL                         R15 1
      124 GETTABLEKS                       R15 R15 K7 ["createElement"]
      126 GETUPVAL                         R16 2
      127 GETTABLEKS                       R16 R16 K25 ["Text"]
      129 DUPTABLE                         R17 K51 [{["tag"] = "auto-xy text-body-medium", ["Text"], ["textStyle"], ["AnchorPoint"], ["Position"]}]
      130 GETTABLEKS                       R18 R1 K52 ["Localization"]
      132 LOADK                            R20 K53 ["AssetConfigUpload"]
      133 LOADK                            R21 K54 ["IDCopied"]
      134 NAMECALL                         R18 R18 K55 ["getText"]
      136 CALL                             R18 3 1
      137 SETTABLEKS                       R18 R17 K25 ["Text"]
      139 DUPTABLE                         R18 K36 [{"Color3"}]
      140 GETTABLEKS                       R19 R2 K37 ["uploadResult"]
      142 GETTABLEKS                       R19 R19 K56 ["greenText"]
      144 SETTABLEKS                       R19 R18 K35 ["Color3"]
      146 SETTABLEKS                       R18 R17 K27 ["textStyle"]
      148 GETIMPORT                        R18 K19 [Vector2.new]
      150 LOADN                            R19 0
      151 LOADK                            R20 K17 [0.5]
      152 CALL                             R18 2 1
      153 SETTABLEKS                       R18 R17 K12 ["AnchorPoint"]
      155 GETIMPORT                        R18 K16 [UDim2.new]
      157 LOADN                            R19 1
      158 LOADN                            R20 8
      159 LOADK                            R21 K17 [0.5]
      160 LOADN                            R22 0
      161 CALL                             R18 4 1
      162 SETTABLEKS                       R18 R17 K11 ["Position"]
      164 CALL                             R15 2 1
      165 JUMPIF                           R15 ; [+1]
      166 LOADNIL                          R15
      167 SETTABLEKS                       R15 R14 K49 ["CopiedLabel"]
      169 CALL                             R11 3 1
      170 SETTABLEKS                       R11 R10 K23 ["CopyButton"]
      172 CALL                             R7 3 -1
      173 RETURN                           R7 -1

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
       39 GETTABLEKS                       R7 R6 K14 ["Util"]
       41 GETTABLEKS                       R7 R7 K15 ["LayoutOrderIterator"]
       43 GETIMPORT                        R8 K9 [require]
       45 GETTABLEKS                       R9 R2 K13 ["Framework"]
       47 CALL                             R8 1 1
       48 GETTABLEKS                       R8 R8 K16 ["ContextServices"]
       50 GETTABLEKS                       R9 R8 K17 ["withContext"]
       52 GETTABLEKS                       R10 R3 K18 ["PureComponent"]
       54 LOADK                            R12 K19 ["CopyID"]
       55 NAMECALL                         R10 R10 K20 ["extend"]
       57 CALL                             R10 2 1
       58 DUPCLOSURE                       R11 K21 [PROTO_2]
       59 CAPTURE                          VAL R1
       60 SETTABLEKS                       R11 R10 K22 ["init"]
       62 DUPCLOSURE                       R11 K23 [PROTO_3]
       63 SETTABLEKS                       R11 R10 K24 ["willUnmount"]
       65 DUPCLOSURE                       R11 K25 [PROTO_4]
       66 CAPTURE                          VAL R7
       67 CAPTURE                          VAL R4
       68 CAPTURE                          VAL R5
       69 SETTABLEKS                       R11 R10 K26 ["render"]
       71 MOVE                             R11 R9
       72 DUPTABLE                         R12 K29 [{"Stylizer", "Localization"}]
       73 GETTABLEKS                       R13 R8 K27 ["Stylizer"]
       75 SETTABLEKS                       R13 R12 K27 ["Stylizer"]
       77 GETTABLEKS                       R13 R8 K28 ["Localization"]
       79 SETTABLEKS                       R13 R12 K28 ["Localization"]
       81 CALL                             R11 1 1
       82 MOVE                             R12 R10
       83 CALL                             R11 1 1
       84 MOVE                             R10 R11
       85 RETURN                           R10 1
