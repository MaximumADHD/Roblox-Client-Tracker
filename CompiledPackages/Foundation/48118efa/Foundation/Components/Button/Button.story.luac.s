PROTO_0:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R2 K2 ["%* %* Button (%*) activated"]
        3 GETUPVAL                         R4 0
        4 GETUPVAL                         R5 1
        5 GETUPVAL                         R6 2
        6 NAMECALL                         R2 R2 K3 ["format"]
        8 CALL                             R2 4 1
        9 MOVE                             R1 R2
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K10 [{"icon", "text", "variant", "isLoading", "onActivated", "isDisabled", "size", "fillBehavior", "inputDelay"}]
        5 GETUPVAL                         R5 2
        6 GETTABLEKS                       R5 R5 K1 ["icon"]
        8 JUMPIFNOTEQKS                    R5 K11 [""] ; [+3]
       10 LOADNIL                          R4
       11 JUMP                             ; [+5]
       12 GETUPVAL                         R4 3
       13 GETTABLEKS                       R4 R4 K12 ["controls"]
       15 GETTABLEKS                       R4 R4 K1 ["icon"]
       17 SETTABLEKS                       R4 R3 K1 ["icon"]
       19 GETUPVAL                         R4 2
       20 GETTABLEKS                       R4 R4 K2 ["text"]
       22 SETTABLEKS                       R4 R3 K2 ["text"]
       24 GETUPVAL                         R4 4
       25 SETTABLEKS                       R4 R3 K3 ["variant"]
       27 GETUPVAL                         R4 2
       28 GETTABLEKS                       R4 R4 K4 ["isLoading"]
       30 SETTABLEKS                       R4 R3 K4 ["isLoading"]
       32 NEWCLOSURE                       R4 P0
       33 CAPTURE                          UPVAL U5
       34 CAPTURE                          UPVAL U4
       35 CAPTURE                          VAL R0
       36 SETTABLEKS                       R4 R3 K5 ["onActivated"]
       38 GETUPVAL                         R4 2
       39 GETTABLEKS                       R4 R4 K6 ["isDisabled"]
       41 SETTABLEKS                       R4 R3 K6 ["isDisabled"]
       43 SETTABLEKS                       R0 R3 K7 ["size"]
       45 GETUPVAL                         R5 2
       46 GETTABLEKS                       R5 R5 K8 ["fillBehavior"]
       48 GETUPVAL                         R6 0
       49 GETTABLEKS                       R6 R6 K13 ["None"]
       51 JUMPIFNOTEQ                      R5 R6 ; [+3]
       53 LOADNIL                          R4
       54 JUMP                             ; [+3]
       55 GETUPVAL                         R4 2
       56 GETTABLEKS                       R4 R4 K8 ["fillBehavior"]
       58 SETTABLEKS                       R4 R3 K8 ["fillBehavior"]
       60 GETUPVAL                         R4 2
       61 GETTABLEKS                       R4 R4 K9 ["inputDelay"]
       63 SETTABLEKS                       R4 R3 K9 ["inputDelay"]
       65 CALL                             R1 2 -1
       66 RETURN                           R1 -1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETTABLEKS                       R2 R1 K1 ["colorMode"]
        4 DUPTABLE                         R3 K2 [{"colorMode"}]
        5 SETTABLEKS                       R2 R3 K1 ["colorMode"]
        7 GETUPVAL                         R4 0
        8 CALL                             R4 0 1
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R6 R1 K3 ["usePath2DSpinner"]
       12 SETTABLEKS                       R6 R5 K4 ["FoundationUsePath2DSpinner"]
       14 GETUPVAL                         R5 2
       15 GETTABLEKS                       R5 R5 K5 ["createElement"]
       17 GETUPVAL                         R6 3
       18 DUPTABLE                         R7 K9 [{["tag"] = "row align-y-center gap-medium size-0 auto-xy padding-medium radius-medium", ["backgroundStyle"]}]
       19 GETUPVAL                         R9 4
       20 GETUPVAL                         R10 5
       21 GETTABLEKS                       R10 R10 K10 ["OverMedia"]
       23 JUMPIFNOTEQ                      R9 R10 ; [+10]
       25 GETTABLEKS                       R8 R4 K11 ["Color"]
       27 GETTABLEKS                       R8 R8 K12 ["Extended"]
       29 GETTABLEKS                       R8 R8 K13 ["White"]
       31 GETTABLEKS                       R8 R8 K14 ["White_100"]
       33 JUMP                             ; [+8]
       34 JUMPIFNOT                        R2 ; [+6]
       35 GETTABLE                         R8 R4 R2
       36 GETTABLEKS                       R8 R8 K15 ["Surface"]
       38 GETTABLEKS                       R8 R8 K16 ["Surface_100"]
       40 JUMP                             ; [+1]
       41 LOADNIL                          R8
       42 SETTABLEKS                       R8 R7 K8 ["backgroundStyle"]
       44 DUPTABLE                         R8 K19 [{"Gradient", "Buttons"}]
       45 GETUPVAL                         R10 4
       46 GETUPVAL                         R11 5
       47 GETTABLEKS                       R11 R11 K10 ["OverMedia"]
       49 JUMPIFNOTEQ                      R10 R11 ; [+45]
       51 GETUPVAL                         R9 2
       52 GETTABLEKS                       R9 R9 K5 ["createElement"]
       54 LOADK                            R10 K20 ["UIGradient"]
       55 DUPTABLE                         R11 K21 [{"Color"}]
       56 GETIMPORT                        R12 K24 [ColorSequence.new]
       58 NEWTABLE                         R13 0 2
       60 GETIMPORT                        R14 K26 [ColorSequenceKeypoint.new]
       62 LOADN                            R15 0
       63 GETTABLEKS                       R16 R4 K11 ["Color"]
       65 GETTABLEKS                       R16 R16 K12 ["Extended"]
       67 GETTABLEKS                       R16 R16 K27 ["Green"]
       69 GETTABLEKS                       R16 R16 K28 ["Green_500"]
       71 GETTABLEKS                       R16 R16 K29 ["Color3"]
       73 CALL                             R14 2 1
       74 GETIMPORT                        R15 K26 [ColorSequenceKeypoint.new]
       76 LOADN                            R16 1
       77 GETTABLEKS                       R17 R4 K11 ["Color"]
       79 GETTABLEKS                       R17 R17 K12 ["Extended"]
       81 GETTABLEKS                       R17 R17 K30 ["Blue"]
       83 GETTABLEKS                       R17 R17 K31 ["Blue_500"]
       85 GETTABLEKS                       R17 R17 K29 ["Color3"]
       87 CALL                             R15 2 -1
       88 SETLIST                          R13 R14 -1 [1]
       90 CALL                             R12 1 1
       91 SETTABLEKS                       R12 R11 K11 ["Color"]
       93 CALL                             R9 2 1
       94 JUMP                             ; [+1]
       95 LOADNIL                          R9
       96 SETTABLEKS                       R9 R8 K17 ["Gradient"]
       98 GETUPVAL                         R9 2
       99 GETTABLEKS                       R9 R9 K5 ["createElement"]
      101 GETUPVAL                         R10 6
      102 GETTABLEKS                       R10 R10 K32 ["Provider"]
      104 DUPTABLE                         R11 K34 [{"value"}]
      105 SETTABLEKS                       R3 R11 K33 ["value"]
      107 GETUPVAL                         R12 7
      108 GETTABLEKS                       R12 R12 K35 ["map"]
      110 NEWTABLE                         R13 0 4
      112 GETUPVAL                         R14 8
      113 GETTABLEKS                       R14 R14 K36 ["Large"]
      115 GETUPVAL                         R15 8
      116 GETTABLEKS                       R15 R15 K37 ["Medium"]
      118 GETUPVAL                         R16 8
      119 GETTABLEKS                       R16 R16 K38 ["Small"]
      121 GETUPVAL                         R17 8
      122 GETTABLEKS                       R17 R17 K39 ["XSmall"]
      124 SETLIST                          R13 R14 4 [1]
      126 NEWCLOSURE                       R14 P0
      127 CAPTURE                          UPVAL U2
      128 CAPTURE                          UPVAL U9
      129 CAPTURE                          VAL R1
      130 CAPTURE                          VAL R0
      131 CAPTURE                          UPVAL U4
      132 CAPTURE                          VAL R2
      133 CALL                             R12 2 -1
      134 CALL                             R9 -1 1
      135 SETTABLEKS                       R9 R8 K18 ["Buttons"]
      137 CALL                             R5 3 -1
      138 RETURN                           R5 -1

