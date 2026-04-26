PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 GETIMPORT                        R2 K3 [Rect.new]
        5 LOADN                            R3 0
        6 LOADN                            R4 0
        7 LOADN                            R5 10
        8 LOADN                            R6 10
        9 CALL                             R2 4 -1
       10 CALL                             R1 -1 2
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R3 R4 K0 ["useState"]
       14 GETIMPORT                        R4 K3 [Rect.new]
       16 LOADN                            R5 1
       17 LOADN                            R6 1
       18 LOADN                            R7 3
       19 LOADN                            R8 3
       20 CALL                             R4 4 -1
       21 CALL                             R3 -1 2
       22 GETUPVAL                         R6 0
       23 GETTABLEKS                       R5 R6 K0 ["useState"]
       25 GETIMPORT                        R6 K3 [Rect.new]
       27 LOADN                            R7 7
       28 LOADN                            R8 7
       29 LOADN                            R9 9
       30 LOADN                            R10 9
       31 CALL                             R6 4 -1
       32 CALL                             R5 -1 2
       33 GETUPVAL                         R8 0
       34 GETTABLEKS                       R7 R8 K4 ["createElement"]
       36 GETUPVAL                         R8 1
       37 DUPTABLE                         R9 K7 [{"GraphRect", "children"}]
       38 SETTABLEKS                       R1 R9 K5 ["GraphRect"]
       40 DUPTABLE                         R10 K11 [{"Grid", "Panel", "Panel2"}]
       41 GETUPVAL                         R12 0
       42 GETTABLEKS                       R11 R12 K4 ["createElement"]
       44 GETUPVAL                         R12 2
       45 DUPTABLE                         R13 K14 [{"XAxis", "YAxis"}]
       46 DUPTABLE                         R14 K17 [{"Type", "Unit"}]
       47 LOADK                            R15 K18 ["Uniform"]
       48 SETTABLEKS                       R15 R14 K15 ["Type"]
       50 LOADK                            R15 K19 [0.5]
       51 SETTABLEKS                       R15 R14 K16 ["Unit"]
       53 SETTABLEKS                       R14 R13 K12 ["XAxis"]
       55 DUPTABLE                         R14 K17 [{"Type", "Unit"}]
       56 LOADK                            R15 K18 ["Uniform"]
       57 SETTABLEKS                       R15 R14 K15 ["Type"]
       59 LOADN                            R15 1
       60 SETTABLEKS                       R15 R14 K16 ["Unit"]
       62 SETTABLEKS                       R14 R13 K13 ["YAxis"]
       64 CALL                             R11 2 1
       65 SETTABLEKS                       R11 R10 K8 ["Grid"]
       67 GETUPVAL                         R12 0
       68 GETTABLEKS                       R11 R12 K4 ["createElement"]
       70 GETUPVAL                         R12 3
       71 DUPTABLE                         R13 K30 [{"Rect", "SetRect", "MinSize", "DragEnabled", "CornerBottomRightEnabled", "EdgeRightEnabled", "EdgeBottomEnabled", "XSnap", "YSnap", "BackgroundTransparency", "ZIndex"}]
       72 SETTABLEKS                       R3 R13 K1 ["Rect"]
       74 SETTABLEKS                       R4 R13 K20 ["SetRect"]
       76 GETIMPORT                        R14 K32 [Vector2.new]
       78 LOADN                            R15 1
       79 LOADN                            R16 1
       80 CALL                             R14 2 1
       81 SETTABLEKS                       R14 R13 K21 ["MinSize"]
       83 LOADB                            R14 1
       84 SETTABLEKS                       R14 R13 K22 ["DragEnabled"]
       86 LOADB                            R14 1
       87 SETTABLEKS                       R14 R13 K23 ["CornerBottomRightEnabled"]
       89 LOADB                            R14 1
       90 SETTABLEKS                       R14 R13 K24 ["EdgeRightEnabled"]
       92 LOADB                            R14 1
       93 SETTABLEKS                       R14 R13 K25 ["EdgeBottomEnabled"]
       95 LOADK                            R14 K33 [0.125]
       96 SETTABLEKS                       R14 R13 K26 ["XSnap"]
       98 LOADK                            R14 K34 [0.25]
       99 SETTABLEKS                       R14 R13 K27 ["YSnap"]
      101 LOADN                            R14 0
      102 SETTABLEKS                       R14 R13 K28 ["BackgroundTransparency"]
      104 LOADN                            R14 2
      105 SETTABLEKS                       R14 R13 K29 ["ZIndex"]
      107 DUPTABLE                         R14 K36 [{"Text"}]
      108 GETUPVAL                         R16 0
      109 GETTABLEKS                       R15 R16 K4 ["createElement"]
      111 LOADK                            R16 K37 ["TextLabel"]
      112 DUPTABLE                         R17 K42 [{"BackgroundTransparency", "BorderSizePixel", "Size", "Text", "TextColor3", "TextWrapped", "ZIndex"}]
      113 LOADN                            R18 1
      114 SETTABLEKS                       R18 R17 K28 ["BackgroundTransparency"]
      116 LOADN                            R18 0
      117 SETTABLEKS                       R18 R17 K38 ["BorderSizePixel"]
      119 GETIMPORT                        R18 K45 [UDim2.fromScale]
      121 LOADN                            R19 1
      122 LOADN                            R20 1
      123 CALL                             R18 2 1
      124 SETTABLEKS                       R18 R17 K39 ["Size"]
      126 LOADK                            R18 K46 ["this panel can be resized from the right or the bottom"]
      127 SETTABLEKS                       R18 R17 K35 ["Text"]
      129 GETIMPORT                        R18 K48 [Color3.new]
      131 LOADN                            R19 1
      132 LOADN                            R20 1
      133 LOADN                            R21 1
      134 CALL                             R18 3 1
      135 SETTABLEKS                       R18 R17 K40 ["TextColor3"]
      137 LOADB                            R18 1
      138 SETTABLEKS                       R18 R17 K41 ["TextWrapped"]
      140 LOADN                            R18 255
      141 SETTABLEKS                       R18 R17 K29 ["ZIndex"]
      143 CALL                             R15 2 1
      144 SETTABLEKS                       R15 R14 K35 ["Text"]
      146 CALL                             R11 3 1
      147 SETTABLEKS                       R11 R10 K9 ["Panel"]
      149 GETUPVAL                         R12 0
      150 GETTABLEKS                       R11 R12 K4 ["createElement"]
      152 GETUPVAL                         R12 3
      153 DUPTABLE                         R13 K53 [{"Rect", "SetRect", "MinSize", "DragEnabled", "CornerTopLeftEnabled", "EdgeLeftEnabled", "EdgeTopEnabled", "XSnap", "YSnap", "BackgroundTransparency", "BackgroundColor3", "ZIndex"}]
      154 SETTABLEKS                       R5 R13 K1 ["Rect"]
      156 SETTABLEKS                       R6 R13 K20 ["SetRect"]
      158 GETIMPORT                        R14 K32 [Vector2.new]
      160 LOADN                            R15 1
      161 LOADN                            R16 1
      162 CALL                             R14 2 1
      163 SETTABLEKS                       R14 R13 K21 ["MinSize"]
      165 LOADB                            R14 1
      166 SETTABLEKS                       R14 R13 K22 ["DragEnabled"]
      168 LOADB                            R14 1
      169 SETTABLEKS                       R14 R13 K49 ["CornerTopLeftEnabled"]
      171 LOADB                            R14 1
      172 SETTABLEKS                       R14 R13 K50 ["EdgeLeftEnabled"]
      174 LOADB                            R14 1
      175 SETTABLEKS                       R14 R13 K51 ["EdgeTopEnabled"]
      177 LOADK                            R14 K33 [0.125]
      178 SETTABLEKS                       R14 R13 K26 ["XSnap"]
      180 LOADK                            R14 K34 [0.25]
      181 SETTABLEKS                       R14 R13 K27 ["YSnap"]
      183 LOADN                            R14 0
      184 SETTABLEKS                       R14 R13 K28 ["BackgroundTransparency"]
      186 GETIMPORT                        R14 K48 [Color3.new]
      188 LOADK                            R15 K54 [0.4]
      189 LOADK                            R16 K55 [0.8]
      190 LOADK                            R17 K54 [0.4]
      191 CALL                             R14 3 1
      192 SETTABLEKS                       R14 R13 K52 ["BackgroundColor3"]
      194 LOADN                            R14 1
      195 SETTABLEKS                       R14 R13 K29 ["ZIndex"]
      197 DUPTABLE                         R14 K36 [{"Text"}]
      198 GETUPVAL                         R16 0
      199 GETTABLEKS                       R15 R16 K4 ["createElement"]
      201 LOADK                            R16 K37 ["TextLabel"]
      202 DUPTABLE                         R17 K42 [{"BackgroundTransparency", "BorderSizePixel", "Size", "Text", "TextColor3", "TextWrapped", "ZIndex"}]
      203 LOADN                            R18 1
      204 SETTABLEKS                       R18 R17 K28 ["BackgroundTransparency"]
      206 LOADN                            R18 0
      207 SETTABLEKS                       R18 R17 K38 ["BorderSizePixel"]
      209 GETIMPORT                        R18 K45 [UDim2.fromScale]
      211 LOADN                            R19 1
      212 LOADN                            R20 1
      213 CALL                             R18 2 1
      214 SETTABLEKS                       R18 R17 K39 ["Size"]
      216 LOADK                            R18 K56 ["this panel can be resized from the left or the top"]
      217 SETTABLEKS                       R18 R17 K35 ["Text"]
      219 GETIMPORT                        R18 K48 [Color3.new]
      221 LOADN                            R19 0
      222 LOADN                            R20 0
      223 LOADN                            R21 0
      224 CALL                             R18 3 1
      225 SETTABLEKS                       R18 R17 K40 ["TextColor3"]
      227 LOADB                            R18 1
      228 SETTABLEKS                       R18 R17 K41 ["TextWrapped"]
      230 LOADN                            R18 255
      231 SETTABLEKS                       R18 R17 K29 ["ZIndex"]
      233 CALL                             R15 2 1
      234 SETTABLEKS                       R15 R14 K35 ["Text"]
      236 CALL                             R11 3 1
      237 SETTABLEKS                       R11 R10 K10 ["Panel2"]
      239 SETTABLEKS                       R10 R9 K6 ["children"]
      241 CALL                             R7 2 -1
      242 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Graphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R5 K9 ["Canvas"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R6 R0 K8 ["Components"]
       25 GETTABLEKS                       R5 R6 K10 ["Grid"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R7 R0 K8 ["Components"]
       32 GETTABLEKS                       R6 R7 K11 ["ResizablePanel"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K12 ["Types"]
       39 CALL                             R6 1 1
       40 DUPCLOSURE                       R7 K13 [PROTO_0]
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R5
       45 DUPTABLE                         R8 K17 [{"summary", "story", "controls"}]
       46 LOADK                            R9 K18 ["Example with two moveable, resizable panels with handles on different sides."]
       47 SETTABLEKS                       R9 R8 K14 ["summary"]
       49 SETTABLEKS                       R7 R8 K15 ["story"]
       51 NEWTABLE                         R9 0 0
       53 SETTABLEKS                       R9 R8 K16 ["controls"]
       55 RETURN                           R8 1
