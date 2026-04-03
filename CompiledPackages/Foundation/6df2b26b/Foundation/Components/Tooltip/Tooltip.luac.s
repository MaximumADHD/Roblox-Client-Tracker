PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onHover"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K1 ["anchor"]
        6 GETTABLEKS                       R2 R3 K2 ["GuiState"]
        8 GETIMPORT                        R3 K5 [Enum.GuiState.Hover]
       10 JUMPIFEQ                         R2 R3 ; [+2]
       12 LOADB                            R1 0 +1
       13 LOADB                            R1 1
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFEQKNIL                     R0 ; [+7]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R0 R1 K0 ["current"]
        8 NAMECALL                         R0 R0 K1 ["Disconnect"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["anchor"]
        3 JUMPIFEQKNIL                     R0 ; [+32]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R1 R2 K0 ["anchor"]
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
       21 GETUPVAL                         R2 0
       22 GETTABLEKS                       R1 R2 K0 ["anchor"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K1 ["useRef"]
        8 LOADNIL                          R3
        9 CALL                             R2 1 1
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R3 R4 K2 ["useEffect"]
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
       27 GETUPVAL                         R4 0
       28 GETTABLEKS                       R3 R4 K5 ["createElement"]
       30 GETUPVAL                         R5 3
       31 GETTABLEKS                       R4 R5 K6 ["Anchor"]
       33 GETUPVAL                         R5 4
       34 MOVE                             R6 R0
       35 NEWTABLE                         R7 0 0
       37 CALL                             R5 2 1
       38 GETTABLEKS                       R6 R0 K7 ["children"]
       40 CALL                             R3 3 -1
       41 RETURN                           R3 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["shortcut"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+3]
        5 LOADNIL                          R0
        6 RETURN                           R0 1
        7 LOADK                            R0 K1 [""]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R1 R4 K0 ["shortcut"]
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
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R2 R3 K0 ["useState"]
        7 LOADB                            R3 0
        8 CALL                             R2 1 2
        9 GETUPVAL                         R4 3
       10 CALL                             R4 0 1
       11 GETUPVAL                         R5 4
       12 LOADN                            R6 64
       13 CALL                             R5 1 1
       14 GETUPVAL                         R7 2
       15 GETTABLEKS                       R6 R7 K1 ["useMemo"]
       17 NEWCLOSURE                       R7 P0
       18 CAPTURE                          VAL R1
       19 CAPTURE                          UPVAL U5
       20 NEWTABLE                         R8 0 1
       22 GETTABLEKS                       R9 R1 K2 ["shortcut"]
       24 SETLIST                          R8 R9 1 [1]
       26 CALL                             R6 2 1
       27 GETUPVAL                         R8 2
       28 GETTABLEKS                       R7 R8 K3 ["createElement"]
       30 GETUPVAL                         R9 6
       31 GETTABLEKS                       R8 R9 K4 ["Root"]
       33 DUPTABLE                         R9 K7 [{"isOpen", "testId"}]
       34 SETTABLEKS                       R2 R9 K5 ["isOpen"]
       36 GETTABLEKS                       R10 R1 K6 ["testId"]
       38 SETTABLEKS                       R10 R9 K6 ["testId"]
       40 DUPTABLE                         R10 K10 [{"Anchor", "Content"}]
       41 GETUPVAL                         R12 2
       42 GETTABLEKS                       R11 R12 K3 ["createElement"]
       44 GETUPVAL                         R12 7
       45 GETUPVAL                         R13 8
       46 MOVE                             R14 R1
       47 DUPTABLE                         R15 K12 [{"onHover"}]
       48 SETTABLEKS                       R3 R15 K11 ["onHover"]
       50 CALL                             R13 2 1
       51 GETTABLEKS                       R14 R1 K13 ["children"]
       53 CALL                             R11 3 1
       54 SETTABLEKS                       R11 R10 K8 ["Anchor"]
       56 GETUPVAL                         R12 2
       57 GETTABLEKS                       R11 R12 K3 ["createElement"]
       59 GETUPVAL                         R13 6
       60 GETTABLEKS                       R12 R13 K9 ["Content"]
       62 DUPTABLE                         R13 K20 [{"hasArrow", "align", "side", "radius", "backgroundStyle", "selectionGroup"}]
       63 LOADB                            R14 0
       64 SETTABLEKS                       R14 R13 K14 ["hasArrow"]
       66 GETTABLEKS                       R14 R1 K15 ["align"]
       68 SETTABLEKS                       R14 R13 K15 ["align"]
       70 DUPTABLE                         R14 K23 [{"position", "offset"}]
       71 GETTABLEKS                       R15 R1 K16 ["side"]
       73 SETTABLEKS                       R15 R14 K21 ["position"]
       75 GETTABLEKS                       R16 R4 K24 ["Size"]
       77 GETTABLEKS                       R15 R16 K25 ["Size_200"]
       79 SETTABLEKS                       R15 R14 K22 ["offset"]
       81 SETTABLEKS                       R14 R13 K16 ["side"]
       83 GETUPVAL                         R15 9
       84 GETTABLEKS                       R14 R15 K26 ["Small"]
       86 SETTABLEKS                       R14 R13 K17 ["radius"]
       88 GETTABLEKS                       R16 R4 K27 ["Inverse"]
       90 GETTABLEKS                       R15 R16 K28 ["Surface"]
       92 GETTABLEKS                       R14 R15 K29 ["Surface_0"]
       94 SETTABLEKS                       R14 R13 K18 ["backgroundStyle"]
       96 LOADB                            R14 0
       97 SETTABLEKS                       R14 R13 K19 ["selectionGroup"]
       99 GETUPVAL                         R15 2
      100 GETTABLEKS                       R14 R15 K3 ["createElement"]
      102 GETUPVAL                         R15 10
      103 DUPTABLE                         R16 K32 [{"tag", "sizeConstraint"}]
      104 NEWTABLE                         R17 4 0
      106 LOADB                            R18 1
      107 SETTABLEKS                       R18 R17 K33 ["col gap-xsmall auto-xy"]
      109 GETTABLEKS                       R19 R1 K34 ["text"]
      111 JUMPIFNOTEQKNIL                  R19 ; [+2]
      113 LOADB                            R18 0 +1
      114 LOADB                            R18 1
      115 SETTABLEKS                       R18 R17 K35 ["padding-y-small padding-x-medium"]
      117 GETTABLEKS                       R19 R1 K34 ["text"]
      119 JUMPIFEQKNIL                     R19 ; [+2]
      121 LOADB                            R18 0 +1
      122 LOADB                            R18 1
      123 SETTABLEKS                       R18 R17 K36 ["padding-y-xsmall padding-x-small"]
      125 SETTABLEKS                       R17 R16 K30 ["tag"]
      127 DUPTABLE                         R17 K38 [{"MaxSize"}]
      128 GETIMPORT                        R18 K41 [Vector2.new]
      130 MOVE                             R19 R5
      131 LOADK                            R20 K42 [∞]
      132 CALL                             R18 2 1
      133 SETTABLEKS                       R18 R17 K37 ["MaxSize"]
      135 SETTABLEKS                       R17 R16 K31 ["sizeConstraint"]
      137 DUPTABLE                         R17 K45 [{"Header", "Text"}]
      138 GETUPVAL                         R19 2
      139 GETTABLEKS                       R18 R19 K3 ["createElement"]
      141 GETUPVAL                         R19 10
      142 DUPTABLE                         R20 K47 [{"LayoutOrder", "tag"}]
      143 LOADN                            R21 1
      144 SETTABLEKS                       R21 R20 K46 ["LayoutOrder"]
      146 LOADK                            R21 K48 ["row gap-small size-full-0 auto-y flex-between"]
      147 SETTABLEKS                       R21 R20 K30 ["tag"]
      149 DUPTABLE                         R21 K51 [{"Title", "Shortcut"}]
      150 GETUPVAL                         R23 2
      151 GETTABLEKS                       R22 R23 K3 ["createElement"]
      153 GETUPVAL                         R23 11
      154 DUPTABLE                         R24 K52 [{"LayoutOrder", "Text", "tag"}]
      155 LOADN                            R25 1
      156 SETTABLEKS                       R25 R24 K46 ["LayoutOrder"]
      158 GETTABLEKS                       R25 R1 K53 ["title"]
      160 SETTABLEKS                       R25 R24 K44 ["Text"]
      162 LOADK                            R25 K54 ["auto-xy text-title-small content-inverse-emphasis text-truncate-end shrink"]
      163 SETTABLEKS                       R25 R24 K30 ["tag"]
      165 CALL                             R22 2 1
      166 SETTABLEKS                       R22 R21 K49 ["Title"]
      168 GETTABLEKS                       R23 R1 K2 ["shortcut"]
      170 JUMPIFNOT                        R23 ; [+24]
      171 GETUPVAL                         R23 2
      172 GETTABLEKS                       R22 R23 K3 ["createElement"]
      174 GETUPVAL                         R23 11
      175 DUPTABLE                         R24 K55 [{"LayoutOrder", "Text", "tag", "testId"}]
      176 LOADN                            R25 2
      177 SETTABLEKS                       R25 R24 K46 ["LayoutOrder"]
      179 SETTABLEKS                       R6 R24 K44 ["Text"]
      181 LOADK                            R25 K56 ["auto-xy text-body-small content-inverse-muted"]
      182 SETTABLEKS                       R25 R24 K30 ["tag"]
      184 LOADK                            R26 K57 ["%*--shortcut"]
      185 GETTABLEKS                       R28 R1 K6 ["testId"]
      187 NAMECALL                         R26 R26 K58 ["format"]
      189 CALL                             R26 2 1
      190 MOVE                             R25 R26
      191 SETTABLEKS                       R25 R24 K6 ["testId"]
      193 CALL                             R22 2 1
      194 JUMP                             ; [+1]
      195 LOADNIL                          R22
      196 SETTABLEKS                       R22 R21 K50 ["Shortcut"]
      198 CALL                             R18 3 1
      199 SETTABLEKS                       R18 R17 K43 ["Header"]
      201 GETTABLEKS                       R19 R1 K34 ["text"]
      203 JUMPIFNOT                        R19 ; [+41]
      204 GETTABLEKS                       R19 R1 K34 ["text"]
      206 JUMPIFEQKS                       R19 K59 [""] ; [+38]
      208 GETUPVAL                         R19 2
      209 GETTABLEKS                       R18 R19 K3 ["createElement"]
      211 GETUPVAL                         R19 11
      212 DUPTABLE                         R20 K55 [{"LayoutOrder", "Text", "tag", "testId"}]
      213 LOADN                            R21 2
      214 SETTABLEKS                       R21 R20 K46 ["LayoutOrder"]
      216 GETTABLEKS                       R21 R1 K34 ["text"]
      218 SETTABLEKS                       R21 R20 K44 ["Text"]
      220 LOADK                            R22 K60 ["%* text-wrap text-align-x-left text-body-small content-inverse-default"]
      221 GETUPVAL                         R26 12
      222 GETTABLEKS                       R25 R26 K61 ["FoundationTooltipTextAutosize"]
      224 JUMPIFNOT                        R25 ; [+2]
      225 LOADK                            R24 K62 ["auto-xy"]
      226 JUMP                             ; [+1]
      227 LOADK                            R24 K63 ["size-full-0 auto-y"]
      228 NAMECALL                         R22 R22 K58 ["format"]
      230 CALL                             R22 2 1
      231 MOVE                             R21 R22
      232 SETTABLEKS                       R21 R20 K30 ["tag"]
      234 LOADK                            R22 K64 ["%*--text"]
      235 GETTABLEKS                       R24 R1 K6 ["testId"]
      237 NAMECALL                         R22 R22 K58 ["format"]
      239 CALL                             R22 2 1
      240 MOVE                             R21 R22
      241 SETTABLEKS                       R21 R20 K6 ["testId"]
      243 CALL                             R18 2 1
      244 JUMP                             ; [+1]
      245 LOADNIL                          R18
      246 SETTABLEKS                       R18 R17 K44 ["Text"]
      248 CALL                             R14 3 -1
      249 CALL                             R11 -1 1
      250 SETTABLEKS                       R11 R10 K9 ["Content"]
      252 CALL                             R7 3 -1
      253 RETURN                           R7 -1

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
       14 GETIMPORT                        R5 K6 [require]
       16 GETTABLEKS                       R7 R0 K8 ["Utility"]
       18 GETTABLEKS                       R6 R7 K9 ["Wrappers"]
       20 CALL                             R5 1 1
       21 GETTABLEKS                       R4 R5 K10 ["Services"]
       23 GETTABLEKS                       R3 R4 K11 ["UserInputService"]
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R6 R0 K12 ["Components"]
       29 GETTABLEKS                       R5 R6 K13 ["Types"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K6 [require]
       34 GETTABLEKS                       R7 R0 K12 ["Components"]
       36 GETTABLEKS                       R6 R7 K14 ["View"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K6 [require]
       41 GETTABLEKS                       R8 R0 K12 ["Components"]
       43 GETTABLEKS                       R7 R8 K15 ["Text"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K6 [require]
       48 GETTABLEKS                       R9 R0 K8 ["Utility"]
       50 GETTABLEKS                       R8 R9 K16 ["withDefaults"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K6 [require]
       55 GETTABLEKS                       R10 R0 K8 ["Utility"]
       57 GETTABLEKS                       R9 R10 K17 ["withCommonProps"]
       59 CALL                             R8 1 1
       60 GETIMPORT                        R9 K6 [require]
       62 GETTABLEKS                       R12 R0 K18 ["Providers"]
       64 GETTABLEKS                       R11 R12 K19 ["Style"]
       66 GETTABLEKS                       R10 R11 K20 ["useTokens"]
       68 CALL                             R9 1 1
       69 GETIMPORT                        R10 K6 [require]
       71 GETTABLEKS                       R12 R0 K21 ["Enums"]
       73 GETTABLEKS                       R11 R12 K22 ["PopoverSide"]
       75 CALL                             R10 1 1
       76 GETIMPORT                        R11 K6 [require]
       78 GETTABLEKS                       R13 R0 K21 ["Enums"]
       80 GETTABLEKS                       R12 R13 K23 ["PopoverAlign"]
       82 CALL                             R11 1 1
       83 GETIMPORT                        R12 K6 [require]
       85 GETTABLEKS                       R14 R0 K21 ["Enums"]
       87 GETTABLEKS                       R13 R14 K24 ["Radius"]
       89 CALL                             R12 1 1
       90 GETIMPORT                        R13 K6 [require]
       92 GETTABLEKS                       R16 R0 K12 ["Components"]
       94 GETTABLEKS                       R15 R16 K25 ["Popover"]
       96 GETTABLEKS                       R14 R15 K26 ["PopoverContext"]
       98 CALL                             R13 1 1
       99 GETIMPORT                        R14 K6 [require]
      101 GETTABLEKS                       R16 R0 K8 ["Utility"]
      103 GETTABLEKS                       R15 R16 K27 ["useScaledValue"]
      105 CALL                             R14 1 1
      106 GETIMPORT                        R15 K6 [require]
      108 GETTABLEKS                       R17 R0 K8 ["Utility"]
      110 GETTABLEKS                       R16 R17 K28 ["Logger"]
      112 CALL                             R15 1 1
      113 GETIMPORT                        R16 K6 [require]
      115 GETTABLEKS                       R18 R0 K8 ["Utility"]
      117 GETTABLEKS                       R17 R18 K29 ["Flags"]
      119 CALL                             R16 1 1
      120 GETIMPORT                        R17 K6 [require]
      122 GETTABLEKS                       R19 R0 K12 ["Components"]
      124 GETTABLEKS                       R18 R19 K25 ["Popover"]
      126 CALL                             R17 1 1
      127 DUPTABLE                         R18 K33 [{"align", "side", "testId"}]
      128 GETTABLEKS                       R19 R11 K34 ["Start"]
      130 SETTABLEKS                       R19 R18 K30 ["align"]
      132 GETTABLEKS                       R19 R10 K35 ["Right"]
      134 SETTABLEKS                       R19 R18 K31 ["side"]
      136 LOADK                            R19 K36 ["--foundation-tooltip"]
      137 SETTABLEKS                       R19 R18 K32 ["testId"]
      139 DUPCLOSURE                       R19 K37 [PROTO_3]
      140 CAPTURE                          VAL R2
      141 CAPTURE                          VAL R13
      142 CAPTURE                          VAL R15
      143 CAPTURE                          VAL R17
      144 CAPTURE                          VAL R8
      145 DUPCLOSURE                       R20 K38 [PROTO_5]
      146 CAPTURE                          VAL R7
      147 CAPTURE                          VAL R18
      148 CAPTURE                          VAL R2
      149 CAPTURE                          VAL R9
      150 CAPTURE                          VAL R14
      151 CAPTURE                          VAL R3
      152 CAPTURE                          VAL R17
      153 CAPTURE                          VAL R19
      154 CAPTURE                          VAL R8
      155 CAPTURE                          VAL R12
      156 CAPTURE                          VAL R5
      157 CAPTURE                          VAL R6
      158 CAPTURE                          VAL R16
      159 GETTABLEKS                       R21 R2 K39 ["memo"]
      161 MOVE                             R22 R20
      162 CALL                             R21 1 -1
      163 RETURN                           R21 -1
