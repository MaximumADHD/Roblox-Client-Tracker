PROTO_0:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Primary button clicked"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Secondary button clicked"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R1 0 1
        2 DUPTABLE                         R2 K4 [{[1] = "Got it", ["onActivated"], ["variant"]}]
        3 DUPCLOSURE                       R3 K5 [PROTO_0]
        4 SETTABLEKS                       R3 R2 K2 ["onActivated"]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K6 ["Emphasis"]
        9 SETTABLEKS                       R3 R2 K3 ["variant"]
       11 SETLIST                          R1 R2 1 [1]
       13 JUMPIFNOT                        R0 ; [+15]
       14 DUPTABLE                         R4 K8 [{[1] = "Skipppp", ["onActivated"], ["variant"]}]
       15 DUPCLOSURE                       R5 K9 [PROTO_1]
       16 SETTABLEKS                       R5 R4 K2 ["onActivated"]
       18 GETUPVAL                         R5 0
       19 GETTABLEKS                       R5 R5 K10 ["Standard"]
       21 SETTABLEKS                       R5 R4 K3 ["variant"]
       23 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
       25 MOVE                             R3 R1
       26 GETIMPORT                        R2 K13 [table.insert]
       28 CALL                             R2 2 0
       29 RETURN                           R1 1

PROTO_3:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Close affordance clicked"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Icon button clicked"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K4 [{["tag"] = "row align-x-center align-y-center", ["Size"]}]
        5 GETIMPORT                        R4 K7 [UDim2.new]
        7 LOADN                            R5 1
        8 LOADN                            R6 0
        9 LOADN                            R7 0
       10 LOADN                            R8 300
       11 CALL                             R4 4 1
       12 SETTABLEKS                       R4 R3 K3 ["Size"]
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R4 R4 K0 ["createElement"]
       17 GETUPVAL                         R5 2
       18 DUPTABLE                         R6 K16 [{"title", "side", "align", "text", "isOpen", "onClose", "steps", "actions"}]
       19 GETTABLEKS                       R7 R0 K17 ["controls"]
       21 GETTABLEKS                       R7 R7 K8 ["title"]
       23 SETTABLEKS                       R7 R6 K8 ["title"]
       25 GETTABLEKS                       R7 R0 K17 ["controls"]
       27 GETTABLEKS                       R7 R7 K9 ["side"]
       29 SETTABLEKS                       R7 R6 K9 ["side"]
       31 GETTABLEKS                       R7 R0 K17 ["controls"]
       33 GETTABLEKS                       R7 R7 K10 ["align"]
       35 SETTABLEKS                       R7 R6 K10 ["align"]
       37 GETTABLEKS                       R7 R0 K17 ["controls"]
       39 GETTABLEKS                       R7 R7 K11 ["text"]
       41 SETTABLEKS                       R7 R6 K11 ["text"]
       43 GETTABLEKS                       R7 R0 K17 ["controls"]
       45 GETTABLEKS                       R7 R7 K12 ["isOpen"]
       47 SETTABLEKS                       R7 R6 K12 ["isOpen"]
       49 GETTABLEKS                       R8 R0 K17 ["controls"]
       51 GETTABLEKS                       R8 R8 K18 ["hasCloseAffordance"]
       53 JUMPIFNOT                        R8 ; [+2]
       54 DUPCLOSURE                       R7 K19 [PROTO_3]
       55 JUMP                             ; [+1]
       56 LOADNIL                          R7
       57 SETTABLEKS                       R7 R6 K13 ["onClose"]
       59 GETTABLEKS                       R8 R0 K17 ["controls"]
       61 GETTABLEKS                       R8 R8 K20 ["showSteps"]
       63 JUMPIFNOT                        R8 ; [+2]
       64 DUPTABLE                         R7 K25 [{["current"] = 2, ["total"] = 5}]
       65 JUMP                             ; [+1]
       66 LOADNIL                          R7
       67 SETTABLEKS                       R7 R6 K14 ["steps"]
       69 GETTABLEKS                       R8 R0 K17 ["controls"]
       71 GETTABLEKS                       R8 R8 K26 ["hasActions"]
       73 JUMPIFNOT                        R8 ; [+7]
       74 GETUPVAL                         R7 3
       75 GETTABLEKS                       R8 R0 K17 ["controls"]
       77 GETTABLEKS                       R8 R8 K27 ["hasSecondaryButton"]
       79 CALL                             R7 1 1
       80 JUMP                             ; [+1]
       81 LOADNIL                          R7
       82 SETTABLEKS                       R7 R6 K15 ["actions"]
       84 GETUPVAL                         R7 0
       85 GETTABLEKS                       R7 R7 K0 ["createElement"]
       87 GETUPVAL                         R8 4
       88 DUPTABLE                         R9 K32 [{["icon"] = "reactions/heart", ["size"], ["onActivated"]}]
       89 GETUPVAL                         R10 5
       90 GETTABLEKS                       R10 R10 K33 ["Medium"]
       92 SETTABLEKS                       R10 R9 K30 ["size"]
       94 DUPCLOSURE                       R10 K34 [PROTO_4]
       95 SETTABLEKS                       R10 R9 K31 ["onActivated"]
       97 CALL                             R7 2 -1
       98 CALL                             R4 -1 -1
       99 CALL                             R1 -1 -1
      100 RETURN                           R1 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 LOADN                            R2 1
        2 GETUPVAL                         R4 1
        3 SUBK                             R3 R4 K0 [1]
        4 FASTCALL2                        MATH_MAX R2 R3 ; [+3]
        6 GETIMPORT                        R1 K3 [math.max]
        8 CALL                             R1 2 1
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 LENGTH                           R2 R3
        3 GETUPVAL                         R4 2
        4 ADDK                             R3 R4 K0 [1]
        5 FASTCALL2                        MATH_MIN R2 R3 ; [+3]
        7 GETIMPORT                        R1 K3 [math.min]
        9 CALL                             R1 2 1
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 LOADN                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 LENGTH                           R2 R3
        3 GETUPVAL                         R4 2
        4 ADDK                             R3 R4 K0 [1]
        5 FASTCALL2                        MATH_MIN R2 R3 ; [+3]
        7 GETIMPORT                        R1 K3 [math.min]
        9 CALL                             R1 2 1
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_10:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R2 K2 ["Anchor %* clicked"]
        3 GETUPVAL                         R4 0
        4 NAMECALL                         R2 R2 K3 ["format"]
        6 CALL                             R2 2 1
        7 MOVE                             R1 R2
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useState"]
        3 LOADN                            R1 1
        4 CALL                             R0 1 2
        5 NEWTABLE                         R2 0 5
        7 DUPTABLE                         R3 K9 [{["id"] = 1, ["text"] = "Step 1: Side=Right, Align=Start, anchor with action button", ["hasActions"] = True, ["side"], ["align"]}]
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R4 R4 K10 ["Right"]
       11 SETTABLEKS                       R4 R3 K7 ["side"]
       13 GETUPVAL                         R4 2
       14 GETTABLEKS                       R4 R4 K11 ["Start"]
       16 SETTABLEKS                       R4 R3 K8 ["align"]
       18 DUPTABLE                         R4 K15 [{["id"] = 2, ["text"] = "Step 2: Side=Left, Align=Start, NO actions", ["hasActions"] = False, ["side"], ["align"]}]
       19 GETUPVAL                         R5 1
       20 GETTABLEKS                       R5 R5 K16 ["Left"]
       22 SETTABLEKS                       R5 R4 K7 ["side"]
       24 GETUPVAL                         R5 2
       25 GETTABLEKS                       R5 R5 K11 ["Start"]
       27 SETTABLEKS                       R5 R4 K8 ["align"]
       29 DUPTABLE                         R5 K19 [{["id"] = 3, ["text"] = "Step 3: Side=Top, Align=End, with action button", ["hasActions"] = True, ["side"], ["align"]}]
       30 GETUPVAL                         R6 1
       31 GETTABLEKS                       R6 R6 K20 ["Top"]
       33 SETTABLEKS                       R6 R5 K7 ["side"]
       35 GETUPVAL                         R6 2
       36 GETTABLEKS                       R6 R6 K21 ["End"]
       38 SETTABLEKS                       R6 R5 K8 ["align"]
       40 DUPTABLE                         R6 K24 [{["id"] = 4, ["text"] = "Step 4: Side=Top, Align=Start, NO actions", ["hasActions"] = False, ["side"], ["align"]}]
       41 GETUPVAL                         R7 1
       42 GETTABLEKS                       R7 R7 K20 ["Top"]
       44 SETTABLEKS                       R7 R6 K7 ["side"]
       46 GETUPVAL                         R7 2
       47 GETTABLEKS                       R7 R7 K11 ["Start"]
       49 SETTABLEKS                       R7 R6 K8 ["align"]
       51 DUPTABLE                         R7 K27 [{["id"] = 5, ["text"] = "Step 5: Side=Bottom, Align=Center, with action button", ["hasActions"] = False, ["side"], ["align"]}]
       52 GETUPVAL                         R8 1
       53 GETTABLEKS                       R8 R8 K28 ["Bottom"]
       55 SETTABLEKS                       R8 R7 K7 ["side"]
       57 GETUPVAL                         R8 2
       58 GETTABLEKS                       R8 R8 K29 ["Center"]
       60 SETTABLEKS                       R8 R7 K8 ["align"]
       62 SETLIST                          R2 R3 5 [1]
       64 GETTABLE                         R3 R2 R0
       65 GETUPVAL                         R4 0
       66 GETTABLEKS                       R4 R4 K30 ["createElement"]
       68 GETUPVAL                         R5 3
       69 DUPTABLE                         R6 K34 [{["tag"] = "col gap-small", ["Size"]}]
       70 GETIMPORT                        R7 K37 [UDim2.new]
       72 LOADN                            R8 1
       73 LOADN                            R9 0
       74 LOADN                            R10 0
       75 LOADN                            R11 300
       76 CALL                             R7 4 1
       77 SETTABLEKS                       R7 R6 K33 ["Size"]
       79 DUPTABLE                         R7 K40 [{"Controls", "AnchorContainer"}]
       80 GETUPVAL                         R8 0
       81 GETTABLEKS                       R8 R8 K30 ["createElement"]
       83 GETUPVAL                         R9 3
       84 DUPTABLE                         R10 K43 [{["tag"] = "row align-y-center gap-small size-full-0 auto-y", ["LayoutOrder"] = 1}]
       85 DUPTABLE                         R11 K48 [{"PrevButton", "NextButton", "ResetButton", "StepText"}]
       86 GETUPVAL                         R12 0
       87 GETTABLEKS                       R12 R12 K30 ["createElement"]
       89 GETUPVAL                         R13 4
       90 DUPTABLE                         R14 K53 [{["text"] = "Previous", ["onActivated"], ["variant"], ["isDisabled"], ["LayoutOrder"] = 1}]
       91 NEWCLOSURE                       R15 P0
       92 CAPTURE                          VAL R1
       93 CAPTURE                          VAL R0
       94 SETTABLEKS                       R15 R14 K50 ["onActivated"]
       96 GETUPVAL                         R15 5
       97 GETTABLEKS                       R15 R15 K54 ["Standard"]
       99 SETTABLEKS                       R15 R14 K51 ["variant"]
      101 JUMPIFEQKN                       R0 K2 [1] ; [+2]
      103 LOADB                            R15 0 +1
      104 LOADB                            R15 1
      105 SETTABLEKS                       R15 R14 K52 ["isDisabled"]
      107 CALL                             R12 2 1
      108 SETTABLEKS                       R12 R11 K44 ["PrevButton"]
      110 GETUPVAL                         R12 0
      111 GETTABLEKS                       R12 R12 K30 ["createElement"]
      113 GETUPVAL                         R13 4
      114 DUPTABLE                         R14 K56 [{["text"] = "Next", ["onActivated"], ["variant"], ["isDisabled"], ["LayoutOrder"] = 2}]
      115 NEWCLOSURE                       R15 P1
      116 CAPTURE                          VAL R1
      117 CAPTURE                          VAL R2
      118 CAPTURE                          VAL R0
      119 SETTABLEKS                       R15 R14 K50 ["onActivated"]
      121 GETUPVAL                         R15 5
      122 GETTABLEKS                       R15 R15 K54 ["Standard"]
      124 SETTABLEKS                       R15 R14 K51 ["variant"]
      126 LENGTH                           R16 R2
      127 JUMPIFEQ                         R0 R16 ; [+2]
      129 LOADB                            R15 0 +1
      130 LOADB                            R15 1
      131 SETTABLEKS                       R15 R14 K52 ["isDisabled"]
      133 CALL                             R12 2 1
      134 SETTABLEKS                       R12 R11 K45 ["NextButton"]
      136 GETUPVAL                         R12 0
      137 GETTABLEKS                       R12 R12 K30 ["createElement"]
      139 GETUPVAL                         R13 4
      140 DUPTABLE                         R14 K58 [{["text"] = "Reset", ["onActivated"], ["variant"], ["LayoutOrder"] = 3}]
      141 NEWCLOSURE                       R15 P2
      142 CAPTURE                          VAL R1
      143 SETTABLEKS                       R15 R14 K50 ["onActivated"]
      145 GETUPVAL                         R15 5
      146 GETTABLEKS                       R15 R15 K54 ["Standard"]
      148 SETTABLEKS                       R15 R14 K51 ["variant"]
      150 CALL                             R12 2 1
      151 SETTABLEKS                       R12 R11 K46 ["ResetButton"]
      153 GETUPVAL                         R12 0
      154 GETTABLEKS                       R12 R12 K30 ["createElement"]
      156 GETUPVAL                         R13 6
      157 DUPTABLE                         R14 K61 [{["tag"] = "auto-xy text-body-medium", ["Text"], ["LayoutOrder"] = 4}]
      158 LOADK                            R16 K62 ["Step %* of %* - Side: %* - Actions: %*"]
      159 MOVE                             R18 R0
      160 LENGTH                           R19 R2
      161 GETTABLEKS                       R20 R3 K7 ["side"]
      163 GETTABLEKS                       R22 R3 K5 ["hasActions"]
      165 JUMPIFNOT                        R22 ; [+2]
      166 LOADK                            R21 K63 ["Yes"]
      167 JUMP                             ; [+1]
      168 LOADK                            R21 K64 ["nil"]
      169 NAMECALL                         R16 R16 K65 ["format"]
      171 CALL                             R16 5 1
      172 MOVE                             R15 R16
      173 SETTABLEKS                       R15 R14 K60 ["Text"]
      175 CALL                             R12 2 1
      176 SETTABLEKS                       R12 R11 K47 ["StepText"]
      178 CALL                             R8 3 1
      179 SETTABLEKS                       R8 R7 K38 ["Controls"]
      181 GETUPVAL                         R8 0
      182 GETTABLEKS                       R8 R8 K30 ["createElement"]
      184 GETUPVAL                         R9 3
      185 DUPTABLE                         R10 K67 [{["tag"] = "col align-x-center align-y-center auto-xy", ["Size"], ["LayoutOrder"] = 2}]
      186 GETIMPORT                        R11 K37 [UDim2.new]
      188 LOADN                            R12 1
      189 LOADN                            R13 0
      190 LOADN                            R14 1
      191 LOADN                            R15 300
      192 CALL                             R11 4 1
      193 SETTABLEKS                       R11 R10 K33 ["Size"]
      195 DUPTABLE                         R11 K69 [{"Anchor"}]
      196 GETUPVAL                         R12 0
      197 GETTABLEKS                       R12 R12 K30 ["createElement"]
      199 GETUPVAL                         R13 7
      200 DUPTABLE                         R14 K74 [{["id"], ["title"], ["text"], ["isOpen"] = True, ["side"], ["align"], ["steps"], ["actions"]}]
      201 GETTABLEKS                       R15 R3 K1 ["id"]
      203 SETTABLEKS                       R15 R14 K1 ["id"]
      205 LOADK                            R16 K75 ["Tutorial Step %*"]
      206 MOVE                             R18 R0
      207 NAMECALL                         R16 R16 K65 ["format"]
      209 CALL                             R16 2 1
      210 MOVE                             R15 R16
      211 SETTABLEKS                       R15 R14 K70 ["title"]
      213 GETTABLEKS                       R15 R3 K3 ["text"]
      215 SETTABLEKS                       R15 R14 K3 ["text"]
      217 GETTABLEKS                       R15 R3 K7 ["side"]
      219 SETTABLEKS                       R15 R14 K7 ["side"]
      221 GETTABLEKS                       R15 R3 K8 ["align"]
      223 SETTABLEKS                       R15 R14 K8 ["align"]
      225 DUPTABLE                         R15 K78 [{"current", "total"}]
      226 SETTABLEKS                       R0 R15 K76 ["current"]
      228 LENGTH                           R16 R2
      229 SETTABLEKS                       R16 R15 K77 ["total"]
      231 SETTABLEKS                       R15 R14 K72 ["steps"]
      233 GETTABLEKS                       R16 R3 K5 ["hasActions"]
      235 JUMPIFNOT                        R16 ; [+17]
      236 NEWTABLE                         R15 0 1
      238 DUPTABLE                         R16 K79 [{["text"] = "Next", ["variant"], ["onActivated"]}]
      239 GETUPVAL                         R17 5
      240 GETTABLEKS                       R17 R17 K80 ["Emphasis"]
      242 SETTABLEKS                       R17 R16 K51 ["variant"]
      244 NEWCLOSURE                       R17 P3
      245 CAPTURE                          VAL R1
      246 CAPTURE                          VAL R2
      247 CAPTURE                          VAL R0
      248 SETTABLEKS                       R17 R16 K50 ["onActivated"]
      250 SETLIST                          R15 R16 1 [1]
      252 JUMP                             ; [+1]
      253 LOADNIL                          R15
      254 SETTABLEKS                       R15 R14 K73 ["actions"]
      256 GETUPVAL                         R15 0
      257 GETTABLEKS                       R15 R15 K30 ["createElement"]
      259 GETUPVAL                         R16 4
      260 DUPTABLE                         R17 K84 [{["id"], ["size"], ["text"] = "Button", ["width"], ["onActivated"]}]
      261 GETTABLEKS                       R18 R3 K1 ["id"]
      263 SETTABLEKS                       R18 R17 K1 ["id"]
      265 GETUPVAL                         R18 8
      266 GETTABLEKS                       R18 R18 K85 ["Large"]
      268 SETTABLEKS                       R18 R17 K81 ["size"]
      270 GETIMPORT                        R18 K87 [UDim.new]
      272 LOADN                            R19 1
      273 LOADN                            R20 100
      274 CALL                             R18 2 1
      275 SETTABLEKS                       R18 R17 K83 ["width"]
      277 NEWCLOSURE                       R18 P4
      278 CAPTURE                          VAL R0
      279 SETTABLEKS                       R18 R17 K50 ["onActivated"]
      281 CALL                             R15 2 -1
      282 CALL                             R12 -1 1
      283 SETTABLEKS                       R12 R11 K68 ["Anchor"]
      285 CALL                             R8 3 1
      286 SETTABLEKS                       R8 R7 K39 ["AnchorContainer"]
      288 CALL                             R4 3 -1
      289 RETURN                           R4 -1

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
       21 GETTABLEKS                       R5 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R5 K10 ["Button"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K11 ["Enums"]
       30 GETTABLEKS                       R6 R6 K12 ["ButtonVariant"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K9 ["Components"]
       37 GETTABLEKS                       R7 R7 K13 ["Coachmark"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K9 ["Components"]
       44 GETTABLEKS                       R8 R8 K14 ["IconButton"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R0 K11 ["Enums"]
       51 GETTABLEKS                       R9 R9 K15 ["InputSize"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R10 R0 K11 ["Enums"]
       58 GETTABLEKS                       R10 R10 K16 ["PopoverAlign"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K6 [require]
       63 GETTABLEKS                       R11 R0 K11 ["Enums"]
       65 GETTABLEKS                       R11 R11 K17 ["PopoverSide"]
       67 CALL                             R10 1 1
       68 GETIMPORT                        R11 K6 [require]
       70 GETTABLEKS                       R12 R0 K9 ["Components"]
       72 GETTABLEKS                       R12 R12 K18 ["Text"]
       74 CALL                             R11 1 1
       75 GETIMPORT                        R12 K6 [require]
       77 GETTABLEKS                       R13 R0 K9 ["Components"]
       79 GETTABLEKS                       R13 R13 K19 ["Types"]
       81 CALL                             R12 1 1
       82 GETIMPORT                        R13 K6 [require]
       84 GETTABLEKS                       R14 R0 K9 ["Components"]
       86 GETTABLEKS                       R14 R14 K20 ["View"]
       88 CALL                             R13 1 1
       89 DUPCLOSURE                       R14 K21 [PROTO_2]
       90 CAPTURE                          VAL R5
       91 DUPTABLE                         R15 K25 [{["summary"] = "Coachmark", ["stories"], ["controls"]}]
       92 NEWTABLE                         R16 0 2
       94 DUPTABLE                         R17 K29 [{["name"] = "Default", ["story"]}]
       95 DUPCLOSURE                       R18 K30 [PROTO_5]
       96 CAPTURE                          VAL R3
       97 CAPTURE                          VAL R13
       98 CAPTURE                          VAL R6
       99 CAPTURE                          VAL R14
      100 CAPTURE                          VAL R7
      101 CAPTURE                          VAL R8
      102 SETTABLEKS                       R18 R17 K28 ["story"]
      104 DUPTABLE                         R18 K32 [{["name"] = "Multi-Step Tutorial", ["story"]}]
      105 DUPCLOSURE                       R19 K33 [PROTO_11]
      106 CAPTURE                          VAL R3
      107 CAPTURE                          VAL R10
      108 CAPTURE                          VAL R9
      109 CAPTURE                          VAL R13
      110 CAPTURE                          VAL R4
      111 CAPTURE                          VAL R5
      112 CAPTURE                          VAL R11
      113 CAPTURE                          VAL R6
      114 CAPTURE                          VAL R8
      115 SETTABLEKS                       R19 R18 K28 ["story"]
      117 SETLIST                          R16 R17 2 [1]
      119 SETTABLEKS                       R16 R15 K23 ["stories"]
      121 DUPTABLE                         R16 K47 [{["title"] = "Title", ["text"] = "Generally we should avoid coachmarks with long titles and bodys. Consider using other affordances for sharing contextual information when content expands beyond a few lines.", ["side"], ["align"], ["hasSecondaryButton"] = False, ["hasCloseAffordance"] = False, ["hasActions"] = True, ["isOpen"] = True, ["showSteps"] = True}]
      122 GETTABLEKS                       R17 R2 K48 ["values"]
      124 MOVE                             R18 R10
      125 CALL                             R17 1 1
      126 SETTABLEKS                       R17 R16 K38 ["side"]
      128 GETTABLEKS                       R17 R2 K48 ["values"]
      130 MOVE                             R18 R9
      131 CALL                             R17 1 1
      132 SETTABLEKS                       R17 R16 K39 ["align"]
      134 SETTABLEKS                       R16 R15 K24 ["controls"]
      136 RETURN                           R15 1
