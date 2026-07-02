PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 GETIMPORT                        R2 K3 [Rect.new]
        5 LOADN                            R3 0
        6 LOADN                            R4 0
        7 LOADN                            R5 10
        8 LOADN                            R6 10
        9 CALL                             R2 4 -1
       10 CALL                             R1 -1 2
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K0 ["useState"]
       14 GETIMPORT                        R4 K3 [Rect.new]
       16 LOADN                            R5 1
       17 LOADN                            R6 1
       18 LOADN                            R7 3
       19 LOADN                            R8 3
       20 CALL                             R4 4 -1
       21 CALL                             R3 -1 2
       22 GETUPVAL                         R5 0
       23 GETTABLEKS                       R5 R5 K0 ["useState"]
       25 GETIMPORT                        R6 K3 [Rect.new]
       27 LOADN                            R7 7
       28 LOADN                            R8 7
       29 LOADN                            R9 9
       30 LOADN                            R10 9
       31 CALL                             R6 4 -1
       32 CALL                             R5 -1 2
       33 GETUPVAL                         R7 0
       34 GETTABLEKS                       R7 R7 K4 ["createElement"]
       36 GETUPVAL                         R8 1
       37 DUPTABLE                         R9 K7 [{"GraphRect", "children"}]
       38 SETTABLEKS                       R1 R9 K5 ["GraphRect"]
       40 DUPTABLE                         R10 K11 [{"Grid", "Panel", "Panel2"}]
       41 GETUPVAL                         R11 0
       42 GETTABLEKS                       R11 R11 K4 ["createElement"]
       44 GETUPVAL                         R12 2
       45 DUPTABLE                         R13 K14 [{"XAxis", "YAxis"}]
       46 DUPTABLE                         R14 K19 [{["Type"] = "Uniform", ["Unit"] = 0.5}]
       47 SETTABLEKS                       R14 R13 K12 ["XAxis"]
       49 DUPTABLE                         R14 K21 [{["Type"] = "Uniform", ["Unit"] = 1}]
       50 SETTABLEKS                       R14 R13 K13 ["YAxis"]
       52 CALL                             R11 2 1
       53 SETTABLEKS                       R11 R10 K8 ["Grid"]
       55 GETUPVAL                         R11 0
       56 GETTABLEKS                       R11 R11 K4 ["createElement"]
       58 GETUPVAL                         R12 3
       59 DUPTABLE                         R13 K37 [{["Rect"], ["SetRect"], ["MinSize"], ["DragEnabled"] = True, ["CornerBottomRightEnabled"] = True, ["EdgeRightEnabled"] = True, ["EdgeBottomEnabled"] = True, ["XSnap"] = 0.125, ["YSnap"] = 0.25, ["BackgroundTransparency"] = 0, ["ZIndex"] = 2}]
       60 SETTABLEKS                       R3 R13 K1 ["Rect"]
       62 SETTABLEKS                       R4 R13 K22 ["SetRect"]
       64 GETIMPORT                        R14 K39 [Vector2.new]
       66 LOADN                            R15 1
       67 LOADN                            R16 1
       68 CALL                             R14 2 1
       69 SETTABLEKS                       R14 R13 K23 ["MinSize"]
       71 DUPTABLE                         R14 K41 [{"Text"}]
       72 GETUPVAL                         R15 0
       73 GETTABLEKS                       R15 R15 K4 ["createElement"]
       75 LOADK                            R16 K42 ["TextLabel"]
       76 DUPTABLE                         R17 K49 [{["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["Size"], ["Text"] = "this panel can be resized from the right or the bottom", ["TextColor3"], ["TextWrapped"] = True, ["ZIndex"] = -1}]
       77 GETIMPORT                        R18 K52 [UDim2.fromScale]
       79 LOADN                            R19 1
       80 LOADN                            R20 1
       81 CALL                             R18 2 1
       82 SETTABLEKS                       R18 R17 K44 ["Size"]
       84 GETIMPORT                        R18 K54 [Color3.new]
       86 LOADN                            R19 1
       87 LOADN                            R20 1
       88 LOADN                            R21 1
       89 CALL                             R18 3 1
       90 SETTABLEKS                       R18 R17 K46 ["TextColor3"]
       92 CALL                             R15 2 1
       93 SETTABLEKS                       R15 R14 K40 ["Text"]
       95 CALL                             R11 3 1
       96 SETTABLEKS                       R11 R10 K9 ["Panel"]
       98 GETUPVAL                         R11 0
       99 GETTABLEKS                       R11 R11 K4 ["createElement"]
      101 GETUPVAL                         R12 3
      102 DUPTABLE                         R13 K59 [{["Rect"], ["SetRect"], ["MinSize"], ["DragEnabled"] = True, ["CornerTopLeftEnabled"] = True, ["EdgeLeftEnabled"] = True, ["EdgeTopEnabled"] = True, ["XSnap"] = 0.125, ["YSnap"] = 0.25, ["BackgroundTransparency"] = 0, ["BackgroundColor3"], ["ZIndex"] = 1}]
      103 SETTABLEKS                       R5 R13 K1 ["Rect"]
      105 SETTABLEKS                       R6 R13 K22 ["SetRect"]
      107 GETIMPORT                        R14 K39 [Vector2.new]
      109 LOADN                            R15 1
      110 LOADN                            R16 1
      111 CALL                             R14 2 1
      112 SETTABLEKS                       R14 R13 K23 ["MinSize"]
      114 GETIMPORT                        R14 K54 [Color3.new]
      116 LOADK                            R15 K60 [0.4]
      117 LOADK                            R16 K61 [0.8]
      118 LOADK                            R17 K60 [0.4]
      119 CALL                             R14 3 1
      120 SETTABLEKS                       R14 R13 K58 ["BackgroundColor3"]
      122 DUPTABLE                         R14 K41 [{"Text"}]
      123 GETUPVAL                         R15 0
      124 GETTABLEKS                       R15 R15 K4 ["createElement"]
      126 LOADK                            R16 K42 ["TextLabel"]
      127 DUPTABLE                         R17 K63 [{["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["Size"], ["Text"] = "this panel can be resized from the left or the top", ["TextColor3"], ["TextWrapped"] = True, ["ZIndex"] = -1}]
      128 GETIMPORT                        R18 K52 [UDim2.fromScale]
      130 LOADN                            R19 1
      131 LOADN                            R20 1
      132 CALL                             R18 2 1
      133 SETTABLEKS                       R18 R17 K44 ["Size"]
      135 GETIMPORT                        R18 K54 [Color3.new]
      137 LOADN                            R19 0
      138 LOADN                            R20 0
      139 LOADN                            R21 0
      140 CALL                             R18 3 1
      141 SETTABLEKS                       R18 R17 K46 ["TextColor3"]
      143 CALL                             R15 2 1
      144 SETTABLEKS                       R15 R14 K40 ["Text"]
      146 CALL                             R11 3 1
      147 SETTABLEKS                       R11 R10 K10 ["Panel2"]
      149 SETTABLEKS                       R10 R9 K6 ["children"]
      151 CALL                             R7 2 -1
      152 RETURN                           R7 -1

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
       16 GETTABLEKS                       R4 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R4 K9 ["Canvas"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Components"]
       25 GETTABLEKS                       R5 R5 K10 ["Grid"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K8 ["Components"]
       32 GETTABLEKS                       R6 R6 K11 ["ResizablePanel"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K12 ["Types"]
       39 CALL                             R6 1 1
       40 DUPCLOSURE                       R7 K13 [PROTO_0]
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R5
       45 DUPTABLE                         R8 K18 [{["summary"] = "Example with two moveable, resizable panels with handles on different sides.", ["story"], ["controls"]}]
       46 SETTABLEKS                       R7 R8 K16 ["story"]
       48 NEWTABLE                         R9 0 0
       50 SETTABLEKS                       R9 R8 K17 ["controls"]
       52 RETURN                           R8 1
