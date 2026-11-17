PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["ActivityValues"]
        3 LENGTH                           R1 R2
        4 LOADN                            R2 0
        5 JUMPIFNOTLE                      R1 R2 ; [+2]
        7 RETURN                           R0 0
        8 GETTABLEKS                       R2 R0 K1 ["X"]
       10 LOADN                            R3 1
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R5 R5 K0 ["ActivityValues"]
       14 LENGTH                           R4 R5
       15 FASTCALL                         MATH_CLAMP ; [+2]
       16 GETIMPORT                        R1 K4 [math.clamp]
       18 CALL                             R1 3 1
       19 GETUPVAL                         R2 0
       20 GETTABLEKS                       R2 R2 K5 ["SetLookbackAmount"]
       22 MOVE                             R3 R1
       23 CALL                             R2 1 0
       24 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnScrubFinished"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["LookbackAmount"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["Hooks"]
        5 GETTABLEKS                       R2 R2 K1 ["useTokens"]
        7 CALL                             R2 0 1
        8 GETTABLEKS                       R3 R2 K2 ["Color"]
       10 GETTABLEKS                       R3 R3 K3 ["Content"]
       12 GETTABLEKS                       R3 R3 K4 ["Emphasis"]
       14 GETTABLEKS                       R4 R2 K2 ["Color"]
       16 GETTABLEKS                       R4 R4 K3 ["Content"]
       18 GETTABLEKS                       R4 R4 K5 ["Muted"]
       20 GETTABLEKS                       R5 R0 K6 ["ActivityValues"]
       22 LOADNIL                          R6
       23 LOADNIL                          R7
       24 FORGPREP                         R5
       25 DUPTABLE                         R12 K8 [{"Position"}]
       26 GETIMPORT                        R13 K11 [Vector2.new]
       28 MOVE                             R14 R8
       29 MOVE                             R15 R9
       30 CALL                             R13 2 1
       31 SETTABLEKS                       R13 R12 K7 ["Position"]
       33 FASTCALL2                        TABLE_INSERT R1 R12 ; [+4]
       35 MOVE                             R11 R1
       36 GETIMPORT                        R10 K14 [table.insert]
       38 CALL                             R10 2 0
       39 FORGLOOP                         R5 2 ; [-15]
       41 NEWCLOSURE                       R5 P0
       42 CAPTURE                          VAL R0
       43 NEWCLOSURE                       R6 P1
       44 CAPTURE                          VAL R0
       45 DUPTABLE                         R7 K19 [{"Backdrop", "Cursor", "ActivityCurve", "InternalDrag"}]
       46 GETUPVAL                         R8 1
       47 GETTABLEKS                       R8 R8 K20 ["createElement"]
       49 GETUPVAL                         R9 2
       50 DUPTABLE                         R10 K23 [{"Rect", "BackgroundColor3"}]
       51 GETIMPORT                        R11 K24 [Rect.new]
       53 LOADN                            R12 1
       54 LOADN                            R13 0
       55 GETTABLEKS                       R15 R0 K6 ["ActivityValues"]
       57 LENGTH                           R14 R15
       58 LOADN                            R15 1
       59 CALL                             R11 4 1
       60 SETTABLEKS                       R11 R10 K21 ["Rect"]
       62 GETIMPORT                        R11 K27 [Color3.fromHex]
       64 LOADK                            R12 K28 ["#4C68D2"]
       65 CALL                             R11 1 1
       66 SETTABLEKS                       R11 R10 K22 ["BackgroundColor3"]
       68 CALL                             R8 2 1
       69 SETTABLEKS                       R8 R7 K15 ["Backdrop"]
       71 GETUPVAL                         R8 1
       72 GETTABLEKS                       R8 R8 K20 ["createElement"]
       74 GETUPVAL                         R9 3
       75 DUPTABLE                         R10 K34 [{["Orientation"] = "Vertical", ["Position"], ["Color3"], ["Transparency"], ["ZIndex"] = 2}]
       76 GETTABLEKS                       R11 R0 K35 ["LookbackAmount"]
       78 SETTABLEKS                       R11 R10 K7 ["Position"]
       80 GETTABLEKS                       R11 R3 K25 ["Color3"]
       82 SETTABLEKS                       R11 R10 K25 ["Color3"]
       84 GETTABLEKS                       R11 R3 K31 ["Transparency"]
       86 SETTABLEKS                       R11 R10 K31 ["Transparency"]
       88 CALL                             R8 2 1
       89 SETTABLEKS                       R8 R7 K16 ["Cursor"]
       91 GETUPVAL                         R8 1
       92 GETTABLEKS                       R8 R8 K20 ["createElement"]
       94 GETUPVAL                         R9 4
       95 DUPTABLE                         R10 K37 [{"Points", "Color3"}]
       96 SETTABLEKS                       R1 R10 K36 ["Points"]
       98 GETIMPORT                        R11 K27 [Color3.fromHex]
      100 LOADK                            R12 K38 ["#E18E56"]
      101 CALL                             R11 1 1
      102 SETTABLEKS                       R11 R10 K25 ["Color3"]
      104 CALL                             R8 2 1
      105 SETTABLEKS                       R8 R7 K17 ["ActivityCurve"]
      107 GETUPVAL                         R8 1
      108 GETTABLEKS                       R8 R8 K20 ["createElement"]
      110 GETUPVAL                         R9 5
      111 DUPTABLE                         R10 K46 [{["OnDragStart"], ["OnDragMoved"], ["OnDragEnded"], ["TreatMouseAsAnchor"] = True, ["XSnap"] = 1}]
      112 SETTABLEKS                       R5 R10 K39 ["OnDragStart"]
      114 SETTABLEKS                       R5 R10 K40 ["OnDragMoved"]
      116 SETTABLEKS                       R6 R10 K41 ["OnDragEnded"]
      118 CALL                             R8 2 1
      119 SETTABLEKS                       R8 R7 K18 ["InternalDrag"]
      121 GETTABLEKS                       R8 R0 K47 ["PausedFrames"]
      123 LOADNIL                          R9
      124 LOADNIL                          R10
      125 FORGPREP                         R8
      126 GETTABLEKS                       R14 R0 K6 ["ActivityValues"]
      128 LENGTH                           R13 R14
      129 JUMPIFNOTLE                      R12 R13 ; [+24]
      131 LOADK                            R13 K48 ["PauseMarker%*"]
      132 MOVE                             R15 R11
      133 NAMECALL                         R13 R13 K49 ["format"]
      135 CALL                             R13 2 1
      136 GETUPVAL                         R14 1
      137 GETTABLEKS                       R14 R14 K20 ["createElement"]
      139 GETUPVAL                         R15 3
      140 DUPTABLE                         R16 K50 [{["Orientation"] = "Vertical", ["Position"], ["Color3"], ["Transparency"], ["ZIndex"] = 1}]
      141 SUBK                             R17 R12 K51 [0.5]
      142 SETTABLEKS                       R17 R16 K7 ["Position"]
      144 GETTABLEKS                       R17 R4 K25 ["Color3"]
      146 SETTABLEKS                       R17 R16 K25 ["Color3"]
      148 GETTABLEKS                       R17 R4 K31 ["Transparency"]
      150 SETTABLEKS                       R17 R16 K31 ["Transparency"]
      152 CALL                             R14 2 1
      153 SETTABLE                         R14 R7 R13
      154 FORGLOOP                         R8 2 ; [-29]
      156 GETUPVAL                         R8 1
      157 GETTABLEKS                       R8 R8 K20 ["createElement"]
      159 GETUPVAL                         R9 6
      160 DUPTABLE                         R10 K55 [{["LayoutOrder"], ["tag"] = "no-flex size-full-800 radius-small clip bg-shift-200"}]
      161 GETTABLEKS                       R11 R0 K52 ["LayoutOrder"]
      163 SETTABLEKS                       R11 R10 K52 ["LayoutOrder"]
      165 DUPTABLE                         R11 K57 [{"GraphCanvas"}]
      166 GETUPVAL                         R12 1
      167 GETTABLEKS                       R12 R12 K20 ["createElement"]
      169 GETUPVAL                         R13 7
      170 DUPTABLE                         R14 K68 [{["GraphRect"], ["ViewportPaddingLeft"], ["ViewportPaddingRight"], ["ViewportPaddingTop"], ["ViewportPaddingBottom"], ["CanvasBackgroundTransparency"] = 1, ["ViewportBackgroundTransparency"] = 1, ["CanvasCornerRadius"], ["XAxisScaling"], ["children"]}]
      171 GETIMPORT                        R15 K24 [Rect.new]
      173 LOADN                            R16 1
      174 LOADN                            R17 0
      175 GETTABLEKS                       R18 R0 K69 ["MaxFrames"]
      177 LOADN                            R19 1
      178 CALL                             R15 4 1
      179 SETTABLEKS                       R15 R14 K58 ["GraphRect"]
      181 GETIMPORT                        R15 K71 [UDim.new]
      183 LOADN                            R16 0
      184 LOADN                            R17 0
      185 CALL                             R15 2 1
      186 SETTABLEKS                       R15 R14 K59 ["ViewportPaddingLeft"]
      188 GETIMPORT                        R15 K71 [UDim.new]
      190 LOADN                            R16 0
      191 LOADN                            R17 0
      192 CALL                             R15 2 1
      193 SETTABLEKS                       R15 R14 K60 ["ViewportPaddingRight"]
      195 GETIMPORT                        R15 K71 [UDim.new]
      197 LOADN                            R16 0
      198 LOADN                            R17 0
      199 CALL                             R15 2 1
      200 SETTABLEKS                       R15 R14 K61 ["ViewportPaddingTop"]
      202 GETIMPORT                        R15 K71 [UDim.new]
      204 LOADN                            R16 0
      205 LOADN                            R17 0
      206 CALL                             R15 2 1
      207 SETTABLEKS                       R15 R14 K62 ["ViewportPaddingBottom"]
      209 GETIMPORT                        R15 K71 [UDim.new]
      211 LOADN                            R16 0
      212 GETTABLEKS                       R17 R2 K72 ["Radius"]
      214 GETTABLEKS                       R17 R17 K73 ["Small"]
      216 CALL                             R15 2 1
      217 SETTABLEKS                       R15 R14 K65 ["CanvasCornerRadius"]
      219 DUPTABLE                         R15 K78 [{["Type"] = "Linear", ["Direction"] = "Reversed"}]
      220 SETTABLEKS                       R15 R14 K66 ["XAxisScaling"]
      222 SETTABLEKS                       R7 R14 K67 ["children"]
      224 CALL                             R12 2 1
      225 SETTABLEKS                       R12 R11 K56 ["GraphCanvas"]
      227 CALL                             R8 3 -1
      228 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AudioActivityMonitor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["View"]
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R5 R0 K6 ["Packages"]
       27 GETTABLEKS                       R5 R5 K10 ["Graphing"]
       29 CALL                             R4 1 1
       30 GETTABLEKS                       R5 R4 K11 ["Canvas"]
       32 GETTABLEKS                       R6 R4 K12 ["Curve"]
       34 GETTABLEKS                       R7 R4 K13 ["GridLine"]
       36 GETTABLEKS                       R8 R4 K14 ["InputDetector"]
       38 GETTABLEKS                       R9 R4 K15 ["Panel"]
       40 DUPCLOSURE                       R10 K16 [PROTO_2]
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R9
       44 CAPTURE                          VAL R7
       45 CAPTURE                          VAL R6
       46 CAPTURE                          VAL R8
       47 CAPTURE                          VAL R3
       48 CAPTURE                          VAL R5
       49 RETURN                           R10 1
