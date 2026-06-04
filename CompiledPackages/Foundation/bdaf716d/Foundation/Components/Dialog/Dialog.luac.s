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
        6 DUPTABLE                         R4 K2 [{"LayoutOrder"}]
        7 LOADN                            R5 1
        8 SETTABLEKS                       R5 R4 K1 ["LayoutOrder"]
       10 CALL                             R1 3 1
       11 GETUPVAL                         R2 1
       12 CALL                             R2 0 1
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R4 R2 K3 ["inner"]
       16 GETTABLEKS                       R4 R4 K4 ["maxWidth"]
       18 CALL                             R3 1 1
       19 GETUPVAL                         R4 3
       20 GETTABLEKS                       R4 R4 K5 ["useRef"]
       22 LOADNIL                          R5
       23 CALL                             R4 1 1
       24 GETUPVAL                         R5 4
       25 MOVE                             R6 R4
       26 CALL                             R5 1 1
       27 GETUPVAL                         R6 5
       28 CALL                             R6 0 1
       29 GETUPVAL                         R7 6
       30 GETUPVAL                         R8 7
       31 GETTABLEKS                       R8 R8 K6 ["Dialog"]
       33 DUPTABLE                         R9 K8 [{"stackAboveOwner"}]
       34 LOADB                            R10 0
       35 SETTABLEKS                       R10 R9 K7 ["stackAboveOwner"]
       37 CALL                             R7 2 1
       38 GETUPVAL                         R8 8
       39 CALL                             R8 0 1
       40 GETUPVAL                         R9 9
       41 GETTABLEKS                       R10 R1 K9 ["size"]
       43 CALL                             R9 1 0
       44 GETUPVAL                         R9 3
       45 GETTABLEKS                       R9 R9 K10 ["createElement"]
       47 GETUPVAL                         R10 10
       48 DUPTABLE                         R11 K14 [{"ZIndex", "tag", "testId"}]
       49 GETTABLEKS                       R12 R7 K15 ["zIndex"]
       51 SETTABLEKS                       R12 R11 K11 ["ZIndex"]
       53 LOADK                            R12 K16 ["size-full"]
       54 SETTABLEKS                       R12 R11 K12 ["tag"]
       56 LOADK                            R13 K17 ["%*--container"]
       57 GETTABLEKS                       R15 R1 K13 ["testId"]
       59 NAMECALL                         R13 R13 K18 ["format"]
       61 CALL                             R13 2 1
       62 MOVE                             R12 R13
       63 SETTABLEKS                       R12 R11 K13 ["testId"]
       65 DUPTABLE                         R12 K21 [{"Backdrop", "DialogShadowWrapper"}]
       66 GETTABLEKS                       R14 R1 K22 ["hasBackdrop"]
       68 JUMPIFNOT                        R14 ; [+48]
       69 GETUPVAL                         R13 3
       70 GETTABLEKS                       R13 R13 K10 ["createElement"]
       72 GETUPVAL                         R14 10
       73 DUPTABLE                         R15 K27 [{"tag", "Size", "stateLayer", "onActivated", "backgroundStyle", "ZIndex", "testId"}]
       74 LOADK                            R16 K28 ["position-center-center anchor-center-center"]
       75 SETTABLEKS                       R16 R15 K12 ["tag"]
       77 GETIMPORT                        R16 K31 [UDim2.fromScale]
       79 LOADN                            R17 2
       80 LOADN                            R18 2
       81 CALL                             R16 2 1
       82 SETTABLEKS                       R16 R15 K23 ["Size"]
       84 DUPTABLE                         R16 K33 [{"affordance"}]
       85 GETUPVAL                         R17 11
       86 GETTABLEKS                       R17 R17 K34 ["None"]
       88 SETTABLEKS                       R17 R16 K32 ["affordance"]
       90 SETTABLEKS                       R16 R15 K24 ["stateLayer"]
       92 NEWCLOSURE                       R16 P0
       93 CAPTURE                          VAL R1
       94 CAPTURE                          UPVAL U12
       95 SETTABLEKS                       R16 R15 K25 ["onActivated"]
       97 GETTABLEKS                       R16 R2 K35 ["backdrop"]
       99 GETTABLEKS                       R16 R16 K26 ["backgroundStyle"]
      101 SETTABLEKS                       R16 R15 K26 ["backgroundStyle"]
      103 LOADN                            R16 2
      104 SETTABLEKS                       R16 R15 K11 ["ZIndex"]
      106 LOADK                            R17 K36 ["%*--backdrop"]
      107 GETTABLEKS                       R19 R1 K13 ["testId"]
      109 NAMECALL                         R17 R17 K18 ["format"]
      111 CALL                             R17 2 1
      112 MOVE                             R16 R17
      113 SETTABLEKS                       R16 R15 K13 ["testId"]
      115 CALL                             R13 2 1
      116 JUMP                             ; [+1]
      117 LOADNIL                          R13
      118 SETTABLEKS                       R13 R12 K19 ["Backdrop"]
      120 GETUPVAL                         R13 3
      121 GETTABLEKS                       R13 R13 K10 ["createElement"]
      123 GETUPVAL                         R14 10
      124 DUPTABLE                         R15 K37 [{"tag", "ZIndex"}]
      125 GETTABLEKS                       R16 R2 K38 ["container"]
      127 GETTABLEKS                       R16 R16 K12 ["tag"]
      129 SETTABLEKS                       R16 R15 K12 ["tag"]
      131 LOADN                            R16 2
      132 SETTABLEKS                       R16 R15 K11 ["ZIndex"]
      134 DUPTABLE                         R16 K40 [{"Shadow"}]
      135 GETUPVAL                         R17 3
      136 GETTABLEKS                       R17 R17 K10 ["createElement"]
      138 GETUPVAL                         R18 13
      139 DUPTABLE                         R19 K44 [{"Image", "Size", "slice", "imageStyle", "testId"}]
      140 GETUPVAL                         R20 14
      141 SETTABLEKS                       R20 R19 K41 ["Image"]
      143 DUPCLOSURE                       R22 K45 [PROTO_1]
      144 CAPTURE                          UPVAL U15
      145 NAMECALL                         R20 R5 K46 ["map"]
      147 CALL                             R20 2 1
      148 SETTABLEKS                       R20 R19 K23 ["Size"]
      150 DUPTABLE                         R20 K49 [{"center", "scale"}]
      151 GETIMPORT                        R21 K52 [Rect.new]
      153 GETUPVAL                         R22 15
      154 GETUPVAL                         R23 15
      155 GETUPVAL                         R24 15
      156 GETUPVAL                         R25 15
      157 CALL                             R21 4 1
      158 SETTABLEKS                       R21 R20 K47 ["center"]
      160 LOADN                            R21 2
      161 SETTABLEKS                       R21 R20 K48 ["scale"]
      163 SETTABLEKS                       R20 R19 K42 ["slice"]
      165 GETTABLEKS                       R20 R2 K53 ["shadow"]
      167 GETTABLEKS                       R20 R20 K43 ["imageStyle"]
      169 SETTABLEKS                       R20 R19 K43 ["imageStyle"]
      171 LOADK                            R21 K54 ["%*--shadow"]
      172 GETTABLEKS                       R23 R1 K13 ["testId"]
      174 NAMECALL                         R21 R21 K18 ["format"]
      176 CALL                             R21 2 1
      177 MOVE                             R20 R21
      178 SETTABLEKS                       R20 R19 K13 ["testId"]
      180 CALL                             R17 2 1
      181 SETTABLEKS                       R17 R16 K39 ["Shadow"]
      183 CALL                             R13 3 1
      184 SETTABLEKS                       R13 R12 K20 ["DialogShadowWrapper"]
      186 DUPTABLE                         R13 K55 [{"Dialog"}]
      187 GETUPVAL                         R14 3
      188 GETTABLEKS                       R14 R14 K10 ["createElement"]
      190 GETUPVAL                         R15 10
      191 DUPTABLE                         R16 K37 [{"tag", "ZIndex"}]
      192 GETTABLEKS                       R17 R2 K38 ["container"]
      194 GETTABLEKS                       R17 R17 K12 ["tag"]
      196 SETTABLEKS                       R17 R16 K12 ["tag"]
      198 LOADN                            R17 3
      199 SETTABLEKS                       R17 R16 K11 ["ZIndex"]
      201 DUPTABLE                         R17 K59 [{"DialogFlexStart", "DialogInner", "DialogFlexEnd"}]
      202 GETUPVAL                         R18 3
      203 GETTABLEKS                       R18 R18 K10 ["createElement"]
      205 GETUPVAL                         R19 10
      206 DUPTABLE                         R20 K60 [{"tag", "LayoutOrder"}]
      207 LOADK                            R21 K61 ["fill"]
      208 SETTABLEKS                       R21 R20 K12 ["tag"]
      210 LOADN                            R21 0
      211 SETTABLEKS                       R21 R20 K1 ["LayoutOrder"]
      213 CALL                             R18 2 1
      214 SETTABLEKS                       R18 R17 K56 ["DialogFlexStart"]
      216 GETUPVAL                         R18 3
      217 GETTABLEKS                       R18 R18 K10 ["createElement"]
      219 GETUPVAL                         R19 10
      220 GETUPVAL                         R20 16
      221 MOVE                             R21 R1
      222 DUPTABLE                         R22 K66 [{"tag", "ref", "sizeConstraint", "stateLayer", "selection", "selectionGroup", "onActivated"}]
      223 GETTABLEKS                       R23 R2 K3 ["inner"]
      225 GETTABLEKS                       R23 R23 K12 ["tag"]
      227 SETTABLEKS                       R23 R22 K12 ["tag"]
      229 GETTABLEKS                       R23 R1 K67 ["forwardRef"]
      231 SETTABLEKS                       R23 R22 K62 ["ref"]
      233 DUPTABLE                         R23 K69 [{"MaxSize"}]
      234 GETIMPORT                        R24 K71 [Vector2.new]
      236 MOVE                             R25 R3
      237 LOADK                            R26 K72 [∞]
      238 CALL                             R24 2 1
      239 SETTABLEKS                       R24 R23 K68 ["MaxSize"]
      241 SETTABLEKS                       R23 R22 K63 ["sizeConstraint"]
      243 DUPTABLE                         R23 K33 [{"affordance"}]
      244 GETUPVAL                         R24 11
      245 GETTABLEKS                       R24 R24 K34 ["None"]
      247 SETTABLEKS                       R24 R23 K32 ["affordance"]
      249 SETTABLEKS                       R23 R22 K24 ["stateLayer"]
      251 GETUPVAL                         R23 17
      252 GETTABLEKS                       R23 R23 K73 ["nonSelectable"]
      254 SETTABLEKS                       R23 R22 K64 ["selection"]
      256 GETUPVAL                         R23 17
      257 GETTABLEKS                       R23 R23 K74 ["isolatedSelectionGroup"]
      259 SETTABLEKS                       R23 R22 K65 ["selectionGroup"]
      261 GETUPVAL                         R23 0
      262 GETTABLEKS                       R23 R23 K75 ["noop"]
      264 SETTABLEKS                       R23 R22 K25 ["onActivated"]
      266 CALL                             R20 2 1
      267 DUPTABLE                         R21 K78 [{"CloseAffordance", "DialogBody"}]
      268 GETTABLEKS                       R23 R1 K79 ["onClose"]
      270 JUMPIFNOT                        R23 ; [+54]
      271 GETUPVAL                         R22 3
      272 GETTABLEKS                       R22 R22 K10 ["createElement"]
      274 GETUPVAL                         R23 18
      275 DUPTABLE                         R24 K83 [{"onActivated", "ref", "NextSelectionDown", "Position", "AnchorPoint", "ZIndex", "testId"}]
      276 GETTABLEKS                       R25 R1 K79 ["onClose"]
      278 SETTABLEKS                       R25 R24 K25 ["onActivated"]
      280 GETTABLEKS                       R25 R8 K84 ["closeAffordanceRef"]
      282 SETTABLEKS                       R25 R24 K62 ["ref"]
      284 GETTABLEKS                       R25 R8 K85 ["contentStartRef"]
      286 SETTABLEKS                       R25 R24 K80 ["NextSelectionDown"]
      288 GETIMPORT                        R25 K86 [UDim2.new]
      290 LOADN                            R26 1
      291 GETTABLEKS                       R28 R2 K87 ["closeAffordance"]
      293 GETTABLEKS                       R28 R28 K88 ["offset"]
      295 MINUS                            R27 R28
      296 LOADN                            R28 0
      297 GETTABLEKS                       R29 R2 K87 ["closeAffordance"]
      299 GETTABLEKS                       R29 R29 K88 ["offset"]
      301 CALL                             R25 4 1
      302 SETTABLEKS                       R25 R24 K81 ["Position"]
      304 GETIMPORT                        R25 K71 [Vector2.new]
      306 LOADN                            R26 1
      307 LOADN                            R27 0
      308 CALL                             R25 2 1
      309 SETTABLEKS                       R25 R24 K82 ["AnchorPoint"]
      311 LOADN                            R25 2
      312 SETTABLEKS                       R25 R24 K11 ["ZIndex"]
      314 LOADK                            R26 K89 ["%*--close-affordance"]
      315 GETTABLEKS                       R28 R1 K13 ["testId"]
      317 NAMECALL                         R26 R26 K18 ["format"]
      319 CALL                             R26 2 1
      320 MOVE                             R25 R26
      321 SETTABLEKS                       R25 R24 K13 ["testId"]
      323 CALL                             R22 2 1
      324 JUMP                             ; [+1]
      325 LOADNIL                          R22
      326 SETTABLEKS                       R22 R21 K76 ["CloseAffordance"]
      328 GETUPVAL                         R22 3
      329 GETTABLEKS                       R22 R22 K10 ["createElement"]
      331 GETUPVAL                         R23 10
      332 DUPTABLE                         R24 K90 [{"tag", "ref", "testId"}]
      333 GETTABLEKS                       R25 R2 K91 ["body"]
      335 GETTABLEKS                       R25 R25 K12 ["tag"]
      337 SETTABLEKS                       R25 R24 K12 ["tag"]
      339 SETTABLEKS                       R4 R24 K62 ["ref"]
      341 LOADK                            R26 K92 ["%*--body"]
      342 GETTABLEKS                       R28 R1 K13 ["testId"]
      344 NAMECALL                         R26 R26 K18 ["format"]
      346 CALL                             R26 2 1
      347 MOVE                             R25 R26
      348 SETTABLEKS                       R25 R24 K13 ["testId"]
      350 GETUPVAL                         R25 3
      351 GETTABLEKS                       R25 R25 K10 ["createElement"]
      353 GETUPVAL                         R26 19
      354 DUPTABLE                         R27 K94 [{"owner"}]
      355 SETTABLEKS                       R7 R27 K93 ["owner"]
      357 GETTABLEKS                       R28 R1 K95 ["children"]
      359 CALL                             R25 3 -1
      360 CALL                             R22 -1 1
      361 SETTABLEKS                       R22 R21 K77 ["DialogBody"]
      363 CALL                             R18 3 1
      364 SETTABLEKS                       R18 R17 K57 ["DialogInner"]
      366 GETUPVAL                         R18 3
      367 GETTABLEKS                       R18 R18 K10 ["createElement"]
      369 GETUPVAL                         R19 10
      370 DUPTABLE                         R20 K60 [{"tag", "LayoutOrder"}]
      371 LOADK                            R21 K61 ["fill"]
      372 SETTABLEKS                       R21 R20 K12 ["tag"]
      374 LOADN                            R21 2
      375 SETTABLEKS                       R21 R20 K1 ["LayoutOrder"]
      377 CALL                             R18 2 1
      378 SETTABLEKS                       R18 R17 K58 ["DialogFlexEnd"]
      380 CALL                             R14 3 1
      381 SETTABLEKS                       R14 R13 K6 ["Dialog"]
      383 CALL                             R9 4 1
      384 GETTABLEKS                       R10 R1 K96 ["disablePortal"]
      386 JUMPIF                           R10 ; [+2]
      387 JUMPIFNOTEQKNIL                  R6 ; [+2]
      389 RETURN                           R9 1
      390 GETUPVAL                         R10 20
      391 GETTABLEKS                       R10 R10 K97 ["createPortal"]
      393 MOVE                             R11 R9
      394 MOVE                             R12 R6
      395 CALL                             R10 2 -1
      396 RETURN                           R10 -1

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
      191 DUPTABLE                         R26 K41 [{"size", "disablePortal", "hasBackdrop", "testId"}]
      192 GETTABLEKS                       R27 R10 K42 ["Medium"]
      194 SETTABLEKS                       R27 R26 K37 ["size"]
      196 LOADB                            R27 1
      197 SETTABLEKS                       R27 R26 K38 ["disablePortal"]
      199 LOADB                            R27 0
      200 SETTABLEKS                       R27 R26 K39 ["hasBackdrop"]
      202 LOADK                            R27 K43 ["--foundation-dialog"]
      203 SETTABLEKS                       R27 R26 K40 ["testId"]
      205 GETTABLEKS                       R27 R6 K44 ["SHADOW_IMAGE"]
      207 GETTABLEKS                       R28 R6 K45 ["SHADOW_SIZE"]
      209 DUPCLOSURE                       R29 K46 [PROTO_2]
      210 CAPTURE                          VAL R2
      211 CAPTURE                          VAL R18
      212 CAPTURE                          VAL R13
      213 CAPTURE                          VAL R3
      214 CAPTURE                          VAL R22
      215 CAPTURE                          VAL R9
      216 CAPTURE                          VAL R23
      217 CAPTURE                          VAL R25
      218 CAPTURE                          VAL R20
      219 CAPTURE                          VAL R21
      220 CAPTURE                          VAL R8
      221 CAPTURE                          VAL R12
      222 CAPTURE                          VAL R11
      223 CAPTURE                          VAL R7
      224 CAPTURE                          VAL R27
      225 CAPTURE                          VAL R28
      226 CAPTURE                          VAL R14
      227 CAPTURE                          VAL R16
      228 CAPTURE                          VAL R5
      229 CAPTURE                          VAL R24
      230 CAPTURE                          VAL R4
      231 DUPCLOSURE                       R30 K47 [PROTO_3]
      232 CAPTURE                          VAL R15
      233 CAPTURE                          VAL R26
      234 CAPTURE                          VAL R3
      235 CAPTURE                          VAL R19
      236 CAPTURE                          VAL R29
      237 CAPTURE                          VAL R2
      238 GETTABLEKS                       R31 R3 K48 ["memo"]
      240 GETTABLEKS                       R32 R3 K49 ["forwardRef"]
      242 MOVE                             R33 R30
      243 CALL                             R32 1 -1
      244 CALL                             R31 -1 -1
      245 RETURN                           R31 -1
