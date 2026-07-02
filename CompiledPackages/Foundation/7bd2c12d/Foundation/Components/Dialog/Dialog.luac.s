PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onClose"]
        3 JUMPIFNOT                        R0 ; [+7]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["onClose"]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K1 ["BackdropClick"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R1 K2 [UDim2.fromOffset]
        2 GETTABLEKS                       R3 R0 K3 ["X"]
        4 GETUPVAL                         R5 0
        5 MULK                             R4 R5 K4 [2]
        6 ADD                              R2 R3 R4
        7 GETTABLEKS                       R4 R0 K5 ["Y"]
        9 GETUPVAL                         R6 0
       10 MULK                             R5 R6 K4 [2]
       11 ADD                              R3 R4 R5
       12 CALL                             R1 2 -1
       13 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["assign"]
        3 NEWTABLE                         R2 0 0
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{["LayoutOrder"] = 1}]
        7 CALL                             R1 3 1
        8 GETUPVAL                         R2 1
        9 CALL                             R2 0 1
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R4 R2 K4 ["inner"]
       13 GETTABLEKS                       R4 R4 K5 ["maxWidth"]
       15 CALL                             R3 1 1
       16 GETUPVAL                         R4 3
       17 GETTABLEKS                       R4 R4 K6 ["useRef"]
       19 LOADNIL                          R5
       20 CALL                             R4 1 1
       21 GETUPVAL                         R5 4
       22 MOVE                             R6 R4
       23 CALL                             R5 1 1
       24 GETUPVAL                         R6 5
       25 CALL                             R6 0 1
       26 GETUPVAL                         R7 6
       27 GETUPVAL                         R8 7
       28 GETTABLEKS                       R8 R8 K7 ["Dialog"]
       30 DUPTABLE                         R9 K10 [{["stackAboveOwner"] = False}]
       31 CALL                             R7 2 1
       32 GETUPVAL                         R8 8
       33 GETTABLEKS                       R9 R1 K11 ["size"]
       35 CALL                             R8 1 0
       36 GETUPVAL                         R8 3
       37 GETTABLEKS                       R8 R8 K12 ["createElement"]
       39 GETUPVAL                         R9 9
       40 DUPTABLE                         R10 K17 [{["ZIndex"], ["tag"] = "size-full", ["testId"]}]
       41 GETTABLEKS                       R11 R7 K18 ["zIndex"]
       43 SETTABLEKS                       R11 R10 K13 ["ZIndex"]
       45 LOADK                            R12 K19 ["%*--container"]
       46 GETTABLEKS                       R14 R1 K16 ["testId"]
       48 NAMECALL                         R12 R12 K20 ["format"]
       50 CALL                             R12 2 1
       51 MOVE                             R11 R12
       52 SETTABLEKS                       R11 R10 K16 ["testId"]
       54 DUPTABLE                         R11 K23 [{"Backdrop", "DialogShadowWrapper"}]
       55 GETTABLEKS                       R13 R1 K24 ["hasBackdrop"]
       57 JUMPIFNOT                        R13 ; [+42]
       58 GETUPVAL                         R12 3
       59 GETTABLEKS                       R12 R12 K12 ["createElement"]
       61 GETUPVAL                         R13 9
       62 DUPTABLE                         R14 K31 [{["tag"] = "position-center-center anchor-center-center", ["Size"], ["stateLayer"], ["onActivated"], ["backgroundStyle"], ["ZIndex"] = 2, ["testId"]}]
       63 GETIMPORT                        R15 K34 [UDim2.fromScale]
       65 LOADN                            R16 2
       66 LOADN                            R17 2
       67 CALL                             R15 2 1
       68 SETTABLEKS                       R15 R14 K26 ["Size"]
       70 DUPTABLE                         R15 K36 [{"affordance"}]
       71 GETUPVAL                         R16 10
       72 GETTABLEKS                       R16 R16 K37 ["None"]
       74 SETTABLEKS                       R16 R15 K35 ["affordance"]
       76 SETTABLEKS                       R15 R14 K27 ["stateLayer"]
       78 NEWCLOSURE                       R15 P0
       79 CAPTURE                          VAL R1
       80 CAPTURE                          UPVAL U11
       81 SETTABLEKS                       R15 R14 K28 ["onActivated"]
       83 GETTABLEKS                       R15 R2 K38 ["backdrop"]
       85 GETTABLEKS                       R15 R15 K29 ["backgroundStyle"]
       87 SETTABLEKS                       R15 R14 K29 ["backgroundStyle"]
       89 LOADK                            R16 K39 ["%*--backdrop"]
       90 GETTABLEKS                       R18 R1 K16 ["testId"]
       92 NAMECALL                         R16 R16 K20 ["format"]
       94 CALL                             R16 2 1
       95 MOVE                             R15 R16
       96 SETTABLEKS                       R15 R14 K16 ["testId"]
       98 CALL                             R12 2 1
       99 JUMP                             ; [+1]
      100 LOADNIL                          R12
      101 SETTABLEKS                       R12 R11 K21 ["Backdrop"]
      103 GETUPVAL                         R12 3
      104 GETTABLEKS                       R12 R12 K12 ["createElement"]
      106 GETUPVAL                         R13 9
      107 DUPTABLE                         R14 K40 [{["tag"], ["ZIndex"] = 2}]
      108 GETTABLEKS                       R15 R2 K41 ["container"]
      110 GETTABLEKS                       R15 R15 K14 ["tag"]
      112 SETTABLEKS                       R15 R14 K14 ["tag"]
      114 DUPTABLE                         R15 K43 [{"Shadow"}]
      115 GETUPVAL                         R16 3
      116 GETTABLEKS                       R16 R16 K12 ["createElement"]
      118 GETUPVAL                         R17 12
      119 DUPTABLE                         R18 K47 [{"Image", "Size", "slice", "imageStyle", "testId"}]
      120 GETUPVAL                         R19 13
      121 SETTABLEKS                       R19 R18 K44 ["Image"]
      123 DUPCLOSURE                       R21 K48 [PROTO_1]
      124 CAPTURE                          UPVAL U14
      125 NAMECALL                         R19 R5 K49 ["map"]
      127 CALL                             R19 2 1
      128 SETTABLEKS                       R19 R18 K26 ["Size"]
      130 DUPTABLE                         R19 K52 [{["center"], ["scale"] = 2}]
      131 GETIMPORT                        R20 K55 [Rect.new]
      133 GETUPVAL                         R21 14
      134 GETUPVAL                         R22 14
      135 GETUPVAL                         R23 14
      136 GETUPVAL                         R24 14
      137 CALL                             R20 4 1
      138 SETTABLEKS                       R20 R19 K50 ["center"]
      140 SETTABLEKS                       R19 R18 K45 ["slice"]
      142 GETTABLEKS                       R19 R2 K56 ["shadow"]
      144 GETTABLEKS                       R19 R19 K46 ["imageStyle"]
      146 SETTABLEKS                       R19 R18 K46 ["imageStyle"]
      148 LOADK                            R20 K57 ["%*--shadow"]
      149 GETTABLEKS                       R22 R1 K16 ["testId"]
      151 NAMECALL                         R20 R20 K20 ["format"]
      153 CALL                             R20 2 1
      154 MOVE                             R19 R20
      155 SETTABLEKS                       R19 R18 K16 ["testId"]
      157 CALL                             R16 2 1
      158 SETTABLEKS                       R16 R15 K42 ["Shadow"]
      160 CALL                             R12 3 1
      161 SETTABLEKS                       R12 R11 K22 ["DialogShadowWrapper"]
      163 DUPTABLE                         R12 K58 [{"Dialog"}]
      164 GETUPVAL                         R13 3
      165 GETTABLEKS                       R13 R13 K12 ["createElement"]
      167 GETUPVAL                         R14 9
      168 DUPTABLE                         R15 K60 [{["tag"], ["ZIndex"] = 3}]
      169 GETTABLEKS                       R16 R2 K41 ["container"]
      171 GETTABLEKS                       R16 R16 K14 ["tag"]
      173 SETTABLEKS                       R16 R15 K14 ["tag"]
      175 DUPTABLE                         R16 K64 [{"DialogFlexStart", "DialogInner", "DialogFlexEnd"}]
      176 GETUPVAL                         R17 3
      177 GETTABLEKS                       R17 R17 K12 ["createElement"]
      179 GETUPVAL                         R18 9
      180 DUPTABLE                         R19 K67 [{["tag"] = "fill", ["LayoutOrder"] = 0}]
      181 CALL                             R17 2 1
      182 SETTABLEKS                       R17 R16 K61 ["DialogFlexStart"]
      184 GETUPVAL                         R17 3
      185 GETTABLEKS                       R17 R17 K12 ["createElement"]
      187 GETUPVAL                         R18 9
      188 GETUPVAL                         R19 15
      189 MOVE                             R20 R1
      190 DUPTABLE                         R21 K72 [{"tag", "ref", "sizeConstraint", "stateLayer", "selection", "selectionGroup", "onActivated"}]
      191 GETTABLEKS                       R22 R2 K4 ["inner"]
      193 GETTABLEKS                       R22 R22 K14 ["tag"]
      195 SETTABLEKS                       R22 R21 K14 ["tag"]
      197 GETTABLEKS                       R22 R1 K73 ["forwardRef"]
      199 SETTABLEKS                       R22 R21 K68 ["ref"]
      201 DUPTABLE                         R22 K75 [{"MaxSize"}]
      202 GETIMPORT                        R23 K77 [Vector2.new]
      204 MOVE                             R24 R3
      205 LOADK                            R25 K78 [∞]
      206 CALL                             R23 2 1
      207 SETTABLEKS                       R23 R22 K74 ["MaxSize"]
      209 SETTABLEKS                       R22 R21 K69 ["sizeConstraint"]
      211 DUPTABLE                         R22 K36 [{"affordance"}]
      212 GETUPVAL                         R23 10
      213 GETTABLEKS                       R23 R23 K37 ["None"]
      215 SETTABLEKS                       R23 R22 K35 ["affordance"]
      217 SETTABLEKS                       R22 R21 K27 ["stateLayer"]
      219 GETUPVAL                         R22 16
      220 GETTABLEKS                       R22 R22 K79 ["nonSelectable"]
      222 SETTABLEKS                       R22 R21 K70 ["selection"]
      224 GETUPVAL                         R22 16
      225 GETTABLEKS                       R22 R22 K80 ["isolatedSelectionGroup"]
      227 SETTABLEKS                       R22 R21 K71 ["selectionGroup"]
      229 GETUPVAL                         R22 0
      230 GETTABLEKS                       R22 R22 K81 ["noop"]
      232 SETTABLEKS                       R22 R21 K28 ["onActivated"]
      234 CALL                             R19 2 1
      235 DUPTABLE                         R20 K84 [{"CloseAffordance", "DialogBody"}]
      236 GETTABLEKS                       R22 R1 K85 ["onClose"]
      238 JUMPIFNOT                        R22 ; [+43]
      239 GETUPVAL                         R21 3
      240 GETTABLEKS                       R21 R21 K12 ["createElement"]
      242 GETUPVAL                         R22 17
      243 DUPTABLE                         R23 K88 [{["onActivated"], ["Position"], ["AnchorPoint"], ["ZIndex"] = 2, ["testId"]}]
      244 GETTABLEKS                       R24 R1 K85 ["onClose"]
      246 SETTABLEKS                       R24 R23 K28 ["onActivated"]
      248 GETIMPORT                        R24 K89 [UDim2.new]
      250 LOADN                            R25 1
      251 GETTABLEKS                       R27 R2 K90 ["closeAffordance"]
      253 GETTABLEKS                       R27 R27 K91 ["offset"]
      255 MINUS                            R26 R27
      256 LOADN                            R27 0
      257 GETTABLEKS                       R28 R2 K90 ["closeAffordance"]
      259 GETTABLEKS                       R28 R28 K91 ["offset"]
      261 CALL                             R24 4 1
      262 SETTABLEKS                       R24 R23 K86 ["Position"]
      264 GETIMPORT                        R24 K77 [Vector2.new]
      266 LOADN                            R25 1
      267 LOADN                            R26 0
      268 CALL                             R24 2 1
      269 SETTABLEKS                       R24 R23 K87 ["AnchorPoint"]
      271 LOADK                            R25 K92 ["%*--close-affordance"]
      272 GETTABLEKS                       R27 R1 K16 ["testId"]
      274 NAMECALL                         R25 R25 K20 ["format"]
      276 CALL                             R25 2 1
      277 MOVE                             R24 R25
      278 SETTABLEKS                       R24 R23 K16 ["testId"]
      280 CALL                             R21 2 1
      281 JUMP                             ; [+1]
      282 LOADNIL                          R21
      283 SETTABLEKS                       R21 R20 K82 ["CloseAffordance"]
      285 GETUPVAL                         R21 3
      286 GETTABLEKS                       R21 R21 K12 ["createElement"]
      288 GETUPVAL                         R22 9
      289 DUPTABLE                         R23 K93 [{"tag", "ref", "testId"}]
      290 GETTABLEKS                       R24 R2 K94 ["body"]
      292 GETTABLEKS                       R24 R24 K14 ["tag"]
      294 SETTABLEKS                       R24 R23 K14 ["tag"]
      296 SETTABLEKS                       R4 R23 K68 ["ref"]
      298 LOADK                            R25 K95 ["%*--body"]
      299 GETTABLEKS                       R27 R1 K16 ["testId"]
      301 NAMECALL                         R25 R25 K20 ["format"]
      303 CALL                             R25 2 1
      304 MOVE                             R24 R25
      305 SETTABLEKS                       R24 R23 K16 ["testId"]
      307 GETUPVAL                         R24 3
      308 GETTABLEKS                       R24 R24 K12 ["createElement"]
      310 GETUPVAL                         R25 18
      311 DUPTABLE                         R26 K97 [{"owner"}]
      312 SETTABLEKS                       R7 R26 K96 ["owner"]
      314 GETTABLEKS                       R27 R1 K98 ["children"]
      316 CALL                             R24 3 -1
      317 CALL                             R21 -1 1
      318 SETTABLEKS                       R21 R20 K83 ["DialogBody"]
      320 CALL                             R17 3 1
      321 SETTABLEKS                       R17 R16 K62 ["DialogInner"]
      323 GETUPVAL                         R17 3
      324 GETTABLEKS                       R17 R17 K12 ["createElement"]
      326 GETUPVAL                         R18 9
      327 DUPTABLE                         R19 K99 [{["tag"] = "fill", ["LayoutOrder"] = 2}]
      328 CALL                             R17 2 1
      329 SETTABLEKS                       R17 R16 K63 ["DialogFlexEnd"]
      331 CALL                             R13 3 1
      332 SETTABLEKS                       R13 R12 K7 ["Dialog"]
      334 CALL                             R8 4 1
      335 GETTABLEKS                       R9 R1 K100 ["disablePortal"]
      337 JUMPIF                           R9 ; [+2]
      338 JUMPIFNOTEQKNIL                  R6 ; [+2]
      340 RETURN                           R8 1
      341 GETUPVAL                         R9 19
      342 GETTABLEKS                       R9 R9 K101 ["createPortal"]
      344 MOVE                             R10 R8
      345 MOVE                             R11 R6
      346 CALL                             R9 2 -1
      347 RETURN                           R9 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K0 ["createElement"]
        7 GETUPVAL                         R4 3
        8 DUPTABLE                         R5 K4 [{"size", "responsiveSize", "testId"}]
        9 GETTABLEKS                       R6 R2 K1 ["size"]
       11 SETTABLEKS                       R6 R5 K1 ["size"]
       13 GETTABLEKS                       R6 R2 K1 ["size"]
       15 SETTABLEKS                       R6 R5 K2 ["responsiveSize"]
       17 GETTABLEKS                       R6 R2 K3 ["testId"]
       19 SETTABLEKS                       R6 R5 K3 ["testId"]
       21 DUPTABLE                         R6 K6 [{"Dialog"}]
       22 GETUPVAL                         R7 2
       23 GETTABLEKS                       R7 R7 K0 ["createElement"]
       25 GETUPVAL                         R8 4
       26 GETUPVAL                         R9 5
       27 GETTABLEKS                       R9 R9 K7 ["assign"]
       29 NEWTABLE                         R10 0 0
       31 MOVE                             R11 R2
       32 DUPTABLE                         R12 K9 [{"forwardRef"}]
       33 SETTABLEKS                       R1 R12 K8 ["forwardRef"]
       35 CALL                             R9 3 -1
       36 CALL                             R7 -1 1
       37 SETTABLEKS                       R7 R6 K5 ["Dialog"]
       39 CALL                             R3 3 -1
       40 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Dash"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["ReactRoblox"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R0 K10 ["Components"]
       28 GETTABLEKS                       R6 R6 K11 ["CloseAffordance"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K6 [require]
       33 GETTABLEKS                       R7 R0 K12 ["Constants"]
       35 CALL                             R6 1 1
       36 GETIMPORT                        R7 K6 [require]
       38 GETTABLEKS                       R8 R0 K10 ["Components"]
       40 GETTABLEKS                       R8 R8 K13 ["Image"]
       42 CALL                             R7 1 1
       43 GETIMPORT                        R8 K6 [require]
       45 GETTABLEKS                       R9 R0 K10 ["Components"]
       47 GETTABLEKS                       R9 R9 K14 ["View"]
       49 CALL                             R8 1 1
       50 GETIMPORT                        R9 K6 [require]
       52 GETTABLEKS                       R10 R0 K15 ["Providers"]
       54 GETTABLEKS                       R10 R10 K16 ["Overlay"]
       56 GETTABLEKS                       R10 R10 K17 ["useOverlay"]
       58 CALL                             R9 1 1
       59 GETIMPORT                        R10 K6 [require]
       61 GETTABLEKS                       R11 R0 K18 ["Enums"]
       63 GETTABLEKS                       R11 R11 K19 ["DialogSize"]
       65 CALL                             R10 1 1
       66 GETIMPORT                        R11 K6 [require]
       68 GETTABLEKS                       R12 R0 K18 ["Enums"]
       70 GETTABLEKS                       R12 R12 K20 ["OnCloseCallbackReason"]
       72 CALL                             R11 1 1
       73 GETIMPORT                        R12 K6 [require]
       75 GETTABLEKS                       R13 R0 K18 ["Enums"]
       77 GETTABLEKS                       R13 R13 K21 ["StateLayerAffordance"]
       79 CALL                             R12 1 1
       80 GETIMPORT                        R13 K6 [require]
       82 GETTABLEKS                       R14 R0 K22 ["Utility"]
       84 GETTABLEKS                       R14 R14 K23 ["useScaledValue"]
       86 CALL                             R13 1 1
       87 GETIMPORT                        R14 K6 [require]
       89 GETTABLEKS                       R15 R0 K22 ["Utility"]
       91 GETTABLEKS                       R15 R15 K24 ["withCommonProps"]
       93 CALL                             R14 1 1
       94 GETIMPORT                        R15 K6 [require]
       96 GETTABLEKS                       R16 R0 K22 ["Utility"]
       98 GETTABLEKS                       R16 R16 K25 ["withDefaults"]
      100 CALL                             R15 1 1
      101 GETIMPORT                        R16 K6 [require]
      103 GETIMPORT                        R17 K1 [script]
      105 GETTABLEKS                       R17 R17 K4 ["Parent"]
      107 GETTABLEKS                       R17 R17 K26 ["Types"]
      109 CALL                             R16 1 1
      110 GETIMPORT                        R17 K6 [require]
      112 GETTABLEKS                       R18 R0 K10 ["Components"]
      114 GETTABLEKS                       R18 R18 K26 ["Types"]
      116 CALL                             R17 1 1
      117 GETIMPORT                        R18 K6 [require]
      119 GETIMPORT                        R19 K1 [script]
      121 GETTABLEKS                       R19 R19 K4 ["Parent"]
      123 GETTABLEKS                       R19 R19 K27 ["useDialogVariants"]
      125 CALL                             R18 1 1
      126 GETTABLEKS                       R18 R18 K27 ["useDialogVariants"]
      128 GETIMPORT                        R19 K6 [require]
      130 GETIMPORT                        R20 K1 [script]
      132 GETTABLEKS                       R20 R20 K4 ["Parent"]
      134 GETTABLEKS                       R20 R20 K28 ["DialogProvider"]
      136 CALL                             R19 1 1
      137 GETIMPORT                        R20 K6 [require]
      139 GETIMPORT                        R21 K1 [script]
      141 GETTABLEKS                       R21 R21 K4 ["Parent"]
      143 GETTABLEKS                       R21 R21 K29 ["useDialogResponsiveSize"]
      145 CALL                             R20 1 1
      146 GETIMPORT                        R21 K6 [require]
      148 GETIMPORT                        R22 K1 [script]
      150 GETTABLEKS                       R22 R22 K4 ["Parent"]
      152 GETTABLEKS                       R22 R22 K30 ["useDialogSize"]
      154 CALL                             R21 1 1
      155 GETIMPORT                        R22 K6 [require]
      157 GETTABLEKS                       R23 R0 K15 ["Providers"]
      159 GETTABLEKS                       R23 R23 K31 ["Elevation"]
      161 GETTABLEKS                       R23 R23 K32 ["useElevation"]
      163 CALL                             R22 1 1
      164 GETIMPORT                        R23 K6 [require]
      166 GETTABLEKS                       R24 R0 K15 ["Providers"]
      168 GETTABLEKS                       R24 R24 K31 ["Elevation"]
      170 GETTABLEKS                       R24 R24 K33 ["ElevationProvider"]
      172 CALL                             R23 1 1
      173 GETTABLEKS                       R23 R23 K34 ["ElevationOwnerScope"]
      175 GETIMPORT                        R24 K6 [require]
      177 GETTABLEKS                       R25 R0 K18 ["Enums"]
      179 GETTABLEKS                       R25 R25 K35 ["ElevationLayer"]
      181 CALL                             R24 1 1
      182 DUPTABLE                         R25 K43 [{["size"], ["disablePortal"] = True, ["hasBackdrop"] = False, ["testId"] = "--foundation-dialog"}]
      183 GETTABLEKS                       R26 R10 K44 ["Medium"]
      185 SETTABLEKS                       R26 R25 K36 ["size"]
      187 GETTABLEKS                       R26 R6 K45 ["SHADOW_IMAGE"]
      189 GETTABLEKS                       R27 R6 K46 ["SHADOW_SIZE"]
      191 DUPCLOSURE                       R28 K47 [PROTO_2]
      192 CAPTURE                          VAL R2
      193 CAPTURE                          VAL R18
      194 CAPTURE                          VAL R13
      195 CAPTURE                          VAL R3
      196 CAPTURE                          VAL R21
      197 CAPTURE                          VAL R9
      198 CAPTURE                          VAL R22
      199 CAPTURE                          VAL R24
      200 CAPTURE                          VAL R20
      201 CAPTURE                          VAL R8
      202 CAPTURE                          VAL R12
      203 CAPTURE                          VAL R11
      204 CAPTURE                          VAL R7
      205 CAPTURE                          VAL R26
      206 CAPTURE                          VAL R27
      207 CAPTURE                          VAL R14
      208 CAPTURE                          VAL R16
      209 CAPTURE                          VAL R5
      210 CAPTURE                          VAL R23
      211 CAPTURE                          VAL R4
      212 DUPCLOSURE                       R29 K48 [PROTO_3]
      213 CAPTURE                          VAL R15
      214 CAPTURE                          VAL R25
      215 CAPTURE                          VAL R3
      216 CAPTURE                          VAL R19
      217 CAPTURE                          VAL R28
      218 CAPTURE                          VAL R2
      219 GETTABLEKS                       R30 R3 K49 ["memo"]
      221 GETTABLEKS                       R31 R3 K50 ["forwardRef"]
      223 MOVE                             R32 R29
      224 CALL                             R31 1 -1
      225 CALL                             R30 -1 -1
      226 RETURN                           R30 -1
