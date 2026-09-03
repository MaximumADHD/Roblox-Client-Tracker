PROTO_0:
        0 GETIMPORT                        R1 K2 [string.format]
        2 LOADK                            R2 K3 ["%d%%"]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setJointWeightAsync"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["flattenedJoint"]
        6 GETTABLEKS                       R1 R1 K2 ["id"]
        8 GETUPVAL                         R3 2
        9 DIVK                             R2 R3 K3 [100]
       10 CALL                             R0 2 0
       11 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R1 K2 [task.spawn]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["useCallback"]
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          VAL R1
       12 CAPTURE                          VAL R0
       13 NEWTABLE                         R4 0 2
       15 GETTABLEKS                       R5 R0 K3 ["flattenedJoint"]
       17 GETTABLEKS                       R5 R5 K4 ["id"]
       19 GETTABLEKS                       R6 R1 K5 ["setJointWeightAsync"]
       21 SETLIST                          R4 R5 2 [1]
       23 CALL                             R2 2 1
       24 GETUPVAL                         R3 2
       25 GETTABLEKS                       R3 R3 K6 ["Hooks"]
       27 GETTABLEKS                       R3 R3 K7 ["useTokens"]
       29 CALL                             R3 0 1
       30 GETTABLEKS                       R5 R0 K3 ["flattenedJoint"]
       32 GETTABLEKS                       R5 R5 K9 ["value"]
       34 MULK                             R4 R5 K8 [100]
       35 GETUPVAL                         R5 3
       36 GETTABLEKS                       R5 R5 K10 ["createNextOrder"]
       38 CALL                             R5 0 1
       39 GETUPVAL                         R6 0
       40 GETTABLEKS                       R6 R6 K11 ["createElement"]
       42 GETUPVAL                         R7 2
       43 GETTABLEKS                       R7 R7 K12 ["View"]
       45 DUPTABLE                         R8 K16 [{["tag"] = "row align-y-center gap-xsmall size-full-500", ["LayoutOrder"]}]
       46 GETTABLEKS                       R9 R0 K17 ["layoutOrder"]
       48 SETTABLEKS                       R9 R8 K15 ["LayoutOrder"]
       50 DUPTABLE                         R9 K21 [{"Gap", "Label", "Value"}]
       51 LOADB                            R10 0
       52 GETTABLEKS                       R11 R0 K3 ["flattenedJoint"]
       54 GETTABLEKS                       R11 R11 K22 ["depth"]
       56 LOADN                            R12 0
       57 JUMPIFNOTLT                      R12 R11 ; [+28]
       59 GETUPVAL                         R10 0
       60 GETTABLEKS                       R10 R10 K11 ["createElement"]
       62 GETUPVAL                         R11 2
       63 GETTABLEKS                       R11 R11 K12 ["View"]
       65 DUPTABLE                         R12 K24 [{"LayoutOrder", "Size"}]
       66 MOVE                             R13 R5
       67 CALL                             R13 0 1
       68 SETTABLEKS                       R13 R12 K15 ["LayoutOrder"]
       70 GETIMPORT                        R13 K27 [UDim2.fromOffset]
       72 GETTABLEKS                       R15 R3 K18 ["Gap"]
       74 GETTABLEKS                       R15 R15 K28 ["Medium"]
       76 GETTABLEKS                       R16 R0 K3 ["flattenedJoint"]
       78 GETTABLEKS                       R16 R16 K22 ["depth"]
       80 MUL                              R14 R15 R16
       81 LOADN                            R15 0
       82 CALL                             R13 2 1
       83 SETTABLEKS                       R13 R12 K23 ["Size"]
       85 CALL                             R10 2 1
       86 SETTABLEKS                       R10 R9 K18 ["Gap"]
       88 GETUPVAL                         R10 0
       89 GETTABLEKS                       R10 R10 K11 ["createElement"]
       91 GETUPVAL                         R11 2
       92 GETTABLEKS                       R11 R11 K29 ["Text"]
       94 DUPTABLE                         R12 K31 [{["tag"] = "grow size-0-full text-body-medium text-align-x-left text-align-y-center", ["Text"], ["LayoutOrder"]}]
       95 GETTABLEKS                       R13 R0 K3 ["flattenedJoint"]
       97 GETTABLEKS                       R13 R13 K32 ["name"]
       99 SETTABLEKS                       R13 R12 K29 ["Text"]
      101 MOVE                             R13 R5
      102 CALL                             R13 0 1
      103 SETTABLEKS                       R13 R12 K15 ["LayoutOrder"]
      105 CALL                             R10 2 1
      106 SETTABLEKS                       R10 R9 K19 ["Label"]
      108 GETUPVAL                         R10 0
      109 GETTABLEKS                       R10 R10 K11 ["createElement"]
      111 GETUPVAL                         R11 2
      112 GETTABLEKS                       R11 R11 K12 ["View"]
      114 DUPTABLE                         R12 K34 [{["tag"] = "size-2300-full", ["LayoutOrder"]}]
      115 MOVE                             R13 R5
      116 CALL                             R13 0 1
      117 SETTABLEKS                       R13 R12 K15 ["LayoutOrder"]
      119 GETUPVAL                         R13 0
      120 GETTABLEKS                       R13 R13 K11 ["createElement"]
      122 GETUPVAL                         R14 2
      123 GETTABLEKS                       R14 R14 K35 ["NumberInput"]
      125 DUPTABLE                         R15 K47 [{["label"] = "", ["value"], ["onChanged"], ["formatAsString"], ["controlsVariant"], ["size"], ["minimum"] = 0, ["maximum"] = 100, ["width"], ["scrubBehavior"]}]
      126 SETTABLEKS                       R4 R15 K9 ["value"]
      128 SETTABLEKS                       R2 R15 K38 ["onChanged"]
      130 GETUPVAL                         R16 4
      131 SETTABLEKS                       R16 R15 K39 ["formatAsString"]
      133 GETUPVAL                         R16 2
      134 GETTABLEKS                       R16 R16 K48 ["Enums"]
      136 GETTABLEKS                       R16 R16 K49 ["NumberInputControlsVariant"]
      138 GETTABLEKS                       R16 R16 K50 ["None"]
      140 SETTABLEKS                       R16 R15 K40 ["controlsVariant"]
      142 GETUPVAL                         R16 2
      143 GETTABLEKS                       R16 R16 K48 ["Enums"]
      145 GETTABLEKS                       R16 R16 K51 ["InputSize"]
      147 GETTABLEKS                       R16 R16 K52 ["XSmall"]
      149 SETTABLEKS                       R16 R15 K41 ["size"]
      151 GETIMPORT                        R16 K55 [UDim.new]
      153 LOADN                            R17 1
      154 LOADN                            R18 0
      155 CALL                             R16 2 1
      156 SETTABLEKS                       R16 R15 K45 ["width"]
      158 GETUPVAL                         R16 5
      159 GETTABLEKS                       R16 R16 K56 ["On"]
      161 SETTABLEKS                       R16 R15 K46 ["scrubBehavior"]
      163 CALL                             R13 2 -1
      164 CALL                             R10 -1 1
      165 SETTABLEKS                       R10 R9 K20 ["Value"]
      167 CALL                             R6 3 -1
      168 RETURN                           R6 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKS                    R0 K0 ["SetAllTo0"] ; [+10]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K1 ["setAllJointWeightsAsync"]
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R1 R1 K2 ["maskId"]
        9 LOADN                            R2 0
       10 CALL                             R0 2 0
       11 RETURN                           R0 0
       12 GETUPVAL                         R0 0
       13 JUMPIFNOTEQKS                    R0 K3 ["SetAllTo100"] ; [+9]
       15 GETUPVAL                         R0 1
       16 GETTABLEKS                       R0 R0 K1 ["setAllJointWeightsAsync"]
       18 GETUPVAL                         R1 2
       19 GETTABLEKS                       R1 R1 K2 ["maskId"]
       21 LOADN                            R2 1
       22 CALL                             R0 2 0
       23 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R1 K2 [task.spawn]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          UPVAL U1
        6 CALL                             R1 1 0
        7 GETUPVAL                         R1 2
        8 GETTABLEKS                       R1 R1 K3 ["disable"]
       10 CALL                             R1 0 0
       11 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ContextServices"]
        3 GETTABLEKS                       R1 R1 K1 ["Localization"]
        5 NAMECALL                         R1 R1 K2 ["use"]
        7 CALL                             R1 1 1
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K3 ["useContext"]
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R3 R3 K4 ["Context"]
       14 CALL                             R2 1 1
       15 GETTABLEKS                       R4 R2 K5 ["masks"]
       17 GETTABLEKS                       R5 R0 K6 ["maskId"]
       19 GETTABLE                         R3 R4 R5
       20 GETUPVAL                         R4 3
       21 GETTABLEKS                       R4 R4 K7 ["Hooks"]
       23 GETTABLEKS                       R4 R4 K8 ["useTokens"]
       25 CALL                             R4 0 1
       26 GETUPVAL                         R5 4
       27 GETTABLEKS                       R5 R5 K9 ["useToggleState"]
       29 LOADB                            R6 0
       30 CALL                             R5 1 1
       31 GETUPVAL                         R6 4
       32 GETTABLEKS                       R6 R6 K10 ["createNextOrder"]
       34 CALL                             R6 0 1
       35 GETUPVAL                         R7 4
       36 GETTABLEKS                       R7 R7 K11 ["createUniqueKey"]
       38 CALL                             R7 0 1
       39 JUMPIFNOTEQKNIL                  R3 ; [+3]
       41 LOADNIL                          R8
       42 RETURN                           R8 1
       43 NEWTABLE                         R8 0 0
       45 GETTABLEKS                       R9 R3 K12 ["flattenedJoints"]
       47 LOADNIL                          R10
       48 LOADNIL                          R11
       49 FORGPREP                         R9
       50 MOVE                             R14 R7
       51 GETTABLEKS                       R15 R13 K13 ["name"]
       53 CALL                             R14 1 1
       54 GETUPVAL                         R15 1
       55 GETTABLEKS                       R15 R15 K14 ["createElement"]
       57 GETUPVAL                         R16 5
       58 DUPTABLE                         R17 K17 [{"flattenedJoint", "layoutOrder"}]
       59 SETTABLEKS                       R13 R17 K15 ["flattenedJoint"]
       61 MOVE                             R18 R6
       62 CALL                             R18 0 1
       63 SETTABLEKS                       R18 R17 K16 ["layoutOrder"]
       65 CALL                             R15 2 1
       66 SETTABLE                         R15 R8 R14
       67 FORGLOOP                         R9 2 ; [-18]
       69 GETUPVAL                         R9 1
       70 GETTABLEKS                       R9 R9 K14 ["createElement"]
       72 GETUPVAL                         R10 3
       73 GETTABLEKS                       R10 R10 K18 ["ScrollView"]
       75 DUPTABLE                         R11 K23 [{["tag"] = "grow size-full", ["scroll"], ["layout"]}]
       76 DUPTABLE                         R12 K28 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection", "VerticalScrollBarInset"}]
       77 GETIMPORT                        R13 K32 [Enum.AutomaticSize.Y]
       79 SETTABLEKS                       R13 R12 K24 ["AutomaticCanvasSize"]
       81 GETIMPORT                        R13 K35 [UDim2.new]
       83 CALL                             R13 0 1
       84 SETTABLEKS                       R13 R12 K25 ["CanvasSize"]
       86 GETIMPORT                        R13 K36 [Enum.ScrollingDirection.Y]
       88 SETTABLEKS                       R13 R12 K26 ["ScrollingDirection"]
       90 GETIMPORT                        R13 K39 [Enum.ScrollBarInset.Always]
       92 SETTABLEKS                       R13 R12 K27 ["VerticalScrollBarInset"]
       94 SETTABLEKS                       R12 R11 K21 ["scroll"]
       96 DUPTABLE                         R12 K42 [{"FillDirection", "Padding"}]
       97 GETIMPORT                        R13 K44 [Enum.FillDirection.Vertical]
       99 SETTABLEKS                       R13 R12 K40 ["FillDirection"]
      101 GETIMPORT                        R13 K46 [UDim.new]
      103 LOADN                            R14 0
      104 GETTABLEKS                       R15 R4 K47 ["Gap"]
      106 GETTABLEKS                       R15 R15 K48 ["XSmall"]
      108 CALL                             R13 2 1
      109 SETTABLEKS                       R13 R12 K41 ["Padding"]
      111 SETTABLEKS                       R12 R11 K22 ["layout"]
      113 MOVE                             R12 R8
      114 CALL                             R9 3 1
      115 GETUPVAL                         R10 1
      116 GETTABLEKS                       R10 R10 K49 ["useCallback"]
      118 NEWCLOSURE                       R11 P0
      119 CAPTURE                          VAL R2
      120 CAPTURE                          VAL R0
      121 CAPTURE                          VAL R5
      122 NEWTABLE                         R12 0 3
      124 GETTABLEKS                       R13 R0 K6 ["maskId"]
      126 GETTABLEKS                       R14 R2 K50 ["setAllJointWeightsAsync"]
      128 GETTABLEKS                       R15 R5 K51 ["disable"]
      130 SETLIST                          R12 R13 3 [1]
      132 CALL                             R10 2 1
      133 GETUPVAL                         R11 1
      134 GETTABLEKS                       R11 R11 K14 ["createElement"]
      136 GETUPVAL                         R12 3
      137 GETTABLEKS                       R12 R12 K52 ["View"]
      139 DUPTABLE                         R13 K54 [{["tag"] = "col size-full padding-y-medium"}]
      140 DUPTABLE                         R14 K57 [{"Header", "List"}]
      141 GETUPVAL                         R15 1
      142 GETTABLEKS                       R15 R15 K14 ["createElement"]
      144 GETUPVAL                         R16 3
      145 GETTABLEKS                       R16 R16 K52 ["View"]
      147 DUPTABLE                         R17 K60 [{["tag"] = "row align-y-center size-full-400 padding-bottom-small", ["LayoutOrder"]}]
      148 MOVE                             R18 R6
      149 CALL                             R18 0 1
      150 SETTABLEKS                       R18 R17 K59 ["LayoutOrder"]
      152 DUPTABLE                         R18 K64 [{"Joint", "Weight", "QuickMenu"}]
      153 GETUPVAL                         R19 1
      154 GETTABLEKS                       R19 R19 K14 ["createElement"]
      156 GETUPVAL                         R20 3
      157 GETTABLEKS                       R20 R20 K65 ["Text"]
      159 DUPTABLE                         R21 K67 [{["tag"] = "grow size-0-full text-body-small text-align-x-left", ["LayoutOrder"], ["Text"]}]
      160 MOVE                             R22 R6
      161 CALL                             R22 0 1
      162 SETTABLEKS                       R22 R21 K59 ["LayoutOrder"]
      164 LOADK                            R24 K68 ["Common"]
      165 LOADK                            R25 K69 ["AnimationEditor"]
      166 LOADK                            R26 K70 ["MaskEditorPopup"]
      167 LOADK                            R27 K61 ["Joint"]
      168 NAMECALL                         R22 R1 K71 ["getExternalText"]
      170 CALL                             R22 5 1
      171 SETTABLEKS                       R22 R21 K65 ["Text"]
      173 CALL                             R19 2 1
      174 SETTABLEKS                       R19 R18 K61 ["Joint"]
      176 GETUPVAL                         R19 1
      177 GETTABLEKS                       R19 R19 K14 ["createElement"]
      179 GETUPVAL                         R20 3
      180 GETTABLEKS                       R20 R20 K65 ["Text"]
      182 DUPTABLE                         R21 K73 [{["tag"] = "size-2300-full text-body-small text-align-x-left", ["LayoutOrder"], ["Text"]}]
      183 MOVE                             R22 R6
      184 CALL                             R22 0 1
      185 SETTABLEKS                       R22 R21 K59 ["LayoutOrder"]
      187 LOADK                            R24 K68 ["Common"]
      188 LOADK                            R25 K69 ["AnimationEditor"]
      189 LOADK                            R26 K70 ["MaskEditorPopup"]
      190 LOADK                            R27 K62 ["Weight"]
      191 NAMECALL                         R22 R1 K71 ["getExternalText"]
      193 CALL                             R22 5 1
      194 SETTABLEKS                       R22 R21 K65 ["Text"]
      196 CALL                             R19 2 1
      197 SETTABLEKS                       R19 R18 K62 ["Weight"]
      199 GETUPVAL                         R19 1
      200 GETTABLEKS                       R19 R19 K14 ["createElement"]
      202 GETUPVAL                         R20 3
      203 GETTABLEKS                       R20 R20 K74 ["Menu"]
      205 DUPTABLE                         R21 K80 [{"isOpen", "items", "size", "LayoutOrder", "onPressedOutside", "onActivated"}]
      206 GETTABLEKS                       R22 R5 K81 ["enabled"]
      208 SETTABLEKS                       R22 R21 K75 ["isOpen"]
      210 NEWTABLE                         R22 0 2
      212 DUPTABLE                         R23 K85 [{["id"] = "SetAllTo0", ["text"]}]
      213 LOADK                            R26 K68 ["Common"]
      214 LOADK                            R27 K69 ["AnimationEditor"]
      215 LOADK                            R28 K70 ["MaskEditorPopup"]
      216 LOADK                            R29 K83 ["SetAllTo0"]
      217 NAMECALL                         R24 R1 K71 ["getExternalText"]
      219 CALL                             R24 5 1
      220 SETTABLEKS                       R24 R23 K84 ["text"]
      222 DUPTABLE                         R24 K87 [{["id"] = "SetAllTo100", ["text"]}]
      223 LOADK                            R27 K68 ["Common"]
      224 LOADK                            R28 K69 ["AnimationEditor"]
      225 LOADK                            R29 K70 ["MaskEditorPopup"]
      226 LOADK                            R30 K86 ["SetAllTo100"]
      227 NAMECALL                         R25 R1 K71 ["getExternalText"]
      229 CALL                             R25 5 1
      230 SETTABLEKS                       R25 R24 K84 ["text"]
      232 SETLIST                          R22 R23 2 [1]
      234 SETTABLEKS                       R22 R21 K76 ["items"]
      236 GETUPVAL                         R22 3
      237 GETTABLEKS                       R22 R22 K88 ["Enums"]
      239 GETTABLEKS                       R22 R22 K89 ["InputSize"]
      241 GETTABLEKS                       R22 R22 K48 ["XSmall"]
      243 SETTABLEKS                       R22 R21 K77 ["size"]
      245 MOVE                             R22 R6
      246 CALL                             R22 0 1
      247 SETTABLEKS                       R22 R21 K59 ["LayoutOrder"]
      249 GETTABLEKS                       R22 R5 K51 ["disable"]
      251 SETTABLEKS                       R22 R21 K78 ["onPressedOutside"]
      253 SETTABLEKS                       R10 R21 K79 ["onActivated"]
      255 DUPTABLE                         R22 K91 [{"Button"}]
      256 GETUPVAL                         R23 1
      257 GETTABLEKS                       R23 R23 K14 ["createElement"]
      259 GETUPVAL                         R24 3
      260 GETTABLEKS                       R24 R24 K92 ["IconButton"]
      262 DUPTABLE                         R25 K98 [{["variant"], ["testId"] = "MaskEditor-QuickMenuButton", ["icon"] = "gear", ["size"], ["onActivated"]}]
      263 GETUPVAL                         R26 3
      264 GETTABLEKS                       R26 R26 K88 ["Enums"]
      266 GETTABLEKS                       R26 R26 K99 ["ButtonVariant"]
      268 GETTABLEKS                       R26 R26 K100 ["Utility"]
      270 SETTABLEKS                       R26 R25 K93 ["variant"]
      272 GETUPVAL                         R26 3
      273 GETTABLEKS                       R26 R26 K88 ["Enums"]
      275 GETTABLEKS                       R26 R26 K89 ["InputSize"]
      277 GETTABLEKS                       R26 R26 K48 ["XSmall"]
      279 SETTABLEKS                       R26 R25 K77 ["size"]
      281 GETTABLEKS                       R26 R5 K101 ["enable"]
      283 SETTABLEKS                       R26 R25 K79 ["onActivated"]
      285 CALL                             R23 2 1
      286 SETTABLEKS                       R23 R22 K90 ["Button"]
      288 CALL                             R19 3 1
      289 SETTABLEKS                       R19 R18 K63 ["QuickMenu"]
      291 CALL                             R15 3 1
      292 SETTABLEKS                       R15 R14 K55 ["Header"]
      294 GETUPVAL                         R15 1
      295 GETTABLEKS                       R15 R15 K14 ["createElement"]
      297 GETUPVAL                         R16 3
      298 GETTABLEKS                       R16 R16 K52 ["View"]
      300 DUPTABLE                         R17 K103 [{["tag"] = "grow size-full-0 padding-xsmall padding-bottom-xxlarge bg-surface-100", ["LayoutOrder"]}]
      301 MOVE                             R18 R6
      302 CALL                             R18 0 1
      303 SETTABLEKS                       R18 R17 K59 ["LayoutOrder"]
      305 MOVE                             R18 R9
      306 CALL                             R15 3 1
      307 SETTABLEKS                       R15 R14 K56 ["List"]
      309 CALL                             R11 3 -1
      310 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Contexts"]
       25 GETTABLEKS                       R4 R4 K10 ["MaskEditorContext"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Parent"]
       32 GETTABLEKS                       R5 R5 K11 ["React"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K6 ["Parent"]
       39 GETTABLEKS                       R6 R6 K12 ["ReactUtils"]
       41 CALL                             R5 1 1
       42 GETTABLEKS                       R6 R1 K13 ["Enums"]
       44 GETTABLEKS                       R6 R6 K14 ["ScrubBehavior"]
       46 DUPCLOSURE                       R7 K15 [PROTO_0]
       47 DUPCLOSURE                       R8 K16 [PROTO_3]
       48 CAPTURE                          VAL R4
       49 CAPTURE                          VAL R3
       50 CAPTURE                          VAL R1
       51 CAPTURE                          VAL R5
       52 CAPTURE                          VAL R7
       53 CAPTURE                          VAL R6
       54 DUPCLOSURE                       R9 K17 [PROTO_6]
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R4
       57 CAPTURE                          VAL R3
       58 CAPTURE                          VAL R1
       59 CAPTURE                          VAL R5
       60 CAPTURE                          VAL R8
       61 RETURN                           R9 1
