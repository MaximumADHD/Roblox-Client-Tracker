PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onHover"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["anchor"]
        6 GETTABLEKS                       R2 R2 K2 ["GuiState"]
        8 GETIMPORT                        R3 K5 [Enum.GuiState.Hover]
       10 JUMPIFEQ                         R2 R3 ; [+2]
       12 LOADB                            R1 0 +1
       13 LOADB                            R1 1
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFEQKNIL                     R0 ; [+7]
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K0 ["current"]
        8 NAMECALL                         R0 R0 K1 ["Disconnect"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["anchor"]
        3 JUMPIFEQKNIL                     R0 ; [+32]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["anchor"]
        8 FASTCALL1                        TYPEOF R1 ; [+2]
        9 GETIMPORT                        R0 K2 [typeof]
       11 CALL                             R0 1 1
       12 JUMPIFEQKS                       R0 K3 ["Instance"] ; [+7]
       14 GETUPVAL                         R0 1
       15 LOADK                            R2 K4 ["MeasurableRef cannot be an anchor for the tooltip"]
       16 NAMECALL                         R0 R0 K5 ["warning"]
       18 CALL                             R0 2 0
       19 RETURN                           R0 0
       20 GETUPVAL                         R0 2
       21 GETUPVAL                         R1 0
       22 GETTABLEKS                       R1 R1 K0 ["anchor"]
       24 LOADK                            R3 K6 ["GuiState"]
       25 NAMECALL                         R1 R1 K7 ["GetPropertyChangedSignal"]
       27 CALL                             R1 2 1
       28 NEWCLOSURE                       R3 P0
       29 CAPTURE                          UPVAL U3
       30 CAPTURE                          UPVAL U0
       31 NAMECALL                         R1 R1 K8 ["Connect"]
       33 CALL                             R1 2 1
       34 SETTABLEKS                       R1 R0 K9 ["current"]
       36 NEWCLOSURE                       R0 P1
       37 CAPTURE                          UPVAL U2
       38 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["useRef"]
        8 LOADNIL                          R3
        9 CALL                             R2 1 1
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K2 ["useEffect"]
       13 NEWCLOSURE                       R4 P0
       14 CAPTURE                          VAL R1
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          VAL R2
       17 CAPTURE                          VAL R0
       18 NEWTABLE                         R5 0 2
       20 GETTABLEKS                       R6 R1 K3 ["anchor"]
       22 GETTABLEKS                       R7 R0 K4 ["onHover"]
       24 SETLIST                          R5 R6 2 [1]
       26 CALL                             R3 2 0
       27 GETUPVAL                         R3 0
       28 GETTABLEKS                       R3 R3 K5 ["createElement"]
       30 GETUPVAL                         R4 3
       31 GETTABLEKS                       R4 R4 K6 ["Anchor"]
       33 GETUPVAL                         R5 4
       34 MOVE                             R6 R0
       35 NEWTABLE                         R7 0 0
       37 CALL                             R5 2 1
       38 GETTABLEKS                       R6 R0 K7 ["children"]
       40 CALL                             R3 3 -1
       41 RETURN                           R3 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["shortcut"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+3]
        5 LOADNIL                          R0
        6 RETURN                           R0 1
        7 LOADK                            R0 K1 [""]
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K0 ["shortcut"]
       11 LOADNIL                          R2
       12 LOADNIL                          R3
       13 FORGPREP                         R1
       14 GETUPVAL                         R6 1
       15 MOVE                             R8 R5
       16 NAMECALL                         R6 R6 K2 ["GetStringForKeyCode"]
       18 CALL                             R6 2 1
       19 JUMPIFEQKNIL                     R6 ; [+3]
       21 JUMPIFNOTEQKS                    R6 K1 [""] ; [+3]
       23 GETTABLEKS                       R6 R5 K3 ["Name"]
       25 LOADN                            R7 1
       26 JUMPIFNOTLT                      R7 R4 ; [+4]
       28 MOVE                             R7 R0
       29 LOADK                            R8 K4 [" + "]
       30 CONCAT                           R0 R7 R8
       31 MOVE                             R7 R0
       32 MOVE                             R8 R6
       33 CONCAT                           R0 R7 R8
       34 FORGLOOP                         R1 2 ; [-21]
       36 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 CALL                             R1 2 1
        4 GETUPVAL                         R2 2
        5 GETTABLEKS                       R2 R2 K0 ["useState"]
        7 LOADB                            R3 0
        8 CALL                             R2 1 2
        9 GETUPVAL                         R4 3
       10 CALL                             R4 0 1
       11 GETUPVAL                         R5 4
       12 LOADN                            R6 64
       13 CALL                             R5 1 1
       14 GETUPVAL                         R6 2
       15 GETTABLEKS                       R6 R6 K1 ["useMemo"]
       17 NEWCLOSURE                       R7 P0
       18 CAPTURE                          VAL R1
       19 CAPTURE                          UPVAL U5
       20 NEWTABLE                         R8 0 1
       22 GETTABLEKS                       R9 R1 K2 ["shortcut"]
       24 SETLIST                          R8 R9 1 [1]
       26 CALL                             R6 2 1
       27 GETUPVAL                         R7 2
       28 GETTABLEKS                       R7 R7 K3 ["createElement"]
       30 GETUPVAL                         R8 6
       31 GETTABLEKS                       R8 R8 K4 ["Root"]
       33 DUPTABLE                         R9 K7 [{"isOpen", "testId"}]
       34 SETTABLEKS                       R2 R9 K5 ["isOpen"]
       36 GETTABLEKS                       R10 R1 K6 ["testId"]
       38 SETTABLEKS                       R10 R9 K6 ["testId"]
       40 DUPTABLE                         R10 K10 [{"Anchor", "Content"}]
       41 GETUPVAL                         R11 2
       42 GETTABLEKS                       R11 R11 K3 ["createElement"]
       44 GETUPVAL                         R12 7
       45 GETUPVAL                         R13 8
       46 MOVE                             R14 R1
       47 DUPTABLE                         R15 K12 [{"onHover"}]
       48 SETTABLEKS                       R3 R15 K11 ["onHover"]
       50 CALL                             R13 2 1
       51 GETTABLEKS                       R14 R1 K13 ["children"]
       53 CALL                             R11 3 1
       54 SETTABLEKS                       R11 R10 K8 ["Anchor"]
       56 GETUPVAL                         R11 2
       57 GETTABLEKS                       R11 R11 K3 ["createElement"]
       59 GETUPVAL                         R12 6
       60 GETTABLEKS                       R12 R12 K9 ["Content"]
       62 DUPTABLE                         R13 K20 [{"hasArrow", "align", "side", "radius", "backgroundStyle", "selectionGroup"}]
       63 LOADB                            R14 0
       64 SETTABLEKS                       R14 R13 K14 ["hasArrow"]
       66 GETTABLEKS                       R14 R1 K15 ["align"]
       68 SETTABLEKS                       R14 R13 K15 ["align"]
       70 DUPTABLE                         R14 K23 [{"position", "offset"}]
       71 GETTABLEKS                       R15 R1 K16 ["side"]
       73 SETTABLEKS                       R15 R14 K21 ["position"]
       75 GETTABLEKS                       R15 R4 K24 ["Size"]
       77 GETTABLEKS                       R15 R15 K25 ["Size_200"]
       79 SETTABLEKS                       R15 R14 K22 ["offset"]
       81 SETTABLEKS                       R14 R13 K16 ["side"]
       83 GETUPVAL                         R14 9
       84 GETTABLEKS                       R14 R14 K26 ["Small"]
       86 SETTABLEKS                       R14 R13 K17 ["radius"]
       88 GETTABLEKS                       R14 R4 K27 ["Inverse"]
       90 GETTABLEKS                       R14 R14 K28 ["Surface"]
       92 GETTABLEKS                       R14 R14 K29 ["Surface_0"]
       94 SETTABLEKS                       R14 R13 K18 ["backgroundStyle"]
       96 LOADB                            R14 0
       97 SETTABLEKS                       R14 R13 K19 ["selectionGroup"]
       99 GETUPVAL                         R14 2
      100 GETTABLEKS                       R14 R14 K3 ["createElement"]
      102 GETUPVAL                         R15 10
      103 DUPTABLE                         R16 K32 [{"tag", "sizeConstraint"}]
      104 NEWTABLE                         R17 4 0
      106 LOADB                            R18 1
      107 SETTABLEKS                       R18 R17 K33 ["col gap-xsmall auto-xy"]
      109 GETTABLEKS                       R19 R1 K34 ["text"]
      111 JUMPIFNOTEQKNIL                  R19 ; [+2]
      113 LOADB                            R18 0 +1
      114 LOADB                            R18 1
      115 SETTABLEKS                       R18 R17 K35 ["padding-x-medium padding-y-small"]
      117 GETTABLEKS                       R19 R1 K34 ["text"]
      119 JUMPIFEQKNIL                     R19 ; [+2]
      121 LOADB                            R18 0 +1
      122 LOADB                            R18 1
      123 SETTABLEKS                       R18 R17 K36 ["padding-x-small padding-y-xsmall"]
      125 SETTABLEKS                       R17 R16 K30 ["tag"]
      127 DUPTABLE                         R17 K38 [{"MaxSize"}]
      128 GETIMPORT                        R18 K41 [Vector2.new]
      130 MOVE                             R19 R5
      131 LOADK                            R20 K42 [∞]
      132 CALL                             R18 2 1
      133 SETTABLEKS                       R18 R17 K37 ["MaxSize"]
      135 SETTABLEKS                       R17 R16 K31 ["sizeConstraint"]
      137 DUPTABLE                         R17 K45 [{"Header", "Text"}]
      138 GETTABLEKS                       R19 R1 K46 ["title"]
      140 JUMPIFNOTEQKS                    R19 K47 [""] ; [+4]
      142 GETTABLEKS                       R19 R1 K2 ["shortcut"]
      144 JUMPIFNOT                        R19 ; [+77]
      145 GETUPVAL                         R18 2
      146 GETTABLEKS                       R18 R18 K3 ["createElement"]
      148 GETUPVAL                         R19 10
      149 DUPTABLE                         R20 K49 [{"LayoutOrder", "tag"}]
      150 LOADN                            R21 1
      151 SETTABLEKS                       R21 R20 K48 ["LayoutOrder"]
      153 LOADK                            R21 K50 ["row flex-between gap-small size-full-0 auto-y"]
      154 SETTABLEKS                       R21 R20 K30 ["tag"]
      156 DUPTABLE                         R21 K53 [{"Title", "Shortcut"}]
      157 GETTABLEKS                       R23 R1 K46 ["title"]
      159 JUMPIFEQKS                       R23 K47 [""] ; [+27]
      161 GETUPVAL                         R22 2
      162 GETTABLEKS                       R22 R22 K3 ["createElement"]
      164 GETUPVAL                         R23 11
      165 DUPTABLE                         R24 K54 [{"LayoutOrder", "Text", "tag", "testId"}]
      166 LOADN                            R25 1
      167 SETTABLEKS                       R25 R24 K48 ["LayoutOrder"]
      169 GETTABLEKS                       R25 R1 K46 ["title"]
      171 SETTABLEKS                       R25 R24 K44 ["Text"]
      173 LOADK                            R25 K55 ["shrink auto-xy text-title-small text-truncate-end content-inverse-emphasis"]
      174 SETTABLEKS                       R25 R24 K30 ["tag"]
      176 LOADK                            R26 K56 ["%*--title"]
      177 GETTABLEKS                       R28 R1 K6 ["testId"]
      179 NAMECALL                         R26 R26 K57 ["format"]
      181 CALL                             R26 2 1
      182 MOVE                             R25 R26
      183 SETTABLEKS                       R25 R24 K6 ["testId"]
      185 CALL                             R22 2 1
      186 JUMP                             ; [+1]
      187 LOADNIL                          R22
      188 SETTABLEKS                       R22 R21 K51 ["Title"]
      190 GETTABLEKS                       R23 R1 K2 ["shortcut"]
      192 JUMPIFNOT                        R23 ; [+24]
      193 GETUPVAL                         R22 2
      194 GETTABLEKS                       R22 R22 K3 ["createElement"]
      196 GETUPVAL                         R23 11
      197 DUPTABLE                         R24 K54 [{"LayoutOrder", "Text", "tag", "testId"}]
      198 LOADN                            R25 2
      199 SETTABLEKS                       R25 R24 K48 ["LayoutOrder"]
      201 SETTABLEKS                       R6 R24 K44 ["Text"]
      203 LOADK                            R25 K58 ["auto-xy text-body-small content-inverse-muted"]
      204 SETTABLEKS                       R25 R24 K30 ["tag"]
      206 LOADK                            R26 K59 ["%*--shortcut"]
      207 GETTABLEKS                       R28 R1 K6 ["testId"]
      209 NAMECALL                         R26 R26 K57 ["format"]
      211 CALL                             R26 2 1
      212 MOVE                             R25 R26
      213 SETTABLEKS                       R25 R24 K6 ["testId"]
      215 CALL                             R22 2 1
      216 JUMP                             ; [+1]
      217 LOADNIL                          R22
      218 SETTABLEKS                       R22 R21 K52 ["Shortcut"]
      220 CALL                             R18 3 1
      221 JUMP                             ; [+1]
      222 LOADNIL                          R18
      223 SETTABLEKS                       R18 R17 K43 ["Header"]
      225 GETTABLEKS                       R19 R1 K34 ["text"]
      227 JUMPIFNOT                        R19 ; [+30]
      228 GETTABLEKS                       R19 R1 K34 ["text"]
      230 JUMPIFEQKS                       R19 K47 [""] ; [+27]
      232 GETUPVAL                         R18 2
      233 GETTABLEKS                       R18 R18 K3 ["createElement"]
      235 GETUPVAL                         R19 11
      236 DUPTABLE                         R20 K54 [{"LayoutOrder", "Text", "tag", "testId"}]
      237 LOADN                            R21 2
      238 SETTABLEKS                       R21 R20 K48 ["LayoutOrder"]
      240 GETTABLEKS                       R21 R1 K34 ["text"]
      242 SETTABLEKS                       R21 R20 K44 ["Text"]
      244 LOADK                            R21 K60 ["auto-xy text-body-small text-wrap text-align-x-left content-inverse-default"]
      245 SETTABLEKS                       R21 R20 K30 ["tag"]
      247 LOADK                            R22 K61 ["%*--text"]
      248 GETTABLEKS                       R24 R1 K6 ["testId"]
      250 NAMECALL                         R22 R22 K57 ["format"]
      252 CALL                             R22 2 1
      253 MOVE                             R21 R22
      254 SETTABLEKS                       R21 R20 K6 ["testId"]
      256 CALL                             R18 2 1
      257 JUMP                             ; [+1]
      258 LOADNIL                          R18
      259 SETTABLEKS                       R18 R17 K44 ["Text"]
      261 CALL                             R14 3 -1
      262 CALL                             R11 -1 1
      263 SETTABLEKS                       R11 R10 K9 ["Content"]
      265 CALL                             R7 3 -1
      266 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Utility"]
       18 GETTABLEKS                       R4 R4 K9 ["Wrappers"]
       20 CALL                             R3 1 1
       21 GETTABLEKS                       R3 R3 K10 ["Services"]
       23 GETTABLEKS                       R3 R3 K11 ["UserInputService"]
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R5 R0 K8 ["Utility"]
       29 GETTABLEKS                       R5 R5 K12 ["Logger"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K6 [require]
       34 GETTABLEKS                       R6 R0 K13 ["Enums"]
       36 GETTABLEKS                       R6 R6 K14 ["PopoverAlign"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K6 [require]
       41 GETTABLEKS                       R7 R0 K15 ["Components"]
       43 GETTABLEKS                       R7 R7 K16 ["Popover"]
       45 GETTABLEKS                       R7 R7 K17 ["PopoverContext"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K6 [require]
       50 GETTABLEKS                       R8 R0 K13 ["Enums"]
       52 GETTABLEKS                       R8 R8 K18 ["PopoverSide"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K6 [require]
       57 GETTABLEKS                       R9 R0 K13 ["Enums"]
       59 GETTABLEKS                       R9 R9 K19 ["Radius"]
       61 CALL                             R8 1 1
       62 GETIMPORT                        R9 K6 [require]
       64 GETTABLEKS                       R10 R0 K15 ["Components"]
       66 GETTABLEKS                       R10 R10 K20 ["Text"]
       68 CALL                             R9 1 1
       69 GETIMPORT                        R10 K6 [require]
       71 GETTABLEKS                       R11 R0 K15 ["Components"]
       73 GETTABLEKS                       R11 R11 K21 ["Types"]
       75 CALL                             R10 1 1
       76 GETIMPORT                        R11 K6 [require]
       78 GETTABLEKS                       R12 R0 K15 ["Components"]
       80 GETTABLEKS                       R12 R12 K22 ["View"]
       82 CALL                             R11 1 1
       83 GETIMPORT                        R12 K6 [require]
       85 GETTABLEKS                       R13 R0 K8 ["Utility"]
       87 GETTABLEKS                       R13 R13 K23 ["useScaledValue"]
       89 CALL                             R12 1 1
       90 GETIMPORT                        R13 K6 [require]
       92 GETTABLEKS                       R14 R0 K24 ["Providers"]
       94 GETTABLEKS                       R14 R14 K25 ["Style"]
       96 GETTABLEKS                       R14 R14 K26 ["useTokens"]
       98 CALL                             R13 1 1
       99 GETIMPORT                        R14 K6 [require]
      101 GETTABLEKS                       R15 R0 K8 ["Utility"]
      103 GETTABLEKS                       R15 R15 K27 ["withCommonProps"]
      105 CALL                             R14 1 1
      106 GETIMPORT                        R15 K6 [require]
      108 GETTABLEKS                       R16 R0 K8 ["Utility"]
      110 GETTABLEKS                       R16 R16 K28 ["withDefaults"]
      112 CALL                             R15 1 1
      113 GETIMPORT                        R16 K6 [require]
      115 GETTABLEKS                       R17 R0 K15 ["Components"]
      117 GETTABLEKS                       R17 R17 K16 ["Popover"]
      119 CALL                             R16 1 1
      120 DUPTABLE                         R17 K32 [{"align", "side", "testId"}]
      121 GETTABLEKS                       R18 R5 K33 ["Start"]
      123 SETTABLEKS                       R18 R17 K29 ["align"]
      125 GETTABLEKS                       R18 R7 K34 ["Right"]
      127 SETTABLEKS                       R18 R17 K30 ["side"]
      129 LOADK                            R18 K35 ["--foundation-tooltip"]
      130 SETTABLEKS                       R18 R17 K31 ["testId"]
      132 DUPCLOSURE                       R18 K36 [PROTO_3]
      133 CAPTURE                          VAL R2
      134 CAPTURE                          VAL R6
      135 CAPTURE                          VAL R4
      136 CAPTURE                          VAL R16
      137 CAPTURE                          VAL R14
      138 DUPCLOSURE                       R19 K37 [PROTO_5]
      139 CAPTURE                          VAL R15
      140 CAPTURE                          VAL R17
      141 CAPTURE                          VAL R2
      142 CAPTURE                          VAL R13
      143 CAPTURE                          VAL R12
      144 CAPTURE                          VAL R3
      145 CAPTURE                          VAL R16
      146 CAPTURE                          VAL R18
      147 CAPTURE                          VAL R14
      148 CAPTURE                          VAL R8
      149 CAPTURE                          VAL R11
      150 CAPTURE                          VAL R9
      151 GETTABLEKS                       R20 R2 K38 ["memo"]
      153 MOVE                             R21 R19
      154 CALL                             R20 1 -1
      155 RETURN                           R20 -1
