PROTO_0:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 GETTABLE                         R4 R2 R0
        4 JUMPIFNOTEQKNIL                  R4 ; [+2]
        6 LOADB                            R3 0 +1
        7 LOADB                            R3 1
        8 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R2 R0 K1 ["Key"]
        5 GETTABLEKS                       R3 R1 K2 ["SelectedTab"]
        7 GETTABLEKS                       R4 R1 K3 ["EditingItemContext"]
        9 NAMECALL                         R4 R4 K4 ["getItem"]
       11 CALL                             R4 1 1
       12 JUMPIFNOT                        R2 ; [+2]
       13 JUMPIFEQ                         R2 R3 ; [+10]
       15 GETUPVAL                         R6 1
       16 MOVE                             R7 R4
       17 CALL                             R6 1 1
       18 GETTABLE                         R7 R6 R2
       19 JUMPIFNOTEQKNIL                  R7 ; [+2]
       21 LOADB                            R5 0 +1
       22 LOADB                            R5 1
       23 JUMPIF                           R5 ; [+1]
       24 RETURN                           R0 0
       25 GETUPVAL                         R7 0
       26 GETTABLEKS                       R6 R7 K0 ["props"]
       28 GETTABLEKS                       R5 R6 K5 ["SelectPreviewTab"]
       30 MOVE                             R6 R2
       31 CALL                             R5 1 0
       32 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 SETTABLEKS                       R1 R0 K0 ["onClick"]
        5 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["LayoutOrder"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 GETTABLEKS                       R4 R1 K3 ["SelectedTab"]
        8 GETTABLEKS                       R5 R1 K4 ["EditingItemContext"]
       10 NAMECALL                         R5 R5 K5 ["getItem"]
       12 CALL                             R5 1 1
       13 GETTABLEKS                       R6 R1 K6 ["Stylizer"]
       15 NEWTABLE                         R7 0 0
       17 GETUPVAL                         R9 0
       18 GETTABLEKS                       R8 R9 K7 ["getTabs"]
       20 CALL                             R8 0 1
       21 GETIMPORT                        R9 K9 [pairs]
       23 MOVE                             R10 R8
       24 CALL                             R9 1 3
       25 FORGPREP_NEXT                    R9
       26 GETTABLEKS                       R14 R13 K1 ["LayoutOrder"]
       28 DUPTABLE                         R15 K13 [{"Key", "Label", "Disabled"}]
       29 SETTABLEKS                       R12 R15 K10 ["Key"]
       31 GETUPVAL                         R20 1
       32 GETTABLEKS                       R19 R20 K14 ["LOCALIZATION_KEYS"]
       34 GETTABLEKS                       R18 R19 K15 ["Preview"]
       36 GETTABLEKS                       R19 R13 K16 ["LocalizationKey"]
       38 NAMECALL                         R16 R3 K17 ["getText"]
       40 CALL                             R16 3 1
       41 SETTABLEKS                       R16 R15 K11 ["Label"]
       43 GETUPVAL                         R18 2
       44 MOVE                             R19 R5
       45 CALL                             R18 1 1
       46 GETTABLE                         R19 R18 R12
       47 JUMPIFNOTEQKNIL                  R19 ; [+2]
       49 LOADB                            R17 0 +1
       50 LOADB                            R17 1
       51 NOT                              R16 R17
       52 SETTABLEKS                       R16 R15 K12 ["Disabled"]
       54 SETTABLE                         R15 R7 R14
       55 FORGLOOP                         R9 2 ; [-30]
       57 LOADNIL                          R9
       58 GETIMPORT                        R10 K19 [ipairs]
       60 MOVE                             R11 R7
       61 CALL                             R10 1 3
       62 FORGPREP_INEXT                   R10
       63 GETTABLEKS                       R15 R14 K10 ["Key"]
       65 JUMPIFNOTEQ                      R15 R4 ; [+2]
       67 MOVE                             R9 R14
       68 FORGLOOP                         R10 2 [inext] ; [-6]
       70 GETUPVAL                         R11 3
       71 GETTABLEKS                       R10 R11 K20 ["createElement"]
       73 GETUPVAL                         R11 4
       74 DUPTABLE                         R12 K22 [{"Size", "LayoutOrder"}]
       75 GETIMPORT                        R13 K25 [UDim2.new]
       77 LOADN                            R14 1
       78 LOADN                            R15 0
       79 LOADN                            R16 0
       80 GETTABLEKS                       R17 R6 K26 ["TabHeight"]
       82 CALL                             R13 4 1
       83 SETTABLEKS                       R13 R12 K21 ["Size"]
       85 SETTABLEKS                       R2 R12 K1 ["LayoutOrder"]
       87 DUPTABLE                         R13 K29 [{"BottomLine", "Tabs"}]
       88 GETUPVAL                         R15 3
       89 GETTABLEKS                       R14 R15 K20 ["createElement"]
       91 GETUPVAL                         R15 4
       92 DUPTABLE                         R16 K34 [{"Size", "Position", "AnchorPoint", "BackgroundColor", "ZIndex"}]
       93 GETIMPORT                        R17 K25 [UDim2.new]
       95 LOADN                            R18 1
       96 LOADN                            R19 0
       97 LOADN                            R20 0
       98 GETTABLEKS                       R21 R6 K35 ["BorderSize"]
      100 CALL                             R17 4 1
      101 SETTABLEKS                       R17 R16 K21 ["Size"]
      103 GETIMPORT                        R17 K25 [UDim2.new]
      105 LOADN                            R18 0
      106 LOADN                            R19 0
      107 LOADN                            R20 1
      108 LOADN                            R21 0
      109 CALL                             R17 4 1
      110 SETTABLEKS                       R17 R16 K30 ["Position"]
      112 GETIMPORT                        R17 K37 [Vector2.new]
      114 LOADN                            R18 0
      115 LOADN                            R19 1
      116 CALL                             R17 2 1
      117 SETTABLEKS                       R17 R16 K31 ["AnchorPoint"]
      119 GETTABLEKS                       R17 R6 K38 ["BorderColor"]
      121 SETTABLEKS                       R17 R16 K32 ["BackgroundColor"]
      123 LOADN                            R17 0
      124 SETTABLEKS                       R17 R16 K33 ["ZIndex"]
      126 CALL                             R14 2 1
      127 SETTABLEKS                       R14 R13 K27 ["BottomLine"]
      129 GETUPVAL                         R15 3
      130 GETTABLEKS                       R14 R15 K20 ["createElement"]
      132 GETUPVAL                         R15 5
      133 DUPTABLE                         R16 K40 [{"Tabs", "OnTabSelected", "SelectedTab"}]
      134 SETTABLEKS                       R7 R16 K28 ["Tabs"]
      136 GETTABLEKS                       R17 R0 K41 ["onClick"]
      138 SETTABLEKS                       R17 R16 K39 ["OnTabSelected"]
      140 SETTABLEKS                       R9 R16 K3 ["SelectedTab"]
      142 CALL                             R14 2 1
      143 SETTABLEKS                       R14 R13 K28 ["Tabs"]
      145 CALL                             R10 3 -1
      146 RETURN                           R10 -1

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["previewStatus"]
        2 DUPTABLE                         R3 K2 [{"SelectedTab"}]
        3 GETTABLEKS                       R4 R2 K3 ["selectedTab"]
        5 SETTABLEKS                       R4 R3 K1 ["SelectedTab"]
        7 RETURN                           R3 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_6:
        0 DUPTABLE                         R1 K1 [{"SelectPreviewTab"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["SelectPreviewTab"]
        6 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R3 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R3 K6 ["Roact"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R4 R0 K5 ["Packages"]
       22 GETTABLEKS                       R3 R4 K7 ["RoactRodux"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R5 R0 K5 ["Packages"]
       29 GETTABLEKS                       R4 R5 K8 ["AvatarToolsShared"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R5 R3 K9 ["Util"]
       34 GETTABLEKS                       R4 R5 K10 ["AccessoryAndBodyToolShared"]
       36 GETTABLEKS                       R5 R4 K11 ["Constants"]
       38 GETTABLEKS                       R6 R4 K12 ["PreviewConstantsInterface"]
       40 GETTABLEKS                       R7 R4 K13 ["getActivePreviewTabs"]
       42 GETIMPORT                        R8 K4 [require]
       44 GETTABLEKS                       R10 R0 K5 ["Packages"]
       46 GETTABLEKS                       R9 R10 K14 ["Framework"]
       48 CALL                             R8 1 1
       49 GETTABLEKS                       R9 R8 K15 ["ContextServices"]
       51 GETTABLEKS                       R10 R9 K16 ["withContext"]
       53 GETTABLEKS                       R12 R3 K17 ["Contexts"]
       55 GETTABLEKS                       R11 R12 K18 ["EditingItemContext"]
       57 GETTABLEKS                       R12 R8 K19 ["UI"]
       59 GETTABLEKS                       R13 R12 K20 ["Tabs"]
       61 GETTABLEKS                       R14 R12 K21 ["Pane"]
       63 GETTABLEKS                       R15 R8 K9 ["Util"]
       65 GETTABLEKS                       R16 R15 K22 ["Typecheck"]
       67 GETIMPORT                        R17 K4 [require]
       69 GETTABLEKS                       R20 R0 K23 ["Src"]
       71 GETTABLEKS                       R19 R20 K24 ["Actions"]
       73 GETTABLEKS                       R18 R19 K25 ["SelectPreviewTab"]
       75 CALL                             R17 1 1
       76 GETTABLEKS                       R18 R1 K26 ["PureComponent"]
       78 LOADK                            R20 K27 ["PreviewTabsRibbon"]
       79 NAMECALL                         R18 R18 K28 ["extend"]
       81 CALL                             R18 2 1
       82 GETTABLEKS                       R19 R16 K29 ["wrap"]
       84 MOVE                             R20 R18
       85 GETIMPORT                        R21 K1 [script]
       87 CALL                             R19 2 0
       88 DUPCLOSURE                       R19 K30 [PROTO_0]
       89 CAPTURE                          VAL R7
       90 DUPCLOSURE                       R20 K31 [PROTO_2]
       91 CAPTURE                          VAL R7
       92 SETTABLEKS                       R20 R18 K32 ["init"]
       94 DUPCLOSURE                       R20 K33 [PROTO_3]
       95 CAPTURE                          VAL R6
       96 CAPTURE                          VAL R5
       97 CAPTURE                          VAL R7
       98 CAPTURE                          VAL R1
       99 CAPTURE                          VAL R14
      100 CAPTURE                          VAL R13
      101 SETTABLEKS                       R20 R18 K34 ["render"]
      103 MOVE                             R20 R10
      104 DUPTABLE                         R21 K37 [{"Localization", "Stylizer", "EditingItemContext"}]
      105 GETTABLEKS                       R22 R9 K35 ["Localization"]
      107 SETTABLEKS                       R22 R21 K35 ["Localization"]
      109 GETTABLEKS                       R22 R9 K36 ["Stylizer"]
      111 SETTABLEKS                       R22 R21 K36 ["Stylizer"]
      113 SETTABLEKS                       R11 R21 K18 ["EditingItemContext"]
      115 CALL                             R20 1 1
      116 MOVE                             R21 R18
      117 CALL                             R20 1 1
      118 MOVE                             R18 R20
      119 DUPCLOSURE                       R20 K38 [PROTO_4]
      120 DUPCLOSURE                       R21 K39 [PROTO_6]
      121 CAPTURE                          VAL R17
      122 GETTABLEKS                       R22 R2 K40 ["connect"]
      124 MOVE                             R23 R20
      125 MOVE                             R24 R21
      126 CALL                             R22 2 1
      127 MOVE                             R23 R18
      128 CALL                             R22 1 -1
      129 RETURN                           R22 -1
