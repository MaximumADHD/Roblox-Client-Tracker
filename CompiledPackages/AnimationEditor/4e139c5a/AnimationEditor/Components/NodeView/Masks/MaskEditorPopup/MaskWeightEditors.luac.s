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
       56 DUPTABLE                         R10 K16 [{"tag", "LayoutOrder"}]
       57 LOADK                            R11 K17 ["size-full-500 row gap-xsmall align-y-center"]
       58 SETTABLEKS                       R11 R10 K14 ["tag"]
       60 GETTABLEKS                       R11 R0 K18 ["layoutOrder"]
       62 SETTABLEKS                       R11 R10 K15 ["LayoutOrder"]
       64 DUPTABLE                         R11 K22 [{"Gap", "Label", "Value"}]
       65 LOADB                            R12 0
       66 GETTABLEKS                       R13 R0 K4 ["flattenedJoint"]
       68 GETTABLEKS                       R13 R13 K23 ["depth"]
       70 LOADN                            R14 0
       71 JUMPIFNOTLT                      R14 R13 ; [+28]
       73 GETUPVAL                         R12 0
       74 GETTABLEKS                       R12 R12 K12 ["createElement"]
       76 GETUPVAL                         R13 3
       77 GETTABLEKS                       R13 R13 K13 ["View"]
       79 DUPTABLE                         R14 K25 [{"LayoutOrder", "Size"}]
       80 MOVE                             R15 R7
       81 CALL                             R15 0 1
       82 SETTABLEKS                       R15 R14 K15 ["LayoutOrder"]
       84 GETIMPORT                        R15 K28 [UDim2.fromOffset]
       86 GETTABLEKS                       R17 R5 K19 ["Gap"]
       88 GETTABLEKS                       R17 R17 K29 ["Medium"]
       90 GETTABLEKS                       R18 R0 K4 ["flattenedJoint"]
       92 GETTABLEKS                       R18 R18 K23 ["depth"]
       94 MUL                              R16 R17 R18
       95 LOADN                            R17 0
       96 CALL                             R15 2 1
       97 SETTABLEKS                       R15 R14 K24 ["Size"]
       99 CALL                             R12 2 1
      100 SETTABLEKS                       R12 R11 K19 ["Gap"]
      102 GETUPVAL                         R12 0
      103 GETTABLEKS                       R12 R12 K12 ["createElement"]
      105 GETUPVAL                         R13 3
      106 GETTABLEKS                       R13 R13 K30 ["Text"]
      108 DUPTABLE                         R14 K31 [{"tag", "Text", "LayoutOrder"}]
      109 LOADK                            R15 K32 ["size-0-full text-body-medium text-align-y-center text-align-x-left grow"]
      110 SETTABLEKS                       R15 R14 K14 ["tag"]
      112 GETTABLEKS                       R15 R0 K4 ["flattenedJoint"]
      114 GETTABLEKS                       R15 R15 K33 ["name"]
      116 SETTABLEKS                       R15 R14 K30 ["Text"]
      118 MOVE                             R15 R7
      119 CALL                             R15 0 1
      120 SETTABLEKS                       R15 R14 K15 ["LayoutOrder"]
      122 CALL                             R12 2 1
      123 SETTABLEKS                       R12 R11 K20 ["Label"]
      125 GETUPVAL                         R12 0
      126 GETTABLEKS                       R12 R12 K12 ["createElement"]
      128 GETUPVAL                         R13 3
      129 GETTABLEKS                       R13 R13 K13 ["View"]
      131 DUPTABLE                         R14 K16 [{"tag", "LayoutOrder"}]
      132 LOADK                            R15 K34 ["size-2300-full"]
      133 SETTABLEKS                       R15 R14 K14 ["tag"]
      135 MOVE                             R15 R7
      136 CALL                             R15 0 1
      137 SETTABLEKS                       R15 R14 K15 ["LayoutOrder"]
      139 GETUPVAL                         R15 0
      140 GETTABLEKS                       R15 R15 K12 ["createElement"]
      142 GETUPVAL                         R16 3
      143 GETTABLEKS                       R16 R16 K35 ["NumberInput"]
      145 DUPTABLE                         R17 K45 [{"label", "value", "onChanged", "formatAsString", "controlsVariant", "size", "minimum", "maximum", "width", "isScrubbable"}]
      146 LOADK                            R18 K46 [""]
      147 SETTABLEKS                       R18 R17 K36 ["label"]
      149 GETUPVAL                         R19 2
      150 CALL                             R19 0 1
      151 JUMPIFNOT                        R19 ; [+2]
      152 MOVE                             R18 R6
      153 JUMP                             ; [+1]
      154 MOVE                             R18 R2
      155 SETTABLEKS                       R18 R17 K5 ["value"]
      157 SETTABLEKS                       R4 R17 K37 ["onChanged"]
      159 GETUPVAL                         R18 5
      160 SETTABLEKS                       R18 R17 K38 ["formatAsString"]
      162 GETUPVAL                         R18 3
      163 GETTABLEKS                       R18 R18 K47 ["Enums"]
      165 GETTABLEKS                       R18 R18 K48 ["NumberInputControlsVariant"]
      167 GETTABLEKS                       R18 R18 K49 ["None"]
      169 SETTABLEKS                       R18 R17 K39 ["controlsVariant"]
      171 GETUPVAL                         R18 3
      172 GETTABLEKS                       R18 R18 K47 ["Enums"]
      174 GETTABLEKS                       R18 R18 K50 ["InputSize"]
      176 GETTABLEKS                       R18 R18 K51 ["XSmall"]
      178 SETTABLEKS                       R18 R17 K40 ["size"]
      180 LOADN                            R18 0
      181 SETTABLEKS                       R18 R17 K41 ["minimum"]
      183 LOADN                            R18 100
      184 SETTABLEKS                       R18 R17 K42 ["maximum"]
      186 GETIMPORT                        R18 K54 [UDim.new]
      188 LOADN                            R19 1
      189 LOADN                            R20 0
      190 CALL                             R18 2 1
      191 SETTABLEKS                       R18 R17 K43 ["width"]
      193 GETUPVAL                         R19 2
      194 CALL                             R19 0 1
      195 JUMPIFNOT                        R19 ; [+2]
      196 LOADB                            R18 1
      197 JUMP                             ; [+1]
      198 LOADNIL                          R18
      199 SETTABLEKS                       R18 R17 K44 ["isScrubbable"]
      201 CALL                             R15 2 -1
      202 CALL                             R12 -1 1
      203 SETTABLEKS                       R12 R11 K21 ["Value"]
      205 CALL                             R8 3 -1
      206 RETURN                           R8 -1

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
       75 DUPTABLE                         R11 K22 [{"tag", "scroll", "layout"}]
       76 LOADK                            R12 K23 ["size-full grow"]
       77 SETTABLEKS                       R12 R11 K19 ["tag"]
       79 DUPTABLE                         R12 K28 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection", "VerticalScrollBarInset"}]
       80 GETIMPORT                        R13 K32 [Enum.AutomaticSize.Y]
       82 SETTABLEKS                       R13 R12 K24 ["AutomaticCanvasSize"]
       84 GETIMPORT                        R13 K35 [UDim2.new]
       86 CALL                             R13 0 1
       87 SETTABLEKS                       R13 R12 K25 ["CanvasSize"]
       89 GETIMPORT                        R13 K36 [Enum.ScrollingDirection.Y]
       91 SETTABLEKS                       R13 R12 K26 ["ScrollingDirection"]
       93 GETIMPORT                        R13 K39 [Enum.ScrollBarInset.Always]
       95 SETTABLEKS                       R13 R12 K27 ["VerticalScrollBarInset"]
       97 SETTABLEKS                       R12 R11 K20 ["scroll"]
       99 DUPTABLE                         R12 K42 [{"FillDirection", "Padding"}]
      100 GETIMPORT                        R13 K44 [Enum.FillDirection.Vertical]
      102 SETTABLEKS                       R13 R12 K40 ["FillDirection"]
      104 GETIMPORT                        R13 K46 [UDim.new]
      106 LOADN                            R14 0
      107 GETTABLEKS                       R15 R4 K47 ["Gap"]
      109 GETTABLEKS                       R15 R15 K48 ["XSmall"]
      111 CALL                             R13 2 1
      112 SETTABLEKS                       R13 R12 K41 ["Padding"]
      114 SETTABLEKS                       R12 R11 K21 ["layout"]
      116 MOVE                             R12 R8
      117 CALL                             R9 3 1
      118 GETUPVAL                         R10 1
      119 GETTABLEKS                       R10 R10 K49 ["useCallback"]
      121 NEWCLOSURE                       R11 P0
      122 CAPTURE                          VAL R2
      123 CAPTURE                          VAL R0
      124 CAPTURE                          VAL R5
      125 NEWTABLE                         R12 0 3
      127 GETTABLEKS                       R13 R0 K6 ["maskId"]
      129 GETTABLEKS                       R14 R2 K50 ["setAllJointWeightsAsync"]
      131 GETTABLEKS                       R15 R5 K51 ["disable"]
      133 SETLIST                          R12 R13 3 [1]
      135 CALL                             R10 2 1
      136 GETUPVAL                         R11 1
      137 GETTABLEKS                       R11 R11 K14 ["createElement"]
      139 GETUPVAL                         R12 3
      140 GETTABLEKS                       R12 R12 K52 ["View"]
      142 DUPTABLE                         R13 K53 [{"tag"}]
      143 LOADK                            R14 K54 ["size-full col padding-y-medium"]
      144 SETTABLEKS                       R14 R13 K19 ["tag"]
      146 DUPTABLE                         R14 K57 [{"Header", "List"}]
      147 GETUPVAL                         R15 1
      148 GETTABLEKS                       R15 R15 K14 ["createElement"]
      150 GETUPVAL                         R16 3
      151 GETTABLEKS                       R16 R16 K52 ["View"]
      153 DUPTABLE                         R17 K59 [{"tag", "LayoutOrder"}]
      154 LOADK                            R18 K60 ["size-full-400 row align-y-center padding-bottom-small"]
      155 SETTABLEKS                       R18 R17 K19 ["tag"]
      157 MOVE                             R18 R6
      158 CALL                             R18 0 1
      159 SETTABLEKS                       R18 R17 K58 ["LayoutOrder"]
      161 DUPTABLE                         R18 K64 [{"Joint", "Weight", "QuickMenu"}]
      162 GETUPVAL                         R19 1
      163 GETTABLEKS                       R19 R19 K14 ["createElement"]
      165 GETUPVAL                         R20 3
      166 GETTABLEKS                       R20 R20 K65 ["Text"]
      168 DUPTABLE                         R21 K66 [{"tag", "LayoutOrder", "Text"}]
      169 LOADK                            R22 K67 ["size-0-full text-body-small text-align-x-left grow"]
      170 SETTABLEKS                       R22 R21 K19 ["tag"]
      172 MOVE                             R22 R6
      173 CALL                             R22 0 1
      174 SETTABLEKS                       R22 R21 K58 ["LayoutOrder"]
      176 LOADK                            R24 K68 ["Common"]
      177 LOADK                            R25 K69 ["AnimationEditor"]
      178 LOADK                            R26 K70 ["MaskEditorPopup"]
      179 LOADK                            R27 K61 ["Joint"]
      180 NAMECALL                         R22 R1 K71 ["getExternalText"]
      182 CALL                             R22 5 1
      183 SETTABLEKS                       R22 R21 K65 ["Text"]
      185 CALL                             R19 2 1
      186 SETTABLEKS                       R19 R18 K61 ["Joint"]
      188 GETUPVAL                         R19 1
      189 GETTABLEKS                       R19 R19 K14 ["createElement"]
      191 GETUPVAL                         R20 3
      192 GETTABLEKS                       R20 R20 K65 ["Text"]
      194 DUPTABLE                         R21 K66 [{"tag", "LayoutOrder", "Text"}]
      195 LOADK                            R22 K72 ["size-2300-full text-body-small text-align-x-left"]
      196 SETTABLEKS                       R22 R21 K19 ["tag"]
      198 MOVE                             R22 R6
      199 CALL                             R22 0 1
      200 SETTABLEKS                       R22 R21 K58 ["LayoutOrder"]
      202 LOADK                            R24 K68 ["Common"]
      203 LOADK                            R25 K69 ["AnimationEditor"]
      204 LOADK                            R26 K70 ["MaskEditorPopup"]
      205 LOADK                            R27 K62 ["Weight"]
      206 NAMECALL                         R22 R1 K71 ["getExternalText"]
      208 CALL                             R22 5 1
      209 SETTABLEKS                       R22 R21 K65 ["Text"]
      211 CALL                             R19 2 1
      212 SETTABLEKS                       R19 R18 K62 ["Weight"]
      214 GETUPVAL                         R20 6
      215 CALL                             R20 0 1
      216 JUMPIFNOT                        R20 ; [+103]
      217 GETUPVAL                         R19 1
      218 GETTABLEKS                       R19 R19 K14 ["createElement"]
      220 GETUPVAL                         R20 3
      221 GETTABLEKS                       R20 R20 K73 ["Menu"]
      223 DUPTABLE                         R21 K79 [{"isOpen", "items", "size", "LayoutOrder", "onPressedOutside", "onActivated"}]
      224 GETTABLEKS                       R22 R5 K80 ["enabled"]
      226 SETTABLEKS                       R22 R21 K74 ["isOpen"]
      228 NEWTABLE                         R22 0 2
      230 DUPTABLE                         R23 K83 [{"id", "text"}]
      231 LOADK                            R24 K84 ["SetAllTo0"]
      232 SETTABLEKS                       R24 R23 K81 ["id"]
      234 LOADK                            R26 K68 ["Common"]
      235 LOADK                            R27 K69 ["AnimationEditor"]
      236 LOADK                            R28 K70 ["MaskEditorPopup"]
      237 LOADK                            R29 K84 ["SetAllTo0"]
      238 NAMECALL                         R24 R1 K71 ["getExternalText"]
      240 CALL                             R24 5 1
      241 SETTABLEKS                       R24 R23 K82 ["text"]
      243 DUPTABLE                         R24 K83 [{"id", "text"}]
      244 LOADK                            R25 K85 ["SetAllTo100"]
      245 SETTABLEKS                       R25 R24 K81 ["id"]
      247 LOADK                            R27 K68 ["Common"]
      248 LOADK                            R28 K69 ["AnimationEditor"]
      249 LOADK                            R29 K70 ["MaskEditorPopup"]
      250 LOADK                            R30 K85 ["SetAllTo100"]
      251 NAMECALL                         R25 R1 K71 ["getExternalText"]
      253 CALL                             R25 5 1
      254 SETTABLEKS                       R25 R24 K82 ["text"]
      256 SETLIST                          R22 R23 2 [1]
      258 SETTABLEKS                       R22 R21 K75 ["items"]
      260 GETUPVAL                         R22 3
      261 GETTABLEKS                       R22 R22 K86 ["Enums"]
      263 GETTABLEKS                       R22 R22 K87 ["InputSize"]
      265 GETTABLEKS                       R22 R22 K48 ["XSmall"]
      267 SETTABLEKS                       R22 R21 K76 ["size"]
      269 MOVE                             R22 R6
      270 CALL                             R22 0 1
      271 SETTABLEKS                       R22 R21 K58 ["LayoutOrder"]
      273 GETTABLEKS                       R22 R5 K51 ["disable"]
      275 SETTABLEKS                       R22 R21 K77 ["onPressedOutside"]
      277 SETTABLEKS                       R10 R21 K78 ["onActivated"]
      279 DUPTABLE                         R22 K89 [{"Button"}]
      280 GETUPVAL                         R23 1
      281 GETTABLEKS                       R23 R23 K14 ["createElement"]
      283 GETUPVAL                         R24 3
      284 GETTABLEKS                       R24 R24 K90 ["IconButton"]
      286 DUPTABLE                         R25 K94 [{"variant", "testId", "icon", "size", "onActivated"}]
      287 GETUPVAL                         R26 3
      288 GETTABLEKS                       R26 R26 K86 ["Enums"]
      290 GETTABLEKS                       R26 R26 K95 ["ButtonVariant"]
      292 GETTABLEKS                       R26 R26 K96 ["Utility"]
      294 SETTABLEKS                       R26 R25 K91 ["variant"]
      296 LOADK                            R26 K97 ["MaskEditor-QuickMenuButton"]
      297 SETTABLEKS                       R26 R25 K92 ["testId"]
      299 LOADK                            R26 K98 ["gear"]
      300 SETTABLEKS                       R26 R25 K93 ["icon"]
      302 GETUPVAL                         R26 3
      303 GETTABLEKS                       R26 R26 K86 ["Enums"]
      305 GETTABLEKS                       R26 R26 K87 ["InputSize"]
      307 GETTABLEKS                       R26 R26 K48 ["XSmall"]
      309 SETTABLEKS                       R26 R25 K76 ["size"]
      311 GETTABLEKS                       R26 R5 K99 ["enable"]
      313 SETTABLEKS                       R26 R25 K78 ["onActivated"]
      315 CALL                             R23 2 1
      316 SETTABLEKS                       R23 R22 K88 ["Button"]
      318 CALL                             R19 3 1
      319 JUMP                             ; [+1]
      320 LOADNIL                          R19
      321 SETTABLEKS                       R19 R18 K63 ["QuickMenu"]
      323 CALL                             R15 3 1
      324 SETTABLEKS                       R15 R14 K55 ["Header"]
      326 GETUPVAL                         R15 1
      327 GETTABLEKS                       R15 R15 K14 ["createElement"]
      329 GETUPVAL                         R16 3
      330 GETTABLEKS                       R16 R16 K52 ["View"]
      332 DUPTABLE                         R17 K59 [{"tag", "LayoutOrder"}]
      333 LOADK                            R18 K100 ["size-full-0 grow padding-xsmall padding-bottom-xxlarge bg-surface-100"]
      334 SETTABLEKS                       R18 R17 K19 ["tag"]
      336 MOVE                             R18 R6
      337 CALL                             R18 0 1
      338 SETTABLEKS                       R18 R17 K58 ["LayoutOrder"]
      340 MOVE                             R18 R9
      341 CALL                             R15 3 1
      342 SETTABLEKS                       R15 R14 K56 ["List"]
      344 CALL                             R11 3 -1
      345 RETURN                           R11 -1

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
       49 DUPCLOSURE                       R7 K15 [PROTO_0]
       50 DUPCLOSURE                       R8 K16 [PROTO_3]
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R3
       53 CAPTURE                          VAL R6
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R5
       56 CAPTURE                          VAL R7
       57 DUPCLOSURE                       R9 K17 [PROTO_6]
       58 CAPTURE                          VAL R2
       59 CAPTURE                          VAL R4
       60 CAPTURE                          VAL R3
       61 CAPTURE                          VAL R1
       62 CAPTURE                          VAL R5
       63 CAPTURE                          VAL R8
       64 CAPTURE                          VAL R6
       65 RETURN                           R9 1
