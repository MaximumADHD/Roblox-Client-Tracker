PROTO_0:
        0 GETIMPORT                        R2 K2 [Vector2.new]
        2 MOVE                             R3 R0
        3 MOVE                             R4 R1
        4 CALL                             R2 2 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K3 ["ShowContextMenu"]
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R4 R4 K4 ["current"]
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R5 R5 K5 ["ControlIndices"]
       14 MOVE                             R6 R2
       15 CALL                             R3 3 0
       16 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R2 K2 [Vector2.new]
        2 MOVE                             R3 R0
        3 MOVE                             R4 R1
        4 CALL                             R2 2 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K3 ["ShowContextMenu"]
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R4 R4 K4 ["current"]
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R5 R5 K5 ["ControlIndices"]
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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFEQKNIL                     R0 ; [+10]
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K0 ["current"]
        8 JUMPIFEQKNIL                     R0 ; [+5]
       10 GETUPVAL                         R0 2
       11 GETTABLEKS                       R0 R0 K1 ["ShowContextMenu"]
       13 JUMPIF                           R0 ; [+1]
       14 RETURN                           R0 0
       15 GETUPVAL                         R0 1
       16 GETTABLEKS                       R0 R0 K0 ["current"]
       18 GETTABLEKS                       R0 R0 K2 ["MouseButton2Up"]
       20 NEWCLOSURE                       R2 P0
       21 CAPTURE                          UPVAL U2
       22 CAPTURE                          UPVAL U1
       23 NAMECALL                         R0 R0 K3 ["Connect"]
       25 CALL                             R0 2 1
       26 GETUPVAL                         R1 0
       27 GETTABLEKS                       R1 R1 K0 ["current"]
       29 GETTABLEKS                       R1 R1 K2 ["MouseButton2Up"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hover"]
        3 JUMPIFNOTEQ                      R0 R1 ; [+4]
        5 GETUPVAL                         R1 1
        6 CALL                             R1 0 0
        7 RETURN                           R0 0
        8 GETUPVAL                         R1 2
        9 CALL                             R1 0 0
       10 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Disabled"]
        3 JUMPIFNOT                        R2 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["cancelShowTooltip"]
        8 CALL                             R2 0 0
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K2 ["OnSelect"]
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K3 ["Uri"]
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
       38 GETUPVAL                         R5 2
       39 GETTABLEKS                       R5 R5 K9 ["getPathForIcon"]
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
      137 GETUPVAL                         R13 10
      138 CALL                             R13 0 1
      139 JUMPIFNOT                        R13 ; [+10]
      140 GETTABLEKS                       R13 R0 K31 ["ShortTitle"]
      142 JUMPIFNOT                        R13 ; [+7]
      143 GETTABLEKS                       R13 R0 K31 ["ShortTitle"]
      145 JUMPIFEQKS                       R13 K32 [""] ; [+4]
      147 GETTABLEKS                       R12 R0 K31 ["ShortTitle"]
      149 JUMP                             ; [+2]
      150 GETTABLEKS                       R12 R0 K13 ["Text"]
      152 JUMPIFNOT                        R12 ; [+6]
      153 LOADK                            R15 K33 ["\n"]
      154 LOADK                            R16 K34 [" "]
      155 NAMECALL                         R13 R12 K35 ["gsub"]
      157 CALL                             R13 3 1
      158 MOVE                             R12 R13
      159 GETUPVAL                         R13 11
      160 GETTABLEKS                       R13 R13 K36 ["createElement"]
      162 GETUPVAL                         R14 12
      163 DUPTABLE                         R15 K44 [{"LayoutOrder", "ref", "Visible", "tag", "stateLayer", "sizeConstraint", "onStateChanged"}]
      164 GETTABLEKS                       R16 R0 K37 ["LayoutOrder"]
      166 SETTABLEKS                       R16 R15 K37 ["LayoutOrder"]
      168 SETTABLEKS                       R1 R15 K38 ["ref"]
      170 GETTABLEKS                       R16 R0 K39 ["Visible"]
      172 SETTABLEKS                       R16 R15 K39 ["Visible"]
      174 GETTABLEKS                       R16 R9 K45 ["container"]
      176 GETTABLEKS                       R16 R16 K40 ["tag"]
      178 SETTABLEKS                       R16 R15 K40 ["tag"]
      180 GETTABLEKS                       R16 R9 K45 ["container"]
      182 GETTABLEKS                       R16 R16 K41 ["stateLayer"]
      184 SETTABLEKS                       R16 R15 K41 ["stateLayer"]
      186 GETTABLEKS                       R16 R9 K45 ["container"]
      188 GETTABLEKS                       R16 R16 K42 ["sizeConstraint"]
      190 SETTABLEKS                       R16 R15 K42 ["sizeConstraint"]
      192 SETTABLEKS                       R10 R15 K43 ["onStateChanged"]
      194 DUPTABLE                         R16 K47 [{"ActionContainer", "Text"}]
      195 GETUPVAL                         R17 11
      196 GETTABLEKS                       R17 R17 K36 ["createElement"]
      198 GETUPVAL                         R18 12
      199 DUPTABLE                         R19 K49 [{"tag", "LayoutOrder", "onActivated"}]
      200 GETTABLEKS                       R20 R9 K50 ["actionContainer"]
      202 GETTABLEKS                       R20 R20 K40 ["tag"]
      204 SETTABLEKS                       R20 R19 K40 ["tag"]
      206 LOADN                            R20 1
      207 SETTABLEKS                       R20 R19 K37 ["LayoutOrder"]
      209 GETTABLEKS                       R21 R0 K28 ["IsSingle"]
      211 JUMPIFNOT                        R21 ; [+2]
      212 MOVE                             R20 R11
      213 JUMP                             ; [+1]
      214 LOADNIL                          R20
      215 SETTABLEKS                       R20 R19 K48 ["onActivated"]
      217 DUPTABLE                         R20 K53 [{"RibbonTool", "ArrowButton"}]
      218 GETUPVAL                         R21 11
      219 GETTABLEKS                       R21 R21 K36 ["createElement"]
      221 GETUPVAL                         R22 12
      222 DUPTABLE                         R23 K56 [{"ref", "testId", "tag", "isDisabled", "onStateChanged", "stateLayer", "onActivated", "sizeConstraint", "LayoutOrder"}]
      223 SETTABLEKS                       R2 R23 K38 ["ref"]
      225 LOADK                            R24 K57 ["--ribbon-button-tool"]
      226 SETTABLEKS                       R24 R23 K54 ["testId"]
      228 GETTABLEKS                       R24 R9 K58 ["ribbonTool"]
      230 GETTABLEKS                       R24 R24 K40 ["tag"]
      232 SETTABLEKS                       R24 R23 K40 ["tag"]
      234 GETTABLEKS                       R24 R0 K27 ["Disabled"]
      236 SETTABLEKS                       R24 R23 K55 ["isDisabled"]
      238 SETTABLEKS                       R10 R23 K43 ["onStateChanged"]
      240 GETTABLEKS                       R24 R9 K58 ["ribbonTool"]
      242 GETTABLEKS                       R24 R24 K41 ["stateLayer"]
      244 SETTABLEKS                       R24 R23 K41 ["stateLayer"]
      246 SETTABLEKS                       R11 R23 K48 ["onActivated"]
      248 GETTABLEKS                       R24 R9 K58 ["ribbonTool"]
      250 GETTABLEKS                       R24 R24 K42 ["sizeConstraint"]
      252 SETTABLEKS                       R24 R23 K42 ["sizeConstraint"]
      254 LOADN                            R24 1
      255 SETTABLEKS                       R24 R23 K37 ["LayoutOrder"]
      257 DUPTABLE                         R24 K60 [{"RibbonToolButtonIcon"}]
      258 JUMPIFNOT                        R5 ; [+38]
      259 GETUPVAL                         R25 11
      260 GETTABLEKS                       R25 R25 K36 ["createElement"]
      262 GETUPVAL                         R26 13
      263 DUPTABLE                         R27 K63 [{"Image", "testId", "tag", "imageStyle"}]
      264 GETUPVAL                         R28 2
      265 GETTABLEKS                       R28 R28 K9 ["getPathForIcon"]
      267 MOVE                             R29 R5
      268 MOVE                             R30 R3
      269 CALL                             R28 2 1
      270 SETTABLEKS                       R28 R27 K61 ["Image"]
      272 GETTABLEKS                       R29 R0 K0 ["Uri"]
      274 JUMPIFNOT                        R29 ; [+5]
      275 GETUPVAL                         R28 14
      276 GETTABLEKS                       R29 R0 K0 ["Uri"]
      278 CALL                             R28 1 1
      279 JUMP                             ; [+1]
      280 LOADNIL                          R28
      281 SETTABLEKS                       R28 R27 K54 ["testId"]
      283 GETTABLEKS                       R28 R9 K64 ["icon"]
      285 GETTABLEKS                       R28 R28 K40 ["tag"]
      287 SETTABLEKS                       R28 R27 K40 ["tag"]
      289 GETTABLEKS                       R28 R9 K64 ["icon"]
      291 GETTABLEKS                       R28 R28 K62 ["imageStyle"]
      293 SETTABLEKS                       R28 R27 K62 ["imageStyle"]
      295 CALL                             R25 2 1
      296 JUMP                             ; [+1]
      297 LOADNIL                          R25
      298 SETTABLEKS                       R25 R24 K59 ["RibbonToolButtonIcon"]
      300 CALL                             R21 3 1
      301 SETTABLEKS                       R21 R20 K51 ["RibbonTool"]
      303 GETTABLEKS                       R21 R0 K52 ["ArrowButton"]
      305 SETTABLEKS                       R21 R20 K52 ["ArrowButton"]
      307 CALL                             R17 3 1
      308 SETTABLEKS                       R17 R16 K46 ["ActionContainer"]
      310 GETTABLEKS                       R18 R0 K25 ["IconOnly"]
      312 JUMPIF                           R18 ; [+43]
      313 GETUPVAL                         R17 11
      314 GETTABLEKS                       R17 R17 K36 ["createElement"]
      316 GETUPVAL                         R18 15
      317 GETTABLEKS                       R18 R18 K13 ["Text"]
      319 DUPTABLE                         R19 K66 [{"LayoutOrder", "tag", "Size", "sizeConstraint", "Text", "textStyle"}]
      320 LOADN                            R20 2
      321 SETTABLEKS                       R20 R19 K37 ["LayoutOrder"]
      323 GETTABLEKS                       R20 R9 K67 ["text"]
      325 GETTABLEKS                       R20 R20 K40 ["tag"]
      327 SETTABLEKS                       R20 R19 K40 ["tag"]
      329 GETTABLEKS                       R20 R9 K67 ["text"]
      331 GETTABLEKS                       R20 R20 K18 ["size"]
      333 SETTABLEKS                       R20 R19 K2 ["Size"]
      335 GETUPVAL                         R21 16
      336 CALL                             R21 0 1
      337 JUMPIFNOT                        R21 ; [+5]
      338 GETTABLEKS                       R20 R9 K67 ["text"]
      340 GETTABLEKS                       R20 R20 K42 ["sizeConstraint"]
      342 JUMP                             ; [+1]
      343 LOADNIL                          R20
      344 SETTABLEKS                       R20 R19 K42 ["sizeConstraint"]
      346 SETTABLEKS                       R12 R19 K13 ["Text"]
      348 GETTABLEKS                       R20 R9 K67 ["text"]
      350 GETTABLEKS                       R20 R20 K65 ["textStyle"]
      352 SETTABLEKS                       R20 R19 K65 ["textStyle"]
      354 CALL                             R17 2 1
      355 JUMP                             ; [+1]
      356 LOADNIL                          R17
      357 SETTABLEKS                       R17 R16 K13 ["Text"]
      359 CALL                             R13 3 -1
      360 RETURN                           R13 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["IconHelper"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K9 ["Util"]
       29 GETTABLEKS                       R4 R4 K11 ["uriToTestId"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K6 ["Packages"]
       36 GETTABLEKS                       R5 R5 K12 ["Foundation"]
       38 CALL                             R4 1 1
       39 GETTABLEKS                       R5 R4 K13 ["View"]
       41 GETTABLEKS                       R6 R4 K14 ["Image"]
       43 GETTABLEKS                       R7 R4 K15 ["Enums"]
       45 GETTABLEKS                       R7 R7 K16 ["ControlState"]
       47 GETIMPORT                        R8 K5 [require]
       49 GETTABLEKS                       R9 R0 K8 ["Src"]
       51 GETTABLEKS                       R9 R9 K17 ["Types"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K5 [require]
       56 GETTABLEKS                       R10 R0 K8 ["Src"]
       58 GETTABLEKS                       R10 R10 K18 ["Hooks"]
       60 GETTABLEKS                       R10 R10 K19 ["TooltipSettings"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K5 [require]
       65 GETTABLEKS                       R11 R0 K8 ["Src"]
       67 GETTABLEKS                       R11 R11 K18 ["Hooks"]
       69 GETTABLEKS                       R11 R11 K20 ["useTooltip"]
       71 CALL                             R10 1 1
       72 GETIMPORT                        R11 K5 [require]
       74 GETTABLEKS                       R12 R0 K6 ["Packages"]
       76 GETTABLEKS                       R12 R12 K21 ["StudioFoundation"]
       78 CALL                             R11 1 1
       79 GETTABLEKS                       R12 R11 K18 ["Hooks"]
       81 GETTABLEKS                       R12 R12 K22 ["useWidgetRef"]
       83 GETIMPORT                        R13 K5 [require]
       85 GETTABLEKS                       R14 R0 K8 ["Src"]
       87 GETTABLEKS                       R14 R14 K18 ["Hooks"]
       89 GETTABLEKS                       R14 R14 K23 ["useDensity"]
       91 CALL                             R13 1 1
       92 GETIMPORT                        R14 K5 [require]
       94 GETTABLEKS                       R15 R0 K8 ["Src"]
       96 GETTABLEKS                       R15 R15 K18 ["Hooks"]
       98 GETTABLEKS                       R15 R15 K24 ["useRibbonButtonVariants"]
      100 CALL                             R14 1 1
      101 GETTABLEKS                       R15 R1 K25 ["useCallback"]
      103 GETTABLEKS                       R16 R1 K26 ["useEffect"]
      105 GETTABLEKS                       R17 R1 K27 ["useRef"]
      107 GETIMPORT                        R18 K5 [require]
      109 GETTABLEKS                       R19 R0 K8 ["Src"]
      111 GETTABLEKS                       R19 R19 K28 ["SharedFlags"]
      113 GETTABLEKS                       R19 R19 K29 ["getFFlagRibbonTextLengthImprovements"]
      115 CALL                             R18 1 1
      116 GETIMPORT                        R19 K5 [require]
      118 GETTABLEKS                       R20 R0 K8 ["Src"]
      120 GETTABLEKS                       R20 R20 K28 ["SharedFlags"]
      122 GETTABLEKS                       R20 R20 K30 ["getFeatureStudioActionShortNames"]
      124 CALL                             R19 1 1
      125 DUPCLOSURE                       R20 K31 [PROTO_6]
      126 CAPTURE                          VAL R12
      127 CAPTURE                          VAL R17
      128 CAPTURE                          VAL R2
      129 CAPTURE                          VAL R16
      130 CAPTURE                          VAL R10
      131 CAPTURE                          VAL R13
      132 CAPTURE                          VAL R14
      133 CAPTURE                          VAL R15
      134 CAPTURE                          VAL R7
      135 CAPTURE                          VAL R9
      136 CAPTURE                          VAL R19
      137 CAPTURE                          VAL R1
      138 CAPTURE                          VAL R5
      139 CAPTURE                          VAL R6
      140 CAPTURE                          VAL R3
      141 CAPTURE                          VAL R4
      142 CAPTURE                          VAL R18
      143 RETURN                           R20 1
