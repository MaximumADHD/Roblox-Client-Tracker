PROTO_0:
        0 LOADNIL                          R1
        1 JUMPIFNOT                        R0 ; [+8]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["mock"]
        5 GETUPVAL                         R3 1
        6 GETUPVAL                         R4 2
        7 CALL                             R2 2 1
        8 MOVE                             R1 R2
        9 JUMP                             ; [+7]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K1 ["new"]
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
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Framework"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K7 ["Style"]
       18 GETTABLEKS                       R3 R2 K8 ["Themes"]
       20 GETTABLEKS                       R3 R3 K9 ["StudioTheme"]
       22 GETTABLEKS                       R4 R2 K10 ["ComponentSymbols"]
       24 GETTABLEKS                       R5 R2 K11 ["StyleKey"]
       26 GETIMPORT                        R6 K4 [require]
       28 GETTABLEKS                       R7 R0 K12 ["Src"]
       30 GETTABLEKS                       R7 R7 K13 ["Util"]
       32 GETTABLEKS                       R7 R7 K14 ["Constants"]
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
       79 DUPTABLE                         R10 K27 [{["Size"], ["Style"] = "Round"}]
       80 GETIMPORT                        R11 K30 [UDim2.fromOffset]
       82 LOADN                            R12 75
       83 LOADN                            R13 28
       84 CALL                             R11 2 1
       85 SETTABLEKS                       R11 R10 K25 ["Size"]
       87 SETTABLEKS                       R10 R9 K31 ["Button"]
       89 GETTABLEKS                       R10 R4 K19 ["TextEditor"]
       91 DUPTABLE                         R11 K35 [{["OffsetItemSpacing"], ["PixelDimensionsHeightPx"] = 40}]
       92 GETIMPORT                        R12 K38 [UDim.new]
       94 LOADN                            R13 0
       95 LOADN                            R14 7
       96 CALL                             R12 2 1
       97 SETTABLEKS                       R12 R11 K32 ["OffsetItemSpacing"]
       99 SETTABLE                         R11 R9 R10
      100 DUPTABLE                         R10 K46 [{["PaneSize"], ["LabelXWidth"] = 50, ["TextBoxSize"], ["LabelTextBoxSpacing"] = 10, ["Style"] = "RoundedBorder"}]
      101 GETIMPORT                        R11 K30 [UDim2.fromOffset]
      103 LOADN                            R12 110
      104 LOADN                            R13 20
      105 CALL                             R11 2 1
      106 SETTABLEKS                       R11 R10 K39 ["PaneSize"]
      108 GETIMPORT                        R11 K30 [UDim2.fromOffset]
      110 LOADN                            R12 50
      111 LOADN                            R13 20
      112 CALL                             R11 2 1
      113 SETTABLEKS                       R11 R10 K42 ["TextBoxSize"]
      115 SETTABLEKS                       R10 R9 K47 ["TextOffsetItem"]
      117 GETTABLEKS                       R10 R4 K15 ["AlertDialog"]
      119 DUPTABLE                         R11 K51 [{["PopupMessageSize"], ["TextSize"] = 18}]
      120 GETIMPORT                        R12 K53 [Vector2.new]
      122 LOADN                            R13 400
      123 LOADN                            R14 60
      124 CALL                             R12 2 1
      125 SETTABLEKS                       R12 R11 K48 ["PopupMessageSize"]
      127 SETTABLE                         R11 R9 R10
      128 GETTABLEKS                       R10 R4 K17 ["ImageDragger"]
      130 DUPTABLE                         R11 K57 [{["EdgeHandleSize"], ["EdgeHandleInsetPx"] = 2}]
      131 GETIMPORT                        R12 K30 [UDim2.fromOffset]
      133 LOADN                            R13 30
      134 LOADN                            R14 28
      135 CALL                             R12 2 1
      136 SETTABLEKS                       R12 R11 K54 ["EdgeHandleSize"]
      138 SETTABLE                         R11 R9 R10
      139 GETTABLEKS                       R10 R4 K20 ["ImageEditor"]
      141 DUPTABLE                         R11 K60 [{"PaneBackgroundColor", "PaneBorderColor"}]
      142 GETTABLEKS                       R12 R5 K21 ["SubtleBackgroundColor"]
      144 SETTABLEKS                       R12 R11 K58 ["PaneBackgroundColor"]
      146 GETTABLEKS                       R12 R5 K61 ["Border"]
      148 SETTABLEKS                       R12 R11 K59 ["PaneBorderColor"]
      150 SETTABLE                         R11 R9 R10
      151 GETTABLEKS                       R10 R4 K18 ["SliceEditor"]
      153 DUPTABLE                         R11 K72 [{["TextAreaSize"], ["ImageAreaSize"], ["ButtonsAreaSize"], ["ButtonsSpacing"], ["VerticalSpacing"], ["HorizontalSpacing"], ["InfoBoxSize"], ["PaddingPx"] = 2, ["TextAreaXWindowScaleFactor"] = 0.05}]
      154 GETIMPORT                        R12 K30 [UDim2.fromOffset]
      156 GETTABLEKS                       R13 R6 K73 ["TEXTEDITOR_XSIZE"]
      158 GETTABLEKS                       R15 R6 K75 ["TEXTEDITOR_YSIZE"]
      160 ADDK                             R14 R15 K74 [60]
      161 CALL                             R12 2 1
      162 SETTABLEKS                       R12 R11 K62 ["TextAreaSize"]
      164 GETIMPORT                        R12 K30 [UDim2.fromOffset]
      166 GETTABLEKS                       R15 R6 K76 ["BACKGROUND_SIZE"]
      168 ADDK                             R14 R15 K44 [10]
      169 GETTABLEKS                       R15 R6 K73 ["TEXTEDITOR_XSIZE"]
      171 ADD                              R13 R14 R15
      172 GETTABLEKS                       R16 R6 K76 ["BACKGROUND_SIZE"]
      174 GETTABLEKS                       R17 R6 K77 ["TEXTSIZE"]
      176 ADD                              R15 R16 R17
      177 ADDK                             R14 R15 K44 [10]
      178 CALL                             R12 2 1
      179 SETTABLEKS                       R12 R11 K63 ["ImageAreaSize"]
      181 GETIMPORT                        R12 K30 [UDim2.fromOffset]
      183 GETTABLEKS                       R16 R6 K76 ["BACKGROUND_SIZE"]
      185 ADDK                             R15 R16 K44 [10]
      186 GETTABLEKS                       R16 R6 K73 ["TEXTEDITOR_XSIZE"]
      188 ADD                              R14 R15 R16
      189 ADDK                             R13 R14 K44 [10]
      190 LOADN                            R14 42
      191 CALL                             R12 2 1
      192 SETTABLEKS                       R12 R11 K64 ["ButtonsAreaSize"]
      194 GETIMPORT                        R12 K38 [UDim.new]
      196 LOADN                            R13 0
      197 LOADN                            R14 10
      198 CALL                             R12 2 1
      199 SETTABLEKS                       R12 R11 K65 ["ButtonsSpacing"]
      201 GETIMPORT                        R12 K38 [UDim.new]
      203 LOADN                            R13 0
      204 LOADN                            R14 5
      205 CALL                             R12 2 1
      206 SETTABLEKS                       R12 R11 K66 ["VerticalSpacing"]
      208 GETIMPORT                        R12 K38 [UDim.new]
      210 LOADN                            R13 0
      211 LOADN                            R14 5
      212 CALL                             R12 2 1
      213 SETTABLEKS                       R12 R11 K67 ["HorizontalSpacing"]
      215 GETIMPORT                        R12 K30 [UDim2.fromOffset]
      217 LOADN                            R13 300
      218 LOADN                            R14 200
      219 CALL                             R12 2 1
      220 SETTABLEKS                       R12 R11 K68 ["InfoBoxSize"]
      222 SETTABLE                         R11 R9 R10
      223 DUPCLOSURE                       R10 K78 [PROTO_0]
      224 CAPTURE                          VAL R3
      225 CAPTURE                          VAL R7
      226 CAPTURE                          VAL R8
      227 CAPTURE                          VAL R9
      228 RETURN                           R10 1
