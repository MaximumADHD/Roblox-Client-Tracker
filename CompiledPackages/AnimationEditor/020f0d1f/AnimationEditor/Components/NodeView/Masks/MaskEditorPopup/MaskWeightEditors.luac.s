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
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+3]
        3 GETUPVAL                         R1 1
        4 MOVE                             R2 R0
        5 CALL                             R1 1 0
        6 GETIMPORT                        R1 K2 [task.spawn]
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          VAL R0
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["useState"]
       10 GETTABLEKS                       R4 R0 K4 ["flattenedJoint"]
       12 GETTABLEKS                       R4 R4 K5 ["value"]
       14 MULK                             R3 R4 K3 [100]
       15 CALL                             R2 1 2
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R4 R4 K6 ["useCallback"]
       19 NEWCLOSURE                       R5 P0
       20 CAPTURE                          UPVAL U2
       21 CAPTURE                          VAL R3
       22 CAPTURE                          VAL R1
       23 CAPTURE                          VAL R0
       24 NEWTABLE                         R6 0 2
       26 GETTABLEKS                       R7 R0 K4 ["flattenedJoint"]
       28 GETTABLEKS                       R7 R7 K7 ["id"]
       30 GETTABLEKS                       R8 R1 K8 ["setJointWeightAsync"]
       32 SETLIST                          R6 R7 2 [1]
       34 CALL                             R4 2 1
       35 GETUPVAL                         R5 3
       36 GETTABLEKS                       R5 R5 K9 ["Hooks"]
       38 GETTABLEKS                       R5 R5 K10 ["useTokens"]
       40 CALL                             R5 0 1
       41 GETTABLEKS                       R7 R0 K4 ["flattenedJoint"]
       43 GETTABLEKS                       R7 R7 K5 ["value"]
       45 MULK                             R6 R7 K3 [100]
       46 GETUPVAL                         R7 4
       47 GETTABLEKS                       R7 R7 K11 ["createNextOrder"]
       49 CALL                             R7 0 1
       50 GETUPVAL                         R8 0
       51 GETTABLEKS                       R8 R8 K12 ["createElement"]
       53 GETUPVAL                         R9 3
       54 GETTABLEKS                       R9 R9 K13 ["View"]
       56 DUPTABLE                         R10 K17 [{["tag"] = "row align-y-center gap-xsmall size-full-500", ["LayoutOrder"]}]
       57 GETTABLEKS                       R11 R0 K18 ["layoutOrder"]
       59 SETTABLEKS                       R11 R10 K16 ["LayoutOrder"]
       61 DUPTABLE                         R11 K22 [{"Gap", "Label", "Value"}]
       62 LOADB                            R12 0
       63 GETTABLEKS                       R13 R0 K4 ["flattenedJoint"]
       65 GETTABLEKS                       R13 R13 K23 ["depth"]
       67 LOADN                            R14 0
       68 JUMPIFNOTLT                      R14 R13 ; [+28]
       70 GETUPVAL                         R12 0
       71 GETTABLEKS                       R12 R12 K12 ["createElement"]
       73 GETUPVAL                         R13 3
       74 GETTABLEKS                       R13 R13 K13 ["View"]
       76 DUPTABLE                         R14 K25 [{"LayoutOrder", "Size"}]
       77 MOVE                             R15 R7
       78 CALL                             R15 0 1
       79 SETTABLEKS                       R15 R14 K16 ["LayoutOrder"]
       81 GETIMPORT                        R15 K28 [UDim2.fromOffset]
       83 GETTABLEKS                       R17 R5 K19 ["Gap"]
       85 GETTABLEKS                       R17 R17 K29 ["Medium"]
       87 GETTABLEKS                       R18 R0 K4 ["flattenedJoint"]
       89 GETTABLEKS                       R18 R18 K23 ["depth"]
       91 MUL                              R16 R17 R18
       92 LOADN                            R17 0
       93 CALL                             R15 2 1
       94 SETTABLEKS                       R15 R14 K24 ["Size"]
       96 CALL                             R12 2 1
       97 SETTABLEKS                       R12 R11 K19 ["Gap"]
       99 GETUPVAL                         R12 0
      100 GETTABLEKS                       R12 R12 K12 ["createElement"]
      102 GETUPVAL                         R13 3
      103 GETTABLEKS                       R13 R13 K30 ["Text"]
      105 DUPTABLE                         R14 K32 [{["tag"] = "grow size-0-full text-body-medium text-align-x-left text-align-y-center", ["Text"], ["LayoutOrder"]}]
      106 GETTABLEKS                       R15 R0 K4 ["flattenedJoint"]
      108 GETTABLEKS                       R15 R15 K33 ["name"]
      110 SETTABLEKS                       R15 R14 K30 ["Text"]
      112 MOVE                             R15 R7
      113 CALL                             R15 0 1
      114 SETTABLEKS                       R15 R14 K16 ["LayoutOrder"]
      116 CALL                             R12 2 1
      117 SETTABLEKS                       R12 R11 K20 ["Label"]
      119 GETUPVAL                         R12 0
      120 GETTABLEKS                       R12 R12 K12 ["createElement"]
      122 GETUPVAL                         R13 3
      123 GETTABLEKS                       R13 R13 K13 ["View"]
      125 DUPTABLE                         R14 K35 [{["tag"] = "size-2300-full", ["LayoutOrder"]}]
      126 MOVE                             R15 R7
      127 CALL                             R15 0 1
      128 SETTABLEKS                       R15 R14 K16 ["LayoutOrder"]
      130 GETUPVAL                         R15 0
      131 GETTABLEKS                       R15 R15 K12 ["createElement"]
      133 GETUPVAL                         R16 3
      134 GETTABLEKS                       R16 R16 K36 ["NumberInput"]
      136 DUPTABLE                         R17 K48 [{["label"] = "", ["value"], ["onChanged"], ["formatAsString"], ["controlsVariant"], ["size"], ["minimum"] = 0, ["maximum"] = 100, ["width"], ["scrubBehavior"]}]
      137 GETUPVAL                         R19 2
      138 CALL                             R19 0 1
      139 JUMPIFNOT                        R19 ; [+2]
      140 MOVE                             R18 R6
      141 JUMP                             ; [+1]
      142 MOVE                             R18 R2
      143 SETTABLEKS                       R18 R17 K5 ["value"]
      145 SETTABLEKS                       R4 R17 K39 ["onChanged"]
      147 GETUPVAL                         R18 5
      148 SETTABLEKS                       R18 R17 K40 ["formatAsString"]
      150 GETUPVAL                         R18 3
      151 GETTABLEKS                       R18 R18 K49 ["Enums"]
      153 GETTABLEKS                       R18 R18 K50 ["NumberInputControlsVariant"]
      155 GETTABLEKS                       R18 R18 K51 ["None"]
      157 SETTABLEKS                       R18 R17 K41 ["controlsVariant"]
      159 GETUPVAL                         R18 3
      160 GETTABLEKS                       R18 R18 K49 ["Enums"]
      162 GETTABLEKS                       R18 R18 K52 ["InputSize"]
      164 GETTABLEKS                       R18 R18 K53 ["XSmall"]
      166 SETTABLEKS                       R18 R17 K42 ["size"]
      168 GETIMPORT                        R18 K56 [UDim.new]
      170 LOADN                            R19 1
      171 LOADN                            R20 0
      172 CALL                             R18 2 1
      173 SETTABLEKS                       R18 R17 K46 ["width"]
      175 GETUPVAL                         R19 2
      176 CALL                             R19 0 1
      177 JUMPIFNOT                        R19 ; [+4]
      178 GETUPVAL                         R18 6
      179 GETTABLEKS                       R18 R18 K57 ["On"]
      181 JUMP                             ; [+1]
      182 LOADNIL                          R18
      183 SETTABLEKS                       R18 R17 K47 ["scrubBehavior"]
      185 CALL                             R15 2 -1
      186 CALL                             R12 -1 1
      187 SETTABLEKS                       R12 R11 K21 ["Value"]
      189 CALL                             R8 3 -1
      190 RETURN                           R8 -1

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
      199 GETUPVAL                         R20 6
      200 CALL                             R20 0 1
      201 JUMPIFNOT                        R20 ; [+91]
      202 GETUPVAL                         R19 1
      203 GETTABLEKS                       R19 R19 K14 ["createElement"]
      205 GETUPVAL                         R20 3
      206 GETTABLEKS                       R20 R20 K74 ["Menu"]
      208 DUPTABLE                         R21 K80 [{"isOpen", "items", "size", "LayoutOrder", "onPressedOutside", "onActivated"}]
      209 GETTABLEKS                       R22 R5 K81 ["enabled"]
      211 SETTABLEKS                       R22 R21 K75 ["isOpen"]
      213 NEWTABLE                         R22 0 2
      215 DUPTABLE                         R23 K85 [{["id"] = "SetAllTo0", ["text"]}]
      216 LOADK                            R26 K68 ["Common"]
      217 LOADK                            R27 K69 ["AnimationEditor"]
      218 LOADK                            R28 K70 ["MaskEditorPopup"]
      219 LOADK                            R29 K83 ["SetAllTo0"]
      220 NAMECALL                         R24 R1 K71 ["getExternalText"]
      222 CALL                             R24 5 1
      223 SETTABLEKS                       R24 R23 K84 ["text"]
      225 DUPTABLE                         R24 K87 [{["id"] = "SetAllTo100", ["text"]}]
      226 LOADK                            R27 K68 ["Common"]
      227 LOADK                            R28 K69 ["AnimationEditor"]
      228 LOADK                            R29 K70 ["MaskEditorPopup"]
      229 LOADK                            R30 K86 ["SetAllTo100"]
      230 NAMECALL                         R25 R1 K71 ["getExternalText"]
      232 CALL                             R25 5 1
      233 SETTABLEKS                       R25 R24 K84 ["text"]
      235 SETLIST                          R22 R23 2 [1]
      237 SETTABLEKS                       R22 R21 K76 ["items"]
      239 GETUPVAL                         R22 3
      240 GETTABLEKS                       R22 R22 K88 ["Enums"]
      242 GETTABLEKS                       R22 R22 K89 ["InputSize"]
      244 GETTABLEKS                       R22 R22 K48 ["XSmall"]
      246 SETTABLEKS                       R22 R21 K77 ["size"]
      248 MOVE                             R22 R6
      249 CALL                             R22 0 1
      250 SETTABLEKS                       R22 R21 K59 ["LayoutOrder"]
      252 GETTABLEKS                       R22 R5 K51 ["disable"]
      254 SETTABLEKS                       R22 R21 K78 ["onPressedOutside"]
      256 SETTABLEKS                       R10 R21 K79 ["onActivated"]
      258 DUPTABLE                         R22 K91 [{"Button"}]
      259 GETUPVAL                         R23 1
      260 GETTABLEKS                       R23 R23 K14 ["createElement"]
      262 GETUPVAL                         R24 3
      263 GETTABLEKS                       R24 R24 K92 ["IconButton"]
      265 DUPTABLE                         R25 K98 [{["variant"], ["testId"] = "MaskEditor-QuickMenuButton", ["icon"] = "gear", ["size"], ["onActivated"]}]
      266 GETUPVAL                         R26 3
      267 GETTABLEKS                       R26 R26 K88 ["Enums"]
      269 GETTABLEKS                       R26 R26 K99 ["ButtonVariant"]
      271 GETTABLEKS                       R26 R26 K100 ["Utility"]
      273 SETTABLEKS                       R26 R25 K93 ["variant"]
      275 GETUPVAL                         R26 3
      276 GETTABLEKS                       R26 R26 K88 ["Enums"]
      278 GETTABLEKS                       R26 R26 K89 ["InputSize"]
      280 GETTABLEKS                       R26 R26 K48 ["XSmall"]
      282 SETTABLEKS                       R26 R25 K77 ["size"]
      284 GETTABLEKS                       R26 R5 K101 ["enable"]
      286 SETTABLEKS                       R26 R25 K79 ["onActivated"]
      288 CALL                             R23 2 1
      289 SETTABLEKS                       R23 R22 K90 ["Button"]
      291 CALL                             R19 3 1
      292 JUMP                             ; [+1]
      293 LOADNIL                          R19
      294 SETTABLEKS                       R19 R18 K63 ["QuickMenu"]
      296 CALL                             R15 3 1
      297 SETTABLEKS                       R15 R14 K55 ["Header"]
      299 GETUPVAL                         R15 1
      300 GETTABLEKS                       R15 R15 K14 ["createElement"]
      302 GETUPVAL                         R16 3
      303 GETTABLEKS                       R16 R16 K52 ["View"]
      305 DUPTABLE                         R17 K103 [{["tag"] = "grow size-full-0 padding-xsmall padding-bottom-xxlarge bg-surface-100", ["LayoutOrder"]}]
      306 MOVE                             R18 R6
      307 CALL                             R18 0 1
      308 SETTABLEKS                       R18 R17 K59 ["LayoutOrder"]
      310 MOVE                             R18 R9
      311 CALL                             R15 3 1
      312 SETTABLEKS                       R15 R14 K56 ["List"]
      314 CALL                             R11 3 -1
      315 RETURN                           R11 -1

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
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K13 ["Flags"]
       46 GETTABLEKS                       R7 R7 K14 ["getFFlagAnimGraphUIMaskUIChanges"]
       48 CALL                             R6 1 1
       49 GETTABLEKS                       R7 R1 K15 ["Enums"]
       51 GETTABLEKS                       R7 R7 K16 ["ScrubBehavior"]
       53 DUPCLOSURE                       R8 K17 [PROTO_0]
       54 DUPCLOSURE                       R9 K18 [PROTO_3]
       55 CAPTURE                          VAL R4
       56 CAPTURE                          VAL R3
       57 CAPTURE                          VAL R6
       58 CAPTURE                          VAL R1
       59 CAPTURE                          VAL R5
       60 CAPTURE                          VAL R8
       61 CAPTURE                          VAL R7
       62 DUPCLOSURE                       R10 K19 [PROTO_6]
       63 CAPTURE                          VAL R2
       64 CAPTURE                          VAL R4
       65 CAPTURE                          VAL R3
       66 CAPTURE                          VAL R1
       67 CAPTURE                          VAL R5
       68 CAPTURE                          VAL R9
       69 CAPTURE                          VAL R6
       70 RETURN                           R10 1
