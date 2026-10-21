PROTO_0:
        0 JUMPIFEQKNIL                     R0 ; [+8]
        2 GETTABLEKS                       R2 R0 K0 ["parts"]
        4 GETTABLEKS                       R2 R2 K1 ["value"]
        6 GETTABLEKS                       R2 R2 K2 ["multiple"]
        8 JUMPIFNOT                        R2 ; [+6]
        9 LOADK                            R2 K3 ["%* selected"]
       10 MOVE                             R4 R1
       11 NAMECALL                         R2 R2 K4 ["format"]
       13 CALL                             R2 2 1
       14 RETURN                           R2 1
       15 GETTABLEKS                       R2 R0 K0 ["parts"]
       17 GETTABLEKS                       R2 R2 K1 ["value"]
       19 GETTABLEKS                       R2 R2 K1 ["value"]
       21 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getIconProps"]
        3 GETUPVAL                         R2 1
        4 JUMPIFNOT                        R2 ; [+4]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["parts"]
        8 JUMP                             ; [+1]
        9 LOADNIL                          R1
       10 CALL                             R0 1 -1
       11 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["session"]
        3 GETTABLEKS                       R1 R1 K1 ["editProperty"]
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R0
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 GETTABLEKS                       R2 R0 K1 ["session"]
        5 GETTABLEKS                       R2 R2 K2 ["summaryObservable"]
        7 CALL                             R1 1 1
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K3 ["useSignalState"]
       11 GETTABLEKS                       R3 R0 K1 ["session"]
       13 GETTABLEKS                       R3 R3 K4 ["observeProperties"]
       15 CALL                             R2 1 1
       16 GETUPVAL                         R3 2
       17 GETTABLEKS                       R3 R3 K5 ["byId"]
       19 MOVE                             R4 R2
       20 GETUPVAL                         R5 3
       21 CALL                             R3 2 1
       22 GETUPVAL                         R4 2
       23 GETTABLEKS                       R4 R4 K5 ["byId"]
       25 MOVE                             R5 R2
       26 GETUPVAL                         R6 4
       27 CALL                             R4 2 1
       28 GETTABLEKS                       R5 R1 K6 ["totalInstances"]
       30 JUMPIFEQKNIL                     R4 ; [+8]
       32 GETTABLEKS                       R7 R4 K7 ["parts"]
       34 GETTABLEKS                       R7 R7 K8 ["value"]
       36 GETTABLEKS                       R7 R7 K9 ["multiple"]
       38 JUMPIFNOT                        R7 ; [+6]
       39 LOADK                            R6 K10 ["%* selected"]
       40 MOVE                             R8 R5
       41 NAMECALL                         R6 R6 K11 ["format"]
       43 CALL                             R6 2 1
       44 JUMP                             ; [+6]
       45 GETTABLEKS                       R6 R4 K7 ["parts"]
       47 GETTABLEKS                       R6 R6 K8 ["value"]
       49 GETTABLEKS                       R6 R6 K8 ["value"]
       51 GETUPVAL                         R7 5
       52 CALL                             R7 0 1
       53 GETUPVAL                         R8 6
       54 GETTABLEKS                       R8 R8 K12 ["useMemo"]
       56 NEWCLOSURE                       R9 P0
       57 CAPTURE                          VAL R7
       58 CAPTURE                          VAL R3
       59 NEWTABLE                         R10 0 3
       61 MOVE                             R11 R7
       62 MOVE                             R12 R3
       63 MOVE                             R13 R3
       64 JUMPIFNOT                        R13 ; [+2]
       65 GETTABLEKS                       R13 R3 K7 ["parts"]
       67 SETLIST                          R10 R11 3 [1]
       69 CALL                             R8 2 1
       70 GETUPVAL                         R9 7
       71 NEWCLOSURE                       R10 P1
       72 CAPTURE                          VAL R0
       73 CAPTURE                          UPVAL U4
       74 CALL                             R9 1 1
       75 GETUPVAL                         R10 8
       76 CALL                             R10 0 1
       77 GETUPVAL                         R11 9
       78 CALL                             R11 0 1
       79 GETUPVAL                         R12 10
       80 GETUPVAL                         R13 11
       81 DUPTABLE                         R14 K17 [{["LayoutOrder"], ["Size"], ["tag"] = "padding-x-small"}]
       82 GETTABLEKS                       R15 R0 K18 ["layoutOrder"]
       84 SETTABLEKS                       R15 R14 K13 ["LayoutOrder"]
       86 GETTABLEKS                       R15 R0 K19 ["size"]
       88 SETTABLEKS                       R15 R14 K14 ["Size"]
       90 DUPTABLE                         R15 K22 [{"Content", "Underline"}]
       91 GETUPVAL                         R16 10
       92 GETUPVAL                         R17 11
       93 DUPTABLE                         R18 K24 [{["tag"] = "row align-y-center gap-small size-full-full padding-left-small"}]
       94 DUPTABLE                         R19 K28 [{"Icon", "NameContainer", "PinSelection"}]
       95 GETUPVAL                         R20 10
       96 LOADK                            R21 K29 ["ImageLabel"]
       97 DUPTABLE                         R22 K35 [{["BackgroundTransparency"] = 1, ["LayoutOrder"], ["Size"], ["Image"], ["ImageTransparency"], ["ImageColor3"]}]
       98 MOVE                             R23 R11
       99 CALL                             R23 0 1
      100 SETTABLEKS                       R23 R22 K13 ["LayoutOrder"]
      102 GETIMPORT                        R23 K38 [UDim2.fromOffset]
      104 GETTABLEKS                       R24 R10 K14 ["Size"]
      106 GETTABLEKS                       R24 R24 K39 ["Size_400"]
      108 GETTABLEKS                       R25 R10 K14 ["Size"]
      110 GETTABLEKS                       R25 R25 K39 ["Size_400"]
      112 CALL                             R23 2 1
      113 SETTABLEKS                       R23 R22 K14 ["Size"]
      115 GETTABLEKS                       R23 R8 K40 ["image"]
      117 SETTABLEKS                       R23 R22 K32 ["Image"]
      119 GETTABLEKS                       R23 R8 K41 ["transparency"]
      121 SETTABLEKS                       R23 R22 K33 ["ImageTransparency"]
      123 GETTABLEKS                       R23 R8 K42 ["color3"]
      125 SETTABLEKS                       R23 R22 K34 ["ImageColor3"]
      127 CALL                             R20 2 1
      128 SETTABLEKS                       R20 R19 K25 ["Icon"]
      130 GETUPVAL                         R20 10
      131 GETUPVAL                         R21 11
      132 DUPTABLE                         R22 K44 [{["tag"] = "size-0-full fill", ["LayoutOrder"]}]
      133 MOVE                             R23 R11
      134 CALL                             R23 0 1
      135 SETTABLEKS                       R23 R22 K13 ["LayoutOrder"]
      137 DUPTABLE                         R23 K46 [{"NameEditor"}]
      138 GETUPVAL                         R24 10
      139 GETUPVAL                         R25 12
      140 DUPTABLE                         R26 K54 [{"text", "readonly", "editText", "focusBehavior", "variant", "AnchorPoint", "Position"}]
      141 SETTABLEKS                       R6 R26 K47 ["text"]
      143 JUMPIFEQKN                       R5 K55 [0] ; [+2]
      145 LOADB                            R27 0 +1
      146 LOADB                            R27 1
      147 SETTABLEKS                       R27 R26 K48 ["readonly"]
      149 SETTABLEKS                       R9 R26 K49 ["editText"]
      151 JUMPIFNOT                        R4 ; [+11]
      152 GETTABLEKS                       R28 R4 K7 ["parts"]
      154 GETTABLEKS                       R28 R28 K8 ["value"]
      156 GETTABLEKS                       R28 R28 K9 ["multiple"]
      158 JUMPIF                           R28 ; [+4]
      159 GETUPVAL                         R27 13
      160 GETTABLEKS                       R27 R27 K56 ["Highlight"]
      162 JUMP                             ; [+3]
      163 GETUPVAL                         R27 13
      164 GETTABLEKS                       R27 R27 K57 ["Clear"]
      166 SETTABLEKS                       R27 R26 K50 ["focusBehavior"]
      168 GETUPVAL                         R27 14
      169 GETTABLEKS                       R27 R27 K58 ["Utility"]
      171 SETTABLEKS                       R27 R26 K51 ["variant"]
      173 GETIMPORT                        R27 K61 [Vector2.new]
      175 LOADN                            R28 0
      176 LOADK                            R29 K62 [0.5]
      177 CALL                             R27 2 1
      178 SETTABLEKS                       R27 R26 K52 ["AnchorPoint"]
      180 GETIMPORT                        R27 K64 [UDim2.fromScale]
      182 LOADN                            R28 0
      183 LOADK                            R29 K62 [0.5]
      184 CALL                             R27 2 1
      185 SETTABLEKS                       R27 R26 K53 ["Position"]
      187 CALL                             R24 2 1
      188 SETTABLEKS                       R24 R23 K45 ["NameEditor"]
      190 CALL                             R20 3 1
      191 SETTABLEKS                       R20 R19 K26 ["NameContainer"]
      193 GETUPVAL                         R20 15
      194 JUMPIFNOT                        R20 ; [+12]
      195 GETUPVAL                         R20 10
      196 GETUPVAL                         R21 16
      197 DUPTABLE                         R22 K65 [{"session", "LayoutOrder"}]
      198 GETTABLEKS                       R23 R0 K1 ["session"]
      200 SETTABLEKS                       R23 R22 K1 ["session"]
      202 MOVE                             R23 R11
      203 CALL                             R23 0 1
      204 SETTABLEKS                       R23 R22 K13 ["LayoutOrder"]
      206 CALL                             R20 2 1
      207 SETTABLEKS                       R20 R19 K27 ["PinSelection"]
      209 CALL                             R16 3 1
      210 SETTABLEKS                       R16 R15 K20 ["Content"]
      212 GETUPVAL                         R16 10
      213 GETUPVAL                         R17 11
      214 DUPTABLE                         R18 K68 [{["tag"] = "anchor-bottom-center", ["LayoutOrder"], ["Position"], ["Size"], ["backgroundStyle"]}]
      215 MOVE                             R19 R11
      216 CALL                             R19 0 1
      217 SETTABLEKS                       R19 R18 K13 ["LayoutOrder"]
      219 GETIMPORT                        R19 K69 [UDim2.new]
      221 LOADK                            R20 K62 [0.5]
      222 LOADN                            R21 0
      223 LOADN                            R22 1
      224 GETTABLEKS                       R24 R10 K70 ["Padding"]
      226 GETTABLEKS                       R24 R24 K71 ["XXSmall"]
      228 MINUS                            R23 R24
      229 CALL                             R19 4 1
      230 SETTABLEKS                       R19 R18 K53 ["Position"]
      232 GETIMPORT                        R19 K69 [UDim2.new]
      234 LOADN                            R20 1
      235 LOADN                            R21 0
      236 LOADN                            R22 0
      237 GETTABLEKS                       R23 R10 K72 ["Stroke"]
      239 GETTABLEKS                       R23 R23 K73 ["Standard"]
      241 CALL                             R19 4 1
      242 SETTABLEKS                       R19 R18 K14 ["Size"]
      244 GETTABLEKS                       R19 R10 K74 ["Color"]
      246 GETTABLEKS                       R19 R19 K72 ["Stroke"]
      248 GETTABLEKS                       R19 R19 K75 ["Default"]
      250 SETTABLEKS                       R19 R18 K67 ["backgroundStyle"]
      252 CALL                             R16 2 1
      253 SETTABLEKS                       R16 R15 K21 ["Underline"]
      255 CALL                             R12 3 -1
      256 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["EditorTextbox"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Util"]
       18 GETTABLEKS                       R3 R3 K9 ["findProperty"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Parent"]
       25 GETTABLEKS                       R4 R4 K11 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K8 ["Util"]
       32 GETTABLEKS                       R5 R5 K12 ["Observable"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K6 ["Components"]
       39 GETTABLEKS                       R6 R6 K13 ["PinSelectionButton"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K14 ["PropertyInteraction"]
       46 GETTABLEKS                       R7 R7 K15 ["PropertyId"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K16 ["PropertyTypes"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R9 R0 K10 ["Parent"]
       58 GETTABLEKS                       R9 R9 K17 ["React"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K5 [require]
       63 GETTABLEKS                       R10 R0 K10 ["Parent"]
       65 GETTABLEKS                       R10 R10 K18 ["ReactUtils"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K5 [require]
       70 GETTABLEKS                       R11 R0 K19 ["RpcTypes"]
       72 CALL                             R10 1 1
       73 GETIMPORT                        R11 K5 [require]
       75 GETTABLEKS                       R12 R0 K10 ["Parent"]
       77 GETTABLEKS                       R12 R12 K20 ["SignalsReact"]
       79 CALL                             R11 1 1
       80 GETIMPORT                        R12 K5 [require]
       82 GETTABLEKS                       R13 R0 K21 ["Hooks"]
       84 GETTABLEKS                       R13 R13 K22 ["useEditValue"]
       86 CALL                             R12 1 1
       87 GETIMPORT                        R13 K5 [require]
       89 GETTABLEKS                       R14 R0 K21 ["Hooks"]
       91 GETTABLEKS                       R14 R14 K23 ["useStyledClassIcon"]
       93 CALL                             R13 1 1
       94 GETIMPORT                        R14 K5 [require]
       96 GETTABLEKS                       R15 R0 K24 ["Flags"]
       98 GETTABLEKS                       R15 R15 K25 ["FFlagPropertiesPinSelection"]
      100 CALL                             R14 1 1
      101 GETTABLEKS                       R15 R3 K26 ["Enums"]
      103 GETTABLEKS                       R15 R15 K27 ["InputFocusBehavior"]
      105 GETTABLEKS                       R16 R3 K26 ["Enums"]
      107 GETTABLEKS                       R16 R16 K28 ["InputVariant"]
      109 GETTABLEKS                       R17 R3 K29 ["View"]
      111 GETTABLEKS                       R18 R9 K30 ["createNextOrder"]
      113 GETTABLEKS                       R19 R8 K31 ["createElement"]
      115 GETTABLEKS                       R20 R3 K21 ["Hooks"]
      117 GETTABLEKS                       R20 R20 K32 ["useTokens"]
      119 GETTABLEKS                       R21 R6 K33 ["fromClass"]
      121 LOADK                            R22 K34 ["Name"]
      122 LOADK                            R23 K35 ["Instance"]
      123 LOADK                            R24 K36 ["Property"]
      124 CALL                             R21 3 1
      125 GETTABLEKS                       R22 R6 K33 ["fromClass"]
      127 LOADK                            R23 K37 ["Self"]
      128 LOADK                            R24 K35 ["Instance"]
      129 LOADK                            R25 K38 ["Virtual"]
      130 CALL                             R22 3 1
      131 DUPCLOSURE                       R23 K39 [PROTO_0]
      132 DUPCLOSURE                       R24 K40 [PROTO_3]
      133 CAPTURE                          VAL R4
      134 CAPTURE                          VAL R11
      135 CAPTURE                          VAL R2
      136 CAPTURE                          VAL R22
      137 CAPTURE                          VAL R21
      138 CAPTURE                          VAL R13
      139 CAPTURE                          VAL R8
      140 CAPTURE                          VAL R12
      141 CAPTURE                          VAL R20
      142 CAPTURE                          VAL R18
      143 CAPTURE                          VAL R19
      144 CAPTURE                          VAL R17
      145 CAPTURE                          VAL R1
      146 CAPTURE                          VAL R15
      147 CAPTURE                          VAL R16
      148 CAPTURE                          VAL R14
      149 CAPTURE                          VAL R5
      150 GETTABLEKS                       R25 R8 K41 ["memo"]
      152 MOVE                             R26 R24
      153 CALL                             R25 1 -1
      154 RETURN                           R25 -1
