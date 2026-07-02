PROTO_0:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R2 K2 ["%* %* IconButton (%*) activated"]
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
        4 DUPTABLE                         R3 K7 [{"icon", "variant", "onActivated", "isDisabled", "size", "isCircular"}]
        5 DUPTABLE                         R4 K9 [{"name", "variant"}]
        6 GETUPVAL                         R5 2
        7 GETTABLEKS                       R5 R5 K10 ["controls"]
        9 GETTABLEKS                       R5 R5 K8 ["name"]
       11 SETTABLEKS                       R5 R4 K8 ["name"]
       13 GETUPVAL                         R5 2
       14 GETTABLEKS                       R5 R5 K10 ["controls"]
       16 GETTABLEKS                       R5 R5 K2 ["variant"]
       18 SETTABLEKS                       R5 R4 K2 ["variant"]
       20 SETTABLEKS                       R4 R3 K1 ["icon"]
       22 GETUPVAL                         R4 3
       23 SETTABLEKS                       R4 R3 K2 ["variant"]
       25 NEWCLOSURE                       R4 P0
       26 CAPTURE                          UPVAL U4
       27 CAPTURE                          UPVAL U3
       28 CAPTURE                          VAL R0
       29 SETTABLEKS                       R4 R3 K3 ["onActivated"]
       31 GETUPVAL                         R4 5
       32 GETTABLEKS                       R4 R4 K4 ["isDisabled"]
       34 SETTABLEKS                       R4 R3 K4 ["isDisabled"]
       36 SETTABLEKS                       R0 R3 K5 ["size"]
       38 GETUPVAL                         R4 5
       39 GETTABLEKS                       R4 R4 K6 ["isCircular"]
       41 SETTABLEKS                       R4 R3 K6 ["isCircular"]
       43 CALL                             R1 2 -1
       44 RETURN                           R1 -1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETTABLEKS                       R2 R1 K1 ["colorMode"]
        4 DUPTABLE                         R3 K2 [{"colorMode"}]
        5 SETTABLEKS                       R2 R3 K1 ["colorMode"]
        7 GETUPVAL                         R4 0
        8 CALL                             R4 0 1
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R5 R5 K3 ["createElement"]
       12 GETUPVAL                         R6 2
       13 DUPTABLE                         R7 K7 [{["tag"] = "row align-y-center gap-medium size-0 auto-xy padding-medium radius-medium", ["backgroundStyle"]}]
       14 GETUPVAL                         R9 3
       15 GETUPVAL                         R10 4
       16 GETTABLEKS                       R10 R10 K8 ["OverMedia"]
       18 JUMPIFNOTEQ                      R9 R10 ; [+10]
       20 GETTABLEKS                       R8 R4 K9 ["Color"]
       22 GETTABLEKS                       R8 R8 K10 ["Extended"]
       24 GETTABLEKS                       R8 R8 K11 ["White"]
       26 GETTABLEKS                       R8 R8 K12 ["White_100"]
       28 JUMP                             ; [+8]
       29 JUMPIFNOT                        R2 ; [+6]
       30 GETTABLE                         R8 R4 R2
       31 GETTABLEKS                       R8 R8 K13 ["Surface"]
       33 GETTABLEKS                       R8 R8 K14 ["Surface_100"]
       35 JUMP                             ; [+1]
       36 LOADNIL                          R8
       37 SETTABLEKS                       R8 R7 K6 ["backgroundStyle"]
       39 DUPTABLE                         R8 K17 [{"Gradient", "IconButtons"}]
       40 GETUPVAL                         R10 3
       41 GETUPVAL                         R11 4
       42 GETTABLEKS                       R11 R11 K8 ["OverMedia"]
       44 JUMPIFNOTEQ                      R10 R11 ; [+45]
       46 GETUPVAL                         R9 1
       47 GETTABLEKS                       R9 R9 K3 ["createElement"]
       49 LOADK                            R10 K18 ["UIGradient"]
       50 DUPTABLE                         R11 K19 [{"Color"}]
       51 GETIMPORT                        R12 K22 [ColorSequence.new]
       53 NEWTABLE                         R13 0 2
       55 GETIMPORT                        R14 K24 [ColorSequenceKeypoint.new]
       57 LOADN                            R15 0
       58 GETTABLEKS                       R16 R4 K9 ["Color"]
       60 GETTABLEKS                       R16 R16 K10 ["Extended"]
       62 GETTABLEKS                       R16 R16 K25 ["Green"]
       64 GETTABLEKS                       R16 R16 K26 ["Green_500"]
       66 GETTABLEKS                       R16 R16 K27 ["Color3"]
       68 CALL                             R14 2 1
       69 GETIMPORT                        R15 K24 [ColorSequenceKeypoint.new]
       71 LOADN                            R16 1
       72 GETTABLEKS                       R17 R4 K9 ["Color"]
       74 GETTABLEKS                       R17 R17 K10 ["Extended"]
       76 GETTABLEKS                       R17 R17 K28 ["Blue"]
       78 GETTABLEKS                       R17 R17 K29 ["Blue_500"]
       80 GETTABLEKS                       R17 R17 K27 ["Color3"]
       82 CALL                             R15 2 -1
       83 SETLIST                          R13 R14 -1 [1]
       85 CALL                             R12 1 1
       86 SETTABLEKS                       R12 R11 K9 ["Color"]
       88 CALL                             R9 2 1
       89 JUMP                             ; [+1]
       90 LOADNIL                          R9
       91 SETTABLEKS                       R9 R8 K15 ["Gradient"]
       93 GETUPVAL                         R9 1
       94 GETTABLEKS                       R9 R9 K3 ["createElement"]
       96 GETUPVAL                         R10 5
       97 GETTABLEKS                       R10 R10 K30 ["Provider"]
       99 DUPTABLE                         R11 K32 [{"value"}]
      100 SETTABLEKS                       R3 R11 K31 ["value"]
      102 GETUPVAL                         R12 6
      103 GETTABLEKS                       R12 R12 K33 ["map"]
      105 NEWTABLE                         R13 0 4
      107 GETUPVAL                         R14 7
      108 GETTABLEKS                       R14 R14 K34 ["Large"]
      110 GETUPVAL                         R15 7
      111 GETTABLEKS                       R15 R15 K35 ["Medium"]
      113 GETUPVAL                         R16 7
      114 GETTABLEKS                       R16 R16 K36 ["Small"]
      116 GETUPVAL                         R17 7
      117 GETTABLEKS                       R17 R17 K37 ["XSmall"]
      119 SETLIST                          R13 R14 4 [1]
      121 NEWCLOSURE                       R14 P0
      122 CAPTURE                          UPVAL U1
      123 CAPTURE                          UPVAL U8
      124 CAPTURE                          VAL R0
      125 CAPTURE                          UPVAL U3
      126 CAPTURE                          VAL R2
      127 CAPTURE                          VAL R1
      128 CALL                             R12 2 -1
      129 CALL                             R9 -1 1
      130 SETTABLEKS                       R9 R8 K16 ["IconButtons"]
      132 CALL                             R5 3 -1
      133 RETURN                           R5 -1

