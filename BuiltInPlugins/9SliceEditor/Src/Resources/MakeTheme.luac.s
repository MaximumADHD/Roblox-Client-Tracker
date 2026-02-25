PROTO_0:
        0 LOADNIL                          R1
        1 JUMPIFNOT                        R0 ; [+8]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K0 ["mock"]
        5 GETUPVAL                         R3 1
        6 GETUPVAL                         R4 2
        7 CALL                             R2 2 1
        8 MOVE                             R1 R2
        9 JUMP                             ; [+7]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R2 R3 K1 ["new"]
       13 GETUPVAL                         R3 1
       14 GETUPVAL                         R4 2
       15 CALL                             R2 2 1
       16 MOVE                             R1 R2
       17 GETUPVAL                         R4 3
       18 NAMECALL                         R2 R1 K2 ["extend"]
       20 CALL                             R2 2 -1
       21 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Framework"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K7 ["Style"]
       18 GETTABLEKS                       R4 R2 K8 ["Themes"]
       20 GETTABLEKS                       R3 R4 K9 ["StudioTheme"]
       22 GETTABLEKS                       R4 R2 K10 ["ComponentSymbols"]
       24 GETTABLEKS                       R5 R2 K11 ["StyleKey"]
       26 GETIMPORT                        R6 K4 [require]
       28 GETTABLEKS                       R9 R0 K12 ["Src"]
       30 GETTABLEKS                       R8 R9 K13 ["Util"]
       32 GETTABLEKS                       R7 R8 K14 ["Constants"]
       34 CALL                             R6 1 1
       35 LOADK                            R9 K15 ["AlertDialog"]
       36 NAMECALL                         R7 R4 K16 ["add"]
       38 CALL                             R7 2 0
       39 LOADK                            R9 K17 ["ImageDragger"]
       40 NAMECALL                         R7 R4 K16 ["add"]
       42 CALL                             R7 2 0
       43 LOADK                            R9 K18 ["SliceEditor"]
       44 NAMECALL                         R7 R4 K16 ["add"]
       46 CALL                             R7 2 0
       47 LOADK                            R9 K19 ["TextEditor"]
       48 NAMECALL                         R7 R4 K16 ["add"]
       50 CALL                             R7 2 0
       51 LOADK                            R9 K20 ["ImageEditor"]
       52 NAMECALL                         R7 R4 K16 ["add"]
       54 CALL                             R7 2 0
       55 NEWTABLE                         R7 1 0
       57 GETTABLEKS                       R8 R5 K21 ["SubtleBackgroundColor"]
       59 GETIMPORT                        R9 K24 [Color3.fromRGB]
       61 LOADN                            R10 40
       62 LOADN                            R11 40
       63 LOADN                            R12 40
       64 CALL                             R9 3 1
       65 SETTABLE                         R9 R7 R8
       66 NEWTABLE                         R8 1 0
       68 GETTABLEKS                       R9 R5 K21 ["SubtleBackgroundColor"]
       70 GETIMPORT                        R10 K24 [Color3.fromRGB]
       72 LOADN                            R11 249
       73 LOADN                            R12 249
       74 LOADN                            R13 249
       75 CALL                             R10 3 1
       76 SETTABLE                         R10 R8 R9
       77 NEWTABLE                         R9 8 0
       79 DUPTABLE                         R10 K26 [{"Size", "Style"}]
       80 GETIMPORT                        R11 K29 [UDim2.fromOffset]
       82 LOADN                            R12 75
       83 LOADN                            R13 28
       84 CALL                             R11 2 1
       85 SETTABLEKS                       R11 R10 K25 ["Size"]
       87 LOADK                            R11 K30 ["Round"]
       88 SETTABLEKS                       R11 R10 K7 ["Style"]
       90 SETTABLEKS                       R10 R9 K31 ["Button"]
       92 GETTABLEKS                       R10 R4 K19 ["TextEditor"]
       94 DUPTABLE                         R11 K34 [{"OffsetItemSpacing", "PixelDimensionsHeightPx"}]
       95 GETIMPORT                        R12 K37 [UDim.new]
       97 LOADN                            R13 0
       98 LOADN                            R14 7
       99 CALL                             R12 2 1
      100 SETTABLEKS                       R12 R11 K32 ["OffsetItemSpacing"]
      102 LOADN                            R12 40
      103 SETTABLEKS                       R12 R11 K33 ["PixelDimensionsHeightPx"]
      105 SETTABLE                         R11 R9 R10
      106 DUPTABLE                         R10 K42 [{"PaneSize", "LabelXWidth", "TextBoxSize", "LabelTextBoxSpacing", "Style"}]
      107 GETIMPORT                        R11 K29 [UDim2.fromOffset]
      109 LOADN                            R12 110
      110 LOADN                            R13 20
      111 CALL                             R11 2 1
      112 SETTABLEKS                       R11 R10 K38 ["PaneSize"]
      114 LOADN                            R11 50
      115 SETTABLEKS                       R11 R10 K39 ["LabelXWidth"]
      117 GETIMPORT                        R11 K29 [UDim2.fromOffset]
      119 LOADN                            R12 50
      120 LOADN                            R13 20
      121 CALL                             R11 2 1
      122 SETTABLEKS                       R11 R10 K40 ["TextBoxSize"]
      124 LOADN                            R11 10
      125 SETTABLEKS                       R11 R10 K41 ["LabelTextBoxSpacing"]
      127 LOADK                            R11 K43 ["RoundedBorder"]
      128 SETTABLEKS                       R11 R10 K7 ["Style"]
      130 SETTABLEKS                       R10 R9 K44 ["TextOffsetItem"]
      132 GETTABLEKS                       R10 R4 K15 ["AlertDialog"]
      134 DUPTABLE                         R11 K47 [{"PopupMessageSize", "TextSize"}]
      135 GETIMPORT                        R12 K49 [Vector2.new]
      137 LOADN                            R13 144
      138 LOADN                            R14 60
      139 CALL                             R12 2 1
      140 SETTABLEKS                       R12 R11 K45 ["PopupMessageSize"]
      142 LOADN                            R12 18
      143 SETTABLEKS                       R12 R11 K46 ["TextSize"]
      145 SETTABLE                         R11 R9 R10
      146 GETTABLEKS                       R10 R4 K17 ["ImageDragger"]
      148 DUPTABLE                         R11 K52 [{"EdgeHandleSize", "EdgeHandleInsetPx"}]
      149 GETIMPORT                        R12 K29 [UDim2.fromOffset]
      151 LOADN                            R13 30
      152 LOADN                            R14 28
      153 CALL                             R12 2 1
      154 SETTABLEKS                       R12 R11 K50 ["EdgeHandleSize"]
      156 LOADN                            R12 2
      157 SETTABLEKS                       R12 R11 K51 ["EdgeHandleInsetPx"]
      159 SETTABLE                         R11 R9 R10
      160 GETTABLEKS                       R10 R4 K20 ["ImageEditor"]
      162 DUPTABLE                         R11 K55 [{"PaneBackgroundColor", "PaneBorderColor"}]
      163 GETTABLEKS                       R12 R5 K21 ["SubtleBackgroundColor"]
      165 SETTABLEKS                       R12 R11 K53 ["PaneBackgroundColor"]
      167 GETTABLEKS                       R12 R5 K56 ["Border"]
      169 SETTABLEKS                       R12 R11 K54 ["PaneBorderColor"]
      171 SETTABLE                         R11 R9 R10
      172 GETTABLEKS                       R10 R4 K18 ["SliceEditor"]
      174 DUPTABLE                         R11 K66 [{"TextAreaSize", "ImageAreaSize", "ButtonsAreaSize", "ButtonsSpacing", "VerticalSpacing", "HorizontalSpacing", "InfoBoxSize", "PaddingPx", "TextAreaXWindowScaleFactor"}]
      175 GETIMPORT                        R12 K29 [UDim2.fromOffset]
      177 GETTABLEKS                       R13 R6 K67 ["TEXTEDITOR_XSIZE"]
      179 GETTABLEKS                       R15 R6 K69 ["TEXTEDITOR_YSIZE"]
      181 ADDK                             R14 R15 K68 [60]
      182 CALL                             R12 2 1
      183 SETTABLEKS                       R12 R11 K57 ["TextAreaSize"]
      185 GETIMPORT                        R12 K29 [UDim2.fromOffset]
      187 GETTABLEKS                       R15 R6 K71 ["BACKGROUND_SIZE"]
      189 ADDK                             R14 R15 K70 [10]
      190 GETTABLEKS                       R15 R6 K67 ["TEXTEDITOR_XSIZE"]
      192 ADD                              R13 R14 R15
      193 GETTABLEKS                       R16 R6 K71 ["BACKGROUND_SIZE"]
      195 GETTABLEKS                       R17 R6 K72 ["TEXTSIZE"]
      197 ADD                              R15 R16 R17
      198 ADDK                             R14 R15 K70 [10]
      199 CALL                             R12 2 1
      200 SETTABLEKS                       R12 R11 K58 ["ImageAreaSize"]
      202 GETIMPORT                        R12 K29 [UDim2.fromOffset]
      204 GETTABLEKS                       R16 R6 K71 ["BACKGROUND_SIZE"]
      206 ADDK                             R15 R16 K70 [10]
      207 GETTABLEKS                       R16 R6 K67 ["TEXTEDITOR_XSIZE"]
      209 ADD                              R14 R15 R16
      210 ADDK                             R13 R14 K70 [10]
      211 LOADN                            R14 42
      212 CALL                             R12 2 1
      213 SETTABLEKS                       R12 R11 K59 ["ButtonsAreaSize"]
      215 GETIMPORT                        R12 K37 [UDim.new]
      217 LOADN                            R13 0
      218 LOADN                            R14 10
      219 CALL                             R12 2 1
      220 SETTABLEKS                       R12 R11 K60 ["ButtonsSpacing"]
      222 GETIMPORT                        R12 K37 [UDim.new]
      224 LOADN                            R13 0
      225 LOADN                            R14 5
      226 CALL                             R12 2 1
      227 SETTABLEKS                       R12 R11 K61 ["VerticalSpacing"]
      229 GETIMPORT                        R12 K37 [UDim.new]
      231 LOADN                            R13 0
      232 LOADN                            R14 5
      233 CALL                             R12 2 1
      234 SETTABLEKS                       R12 R11 K62 ["HorizontalSpacing"]
      236 GETIMPORT                        R12 K29 [UDim2.fromOffset]
      238 LOADN                            R13 44
      239 LOADN                            R14 200
      240 CALL                             R12 2 1
      241 SETTABLEKS                       R12 R11 K63 ["InfoBoxSize"]
      243 LOADN                            R12 2
      244 SETTABLEKS                       R12 R11 K64 ["PaddingPx"]
      246 LOADK                            R12 K73 [0.05]
      247 SETTABLEKS                       R12 R11 K65 ["TextAreaXWindowScaleFactor"]
      249 SETTABLE                         R11 R9 R10
      250 DUPCLOSURE                       R10 K74 [PROTO_0]
      251 CAPTURE                          VAL R3
      252 CAPTURE                          VAL R7
      253 CAPTURE                          VAL R8
      254 CAPTURE                          VAL R9
      255 RETURN                           R10 1
