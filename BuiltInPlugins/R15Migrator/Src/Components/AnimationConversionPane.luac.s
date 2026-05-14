PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["copy"]
        3 GETTABLEKS                       R2 R0 K1 ["expanded"]
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 1
        7 GETUPVAL                         R5 1
        8 GETTABLE                         R4 R1 R5
        9 NOT                              R3 R4
       10 SETTABLE                         R3 R1 R2
       11 DUPTABLE                         R2 K2 [{"expanded"}]
       12 SETTABLEKS                       R1 R2 K1 ["expanded"]
       14 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 NAMECALL                         R0 R0 K0 ["setState"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 RETURN                           R1 1

PROTO_3:
        0 DUPTABLE                         R1 K3 [{"expanded", "paneSize", "alert"}]
        1 NEWTABLE                         R2 2 0
        3 LOADB                            R3 1
        4 SETTABLEKS                       R3 R2 K4 ["Preview"]
        6 LOADB                            R3 1
        7 SETTABLEKS                       R3 R2 K5 ["List"]
        9 SETTABLEKS                       R2 R1 K0 ["expanded"]
       11 GETIMPORT                        R2 K8 [Vector2.new]
       13 CALL                             R2 0 1
       14 SETTABLEKS                       R2 R1 K1 ["paneSize"]
       16 DUPTABLE                         R2 K10 [{"show"}]
       17 LOADB                            R3 0
       18 SETTABLEKS                       R3 R2 K9 ["show"]
       20 SETTABLEKS                       R2 R1 K2 ["alert"]
       22 SETTABLEKS                       R1 R0 K11 ["state"]
       24 NEWCLOSURE                       R1 P0
       25 CAPTURE                          VAL R0
       26 CAPTURE                          UPVAL U0
       27 SETTABLEKS                       R1 R0 K12 ["onExpandedChanged"]
       29 GETUPVAL                         R1 1
       30 GETTABLEKS                       R1 R1 K13 ["createRef"]
       32 CALL                             R1 0 1
       33 SETTABLEKS                       R1 R0 K14 ["ref"]
       35 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"paneSize"}]
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K2 ["AbsoluteSize"]
        5 SETTABLEKS                       R3 R2 K0 ["paneSize"]
        7 NAMECALL                         R0 R0 K3 ["setState"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["ref"]
        2 NAMECALL                         R1 R1 K1 ["getValue"]
        4 CALL                             R1 1 1
        5 JUMPIF                           R1 ; [+1]
        6 RETURN                           R0 0
        7 DUPTABLE                         R4 K3 [{"paneSize"}]
        8 GETTABLEKS                       R5 R1 K4 ["AbsoluteSize"]
       10 SETTABLEKS                       R5 R4 K2 ["paneSize"]
       12 NAMECALL                         R2 R0 K5 ["setState"]
       14 CALL                             R2 2 0
       15 LOADK                            R4 K4 ["AbsoluteSize"]
       16 NAMECALL                         R2 R1 K6 ["GetPropertyChangedSignal"]
       18 CALL                             R2 2 1
       19 NEWCLOSURE                       R4 P0
       20 CAPTURE                          VAL R0
       21 CAPTURE                          VAL R1
       22 NAMECALL                         R2 R2 K7 ["Connect"]
       24 CALL                             R2 2 1
       25 SETTABLEKS                       R2 R0 K8 ["onPaneSizeChanged"]
       27 RETURN                           R0 0

PROTO_6:
        0 NAMECALL                         R1 R0 K0 ["initRef"]
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["onPaneSizeChanged"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["onPaneSizeChanged"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["ref"]
        2 GETTABLEKS                       R1 R1 K1 ["current"]
        4 JUMPIFNOT                        R1 ; [+6]
        5 GETTABLEKS                       R1 R0 K2 ["onPaneSizeChanged"]
        7 JUMPIF                           R1 ; [+3]
        8 NAMECALL                         R1 R0 K3 ["initRef"]
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["animations"]
        4 NEWTABLE                         R2 0 0
        6 MOVE                             R3 R1
        7 LOADNIL                          R4
        8 LOADNIL                          R5
        9 FORGPREP                         R3
       10 GETTABLEKS                       R8 R7 K2 ["animationAssetInfo"]
       12 DUPTABLE                         R9 K4 [{"id"}]
       13 LOADK                            R10 K5 [""]
       14 SETTABLEKS                       R10 R9 K3 ["id"]
       16 GETTABLEKS                       R10 R7 K6 ["converted"]
       18 JUMPIFNOT                        R10 ; [+21]
       19 GETTABLEKS                       R11 R7 K6 ["converted"]
       21 FASTCALL1                        TONUMBER R11 ; [+2]
       22 GETIMPORT                        R10 K8 [tonumber]
       24 CALL                             R10 1 1
       25 GETUPVAL                         R12 0
       26 GETTABLEKS                       R12 R12 K9 ["isValidAssetId"]
       28 MOVE                             R13 R10
       29 CALL                             R12 1 1
       30 JUMPIFNOT                        R12 ; [+6]
       31 FASTCALL1                        TOSTRING R10 ; [+3]
       32 MOVE                             R12 R10
       33 GETIMPORT                        R11 K11 [tostring]
       35 CALL                             R11 1 1
       36 JUMP                             ; [+1]
       37 LOADK                            R11 K5 [""]
       38 SETTABLEKS                       R11 R9 K6 ["converted"]
       40 GETUPVAL                         R12 1
       41 GETTABLEKS                       R12 R12 K12 ["RobloxAsset"]
       43 NAMECALL                         R10 R8 K13 ["IsA"]
       45 CALL                             R10 2 1
       46 JUMPIFNOT                        R10 ; [+8]
       47 GETTABLEKS                       R11 R8 K3 ["id"]
       49 FASTCALL1                        TOSTRING R11 ; [+2]
       50 GETIMPORT                        R10 K11 [tostring]
       52 CALL                             R10 1 1
       53 SETTABLEKS                       R10 R9 K3 ["id"]
       55 SETTABLE                         R9 R2 R6
       56 FORGLOOP                         R3 2 ; [-47]
       58 RETURN                           R2 1

PROTO_10:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R4 R3 K1 ["Stylizer"]
        4 GETTABLEKS                       R4 R4 K2 ["Header"]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R5 R5 K3 ["new"]
        9 CALL                             R5 0 1
       10 GETTABLEKS                       R7 R0 K4 ["state"]
       12 GETTABLEKS                       R7 R7 K5 ["expanded"]
       14 GETTABLE                         R6 R7 R2
       15 GETUPVAL                         R7 1
       16 GETTABLEKS                       R7 R7 K6 ["createElement"]
       18 GETUPVAL                         R8 2
       19 GETUPVAL                         R9 3
       20 GETTABLEKS                       R9 R9 K7 ["join"]
       22 GETTABLEKS                       R10 R4 K8 ["Container"]
       24 DUPTABLE                         R11 K10 [{"OnClick"}]
       25 GETTABLEKS                       R12 R0 K11 ["onExpandedChanged"]
       27 MOVE                             R13 R2
       28 CALL                             R12 1 1
       29 SETTABLEKS                       R12 R11 K9 ["OnClick"]
       31 CALL                             R9 2 1
       32 DUPTABLE                         R10 K14 [{"Arrow", "Text"}]
       33 GETUPVAL                         R11 1
       34 GETTABLEKS                       R11 R11 K6 ["createElement"]
       36 GETUPVAL                         R12 4
       37 DUPTABLE                         R13 K18 [{"Style", "StyleModifier", "LayoutOrder"}]
       38 GETTABLEKS                       R14 R4 K12 ["Arrow"]
       40 SETTABLEKS                       R14 R13 K15 ["Style"]
       42 JUMPIFNOT                        R6 ; [+4]
       43 GETUPVAL                         R14 5
       44 GETTABLEKS                       R14 R14 K19 ["Selected"]
       46 JUMP                             ; [+1]
       47 LOADNIL                          R14
       48 SETTABLEKS                       R14 R13 K16 ["StyleModifier"]
       50 NAMECALL                         R14 R5 K20 ["getNextOrder"]
       52 CALL                             R14 1 1
       53 SETTABLEKS                       R14 R13 K17 ["LayoutOrder"]
       55 CALL                             R11 2 1
       56 SETTABLEKS                       R11 R10 K12 ["Arrow"]
       58 GETUPVAL                         R11 1
       59 GETTABLEKS                       R11 R11 K6 ["createElement"]
       61 GETUPVAL                         R12 6
       62 DUPTABLE                         R13 K24 [{"Text", "LayoutOrder", "AutomaticSize", "AnchorPoint", "Position", "Style"}]
       63 SETTABLEKS                       R1 R13 K13 ["Text"]
       65 NAMECALL                         R14 R5 K20 ["getNextOrder"]
       67 CALL                             R14 1 1
       68 SETTABLEKS                       R14 R13 K17 ["LayoutOrder"]
       70 GETIMPORT                        R14 K27 [Enum.AutomaticSize.XY]
       72 SETTABLEKS                       R14 R13 K21 ["AutomaticSize"]
       74 GETIMPORT                        R14 K29 [Vector2.new]
       76 LOADN                            R15 0
       77 LOADK                            R16 K30 [0.5]
       78 CALL                             R14 2 1
       79 SETTABLEKS                       R14 R13 K22 ["AnchorPoint"]
       81 GETIMPORT                        R14 K32 [UDim2.new]
       83 LOADN                            R15 0
       84 LOADN                            R16 24
       85 LOADK                            R17 K30 [0.5]
       86 LOADN                            R18 0
       87 CALL                             R14 4 1
       88 SETTABLEKS                       R14 R13 K23 ["Position"]
       90 GETTABLEKS                       R14 R4 K13 ["Text"]
       92 SETTABLEKS                       R14 R13 K15 ["Style"]
       94 CALL                             R11 2 1
       95 SETTABLEKS                       R11 R10 K13 ["Text"]
       97 CALL                             R7 3 -1
       98 RETURN                           R7 -1

PROTO_11:
        0 RETURN                           R0 0

PROTO_12:
        0 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 GETTABLEKS                       R4 R1 K3 ["animations"]
        8 NAMECALL                         R5 R0 K4 ["buildTags"]
       10 CALL                             R5 1 1
       11 GETTABLEKS                       R6 R0 K5 ["state"]
       13 GETTABLEKS                       R8 R6 K7 ["expanded"]
       15 GETTABLEKS                       R7 R8 K6 ["Preview"]
       17 JUMPIFNOT                        R7 ; [+3]
       18 GETTABLEKS                       R8 R2 K8 ["ExpandedOffset"]
       20 JUMP                             ; [+2]
       21 GETTABLEKS                       R8 R2 K9 ["CollapsedOffset"]
       23 GETUPVAL                         R9 0
       24 GETTABLEKS                       R9 R9 K10 ["new"]
       26 CALL                             R9 0 1
       27 GETUPVAL                         R10 1
       28 GETTABLEKS                       R10 R10 K11 ["createElement"]
       30 GETUPVAL                         R11 2
       31 DUPTABLE                         R12 K15 [{"Layout", "HorizontalAlignment", "VerticalAlignment"}]
       32 GETIMPORT                        R13 K19 [Enum.FillDirection.Vertical]
       34 SETTABLEKS                       R13 R12 K12 ["Layout"]
       36 GETIMPORT                        R13 K21 [Enum.HorizontalAlignment.Left]
       38 SETTABLEKS                       R13 R12 K13 ["HorizontalAlignment"]
       40 GETIMPORT                        R13 K23 [Enum.VerticalAlignment.Top]
       42 SETTABLEKS                       R13 R12 K14 ["VerticalAlignment"]
       44 DUPTABLE                         R13 K26 [{"Content", "Footer"}]
       45 GETUPVAL                         R14 1
       46 GETTABLEKS                       R14 R14 K11 ["createElement"]
       48 GETUPVAL                         R15 2
       49 NEWTABLE                         R16 8 0
       51 NAMECALL                         R17 R9 K27 ["getNextOrder"]
       53 CALL                             R17 1 1
       54 SETTABLEKS                       R17 R16 K28 ["LayoutOrder"]
       56 GETIMPORT                        R17 K30 [UDim2.new]
       58 LOADN                            R18 1
       59 LOADN                            R19 0
       60 LOADN                            R20 1
       61 GETTABLEKS                       R22 R2 K31 ["FooterHeight"]
       63 MINUS                            R21 R22
       64 CALL                             R17 4 1
       65 SETTABLEKS                       R17 R16 K32 ["Size"]
       67 GETIMPORT                        R17 K19 [Enum.FillDirection.Vertical]
       69 SETTABLEKS                       R17 R16 K12 ["Layout"]
       71 GETIMPORT                        R17 K21 [Enum.HorizontalAlignment.Left]
       73 SETTABLEKS                       R17 R16 K13 ["HorizontalAlignment"]
       75 GETIMPORT                        R17 K23 [Enum.VerticalAlignment.Top]
       77 SETTABLEKS                       R17 R16 K14 ["VerticalAlignment"]
       79 GETUPVAL                         R17 1
       80 GETTABLEKS                       R17 R17 K33 ["Ref"]
       82 GETTABLEKS                       R18 R0 K34 ["ref"]
       84 SETTABLE                         R18 R16 R17
       85 DUPTABLE                         R17 K37 [{"PreviewContainer", "ListContainer"}]
       86 GETUPVAL                         R18 1
       87 GETTABLEKS                       R18 R18 K11 ["createElement"]
       89 GETUPVAL                         R19 3
       90 DUPTABLE                         R20 K42 [{"AutomaticSize", "LayoutOrder", "Expanded", "HeaderOverride", "OnExpandedChanged"}]
       91 GETIMPORT                        R21 K44 [Enum.AutomaticSize.Y]
       93 SETTABLEKS                       R21 R20 K38 ["AutomaticSize"]
       95 NAMECALL                         R21 R9 K27 ["getNextOrder"]
       97 CALL                             R21 1 1
       98 SETTABLEKS                       R21 R20 K28 ["LayoutOrder"]
      100 SETTABLEKS                       R7 R20 K39 ["Expanded"]
      102 LOADK                            R25 K45 ["AnimationConversion"]
      103 LOADK                            R26 K6 ["Preview"]
      104 NAMECALL                         R23 R3 K46 ["getText"]
      106 CALL                             R23 3 1
      107 LOADK                            R24 K6 ["Preview"]
      108 NAMECALL                         R21 R0 K47 ["renderHeader"]
      110 CALL                             R21 3 1
      111 SETTABLEKS                       R21 R20 K40 ["HeaderOverride"]
      113 DUPCLOSURE                       R21 K48 [PROTO_11]
      114 SETTABLEKS                       R21 R20 K41 ["OnExpandedChanged"]
      116 DUPTABLE                         R21 K49 [{"Preview"}]
      117 GETUPVAL                         R22 1
      118 GETTABLEKS                       R22 R22 K11 ["createElement"]
      120 GETUPVAL                         R23 4
      121 CALL                             R22 1 1
      122 SETTABLEKS                       R22 R21 K6 ["Preview"]
      124 CALL                             R18 3 1
      125 SETTABLEKS                       R18 R17 K35 ["PreviewContainer"]
      127 GETUPVAL                         R18 1
      128 GETTABLEKS                       R18 R18 K11 ["createElement"]
      130 GETUPVAL                         R19 3
      131 DUPTABLE                         R20 K51 [{"AutomaticSize", "LayoutOrder", "Expanded", "ContentPadding", "HeaderOverride", "OnExpandedChanged"}]
      132 GETIMPORT                        R21 K44 [Enum.AutomaticSize.Y]
      134 SETTABLEKS                       R21 R20 K38 ["AutomaticSize"]
      136 NAMECALL                         R21 R9 K27 ["getNextOrder"]
      138 CALL                             R21 1 1
      139 SETTABLEKS                       R21 R20 K28 ["LayoutOrder"]
      141 GETTABLEKS                       R22 R6 K7 ["expanded"]
      143 GETTABLEKS                       R21 R22 K52 ["List"]
      145 SETTABLEKS                       R21 R20 K39 ["Expanded"]
      147 LOADN                            R21 0
      148 SETTABLEKS                       R21 R20 K50 ["ContentPadding"]
      150 LOADK                            R25 K45 ["AnimationConversion"]
      151 LOADK                            R26 K53 ["Animations"]
      152 NAMECALL                         R23 R3 K46 ["getText"]
      154 CALL                             R23 3 1
      155 LOADK                            R24 K52 ["List"]
      156 NAMECALL                         R21 R0 K47 ["renderHeader"]
      158 CALL                             R21 3 1
      159 SETTABLEKS                       R21 R20 K40 ["HeaderOverride"]
      161 DUPCLOSURE                       R21 K54 [PROTO_12]
      162 SETTABLEKS                       R21 R20 K41 ["OnExpandedChanged"]
      164 DUPTABLE                         R21 K55 [{"List"}]
      165 GETUPVAL                         R22 1
      166 GETTABLEKS                       R22 R22 K11 ["createElement"]
      168 GETUPVAL                         R23 5
      169 DUPTABLE                         R24 K59 [{"Size", "Items", "Tags", "LayoutOrder", "OnResetPlugin"}]
      170 GETIMPORT                        R25 K30 [UDim2.new]
      172 LOADN                            R26 1
      173 LOADN                            R27 0
      174 LOADN                            R28 0
      175 GETTABLEKS                       R31 R6 K60 ["paneSize"]
      177 GETTABLEKS                       R31 R31 K43 ["Y"]
      179 GETTABLEKS                       R32 R2 K61 ["HeaderHeight"]
      181 SUB                              R30 R31 R32
      182 SUB                              R29 R30 R8
      183 CALL                             R25 4 1
      184 SETTABLEKS                       R25 R24 K32 ["Size"]
      186 SETTABLEKS                       R4 R24 K56 ["Items"]
      188 SETTABLEKS                       R5 R24 K57 ["Tags"]
      190 NAMECALL                         R25 R9 K27 ["getNextOrder"]
      192 CALL                             R25 1 1
      193 SETTABLEKS                       R25 R24 K28 ["LayoutOrder"]
      195 GETTABLEKS                       R25 R1 K58 ["OnResetPlugin"]
      197 SETTABLEKS                       R25 R24 K58 ["OnResetPlugin"]
      199 CALL                             R22 2 1
      200 SETTABLEKS                       R22 R21 K52 ["List"]
      202 CALL                             R18 3 1
      203 SETTABLEKS                       R18 R17 K36 ["ListContainer"]
      205 CALL                             R14 3 1
      206 SETTABLEKS                       R14 R13 K24 ["Content"]
      208 GETUPVAL                         R14 1
      209 GETTABLEKS                       R14 R14 K11 ["createElement"]
      211 GETUPVAL                         R15 6
      212 DUPTABLE                         R16 K62 [{"LayoutOrder", "Size"}]
      213 NAMECALL                         R17 R9 K27 ["getNextOrder"]
      215 CALL                             R17 1 1
      216 SETTABLEKS                       R17 R16 K28 ["LayoutOrder"]
      218 GETIMPORT                        R17 K30 [UDim2.new]
      220 LOADN                            R18 1
      221 LOADN                            R19 0
      222 LOADN                            R20 0
      223 GETTABLEKS                       R21 R2 K31 ["FooterHeight"]
      225 CALL                             R17 4 1
      226 SETTABLEKS                       R17 R16 K32 ["Size"]
      228 CALL                             R14 2 1
      229 SETTABLEKS                       R14 R13 K25 ["Footer"]
      231 CALL                             R10 3 -1
      232 RETURN                           R10 -1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 NEWTABLE                         R3 0 0
        6 DUPTABLE                         R4 K2 [{"Label"}]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R5 R5 K0 ["createElement"]
       10 GETUPVAL                         R6 2
       11 DUPTABLE                         R7 K4 [{"Text"}]
       12 GETTABLEKS                       R8 R0 K5 ["props"]
       14 GETTABLEKS                       R8 R8 K6 ["Localization"]
       16 LOADK                            R10 K7 ["AnimationConversion"]
       17 LOADK                            R11 K8 ["NoAnimations"]
       18 NAMECALL                         R8 R8 K9 ["getText"]
       20 CALL                             R8 3 1
       21 SETTABLEKS                       R8 R7 K3 ["Text"]
       23 CALL                             R5 2 1
       24 SETTABLEKS                       R5 R4 K1 ["Label"]
       26 CALL                             R1 3 -1
       27 RETURN                           R1 -1

PROTO_15:
        0 GETIMPORT                        R2 K1 [next]
        2 GETTABLEKS                       R3 R0 K2 ["props"]
        4 GETTABLEKS                       R3 R3 K3 ["animations"]
        6 CALL                             R2 1 1
        7 JUMPIFNOTEQKNIL                  R2 ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 RETURN                           R1 1

PROTO_16:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Clicked primary action"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"alert"}]
        2 DUPTABLE                         R3 K3 [{"show"}]
        3 LOADB                            R4 0
        4 SETTABLEKS                       R4 R3 K2 ["show"]
        6 SETTABLEKS                       R3 R2 K0 ["alert"]
        8 NAMECALL                         R0 R0 K4 ["setState"]
       10 CALL                             R0 2 0
       11 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 NEWTABLE                         R3 0 0
        6 DUPTABLE                         R4 K3 [{"Content", "Alert"}]
        7 NAMECALL                         R6 R0 K4 ["hasAnimations"]
        9 CALL                             R6 1 1
       10 JUMPIFNOT                        R6 ; [+4]
       11 NAMECALL                         R5 R0 K5 ["renderAnimationList"]
       13 CALL                             R5 1 1
       14 JUMP                             ; [+3]
       15 NAMECALL                         R5 R0 K6 ["renderNoAnimationsScreen"]
       17 CALL                             R5 1 1
       18 SETTABLEKS                       R5 R4 K1 ["Content"]
       20 GETTABLEKS                       R5 R0 K7 ["state"]
       22 GETTABLEKS                       R5 R5 K8 ["alert"]
       24 GETTABLEKS                       R5 R5 K9 ["show"]
       26 JUMPIFNOT                        R5 ; [+31]
       27 GETUPVAL                         R5 0
       28 GETTABLEKS                       R5 R5 K0 ["createElement"]
       30 GETUPVAL                         R6 2
       31 DUPTABLE                         R7 K16 [{"Style", "Title", "Description", "ZIndex", "PrimaryAction", "OnClose"}]
       32 LOADK                            R8 K17 ["Success"]
       33 SETTABLEKS                       R8 R7 K10 ["Style"]
       35 LOADK                            R8 K17 ["Success"]
       36 SETTABLEKS                       R8 R7 K11 ["Title"]
       38 LOADK                            R8 K18 ["5 R6 IDs were successfully replaced"]
       39 SETTABLEKS                       R8 R7 K12 ["Description"]
       41 LOADN                            R8 231
       42 SETTABLEKS                       R8 R7 K13 ["ZIndex"]
       44 DUPTABLE                         R8 K21 [{"Text", "OnClick"}]
       45 LOADK                            R9 K22 ["Action"]
       46 SETTABLEKS                       R9 R8 K19 ["Text"]
       48 DUPCLOSURE                       R9 K23 [PROTO_16]
       49 SETTABLEKS                       R9 R8 K20 ["OnClick"]
       51 SETTABLEKS                       R8 R7 K14 ["PrimaryAction"]
       53 NEWCLOSURE                       R8 P1
       54 CAPTURE                          VAL R0
       55 SETTABLEKS                       R8 R7 K15 ["OnClose"]
       57 CALL                             R5 2 1
       58 SETTABLEKS                       R5 R4 K2 ["Alert"]
       60 CALL                             R1 3 -1
       61 RETURN                           R1 -1

PROTO_19:
        0 DUPTABLE                         R2 K2 [{"diagnostics", "animations"}]
        1 GETTABLEKS                       R3 R0 K3 ["ScriptConversion"]
        3 GETTABLEKS                       R3 R3 K0 ["diagnostics"]
        5 SETTABLEKS                       R3 R2 K0 ["diagnostics"]
        7 GETTABLEKS                       R3 R0 K4 ["AnimationConversion"]
        9 GETTABLEKS                       R3 R3 K1 ["animations"]
       11 SETTABLEKS                       R3 R2 K1 ["animations"]
       13 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Roact"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["RoactRodux"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["Dash"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R1 K11 ["UI"]
       37 GETTABLEKS                       R6 R5 K12 ["Pane"]
       39 GETTABLEKS                       R7 R5 K13 ["TextLabel"]
       41 GETTABLEKS                       R8 R5 K14 ["ExpandablePane"]
       43 GETTABLEKS                       R9 R5 K15 ["Image"]
       45 GETTABLEKS                       R10 R5 K16 ["Alert"]
       47 GETTABLEKS                       R11 R1 K17 ["Util"]
       49 GETTABLEKS                       R12 R11 K18 ["LayoutOrderIterator"]
       51 GETTABLEKS                       R13 R11 K19 ["StyleModifier"]
       53 GETTABLEKS                       R14 R1 K20 ["ContextServices"]
       55 GETTABLEKS                       R15 R0 K21 ["Src"]
       57 GETTABLEKS                       R15 R15 K22 ["Components"]
       59 GETIMPORT                        R16 K5 [require]
       61 GETTABLEKS                       R17 R15 K23 ["AnimationList"]
       63 CALL                             R16 1 1
       64 GETIMPORT                        R17 K5 [require]
       66 GETTABLEKS                       R18 R15 K24 ["AnimationPreviewComponent"]
       68 CALL                             R17 1 1
       69 GETIMPORT                        R18 K5 [require]
       71 GETTABLEKS                       R19 R15 K25 ["AnimationConversionPaneFooter"]
       73 CALL                             R18 1 1
       74 GETTABLEKS                       R19 R0 K21 ["Src"]
       76 GETTABLEKS                       R19 R19 K17 ["Util"]
       78 GETTABLEKS                       R19 R19 K26 ["AnimationConversion"]
       80 GETIMPORT                        R20 K5 [require]
       82 GETTABLEKS                       R21 R19 K27 ["constants"]
       84 CALL                             R20 1 1
       85 GETTABLEKS                       R20 R20 K28 ["AssetType"]
       87 GETIMPORT                        R21 K5 [require]
       89 GETTABLEKS                       R22 R0 K21 ["Src"]
       91 GETTABLEKS                       R22 R22 K17 ["Util"]
       93 GETTABLEKS                       R22 R22 K29 ["AssetIdUtil"]
       95 CALL                             R21 1 1
       96 GETTABLEKS                       R22 R2 K30 ["PureComponent"]
       98 LOADK                            R24 K31 ["AnimationConversionPane"]
       99 NAMECALL                         R22 R22 K32 ["extend"]
      101 CALL                             R22 2 1
      102 DUPCLOSURE                       R23 K33 [PROTO_3]
      103 CAPTURE                          VAL R4
      104 CAPTURE                          VAL R2
      105 SETTABLEKS                       R23 R22 K34 ["init"]
      107 DUPCLOSURE                       R23 K35 [PROTO_5]
      108 SETTABLEKS                       R23 R22 K36 ["initRef"]
      110 DUPCLOSURE                       R23 K37 [PROTO_6]
      111 SETTABLEKS                       R23 R22 K38 ["didMount"]
      113 DUPCLOSURE                       R23 K39 [PROTO_7]
      114 SETTABLEKS                       R23 R22 K40 ["willUnmount"]
      116 DUPCLOSURE                       R23 K41 [PROTO_8]
      117 SETTABLEKS                       R23 R22 K42 ["didUpdate"]
      119 DUPCLOSURE                       R23 K43 [PROTO_9]
      120 CAPTURE                          VAL R21
      121 CAPTURE                          VAL R20
      122 SETTABLEKS                       R23 R22 K44 ["buildTags"]
      124 DUPCLOSURE                       R23 K45 [PROTO_10]
      125 CAPTURE                          VAL R12
      126 CAPTURE                          VAL R2
      127 CAPTURE                          VAL R6
      128 CAPTURE                          VAL R4
      129 CAPTURE                          VAL R9
      130 CAPTURE                          VAL R13
      131 CAPTURE                          VAL R7
      132 SETTABLEKS                       R23 R22 K46 ["renderHeader"]
      134 DUPCLOSURE                       R23 K47 [PROTO_13]
      135 CAPTURE                          VAL R12
      136 CAPTURE                          VAL R2
      137 CAPTURE                          VAL R6
      138 CAPTURE                          VAL R8
      139 CAPTURE                          VAL R17
      140 CAPTURE                          VAL R16
      141 CAPTURE                          VAL R18
      142 SETTABLEKS                       R23 R22 K48 ["renderAnimationList"]
      144 DUPCLOSURE                       R23 K49 [PROTO_14]
      145 CAPTURE                          VAL R2
      146 CAPTURE                          VAL R6
      147 CAPTURE                          VAL R7
      148 SETTABLEKS                       R23 R22 K50 ["renderNoAnimationsScreen"]
      150 DUPCLOSURE                       R23 K51 [PROTO_15]
      151 SETTABLEKS                       R23 R22 K52 ["hasAnimations"]
      153 DUPCLOSURE                       R23 K53 [PROTO_18]
      154 CAPTURE                          VAL R2
      155 CAPTURE                          VAL R6
      156 CAPTURE                          VAL R10
      157 SETTABLEKS                       R23 R22 K54 ["render"]
      159 DUPCLOSURE                       R23 K55 [PROTO_19]
      160 GETTABLEKS                       R24 R14 K56 ["withContext"]
      162 DUPTABLE                         R25 K59 [{"Stylizer", "Localization"}]
      163 GETTABLEKS                       R26 R14 K57 ["Stylizer"]
      165 SETTABLEKS                       R26 R25 K57 ["Stylizer"]
      167 GETTABLEKS                       R26 R14 K58 ["Localization"]
      169 SETTABLEKS                       R26 R25 K58 ["Localization"]
      171 CALL                             R24 1 1
      172 MOVE                             R25 R22
      173 CALL                             R24 1 1
      174 MOVE                             R22 R24
      175 GETTABLEKS                       R24 R3 K60 ["connect"]
      177 MOVE                             R25 R23
      178 CALL                             R24 1 1
      179 MOVE                             R25 R22
      180 CALL                             R24 1 -1
      181 RETURN                           R24 -1
