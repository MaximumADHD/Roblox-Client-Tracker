PROTO_0:
        0 GETIMPORT                        R2 K2 [Vector2.new]
        2 MOVE                             R3 R0
        3 MOVE                             R4 R1
        4 CALL                             R2 2 1
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K3 ["ShowContextMenu"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R4 R5 K4 ["current"]
       11 GETUPVAL                         R6 0
       12 GETTABLEKS                       R5 R6 K5 ["ControlIndices"]
       14 MOVE                             R6 R2
       15 CALL                             R3 3 0
       16 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R2 K2 [Vector2.new]
        2 MOVE                             R3 R0
        3 MOVE                             R4 R1
        4 CALL                             R2 2 1
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K3 ["ShowContextMenu"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R4 R5 K4 ["current"]
       11 GETUPVAL                         R6 0
       12 GETTABLEKS                       R5 R6 K5 ["ControlIndices"]
       14 MOVE                             R6 R2
       15 CALL                             R3 3 0
       16 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFEQKNIL                     R0 ; [+10]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R0 R1 K0 ["current"]
        8 JUMPIFEQKNIL                     R0 ; [+5]
       10 GETUPVAL                         R1 2
       11 GETTABLEKS                       R0 R1 K1 ["ShowContextMenu"]
       13 JUMPIF                           R0 ; [+1]
       14 RETURN                           R0 0
       15 GETUPVAL                         R2 1
       16 GETTABLEKS                       R1 R2 K0 ["current"]
       18 GETTABLEKS                       R0 R1 K2 ["MouseButton2Up"]
       20 NEWCLOSURE                       R2 P0
       21 CAPTURE                          UPVAL U2
       22 CAPTURE                          UPVAL U1
       23 NAMECALL                         R0 R0 K3 ["Connect"]
       25 CALL                             R0 2 1
       26 GETUPVAL                         R3 0
       27 GETTABLEKS                       R2 R3 K0 ["current"]
       29 GETTABLEKS                       R1 R2 K2 ["MouseButton2Up"]
       31 NEWCLOSURE                       R3 P1
       32 CAPTURE                          UPVAL U2
       33 CAPTURE                          UPVAL U0
       34 NAMECALL                         R1 R1 K3 ["Connect"]
       36 CALL                             R1 2 1
       37 NEWCLOSURE                       R2 P2
       38 CAPTURE                          VAL R0
       39 CAPTURE                          VAL R1
       40 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["Hover"]
        3 JUMPIFNOTEQ                      R0 R1 ; [+4]
        5 GETUPVAL                         R1 1
        6 CALL                             R1 0 0
        7 RETURN                           R0 0
        8 GETUPVAL                         R1 2
        9 CALL                             R1 0 0
       10 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Disabled"]
        3 JUMPIFNOT                        R2 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K1 ["cancelShowTooltip"]
        8 CALL                             R2 0 0
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R2 R3 K2 ["OnSelect"]
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R3 R4 K3 ["Uri"]
       15 CALL                             R2 1 0
       16 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Uri"]
        3 GETTABLEKS                       R3 R0 K1 ["ForwardRef"]
        5 CALL                             R1 2 1
        6 GETUPVAL                         R2 1
        7 LOADNIL                          R3
        8 CALL                             R2 1 1
        9 GETTABLEKS                       R4 R0 K2 ["Size"]
       11 JUMPIFEQKS                       R4 K3 ["Small"] ; [+5]
       13 GETTABLEKS                       R4 R0 K2 ["Size"]
       15 JUMPIFNOTEQKS                    R4 K4 ["XSmall"] ; [+3]
       17 LOADK                            R3 K3 ["Small"]
       18 JUMP                             ; [+1]
       19 LOADK                            R3 K5 ["Large"]
       20 GETTABLEKS                       R5 R0 K6 ["Icon"]
       22 JUMPIFNOT                        R5 ; [+7]
       23 GETTABLEKS                       R4 R0 K6 ["Icon"]
       25 LOADK                            R6 K7 ["/"]
       26 NAMECALL                         R4 R4 K8 ["find"]
       28 CALL                             R4 2 1
       29 JUMP                             ; [+1]
       30 LOADNIL                          R4
       31 GETTABLEKS                       R6 R0 K6 ["Icon"]
       33 JUMPIFNOT                        R6 ; [+12]
       34 JUMPIFNOT                        R4 ; [+3]
       35 GETTABLEKS                       R5 R0 K6 ["Icon"]
       37 JUMP                             ; [+9]
       38 GETUPVAL                         R6 2
       39 GETTABLEKS                       R5 R6 K9 ["getPathForIcon"]
       41 GETTABLEKS                       R6 R0 K6 ["Icon"]
       43 MOVE                             R7 R3
       44 CALL                             R5 2 1
       45 JUMP                             ; [+1]
       46 LOADNIL                          R5
       47 GETUPVAL                         R6 3
       48 NEWCLOSURE                       R7 P0
       49 CAPTURE                          VAL R1
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R0
       52 NEWTABLE                         R8 0 2
       54 GETTABLEKS                       R9 R0 K10 ["ShowContextMenu"]
       56 GETTABLEKS                       R10 R0 K11 ["ControlIndices"]
       58 SETLIST                          R8 R9 2 [1]
       60 CALL                             R6 2 0
       61 GETUPVAL                         R6 4
       62 DUPTABLE                         R7 K16 [{"Uri", "Title", "Text", "Shortcuts", "WidgetRef"}]
       63 GETTABLEKS                       R8 R0 K0 ["Uri"]
       65 SETTABLEKS                       R8 R7 K0 ["Uri"]
       67 GETTABLEKS                       R8 R0 K13 ["Text"]
       69 SETTABLEKS                       R8 R7 K12 ["Title"]
       71 GETTABLEKS                       R8 R0 K17 ["Tooltip"]
       73 SETTABLEKS                       R8 R7 K13 ["Text"]
       75 GETTABLEKS                       R8 R0 K14 ["Shortcuts"]
       77 SETTABLEKS                       R8 R7 K14 ["Shortcuts"]
       79 SETTABLEKS                       R1 R7 K15 ["WidgetRef"]
       81 CALL                             R6 1 2
       82 GETUPVAL                         R8 5
       83 CALL                             R8 0 1
       84 GETUPVAL                         R9 6
       85 DUPTABLE                         R10 K24 [{"size", "iconOnly", "selected", "disabled", "isSingle", "isMenuOpen"}]
       86 SETTABLEKS                       R3 R10 K18 ["size"]
       88 GETTABLEKS                       R11 R0 K25 ["IconOnly"]
       90 SETTABLEKS                       R11 R10 K19 ["iconOnly"]
       92 GETTABLEKS                       R11 R0 K26 ["Selected"]
       94 SETTABLEKS                       R11 R10 K20 ["selected"]
       96 GETTABLEKS                       R11 R0 K27 ["Disabled"]
       98 SETTABLEKS                       R11 R10 K21 ["disabled"]
      100 GETTABLEKS                       R11 R0 K28 ["IsSingle"]
      102 SETTABLEKS                       R11 R10 K22 ["isSingle"]
      104 GETTABLEKS                       R11 R0 K29 ["IsMenuOpen"]
      106 SETTABLEKS                       R11 R10 K23 ["isMenuOpen"]
      108 MOVE                             R11 R8
      109 CALL                             R9 2 1
      110 GETUPVAL                         R10 7
      111 NEWCLOSURE                       R11 P1
      112 CAPTURE                          UPVAL U8
      113 CAPTURE                          VAL R6
      114 CAPTURE                          VAL R7
      115 NEWTABLE                         R12 0 2
      117 MOVE                             R13 R6
      118 MOVE                             R14 R7
      119 SETLIST                          R12 R13 2 [1]
      121 CALL                             R10 2 1
      122 GETUPVAL                         R11 7
      123 NEWCLOSURE                       R12 P2
      124 CAPTURE                          VAL R0
      125 CAPTURE                          UPVAL U9
      126 NEWTABLE                         R13 0 3
      128 GETTABLEKS                       R14 R0 K27 ["Disabled"]
      130 GETTABLEKS                       R15 R0 K30 ["OnSelect"]
      132 GETTABLEKS                       R16 R0 K0 ["Uri"]
      134 SETLIST                          R13 R14 3 [1]
      136 CALL                             R11 2 1
      137 GETTABLEKS                       R12 R0 K13 ["Text"]
      139 JUMPIFNOT                        R12 ; [+6]
      140 LOADK                            R15 K31 ["\n"]
      141 LOADK                            R16 K32 [" "]
      142 NAMECALL                         R13 R12 K33 ["gsub"]
      144 CALL                             R13 3 1
      145 MOVE                             R12 R13
      146 GETUPVAL                         R14 10
      147 GETTABLEKS                       R13 R14 K34 ["createElement"]
      149 GETUPVAL                         R14 11
      150 DUPTABLE                         R15 K42 [{"LayoutOrder", "ref", "Visible", "tag", "stateLayer", "sizeConstraint", "onStateChanged"}]
      151 GETTABLEKS                       R16 R0 K35 ["LayoutOrder"]
      153 SETTABLEKS                       R16 R15 K35 ["LayoutOrder"]
      155 SETTABLEKS                       R1 R15 K36 ["ref"]
      157 GETTABLEKS                       R16 R0 K37 ["Visible"]
      159 SETTABLEKS                       R16 R15 K37 ["Visible"]
      161 GETTABLEKS                       R17 R9 K43 ["container"]
      163 GETTABLEKS                       R16 R17 K38 ["tag"]
      165 SETTABLEKS                       R16 R15 K38 ["tag"]
      167 GETTABLEKS                       R17 R9 K43 ["container"]
      169 GETTABLEKS                       R16 R17 K39 ["stateLayer"]
      171 SETTABLEKS                       R16 R15 K39 ["stateLayer"]
      173 GETTABLEKS                       R17 R9 K43 ["container"]
      175 GETTABLEKS                       R16 R17 K40 ["sizeConstraint"]
      177 SETTABLEKS                       R16 R15 K40 ["sizeConstraint"]
      179 SETTABLEKS                       R10 R15 K41 ["onStateChanged"]
      181 DUPTABLE                         R16 K45 [{"ActionContainer", "Text"}]
      182 GETUPVAL                         R18 10
      183 GETTABLEKS                       R17 R18 K34 ["createElement"]
      185 GETUPVAL                         R18 11
      186 DUPTABLE                         R19 K47 [{"tag", "LayoutOrder", "onActivated"}]
      187 GETTABLEKS                       R21 R9 K48 ["actionContainer"]
      189 GETTABLEKS                       R20 R21 K38 ["tag"]
      191 SETTABLEKS                       R20 R19 K38 ["tag"]
      193 LOADN                            R20 1
      194 SETTABLEKS                       R20 R19 K35 ["LayoutOrder"]
      196 GETTABLEKS                       R21 R0 K28 ["IsSingle"]
      198 JUMPIFNOT                        R21 ; [+2]
      199 MOVE                             R20 R11
      200 JUMP                             ; [+1]
      201 LOADNIL                          R20
      202 SETTABLEKS                       R20 R19 K46 ["onActivated"]
      204 DUPTABLE                         R20 K51 [{"RibbonTool", "ArrowButton"}]
      205 GETUPVAL                         R22 10
      206 GETTABLEKS                       R21 R22 K34 ["createElement"]
      208 GETUPVAL                         R22 11
      209 DUPTABLE                         R23 K54 [{"ref", "testId", "tag", "isDisabled", "onStateChanged", "stateLayer", "onActivated", "sizeConstraint", "LayoutOrder"}]
      210 SETTABLEKS                       R2 R23 K36 ["ref"]
      212 LOADK                            R24 K55 ["--ribbon-button-tool"]
      213 SETTABLEKS                       R24 R23 K52 ["testId"]
      215 GETTABLEKS                       R25 R9 K56 ["ribbonTool"]
      217 GETTABLEKS                       R24 R25 K38 ["tag"]
      219 SETTABLEKS                       R24 R23 K38 ["tag"]
      221 GETTABLEKS                       R24 R0 K27 ["Disabled"]
      223 SETTABLEKS                       R24 R23 K53 ["isDisabled"]
      225 SETTABLEKS                       R10 R23 K41 ["onStateChanged"]
      227 GETTABLEKS                       R25 R9 K56 ["ribbonTool"]
      229 GETTABLEKS                       R24 R25 K39 ["stateLayer"]
      231 SETTABLEKS                       R24 R23 K39 ["stateLayer"]
      233 SETTABLEKS                       R11 R23 K46 ["onActivated"]
      235 GETTABLEKS                       R25 R9 K56 ["ribbonTool"]
      237 GETTABLEKS                       R24 R25 K40 ["sizeConstraint"]
      239 SETTABLEKS                       R24 R23 K40 ["sizeConstraint"]
      241 LOADN                            R24 1
      242 SETTABLEKS                       R24 R23 K35 ["LayoutOrder"]
      244 DUPTABLE                         R24 K58 [{"RibbonToolButtonIcon"}]
      245 JUMPIFNOT                        R5 ; [+38]
      246 GETUPVAL                         R26 10
      247 GETTABLEKS                       R25 R26 K34 ["createElement"]
      249 GETUPVAL                         R26 12
      250 DUPTABLE                         R27 K61 [{"Image", "testId", "tag", "imageStyle"}]
      251 GETUPVAL                         R29 2
      252 GETTABLEKS                       R28 R29 K9 ["getPathForIcon"]
      254 MOVE                             R29 R5
      255 MOVE                             R30 R3
      256 CALL                             R28 2 1
      257 SETTABLEKS                       R28 R27 K59 ["Image"]
      259 GETTABLEKS                       R29 R0 K0 ["Uri"]
      261 JUMPIFNOT                        R29 ; [+5]
      262 GETUPVAL                         R28 13
      263 GETTABLEKS                       R29 R0 K0 ["Uri"]
      265 CALL                             R28 1 1
      266 JUMP                             ; [+1]
      267 LOADNIL                          R28
      268 SETTABLEKS                       R28 R27 K52 ["testId"]
      270 GETTABLEKS                       R29 R9 K62 ["icon"]
      272 GETTABLEKS                       R28 R29 K38 ["tag"]
      274 SETTABLEKS                       R28 R27 K38 ["tag"]
      276 GETTABLEKS                       R29 R9 K62 ["icon"]
      278 GETTABLEKS                       R28 R29 K60 ["imageStyle"]
      280 SETTABLEKS                       R28 R27 K60 ["imageStyle"]
      282 CALL                             R25 2 1
      283 JUMP                             ; [+1]
      284 LOADNIL                          R25
      285 SETTABLEKS                       R25 R24 K57 ["RibbonToolButtonIcon"]
      287 CALL                             R21 3 1
      288 SETTABLEKS                       R21 R20 K49 ["RibbonTool"]
      290 GETTABLEKS                       R21 R0 K50 ["ArrowButton"]
      292 SETTABLEKS                       R21 R20 K50 ["ArrowButton"]
      294 CALL                             R17 3 1
      295 SETTABLEKS                       R17 R16 K44 ["ActionContainer"]
      297 GETTABLEKS                       R18 R0 K25 ["IconOnly"]
      299 JUMPIF                           R18 ; [+32]
      300 GETUPVAL                         R18 10
      301 GETTABLEKS                       R17 R18 K34 ["createElement"]
      303 GETUPVAL                         R19 14
      304 GETTABLEKS                       R18 R19 K13 ["Text"]
      306 DUPTABLE                         R19 K64 [{"LayoutOrder", "tag", "Size", "Text", "textStyle"}]
      307 LOADN                            R20 2
      308 SETTABLEKS                       R20 R19 K35 ["LayoutOrder"]
      310 GETTABLEKS                       R21 R9 K65 ["text"]
      312 GETTABLEKS                       R20 R21 K38 ["tag"]
      314 SETTABLEKS                       R20 R19 K38 ["tag"]
      316 GETTABLEKS                       R21 R9 K65 ["text"]
      318 GETTABLEKS                       R20 R21 K18 ["size"]
      320 SETTABLEKS                       R20 R19 K2 ["Size"]
      322 SETTABLEKS                       R12 R19 K13 ["Text"]
      324 GETTABLEKS                       R21 R9 K65 ["text"]
      326 GETTABLEKS                       R20 R21 K63 ["textStyle"]
      328 SETTABLEKS                       R20 R19 K63 ["textStyle"]
      330 CALL                             R17 2 1
      331 JUMP                             ; [+1]
      332 LOADNIL                          R17
      333 SETTABLEKS                       R17 R16 K13 ["Text"]
      335 CALL                             R13 3 -1
      336 RETURN                           R13 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Src"]
       18 GETTABLEKS                       R4 R5 K9 ["Util"]
       20 GETTABLEKS                       R3 R4 K10 ["IconHelper"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R6 R0 K8 ["Src"]
       27 GETTABLEKS                       R5 R6 K9 ["Util"]
       29 GETTABLEKS                       R4 R5 K11 ["uriToTestId"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R6 R0 K6 ["Packages"]
       36 GETTABLEKS                       R5 R6 K12 ["Foundation"]
       38 CALL                             R4 1 1
       39 GETTABLEKS                       R5 R4 K13 ["View"]
       41 GETTABLEKS                       R6 R4 K14 ["Image"]
       43 GETTABLEKS                       R8 R4 K15 ["Enums"]
       45 GETTABLEKS                       R7 R8 K16 ["ControlState"]
       47 GETIMPORT                        R8 K5 [require]
       49 GETTABLEKS                       R10 R0 K8 ["Src"]
       51 GETTABLEKS                       R9 R10 K17 ["Types"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K5 [require]
       56 GETTABLEKS                       R12 R0 K8 ["Src"]
       58 GETTABLEKS                       R11 R12 K18 ["Hooks"]
       60 GETTABLEKS                       R10 R11 K19 ["TooltipSettings"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K5 [require]
       65 GETTABLEKS                       R13 R0 K8 ["Src"]
       67 GETTABLEKS                       R12 R13 K18 ["Hooks"]
       69 GETTABLEKS                       R11 R12 K20 ["useTooltip"]
       71 CALL                             R10 1 1
       72 GETIMPORT                        R11 K5 [require]
       74 GETTABLEKS                       R13 R0 K6 ["Packages"]
       76 GETTABLEKS                       R12 R13 K21 ["StudioFoundation"]
       78 CALL                             R11 1 1
       79 GETTABLEKS                       R13 R11 K18 ["Hooks"]
       81 GETTABLEKS                       R12 R13 K22 ["useWidgetRef"]
       83 GETIMPORT                        R13 K5 [require]
       85 GETTABLEKS                       R16 R0 K8 ["Src"]
       87 GETTABLEKS                       R15 R16 K18 ["Hooks"]
       89 GETTABLEKS                       R14 R15 K23 ["useDensity"]
       91 CALL                             R13 1 1
       92 GETIMPORT                        R14 K5 [require]
       94 GETTABLEKS                       R17 R0 K8 ["Src"]
       96 GETTABLEKS                       R16 R17 K18 ["Hooks"]
       98 GETTABLEKS                       R15 R16 K24 ["useRibbonButtonVariants"]
      100 CALL                             R14 1 1
      101 GETTABLEKS                       R15 R1 K25 ["useCallback"]
      103 GETTABLEKS                       R16 R1 K26 ["useEffect"]
      105 GETTABLEKS                       R17 R1 K27 ["useRef"]
      107 DUPCLOSURE                       R18 K28 [PROTO_6]
      108 CAPTURE                          VAL R12
      109 CAPTURE                          VAL R17
      110 CAPTURE                          VAL R2
      111 CAPTURE                          VAL R16
      112 CAPTURE                          VAL R10
      113 CAPTURE                          VAL R13
      114 CAPTURE                          VAL R14
      115 CAPTURE                          VAL R15
      116 CAPTURE                          VAL R7
      117 CAPTURE                          VAL R9
      118 CAPTURE                          VAL R1
      119 CAPTURE                          VAL R5
      120 CAPTURE                          VAL R6
      121 CAPTURE                          VAL R3
      122 CAPTURE                          VAL R4
      123 RETURN                           R18 1
