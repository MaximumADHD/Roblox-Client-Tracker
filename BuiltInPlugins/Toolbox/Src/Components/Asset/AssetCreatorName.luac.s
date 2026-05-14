PROTO_0:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"isHovered"}]
        2 LOADB                            R3 1
        3 SETTABLEKS                       R3 R2 K0 ["isHovered"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 GETUPVAL                         R0 1
        9 GETTABLEKS                       R0 R0 K3 ["Modal"]
       11 GETTABLEKS                       R1 R0 K4 ["onTooltipTriggered"]
       13 GETUPVAL                         R2 1
       14 GETTABLEKS                       R2 R2 K5 ["assetId"]
       16 GETUPVAL                         R3 2
       17 GETTABLEKS                       R3 R3 K6 ["TOOLTIP_TYPE"]
       19 GETTABLEKS                       R3 R3 K7 ["CREATOR_NAME"]
       21 CALL                             R1 2 0
       22 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"isHovered"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["isHovered"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["Network"]
        5 GETTABLEKS                       R1 R1 K2 ["networkInterface"]
        7 GETTABLEKS                       R2 R0 K3 ["clickable"]
        9 JUMPIFNOT                        R2 ; [+45]
       10 LOADNIL                          R2
       11 DUPTABLE                         R3 K7 [{"Creator", "AudioSearch", "AdditionalAudioSearchInfo"}]
       12 GETUPVAL                         R5 1
       13 CALL                             R5 0 1
       14 JUMPIFNOT                        R5 ; [+2]
       15 LOADNIL                          R4
       16 JUMP                             ; [+2]
       17 GETTABLEKS                       R4 R0 K8 ["creatorName"]
       19 SETTABLEKS                       R4 R3 K4 ["Creator"]
       21 GETTABLEKS                       R4 R0 K9 ["audioSearchInfo"]
       23 SETTABLEKS                       R4 R3 K5 ["AudioSearch"]
       25 GETTABLEKS                       R4 R0 K10 ["additionalAudioSearchInfo"]
       27 SETTABLEKS                       R4 R3 K6 ["AdditionalAudioSearchInfo"]
       29 MOVE                             R2 R3
       30 GETUPVAL                         R3 0
       31 GETTABLEKS                       R3 R3 K0 ["props"]
       33 GETTABLEKS                       R3 R3 K11 ["Settings"]
       35 LOADK                            R5 K12 ["Plugin"]
       36 NAMECALL                         R3 R3 K13 ["get"]
       38 CALL                             R3 2 1
       39 GETUPVAL                         R4 1
       40 CALL                             R4 0 1
       41 JUMPIFNOT                        R4 ; [+7]
       42 GETTABLEKS                       R4 R0 K14 ["onClick"]
       44 GETTABLEKS                       R5 R0 K15 ["creator"]
       46 MOVE                             R6 R2
       47 CALL                             R4 2 0
       48 RETURN                           R0 0
       49 GETTABLEKS                       R4 R0 K16 ["searchWithOptions"]
       51 MOVE                             R5 R1
       52 MOVE                             R6 R3
       53 MOVE                             R7 R2
       54 CALL                             R4 3 0
       55 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R2 K1 [{"isHovered"}]
        1 LOADB                            R3 0
        2 SETTABLEKS                       R3 R2 K0 ["isHovered"]
        4 SETTABLEKS                       R2 R0 K2 ["state"]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K3 ["createRef"]
        9 CALL                             R2 0 1
       10 SETTABLEKS                       R2 R0 K4 ["textButtonRef"]
       12 LOADN                            R2 0
       13 SETTABLEKS                       R2 R0 K5 ["underLineWidth"]
       15 NEWCLOSURE                       R2 P0
       16 CAPTURE                          VAL R0
       17 CAPTURE                          VAL R1
       18 CAPTURE                          UPVAL U1
       19 SETTABLEKS                       R2 R0 K6 ["onMouseEnter"]
       21 NEWCLOSURE                       R2 P1
       22 CAPTURE                          VAL R0
       23 SETTABLEKS                       R2 R0 K7 ["onMouseLeave"]
       25 NEWCLOSURE                       R2 P2
       26 CAPTURE                          VAL R0
       27 CAPTURE                          UPVAL U2
       28 SETTABLEKS                       R2 R0 K8 ["onActivated"]
       30 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["textButtonRef"]
        2 GETTABLEKS                       R1 R1 K1 ["current"]
        4 JUMPIFNOT                        R1 ; [+6]
        5 GETTABLEKS                       R2 R1 K2 ["TextBounds"]
        7 GETTABLEKS                       R2 R2 K3 ["X"]
        9 SETTABLEKS                       R2 R0 K4 ["underLineWidth"]
       11 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R1 K1 ["isVerifiedCreator"]
        4 NOT                              R2 R3
        5 JUMPIFNOT                        R2 ; [+5]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K2 ["getShouldHideVerifiedCreatorBadges"]
        9 CALL                             R3 0 1
       10 NOT                              R2 R3
       11 GETTABLEKS                       R3 R1 K3 ["Stylizer"]
       13 GETTABLEKS                       R5 R1 K5 ["LayoutOrder"]
       15 ORK                              R4 R5 K4 [0]
       16 GETTABLEKS                       R5 R1 K6 ["creatorName"]
       18 GETTABLEKS                       R6 R1 K7 ["assetId"]
       20 GETTABLEKS                       R7 R1 K6 ["creatorName"]
       22 GETTABLEKS                       R8 R0 K0 ["props"]
       24 GETTABLEKS                       R8 R8 K8 ["Modal"]
       26 GETTABLEKS                       R8 R8 K9 ["modalStatus"]
       28 MOVE                             R11 R6
       29 GETUPVAL                         R12 1
       30 GETTABLEKS                       R12 R12 K10 ["TOOLTIP_TYPE"]
       32 GETTABLEKS                       R12 R12 K11 ["CREATOR_NAME"]
       34 NAMECALL                         R9 R8 K12 ["canShowCurrentTooltip"]
       36 CALL                             R9 3 1
       37 GETTABLEKS                       R10 R3 K13 ["asset"]
       39 GETTABLEKS                       R10 R10 K6 ["creatorName"]
       41 GETTABLEKS                       R11 R0 K14 ["state"]
       43 GETTABLEKS                       R11 R11 K15 ["isHovered"]
       45 GETUPVAL                         R12 2
       46 GETTABLEKS                       R12 R12 K16 ["createElement"]
       48 GETUPVAL                         R13 3
       49 DUPTABLE                         R14 K20 [{"HorizontalAlignment", "Layout", "LayoutOrder", "Size"}]
       50 GETIMPORT                        R15 K23 [Enum.HorizontalAlignment.Left]
       52 SETTABLEKS                       R15 R14 K17 ["HorizontalAlignment"]
       54 GETIMPORT                        R15 K26 [Enum.FillDirection.Horizontal]
       56 SETTABLEKS                       R15 R14 K18 ["Layout"]
       58 SETTABLEKS                       R4 R14 K5 ["LayoutOrder"]
       60 GETIMPORT                        R15 K29 [UDim2.new]
       62 LOADN                            R16 1
       63 LOADN                            R17 0
       64 LOADN                            R18 0
       65 GETUPVAL                         R19 1
       66 GETTABLEKS                       R19 R19 K30 ["ASSET_CREATOR_NAME_HEIGHT"]
       68 CALL                             R15 4 1
       69 SETTABLEKS                       R15 R14 K19 ["Size"]
       71 DUPTABLE                         R15 K33 [{"Text", "CreatorBadge"}]
       72 GETUPVAL                         R16 2
       73 GETTABLEKS                       R16 R16 K16 ["createElement"]
       75 LOADK                            R17 K34 ["TextButton"]
       76 NEWTABLE                         R18 16 0
       78 LOADB                            R19 0
       79 SETTABLEKS                       R19 R18 K35 ["AutoButtonColor"]
       81 LOADN                            R19 1
       82 SETTABLEKS                       R19 R18 K36 ["BackgroundTransparency"]
       84 LOADB                            R19 0
       85 SETTABLEKS                       R19 R18 K37 ["ClipsDescendants"]
       87 LOADN                            R19 1
       88 SETTABLEKS                       R19 R18 K5 ["LayoutOrder"]
       90 GETUPVAL                         R19 1
       91 GETTABLEKS                       R19 R19 K38 ["FONT"]
       93 SETTABLEKS                       R19 R18 K39 ["Font"]
       95 GETIMPORT                        R19 K29 [UDim2.new]
       97 LOADN                            R20 0
       98 LOADN                            R21 60
       99 LOADN                            R22 1
      100 LOADN                            R23 0
      101 CALL                             R19 4 1
      102 SETTABLEKS                       R19 R18 K19 ["Size"]
      104 GETUPVAL                         R19 1
      105 GETTABLEKS                       R19 R19 K40 ["ASSET_CREATOR_NAME_FONT_SIZE"]
      107 SETTABLEKS                       R19 R18 K41 ["TextSize"]
      109 GETIMPORT                        R19 K43 [Enum.TextXAlignment.Left]
      111 SETTABLEKS                       R19 R18 K42 ["TextXAlignment"]
      113 GETIMPORT                        R19 K46 [Enum.TextYAlignment.Top]
      115 SETTABLEKS                       R19 R18 K44 ["TextYAlignment"]
      117 GETIMPORT                        R19 K49 [Enum.TextTruncate.AtEnd]
      119 SETTABLEKS                       R19 R18 K47 ["TextTruncate"]
      121 SETTABLEKS                       R5 R18 K31 ["Text"]
      123 GETTABLEKS                       R19 R10 K50 ["textColor"]
      125 SETTABLEKS                       R19 R18 K51 ["TextColor3"]
      127 GETUPVAL                         R19 2
      128 GETTABLEKS                       R19 R19 K52 ["Event"]
      130 GETTABLEKS                       R19 R19 K53 ["MouseEnter"]
      132 GETTABLEKS                       R20 R0 K54 ["onMouseEnter"]
      134 SETTABLE                         R20 R18 R19
      135 GETUPVAL                         R19 2
      136 GETTABLEKS                       R19 R19 K52 ["Event"]
      138 GETTABLEKS                       R19 R19 K55 ["MouseLeave"]
      140 GETTABLEKS                       R20 R0 K56 ["onMouseLeave"]
      142 SETTABLE                         R20 R18 R19
      143 GETUPVAL                         R19 2
      144 GETTABLEKS                       R19 R19 K52 ["Event"]
      146 GETTABLEKS                       R19 R19 K57 ["Activated"]
      148 GETTABLEKS                       R20 R0 K58 ["onActivated"]
      150 SETTABLE                         R20 R18 R19
      151 GETUPVAL                         R19 2
      152 GETTABLEKS                       R19 R19 K59 ["Ref"]
      154 GETTABLEKS                       R20 R0 K60 ["textButtonRef"]
      156 SETTABLE                         R20 R18 R19
      157 DUPTABLE                         R19 K63 [{"TooltipWrapper", "UnderLine"}]
      158 MOVE                             R20 R11
      159 JUMPIFNOT                        R20 ; [+12]
      160 GETUPVAL                         R20 2
      161 GETTABLEKS                       R20 R20 K16 ["createElement"]
      163 GETUPVAL                         R21 4
      164 DUPTABLE                         R22 K64 [{"Text", "canShowCurrentTooltip", "isHovered"}]
      165 SETTABLEKS                       R7 R22 K31 ["Text"]
      167 SETTABLEKS                       R9 R22 K12 ["canShowCurrentTooltip"]
      169 SETTABLEKS                       R11 R22 K15 ["isHovered"]
      171 CALL                             R20 2 1
      172 SETTABLEKS                       R20 R19 K61 ["TooltipWrapper"]
      174 MOVE                             R20 R11
      175 JUMPIFNOT                        R20 ; [+42]
      176 GETTABLEKS                       R21 R1 K65 ["clickable"]
      178 JUMPIFEQKNIL                     R21 ; [+4]
      180 GETTABLEKS                       R20 R1 K65 ["clickable"]
      182 JUMPIFNOT                        R20 ; [+35]
      183 GETUPVAL                         R20 2
      184 GETTABLEKS                       R20 R20 K16 ["createElement"]
      186 LOADK                            R21 K66 ["Frame"]
      187 DUPTABLE                         R22 K70 [{"AnchorPoint", "Position", "Size", "BorderSizePixel"}]
      188 GETIMPORT                        R23 K72 [Vector2.new]
      190 LOADK                            R24 K73 [0.5]
      191 LOADK                            R25 K73 [0.5]
      192 CALL                             R23 2 1
      193 SETTABLEKS                       R23 R22 K67 ["AnchorPoint"]
      195 GETIMPORT                        R23 K29 [UDim2.new]
      197 LOADK                            R24 K73 [0.5]
      198 LOADN                            R25 0
      199 LOADN                            R26 1
      200 LOADN                            R27 1
      201 CALL                             R23 4 1
      202 SETTABLEKS                       R23 R22 K68 ["Position"]
      204 GETIMPORT                        R23 K29 [UDim2.new]
      206 LOADN                            R24 0
      207 GETTABLEKS                       R25 R0 K74 ["underLineWidth"]
      209 LOADN                            R26 0
      210 LOADN                            R27 1
      211 CALL                             R23 4 1
      212 SETTABLEKS                       R23 R22 K19 ["Size"]
      214 LOADN                            R23 0
      215 SETTABLEKS                       R23 R22 K69 ["BorderSizePixel"]
      217 CALL                             R20 2 1
      218 SETTABLEKS                       R20 R19 K62 ["UnderLine"]
      220 CALL                             R16 3 1
      221 SETTABLEKS                       R16 R15 K31 ["Text"]
      223 MOVE                             R16 R2
      224 JUMPIFNOT                        R16 ; [+9]
      225 GETUPVAL                         R16 2
      226 GETTABLEKS                       R16 R16 K16 ["createElement"]
      228 GETUPVAL                         R17 5
      229 DUPTABLE                         R18 K75 [{"LayoutOrder"}]
      230 LOADN                            R19 2
      231 SETTABLEKS                       R19 R18 K5 ["LayoutOrder"]
      233 CALL                             R16 2 1
      234 SETTABLEKS                       R16 R15 K32 ["CreatorBadge"]
      236 CALL                             R12 3 -1
      237 RETURN                           R12 -1

PROTO_6:
        0 MOVE                             R2 R0
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R0 R2
        5 GETTABLEKS                       R2 R0 K0 ["pageInfo"]
        7 JUMPIF                           R2 ; [+2]
        8 NEWTABLE                         R2 0 0
       10 DUPTABLE                         R3 K3 [{"audioSearchInfo", "additionalAudioSearchInfo"}]
       11 GETTABLEKS                       R4 R2 K1 ["audioSearchInfo"]
       13 SETTABLEKS                       R4 R3 K1 ["audioSearchInfo"]
       15 GETTABLEKS                       R4 R2 K2 ["additionalAudioSearchInfo"]
       17 SETTABLEKS                       R4 R3 K2 ["additionalAudioSearchInfo"]
       19 RETURN                           R3 1

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_8:
        0 DUPTABLE                         R1 K1 [{"searchWithOptions"}]
        1 GETUPVAL                         R3 0
        2 CALL                             R3 0 1
        3 JUMPIFNOT                        R3 ; [+2]
        4 LOADNIL                          R2
        5 JUMP                             ; [+3]
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K0 ["searchWithOptions"]
       11 RETURN                           R1 1

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
       20 GETTABLEKS                       R4 R1 K7 ["RoactRodux"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R5 R1 K8 ["Framework"]
       27 CALL                             R4 1 1
       28 GETTABLEKS                       R5 R4 K9 ["UI"]
       30 GETTABLEKS                       R5 R5 K10 ["Pane"]
       32 GETTABLEKS                       R6 R0 K11 ["Src"]
       34 GETTABLEKS                       R6 R6 K12 ["Util"]
       36 GETIMPORT                        R7 K5 [require]
       38 GETTABLEKS                       R8 R6 K13 ["Constants"]
       40 CALL                             R7 1 1
       41 GETIMPORT                        R8 K5 [require]
       43 GETTABLEKS                       R9 R6 K14 ["ToolboxUtilities"]
       45 CALL                             R8 1 1
       46 GETIMPORT                        R9 K5 [require]
       48 GETTABLEKS                       R10 R1 K8 ["Framework"]
       50 CALL                             R9 1 1
       51 GETTABLEKS                       R9 R9 K15 ["ContextServices"]
       53 GETTABLEKS                       R10 R9 K16 ["withContext"]
       55 GETIMPORT                        R11 K5 [require]
       57 GETTABLEKS                       R12 R0 K11 ["Src"]
       59 GETTABLEKS                       R12 R12 K15 ["ContextServices"]
       61 GETTABLEKS                       R12 R12 K17 ["Settings"]
       63 CALL                             R11 1 1
       64 GETIMPORT                        R12 K5 [require]
       66 GETTABLEKS                       R13 R0 K11 ["Src"]
       68 GETTABLEKS                       R13 R13 K15 ["ContextServices"]
       70 GETTABLEKS                       R13 R13 K18 ["ModalContext"]
       72 CALL                             R12 1 1
       73 GETIMPORT                        R13 K5 [require]
       75 GETTABLEKS                       R14 R0 K11 ["Src"]
       77 GETTABLEKS                       R14 R14 K15 ["ContextServices"]
       79 GETTABLEKS                       R14 R14 K19 ["NetworkContext"]
       81 CALL                             R13 1 1
       82 GETIMPORT                        R14 K5 [require]
       84 GETTABLEKS                       R15 R0 K11 ["Src"]
       86 GETTABLEKS                       R15 R15 K20 ["Networking"]
       88 GETTABLEKS                       R15 R15 K21 ["Requests"]
       90 GETTABLEKS                       R15 R15 K22 ["SearchWithOptions"]
       92 CALL                             R14 1 1
       93 GETIMPORT                        R15 K5 [require]
       95 GETTABLEKS                       R16 R0 K11 ["Src"]
       97 GETTABLEKS                       R16 R16 K23 ["Components"]
       99 GETTABLEKS                       R16 R16 K24 ["TooltipWrapper"]
      101 CALL                             R15 1 1
      102 GETIMPORT                        R16 K5 [require]
      104 GETTABLEKS                       R17 R0 K11 ["Src"]
      106 GETTABLEKS                       R17 R17 K23 ["Components"]
      108 GETTABLEKS                       R17 R17 K25 ["Asset"]
      110 GETTABLEKS                       R17 R17 K26 ["VerifiedCreatorBadge"]
      112 CALL                             R16 1 1
      113 GETIMPORT                        R17 K5 [require]
      115 GETTABLEKS                       R18 R0 K11 ["Src"]
      117 GETTABLEKS                       R18 R18 K12 ["Util"]
      119 GETTABLEKS                       R18 R18 K27 ["SharedFlags"]
      121 GETTABLEKS                       R18 R18 K28 ["getFFlagToolboxFixInventoryGridSearch"]
      123 CALL                             R17 1 1
      124 GETTABLEKS                       R18 R2 K29 ["PureComponent"]
      126 LOADK                            R20 K30 ["AssetCreatorName"]
      127 NAMECALL                         R18 R18 K31 ["extend"]
      129 CALL                             R18 2 1
      130 DUPCLOSURE                       R19 K32 [PROTO_3]
      131 CAPTURE                          VAL R2
      132 CAPTURE                          VAL R7
      133 CAPTURE                          VAL R17
      134 SETTABLEKS                       R19 R18 K33 ["init"]
      136 DUPCLOSURE                       R19 K34 [PROTO_4]
      137 SETTABLEKS                       R19 R18 K35 ["didMount"]
      139 DUPCLOSURE                       R19 K36 [PROTO_5]
      140 CAPTURE                          VAL R8
      141 CAPTURE                          VAL R7
      142 CAPTURE                          VAL R2
      143 CAPTURE                          VAL R5
      144 CAPTURE                          VAL R15
      145 CAPTURE                          VAL R16
      146 SETTABLEKS                       R19 R18 K37 ["render"]
      148 MOVE                             R19 R10
      149 DUPTABLE                         R20 K41 [{"Settings", "Stylizer", "Modal", "Network"}]
      150 SETTABLEKS                       R11 R20 K17 ["Settings"]
      152 GETTABLEKS                       R21 R9 K38 ["Stylizer"]
      154 SETTABLEKS                       R21 R20 K38 ["Stylizer"]
      156 SETTABLEKS                       R12 R20 K39 ["Modal"]
      158 SETTABLEKS                       R13 R20 K40 ["Network"]
      160 CALL                             R19 1 1
      161 MOVE                             R20 R18
      162 CALL                             R19 1 1
      163 MOVE                             R18 R19
      164 DUPCLOSURE                       R19 K42 [PROTO_6]
      165 DUPCLOSURE                       R20 K43 [PROTO_8]
      166 CAPTURE                          VAL R17
      167 CAPTURE                          VAL R14
      168 GETTABLEKS                       R21 R3 K44 ["connect"]
      170 MOVE                             R22 R19
      171 MOVE                             R23 R20
      172 CALL                             R21 2 1
      173 MOVE                             R22 R18
      174 CALL                             R21 1 -1
      175 RETURN                           R21 -1
