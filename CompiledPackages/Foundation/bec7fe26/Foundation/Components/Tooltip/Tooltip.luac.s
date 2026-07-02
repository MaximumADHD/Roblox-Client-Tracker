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
       12 LOADN                            R6 320
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
       62 DUPTABLE                         R13 K21 [{["hasArrow"] = False, ["align"], ["side"], ["radius"], ["backgroundStyle"], ["selectionGroup"] = False}]
       63 GETTABLEKS                       R14 R1 K16 ["align"]
       65 SETTABLEKS                       R14 R13 K16 ["align"]
       67 DUPTABLE                         R14 K24 [{"position", "offset"}]
       68 GETTABLEKS                       R15 R1 K17 ["side"]
       70 SETTABLEKS                       R15 R14 K22 ["position"]
       72 GETTABLEKS                       R15 R4 K25 ["Size"]
       74 GETTABLEKS                       R15 R15 K26 ["Size_200"]
       76 SETTABLEKS                       R15 R14 K23 ["offset"]
       78 SETTABLEKS                       R14 R13 K17 ["side"]
       80 GETUPVAL                         R14 9
       81 GETTABLEKS                       R14 R14 K27 ["Small"]
       83 SETTABLEKS                       R14 R13 K18 ["radius"]
       85 GETTABLEKS                       R14 R4 K28 ["Inverse"]
       87 GETTABLEKS                       R14 R14 K29 ["Surface"]
       89 GETTABLEKS                       R14 R14 K30 ["Surface_0"]
       91 SETTABLEKS                       R14 R13 K19 ["backgroundStyle"]
       93 GETUPVAL                         R14 2
       94 GETTABLEKS                       R14 R14 K3 ["createElement"]
       96 GETUPVAL                         R15 10
       97 DUPTABLE                         R16 K33 [{"tag", "sizeConstraint"}]
       98 NEWTABLE                         R17 4 0
      100 LOADB                            R18 1
      101 SETTABLEKS                       R18 R17 K34 ["col gap-xsmall auto-xy"]
      103 GETTABLEKS                       R19 R1 K35 ["text"]
      105 JUMPIFNOTEQKNIL                  R19 ; [+2]
      107 LOADB                            R18 0 +1
      108 LOADB                            R18 1
      109 SETTABLEKS                       R18 R17 K36 ["padding-y-small padding-x-medium"]
      111 GETTABLEKS                       R19 R1 K35 ["text"]
      113 JUMPIFEQKNIL                     R19 ; [+2]
      115 LOADB                            R18 0 +1
      116 LOADB                            R18 1
      117 SETTABLEKS                       R18 R17 K37 ["padding-y-xsmall padding-x-small"]
      119 SETTABLEKS                       R17 R16 K31 ["tag"]
      121 DUPTABLE                         R17 K39 [{"MaxSize"}]
      122 GETIMPORT                        R18 K42 [Vector2.new]
      124 MOVE                             R19 R5
      125 LOADK                            R20 K43 [∞]
      126 CALL                             R18 2 1
      127 SETTABLEKS                       R18 R17 K38 ["MaxSize"]
      129 SETTABLEKS                       R17 R16 K32 ["sizeConstraint"]
      131 DUPTABLE                         R17 K46 [{"Header", "Text"}]
      132 GETUPVAL                         R18 2
      133 GETTABLEKS                       R18 R18 K3 ["createElement"]
      135 GETUPVAL                         R19 10
      136 DUPTABLE                         R20 K50 [{["LayoutOrder"] = 1, ["tag"] = "row gap-small size-full-0 auto-y flex-between"}]
      137 DUPTABLE                         R21 K53 [{"Title", "Shortcut"}]
      138 GETUPVAL                         R22 2
      139 GETTABLEKS                       R22 R22 K3 ["createElement"]
      141 GETUPVAL                         R23 11
      142 DUPTABLE                         R24 K55 [{["LayoutOrder"] = 1, ["Text"], ["tag"] = "auto-xy text-title-small content-inverse-emphasis text-truncate-end shrink"}]
      143 GETTABLEKS                       R25 R1 K56 ["title"]
      145 SETTABLEKS                       R25 R24 K45 ["Text"]
      147 CALL                             R22 2 1
      148 SETTABLEKS                       R22 R21 K51 ["Title"]
      150 GETTABLEKS                       R23 R1 K2 ["shortcut"]
      152 JUMPIFNOT                        R23 ; [+18]
      153 GETUPVAL                         R22 2
      154 GETTABLEKS                       R22 R22 K3 ["createElement"]
      156 GETUPVAL                         R23 11
      157 DUPTABLE                         R24 K59 [{["LayoutOrder"] = 2, ["Text"], ["tag"] = "auto-xy text-body-small content-inverse-muted", ["testId"]}]
      158 SETTABLEKS                       R6 R24 K45 ["Text"]
      160 LOADK                            R26 K60 ["%*--shortcut"]
      161 GETTABLEKS                       R28 R1 K6 ["testId"]
      163 NAMECALL                         R26 R26 K61 ["format"]
      165 CALL                             R26 2 1
      166 MOVE                             R25 R26
      167 SETTABLEKS                       R25 R24 K6 ["testId"]
      169 CALL                             R22 2 1
      170 JUMP                             ; [+1]
      171 LOADNIL                          R22
      172 SETTABLEKS                       R22 R21 K52 ["Shortcut"]
      174 CALL                             R18 3 1
      175 SETTABLEKS                       R18 R17 K44 ["Header"]
      177 GETTABLEKS                       R19 R1 K35 ["text"]
      179 JUMPIFNOT                        R19 ; [+38]
      180 GETTABLEKS                       R19 R1 K35 ["text"]
      182 JUMPIFEQKS                       R19 K62 [""] ; [+35]
      184 GETUPVAL                         R18 2
      185 GETTABLEKS                       R18 R18 K3 ["createElement"]
      187 GETUPVAL                         R19 11
      188 DUPTABLE                         R20 K63 [{["LayoutOrder"] = 2, ["Text"], ["tag"], ["testId"]}]
      189 GETTABLEKS                       R21 R1 K35 ["text"]
      191 SETTABLEKS                       R21 R20 K45 ["Text"]
      193 LOADK                            R22 K64 ["%* text-wrap text-align-x-left text-body-small content-inverse-default"]
      194 GETUPVAL                         R25 12
      195 GETTABLEKS                       R25 R25 K65 ["FoundationTooltipTextAutosize"]
      197 JUMPIFNOT                        R25 ; [+2]
      198 LOADK                            R24 K66 ["auto-xy"]
      199 JUMP                             ; [+1]
      200 LOADK                            R24 K67 ["size-full-0 auto-y"]
      201 NAMECALL                         R22 R22 K61 ["format"]
      203 CALL                             R22 2 1
      204 MOVE                             R21 R22
      205 SETTABLEKS                       R21 R20 K31 ["tag"]
      207 LOADK                            R22 K68 ["%*--text"]
      208 GETTABLEKS                       R24 R1 K6 ["testId"]
      210 NAMECALL                         R22 R22 K61 ["format"]
      212 CALL                             R22 2 1
      213 MOVE                             R21 R22
      214 SETTABLEKS                       R21 R20 K6 ["testId"]
      216 CALL                             R18 2 1
      217 JUMP                             ; [+1]
      218 LOADNIL                          R18
      219 SETTABLEKS                       R18 R17 K45 ["Text"]
      221 CALL                             R14 3 -1
      222 CALL                             R11 -1 1
      223 SETTABLEKS                       R11 R10 K9 ["Content"]
      225 CALL                             R7 3 -1
      226 RETURN                           R7 -1

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
       27 GETTABLEKS                       R5 R0 K12 ["Components"]
       29 GETTABLEKS                       R5 R5 K13 ["Types"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K6 [require]
       34 GETTABLEKS                       R6 R0 K12 ["Components"]
       36 GETTABLEKS                       R6 R6 K14 ["View"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K6 [require]
       41 GETTABLEKS                       R7 R0 K12 ["Components"]
       43 GETTABLEKS                       R7 R7 K15 ["Text"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K6 [require]
       48 GETTABLEKS                       R8 R0 K8 ["Utility"]
       50 GETTABLEKS                       R8 R8 K16 ["withDefaults"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K6 [require]
       55 GETTABLEKS                       R9 R0 K8 ["Utility"]
       57 GETTABLEKS                       R9 R9 K17 ["withCommonProps"]
       59 CALL                             R8 1 1
       60 GETIMPORT                        R9 K6 [require]
       62 GETTABLEKS                       R10 R0 K18 ["Providers"]
       64 GETTABLEKS                       R10 R10 K19 ["Style"]
       66 GETTABLEKS                       R10 R10 K20 ["useTokens"]
       68 CALL                             R9 1 1
       69 GETIMPORT                        R10 K6 [require]
       71 GETTABLEKS                       R11 R0 K21 ["Enums"]
       73 GETTABLEKS                       R11 R11 K22 ["PopoverSide"]
       75 CALL                             R10 1 1
       76 GETIMPORT                        R11 K6 [require]
       78 GETTABLEKS                       R12 R0 K21 ["Enums"]
       80 GETTABLEKS                       R12 R12 K23 ["PopoverAlign"]
       82 CALL                             R11 1 1
       83 GETIMPORT                        R12 K6 [require]
       85 GETTABLEKS                       R13 R0 K21 ["Enums"]
       87 GETTABLEKS                       R13 R13 K24 ["Radius"]
       89 CALL                             R12 1 1
       90 GETIMPORT                        R13 K6 [require]
       92 GETTABLEKS                       R14 R0 K12 ["Components"]
       94 GETTABLEKS                       R14 R14 K25 ["Popover"]
       96 GETTABLEKS                       R14 R14 K26 ["PopoverContext"]
       98 CALL                             R13 1 1
       99 GETIMPORT                        R14 K6 [require]
      101 GETTABLEKS                       R15 R0 K8 ["Utility"]
      103 GETTABLEKS                       R15 R15 K27 ["useScaledValue"]
      105 CALL                             R14 1 1
      106 GETIMPORT                        R15 K6 [require]
      108 GETTABLEKS                       R16 R0 K8 ["Utility"]
      110 GETTABLEKS                       R16 R16 K28 ["Logger"]
      112 CALL                             R15 1 1
      113 GETIMPORT                        R16 K6 [require]
      115 GETTABLEKS                       R17 R0 K8 ["Utility"]
      117 GETTABLEKS                       R17 R17 K29 ["Flags"]
      119 CALL                             R16 1 1
      120 GETIMPORT                        R17 K6 [require]
      122 GETTABLEKS                       R18 R0 K12 ["Components"]
      124 GETTABLEKS                       R18 R18 K25 ["Popover"]
      126 CALL                             R17 1 1
      127 DUPTABLE                         R18 K34 [{["align"], ["side"], ["testId"] = "--foundation-tooltip"}]
      128 GETTABLEKS                       R19 R11 K35 ["Start"]
      130 SETTABLEKS                       R19 R18 K30 ["align"]
      132 GETTABLEKS                       R19 R10 K36 ["Right"]
      134 SETTABLEKS                       R19 R18 K31 ["side"]
      136 DUPCLOSURE                       R19 K37 [PROTO_3]
      137 CAPTURE                          VAL R2
      138 CAPTURE                          VAL R13
      139 CAPTURE                          VAL R15
      140 CAPTURE                          VAL R17
      141 CAPTURE                          VAL R8
      142 DUPCLOSURE                       R20 K38 [PROTO_5]
      143 CAPTURE                          VAL R7
      144 CAPTURE                          VAL R18
      145 CAPTURE                          VAL R2
      146 CAPTURE                          VAL R9
      147 CAPTURE                          VAL R14
      148 CAPTURE                          VAL R3
      149 CAPTURE                          VAL R17
      150 CAPTURE                          VAL R19
      151 CAPTURE                          VAL R8
      152 CAPTURE                          VAL R12
      153 CAPTURE                          VAL R5
      154 CAPTURE                          VAL R6
      155 CAPTURE                          VAL R16
      156 GETTABLEKS                       R21 R2 K39 ["memo"]
      158 MOVE                             R22 R20
      159 CALL                             R21 1 -1
      160 RETURN                           R21 -1
