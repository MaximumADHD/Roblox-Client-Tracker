PROTO_0:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"isHovered"}]
        2 LOADB                            R3 1
        3 SETTABLEKS                       R3 R2 K0 ["isHovered"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 GETUPVAL                         R0 0
        9 GETTABLEKS                       R0 R0 K3 ["props"]
       11 GETTABLEKS                       R0 R0 K4 ["Modal"]
       13 GETTABLEKS                       R1 R0 K5 ["onTooltipTriggered"]
       15 GETUPVAL                         R2 1
       16 GETTABLEKS                       R2 R2 K6 ["assetId"]
       18 GETUPVAL                         R3 2
       19 GETTABLEKS                       R3 R3 K7 ["TOOLTIP_TYPE"]
       21 GETTABLEKS                       R3 R3 K8 ["ASSET_NAME"]
       23 CALL                             R1 2 0
       24 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"isHovered"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["isHovered"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R2 K1 [{"isHovered"}]
        1 LOADB                            R3 0
        2 SETTABLEKS                       R3 R2 K0 ["isHovered"]
        4 SETTABLEKS                       R2 R0 K2 ["state"]
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          VAL R0
        8 CAPTURE                          VAL R1
        9 CAPTURE                          UPVAL U0
       10 SETTABLEKS                       R2 R0 K3 ["onMouseEnter"]
       12 NEWCLOSURE                       R2 P1
       13 CAPTURE                          VAL R0
       14 SETTABLEKS                       R2 R0 K4 ["onMouseLeave"]
       16 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["assetId"]
        6 GETTABLEKS                       R4 R1 K3 ["assetName"]
        8 GETTABLEKS                       R6 R1 K5 ["LayoutOrder"]
       10 ORK                              R5 R6 K4 [0]
       11 GETUPVAL                         R6 0
       12 GETTABLEKS                       R6 R6 K6 ["ASSET_NAME_HEIGHT"]
       14 GETTABLEKS                       R7 R1 K7 ["NumberRows"]
       16 JUMPIFEQKNIL                     R7 ; [+7]
       18 GETUPVAL                         R7 0
       19 GETTABLEKS                       R7 R7 K8 ["ASSET_NAME_ONE_LINE_HEIGHT"]
       21 GETTABLEKS                       R8 R1 K7 ["NumberRows"]
       23 MUL                              R6 R7 R8
       24 GETTABLEKS                       R7 R1 K9 ["Modal"]
       26 GETTABLEKS                       R7 R7 K10 ["modalStatus"]
       28 MOVE                             R10 R3
       29 GETUPVAL                         R11 0
       30 GETTABLEKS                       R11 R11 K11 ["TOOLTIP_TYPE"]
       32 GETTABLEKS                       R11 R11 K12 ["ASSET_NAME"]
       34 NAMECALL                         R8 R7 K13 ["canShowCurrentTooltip"]
       36 CALL                             R8 3 1
       37 GETTABLEKS                       R9 R2 K14 ["asset"]
       39 GETTABLEKS                       R9 R9 K3 ["assetName"]
       41 GETTABLEKS                       R10 R0 K15 ["state"]
       43 GETTABLEKS                       R10 R10 K16 ["isHovered"]
       45 GETUPVAL                         R11 1
       46 GETTABLEKS                       R11 R11 K17 ["createElement"]
       48 LOADK                            R12 K18 ["TextLabel"]
       49 NEWTABLE                         R13 16 0
       51 LOADN                            R14 1
       52 SETTABLEKS                       R14 R13 K19 ["BackgroundTransparency"]
       54 SETTABLEKS                       R5 R13 K5 ["LayoutOrder"]
       56 GETIMPORT                        R14 K22 [UDim2.new]
       58 LOADN                            R15 1
       59 LOADN                            R16 0
       60 LOADN                            R17 0
       61 MOVE                             R18 R6
       62 CALL                             R14 4 1
       63 SETTABLEKS                       R14 R13 K23 ["Size"]
       65 SETTABLEKS                       R4 R13 K24 ["Text"]
       67 GETTABLEKS                       R14 R9 K25 ["textColor"]
       69 SETTABLEKS                       R14 R13 K26 ["TextColor3"]
       71 GETTABLEKS                       R14 R1 K27 ["Font"]
       73 SETTABLEKS                       R14 R13 K27 ["Font"]
       75 GETTABLEKS                       R14 R1 K28 ["TextSize"]
       77 SETTABLEKS                       R14 R13 K28 ["TextSize"]
       79 GETIMPORT                        R14 K32 [Enum.TextXAlignment.Left]
       81 SETTABLEKS                       R14 R13 K30 ["TextXAlignment"]
       83 GETIMPORT                        R14 K35 [Enum.TextYAlignment.Top]
       85 SETTABLEKS                       R14 R13 K33 ["TextYAlignment"]
       87 LOADB                            R14 1
       88 SETTABLEKS                       R14 R13 K36 ["TextWrapped"]
       90 LOADB                            R14 1
       91 SETTABLEKS                       R14 R13 K37 ["ClipsDescendants"]
       93 GETIMPORT                        R14 K40 [Enum.TextTruncate.AtEnd]
       95 SETTABLEKS                       R14 R13 K38 ["TextTruncate"]
       97 GETUPVAL                         R14 1
       98 GETTABLEKS                       R14 R14 K41 ["Event"]
      100 GETTABLEKS                       R14 R14 K42 ["MouseEnter"]
      102 GETTABLEKS                       R15 R0 K43 ["onMouseEnter"]
      104 SETTABLE                         R15 R13 R14
      105 GETUPVAL                         R14 1
      106 GETTABLEKS                       R14 R14 K41 ["Event"]
      108 GETTABLEKS                       R14 R14 K44 ["MouseLeave"]
      110 GETTABLEKS                       R15 R0 K45 ["onMouseLeave"]
      112 SETTABLE                         R15 R13 R14
      113 DUPTABLE                         R14 K47 [{"TooltipWrapper"}]
      114 MOVE                             R15 R10
      115 JUMPIFNOT                        R15 ; [+12]
      116 GETUPVAL                         R15 1
      117 GETTABLEKS                       R15 R15 K17 ["createElement"]
      119 GETUPVAL                         R16 2
      120 DUPTABLE                         R17 K48 [{"Text", "canShowCurrentTooltip", "isHovered"}]
      121 SETTABLEKS                       R4 R17 K24 ["Text"]
      123 SETTABLEKS                       R8 R17 K13 ["canShowCurrentTooltip"]
      125 SETTABLEKS                       R10 R17 K16 ["isHovered"]
      127 CALL                             R15 2 1
      128 SETTABLEKS                       R15 R14 K46 ["TooltipWrapper"]
      130 CALL                             R11 3 -1
      131 RETURN                           R11 -1

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
       20 GETTABLEKS                       R4 R0 K7 ["Src"]
       22 GETTABLEKS                       R4 R4 K8 ["Util"]
       24 GETTABLEKS                       R4 R4 K9 ["Constants"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K5 [require]
       29 GETTABLEKS                       R5 R0 K7 ["Src"]
       31 GETTABLEKS                       R5 R5 K10 ["ContextServices"]
       33 GETTABLEKS                       R5 R5 K11 ["ModalContext"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K5 [require]
       38 GETTABLEKS                       R6 R1 K12 ["Framework"]
       40 CALL                             R5 1 1
       41 GETTABLEKS                       R5 R5 K10 ["ContextServices"]
       43 GETTABLEKS                       R6 R5 K13 ["withContext"]
       45 GETIMPORT                        R7 K5 [require]
       47 GETTABLEKS                       R8 R0 K7 ["Src"]
       49 GETTABLEKS                       R8 R8 K14 ["Components"]
       51 GETTABLEKS                       R8 R8 K15 ["TooltipWrapper"]
       53 CALL                             R7 1 1
       54 GETTABLEKS                       R8 R2 K16 ["PureComponent"]
       56 LOADK                            R10 K17 ["AssetName"]
       57 NAMECALL                         R8 R8 K18 ["extend"]
       59 CALL                             R8 2 1
       60 DUPCLOSURE                       R9 K19 [PROTO_2]
       61 CAPTURE                          VAL R3
       62 SETTABLEKS                       R9 R8 K20 ["init"]
       64 DUPCLOSURE                       R9 K21 [PROTO_3]
       65 CAPTURE                          VAL R3
       66 CAPTURE                          VAL R2
       67 CAPTURE                          VAL R7
       68 SETTABLEKS                       R9 R8 K22 ["render"]
       70 MOVE                             R9 R6
       71 DUPTABLE                         R10 K25 [{"Stylizer", "Modal"}]
       72 GETTABLEKS                       R11 R5 K23 ["Stylizer"]
       74 SETTABLEKS                       R11 R10 K23 ["Stylizer"]
       76 SETTABLEKS                       R4 R10 K24 ["Modal"]
       78 CALL                             R9 1 1
       79 MOVE                             R10 R8
       80 CALL                             R9 1 1
       81 MOVE                             R8 R9
       82 RETURN                           R8 1
