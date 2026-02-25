PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onClose"]
        3 JUMPIFNOT                        R0 ; [+7]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K0 ["onClose"]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R1 R2 K1 ["BackdropClick"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["assign"]
        3 NEWTABLE                         R2 0 0
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K2 [{"LayoutOrder"}]
        7 LOADN                            R5 1
        8 SETTABLEKS                       R5 R4 K1 ["LayoutOrder"]
       10 CALL                             R1 3 1
       11 GETUPVAL                         R2 1
       12 CALL                             R2 0 1
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R5 R2 K3 ["inner"]
       16 GETTABLEKS                       R4 R5 K4 ["maxWidth"]
       18 CALL                             R3 1 1
       19 GETUPVAL                         R5 3
       20 GETTABLEKS                       R4 R5 K5 ["useRef"]
       22 LOADNIL                          R5
       23 CALL                             R4 1 1
       24 GETUPVAL                         R5 4
       25 MOVE                             R6 R4
       26 CALL                             R5 1 1
       27 GETUPVAL                         R6 5
       28 CALL                             R6 0 1
       29 GETUPVAL                         R7 6
       30 GETUPVAL                         R9 7
       31 GETTABLEKS                       R8 R9 K6 ["Dialog"]
       33 DUPTABLE                         R9 K8 [{"stackAboveOwner"}]
       34 LOADB                            R10 0
       35 SETTABLEKS                       R10 R9 K7 ["stackAboveOwner"]
       37 CALL                             R7 2 1
       38 GETUPVAL                         R8 8
       39 GETTABLEKS                       R9 R1 K9 ["size"]
       41 CALL                             R8 1 0
       42 GETUPVAL                         R9 3
       43 GETTABLEKS                       R8 R9 K10 ["createElement"]
       45 GETUPVAL                         R9 9
       46 DUPTABLE                         R10 K14 [{"ZIndex", "tag", "testId"}]
       47 GETTABLEKS                       R11 R7 K15 ["zIndex"]
       49 SETTABLEKS                       R11 R10 K11 ["ZIndex"]
       51 LOADK                            R11 K16 ["size-full"]
       52 SETTABLEKS                       R11 R10 K12 ["tag"]
       54 LOADK                            R12 K17 ["%*--container"]
       55 GETTABLEKS                       R14 R1 K13 ["testId"]
       57 NAMECALL                         R12 R12 K18 ["format"]
       59 CALL                             R12 2 1
       60 MOVE                             R11 R12
       61 SETTABLEKS                       R11 R10 K13 ["testId"]
       63 DUPTABLE                         R11 K21 [{"Backdrop", "DialogShadowWrapper"}]
       64 GETTABLEKS                       R13 R1 K22 ["hasBackdrop"]
       66 JUMPIFNOT                        R13 ; [+48]
       67 GETUPVAL                         R13 3
       68 GETTABLEKS                       R12 R13 K10 ["createElement"]
       70 GETUPVAL                         R13 9
       71 DUPTABLE                         R14 K27 [{"tag", "Size", "stateLayer", "onActivated", "backgroundStyle", "ZIndex", "testId"}]
       72 LOADK                            R15 K28 ["position-center-center anchor-center-center"]
       73 SETTABLEKS                       R15 R14 K12 ["tag"]
       75 GETIMPORT                        R15 K31 [UDim2.fromScale]
       77 LOADN                            R16 2
       78 LOADN                            R17 2
       79 CALL                             R15 2 1
       80 SETTABLEKS                       R15 R14 K23 ["Size"]
       82 DUPTABLE                         R15 K33 [{"affordance"}]
       83 GETUPVAL                         R17 10
       84 GETTABLEKS                       R16 R17 K34 ["None"]
       86 SETTABLEKS                       R16 R15 K32 ["affordance"]
       88 SETTABLEKS                       R15 R14 K24 ["stateLayer"]
       90 NEWCLOSURE                       R15 P0
       91 CAPTURE                          VAL R1
       92 CAPTURE                          UPVAL U11
       93 SETTABLEKS                       R15 R14 K25 ["onActivated"]
       95 GETTABLEKS                       R16 R2 K35 ["backdrop"]
       97 GETTABLEKS                       R15 R16 K26 ["backgroundStyle"]
       99 SETTABLEKS                       R15 R14 K26 ["backgroundStyle"]
      101 LOADN                            R15 2
      102 SETTABLEKS                       R15 R14 K11 ["ZIndex"]
      104 LOADK                            R16 K36 ["%*--backdrop"]
      105 GETTABLEKS                       R18 R1 K13 ["testId"]
      107 NAMECALL                         R16 R16 K18 ["format"]
      109 CALL                             R16 2 1
      110 MOVE                             R15 R16
      111 SETTABLEKS                       R15 R14 K13 ["testId"]
      113 CALL                             R12 2 1
      114 JUMP                             ; [+1]
      115 LOADNIL                          R12
      116 SETTABLEKS                       R12 R11 K19 ["Backdrop"]
      118 GETUPVAL                         R13 3
      119 GETTABLEKS                       R12 R13 K10 ["createElement"]
      121 GETUPVAL                         R13 9
      122 DUPTABLE                         R14 K37 [{"tag", "ZIndex"}]
      123 GETTABLEKS                       R16 R2 K38 ["container"]
      125 GETTABLEKS                       R15 R16 K12 ["tag"]
      127 SETTABLEKS                       R15 R14 K12 ["tag"]
      129 LOADN                            R15 2
      130 SETTABLEKS                       R15 R14 K11 ["ZIndex"]
      132 DUPTABLE                         R15 K40 [{"Shadow"}]
      133 GETUPVAL                         R17 3
      134 GETTABLEKS                       R16 R17 K10 ["createElement"]
      136 GETUPVAL                         R17 12
      137 DUPTABLE                         R18 K44 [{"Image", "Size", "slice", "imageStyle", "testId"}]
      138 GETUPVAL                         R19 13
      139 SETTABLEKS                       R19 R18 K41 ["Image"]
      141 DUPCLOSURE                       R21 K45 [PROTO_1]
      142 CAPTURE                          UPVAL U14
      143 NAMECALL                         R19 R5 K46 ["map"]
      145 CALL                             R19 2 1
      146 SETTABLEKS                       R19 R18 K23 ["Size"]
      148 DUPTABLE                         R19 K49 [{"center", "scale"}]
      149 GETIMPORT                        R20 K52 [Rect.new]
      151 GETUPVAL                         R21 14
      152 GETUPVAL                         R22 14
      153 GETUPVAL                         R23 14
      154 GETUPVAL                         R24 14
      155 CALL                             R20 4 1
      156 SETTABLEKS                       R20 R19 K47 ["center"]
      158 LOADN                            R20 2
      159 SETTABLEKS                       R20 R19 K48 ["scale"]
      161 SETTABLEKS                       R19 R18 K42 ["slice"]
      163 GETTABLEKS                       R20 R2 K53 ["shadow"]
      165 GETTABLEKS                       R19 R20 K43 ["imageStyle"]
      167 SETTABLEKS                       R19 R18 K43 ["imageStyle"]
      169 LOADK                            R20 K54 ["%*--shadow"]
      170 GETTABLEKS                       R22 R1 K13 ["testId"]
      172 NAMECALL                         R20 R20 K18 ["format"]
      174 CALL                             R20 2 1
      175 MOVE                             R19 R20
      176 SETTABLEKS                       R19 R18 K13 ["testId"]
      178 CALL                             R16 2 1
      179 SETTABLEKS                       R16 R15 K39 ["Shadow"]
      181 CALL                             R12 3 1
      182 SETTABLEKS                       R12 R11 K20 ["DialogShadowWrapper"]
      184 DUPTABLE                         R12 K55 [{"Dialog"}]
      185 GETUPVAL                         R14 3
      186 GETTABLEKS                       R13 R14 K10 ["createElement"]
      188 GETUPVAL                         R14 9
      189 DUPTABLE                         R15 K37 [{"tag", "ZIndex"}]
      190 GETTABLEKS                       R17 R2 K38 ["container"]
      192 GETTABLEKS                       R16 R17 K12 ["tag"]
      194 SETTABLEKS                       R16 R15 K12 ["tag"]
      196 LOADN                            R16 3
      197 SETTABLEKS                       R16 R15 K11 ["ZIndex"]
      199 DUPTABLE                         R16 K59 [{"DialogFlexStart", "DialogInner", "DialogFlexEnd"}]
      200 GETUPVAL                         R18 3
      201 GETTABLEKS                       R17 R18 K10 ["createElement"]
      203 GETUPVAL                         R18 9
      204 DUPTABLE                         R19 K60 [{"tag", "LayoutOrder"}]
      205 LOADK                            R20 K61 ["fill"]
      206 SETTABLEKS                       R20 R19 K12 ["tag"]
      208 LOADN                            R20 0
      209 SETTABLEKS                       R20 R19 K1 ["LayoutOrder"]
      211 CALL                             R17 2 1
      212 SETTABLEKS                       R17 R16 K56 ["DialogFlexStart"]
      214 GETUPVAL                         R18 3
      215 GETTABLEKS                       R17 R18 K10 ["createElement"]
      217 GETUPVAL                         R18 9
      218 GETUPVAL                         R19 15
      219 MOVE                             R20 R1
      220 DUPTABLE                         R21 K66 [{"tag", "ref", "sizeConstraint", "stateLayer", "selection", "selectionGroup", "onActivated"}]
      221 GETTABLEKS                       R23 R2 K3 ["inner"]
      223 GETTABLEKS                       R22 R23 K12 ["tag"]
      225 SETTABLEKS                       R22 R21 K12 ["tag"]
      227 GETTABLEKS                       R22 R1 K67 ["forwardRef"]
      229 SETTABLEKS                       R22 R21 K62 ["ref"]
      231 DUPTABLE                         R22 K69 [{"MaxSize"}]
      232 GETIMPORT                        R23 K71 [Vector2.new]
      234 MOVE                             R24 R3
      235 LOADK                            R25 K72 [∞]
      236 CALL                             R23 2 1
      237 SETTABLEKS                       R23 R22 K68 ["MaxSize"]
      239 SETTABLEKS                       R22 R21 K63 ["sizeConstraint"]
      241 DUPTABLE                         R22 K33 [{"affordance"}]
      242 GETUPVAL                         R24 10
      243 GETTABLEKS                       R23 R24 K34 ["None"]
      245 SETTABLEKS                       R23 R22 K32 ["affordance"]
      247 SETTABLEKS                       R22 R21 K24 ["stateLayer"]
      249 GETUPVAL                         R23 16
      250 GETTABLEKS                       R22 R23 K73 ["nonSelectable"]
      252 SETTABLEKS                       R22 R21 K64 ["selection"]
      254 GETUPVAL                         R23 16
      255 GETTABLEKS                       R22 R23 K74 ["isolatedSelectionGroup"]
      257 SETTABLEKS                       R22 R21 K65 ["selectionGroup"]
      259 GETUPVAL                         R23 0
      260 GETTABLEKS                       R22 R23 K75 ["noop"]
      262 SETTABLEKS                       R22 R21 K25 ["onActivated"]
      264 CALL                             R19 2 1
      265 DUPTABLE                         R20 K78 [{"CloseAffordance", "DialogBody"}]
      266 GETTABLEKS                       R22 R1 K79 ["onClose"]
      268 JUMPIFNOT                        R22 ; [+46]
      269 GETUPVAL                         R22 3
      270 GETTABLEKS                       R21 R22 K10 ["createElement"]
      272 GETUPVAL                         R22 17
      273 DUPTABLE                         R23 K82 [{"onActivated", "Position", "AnchorPoint", "ZIndex", "testId"}]
      274 GETTABLEKS                       R24 R1 K79 ["onClose"]
      276 SETTABLEKS                       R24 R23 K25 ["onActivated"]
      278 GETIMPORT                        R24 K83 [UDim2.new]
      280 LOADN                            R25 1
      281 GETTABLEKS                       R28 R2 K84 ["closeAffordance"]
      283 GETTABLEKS                       R27 R28 K85 ["offset"]
      285 MINUS                            R26 R27
      286 LOADN                            R27 0
      287 GETTABLEKS                       R29 R2 K84 ["closeAffordance"]
      289 GETTABLEKS                       R28 R29 K85 ["offset"]
      291 CALL                             R24 4 1
      292 SETTABLEKS                       R24 R23 K80 ["Position"]
      294 GETIMPORT                        R24 K71 [Vector2.new]
      296 LOADN                            R25 1
      297 LOADN                            R26 0
      298 CALL                             R24 2 1
      299 SETTABLEKS                       R24 R23 K81 ["AnchorPoint"]
      301 LOADN                            R24 2
      302 SETTABLEKS                       R24 R23 K11 ["ZIndex"]
      304 LOADK                            R25 K86 ["%*--close-affordance"]
      305 GETTABLEKS                       R27 R1 K13 ["testId"]
      307 NAMECALL                         R25 R25 K18 ["format"]
      309 CALL                             R25 2 1
      310 MOVE                             R24 R25
      311 SETTABLEKS                       R24 R23 K13 ["testId"]
      313 CALL                             R21 2 1
      314 JUMP                             ; [+1]
      315 LOADNIL                          R21
      316 SETTABLEKS                       R21 R20 K76 ["CloseAffordance"]
      318 GETUPVAL                         R22 3
      319 GETTABLEKS                       R21 R22 K10 ["createElement"]
      321 GETUPVAL                         R22 9
      322 DUPTABLE                         R23 K87 [{"tag", "ref", "testId"}]
      323 GETTABLEKS                       R25 R2 K88 ["body"]
      325 GETTABLEKS                       R24 R25 K12 ["tag"]
      327 SETTABLEKS                       R24 R23 K12 ["tag"]
      329 SETTABLEKS                       R4 R23 K62 ["ref"]
      331 LOADK                            R25 K89 ["%*--body"]
      332 GETTABLEKS                       R27 R1 K13 ["testId"]
      334 NAMECALL                         R25 R25 K18 ["format"]
      336 CALL                             R25 2 1
      337 MOVE                             R24 R25
      338 SETTABLEKS                       R24 R23 K13 ["testId"]
      340 GETUPVAL                         R25 3
      341 GETTABLEKS                       R24 R25 K10 ["createElement"]
      343 GETUPVAL                         R25 18
      344 DUPTABLE                         R26 K91 [{"owner"}]
      345 SETTABLEKS                       R7 R26 K90 ["owner"]
      347 GETTABLEKS                       R27 R1 K92 ["children"]
      349 CALL                             R24 3 -1
      350 CALL                             R21 -1 1
      351 SETTABLEKS                       R21 R20 K77 ["DialogBody"]
      353 CALL                             R17 3 1
      354 SETTABLEKS                       R17 R16 K57 ["DialogInner"]
      356 GETUPVAL                         R18 3
      357 GETTABLEKS                       R17 R18 K10 ["createElement"]
      359 GETUPVAL                         R18 9
      360 DUPTABLE                         R19 K60 [{"tag", "LayoutOrder"}]
      361 LOADK                            R20 K61 ["fill"]
      362 SETTABLEKS                       R20 R19 K12 ["tag"]
      364 LOADN                            R20 2
      365 SETTABLEKS                       R20 R19 K1 ["LayoutOrder"]
      367 CALL                             R17 2 1
      368 SETTABLEKS                       R17 R16 K58 ["DialogFlexEnd"]
      370 CALL                             R13 3 1
      371 SETTABLEKS                       R13 R12 K6 ["Dialog"]
      373 CALL                             R8 4 1
      374 GETTABLEKS                       R9 R1 K93 ["disablePortal"]
      376 JUMPIF                           R9 ; [+2]
      377 JUMPIFNOTEQKNIL                  R6 ; [+2]
      379 RETURN                           R8 1
      380 GETUPVAL                         R10 19
      381 GETTABLEKS                       R9 R10 K94 ["createPortal"]
      383 MOVE                             R10 R8
      384 MOVE                             R11 R6
      385 CALL                             R9 2 -1
      386 RETURN                           R9 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R4 2
        5 GETTABLEKS                       R3 R4 K0 ["createElement"]
        7 GETUPVAL                         R4 3
        8 DUPTABLE                         R5 K4 [{"size", "responsiveSize", "testId"}]
        9 GETTABLEKS                       R6 R2 K1 ["size"]
       11 SETTABLEKS                       R6 R5 K1 ["size"]
       13 GETTABLEKS                       R6 R2 K1 ["size"]
       15 SETTABLEKS                       R6 R5 K2 ["responsiveSize"]
       17 GETTABLEKS                       R6 R2 K3 ["testId"]
       19 SETTABLEKS                       R6 R5 K3 ["testId"]
       21 DUPTABLE                         R6 K6 [{"Dialog"}]
       22 GETUPVAL                         R8 2
       23 GETTABLEKS                       R7 R8 K0 ["createElement"]
       25 GETUPVAL                         R8 4
       26 GETUPVAL                         R10 5
       27 GETTABLEKS                       R9 R10 K7 ["assign"]
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
       26 GETTABLEKS                       R7 R0 K10 ["Components"]
       28 GETTABLEKS                       R6 R7 K11 ["CloseAffordance"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K6 [require]
       33 GETTABLEKS                       R7 R0 K12 ["Constants"]
       35 CALL                             R6 1 1
       36 GETIMPORT                        R7 K6 [require]
       38 GETTABLEKS                       R9 R0 K10 ["Components"]
       40 GETTABLEKS                       R8 R9 K13 ["Image"]
       42 CALL                             R7 1 1
       43 GETIMPORT                        R8 K6 [require]
       45 GETTABLEKS                       R10 R0 K10 ["Components"]
       47 GETTABLEKS                       R9 R10 K14 ["View"]
       49 CALL                             R8 1 1
       50 GETIMPORT                        R9 K6 [require]
       52 GETTABLEKS                       R12 R0 K15 ["Providers"]
       54 GETTABLEKS                       R11 R12 K16 ["Overlay"]
       56 GETTABLEKS                       R10 R11 K17 ["useOverlay"]
       58 CALL                             R9 1 1
       59 GETIMPORT                        R10 K6 [require]
       61 GETTABLEKS                       R12 R0 K18 ["Enums"]
       63 GETTABLEKS                       R11 R12 K19 ["DialogSize"]
       65 CALL                             R10 1 1
       66 GETIMPORT                        R11 K6 [require]
       68 GETTABLEKS                       R13 R0 K18 ["Enums"]
       70 GETTABLEKS                       R12 R13 K20 ["OnCloseCallbackReason"]
       72 CALL                             R11 1 1
       73 GETIMPORT                        R12 K6 [require]
       75 GETTABLEKS                       R14 R0 K18 ["Enums"]
       77 GETTABLEKS                       R13 R14 K21 ["StateLayerAffordance"]
       79 CALL                             R12 1 1
       80 GETIMPORT                        R13 K6 [require]
       82 GETTABLEKS                       R15 R0 K22 ["Utility"]
       84 GETTABLEKS                       R14 R15 K23 ["useScaledValue"]
       86 CALL                             R13 1 1
       87 GETIMPORT                        R14 K6 [require]
       89 GETTABLEKS                       R16 R0 K22 ["Utility"]
       91 GETTABLEKS                       R15 R16 K24 ["withCommonProps"]
       93 CALL                             R14 1 1
       94 GETIMPORT                        R15 K6 [require]
       96 GETTABLEKS                       R17 R0 K22 ["Utility"]
       98 GETTABLEKS                       R16 R17 K25 ["withDefaults"]
      100 CALL                             R15 1 1
      101 GETIMPORT                        R16 K6 [require]
      103 GETIMPORT                        R19 K1 [script]
      105 GETTABLEKS                       R18 R19 K4 ["Parent"]
      107 GETTABLEKS                       R17 R18 K26 ["Types"]
      109 CALL                             R16 1 1
      110 GETIMPORT                        R17 K6 [require]
      112 GETTABLEKS                       R19 R0 K10 ["Components"]
      114 GETTABLEKS                       R18 R19 K26 ["Types"]
      116 CALL                             R17 1 1
      117 GETIMPORT                        R19 K6 [require]
      119 GETIMPORT                        R22 K1 [script]
      121 GETTABLEKS                       R21 R22 K4 ["Parent"]
      123 GETTABLEKS                       R20 R21 K27 ["useDialogVariants"]
      125 CALL                             R19 1 1
      126 GETTABLEKS                       R18 R19 K27 ["useDialogVariants"]
      128 GETIMPORT                        R19 K6 [require]
      130 GETIMPORT                        R22 K1 [script]
      132 GETTABLEKS                       R21 R22 K4 ["Parent"]
      134 GETTABLEKS                       R20 R21 K28 ["DialogProvider"]
      136 CALL                             R19 1 1
      137 GETIMPORT                        R20 K6 [require]
      139 GETIMPORT                        R23 K1 [script]
      141 GETTABLEKS                       R22 R23 K4 ["Parent"]
      143 GETTABLEKS                       R21 R22 K29 ["useDialogResponsiveSize"]
      145 CALL                             R20 1 1
      146 GETIMPORT                        R21 K6 [require]
      148 GETIMPORT                        R24 K1 [script]
      150 GETTABLEKS                       R23 R24 K4 ["Parent"]
      152 GETTABLEKS                       R22 R23 K30 ["useDialogSize"]
      154 CALL                             R21 1 1
      155 GETIMPORT                        R22 K6 [require]
      157 GETTABLEKS                       R25 R0 K15 ["Providers"]
      159 GETTABLEKS                       R24 R25 K31 ["Elevation"]
      161 GETTABLEKS                       R23 R24 K32 ["useElevation"]
      163 CALL                             R22 1 1
      164 GETIMPORT                        R24 K6 [require]
      166 GETTABLEKS                       R27 R0 K15 ["Providers"]
      168 GETTABLEKS                       R26 R27 K31 ["Elevation"]
      170 GETTABLEKS                       R25 R26 K33 ["ElevationProvider"]
      172 CALL                             R24 1 1
      173 GETTABLEKS                       R23 R24 K34 ["ElevationOwnerScope"]
      175 GETIMPORT                        R24 K6 [require]
      177 GETTABLEKS                       R26 R0 K18 ["Enums"]
      179 GETTABLEKS                       R25 R26 K35 ["ElevationLayer"]
      181 CALL                             R24 1 1
      182 DUPTABLE                         R25 K40 [{"size", "disablePortal", "hasBackdrop", "testId"}]
      183 GETTABLEKS                       R26 R10 K41 ["Medium"]
      185 SETTABLEKS                       R26 R25 K36 ["size"]
      187 LOADB                            R26 1
      188 SETTABLEKS                       R26 R25 K37 ["disablePortal"]
      190 LOADB                            R26 0
      191 SETTABLEKS                       R26 R25 K38 ["hasBackdrop"]
      193 LOADK                            R26 K42 ["--foundation-dialog"]
      194 SETTABLEKS                       R26 R25 K39 ["testId"]
      196 GETTABLEKS                       R26 R6 K43 ["SHADOW_IMAGE"]
      198 GETTABLEKS                       R27 R6 K44 ["SHADOW_SIZE"]
      200 DUPCLOSURE                       R28 K45 [PROTO_2]
      201 CAPTURE                          VAL R2
      202 CAPTURE                          VAL R18
      203 CAPTURE                          VAL R13
      204 CAPTURE                          VAL R3
      205 CAPTURE                          VAL R21
      206 CAPTURE                          VAL R9
      207 CAPTURE                          VAL R22
      208 CAPTURE                          VAL R24
      209 CAPTURE                          VAL R20
      210 CAPTURE                          VAL R8
      211 CAPTURE                          VAL R12
      212 CAPTURE                          VAL R11
      213 CAPTURE                          VAL R7
      214 CAPTURE                          VAL R26
      215 CAPTURE                          VAL R27
      216 CAPTURE                          VAL R14
      217 CAPTURE                          VAL R16
      218 CAPTURE                          VAL R5
      219 CAPTURE                          VAL R23
      220 CAPTURE                          VAL R4
      221 DUPCLOSURE                       R29 K46 [PROTO_3]
      222 CAPTURE                          VAL R15
      223 CAPTURE                          VAL R25
      224 CAPTURE                          VAL R3
      225 CAPTURE                          VAL R19
      226 CAPTURE                          VAL R28
      227 CAPTURE                          VAL R2
      228 GETTABLEKS                       R30 R3 K47 ["memo"]
      230 GETTABLEKS                       R31 R3 K48 ["forwardRef"]
      232 MOVE                             R32 R29
      233 CALL                             R31 1 -1
      234 CALL                             R30 -1 -1
      235 RETURN                           R30 -1