PROTO_3:
        0 DUPTABLE                         R1 K2 [{"name", "story"}]
        1 SETTABLEKS                       R0 R1 K0 ["name"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U4
       10 CAPTURE                          UPVAL U5
       11 CAPTURE                          UPVAL U6
       12 CAPTURE                          UPVAL U7
       13 CAPTURE                          UPVAL U8
       14 SETTABLEKS                       R2 R1 K1 ["story"]
       16 RETURN                           R1 1

PROTO_4:
        0 RETURN                           R0 0

PROTO_5:
        0 RETURN                           R0 0

PROTO_6:
        0 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETTABLEKS                       R2 R1 K1 ["colorMode"]
        4 GETUPVAL                         R3 0
        5 CALL                             R3 0 1
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K2 ["createElement"]
        9 GETUPVAL                         R5 2
       10 DUPTABLE                         R6 K6 [{["tag"] = "col gap-large size-full-0 auto-xy padding-large radius-medium", ["backgroundStyle"]}]
       11 JUMPIFNOT                        R2 ; [+6]
       12 GETTABLE                         R7 R3 R2
       13 GETTABLEKS                       R7 R7 K7 ["Surface"]
       15 GETTABLEKS                       R7 R7 K8 ["Surface_100"]
       17 JUMP                             ; [+1]
       18 LOADNIL                          R7
       19 SETTABLEKS                       R7 R6 K5 ["backgroundStyle"]
       21 DUPTABLE                         R7 K12 [{"Default", "FixedWidth", "FillBehaviorTakesPrecedence"}]
       22 GETUPVAL                         R8 1
       23 GETTABLEKS                       R8 R8 K2 ["createElement"]
       25 GETUPVAL                         R9 2
       26 DUPTABLE                         R10 K16 [{["LayoutOrder"] = 1, ["tag"] = "col gap-xxsmall auto-xy"}]
       27 DUPTABLE                         R11 K19 [{"Label", "Row"}]
       28 GETUPVAL                         R12 1
       29 GETTABLEKS                       R12 R12 K2 ["createElement"]
       31 GETUPVAL                         R13 3
       32 DUPTABLE                         R14 K23 [{["Text"] = "Default (AutomaticSize.X)", ["tag"] = "auto-xy text-body-small", ["LayoutOrder"] = 1}]
       33 CALL                             R12 2 1
       34 SETTABLEKS                       R12 R11 K17 ["Label"]
       36 GETUPVAL                         R12 1
       37 GETTABLEKS                       R12 R12 K2 ["createElement"]
       39 GETUPVAL                         R13 2
       40 DUPTABLE                         R14 K26 [{["tag"] = "row gap-medium auto-xy", ["LayoutOrder"] = 2}]
       41 NEWTABLE                         R15 0 1
       43 GETUPVAL                         R16 1
       44 GETTABLEKS                       R16 R16 K2 ["createElement"]
       46 GETUPVAL                         R17 4
       47 DUPTABLE                         R18 K32 [{["text"] = "Auto", ["variant"], ["onActivated"], ["size"]}]
       48 GETUPVAL                         R19 5
       49 GETTABLEKS                       R19 R19 K33 ["Emphasis"]
       51 SETTABLEKS                       R19 R18 K29 ["variant"]
       53 DUPCLOSURE                       R19 K34 [PROTO_4]
       54 SETTABLEKS                       R19 R18 K30 ["onActivated"]
       56 GETUPVAL                         R19 6
       57 GETTABLEKS                       R19 R19 K35 ["Medium"]
       59 SETTABLEKS                       R19 R18 K31 ["size"]
       61 CALL                             R16 2 -1
       62 SETLIST                          R15 R16 -1 [1]
       64 CALL                             R12 3 1
       65 SETTABLEKS                       R12 R11 K18 ["Row"]
       67 CALL                             R8 3 1
       68 SETTABLEKS                       R8 R7 K9 ["Default"]
       70 GETUPVAL                         R8 1
       71 GETTABLEKS                       R8 R8 K2 ["createElement"]
       73 GETUPVAL                         R9 2
       74 DUPTABLE                         R10 K36 [{["LayoutOrder"] = 2, ["tag"] = "col gap-xxsmall auto-xy"}]
       75 DUPTABLE                         R11 K19 [{"Label", "Row"}]
       76 GETUPVAL                         R12 1
       77 GETTABLEKS                       R12 R12 K2 ["createElement"]
       79 GETUPVAL                         R13 3
       80 DUPTABLE                         R14 K38 [{["Text"] = "Fixed width (0, 200px)", ["tag"] = "auto-xy text-body-small", ["LayoutOrder"] = 1}]
       81 CALL                             R12 2 1
       82 SETTABLEKS                       R12 R11 K17 ["Label"]
       84 GETUPVAL                         R12 1
       85 GETTABLEKS                       R12 R12 K2 ["createElement"]
       87 GETUPVAL                         R13 2
       88 DUPTABLE                         R14 K26 [{["tag"] = "row gap-medium auto-xy", ["LayoutOrder"] = 2}]
       89 NEWTABLE                         R15 0 1
       91 GETUPVAL                         R16 1
       92 GETTABLEKS                       R16 R16 K2 ["createElement"]
       94 GETUPVAL                         R17 4
       95 DUPTABLE                         R18 K41 [{["text"] = "200px", ["variant"], ["onActivated"], ["size"], ["width"]}]
       96 GETUPVAL                         R19 5
       97 GETTABLEKS                       R19 R19 K33 ["Emphasis"]
       99 SETTABLEKS                       R19 R18 K29 ["variant"]
      101 DUPCLOSURE                       R19 K42 [PROTO_5]
      102 SETTABLEKS                       R19 R18 K30 ["onActivated"]
      104 GETUPVAL                         R19 6
      105 GETTABLEKS                       R19 R19 K35 ["Medium"]
      107 SETTABLEKS                       R19 R18 K31 ["size"]
      109 GETIMPORT                        R19 K45 [UDim.new]
      111 LOADN                            R20 0
      112 LOADN                            R21 200
      113 CALL                             R19 2 1
      114 SETTABLEKS                       R19 R18 K40 ["width"]
      116 CALL                             R16 2 -1
      117 SETLIST                          R15 R16 -1 [1]
      119 CALL                             R12 3 1
      120 SETTABLEKS                       R12 R11 K18 ["Row"]
      122 CALL                             R8 3 1
      123 SETTABLEKS                       R8 R7 K10 ["FixedWidth"]
      125 GETUPVAL                         R8 1
      126 GETTABLEKS                       R8 R8 K2 ["createElement"]
      128 GETUPVAL                         R9 2
      129 DUPTABLE                         R10 K47 [{["LayoutOrder"] = 4, ["tag"] = "col gap-xxsmall auto-xy"}]
      130 DUPTABLE                         R11 K19 [{"Label", "Row"}]
      131 GETUPVAL                         R12 1
      132 GETTABLEKS                       R12 R12 K2 ["createElement"]
      134 GETUPVAL                         R13 3
      135 DUPTABLE                         R14 K49 [{["Text"] = "fillBehavior.Fill takes precedence over width=200px", ["tag"] = "auto-xy text-body-small", ["LayoutOrder"] = 1}]
      136 CALL                             R12 2 1
      137 SETTABLEKS                       R12 R11 K17 ["Label"]
      139 GETUPVAL                         R12 1
      140 GETTABLEKS                       R12 R12 K2 ["createElement"]
      142 GETUPVAL                         R13 2
      143 DUPTABLE                         R14 K52 [{["tag"] = "row size-full-0 auto-xy", ["LayoutOrder"] = 2, ["Size"]}]
      144 GETIMPORT                        R15 K54 [UDim2.new]
      146 LOADN                            R16 1
      147 LOADN                            R17 0
      148 LOADN                            R18 0
      149 LOADN                            R19 60
      150 CALL                             R15 4 1
      151 SETTABLEKS                       R15 R14 K51 ["Size"]
      153 NEWTABLE                         R15 0 1
      155 GETUPVAL                         R16 1
      156 GETTABLEKS                       R16 R16 K2 ["createElement"]
      158 GETUPVAL                         R17 4
      159 DUPTABLE                         R18 K57 [{["text"] = "Fill wins", ["variant"], ["onActivated"], ["size"], ["width"], ["fillBehavior"]}]
      160 GETUPVAL                         R19 5
      161 GETTABLEKS                       R19 R19 K33 ["Emphasis"]
      163 SETTABLEKS                       R19 R18 K29 ["variant"]
      165 DUPCLOSURE                       R19 K58 [PROTO_6]
      166 SETTABLEKS                       R19 R18 K30 ["onActivated"]
      168 GETUPVAL                         R19 6
      169 GETTABLEKS                       R19 R19 K35 ["Medium"]
      171 SETTABLEKS                       R19 R18 K31 ["size"]
      173 GETIMPORT                        R19 K45 [UDim.new]
      175 LOADN                            R20 0
      176 LOADN                            R21 200
      177 CALL                             R19 2 1
      178 SETTABLEKS                       R19 R18 K40 ["width"]
      180 GETUPVAL                         R19 7
      181 GETTABLEKS                       R19 R19 K59 ["Fill"]
      183 SETTABLEKS                       R19 R18 K56 ["fillBehavior"]
      185 CALL                             R16 2 -1
      186 SETLIST                          R15 R16 -1 [1]
      188 CALL                             R12 3 1
      189 SETTABLEKS                       R12 R11 K18 ["Row"]
      191 CALL                             R8 3 1
      192 SETTABLEKS                       R8 R7 K11 ["FillBehaviorTakesPrecedence"]
      194 CALL                             R4 3 -1
      195 RETURN                           R4 -1

PROTO_8:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R2 K2 ["%* Button row %* activated"]
        3 GETUPVAL                         R4 0
        4 GETUPVAL                         R5 1
        5 NAMECALL                         R2 R2 K3 ["format"]
        7 CALL                             R2 3 1
        8 MOVE                             R1 R2
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_9:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R2 K2 ["%* Button row %* activated"]
        3 GETUPVAL                         R4 0
        4 GETUPVAL                         R5 1
        5 NAMECALL                         R2 R2 K3 ["format"]
        7 CALL                             R2 3 1
        8 MOVE                             R1 R2
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_10:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R2 K2 ["%* Button row %* activated"]
        3 GETUPVAL                         R4 0
        4 GETUPVAL                         R5 1
        5 NAMECALL                         R2 R2 K3 ["format"]
        7 CALL                             R2 3 1
        8 MOVE                             R1 R2
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETTABLEKS                       R2 R1 K1 ["colorMode"]
        4 GETUPVAL                         R3 0
        5 CALL                             R3 0 1
        6 GETTABLEKS                       R5 R1 K2 ["fillBehavior"]
        8 GETUPVAL                         R6 1
        9 GETTABLEKS                       R6 R6 K3 ["None"]
       11 JUMPIFNOTEQ                      R5 R6 ; [+3]
       13 LOADNIL                          R4
       14 JUMP                             ; [+2]
       15 GETTABLEKS                       R4 R1 K2 ["fillBehavior"]
       17 GETUPVAL                         R5 1
       18 GETTABLEKS                       R5 R5 K4 ["createElement"]
       20 GETUPVAL                         R6 2
       21 DUPTABLE                         R7 K8 [{["tag"] = "row gap-medium size-full-0 auto-y padding-medium radius-medium", ["backgroundStyle"]}]
       22 JUMPIFNOT                        R2 ; [+6]
       23 GETTABLE                         R8 R3 R2
       24 GETTABLEKS                       R8 R8 K9 ["Surface"]
       26 GETTABLEKS                       R8 R8 K10 ["Surface_100"]
       28 JUMP                             ; [+1]
       29 LOADNIL                          R8
       30 SETTABLEKS                       R8 R7 K7 ["backgroundStyle"]
       32 DUPTABLE                         R8 K14 [{"One", "Two", "Three"}]
       33 GETUPVAL                         R9 1
       34 GETTABLEKS                       R9 R9 K4 ["createElement"]
       36 GETUPVAL                         R10 3
       37 DUPTABLE                         R11 K21 [{"text", "variant", "onActivated", "isDisabled", "size", "fillBehavior", "icon"}]
       38 GETTABLEKS                       R12 R1 K15 ["text"]
       40 SETTABLEKS                       R12 R11 K15 ["text"]
       42 GETUPVAL                         R12 4
       43 GETTABLEKS                       R12 R12 K22 ["Emphasis"]
       45 SETTABLEKS                       R12 R11 K16 ["variant"]
       47 NEWCLOSURE                       R12 P0
       48 CAPTURE                          VAL R2
       49 CAPTURE                          VAL R4
       50 SETTABLEKS                       R12 R11 K17 ["onActivated"]
       52 GETTABLEKS                       R12 R1 K18 ["isDisabled"]
       54 SETTABLEKS                       R12 R11 K18 ["isDisabled"]
       56 GETUPVAL                         R12 5
       57 GETTABLEKS                       R12 R12 K23 ["Medium"]
       59 SETTABLEKS                       R12 R11 K19 ["size"]
       61 SETTABLEKS                       R4 R11 K2 ["fillBehavior"]
       63 GETTABLEKS                       R13 R1 K20 ["icon"]
       65 JUMPIFNOTEQKS                    R13 K24 [""] ; [+3]
       67 LOADNIL                          R12
       68 JUMP                             ; [+2]
       69 GETTABLEKS                       R12 R1 K20 ["icon"]
       71 SETTABLEKS                       R12 R11 K20 ["icon"]
       73 CALL                             R9 2 1
       74 SETTABLEKS                       R9 R8 K11 ["One"]
       76 GETUPVAL                         R9 1
       77 GETTABLEKS                       R9 R9 K4 ["createElement"]
       79 GETUPVAL                         R10 3
       80 DUPTABLE                         R11 K21 [{"text", "variant", "onActivated", "isDisabled", "size", "fillBehavior", "icon"}]
       81 GETTABLEKS                       R12 R1 K15 ["text"]
       83 SETTABLEKS                       R12 R11 K15 ["text"]
       85 GETUPVAL                         R12 4
       86 GETTABLEKS                       R12 R12 K22 ["Emphasis"]
       88 SETTABLEKS                       R12 R11 K16 ["variant"]
       90 NEWCLOSURE                       R12 P1
       91 CAPTURE                          VAL R2
       92 CAPTURE                          VAL R4
       93 SETTABLEKS                       R12 R11 K17 ["onActivated"]
       95 GETTABLEKS                       R12 R1 K18 ["isDisabled"]
       97 SETTABLEKS                       R12 R11 K18 ["isDisabled"]
       99 GETUPVAL                         R12 5
      100 GETTABLEKS                       R12 R12 K23 ["Medium"]
      102 SETTABLEKS                       R12 R11 K19 ["size"]
      104 SETTABLEKS                       R4 R11 K2 ["fillBehavior"]
      106 GETTABLEKS                       R13 R1 K20 ["icon"]
      108 JUMPIFNOTEQKS                    R13 K24 [""] ; [+3]
      110 LOADNIL                          R12
      111 JUMP                             ; [+2]
      112 GETTABLEKS                       R12 R1 K20 ["icon"]
      114 SETTABLEKS                       R12 R11 K20 ["icon"]
      116 CALL                             R9 2 1
      117 SETTABLEKS                       R9 R8 K12 ["Two"]
      119 GETUPVAL                         R9 1
      120 GETTABLEKS                       R9 R9 K4 ["createElement"]
      122 GETUPVAL                         R10 3
      123 DUPTABLE                         R11 K21 [{"text", "variant", "onActivated", "isDisabled", "size", "fillBehavior", "icon"}]
      124 GETTABLEKS                       R12 R1 K15 ["text"]
      126 SETTABLEKS                       R12 R11 K15 ["text"]
      128 GETUPVAL                         R12 4
      129 GETTABLEKS                       R12 R12 K22 ["Emphasis"]
      131 SETTABLEKS                       R12 R11 K16 ["variant"]
      133 NEWCLOSURE                       R12 P2
      134 CAPTURE                          VAL R2
      135 CAPTURE                          VAL R4
      136 SETTABLEKS                       R12 R11 K17 ["onActivated"]
      138 GETTABLEKS                       R12 R1 K18 ["isDisabled"]
      140 SETTABLEKS                       R12 R11 K18 ["isDisabled"]
      142 GETUPVAL                         R12 5
      143 GETTABLEKS                       R12 R12 K23 ["Medium"]
      145 SETTABLEKS                       R12 R11 K19 ["size"]
      147 SETTABLEKS                       R4 R11 K2 ["fillBehavior"]
      149 GETTABLEKS                       R13 R1 K20 ["icon"]
      151 JUMPIFNOTEQKS                    R13 K24 [""] ; [+3]
      153 LOADNIL                          R12
      154 JUMP                             ; [+2]
      155 GETTABLEKS                       R12 R1 K20 ["icon"]
      157 SETTABLEKS                       R12 R11 K20 ["icon"]
      159 CALL                             R9 2 1
      160 SETTABLEKS                       R9 R8 K13 ["Three"]
      162 CALL                             R5 3 -1
      163 RETURN                           R5 -1

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
       30 GETTABLEKS                       R6 R6 K12 ["ColorMode"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K13 ["Utility"]
       37 GETTABLEKS                       R7 R7 K14 ["Flags"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K11 ["Enums"]
       44 GETTABLEKS                       R8 R8 K15 ["InputSize"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R0 K16 ["Providers"]
       51 GETTABLEKS                       R9 R9 K17 ["Style"]
       53 GETTABLEKS                       R9 R9 K18 ["PresentationContext"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R10 R0 K9 ["Components"]
       60 GETTABLEKS                       R10 R10 K19 ["Text"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K6 [require]
       65 GETTABLEKS                       R11 R0 K9 ["Components"]
       67 GETTABLEKS                       R11 R11 K20 ["View"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K6 [require]
       72 GETTABLEKS                       R12 R0 K16 ["Providers"]
       74 GETTABLEKS                       R12 R12 K17 ["Style"]
       76 GETTABLEKS                       R12 R12 K21 ["useTokens"]
       78 CALL                             R11 1 1
       79 GETIMPORT                        R12 K6 [require]
       81 GETTABLEKS                       R13 R0 K11 ["Enums"]
       83 GETTABLEKS                       R13 R13 K22 ["ButtonVariant"]
       85 CALL                             R12 1 1
       86 GETIMPORT                        R13 K6 [require]
       88 GETTABLEKS                       R14 R0 K11 ["Enums"]
       90 GETTABLEKS                       R14 R14 K23 ["FillBehavior"]
       92 CALL                             R13 1 1
       93 NEWTABLE                         R14 0 6
       95 GETTABLEKS                       R15 R12 K24 ["Standard"]
       97 GETTABLEKS                       R16 R12 K25 ["Emphasis"]
       99 GETTABLEKS                       R17 R12 K26 ["SoftEmphasis"]
      101 GETTABLEKS                       R18 R12 K13 ["Utility"]
      103 GETTABLEKS                       R19 R12 K27 ["Link"]
      105 GETTABLEKS                       R20 R12 K28 ["Alert"]
      107 SETLIST                          R14 R15 6 [1]
      109 GETTABLEKS                       R15 R2 K29 ["map"]
      111 MOVE                             R16 R14
      112 DUPCLOSURE                       R17 K30 [PROTO_3]
      113 CAPTURE                          VAL R11
      114 CAPTURE                          VAL R6
      115 CAPTURE                          VAL R3
      116 CAPTURE                          VAL R10
      117 CAPTURE                          VAL R12
      118 CAPTURE                          VAL R8
      119 CAPTURE                          VAL R2
      120 CAPTURE                          VAL R7
      121 CAPTURE                          VAL R4
      122 CALL                             R15 2 1
      123 DUPTABLE                         R18 K36 [{["name"] = "Width", ["summary"] = "Width, fillBehavior, and precedence. Default uses AutomaticSize.X. Width (scale or offset) overrides. fillBehavior.Fill takes precedence over width.", ["story"]}]
      124 DUPCLOSURE                       R19 K37 [PROTO_7]
      125 CAPTURE                          VAL R11
      126 CAPTURE                          VAL R3
      127 CAPTURE                          VAL R10
      128 CAPTURE                          VAL R9
      129 CAPTURE                          VAL R4
      130 CAPTURE                          VAL R12
      131 CAPTURE                          VAL R7
      132 CAPTURE                          VAL R13
      133 SETTABLEKS                       R19 R18 K35 ["story"]
      135 FASTCALL2                        TABLE_INSERT R15 R18 ; [+4]
      137 MOVE                             R17 R15
      138 GETIMPORT                        R16 K40 [table.insert]
      140 CALL                             R16 2 0
      141 DUPTABLE                         R18 K41 [{["name"] = "FillBehavior", ["story"]}]
      142 DUPCLOSURE                       R19 K42 [PROTO_11]
      143 CAPTURE                          VAL R11
      144 CAPTURE                          VAL R3
      145 CAPTURE                          VAL R10
      146 CAPTURE                          VAL R4
      147 CAPTURE                          VAL R12
      148 CAPTURE                          VAL R7
      149 SETTABLEKS                       R19 R18 K35 ["story"]
      151 FASTCALL2                        TABLE_INSERT R15 R18 ; [+4]
      153 MOVE                             R17 R15
      154 GETIMPORT                        R16 K40 [table.insert]
      156 CALL                             R16 2 0
      157 DUPTABLE                         R16 K45 [{["summary"] = "Button", ["stories"], ["controls"]}]
      158 SETTABLEKS                       R15 R16 K43 ["stories"]
      160 DUPTABLE                         R17 K57 [{["icon"], ["text"] = "Lorem ipsum", ["isDisabled"] = False, ["isLoading"] = False, ["colorMode"], ["fillBehavior"], ["inputDelay"] = 0, ["usePath2DSpinner"]}]
      161 NEWTABLE                         R18 0 7
      163 LOADK                            R19 K58 ["play-small"]
      164 LOADK                            R20 K59 ["play-large"]
      165 LOADK                            R21 K60 ["play-xlarge"]
      166 LOADK                            R22 K61 ["robux"]
      167 LOADK                            R23 K62 ["heart"]
      168 LOADK                            R24 K63 ["glasses"]
      169 LOADK                            R25 K64 [""]
      170 SETLIST                          R18 R19 7 [1]
      172 SETTABLEKS                       R18 R17 K46 ["icon"]
      174 GETTABLEKS                       R18 R2 K65 ["values"]
      176 MOVE                             R19 R5
      177 CALL                             R18 1 1
      178 SETTABLEKS                       R18 R17 K52 ["colorMode"]
      180 NEWTABLE                         R18 0 3
      182 GETTABLEKS                       R19 R3 K66 ["None"]
      184 GETTABLEKS                       R20 R13 K67 ["Fit"]
      186 GETTABLEKS                       R21 R13 K68 ["Fill"]
      188 SETLIST                          R18 R19 3 [1]
      190 SETTABLEKS                       R18 R17 K53 ["fillBehavior"]
      192 GETTABLEKS                       R18 R6 K69 ["FoundationUsePath2DSpinner"]
      194 SETTABLEKS                       R18 R17 K56 ["usePath2DSpinner"]
      196 SETTABLEKS                       R17 R16 K44 ["controls"]
      198 RETURN                           R16 1
