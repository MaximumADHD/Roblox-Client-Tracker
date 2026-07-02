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
       33 CALL                             R8 0 1
       34 GETUPVAL                         R9 9
       35 GETTABLEKS                       R10 R1 K11 ["size"]
       37 CALL                             R9 1 0
       38 GETUPVAL                         R9 3
       39 GETTABLEKS                       R9 R9 K12 ["createElement"]
       41 GETUPVAL                         R10 10
       42 DUPTABLE                         R11 K17 [{["ZIndex"], ["tag"] = "size-full", ["testId"]}]
       43 GETTABLEKS                       R12 R7 K18 ["zIndex"]
       45 SETTABLEKS                       R12 R11 K13 ["ZIndex"]
       47 LOADK                            R13 K19 ["%*--container"]
       48 GETTABLEKS                       R15 R1 K16 ["testId"]
       50 NAMECALL                         R13 R13 K20 ["format"]
       52 CALL                             R13 2 1
       53 MOVE                             R12 R13
       54 SETTABLEKS                       R12 R11 K16 ["testId"]
       56 DUPTABLE                         R12 K23 [{"Backdrop", "DialogShadowWrapper"}]
       57 GETTABLEKS                       R14 R1 K24 ["hasBackdrop"]
       59 JUMPIFNOT                        R14 ; [+42]
       60 GETUPVAL                         R13 3
       61 GETTABLEKS                       R13 R13 K12 ["createElement"]
       63 GETUPVAL                         R14 10
       64 DUPTABLE                         R15 K31 [{["tag"] = "position-center-center anchor-center-center", ["Size"], ["stateLayer"], ["onActivated"], ["backgroundStyle"], ["ZIndex"] = 2, ["testId"]}]
       65 GETIMPORT                        R16 K34 [UDim2.fromScale]
       67 LOADN                            R17 2
       68 LOADN                            R18 2
       69 CALL                             R16 2 1
       70 SETTABLEKS                       R16 R15 K26 ["Size"]
       72 DUPTABLE                         R16 K36 [{"affordance"}]
       73 GETUPVAL                         R17 11
       74 GETTABLEKS                       R17 R17 K37 ["None"]
       76 SETTABLEKS                       R17 R16 K35 ["affordance"]
       78 SETTABLEKS                       R16 R15 K27 ["stateLayer"]
       80 NEWCLOSURE                       R16 P0
       81 CAPTURE                          VAL R1
       82 CAPTURE                          UPVAL U12
       83 SETTABLEKS                       R16 R15 K28 ["onActivated"]
       85 GETTABLEKS                       R16 R2 K38 ["backdrop"]
       87 GETTABLEKS                       R16 R16 K29 ["backgroundStyle"]
       89 SETTABLEKS                       R16 R15 K29 ["backgroundStyle"]
       91 LOADK                            R17 K39 ["%*--backdrop"]
       92 GETTABLEKS                       R19 R1 K16 ["testId"]
       94 NAMECALL                         R17 R17 K20 ["format"]
       96 CALL                             R17 2 1
       97 MOVE                             R16 R17
       98 SETTABLEKS                       R16 R15 K16 ["testId"]
      100 CALL                             R13 2 1
      101 JUMP                             ; [+1]
      102 LOADNIL                          R13
      103 SETTABLEKS                       R13 R12 K21 ["Backdrop"]
      105 GETUPVAL                         R13 3
      106 GETTABLEKS                       R13 R13 K12 ["createElement"]
      108 GETUPVAL                         R14 10
      109 DUPTABLE                         R15 K40 [{["tag"], ["ZIndex"] = 2}]
      110 GETTABLEKS                       R16 R2 K41 ["container"]
      112 GETTABLEKS                       R16 R16 K14 ["tag"]
      114 SETTABLEKS                       R16 R15 K14 ["tag"]
      116 DUPTABLE                         R16 K43 [{"Shadow"}]
      117 GETUPVAL                         R17 3
      118 GETTABLEKS                       R17 R17 K12 ["createElement"]
      120 GETUPVAL                         R18 13
      121 DUPTABLE                         R19 K47 [{"Image", "Size", "slice", "imageStyle", "testId"}]
      122 GETUPVAL                         R20 14
      123 SETTABLEKS                       R20 R19 K44 ["Image"]
      125 DUPCLOSURE                       R22 K48 [PROTO_1]
      126 CAPTURE                          UPVAL U15
      127 NAMECALL                         R20 R5 K49 ["map"]
      129 CALL                             R20 2 1
      130 SETTABLEKS                       R20 R19 K26 ["Size"]
      132 DUPTABLE                         R20 K52 [{["center"], ["scale"] = 2}]
      133 GETIMPORT                        R21 K55 [Rect.new]
      135 GETUPVAL                         R22 15
      136 GETUPVAL                         R23 15
      137 GETUPVAL                         R24 15
      138 GETUPVAL                         R25 15
      139 CALL                             R21 4 1
      140 SETTABLEKS                       R21 R20 K50 ["center"]
      142 SETTABLEKS                       R20 R19 K45 ["slice"]
      144 GETTABLEKS                       R20 R2 K56 ["shadow"]
      146 GETTABLEKS                       R20 R20 K46 ["imageStyle"]
      148 SETTABLEKS                       R20 R19 K46 ["imageStyle"]
      150 LOADK                            R21 K57 ["%*--shadow"]
      151 GETTABLEKS                       R23 R1 K16 ["testId"]
      153 NAMECALL                         R21 R21 K20 ["format"]
      155 CALL                             R21 2 1
      156 MOVE                             R20 R21
      157 SETTABLEKS                       R20 R19 K16 ["testId"]
      159 CALL                             R17 2 1
      160 SETTABLEKS                       R17 R16 K42 ["Shadow"]
      162 CALL                             R13 3 1
      163 SETTABLEKS                       R13 R12 K22 ["DialogShadowWrapper"]
      165 DUPTABLE                         R13 K58 [{"Dialog"}]
      166 GETUPVAL                         R14 3
      167 GETTABLEKS                       R14 R14 K12 ["createElement"]
      169 GETUPVAL                         R15 10
      170 DUPTABLE                         R16 K60 [{["tag"], ["ZIndex"] = 3}]
      171 GETTABLEKS                       R17 R2 K41 ["container"]
      173 GETTABLEKS                       R17 R17 K14 ["tag"]
      175 SETTABLEKS                       R17 R16 K14 ["tag"]
      177 DUPTABLE                         R17 K64 [{"DialogFlexStart", "DialogInner", "DialogFlexEnd"}]
      178 GETUPVAL                         R18 3
      179 GETTABLEKS                       R18 R18 K12 ["createElement"]
      181 GETUPVAL                         R19 10
      182 DUPTABLE                         R20 K67 [{["tag"] = "fill", ["LayoutOrder"] = 0}]
      183 CALL                             R18 2 1
      184 SETTABLEKS                       R18 R17 K61 ["DialogFlexStart"]
      186 GETUPVAL                         R18 3
      187 GETTABLEKS                       R18 R18 K12 ["createElement"]
      189 GETUPVAL                         R19 10
      190 GETUPVAL                         R20 16
      191 MOVE                             R21 R1
      192 DUPTABLE                         R22 K72 [{"tag", "ref", "sizeConstraint", "stateLayer", "selection", "selectionGroup", "onActivated"}]
      193 GETTABLEKS                       R23 R2 K4 ["inner"]
      195 GETTABLEKS                       R23 R23 K14 ["tag"]
      197 SETTABLEKS                       R23 R22 K14 ["tag"]
      199 GETTABLEKS                       R23 R1 K73 ["forwardRef"]
      201 SETTABLEKS                       R23 R22 K68 ["ref"]
      203 DUPTABLE                         R23 K75 [{"MaxSize"}]
      204 GETIMPORT                        R24 K77 [Vector2.new]
      206 MOVE                             R25 R3
      207 LOADK                            R26 K78 [∞]
      208 CALL                             R24 2 1
      209 SETTABLEKS                       R24 R23 K74 ["MaxSize"]
      211 SETTABLEKS                       R23 R22 K69 ["sizeConstraint"]
      213 DUPTABLE                         R23 K36 [{"affordance"}]
      214 GETUPVAL                         R24 11
      215 GETTABLEKS                       R24 R24 K37 ["None"]
      217 SETTABLEKS                       R24 R23 K35 ["affordance"]
      219 SETTABLEKS                       R23 R22 K27 ["stateLayer"]
      221 GETUPVAL                         R23 17
      222 GETTABLEKS                       R23 R23 K79 ["nonSelectable"]
      224 SETTABLEKS                       R23 R22 K70 ["selection"]
      226 GETUPVAL                         R23 17
      227 GETTABLEKS                       R23 R23 K80 ["isolatedSelectionGroup"]
      229 SETTABLEKS                       R23 R22 K71 ["selectionGroup"]
      231 GETUPVAL                         R23 0
      232 GETTABLEKS                       R23 R23 K81 ["noop"]
      234 SETTABLEKS                       R23 R22 K28 ["onActivated"]
      236 CALL                             R20 2 1
      237 DUPTABLE                         R21 K84 [{"CloseAffordance", "DialogBody"}]
      238 GETTABLEKS                       R23 R1 K85 ["onClose"]
      240 JUMPIFNOT                        R23 ; [+51]
      241 GETUPVAL                         R22 3
      242 GETTABLEKS                       R22 R22 K12 ["createElement"]
      244 GETUPVAL                         R23 18
      245 DUPTABLE                         R24 K89 [{["onActivated"], ["ref"], ["NextSelectionDown"], ["Position"], ["AnchorPoint"], ["ZIndex"] = 2, ["testId"]}]
      246 GETTABLEKS                       R25 R1 K85 ["onClose"]
      248 SETTABLEKS                       R25 R24 K28 ["onActivated"]
      250 GETTABLEKS                       R25 R8 K90 ["closeAffordanceRef"]
      252 SETTABLEKS                       R25 R24 K68 ["ref"]
      254 GETTABLEKS                       R25 R8 K91 ["contentStartRef"]
      256 SETTABLEKS                       R25 R24 K86 ["NextSelectionDown"]
      258 GETIMPORT                        R25 K92 [UDim2.new]
      260 LOADN                            R26 1
      261 GETTABLEKS                       R28 R2 K93 ["closeAffordance"]
      263 GETTABLEKS                       R28 R28 K94 ["offset"]
      265 MINUS                            R27 R28
      266 LOADN                            R28 0
      267 GETTABLEKS                       R29 R2 K93 ["closeAffordance"]
      269 GETTABLEKS                       R29 R29 K94 ["offset"]
      271 CALL                             R25 4 1
      272 SETTABLEKS                       R25 R24 K87 ["Position"]
      274 GETIMPORT                        R25 K77 [Vector2.new]
      276 LOADN                            R26 1
      277 LOADN                            R27 0
      278 CALL                             R25 2 1
      279 SETTABLEKS                       R25 R24 K88 ["AnchorPoint"]
      281 LOADK                            R26 K95 ["%*--close-affordance"]
      282 GETTABLEKS                       R28 R1 K16 ["testId"]
      284 NAMECALL                         R26 R26 K20 ["format"]
      286 CALL                             R26 2 1
      287 MOVE                             R25 R26
      288 SETTABLEKS                       R25 R24 K16 ["testId"]
      290 CALL                             R22 2 1
      291 JUMP                             ; [+1]
      292 LOADNIL                          R22
      293 SETTABLEKS                       R22 R21 K82 ["CloseAffordance"]
      295 GETUPVAL                         R22 3
      296 GETTABLEKS                       R22 R22 K12 ["createElement"]
      298 GETUPVAL                         R23 10
      299 DUPTABLE                         R24 K96 [{"tag", "ref", "testId"}]
      300 GETTABLEKS                       R25 R2 K97 ["body"]
      302 GETTABLEKS                       R25 R25 K14 ["tag"]
      304 SETTABLEKS                       R25 R24 K14 ["tag"]
      306 SETTABLEKS                       R4 R24 K68 ["ref"]
      308 LOADK                            R26 K98 ["%*--body"]
      309 GETTABLEKS                       R28 R1 K16 ["testId"]
      311 NAMECALL                         R26 R26 K20 ["format"]
      313 CALL                             R26 2 1
      314 MOVE                             R25 R26
      315 SETTABLEKS                       R25 R24 K16 ["testId"]
      317 GETUPVAL                         R25 3
      318 GETTABLEKS                       R25 R25 K12 ["createElement"]
      320 GETUPVAL                         R26 19
      321 DUPTABLE                         R27 K100 [{"owner"}]
      322 SETTABLEKS                       R7 R27 K99 ["owner"]
      324 GETTABLEKS                       R28 R1 K101 ["children"]
      326 CALL                             R25 3 -1
      327 CALL                             R22 -1 1
      328 SETTABLEKS                       R22 R21 K83 ["DialogBody"]
      330 CALL                             R18 3 1
      331 SETTABLEKS                       R18 R17 K62 ["DialogInner"]
      333 GETUPVAL                         R18 3
      334 GETTABLEKS                       R18 R18 K12 ["createElement"]
      336 GETUPVAL                         R19 10
      337 DUPTABLE                         R20 K102 [{["tag"] = "fill", ["LayoutOrder"] = 2}]
      338 CALL                             R18 2 1
      339 SETTABLEKS                       R18 R17 K63 ["DialogFlexEnd"]
      341 CALL                             R14 3 1
      342 SETTABLEKS                       R14 R13 K7 ["Dialog"]
      344 CALL                             R9 4 1
      345 GETTABLEKS                       R10 R1 K103 ["disablePortal"]
      347 JUMPIF                           R10 ; [+2]
      348 JUMPIFNOTEQKNIL                  R6 ; [+2]
      350 RETURN                           R9 1
      351 GETUPVAL                         R10 20
      352 GETTABLEKS                       R10 R10 K104 ["createPortal"]
      354 MOVE                             R11 R9
      355 MOVE                             R12 R6
      356 CALL                             R10 2 -1
      357 RETURN                           R10 -1

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
      143 GETTABLEKS                       R21 R21 K29 ["useDialog"]
      145 CALL                             R20 1 1
      146 GETIMPORT                        R21 K6 [require]
      148 GETIMPORT                        R22 K1 [script]
      150 GETTABLEKS                       R22 R22 K4 ["Parent"]
      152 GETTABLEKS                       R22 R22 K30 ["useDialogResponsiveSize"]
      154 CALL                             R21 1 1
      155 GETIMPORT                        R22 K6 [require]
      157 GETIMPORT                        R23 K1 [script]
      159 GETTABLEKS                       R23 R23 K4 ["Parent"]
      161 GETTABLEKS                       R23 R23 K31 ["useDialogSize"]
      163 CALL                             R22 1 1
      164 GETIMPORT                        R23 K6 [require]
      166 GETTABLEKS                       R24 R0 K15 ["Providers"]
      168 GETTABLEKS                       R24 R24 K32 ["Elevation"]
      170 GETTABLEKS                       R24 R24 K33 ["useElevation"]
      172 CALL                             R23 1 1
      173 GETIMPORT                        R24 K6 [require]
      175 GETTABLEKS                       R25 R0 K15 ["Providers"]
      177 GETTABLEKS                       R25 R25 K32 ["Elevation"]
      179 GETTABLEKS                       R25 R25 K34 ["ElevationProvider"]
      181 CALL                             R24 1 1
      182 GETTABLEKS                       R24 R24 K35 ["ElevationOwnerScope"]
      184 GETIMPORT                        R25 K6 [require]
      186 GETTABLEKS                       R26 R0 K18 ["Enums"]
      188 GETTABLEKS                       R26 R26 K36 ["ElevationLayer"]
      190 CALL                             R25 1 1
      191 DUPTABLE                         R26 K44 [{["size"], ["disablePortal"] = True, ["hasBackdrop"] = False, ["testId"] = "--foundation-dialog"}]
      192 GETTABLEKS                       R27 R10 K45 ["Medium"]
      194 SETTABLEKS                       R27 R26 K37 ["size"]
      196 GETTABLEKS                       R27 R6 K46 ["SHADOW_IMAGE"]
      198 GETTABLEKS                       R28 R6 K47 ["SHADOW_SIZE"]
      200 DUPCLOSURE                       R29 K48 [PROTO_2]
      201 CAPTURE                          VAL R2
      202 CAPTURE                          VAL R18
      203 CAPTURE                          VAL R13
      204 CAPTURE                          VAL R3
      205 CAPTURE                          VAL R22
      206 CAPTURE                          VAL R9
      207 CAPTURE                          VAL R23
      208 CAPTURE                          VAL R25
      209 CAPTURE                          VAL R20
      210 CAPTURE                          VAL R21
      211 CAPTURE                          VAL R8
      212 CAPTURE                          VAL R12
      213 CAPTURE                          VAL R11
      214 CAPTURE                          VAL R7
      215 CAPTURE                          VAL R27
      216 CAPTURE                          VAL R28
      217 CAPTURE                          VAL R14
      218 CAPTURE                          VAL R16
      219 CAPTURE                          VAL R5
      220 CAPTURE                          VAL R24
      221 CAPTURE                          VAL R4
      222 DUPCLOSURE                       R30 K49 [PROTO_3]
      223 CAPTURE                          VAL R15
      224 CAPTURE                          VAL R26
      225 CAPTURE                          VAL R3
      226 CAPTURE                          VAL R19
      227 CAPTURE                          VAL R29
      228 CAPTURE                          VAL R2
      229 GETTABLEKS                       R31 R3 K50 ["memo"]
      231 GETTABLEKS                       R32 R3 K51 ["forwardRef"]
      233 MOVE                             R33 R30
      234 CALL                             R32 1 -1
      235 CALL                             R31 -1 -1
      236 RETURN                           R31 -1
