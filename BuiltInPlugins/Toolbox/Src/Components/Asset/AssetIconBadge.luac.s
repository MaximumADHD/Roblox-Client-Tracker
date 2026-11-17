PROTO_0:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = True}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K4 ["props"]
        8 GETTABLEKS                       R0 R0 K5 ["Modal"]
       10 GETTABLEKS                       R1 R0 K6 ["onTooltipTriggered"]
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R2 R2 K7 ["assetId"]
       15 GETUPVAL                         R3 2
       16 GETTABLEKS                       R3 R3 K8 ["TOOLTIP_TYPE"]
       18 GETTABLEKS                       R3 R3 K9 ["HIGH_QUALITY_BADGE"]
       20 CALL                             R1 2 0
       21 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R2 K2 [{[1] = False}]
        1 SETTABLEKS                       R2 R0 K3 ["state"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 CAPTURE                          UPVAL U0
        7 SETTABLEKS                       R2 R0 K4 ["onMouseEnter"]
        9 NEWCLOSURE                       R2 P1
       10 CAPTURE                          VAL R0
       11 SETTABLEKS                       R2 R0 K5 ["onMouseLeave"]
       13 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 GETTABLEKS                       R4 R1 K3 ["assetId"]
        8 GETTABLEKS                       R5 R1 K4 ["isPackage"]
       10 GETTABLEKS                       R6 R1 K5 ["floatLeft"]
       12 GETTABLEKS                       R7 R0 K6 ["onMouseEnter"]
       14 GETTABLEKS                       R8 R0 K7 ["onMouseLeave"]
       16 GETTABLEKS                       R9 R0 K8 ["state"]
       18 GETTABLEKS                       R9 R9 K9 ["isHovered"]
       20 GETTABLEKS                       R10 R1 K10 ["Modal"]
       22 GETTABLEKS                       R10 R10 K11 ["modalStatus"]
       24 MOVE                             R13 R4
       25 GETUPVAL                         R14 0
       26 GETTABLEKS                       R14 R14 K12 ["TOOLTIP_TYPE"]
       28 GETTABLEKS                       R14 R14 K13 ["HIGH_QUALITY_BADGE"]
       30 NAMECALL                         R11 R10 K14 ["canShowCurrentTooltip"]
       32 CALL                             R11 3 1
       33 GETTABLEKS                       R12 R2 K15 ["asset"]
       35 GETTABLEKS                       R12 R12 K16 ["packages"]
       37 JUMPIFNOT                        R5 ; [+112]
       38 GETUPVAL                         R13 1
       39 GETTABLEKS                       R13 R13 K17 ["createElement"]
       41 LOADK                            R14 K18 ["Frame"]
       42 DUPTABLE                         R15 K24 [{"AnchorPoint", "Position", "Size", "BackgroundColor3", "BackgroundTransparency"}]
       43 GETIMPORT                        R16 K27 [Vector2.new]
       45 JUMPIFNOT                        R6 ; [+2]
       46 LOADN                            R17 0
       47 JUMP                             ; [+1]
       48 LOADN                            R17 1
       49 LOADN                            R18 1
       50 CALL                             R16 2 1
       51 SETTABLEKS                       R16 R15 K19 ["AnchorPoint"]
       53 GETIMPORT                        R16 K29 [UDim2.new]
       55 JUMPIFNOT                        R6 ; [+2]
       56 LOADK                            R17 K30 [0.06]
       57 JUMP                             ; [+1]
       58 LOADK                            R17 K31 [0.94]
       59 LOADN                            R18 0
       60 LOADK                            R19 K31 [0.94]
       61 LOADN                            R20 0
       62 CALL                             R16 4 1
       63 SETTABLEKS                       R16 R15 K20 ["Position"]
       65 GETUPVAL                         R16 0
       66 GETTABLEKS                       R16 R16 K32 ["PACKAGE_BACKGROUND_SIZE"]
       68 SETTABLEKS                       R16 R15 K21 ["Size"]
       70 GETTABLEKS                       R16 R12 K33 ["backgroundColor"]
       72 SETTABLEKS                       R16 R15 K22 ["BackgroundColor3"]
       74 GETTABLEKS                       R16 R12 K34 ["backgroundTransparency"]
       76 SETTABLEKS                       R16 R15 K23 ["BackgroundTransparency"]
       78 DUPTABLE                         R16 K37 [{"UICorner", "Image"}]
       79 GETUPVAL                         R17 1
       80 GETTABLEKS                       R17 R17 K17 ["createElement"]
       82 LOADK                            R18 K35 ["UICorner"]
       83 DUPTABLE                         R19 K39 [{"CornerRadius"}]
       84 GETIMPORT                        R20 K41 [UDim.new]
       86 LOADN                            R21 0
       87 GETUPVAL                         R22 0
       88 GETTABLEKS                       R22 R22 K42 ["PACKAGE_BACKGROUND_CORNER_RADIUS"]
       90 CALL                             R20 2 1
       91 SETTABLEKS                       R20 R19 K38 ["CornerRadius"]
       93 CALL                             R17 2 1
       94 SETTABLEKS                       R17 R16 K35 ["UICorner"]
       96 GETUPVAL                         R17 1
       97 GETTABLEKS                       R17 R17 K17 ["createElement"]
       99 LOADK                            R18 K43 ["ImageLabel"]
      100 NEWTABLE                         R19 8 0
      102 GETIMPORT                        R20 K27 [Vector2.new]
      104 LOADK                            R21 K44 [0.5]
      105 LOADK                            R22 K44 [0.5]
      106 CALL                             R20 2 1
      107 SETTABLEKS                       R20 R19 K19 ["AnchorPoint"]
      109 GETIMPORT                        R20 K29 [UDim2.new]
      111 LOADK                            R21 K44 [0.5]
      112 LOADN                            R22 0
      113 LOADK                            R23 K44 [0.5]
      114 LOADN                            R24 0
      115 CALL                             R20 4 1
      116 SETTABLEKS                       R20 R19 K20 ["Position"]
      118 GETUPVAL                         R20 0
      119 GETTABLEKS                       R20 R20 K45 ["PACKAGE_DETAIL_SIZE"]
      121 SETTABLEKS                       R20 R19 K21 ["Size"]
      123 GETTABLEKS                       R20 R12 K46 ["packageImage"]
      125 SETTABLEKS                       R20 R19 K36 ["Image"]
      127 LOADN                            R20 2
      128 SETTABLEKS                       R20 R19 K47 ["ZIndex"]
      130 LOADN                            R20 1
      131 SETTABLEKS                       R20 R19 K23 ["BackgroundTransparency"]
      133 GETUPVAL                         R20 1
      134 GETTABLEKS                       R20 R20 K48 ["Event"]
      136 GETTABLEKS                       R20 R20 K49 ["MouseEnter"]
      138 SETTABLE                         R7 R19 R20
      139 GETUPVAL                         R20 1
      140 GETTABLEKS                       R20 R20 K48 ["Event"]
      142 GETTABLEKS                       R20 R20 K50 ["MouseLeave"]
      144 SETTABLE                         R8 R19 R20
      145 CALL                             R17 2 1
      146 SETTABLEKS                       R17 R16 K36 ["Image"]
      148 CALL                             R13 3 -1
      149 RETURN                           R13 -1
      150 GETUPVAL                         R13 1
      151 GETTABLEKS                       R13 R13 K17 ["createElement"]
      153 LOADK                            R14 K43 ["ImageLabel"]
      154 NEWTABLE                         R15 8 0
      156 GETIMPORT                        R16 K27 [Vector2.new]
      158 JUMPIFNOT                        R6 ; [+2]
      159 LOADN                            R17 0
      160 JUMP                             ; [+1]
      161 LOADN                            R17 1
      162 LOADN                            R18 1
      163 CALL                             R16 2 1
      164 SETTABLEKS                       R16 R15 K19 ["AnchorPoint"]
      166 LOADN                            R16 1
      167 SETTABLEKS                       R16 R15 K23 ["BackgroundTransparency"]
      169 GETIMPORT                        R16 K29 [UDim2.new]
      171 JUMPIFNOT                        R6 ; [+2]
      172 LOADK                            R17 K30 [0.06]
      173 JUMP                             ; [+1]
      174 LOADK                            R17 K31 [0.94]
      175 LOADN                            R18 0
      176 LOADK                            R19 K51 [1.06]
      177 LOADN                            R20 0
      178 CALL                             R16 4 1
      179 SETTABLEKS                       R16 R15 K20 ["Position"]
      181 GETIMPORT                        R16 K29 [UDim2.new]
      183 LOADN                            R17 0
      184 GETUPVAL                         R18 0
      185 GETTABLEKS                       R18 R18 K52 ["ASSET_ENDORSED_BADGE_ICON_SIZE"]
      187 LOADN                            R19 0
      188 GETUPVAL                         R20 0
      189 GETTABLEKS                       R20 R20 K52 ["ASSET_ENDORSED_BADGE_ICON_SIZE"]
      191 CALL                             R16 4 1
      192 SETTABLEKS                       R16 R15 K21 ["Size"]
      194 GETUPVAL                         R16 2
      195 GETTABLEKS                       R16 R16 K53 ["ENDORSED_BADGE_ICON"]
      197 SETTABLEKS                       R16 R15 K36 ["Image"]
      199 LOADN                            R16 2
      200 SETTABLEKS                       R16 R15 K47 ["ZIndex"]
      202 GETUPVAL                         R16 1
      203 GETTABLEKS                       R16 R16 K48 ["Event"]
      205 GETTABLEKS                       R16 R16 K49 ["MouseEnter"]
      207 SETTABLE                         R7 R15 R16
      208 GETUPVAL                         R16 1
      209 GETTABLEKS                       R16 R16 K48 ["Event"]
      211 GETTABLEKS                       R16 R16 K50 ["MouseLeave"]
      213 SETTABLE                         R8 R15 R16
      214 DUPTABLE                         R16 K55 [{"TooltipWrapper"}]
      215 MOVE                             R17 R9
      216 JUMPIFNOT                        R17 ; [+17]
      217 GETUPVAL                         R17 1
      218 GETTABLEKS                       R17 R17 K17 ["createElement"]
      220 GETUPVAL                         R18 3
      221 DUPTABLE                         R19 K57 [{"Text", "canShowCurrentTooltip", "isHovered"}]
      222 LOADK                            R22 K58 ["General"]
      223 LOADK                            R23 K59 ["EndorseBadgeTooltipText"]
      224 NAMECALL                         R20 R3 K60 ["getText"]
      226 CALL                             R20 3 1
      227 SETTABLEKS                       R20 R19 K56 ["Text"]
      229 SETTABLEKS                       R11 R19 K14 ["canShowCurrentTooltip"]
      231 SETTABLEKS                       R9 R19 K9 ["isHovered"]
      233 CALL                             R17 2 1
      234 SETTABLEKS                       R17 R16 K54 ["TooltipWrapper"]
      236 CALL                             R13 3 -1
      237 RETURN                           R13 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R1 R0 K3 ["Packages"]
       13 GETIMPORT                        R2 K5 [require]
       15 GETTABLEKS                       R3 R1 K6 ["Roact"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R1 K7 ["Framework"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R4 R3 K8 ["ContextServices"]
       25 GETTABLEKS                       R5 R4 K9 ["withContext"]
       27 GETIMPORT                        R6 K5 [require]
       29 GETTABLEKS                       R7 R0 K10 ["Src"]
       31 GETTABLEKS                       R7 R7 K11 ["Util"]
       33 GETTABLEKS                       R7 R7 K12 ["Constants"]
       35 CALL                             R6 1 1
       36 GETIMPORT                        R7 K5 [require]
       38 GETTABLEKS                       R8 R0 K10 ["Src"]
       40 GETTABLEKS                       R8 R8 K11 ["Util"]
       42 GETTABLEKS                       R8 R8 K13 ["Images"]
       44 CALL                             R7 1 1
       45 GETIMPORT                        R8 K5 [require]
       47 GETTABLEKS                       R9 R0 K10 ["Src"]
       49 GETTABLEKS                       R9 R9 K8 ["ContextServices"]
       51 GETTABLEKS                       R9 R9 K14 ["ModalContext"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K5 [require]
       56 GETTABLEKS                       R10 R0 K10 ["Src"]
       58 GETTABLEKS                       R10 R10 K15 ["Components"]
       60 GETTABLEKS                       R10 R10 K16 ["TooltipWrapper"]
       62 CALL                             R9 1 1
       63 GETTABLEKS                       R10 R2 K17 ["PureComponent"]
       65 LOADK                            R12 K18 ["AssetIconBadge"]
       66 NAMECALL                         R10 R10 K19 ["extend"]
       68 CALL                             R10 2 1
       69 DUPCLOSURE                       R11 K20 [PROTO_2]
       70 CAPTURE                          VAL R6
       71 SETTABLEKS                       R11 R10 K21 ["init"]
       73 DUPCLOSURE                       R11 K22 [PROTO_3]
       74 CAPTURE                          VAL R6
       75 CAPTURE                          VAL R2
       76 CAPTURE                          VAL R7
       77 CAPTURE                          VAL R9
       78 SETTABLEKS                       R11 R10 K23 ["render"]
       80 MOVE                             R11 R5
       81 DUPTABLE                         R12 K27 [{"Stylizer", "Localization", "Modal"}]
       82 GETTABLEKS                       R13 R4 K24 ["Stylizer"]
       84 SETTABLEKS                       R13 R12 K24 ["Stylizer"]
       86 GETTABLEKS                       R13 R4 K25 ["Localization"]
       88 SETTABLEKS                       R13 R12 K25 ["Localization"]
       90 SETTABLEKS                       R8 R12 K26 ["Modal"]
       92 CALL                             R11 1 1
       93 MOVE                             R12 R10
       94 CALL                             R11 1 1
       95 MOVE                             R10 R11
       96 RETURN                           R10 1