PROTO_3:
        0 DUPTABLE                         R1 K2 [{"name", "story"}]
        1 SETTABLEKS                       R0 R1 K0 ["name"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          UPVAL U4
       10 CAPTURE                          UPVAL U5
       11 CAPTURE                          UPVAL U6
       12 CAPTURE                          UPVAL U7
       13 SETTABLEKS                       R2 R1 K1 ["story"]
       15 RETURN                           R1 1

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
        6 DUPTABLE                         R4 K4 [{"Default", "FixedWidth"}]
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R5 R5 K5 ["createElement"]
       10 GETUPVAL                         R6 2
       11 DUPTABLE                         R7 K10 [{["LayoutOrder"] = 1, ["tag"] = "col gap-xxsmall auto-xy"}]
       12 DUPTABLE                         R8 K13 [{"Label", "Row"}]
       13 GETUPVAL                         R9 1
       14 GETTABLEKS                       R9 R9 K5 ["createElement"]
       16 GETUPVAL                         R10 3
       17 DUPTABLE                         R11 K17 [{["Text"] = "Default (fixed square)", ["tag"] = "auto-xy text-body-small", ["LayoutOrder"] = 1}]
       18 CALL                             R9 2 1
       19 SETTABLEKS                       R9 R8 K11 ["Label"]
       21 GETUPVAL                         R9 1
       22 GETTABLEKS                       R9 R9 K5 ["createElement"]
       24 GETUPVAL                         R10 2
       25 DUPTABLE                         R11 K20 [{["tag"] = "row gap-medium auto-xy", ["LayoutOrder"] = 2}]
       26 NEWTABLE                         R12 0 1
       28 GETUPVAL                         R13 1
       29 GETTABLEKS                       R13 R13 K5 ["createElement"]
       31 GETUPVAL                         R14 4
       32 DUPTABLE                         R15 K25 [{"icon", "variant", "onActivated", "size"}]
       33 DUPTABLE                         R16 K27 [{"name", "variant"}]
       34 GETTABLEKS                       R17 R1 K26 ["name"]
       36 SETTABLEKS                       R17 R16 K26 ["name"]
       38 GETTABLEKS                       R17 R1 K22 ["variant"]
       40 SETTABLEKS                       R17 R16 K22 ["variant"]
       42 SETTABLEKS                       R16 R15 K21 ["icon"]
       44 GETUPVAL                         R16 5
       45 GETTABLEKS                       R16 R16 K28 ["Emphasis"]
       47 SETTABLEKS                       R16 R15 K22 ["variant"]
       49 DUPCLOSURE                       R16 K29 [PROTO_4]
       50 SETTABLEKS                       R16 R15 K23 ["onActivated"]
       52 GETUPVAL                         R16 6
       53 GETTABLEKS                       R16 R16 K30 ["Medium"]
       55 SETTABLEKS                       R16 R15 K24 ["size"]
       57 CALL                             R13 2 -1
       58 SETLIST                          R12 R13 -1 [1]
       60 CALL                             R9 3 1
       61 SETTABLEKS                       R9 R8 K12 ["Row"]
       63 CALL                             R5 3 1
       64 SETTABLEKS                       R5 R4 K2 ["Default"]
       66 GETUPVAL                         R5 1
       67 GETTABLEKS                       R5 R5 K5 ["createElement"]
       69 GETUPVAL                         R6 2
       70 DUPTABLE                         R7 K31 [{["LayoutOrder"] = 2, ["tag"] = "col gap-xxsmall auto-xy"}]
       71 DUPTABLE                         R8 K13 [{"Label", "Row"}]
       72 GETUPVAL                         R9 1
       73 GETTABLEKS                       R9 R9 K5 ["createElement"]
       75 GETUPVAL                         R10 3
       76 DUPTABLE                         R11 K33 [{["Text"] = "Fixed width (0, 200px)", ["tag"] = "auto-xy text-body-small", ["LayoutOrder"] = 1}]
       77 CALL                             R9 2 1
       78 SETTABLEKS                       R9 R8 K11 ["Label"]
       80 GETUPVAL                         R9 1
       81 GETTABLEKS                       R9 R9 K5 ["createElement"]
       83 GETUPVAL                         R10 2
       84 DUPTABLE                         R11 K20 [{["tag"] = "row gap-medium auto-xy", ["LayoutOrder"] = 2}]
       85 NEWTABLE                         R12 0 1
       87 GETUPVAL                         R13 1
       88 GETTABLEKS                       R13 R13 K5 ["createElement"]
       90 GETUPVAL                         R14 4
       91 DUPTABLE                         R15 K35 [{"icon", "variant", "onActivated", "size", "width"}]
       92 DUPTABLE                         R16 K27 [{"name", "variant"}]
       93 GETTABLEKS                       R17 R1 K26 ["name"]
       95 SETTABLEKS                       R17 R16 K26 ["name"]
       97 GETTABLEKS                       R17 R1 K22 ["variant"]
       99 SETTABLEKS                       R17 R16 K22 ["variant"]
      101 SETTABLEKS                       R16 R15 K21 ["icon"]
      103 GETUPVAL                         R16 5
      104 GETTABLEKS                       R16 R16 K28 ["Emphasis"]
      106 SETTABLEKS                       R16 R15 K22 ["variant"]
      108 DUPCLOSURE                       R16 K36 [PROTO_5]
      109 SETTABLEKS                       R16 R15 K23 ["onActivated"]
      111 GETUPVAL                         R16 6
      112 GETTABLEKS                       R16 R16 K30 ["Medium"]
      114 SETTABLEKS                       R16 R15 K24 ["size"]
      116 GETIMPORT                        R16 K39 [UDim.new]
      118 LOADN                            R17 0
      119 LOADN                            R18 200
      120 CALL                             R16 2 1
      121 SETTABLEKS                       R16 R15 K34 ["width"]
      123 CALL                             R13 2 -1
      124 SETLIST                          R12 R13 -1 [1]
      126 CALL                             R9 3 1
      127 SETTABLEKS                       R9 R8 K12 ["Row"]
      129 CALL                             R5 3 1
      130 SETTABLEKS                       R5 R4 K3 ["FixedWidth"]
      132 GETUPVAL                         R5 7
      133 GETTABLEKS                       R5 R5 K40 ["FoundationIconButtonFillBehavior"]
      135 JUMPIFNOT                        R5 ; [+80]
      136 GETUPVAL                         R5 1
      137 GETTABLEKS                       R5 R5 K5 ["createElement"]
      139 GETUPVAL                         R6 2
      140 DUPTABLE                         R7 K42 [{["LayoutOrder"] = 4, ["tag"] = "col gap-xxsmall auto-xy"}]
      141 DUPTABLE                         R8 K13 [{"Label", "Row"}]
      142 GETUPVAL                         R9 1
      143 GETTABLEKS                       R9 R9 K5 ["createElement"]
      145 GETUPVAL                         R10 3
      146 DUPTABLE                         R11 K44 [{["Text"] = "fillBehavior.Fill takes precedence over width=200px", ["tag"] = "auto-xy text-body-small", ["LayoutOrder"] = 1}]
      147 CALL                             R9 2 1
      148 SETTABLEKS                       R9 R8 K11 ["Label"]
      150 GETUPVAL                         R9 1
      151 GETTABLEKS                       R9 R9 K5 ["createElement"]
      153 GETUPVAL                         R10 2
      154 DUPTABLE                         R11 K47 [{["tag"] = "row size-full-0 auto-xy", ["LayoutOrder"] = 2, ["Size"]}]
      155 GETIMPORT                        R12 K49 [UDim2.new]
      157 LOADN                            R13 1
      158 LOADN                            R14 0
      159 LOADN                            R15 0
      160 LOADN                            R16 60
      161 CALL                             R12 4 1
      162 SETTABLEKS                       R12 R11 K46 ["Size"]
      164 NEWTABLE                         R12 0 1
      166 GETUPVAL                         R13 1
      167 GETTABLEKS                       R13 R13 K5 ["createElement"]
      169 GETUPVAL                         R14 4
      170 DUPTABLE                         R15 K51 [{"icon", "variant", "onActivated", "size", "width", "fillBehavior"}]
      171 DUPTABLE                         R16 K27 [{"name", "variant"}]
      172 GETTABLEKS                       R17 R1 K26 ["name"]
      174 SETTABLEKS                       R17 R16 K26 ["name"]
      176 GETTABLEKS                       R17 R1 K22 ["variant"]
      178 SETTABLEKS                       R17 R16 K22 ["variant"]
      180 SETTABLEKS                       R16 R15 K21 ["icon"]
      182 GETUPVAL                         R16 5
      183 GETTABLEKS                       R16 R16 K28 ["Emphasis"]
      185 SETTABLEKS                       R16 R15 K22 ["variant"]
      187 DUPCLOSURE                       R16 K52 [PROTO_6]
      188 SETTABLEKS                       R16 R15 K23 ["onActivated"]
      190 GETUPVAL                         R16 6
      191 GETTABLEKS                       R16 R16 K30 ["Medium"]
      193 SETTABLEKS                       R16 R15 K24 ["size"]
      195 GETIMPORT                        R16 K39 [UDim.new]
      197 LOADN                            R17 0
      198 LOADN                            R18 200
      199 CALL                             R16 2 1
      200 SETTABLEKS                       R16 R15 K34 ["width"]
      202 GETUPVAL                         R16 8
      203 GETTABLEKS                       R16 R16 K53 ["Fill"]
      205 SETTABLEKS                       R16 R15 K50 ["fillBehavior"]
      207 CALL                             R13 2 -1
      208 SETLIST                          R12 R13 -1 [1]
      210 CALL                             R9 3 1
      211 SETTABLEKS                       R9 R8 K12 ["Row"]
      213 CALL                             R5 3 1
      214 SETTABLEKS                       R5 R4 K54 ["FillBehaviorTakesPrecedence"]
      216 GETUPVAL                         R5 1
      217 GETTABLEKS                       R5 R5 K5 ["createElement"]
      219 GETUPVAL                         R6 2
      220 DUPTABLE                         R7 K57 [{["tag"] = "col gap-large size-full-0 auto-xy padding-large radius-medium", ["backgroundStyle"]}]
      221 JUMPIFNOT                        R2 ; [+6]
      222 GETTABLE                         R8 R3 R2
      223 GETTABLEKS                       R8 R8 K58 ["Surface"]
      225 GETTABLEKS                       R8 R8 K59 ["Surface_100"]
      227 JUMP                             ; [+1]
      228 LOADNIL                          R8
      229 SETTABLEKS                       R8 R7 K56 ["backgroundStyle"]
      231 MOVE                             R8 R4
      232 CALL                             R5 3 -1
      233 RETURN                           R5 -1

PROTO_8:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R2 K2 ["%* IconButton row %* activated"]
        3 GETUPVAL                         R4 0
        4 GETUPVAL                         R5 1
        5 NAMECALL                         R2 R2 K3 ["format"]
        7 CALL                             R2 3 1
        8 MOVE                             R1 R2
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_9:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R2 K2 ["%* IconButton row %* activated"]
        3 GETUPVAL                         R4 0
        4 GETUPVAL                         R5 1
        5 NAMECALL                         R2 R2 K3 ["format"]
        7 CALL                             R2 3 1
        8 MOVE                             R1 R2
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_10:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R2 K2 ["%* IconButton row %* activated"]
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
       37 DUPTABLE                         R11 K21 [{"icon", "variant", "onActivated", "isDisabled", "size", "isCircular", "fillBehavior"}]
       38 DUPTABLE                         R12 K23 [{"name", "variant"}]
       39 GETTABLEKS                       R13 R1 K22 ["name"]
       41 SETTABLEKS                       R13 R12 K22 ["name"]
       43 GETTABLEKS                       R13 R1 K16 ["variant"]
       45 SETTABLEKS                       R13 R12 K16 ["variant"]
       47 SETTABLEKS                       R12 R11 K15 ["icon"]
       49 GETUPVAL                         R12 4
       50 GETTABLEKS                       R12 R12 K24 ["Emphasis"]
       52 SETTABLEKS                       R12 R11 K16 ["variant"]
       54 NEWCLOSURE                       R12 P0
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R4
       57 SETTABLEKS                       R12 R11 K17 ["onActivated"]
       59 GETTABLEKS                       R12 R1 K18 ["isDisabled"]
       61 SETTABLEKS                       R12 R11 K18 ["isDisabled"]
       63 GETUPVAL                         R12 5
       64 GETTABLEKS                       R12 R12 K25 ["Medium"]
       66 SETTABLEKS                       R12 R11 K19 ["size"]
       68 GETTABLEKS                       R12 R1 K20 ["isCircular"]
       70 SETTABLEKS                       R12 R11 K20 ["isCircular"]
       72 SETTABLEKS                       R4 R11 K2 ["fillBehavior"]
       74 CALL                             R9 2 1
       75 SETTABLEKS                       R9 R8 K11 ["One"]
       77 GETUPVAL                         R9 1
       78 GETTABLEKS                       R9 R9 K4 ["createElement"]
       80 GETUPVAL                         R10 3
       81 DUPTABLE                         R11 K21 [{"icon", "variant", "onActivated", "isDisabled", "size", "isCircular", "fillBehavior"}]
       82 DUPTABLE                         R12 K23 [{"name", "variant"}]
       83 GETTABLEKS                       R13 R1 K22 ["name"]
       85 SETTABLEKS                       R13 R12 K22 ["name"]
       87 GETTABLEKS                       R13 R1 K16 ["variant"]
       89 SETTABLEKS                       R13 R12 K16 ["variant"]
       91 SETTABLEKS                       R12 R11 K15 ["icon"]
       93 GETUPVAL                         R12 4
       94 GETTABLEKS                       R12 R12 K26 ["Utility"]
       96 SETTABLEKS                       R12 R11 K16 ["variant"]
       98 NEWCLOSURE                       R12 P1
       99 CAPTURE                          VAL R2
      100 CAPTURE                          VAL R4
      101 SETTABLEKS                       R12 R11 K17 ["onActivated"]
      103 GETTABLEKS                       R12 R1 K18 ["isDisabled"]
      105 SETTABLEKS                       R12 R11 K18 ["isDisabled"]
      107 GETUPVAL                         R12 5
      108 GETTABLEKS                       R12 R12 K25 ["Medium"]
      110 SETTABLEKS                       R12 R11 K19 ["size"]
      112 GETTABLEKS                       R12 R1 K20 ["isCircular"]
      114 SETTABLEKS                       R12 R11 K20 ["isCircular"]
      116 SETTABLEKS                       R4 R11 K2 ["fillBehavior"]
      118 CALL                             R9 2 1
      119 SETTABLEKS                       R9 R8 K12 ["Two"]
      121 GETUPVAL                         R9 1
      122 GETTABLEKS                       R9 R9 K4 ["createElement"]
      124 GETUPVAL                         R10 3
      125 DUPTABLE                         R11 K21 [{"icon", "variant", "onActivated", "isDisabled", "size", "isCircular", "fillBehavior"}]
      126 DUPTABLE                         R12 K23 [{"name", "variant"}]
      127 GETTABLEKS                       R13 R1 K22 ["name"]
      129 SETTABLEKS                       R13 R12 K22 ["name"]
      131 GETTABLEKS                       R13 R1 K16 ["variant"]
      133 SETTABLEKS                       R13 R12 K16 ["variant"]
      135 SETTABLEKS                       R12 R11 K15 ["icon"]
      137 GETUPVAL                         R12 4
      138 GETTABLEKS                       R12 R12 K26 ["Utility"]
      140 SETTABLEKS                       R12 R11 K16 ["variant"]
      142 NEWCLOSURE                       R12 P2
      143 CAPTURE                          VAL R2
      144 CAPTURE                          VAL R4
      145 SETTABLEKS                       R12 R11 K17 ["onActivated"]
      147 GETTABLEKS                       R12 R1 K18 ["isDisabled"]
      149 SETTABLEKS                       R12 R11 K18 ["isDisabled"]
      151 GETUPVAL                         R12 5
      152 GETTABLEKS                       R12 R12 K25 ["Medium"]
      154 SETTABLEKS                       R12 R11 K19 ["size"]
      156 GETTABLEKS                       R12 R1 K20 ["isCircular"]
      158 SETTABLEKS                       R12 R11 K20 ["isCircular"]
      160 SETTABLEKS                       R4 R11 K2 ["fillBehavior"]
      162 CALL                             R9 2 1
      163 SETTABLEKS                       R9 R8 K13 ["Three"]
      165 CALL                             R5 3 -1
      166 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["BuilderIcons"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Dash"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["React"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R0 K10 ["Enums"]
       28 GETTABLEKS                       R6 R6 K11 ["ColorMode"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K6 [require]
       33 GETTABLEKS                       R7 R0 K10 ["Enums"]
       35 GETTABLEKS                       R7 R7 K12 ["FillBehavior"]
       37 CALL                             R6 1 1
       38 GETIMPORT                        R7 K6 [require]
       40 GETTABLEKS                       R8 R0 K13 ["Components"]
       42 GETTABLEKS                       R8 R8 K14 ["IconButton"]
       44 CALL                             R7 1 1
       45 GETIMPORT                        R8 K6 [require]
       47 GETTABLEKS                       R9 R0 K15 ["Providers"]
       49 GETTABLEKS                       R9 R9 K16 ["Style"]
       51 GETTABLEKS                       R9 R9 K17 ["PresentationContext"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R10 R0 K13 ["Components"]
       58 GETTABLEKS                       R10 R10 K18 ["Text"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K6 [require]
       63 GETTABLEKS                       R11 R0 K13 ["Components"]
       65 GETTABLEKS                       R11 R11 K19 ["View"]
       67 CALL                             R10 1 1
       68 GETIMPORT                        R11 K6 [require]
       70 GETTABLEKS                       R12 R0 K15 ["Providers"]
       72 GETTABLEKS                       R12 R12 K16 ["Style"]
       74 GETTABLEKS                       R12 R12 K20 ["useTokens"]
       76 CALL                             R11 1 1
       77 GETIMPORT                        R12 K6 [require]
       79 GETTABLEKS                       R13 R0 K10 ["Enums"]
       81 GETTABLEKS                       R13 R13 K21 ["InputSize"]
       83 CALL                             R12 1 1
       84 GETIMPORT                        R13 K6 [require]
       86 GETTABLEKS                       R14 R0 K10 ["Enums"]
       88 GETTABLEKS                       R14 R14 K22 ["ButtonVariant"]
       90 CALL                             R13 1 1
       91 GETIMPORT                        R14 K6 [require]
       93 GETTABLEKS                       R15 R0 K23 ["Utility"]
       95 GETTABLEKS                       R15 R15 K24 ["Flags"]
       97 CALL                             R14 1 1
       98 NEWTABLE                         R15 0 5
      100 GETTABLEKS                       R16 R13 K23 ["Utility"]
      102 GETTABLEKS                       R17 R13 K25 ["Standard"]
      104 GETTABLEKS                       R18 R13 K26 ["Emphasis"]
      106 GETTABLEKS                       R19 R13 K27 ["OverMedia"]
      108 GETTABLEKS                       R20 R13 K28 ["Alert"]
      110 SETLIST                          R15 R16 5 [1]
      112 GETTABLEKS                       R16 R3 K29 ["map"]
      114 MOVE                             R17 R15
      115 DUPCLOSURE                       R18 K30 [PROTO_3]
      116 CAPTURE                          VAL R11
      117 CAPTURE                          VAL R4
      118 CAPTURE                          VAL R10
      119 CAPTURE                          VAL R13
      120 CAPTURE                          VAL R8
      121 CAPTURE                          VAL R3
      122 CAPTURE                          VAL R12
      123 CAPTURE                          VAL R7
      124 CALL                             R16 2 1
      125 DUPTABLE                         R19 K36 [{["name"] = "Width", ["summary"] = "Width, fillBehavior, and precedence. Default uses the fixed square size from the variant system. Width (scale or offset) overrides. fillBehavior.Fill takes precedence over width.", ["story"]}]
      126 DUPCLOSURE                       R20 K37 [PROTO_7]
      127 CAPTURE                          VAL R11
      128 CAPTURE                          VAL R4
      129 CAPTURE                          VAL R10
      130 CAPTURE                          VAL R9
      131 CAPTURE                          VAL R7
      132 CAPTURE                          VAL R13
      133 CAPTURE                          VAL R12
      134 CAPTURE                          VAL R14
      135 CAPTURE                          VAL R6
      136 SETTABLEKS                       R20 R19 K35 ["story"]
      138 FASTCALL2                        TABLE_INSERT R16 R19 ; [+4]
      140 MOVE                             R18 R16
      141 GETIMPORT                        R17 K40 [table.insert]
      143 CALL                             R17 2 0
      144 GETTABLEKS                       R17 R14 K41 ["FoundationIconButtonFillBehavior"]
      146 JUMPIFNOT                        R17 ; [+16]
      147 DUPTABLE                         R19 K42 [{["name"] = "FillBehavior", ["story"]}]
      148 DUPCLOSURE                       R20 K43 [PROTO_11]
      149 CAPTURE                          VAL R11
      150 CAPTURE                          VAL R4
      151 CAPTURE                          VAL R10
      152 CAPTURE                          VAL R7
      153 CAPTURE                          VAL R13
      154 CAPTURE                          VAL R12
      155 SETTABLEKS                       R20 R19 K35 ["story"]
      157 FASTCALL2                        TABLE_INSERT R16 R19 ; [+4]
      159 MOVE                             R18 R16
      160 GETIMPORT                        R17 K40 [table.insert]
      162 CALL                             R17 2 0
      163 DUPTABLE                         R17 K46 [{["summary"] = "IconButton", ["stories"], ["controls"]}]
      164 SETTABLEKS                       R16 R17 K44 ["stories"]
      166 DUPTABLE                         R18 K53 [{["name"], ["variant"], ["isDisabled"] = False, ["isCircular"] = False, ["colorMode"], ["fillBehavior"]}]
      167 NEWTABLE                         R19 0 6
      169 LOADK                            R20 K54 ["play-small"]
      170 LOADK                            R21 K55 ["play-large"]
      171 LOADK                            R22 K56 ["play-xlarge"]
      172 LOADK                            R23 K57 ["robux"]
      173 LOADK                            R24 K58 ["heart"]
      174 LOADK                            R25 K59 ["glasses"]
      175 SETLIST                          R19 R20 6 [1]
      177 SETTABLEKS                       R19 R18 K31 ["name"]
      179 GETTABLEKS                       R19 R3 K60 ["values"]
      181 GETTABLEKS                       R20 R2 K61 ["IconVariant"]
      183 CALL                             R19 1 1
      184 SETTABLEKS                       R19 R18 K47 ["variant"]
      186 GETTABLEKS                       R19 R3 K60 ["values"]
      188 MOVE                             R20 R5
      189 CALL                             R19 1 1
      190 SETTABLEKS                       R19 R18 K51 ["colorMode"]
      192 GETTABLEKS                       R20 R14 K41 ["FoundationIconButtonFillBehavior"]
      194 JUMPIFNOT                        R20 ; [+11]
      195 NEWTABLE                         R19 0 3
      197 GETTABLEKS                       R20 R4 K62 ["None"]
      199 GETTABLEKS                       R21 R6 K63 ["Fit"]
      201 GETTABLEKS                       R22 R6 K64 ["Fill"]
      203 SETLIST                          R19 R20 3 [1]
      205 JUMP                             ; [+1]
      206 LOADNIL                          R19
      207 SETTABLEKS                       R19 R18 K52 ["fillBehavior"]
      209 SETTABLEKS                       R18 R17 K45 ["controls"]
      211 RETURN                           R17 1
