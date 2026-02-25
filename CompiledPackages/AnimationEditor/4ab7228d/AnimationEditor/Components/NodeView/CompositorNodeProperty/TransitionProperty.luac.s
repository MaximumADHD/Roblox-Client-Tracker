PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["Hover"]
        3 JUMPIFEQ                         R0 R1 ; [+6]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R1 R2 K1 ["Pressed"]
        8 JUMPIFNOTEQ                      R0 R1 ; [+7]
       10 GETUPVAL                         R1 1
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R2 R3 K0 ["Hover"]
       14 CALL                             R1 1 0
       15 RETURN                           R0 0
       16 GETUPVAL                         R1 1
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R2 R3 K2 ["Default"]
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["observeGraphNodeById"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["NodeId"]
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K2 ["useState"]
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R3 R4 K3 ["Initialize"]
       13 CALL                             R2 1 2
       14 GETUPVAL                         R5 3
       15 GETTABLEKS                       R4 R5 K4 ["useToggleState"]
       17 LOADB                            R5 0
       18 CALL                             R4 1 1
       19 GETUPVAL                         R6 0
       20 GETTABLEKS                       R5 R6 K5 ["useRef"]
       22 LOADNIL                          R6
       23 CALL                             R5 1 1
       24 GETUPVAL                         R7 3
       25 GETTABLEKS                       R6 R7 K6 ["createNextOrder"]
       27 CALL                             R6 0 1
       28 GETUPVAL                         R8 0
       29 GETTABLEKS                       R7 R8 K7 ["useCallback"]
       31 NEWCLOSURE                       R8 P0
       32 CAPTURE                          UPVAL U2
       33 CAPTURE                          VAL R3
       34 NEWTABLE                         R9 0 0
       36 CALL                             R7 2 1
       37 GETTABLEKS                       R9 R0 K8 ["IsDefaultValue"]
       39 NOT                              R8 R9
       40 JUMPIF                           R8 ; [+7]
       41 GETUPVAL                         R10 2
       42 GETTABLEKS                       R9 R10 K9 ["Hover"]
       44 JUMPIFEQ                         R2 R9 ; [+2]
       46 LOADB                            R8 0 +1
       47 LOADB                            R8 1
       48 LOADB                            R8 1
       49 GETTABLEKS                       R10 R0 K10 ["AllowReset"]
       51 JUMPIFNOTEQKB                    R10 FALSE ; [+2]
       53 LOADB                            R9 0 +1
       54 LOADB                            R9 1
       55 GETUPVAL                         R11 4
       56 GETTABLEKS                       R10 R11 K11 ["useSignalState"]
       58 GETUPVAL                         R12 0
       59 GETTABLEKS                       R11 R12 K12 ["useMemo"]
       61 NEWCLOSURE                       R12 P1
       62 CAPTURE                          VAL R1
       63 CAPTURE                          VAL R0
       64 NEWTABLE                         R13 0 2
       66 GETTABLEKS                       R14 R1 K13 ["observeGraphNodeById"]
       68 GETTABLEKS                       R15 R0 K14 ["NodeId"]
       70 SETLIST                          R13 R14 2 [1]
       72 CALL                             R11 2 -1
       73 CALL                             R10 -1 1
       74 GETUPVAL                         R12 0
       75 GETTABLEKS                       R11 R12 K15 ["createElement"]
       77 GETUPVAL                         R13 5
       78 GETTABLEKS                       R12 R13 K16 ["View"]
       80 DUPTABLE                         R13 K19 [{"tag", "LayoutOrder"}]
       81 LOADK                            R14 K20 ["col auto-y gap-small size-full-700"]
       82 SETTABLEKS                       R14 R13 K17 ["tag"]
       84 GETTABLEKS                       R14 R0 K18 ["LayoutOrder"]
       86 SETTABLEKS                       R14 R13 K18 ["LayoutOrder"]
       88 DUPTABLE                         R14 K22 [{"Name"}]
       89 GETUPVAL                         R16 0
       90 GETTABLEKS                       R15 R16 K15 ["createElement"]
       92 GETUPVAL                         R17 5
       93 GETTABLEKS                       R16 R17 K16 ["View"]
       95 DUPTABLE                         R17 K19 [{"tag", "LayoutOrder"}]
       96 LOADK                            R18 K23 ["row auto-y gap-small size-full-700 align-y-center flex-x-between"]
       97 SETTABLEKS                       R18 R17 K17 ["tag"]
       99 MOVE                             R18 R6
      100 CALL                             R18 0 1
      101 SETTABLEKS                       R18 R17 K18 ["LayoutOrder"]
      103 DUPTABLE                         R18 K27 [{"InputLabelWeight", "ButtonPlaceholder", "Popover"}]
      104 GETUPVAL                         R20 0
      105 GETTABLEKS                       R19 R20 K15 ["createElement"]
      107 GETUPVAL                         R20 6
      108 DUPTABLE                         R21 K29 [{"Name", "Weight", "LayoutOrder"}]
      109 GETTABLEKS                       R22 R0 K30 ["Label"]
      111 SETTABLEKS                       R22 R21 K21 ["Name"]
      113 GETTABLEKS                       R22 R0 K28 ["Weight"]
      115 SETTABLEKS                       R22 R21 K28 ["Weight"]
      117 LOADN                            R22 1
      118 SETTABLEKS                       R22 R21 K18 ["LayoutOrder"]
      120 CALL                             R19 2 1
      121 SETTABLEKS                       R19 R18 K24 ["InputLabelWeight"]
      123 GETUPVAL                         R20 0
      124 GETTABLEKS                       R19 R20 K15 ["createElement"]
      126 GETUPVAL                         R21 5
      127 GETTABLEKS                       R20 R21 K16 ["View"]
      129 DUPTABLE                         R21 K33 [{"tag", "LayoutOrder", "onStateChanged", "stateLayer"}]
      130 LOADK                            R22 K34 ["auto-xy"]
      131 SETTABLEKS                       R22 R21 K17 ["tag"]
      133 LOADN                            R22 2
      134 SETTABLEKS                       R22 R21 K18 ["LayoutOrder"]
      136 SETTABLEKS                       R7 R21 K31 ["onStateChanged"]
      138 DUPTABLE                         R22 K36 [{"affordance"}]
      139 GETUPVAL                         R24 7
      140 GETTABLEKS                       R23 R24 K37 ["None"]
      142 SETTABLEKS                       R23 R22 K35 ["affordance"]
      144 SETTABLEKS                       R22 R21 K32 ["stateLayer"]
      146 DUPTABLE                         R22 K39 [{"Button"}]
      147 GETUPVAL                         R24 0
      148 GETTABLEKS                       R23 R24 K15 ["createElement"]
      150 GETUPVAL                         R25 5
      151 GETTABLEKS                       R24 R25 K38 ["Button"]
      153 DUPTABLE                         R25 K46 [{"icon", "variant", "onActivated", "size", "fillBehavior", "ref"}]
      154 JUMPIF                           R8 ; [+3]
      155 GETTABLEKS                       R27 R4 K47 ["enabled"]
      157 JUMPIFNOT                        R27 ; [+2]
      158 LOADK                            R26 K48 ["arrow-small-right"]
      159 JUMP                             ; [+1]
      160 LOADNIL                          R26
      161 SETTABLEKS                       R26 R25 K40 ["icon"]
      163 GETUPVAL                         R29 5
      164 GETTABLEKS                       R28 R29 K49 ["Enums"]
      166 GETTABLEKS                       R27 R28 K50 ["ButtonVariant"]
      168 GETTABLEKS                       R26 R27 K51 ["Utility"]
      170 SETTABLEKS                       R26 R25 K41 ["variant"]
      172 GETTABLEKS                       R26 R4 K52 ["toggle"]
      174 SETTABLEKS                       R26 R25 K42 ["onActivated"]
      176 GETUPVAL                         R29 5
      177 GETTABLEKS                       R28 R29 K49 ["Enums"]
      179 GETTABLEKS                       R27 R28 K53 ["InputSize"]
      181 GETTABLEKS                       R26 R27 K54 ["XSmall"]
      183 SETTABLEKS                       R26 R25 K43 ["size"]
      185 GETUPVAL                         R29 5
      186 GETTABLEKS                       R28 R29 K49 ["Enums"]
      188 GETTABLEKS                       R27 R28 K55 ["FillBehavior"]
      190 GETTABLEKS                       R26 R27 K56 ["Fit"]
      192 SETTABLEKS                       R26 R25 K44 ["fillBehavior"]
      194 SETTABLEKS                       R5 R25 K45 ["ref"]
      196 CALL                             R23 2 1
      197 SETTABLEKS                       R23 R22 K38 ["Button"]
      199 CALL                             R19 3 1
      200 SETTABLEKS                       R19 R18 K25 ["ButtonPlaceholder"]
      202 GETUPVAL                         R20 0
      203 GETTABLEKS                       R19 R20 K15 ["createElement"]
      205 GETUPVAL                         R22 5
      206 GETTABLEKS                       R21 R22 K26 ["Popover"]
      208 GETTABLEKS                       R20 R21 K57 ["Root"]
      210 DUPTABLE                         R21 K59 [{"isOpen"}]
      211 GETTABLEKS                       R22 R4 K47 ["enabled"]
      213 SETTABLEKS                       R22 R21 K58 ["isOpen"]
      215 DUPTABLE                         R22 K62 [{"Anchor", "Content"}]
      216 GETUPVAL                         R24 0
      217 GETTABLEKS                       R23 R24 K15 ["createElement"]
      219 GETUPVAL                         R26 5
      220 GETTABLEKS                       R25 R26 K26 ["Popover"]
      222 GETTABLEKS                       R24 R25 K60 ["Anchor"]
      224 DUPTABLE                         R25 K64 [{"anchorRef"}]
      225 SETTABLEKS                       R5 R25 K63 ["anchorRef"]
      227 CALL                             R23 2 1
      228 SETTABLEKS                       R23 R22 K60 ["Anchor"]
      230 GETUPVAL                         R24 0
      231 GETTABLEKS                       R23 R24 K15 ["createElement"]
      233 GETUPVAL                         R26 5
      234 GETTABLEKS                       R25 R26 K26 ["Popover"]
      236 GETTABLEKS                       R24 R25 K61 ["Content"]
      238 DUPTABLE                         R25 K68 [{"align", "side", "onPressedOutside"}]
      239 GETUPVAL                         R29 5
      240 GETTABLEKS                       R28 R29 K49 ["Enums"]
      242 GETTABLEKS                       R27 R28 K69 ["PopoverAlign"]
      244 GETTABLEKS                       R26 R27 K70 ["Start"]
      246 SETTABLEKS                       R26 R25 K65 ["align"]
      248 GETUPVAL                         R29 5
      249 GETTABLEKS                       R28 R29 K49 ["Enums"]
      251 GETTABLEKS                       R27 R28 K71 ["PopoverSide"]
      253 GETTABLEKS                       R26 R27 K72 ["Right"]
      255 SETTABLEKS                       R26 R25 K66 ["side"]
      257 GETTABLEKS                       R26 R4 K73 ["disable"]
      259 SETTABLEKS                       R26 R25 K67 ["onPressedOutside"]
      261 JUMPIFNOT                        R10 ; [+60]
      262 GETUPVAL                         R27 0
      263 GETTABLEKS                       R26 R27 K15 ["createElement"]
      265 GETUPVAL                         R27 8
      266 DUPTABLE                         R28 K85 [{"AllowReset", "Name", "Expanded", "IsDefaultValue", "TransitionBuilder", "Transition", "OnChanged", "OnClosed", "GraphPayload", "PropertyLookup", "Position", "Size", "StateLookup", "text"}]
      267 SETTABLEKS                       R9 R28 K10 ["AllowReset"]
      269 GETTABLEKS                       R29 R0 K30 ["Label"]
      271 SETTABLEKS                       R29 R28 K21 ["Name"]
      273 LOADB                            R29 1
      274 SETTABLEKS                       R29 R28 K74 ["Expanded"]
      276 GETTABLEKS                       R29 R0 K8 ["IsDefaultValue"]
      278 SETTABLEKS                       R29 R28 K8 ["IsDefaultValue"]
      280 GETTABLEKS                       R29 R0 K75 ["TransitionBuilder"]
      282 SETTABLEKS                       R29 R28 K75 ["TransitionBuilder"]
      284 GETTABLEKS                       R29 R0 K86 ["Value"]
      286 JUMPIF                           R29 ; [+2]
      287 GETTABLEKS                       R29 R0 K87 ["DefaultValue"]
      289 SETTABLEKS                       R29 R28 K76 ["Transition"]
      291 GETTABLEKS                       R29 R0 K77 ["OnChanged"]
      293 SETTABLEKS                       R29 R28 K77 ["OnChanged"]
      295 GETTABLEKS                       R29 R4 K73 ["disable"]
      297 SETTABLEKS                       R29 R28 K78 ["OnClosed"]
      299 SETTABLEKS                       R10 R28 K79 ["GraphPayload"]
      301 NEWTABLE                         R29 0 0
      303 SETTABLEKS                       R29 R28 K80 ["PropertyLookup"]
      305 GETTABLEKS                       R29 R10 K88 ["position"]
      307 SETTABLEKS                       R29 R28 K81 ["Position"]
      309 GETTABLEKS                       R29 R10 K43 ["size"]
      311 SETTABLEKS                       R29 R28 K82 ["Size"]
      313 NEWTABLE                         R29 0 0
      315 SETTABLEKS                       R29 R28 K83 ["StateLookup"]
      317 LOADK                            R29 K89 [""]
      318 SETTABLEKS                       R29 R28 K84 ["text"]
      320 CALL                             R26 2 1
      321 JUMP                             ; [+1]
      322 LOADNIL                          R26
      323 CALL                             R23 3 1
      324 SETTABLEKS                       R23 R22 K61 ["Content"]
      326 CALL                             R19 3 1
      327 SETTABLEKS                       R19 R18 K26 ["Popover"]
      329 CALL                             R15 3 1
      330 SETTABLEKS                       R15 R14 K21 ["Name"]
      332 CALL                             R11 3 -1
      333 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R6 R0 K8 ["Components"]
       18 GETTABLEKS                       R5 R6 K9 ["NodeView"]
       20 GETTABLEKS                       R4 R5 K10 ["CompositorNodeInput"]
       22 GETTABLEKS                       R3 R4 K11 ["InputLabelWeight"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R5 R0 K6 ["Parent"]
       29 GETTABLEKS                       R4 R5 K12 ["React"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R6 R0 K6 ["Parent"]
       36 GETTABLEKS                       R5 R6 K13 ["ReactUtils"]
       38 CALL                             R4 1 1
       39 GETTABLEKS                       R6 R1 K14 ["Enums"]
       41 GETTABLEKS                       R5 R6 K15 ["ControlState"]
       43 GETTABLEKS                       R7 R1 K14 ["Enums"]
       45 GETTABLEKS                       R6 R7 K16 ["StateLayerAffordance"]
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R9 R0 K17 ["Contexts"]
       51 GETTABLEKS                       R8 R9 K18 ["NativeGraphContext"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R9 R0 K19 ["NodeViewTypes"]
       58 CALL                             R8 1 1
       59 GETIMPORT                        R9 K5 [require]
       61 GETTABLEKS                       R11 R0 K6 ["Parent"]
       63 GETTABLEKS                       R10 R11 K20 ["SignalsReact"]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R10 K5 [require]
       68 GETTABLEKS                       R14 R0 K8 ["Components"]
       70 GETTABLEKS                       R13 R14 K9 ["NodeView"]
       72 GETTABLEKS                       R12 R13 K21 ["CompositorNodeTransition"]
       74 GETTABLEKS                       R11 R12 K22 ["TransitionPanel"]
       76 CALL                             R10 1 1
       77 DUPCLOSURE                       R11 K23 [PROTO_2]
       78 CAPTURE                          VAL R3
       79 CAPTURE                          VAL R7
       80 CAPTURE                          VAL R5
       81 CAPTURE                          VAL R4
       82 CAPTURE                          VAL R9
       83 CAPTURE                          VAL R1
       84 CAPTURE                          VAL R2
       85 CAPTURE                          VAL R6
       86 CAPTURE                          VAL R10
       87 RETURN                           R11 1
