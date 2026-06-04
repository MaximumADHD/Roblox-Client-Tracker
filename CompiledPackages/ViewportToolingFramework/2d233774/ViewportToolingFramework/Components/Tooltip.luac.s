PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Description"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+4]
        5 GETIMPORT                        R0 K3 [Vector2.zero]
        7 RETURN                           R0 1
        8 GETUPVAL                         R0 1
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K0 ["Description"]
       12 LOADN                            R3 14
       13 GETUPVAL                         R4 2
       14 GETIMPORT                        R5 K5 [Vector2.new]
       16 LOADN                            R6 180
       17 LOADK                            R7 K6 [∞]
       18 CALL                             R5 2 -1
       19 NAMECALL                         R0 R0 K7 ["GetTextSize"]
       21 CALL                             R0 -1 -1
       22 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsolutePosition"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 2
        6 CALL                             R2 0 1
        7 GETUPVAL                         R3 3
        8 NAMECALL                         R3 R3 K1 ["use"]
       10 CALL                             R3 1 1
       11 JUMPIFNOTEQKNIL                  R3 ; [+2]
       13 LOADB                            R5 0 +1
       14 LOADB                            R5 1
       15 FASTCALL2K                       ASSERT R5 K2 ; [+4]
       17 LOADK                            R6 K2 ["Tooltip mounting without a Focus"]
       18 GETIMPORT                        R4 K4 [assert]
       20 CALL                             R4 2 0
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R4 R4 K5 ["useState"]
       24 GETIMPORT                        R5 K8 [Vector2.new]
       26 CALL                             R5 0 -1
       27 CALL                             R4 -1 2
       28 GETUPVAL                         R6 0
       29 GETTABLEKS                       R6 R6 K5 ["useState"]
       31 GETIMPORT                        R7 K8 [Vector2.new]
       33 CALL                             R7 0 -1
       34 CALL                             R6 -1 2
       35 GETUPVAL                         R8 4
       36 LOADB                            R9 0
       37 CALL                             R8 1 1
       38 GETUPVAL                         R9 5
       39 GETTABLEKS                       R9 R9 K7 ["new"]
       41 CALL                             R9 0 1
       42 GETUPVAL                         R10 0
       43 GETTABLEKS                       R10 R10 K9 ["useMemo"]
       45 NEWCLOSURE                       R11 P0
       46 CAPTURE                          VAL R0
       47 CAPTURE                          UPVAL U6
       48 CAPTURE                          UPVAL U7
       49 NEWTABLE                         R12 0 1
       51 GETTABLEKS                       R13 R0 K10 ["Description"]
       53 SETLIST                          R12 R13 1 [1]
       55 CALL                             R10 2 1
       56 GETUPVAL                         R11 0
       57 GETTABLEKS                       R11 R11 K11 ["createElement"]
       59 LOADK                            R12 K12 ["Frame"]
       60 NEWTABLE                         R13 8 0
       62 GETUPVAL                         R14 0
       63 GETTABLEKS                       R14 R14 K13 ["Tag"]
       65 LOADK                            R15 K14 ["X-Fill"]
       66 SETTABLE                         R15 R13 R14
       67 GETUPVAL                         R14 0
       68 GETTABLEKS                       R14 R14 K15 ["Change"]
       70 GETTABLEKS                       R14 R14 K16 ["AbsolutePosition"]
       72 NEWCLOSURE                       R15 P1
       73 CAPTURE                          VAL R5
       74 SETTABLE                         R15 R13 R14
       75 GETUPVAL                         R14 0
       76 GETTABLEKS                       R14 R14 K15 ["Change"]
       78 GETTABLEKS                       R14 R14 K17 ["AbsoluteSize"]
       80 NEWCLOSURE                       R15 P2
       81 CAPTURE                          VAL R7
       82 SETTABLE                         R15 R13 R14
       83 GETUPVAL                         R14 0
       84 GETTABLEKS                       R14 R14 K18 ["Event"]
       86 GETTABLEKS                       R14 R14 K19 ["MouseEnter"]
       88 GETTABLEKS                       R15 R8 K20 ["enable"]
       90 SETTABLE                         R15 R13 R14
       91 GETUPVAL                         R14 0
       92 GETTABLEKS                       R14 R14 K18 ["Event"]
       94 GETTABLEKS                       R14 R14 K21 ["MouseLeave"]
       96 GETTABLEKS                       R15 R8 K22 ["disable"]
       98 SETTABLE                         R15 R13 R14
       99 DUPTABLE                         R14 K24 [{"VisibleTooltip"}]
      100 GETTABLEKS                       R15 R8 K25 ["enabled"]
      102 JUMPIFNOT                        R15 ; [+196]
      103 GETUPVAL                         R15 8
      104 GETTABLEKS                       R15 R15 K26 ["createPortal"]
      106 GETUPVAL                         R16 0
      107 GETTABLEKS                       R16 R16 K11 ["createElement"]
      109 LOADK                            R17 K27 ["Folder"]
      110 NEWTABLE                         R18 0 0
      112 DUPTABLE                         R19 K30 [{"AvoidFOUC", "StyleLink"}]
      113 GETUPVAL                         R20 0
      114 GETTABLEKS                       R20 R20 K11 ["createElement"]
      116 LOADK                            R21 K12 ["Frame"]
      117 DUPTABLE                         R22 K35 [{"BackgroundTransparency", "Position", "Size", "ZIndex"}]
      118 LOADN                            R23 1
      119 SETTABLEKS                       R23 R22 K31 ["BackgroundTransparency"]
      121 GETIMPORT                        R23 K38 [UDim2.fromOffset]
      123 GETTABLEKS                       R24 R4 K39 ["X"]
      125 GETTABLEKS                       R25 R4 K40 ["Y"]
      127 CALL                             R23 2 1
      128 SETTABLEKS                       R23 R22 K32 ["Position"]
      130 GETIMPORT                        R23 K38 [UDim2.fromOffset]
      132 GETTABLEKS                       R24 R6 K39 ["X"]
      134 GETTABLEKS                       R25 R6 K40 ["Y"]
      136 CALL                             R23 2 1
      137 SETTABLEKS                       R23 R22 K33 ["Size"]
      139 LOADN                            R23 100
      140 SETTABLEKS                       R23 R22 K34 ["ZIndex"]
      142 DUPTABLE                         R23 K42 [{"Tooltip"}]
      143 GETUPVAL                         R24 0
      144 GETTABLEKS                       R24 R24 K11 ["createElement"]
      146 LOADK                            R25 K12 ["Frame"]
      147 NEWTABLE                         R26 1 0
      149 GETUPVAL                         R27 0
      150 GETTABLEKS                       R27 R27 K13 ["Tag"]
      152 LOADK                            R29 K43 ["VPF-Tooltip VPF-Tooltip--%* X-ColumnS"]
      153 GETTABLEKS                       R31 R1 K44 ["Direction"]
      155 NAMECALL                         R29 R29 K45 ["format"]
      157 CALL                             R29 2 1
      158 MOVE                             R28 R29
      159 SETTABLE                         R28 R26 R27
      160 DUPTABLE                         R27 K49 [{"UIPadding", "UISizeConstraint", "Title", "Description"}]
      161 GETUPVAL                         R28 0
      162 GETTABLEKS                       R28 R28 K11 ["createElement"]
      164 LOADK                            R29 K46 ["UIPadding"]
      165 DUPTABLE                         R30 K54 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      166 GETIMPORT                        R31 K56 [UDim.new]
      168 LOADN                            R32 0
      169 LOADN                            R33 5
      170 CALL                             R31 2 1
      171 SETTABLEKS                       R31 R30 K50 ["PaddingLeft"]
      173 GETIMPORT                        R31 K56 [UDim.new]
      175 LOADN                            R32 0
      176 LOADN                            R33 5
      177 CALL                             R31 2 1
      178 SETTABLEKS                       R31 R30 K51 ["PaddingRight"]
      180 GETIMPORT                        R31 K56 [UDim.new]
      182 LOADN                            R32 0
      183 LOADN                            R33 5
      184 CALL                             R31 2 1
      185 SETTABLEKS                       R31 R30 K52 ["PaddingTop"]
      187 GETIMPORT                        R31 K56 [UDim.new]
      189 LOADN                            R32 0
      190 LOADN                            R33 5
      191 CALL                             R31 2 1
      192 SETTABLEKS                       R31 R30 K53 ["PaddingBottom"]
      194 CALL                             R28 2 1
      195 SETTABLEKS                       R28 R27 K46 ["UIPadding"]
      197 GETUPVAL                         R28 0
      198 GETTABLEKS                       R28 R28 K11 ["createElement"]
      200 LOADK                            R29 K47 ["UISizeConstraint"]
      201 DUPTABLE                         R30 K58 [{"MaxSize"}]
      202 GETIMPORT                        R31 K8 [Vector2.new]
      204 LOADN                            R32 180
      205 LOADK                            R33 K59 [∞]
      206 CALL                             R31 2 1
      207 SETTABLEKS                       R31 R30 K57 ["MaxSize"]
      209 CALL                             R28 2 1
      210 SETTABLEKS                       R28 R27 K47 ["UISizeConstraint"]
      212 GETUPVAL                         R28 0
      213 GETTABLEKS                       R28 R28 K11 ["createElement"]
      215 LOADK                            R29 K60 ["TextLabel"]
      216 NEWTABLE                         R30 4 0
      218 NAMECALL                         R31 R9 K61 ["getNextOrder"]
      220 CALL                             R31 1 1
      221 SETTABLEKS                       R31 R30 K62 ["LayoutOrder"]
      223 GETTABLEKS                       R31 R0 K48 ["Title"]
      225 SETTABLEKS                       R31 R30 K63 ["Text"]
      227 GETUPVAL                         R31 0
      228 GETTABLEKS                       R31 R31 K13 ["Tag"]
      230 LOADK                            R32 K64 ["VPF-Tooltip__Title"]
      231 SETTABLE                         R32 R30 R31
      232 CALL                             R28 2 1
      233 SETTABLEKS                       R28 R27 K48 ["Title"]
      235 GETTABLEKS                       R28 R0 K10 ["Description"]
      237 JUMPIFNOT                        R28 ; [+38]
      238 GETUPVAL                         R28 0
      239 GETTABLEKS                       R28 R28 K11 ["createElement"]
      241 LOADK                            R29 K60 ["TextLabel"]
      242 NEWTABLE                         R30 8 0
      244 NAMECALL                         R31 R9 K61 ["getNextOrder"]
      246 CALL                             R31 1 1
      247 SETTABLEKS                       R31 R30 K62 ["LayoutOrder"]
      249 GETUPVAL                         R31 7
      250 SETTABLEKS                       R31 R30 K65 ["Font"]
      252 GETIMPORT                        R31 K38 [UDim2.fromOffset]
      254 GETTABLEKS                       R33 R10 K39 ["X"]
      256 ADDK                             R32 R33 K66 [5]
      257 GETTABLEKS                       R34 R10 K40 ["Y"]
      259 ADDK                             R33 R34 K66 [5]
      260 CALL                             R31 2 1
      261 SETTABLEKS                       R31 R30 K33 ["Size"]
      263 GETTABLEKS                       R31 R0 K10 ["Description"]
      265 SETTABLEKS                       R31 R30 K63 ["Text"]
      267 LOADN                            R31 14
      268 SETTABLEKS                       R31 R30 K67 ["TextSize"]
      270 GETUPVAL                         R31 0
      271 GETTABLEKS                       R31 R31 K13 ["Tag"]
      273 LOADK                            R32 K68 ["VPF-Tooltip__Description"]
      274 SETTABLE                         R32 R30 R31
      275 CALL                             R28 2 1
      276 SETTABLEKS                       R28 R27 K10 ["Description"]
      278 CALL                             R24 3 1
      279 SETTABLEKS                       R24 R23 K41 ["Tooltip"]
      281 CALL                             R20 3 1
      282 SETTABLEKS                       R20 R19 K28 ["AvoidFOUC"]
      284 GETUPVAL                         R20 0
      285 GETTABLEKS                       R20 R20 K11 ["createElement"]
      287 LOADK                            R21 K29 ["StyleLink"]
      288 DUPTABLE                         R22 K70 [{"StyleSheet"}]
      289 SETTABLEKS                       R2 R22 K69 ["StyleSheet"]
      291 CALL                             R20 2 1
      292 SETTABLEKS                       R20 R19 K29 ["StyleLink"]
      294 CALL                             R16 3 1
      295 NAMECALL                         R17 R3 K71 ["get"]
      297 CALL                             R17 1 -1
      298 CALL                             R15 -1 1
      299 SETTABLEKS                       R15 R14 K23 ["VisibleTooltip"]
      301 CALL                             R11 3 -1
      302 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ViewportToolingFramework"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["TextService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Parent"]
       17 GETTABLEKS                       R3 R3 K11 ["Framework"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R0 K10 ["Parent"]
       24 GETTABLEKS                       R4 R4 K12 ["React"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R0 K10 ["Parent"]
       31 GETTABLEKS                       R5 R5 K13 ["ReactRoblox"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R6 R0 K14 ["Util"]
       38 GETTABLEKS                       R6 R6 K15 ["ToolbarBaseContext"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K9 [require]
       43 GETTABLEKS                       R7 R0 K16 ["Hooks"]
       45 GETTABLEKS                       R7 R7 K17 ["useStyleSheet"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K9 [require]
       50 GETTABLEKS                       R8 R0 K16 ["Hooks"]
       52 GETTABLEKS                       R8 R8 K18 ["useToggleState"]
       54 CALL                             R7 1 1
       55 GETTABLEKS                       R8 R2 K14 ["Util"]
       57 GETTABLEKS                       R8 R8 K19 ["LayoutOrderIterator"]
       59 GETTABLEKS                       R9 R2 K20 ["ContextServices"]
       61 GETTABLEKS                       R9 R9 K21 ["Focus"]
       63 GETIMPORT                        R10 K25 [Enum.Font.SourceSans]
       65 DUPCLOSURE                       R11 K26 [PROTO_3]
       66 CAPTURE                          VAL R3
       67 CAPTURE                          VAL R5
       68 CAPTURE                          VAL R6
       69 CAPTURE                          VAL R9
       70 CAPTURE                          VAL R7
       71 CAPTURE                          VAL R8
       72 CAPTURE                          VAL R1
       73 CAPTURE                          VAL R10
       74 CAPTURE                          VAL R4
       75 RETURN                           R11 1
