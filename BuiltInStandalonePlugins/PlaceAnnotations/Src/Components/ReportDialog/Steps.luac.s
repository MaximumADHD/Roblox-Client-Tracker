PROTO_0:
        0 GETIMPORT                        R2 K2 [DateTime.fromUnixTimestamp]
        2 MOVE                             R3 R0
        3 CALL                             R2 1 1
        4 LOADK                            R4 K3 ["LT MMM D"]
        5 MOVE                             R5 R1
        6 NAMECALL                         R2 R2 K4 ["FormatLocalTime"]
        8 CALL                             R2 3 -1
        9 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Image"]
        6 DUPTABLE                         R3 K5 [{["LayoutOrder"] = 1, ["Image"], ["Size"]}]
        7 LOADK                            R5 K6 ["rbxthumb://type=AvatarHeadShot&id=%*&filters=circular&w=150&h=150"]
        8 MOVE                             R7 R0
        9 NAMECALL                         R5 R5 K7 ["format"]
       11 CALL                             R5 2 1
       12 MOVE                             R4 R5
       13 SETTABLEKS                       R4 R3 K1 ["Image"]
       15 GETIMPORT                        R4 K10 [UDim2.fromOffset]
       17 LOADN                            R5 28
       18 LOADN                            R6 28
       19 CALL                             R4 2 1
       20 SETTABLEKS                       R4 R3 K4 ["Size"]
       22 CALL                             R1 2 -1
       23 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Text"]
        6 DUPTABLE                         R3 K7 [{["LayoutOrder"] = 1, ["Text"], ["tag"] = "size-full-0 auto-y text-body-small text-align-x-left content-emphasis", ["fontStyle"]}]
        7 SETTABLEKS                       R0 R3 K1 ["Text"]
        9 GETUPVAL                         R4 2
       10 SETTABLEKS                       R4 R3 K6 ["fontStyle"]
       12 CALL                             R1 2 -1
       13 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 NAMECALL                         R2 R2 K0 ["use"]
        7 CALL                             R2 1 1
        8 GETTABLEKS                       R3 R0 K1 ["Comment"]
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R4 R4 K2 ["createElement"]
       13 GETUPVAL                         R5 3
       14 GETTABLEKS                       R5 R5 K3 ["View"]
       16 DUPTABLE                         R6 K7 [{["LayoutOrder"] = 2, ["tag"]}]
       17 NEWTABLE                         R7 2 0
       19 LOADB                            R8 1
       20 SETTABLEKS                       R8 R7 K8 ["col gap-xsmall size-full-0 auto-y padding-small bg-shift-100"]
       22 GETTABLEKS                       R8 R0 K9 ["Rounded"]
       24 SETTABLEKS                       R8 R7 K10 ["radius-small"]
       26 SETTABLEKS                       R7 R6 K6 ["tag"]
       28 DUPTABLE                         R7 K13 [{"Reporting", "CommentRow"}]
       29 GETUPVAL                         R8 2
       30 GETTABLEKS                       R8 R8 K2 ["createElement"]
       32 GETUPVAL                         R9 3
       33 GETTABLEKS                       R9 R9 K14 ["Text"]
       35 DUPTABLE                         R10 K17 [{["LayoutOrder"] = 1, ["Text"], ["tag"] = "size-full-0 auto-y text-label-small text-align-x-left content-muted"}]
       36 LOADK                            R13 K18 ["Report"]
       37 LOADK                            R14 K11 ["Reporting"]
       38 NAMECALL                         R11 R1 K19 ["getText"]
       40 CALL                             R11 3 1
       41 SETTABLEKS                       R11 R10 K14 ["Text"]
       43 CALL                             R8 2 1
       44 SETTABLEKS                       R8 R7 K11 ["Reporting"]
       46 GETUPVAL                         R8 2
       47 GETTABLEKS                       R8 R8 K2 ["createElement"]
       49 GETUPVAL                         R9 3
       50 GETTABLEKS                       R9 R9 K3 ["View"]
       52 DUPTABLE                         R10 K21 [{["LayoutOrder"] = 2, ["tag"] = "row align-y-center gap-small size-full-0 auto-y"}]
       53 DUPTABLE                         R11 K23 [{"Avatar", "Text"}]
       54 GETUPVAL                         R12 4
       55 GETTABLEKS                       R13 R3 K24 ["AuthorId"]
       57 CALL                             R12 1 1
       58 SETTABLEKS                       R12 R11 K22 ["Avatar"]
       60 GETUPVAL                         R12 2
       61 GETTABLEKS                       R12 R12 K2 ["createElement"]
       63 GETUPVAL                         R13 3
       64 GETTABLEKS                       R13 R13 K3 ["View"]
       66 DUPTABLE                         R14 K26 [{["LayoutOrder"] = 2, ["tag"] = "col align-x-left fill gap-xsmall size-0-0 auto-y"}]
       67 DUPTABLE                         R15 K29 [{"Metadata", "Contents"}]
       68 GETUPVAL                         R16 2
       69 GETTABLEKS                       R16 R16 K2 ["createElement"]
       71 GETUPVAL                         R17 3
       72 GETTABLEKS                       R17 R17 K14 ["Text"]
       74 DUPTABLE                         R18 K31 [{["LayoutOrder"] = 1, ["Text"], ["tag"] = "size-full-0 auto-y text-body-small text-align-x-left content-emphasis"}]
       75 LOADK                            R20 K32 ["%* · %*"]
       76 GETTABLEKS                       R24 R3 K24 ["AuthorId"]
       78 NAMECALL                         R22 R2 K33 ["getUsername"]
       80 CALL                             R22 2 1
       81 GETTABLEKS                       R24 R3 K34 ["CreationTimeUnix"]
       83 NAMECALL                         R25 R1 K35 ["getLocale"]
       85 CALL                             R25 1 1
       86 GETIMPORT                        R26 K38 [DateTime.fromUnixTimestamp]
       88 MOVE                             R27 R24
       89 CALL                             R26 1 1
       90 LOADK                            R28 K39 ["LT MMM D"]
       91 MOVE                             R29 R25
       92 NAMECALL                         R26 R26 K40 ["FormatLocalTime"]
       94 CALL                             R26 3 1
       95 MOVE                             R23 R26
       96 NAMECALL                         R20 R20 K41 ["format"]
       98 CALL                             R20 3 1
       99 MOVE                             R19 R20
      100 SETTABLEKS                       R19 R18 K14 ["Text"]
      102 CALL                             R16 2 1
      103 SETTABLEKS                       R16 R15 K27 ["Metadata"]
      105 GETUPVAL                         R16 2
      106 GETTABLEKS                       R16 R16 K2 ["createElement"]
      108 GETUPVAL                         R17 3
      109 GETTABLEKS                       R17 R17 K14 ["Text"]
      111 DUPTABLE                         R18 K43 [{["LayoutOrder"] = 2, ["Text"], ["tag"] = "size-full-0 auto-y text-body-small text-wrap text-align-x-left content-muted"}]
      112 GETUPVAL                         R19 5
      113 GETTABLEKS                       R20 R3 K28 ["Contents"]
      115 GETTABLEKS                       R21 R3 K44 ["TaggedUsers"]
      117 MOVE                             R22 R2
      118 CALL                             R19 3 1
      119 SETTABLEKS                       R19 R18 K14 ["Text"]
      121 CALL                             R16 2 1
      122 SETTABLEKS                       R16 R15 K28 ["Contents"]
      124 CALL                             R12 3 1
      125 SETTABLEKS                       R12 R11 K14 ["Text"]
      127 CALL                             R8 3 1
      128 SETTABLEKS                       R8 R7 K12 ["CommentRow"]
      130 CALL                             R4 3 -1
      131 RETURN                           R4 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+9]
        4 GETUPVAL                         R0 0
        5 LOADNIL                          R1
        6 SETTABLEKS                       R1 R0 K0 ["current"]
        8 GETUPVAL                         R0 1
        9 GETTABLEKS                       R0 R0 K0 ["current"]
       11 LOADNIL                          R1
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_5:
        0 JUMPIFNOTEQKNIL                  R1 ; [+3]
        2 GETUPVAL                         R2 0
        3 CALL                             R2 0 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["SelectedComment"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R1 R0 K1 ["AncestryChanged"]
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          UPVAL U1
        9 NAMECALL                         R1 R1 K2 ["Connect"]
       11 CALL                             R1 2 1
       12 NEWCLOSURE                       R2 P1
       13 CAPTURE                          VAL R1
       14 RETURN                           R2 1

PROTO_8:
        0 GETTABLEKS                       R3 R0 K0 ["CreationTimeUnix"]
        2 GETTABLEKS                       R4 R1 K0 ["CreationTimeUnix"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_9:
        0 NEWTABLE                         R0 0 1
        2 GETUPVAL                         R1 0
        3 SETLIST                          R0 R1 1 [1]
        5 GETUPVAL                         R1 0
        6 NAMECALL                         R1 R1 K0 ["GetChildren"]
        8 CALL                             R1 1 3
        9 FORGPREP                         R1
       10 LOADK                            R8 K1 ["Annotation"]
       11 NAMECALL                         R6 R5 K2 ["IsA"]
       13 CALL                             R6 2 1
       14 JUMPIFNOT                        R6 ; [+7]
       15 FASTCALL2                        TABLE_INSERT R0 R5 ; [+5]
       17 MOVE                             R7 R0
       18 MOVE                             R8 R5
       19 GETIMPORT                        R6 K5 [table.insert]
       21 CALL                             R6 2 0
       22 FORGLOOP                         R1 2 ; [-13]
       24 GETIMPORT                        R1 K7 [table.sort]
       26 MOVE                             R2 R0
       27 DUPCLOSURE                       R3 K8 [PROTO_8]
       28 CALL                             R1 2 0
       29 GETUPVAL                         R1 1
       30 GETTABLEKS                       R1 R1 K9 ["current"]
       32 JUMPIFNOT                        R1 ; [+8]
       33 GETIMPORT                        R2 K11 [table.find]
       35 MOVE                             R3 R0
       36 MOVE                             R4 R1
       37 CALL                             R2 2 1
       38 JUMPIF                           R2 ; [+2]
       39 GETUPVAL                         R2 2
       40 CALL                             R2 0 0
       41 GETUPVAL                         R2 3
       42 MOVE                             R3 R0
       43 CALL                             R2 1 0
       44 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Thread"]
        3 JUMPIF                           R0 ; [+5]
        4 GETUPVAL                         R1 1
        5 NEWTABLE                         R2 0 0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0
        9 NEWCLOSURE                       R1 P0
       10 CAPTURE                          VAL R0
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          UPVAL U3
       13 CAPTURE                          UPVAL U1
       14 MOVE                             R2 R1
       15 CALL                             R2 0 0
       16 GETTABLEKS                       R2 R0 K1 ["ChildAdded"]
       18 MOVE                             R4 R1
       19 NAMECALL                         R2 R2 K2 ["Connect"]
       21 CALL                             R2 2 1
       22 GETTABLEKS                       R3 R0 K3 ["ChildRemoved"]
       24 MOVE                             R5 R1
       25 NAMECALL                         R3 R3 K2 ["Connect"]
       27 CALL                             R3 2 1
       28 NEWCLOSURE                       R4 P1
       29 CAPTURE                          VAL R2
       30 CAPTURE                          VAL R3
       31 RETURN                           R4 1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnSelectedCommentChanged"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 GETTABLEKS                       R6 R5 K0 ["Name"]
        6 JUMPIFNOTEQ                      R6 R0 ; [+7]
        8 GETUPVAL                         R6 1
        9 GETTABLEKS                       R6 R6 K1 ["OnSelectedCommentChanged"]
       11 MOVE                             R7 R5
       12 CALL                             R6 1 0
       13 RETURN                           R0 0
       14 FORGLOOP                         R1 2 ; [-11]
       16 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 NAMECALL                         R2 R2 K0 ["use"]
        7 CALL                             R2 1 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K1 ["useState"]
       11 NEWTABLE                         R4 0 0
       13 CALL                             R3 1 2
       14 GETUPVAL                         R5 2
       15 GETTABLEKS                       R5 R5 K1 ["useState"]
       17 LOADK                            R6 K2 [""]
       18 CALL                             R5 1 2
       19 GETUPVAL                         R7 2
       20 GETTABLEKS                       R7 R7 K3 ["useRef"]
       22 GETTABLEKS                       R8 R0 K4 ["SelectedComment"]
       24 CALL                             R7 1 1
       25 GETUPVAL                         R8 2
       26 GETTABLEKS                       R8 R8 K3 ["useRef"]
       28 GETTABLEKS                       R9 R0 K5 ["OnSelectedCommentChanged"]
       30 CALL                             R8 1 1
       31 GETTABLEKS                       R9 R0 K4 ["SelectedComment"]
       33 SETTABLEKS                       R9 R7 K6 ["current"]
       35 GETTABLEKS                       R9 R0 K5 ["OnSelectedCommentChanged"]
       37 SETTABLEKS                       R9 R8 K6 ["current"]
       39 GETUPVAL                         R9 2
       40 GETTABLEKS                       R9 R9 K7 ["useCallback"]
       42 NEWCLOSURE                       R10 P0
       43 CAPTURE                          VAL R7
       44 CAPTURE                          VAL R8
       45 NEWTABLE                         R11 0 0
       47 CALL                             R9 2 1
       48 GETUPVAL                         R10 2
       49 GETTABLEKS                       R10 R10 K8 ["useEffect"]
       51 NEWCLOSURE                       R11 P1
       52 CAPTURE                          VAL R0
       53 CAPTURE                          VAL R9
       54 NEWTABLE                         R12 0 2
       56 GETTABLEKS                       R13 R0 K4 ["SelectedComment"]
       58 MOVE                             R14 R9
       59 SETLIST                          R12 R13 2 [1]
       61 CALL                             R10 2 0
       62 GETUPVAL                         R10 2
       63 GETTABLEKS                       R10 R10 K8 ["useEffect"]
       65 NEWCLOSURE                       R11 P2
       66 CAPTURE                          VAL R0
       67 CAPTURE                          VAL R4
       68 CAPTURE                          VAL R7
       69 CAPTURE                          VAL R9
       70 NEWTABLE                         R12 0 2
       72 GETTABLEKS                       R13 R0 K9 ["Thread"]
       74 MOVE                             R14 R9
       75 SETLIST                          R12 R13 2 [1]
       77 CALL                             R10 2 0
       78 NEWTABLE                         R10 0 0
       80 GETIMPORT                        R11 K12 [string.lower]
       82 MOVE                             R12 R5
       83 CALL                             R11 1 1
       84 MOVE                             R12 R3
       85 LOADNIL                          R13
       86 LOADNIL                          R14
       87 FORGPREP                         R12
       88 GETUPVAL                         R17 3
       89 GETTABLEKS                       R18 R16 K13 ["Contents"]
       91 GETTABLEKS                       R19 R16 K14 ["TaggedUsers"]
       93 MOVE                             R20 R2
       94 CALL                             R17 3 1
       95 JUMPIFEQKS                       R5 K2 [""] ; [+12]
       97 GETIMPORT                        R18 K16 [string.find]
       99 GETIMPORT                        R19 K12 [string.lower]
      101 MOVE                             R20 R17
      102 CALL                             R19 1 1
      103 MOVE                             R20 R11
      104 LOADN                            R21 1
      105 LOADB                            R22 1
      106 CALL                             R18 4 1
      107 JUMPIFNOT                        R18 ; [+135]
      108 LOADK                            R19 K17 ["Comment%*"]
      109 MOVE                             R21 R15
      110 NAMECALL                         R19 R19 K18 ["format"]
      112 CALL                             R19 2 1
      113 MOVE                             R18 R19
      114 GETUPVAL                         R19 2
      115 GETTABLEKS                       R19 R19 K19 ["createElement"]
      117 GETUPVAL                         R20 4
      118 GETTABLEKS                       R20 R20 K20 ["View"]
      120 DUPTABLE                         R21 K25 [{["LayoutOrder"], ["tag"] = "col size-full-0 auto-y", ["onActivated"]}]
      121 SETTABLEKS                       R15 R21 K21 ["LayoutOrder"]
      123 NEWCLOSURE                       R22 P3
      124 CAPTURE                          VAL R0
      125 CAPTURE                          VAL R16
      126 SETTABLEKS                       R22 R21 K24 ["onActivated"]
      128 DUPTABLE                         R22 K28 [{"Row", "Divider"}]
      129 GETUPVAL                         R23 2
      130 GETTABLEKS                       R23 R23 K19 ["createElement"]
      132 GETUPVAL                         R24 4
      133 GETTABLEKS                       R24 R24 K20 ["View"]
      135 DUPTABLE                         R25 K31 [{["LayoutOrder"] = 1, ["tag"] = "row align-y-center gap-small size-full-0 auto-y padding-small"}]
      136 DUPTABLE                         R26 K35 [{"Avatar", "Comment", "Radio"}]
      137 GETUPVAL                         R27 5
      138 GETTABLEKS                       R28 R16 K36 ["AuthorId"]
      140 CALL                             R27 1 1
      141 SETTABLEKS                       R27 R26 K32 ["Avatar"]
      143 GETUPVAL                         R27 2
      144 GETTABLEKS                       R27 R27 K19 ["createElement"]
      146 GETUPVAL                         R28 4
      147 GETTABLEKS                       R28 R28 K20 ["View"]
      149 DUPTABLE                         R29 K39 [{["LayoutOrder"] = 2, ["tag"] = "col align-x-left fill gap-xsmall size-0-0 auto-y"}]
      150 DUPTABLE                         R30 K41 [{"Metadata", "Contents"}]
      151 GETUPVAL                         R31 2
      152 GETTABLEKS                       R31 R31 K19 ["createElement"]
      154 GETUPVAL                         R32 4
      155 GETTABLEKS                       R32 R32 K42 ["Text"]
      157 DUPTABLE                         R33 K44 [{["LayoutOrder"] = 1, ["Text"], ["tag"] = "size-full-0 auto-y text-label-small text-align-x-left content-emphasis"}]
      158 LOADK                            R35 K45 ["%* · %*"]
      159 GETTABLEKS                       R39 R16 K36 ["AuthorId"]
      161 NAMECALL                         R37 R2 K46 ["getUsername"]
      163 CALL                             R37 2 1
      164 GETTABLEKS                       R39 R16 K47 ["CreationTimeUnix"]
      166 NAMECALL                         R40 R1 K48 ["getLocale"]
      168 CALL                             R40 1 1
      169 GETIMPORT                        R41 K51 [DateTime.fromUnixTimestamp]
      171 MOVE                             R42 R39
      172 CALL                             R41 1 1
      173 LOADK                            R43 K52 ["LT MMM D"]
      174 MOVE                             R44 R40
      175 NAMECALL                         R41 R41 K53 ["FormatLocalTime"]
      177 CALL                             R41 3 1
      178 MOVE                             R38 R41
      179 NAMECALL                         R35 R35 K18 ["format"]
      181 CALL                             R35 3 1
      182 MOVE                             R34 R35
      183 SETTABLEKS                       R34 R33 K42 ["Text"]
      185 CALL                             R31 2 1
      186 SETTABLEKS                       R31 R30 K40 ["Metadata"]
      188 GETUPVAL                         R31 2
      189 GETTABLEKS                       R31 R31 K19 ["createElement"]
      191 GETUPVAL                         R32 4
      192 GETTABLEKS                       R32 R32 K42 ["Text"]
      194 DUPTABLE                         R33 K55 [{["LayoutOrder"] = 2, ["Text"], ["tag"] = "size-full-0 auto-y text-body-small text-wrap text-align-x-left content-muted"}]
      195 SETTABLEKS                       R17 R33 K42 ["Text"]
      197 CALL                             R31 2 1
      198 SETTABLEKS                       R31 R30 K13 ["Contents"]
      200 CALL                             R27 3 1
      201 SETTABLEKS                       R27 R26 K33 ["Comment"]
      203 GETUPVAL                         R27 2
      204 GETTABLEKS                       R27 R27 K19 ["createElement"]
      206 GETUPVAL                         R28 4
      207 GETTABLEKS                       R28 R28 K56 ["RadioGroup"]
      209 GETTABLEKS                       R28 R28 K57 ["Item"]
      211 DUPTABLE                         R29 K62 [{["LayoutOrder"] = 3, ["value"], ["label"] = "", ["size"]}]
      212 GETTABLEKS                       R30 R16 K63 ["Name"]
      214 SETTABLEKS                       R30 R29 K59 ["value"]
      216 GETUPVAL                         R30 4
      217 GETTABLEKS                       R30 R30 K64 ["Enums"]
      219 GETTABLEKS                       R30 R30 K65 ["InputSize"]
      221 GETTABLEKS                       R30 R30 K66 ["Small"]
      223 SETTABLEKS                       R30 R29 K61 ["size"]
      225 CALL                             R27 2 1
      226 SETTABLEKS                       R27 R26 K34 ["Radio"]
      228 CALL                             R23 3 1
      229 SETTABLEKS                       R23 R22 K26 ["Row"]
      231 GETUPVAL                         R23 2
      232 GETTABLEKS                       R23 R23 K19 ["createElement"]
      234 GETUPVAL                         R24 4
      235 GETTABLEKS                       R24 R24 K27 ["Divider"]
      237 DUPTABLE                         R25 K67 [{["LayoutOrder"] = 2}]
      238 CALL                             R23 2 1
      239 SETTABLEKS                       R23 R22 K27 ["Divider"]
      241 CALL                             R19 3 1
      242 SETTABLE                         R19 R10 R18
      243 FORGLOOP                         R12 2 ; [-156]
      245 GETUPVAL                         R12 2
      246 GETTABLEKS                       R12 R12 K19 ["createElement"]
      248 GETUPVAL                         R13 4
      249 GETTABLEKS                       R13 R13 K20 ["View"]
      251 DUPTABLE                         R14 K69 [{["tag"] = "col gap-small size-full-0 auto-y"}]
      252 DUPTABLE                         R15 K73 [{"Heading", "Search", "Comments"}]
      253 LOADK                            R19 K74 ["Report"]
      254 LOADK                            R20 K75 ["SelectComment"]
      255 NAMECALL                         R17 R1 K76 ["getText"]
      257 CALL                             R17 3 1
      258 GETUPVAL                         R18 2
      259 GETTABLEKS                       R18 R18 K19 ["createElement"]
      261 GETUPVAL                         R19 4
      262 GETTABLEKS                       R19 R19 K42 ["Text"]
      264 DUPTABLE                         R20 K79 [{["LayoutOrder"] = 1, ["Text"], ["tag"] = "size-full-0 auto-y text-body-small text-align-x-left content-emphasis", ["fontStyle"]}]
      265 SETTABLEKS                       R17 R20 K42 ["Text"]
      267 GETUPVAL                         R21 6
      268 SETTABLEKS                       R21 R20 K78 ["fontStyle"]
      270 CALL                             R18 2 1
      271 MOVE                             R16 R18
      272 SETTABLEKS                       R16 R15 K70 ["Heading"]
      274 GETUPVAL                         R16 2
      275 GETTABLEKS                       R16 R16 K19 ["createElement"]
      277 GETUPVAL                         R17 4
      278 GETTABLEKS                       R17 R17 K80 ["TextInput"]
      280 DUPTABLE                         R18 K86 [{["LayoutOrder"] = 2, ["label"] = "", ["placeholder"], ["leadingIcon"], ["text"], ["onChanged"], ["size"], ["width"]}]
      281 LOADK                            R21 K74 ["Report"]
      282 LOADK                            R22 K71 ["Search"]
      283 NAMECALL                         R19 R1 K76 ["getText"]
      285 CALL                             R19 3 1
      286 SETTABLEKS                       R19 R18 K81 ["placeholder"]
      288 GETUPVAL                         R19 4
      289 GETTABLEKS                       R19 R19 K64 ["Enums"]
      291 GETTABLEKS                       R19 R19 K87 ["IconName"]
      293 GETTABLEKS                       R19 R19 K88 ["MagnifyingGlass"]
      295 SETTABLEKS                       R19 R18 K82 ["leadingIcon"]
      297 SETTABLEKS                       R5 R18 K83 ["text"]
      299 SETTABLEKS                       R6 R18 K84 ["onChanged"]
      301 GETUPVAL                         R19 4
      302 GETTABLEKS                       R19 R19 K64 ["Enums"]
      304 GETTABLEKS                       R19 R19 K65 ["InputSize"]
      306 GETTABLEKS                       R19 R19 K89 ["XSmall"]
      308 SETTABLEKS                       R19 R18 K61 ["size"]
      310 GETIMPORT                        R19 K92 [UDim.new]
      312 LOADN                            R20 1
      313 LOADN                            R21 0
      314 CALL                             R19 2 1
      315 SETTABLEKS                       R19 R18 K85 ["width"]
      317 CALL                             R16 2 1
      318 SETTABLEKS                       R16 R15 K71 ["Search"]
      320 GETUPVAL                         R16 2
      321 GETTABLEKS                       R16 R16 K19 ["createElement"]
      323 GETUPVAL                         R17 4
      324 GETTABLEKS                       R17 R17 K93 ["ScrollView"]
      326 DUPTABLE                         R18 K97 [{["LayoutOrder"] = 3, ["Size"], ["layout"], ["scroll"]}]
      327 GETIMPORT                        R19 K99 [UDim2.new]
      329 LOADN                            R20 1
      330 LOADN                            R21 0
      331 LOADN                            R22 0
      332 LOADN                            R23 460
      333 CALL                             R19 4 1
      334 SETTABLEKS                       R19 R18 K94 ["Size"]
      336 DUPTABLE                         R19 K103 [{"FillDirection", "SortOrder", "HorizontalFlex"}]
      337 GETIMPORT                        R20 K106 [Enum.FillDirection.Vertical]
      339 SETTABLEKS                       R20 R19 K100 ["FillDirection"]
      341 GETIMPORT                        R20 K107 [Enum.SortOrder.LayoutOrder]
      343 SETTABLEKS                       R20 R19 K101 ["SortOrder"]
      345 GETIMPORT                        R20 K110 [Enum.UIFlexAlignment.Fill]
      347 SETTABLEKS                       R20 R19 K102 ["HorizontalFlex"]
      349 SETTABLEKS                       R19 R18 K95 ["layout"]
      351 DUPTABLE                         R19 K115 [{"CanvasSize", "AutomaticCanvasSize", "ScrollingDirection", "VerticalScrollBarInset"}]
      352 GETIMPORT                        R20 K117 [UDim2.fromOffset]
      354 LOADN                            R21 0
      355 LOADN                            R22 0
      356 CALL                             R20 2 1
      357 SETTABLEKS                       R20 R19 K111 ["CanvasSize"]
      359 GETIMPORT                        R20 K120 [Enum.AutomaticSize.Y]
      361 SETTABLEKS                       R20 R19 K112 ["AutomaticCanvasSize"]
      363 GETIMPORT                        R20 K121 [Enum.ScrollingDirection.Y]
      365 SETTABLEKS                       R20 R19 K113 ["ScrollingDirection"]
      367 GETIMPORT                        R20 K124 [Enum.ScrollBarInset.ScrollBar]
      369 SETTABLEKS                       R20 R19 K114 ["VerticalScrollBarInset"]
      371 SETTABLEKS                       R19 R18 K96 ["scroll"]
      373 DUPTABLE                         R19 K125 [{"RadioGroup"}]
      374 GETUPVAL                         R20 2
      375 GETTABLEKS                       R20 R20 K19 ["createElement"]
      377 GETUPVAL                         R21 4
      378 GETTABLEKS                       R21 R21 K56 ["RadioGroup"]
      380 GETTABLEKS                       R21 R21 K126 ["Root"]
      382 DUPTABLE                         R22 K128 [{"value", "onValueChanged"}]
      383 GETTABLEKS                       R24 R0 K4 ["SelectedComment"]
      385 JUMPIFNOT                        R24 ; [+5]
      386 GETTABLEKS                       R23 R0 K4 ["SelectedComment"]
      388 GETTABLEKS                       R23 R23 K63 ["Name"]
      390 JUMP                             ; [+1]
      391 LOADNIL                          R23
      392 SETTABLEKS                       R23 R22 K59 ["value"]
      394 NEWCLOSURE                       R23 P4
      395 CAPTURE                          VAL R3
      396 CAPTURE                          VAL R0
      397 SETTABLEKS                       R23 R22 K127 ["onValueChanged"]
      399 MOVE                             R23 R10
      400 CALL                             R20 3 1
      401 SETTABLEKS                       R20 R19 K56 ["RadioGroup"]
      403 CALL                             R16 3 1
      404 SETTABLEKS                       R16 R15 K72 ["Comments"]
      406 CALL                             R12 3 -1
      407 RETURN                           R12 -1

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnSelectedCategoryChanged"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["Hooks"]
        7 GETTABLEKS                       R2 R2 K2 ["useTokens"]
        9 CALL                             R2 0 1
       10 NEWTABLE                         R3 1 0
       12 GETUPVAL                         R4 2
       13 LOADNIL                          R5
       14 LOADNIL                          R6
       15 FORGPREP                         R4
       16 GETTABLEKS                       R10 R0 K3 ["SelectedCategory"]
       18 JUMPIFEQ                         R10 R8 ; [+2]
       20 LOADB                            R9 0 +1
       21 LOADB                            R9 1
       22 LOADK                            R11 K4 ["%*Description"]
       23 MOVE                             R13 R8
       24 NAMECALL                         R11 R11 K5 ["format"]
       26 CALL                             R11 2 1
       27 MOVE                             R10 R11
       28 GETUPVAL                         R11 3
       29 GETTABLEKS                       R11 R11 K6 ["createElement"]
       31 GETUPVAL                         R12 1
       32 GETTABLEKS                       R12 R12 K7 ["View"]
       34 DUPTABLE                         R13 K12 [{"LayoutOrder", "tag", "stroke", "onActivated"}]
       35 SETTABLEKS                       R7 R13 K8 ["LayoutOrder"]
       37 NEWTABLE                         R14 2 0
       39 LOADB                            R15 1
       40 SETTABLEKS                       R15 R14 K13 ["col gap-xsmall size-full-0 auto-y padding-small radius-small"]
       42 NOT                              R15 R9
       43 SETTABLEKS                       R15 R14 K14 ["stroke-default"]
       45 SETTABLEKS                       R14 R13 K9 ["tag"]
       47 JUMPIFNOT                        R9 ; [+26]
       48 DUPTABLE                         R14 K20 [{["BorderStrokePosition"], ["Color"], ["Transparency"], ["Thickness"] = 2}]
       49 GETIMPORT                        R15 K23 [Enum.BorderStrokePosition.Inner]
       51 SETTABLEKS                       R15 R14 K15 ["BorderStrokePosition"]
       53 GETTABLEKS                       R15 R2 K16 ["Color"]
       55 GETTABLEKS                       R15 R15 K24 ["Content"]
       57 GETTABLEKS                       R15 R15 K25 ["Emphasis"]
       59 GETTABLEKS                       R15 R15 K26 ["Color3"]
       61 SETTABLEKS                       R15 R14 K16 ["Color"]
       63 GETTABLEKS                       R15 R2 K16 ["Color"]
       65 GETTABLEKS                       R15 R15 K24 ["Content"]
       67 GETTABLEKS                       R15 R15 K25 ["Emphasis"]
       69 GETTABLEKS                       R15 R15 K17 ["Transparency"]
       71 SETTABLEKS                       R15 R14 K17 ["Transparency"]
       73 JUMP                             ; [+1]
       74 LOADNIL                          R14
       75 SETTABLEKS                       R14 R13 K10 ["stroke"]
       77 NEWCLOSURE                       R14 P0
       78 CAPTURE                          VAL R0
       79 CAPTURE                          VAL R8
       80 SETTABLEKS                       R14 R13 K11 ["onActivated"]
       82 DUPTABLE                         R14 K29 [{"Label", "Description"}]
       83 GETUPVAL                         R15 3
       84 GETTABLEKS                       R15 R15 K6 ["createElement"]
       86 GETUPVAL                         R16 1
       87 GETTABLEKS                       R16 R16 K30 ["Text"]
       89 DUPTABLE                         R17 K34 [{["LayoutOrder"] = 1, ["Text"], ["tag"] = "size-full-0 auto-y text-label-small text-align-x-left content-emphasis", ["fontStyle"]}]
       90 LOADK                            R20 K35 ["Report"]
       91 MOVE                             R21 R8
       92 NAMECALL                         R18 R1 K36 ["getText"]
       94 CALL                             R18 3 1
       95 SETTABLEKS                       R18 R17 K30 ["Text"]
       97 GETUPVAL                         R18 4
       98 SETTABLEKS                       R18 R17 K33 ["fontStyle"]
      100 CALL                             R15 2 1
      101 SETTABLEKS                       R15 R14 K27 ["Label"]
      103 GETUPVAL                         R15 3
      104 GETTABLEKS                       R15 R15 K6 ["createElement"]
      106 GETUPVAL                         R16 1
      107 GETTABLEKS                       R16 R16 K30 ["Text"]
      109 DUPTABLE                         R17 K38 [{["LayoutOrder"] = 2, ["Text"], ["tag"] = "size-full-0 auto-y text-body-small text-wrap text-align-x-left content-muted"}]
      110 LOADK                            R20 K35 ["Report"]
      111 MOVE                             R21 R10
      112 NAMECALL                         R18 R1 K36 ["getText"]
      114 CALL                             R18 3 1
      115 SETTABLEKS                       R18 R17 K30 ["Text"]
      117 CALL                             R15 2 1
      118 SETTABLEKS                       R15 R14 K28 ["Description"]
      120 CALL                             R11 3 1
      121 SETTABLE                         R11 R3 R8
      122 FORGLOOP                         R4 2 ; [-107]
      124 GETUPVAL                         R4 3
      125 GETTABLEKS                       R4 R4 K6 ["createElement"]
      127 GETUPVAL                         R5 1
      128 GETTABLEKS                       R5 R5 K7 ["View"]
      130 DUPTABLE                         R6 K40 [{"LayoutOrder", "Size"}]
      131 GETUPVAL                         R9 2
      132 LENGTH                           R8 R9
      133 ADDK                             R7 R8 K31 [1]
      134 SETTABLEKS                       R7 R6 K8 ["LayoutOrder"]
      136 GETIMPORT                        R7 K43 [UDim2.new]
      138 LOADN                            R8 1
      139 LOADN                            R9 0
      140 LOADN                            R10 0
      141 LOADN                            R11 16
      142 CALL                             R7 4 1
      143 SETTABLEKS                       R7 R6 K39 ["Size"]
      145 CALL                             R4 2 1
      146 SETTABLEKS                       R4 R3 K44 ["BottomSpacer"]
      148 GETUPVAL                         R4 3
      149 GETTABLEKS                       R4 R4 K6 ["createElement"]
      151 GETUPVAL                         R5 1
      152 GETTABLEKS                       R5 R5 K7 ["View"]
      154 DUPTABLE                         R6 K46 [{["tag"] = "col gap-small size-full-0 auto-y"}]
      155 DUPTABLE                         R7 K50 [{"Heading", "Preview", "Categories"}]
      156 LOADK                            R11 K35 ["Report"]
      157 LOADK                            R12 K51 ["SelectCategory"]
      158 NAMECALL                         R9 R1 K36 ["getText"]
      160 CALL                             R9 3 1
      161 GETUPVAL                         R10 3
      162 GETTABLEKS                       R10 R10 K6 ["createElement"]
      164 GETUPVAL                         R11 1
      165 GETTABLEKS                       R11 R11 K30 ["Text"]
      167 DUPTABLE                         R12 K53 [{["LayoutOrder"] = 1, ["Text"], ["tag"] = "size-full-0 auto-y text-body-small text-align-x-left content-emphasis", ["fontStyle"]}]
      168 SETTABLEKS                       R9 R12 K30 ["Text"]
      170 GETUPVAL                         R13 4
      171 SETTABLEKS                       R13 R12 K33 ["fontStyle"]
      173 CALL                             R10 2 1
      174 MOVE                             R8 R10
      175 SETTABLEKS                       R8 R7 K47 ["Heading"]
      177 GETTABLEKS                       R8 R0 K54 ["TargetComment"]
      179 JUMPIFNOT                        R8 ; [+10]
      180 GETUPVAL                         R8 3
      181 GETTABLEKS                       R8 R8 K6 ["createElement"]
      183 GETUPVAL                         R9 5
      184 DUPTABLE                         R10 K58 [{["Comment"], ["Rounded"] = False}]
      185 GETTABLEKS                       R11 R0 K54 ["TargetComment"]
      187 SETTABLEKS                       R11 R10 K55 ["Comment"]
      189 CALL                             R8 2 1
      190 SETTABLEKS                       R8 R7 K48 ["Preview"]
      192 GETUPVAL                         R8 3
      193 GETTABLEKS                       R8 R8 K6 ["createElement"]
      195 GETUPVAL                         R9 1
      196 GETTABLEKS                       R9 R9 K59 ["ScrollView"]
      198 DUPTABLE                         R10 K63 [{["LayoutOrder"] = 3, ["Size"], ["layout"], ["scroll"]}]
      199 GETIMPORT                        R11 K43 [UDim2.new]
      201 LOADN                            R12 1
      202 LOADN                            R13 0
      203 LOADN                            R14 0
      204 LOADN                            R15 420
      205 CALL                             R11 4 1
      206 SETTABLEKS                       R11 R10 K39 ["Size"]
      208 DUPTABLE                         R11 K68 [{"FillDirection", "SortOrder", "HorizontalFlex", "Padding"}]
      209 GETIMPORT                        R12 K70 [Enum.FillDirection.Vertical]
      211 SETTABLEKS                       R12 R11 K64 ["FillDirection"]
      213 GETIMPORT                        R12 K71 [Enum.SortOrder.LayoutOrder]
      215 SETTABLEKS                       R12 R11 K65 ["SortOrder"]
      217 GETIMPORT                        R12 K74 [Enum.UIFlexAlignment.Fill]
      219 SETTABLEKS                       R12 R11 K66 ["HorizontalFlex"]
      221 GETIMPORT                        R12 K76 [UDim.new]
      223 LOADN                            R13 0
      224 LOADN                            R14 8
      225 CALL                             R12 2 1
      226 SETTABLEKS                       R12 R11 K67 ["Padding"]
      228 SETTABLEKS                       R11 R10 K61 ["layout"]
      230 DUPTABLE                         R11 K80 [{"CanvasSize", "AutomaticCanvasSize", "ScrollingDirection"}]
      231 GETIMPORT                        R12 K82 [UDim2.fromOffset]
      233 LOADN                            R13 0
      234 LOADN                            R14 0
      235 CALL                             R12 2 1
      236 SETTABLEKS                       R12 R11 K77 ["CanvasSize"]
      238 GETIMPORT                        R12 K85 [Enum.AutomaticSize.Y]
      240 SETTABLEKS                       R12 R11 K78 ["AutomaticCanvasSize"]
      242 GETIMPORT                        R12 K86 [Enum.ScrollingDirection.Y]
      244 SETTABLEKS                       R12 R11 K79 ["ScrollingDirection"]
      246 SETTABLEKS                       R11 R10 K62 ["scroll"]
      248 DUPTABLE                         R11 K88 [{"List"}]
      249 GETUPVAL                         R12 3
      250 GETTABLEKS                       R12 R12 K6 ["createElement"]
      252 GETUPVAL                         R13 1
      253 GETTABLEKS                       R13 R13 K7 ["View"]
      255 DUPTABLE                         R14 K90 [{["tag"] = "col gap-small size-full-0 auto-y padding-bottom-xsmall padding-left-xsmall padding-right-medium padding-top-xsmall"}]
      256 MOVE                             R15 R3
      257 CALL                             R12 3 1
      258 SETTABLEKS                       R12 R11 K87 ["List"]
      260 CALL                             R8 3 1
      261 SETTABLEKS                       R8 R7 K49 ["Categories"]
      263 CALL                             R4 3 -1
      264 RETURN                           R4 -1

PROTO_17:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["createElement"]
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R3 R3 K2 ["View"]
       10 DUPTABLE                         R4 K5 [{["tag"] = "col gap-small size-full-0 auto-y"}]
       11 DUPTABLE                         R5 K10 [{"Heading", "Summary", "Details", "AdditionalContext"}]
       12 LOADK                            R9 K11 ["Report"]
       13 LOADK                            R10 K12 ["AddDetails"]
       14 NAMECALL                         R7 R1 K13 ["getText"]
       16 CALL                             R7 3 1
       17 GETUPVAL                         R8 1
       18 GETTABLEKS                       R8 R8 K1 ["createElement"]
       20 GETUPVAL                         R9 2
       21 GETTABLEKS                       R9 R9 K14 ["Text"]
       23 DUPTABLE                         R10 K19 [{["LayoutOrder"] = 1, ["Text"], ["tag"] = "size-full-0 auto-y text-body-small text-align-x-left content-emphasis", ["fontStyle"]}]
       24 SETTABLEKS                       R7 R10 K14 ["Text"]
       26 GETUPVAL                         R11 3
       27 SETTABLEKS                       R11 R10 K18 ["fontStyle"]
       29 CALL                             R8 2 1
       30 MOVE                             R6 R8
       31 SETTABLEKS                       R6 R5 K6 ["Heading"]
       33 GETTABLEKS                       R6 R0 K20 ["TargetComment"]
       35 JUMPIFNOT                        R6 ; [+10]
       36 GETUPVAL                         R6 1
       37 GETTABLEKS                       R6 R6 K1 ["createElement"]
       39 GETUPVAL                         R7 4
       40 DUPTABLE                         R8 K24 [{["Comment"], ["Rounded"] = True}]
       41 GETTABLEKS                       R9 R0 K20 ["TargetComment"]
       43 SETTABLEKS                       R9 R8 K21 ["Comment"]
       45 CALL                             R6 2 1
       46 SETTABLEKS                       R6 R5 K7 ["Summary"]
       48 GETUPVAL                         R6 1
       49 GETTABLEKS                       R6 R6 K1 ["createElement"]
       51 GETUPVAL                         R7 2
       52 GETTABLEKS                       R7 R7 K25 ["TextArea"]
       54 DUPTABLE                         R8 K36 [{["LayoutOrder"] = 3, ["text"], ["onChanged"], ["label"] = "", ["placeholder"], ["width"], ["numLines"] = 6, ["size"]}]
       55 GETTABLEKS                       R9 R0 K8 ["Details"]
       57 SETTABLEKS                       R9 R8 K27 ["text"]
       59 GETTABLEKS                       R9 R0 K37 ["OnDetailsChanged"]
       61 SETTABLEKS                       R9 R8 K28 ["onChanged"]
       63 LOADK                            R11 K11 ["Report"]
       64 LOADK                            R12 K38 ["DetailsPlaceholder"]
       65 NAMECALL                         R9 R1 K13 ["getText"]
       67 CALL                             R9 3 1
       68 SETTABLEKS                       R9 R8 K31 ["placeholder"]
       70 GETIMPORT                        R9 K41 [UDim.new]
       72 LOADN                            R10 1
       73 LOADN                            R11 0
       74 CALL                             R9 2 1
       75 SETTABLEKS                       R9 R8 K32 ["width"]
       77 GETUPVAL                         R9 2
       78 GETTABLEKS                       R9 R9 K42 ["Enums"]
       80 GETTABLEKS                       R9 R9 K43 ["InputSize"]
       82 GETTABLEKS                       R9 R9 K44 ["Medium"]
       84 SETTABLEKS                       R9 R8 K35 ["size"]
       86 CALL                             R6 2 1
       87 SETTABLEKS                       R6 R5 K8 ["Details"]
       89 GETUPVAL                         R6 1
       90 GETTABLEKS                       R6 R6 K1 ["createElement"]
       92 GETUPVAL                         R7 2
       93 GETTABLEKS                       R7 R7 K14 ["Text"]
       95 DUPTABLE                         R8 K47 [{["LayoutOrder"] = 4, ["Text"], ["tag"] = "size-full-0 auto-y text-label-small text-align-x-left content-muted"}]
       96 LOADK                            R11 K11 ["Report"]
       97 LOADK                            R12 K9 ["AdditionalContext"]
       98 NAMECALL                         R9 R1 K13 ["getText"]
      100 CALL                             R9 3 1
      101 SETTABLEKS                       R9 R8 K14 ["Text"]
      103 CALL                             R6 2 1
      104 SETTABLEKS                       R6 R5 K9 ["AdditionalContext"]
      106 CALL                             R2 3 -1
      107 RETURN                           R2 -1

PROTO_18:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["use"]
        3 CALL                             R0 1 1
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["createElement"]
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K2 ["View"]
       10 DUPTABLE                         R3 K5 [{["tag"] = "col gap-small size-full-2400"}]
       11 DUPTABLE                         R4 K7 [{"SuccessBanner"}]
       12 GETUPVAL                         R5 1
       13 GETTABLEKS                       R5 R5 K1 ["createElement"]
       15 GETUPVAL                         R6 2
       16 GETTABLEKS                       R6 R6 K8 ["SystemBanner"]
       18 DUPTABLE                         R7 K11 [{"title", "severity"}]
       19 LOADK                            R10 K12 ["Report"]
       20 LOADK                            R11 K13 ["SubmittedSuccessfully"]
       21 NAMECALL                         R8 R0 K14 ["getText"]
       23 CALL                             R8 3 1
       24 SETTABLEKS                       R8 R7 K9 ["title"]
       26 GETUPVAL                         R8 2
       27 GETTABLEKS                       R8 R8 K15 ["Enums"]
       29 GETTABLEKS                       R8 R8 K16 ["AlertSeverity"]
       31 GETTABLEKS                       R8 R8 K17 ["Success"]
       33 SETTABLEKS                       R8 R7 K10 ["severity"]
       35 CALL                             R5 2 1
       36 SETTABLEKS                       R5 R4 K6 ["SuccessBanner"]
       38 CALL                             R1 3 -1
       39 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceAnnotations"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R2 K10 ["ContextServices"]
       30 GETTABLEKS                       R4 R4 K11 ["Localization"]
       32 GETIMPORT                        R5 K5 [require]
       34 GETTABLEKS                       R6 R0 K12 ["Src"]
       36 GETTABLEKS                       R6 R6 K13 ["Contexts"]
       38 GETTABLEKS                       R6 R6 K14 ["UsernameContext"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K5 [require]
       43 GETTABLEKS                       R7 R0 K12 ["Src"]
       45 GETTABLEKS                       R7 R7 K15 ["Util"]
       47 GETTABLEKS                       R7 R7 K16 ["TaggedUsersUtils"]
       49 CALL                             R6 1 1
       50 GETTABLEKS                       R6 R6 K17 ["GetContentsWithTags"]
       52 GETIMPORT                        R7 K5 [require]
       54 GETTABLEKS                       R8 R0 K12 ["Src"]
       56 GETTABLEKS                       R8 R8 K18 ["Enums"]
       58 GETTABLEKS                       R8 R8 K19 ["ReportCategory"]
       60 CALL                             R7 1 1
       61 GETIMPORT                        R8 K5 [require]
       63 GETTABLEKS                       R9 R0 K12 ["Src"]
       65 GETTABLEKS                       R9 R9 K20 ["Types"]
       67 CALL                             R8 1 1
       68 NEWTABLE                         R9 0 9
       70 GETTABLEKS                       R10 R7 K21 ["Bullying"]
       72 GETTABLEKS                       R11 R7 K22 ["Discrimination"]
       74 GETTABLEKS                       R12 R7 K23 ["SharingPersonalInformation"]
       76 GETTABLEKS                       R13 R7 K24 ["DangerousSuggestions"]
       78 GETTABLEKS                       R14 R7 K25 ["UnsafeRequests"]
       80 GETTABLEKS                       R15 R7 K26 ["ThreatsOfViolence"]
       82 GETTABLEKS                       R16 R7 K27 ["RomanceOrSex"]
       84 GETTABLEKS                       R17 R7 K28 ["IllegalGoodsActivities"]
       86 GETTABLEKS                       R18 R7 K29 ["SuicideSelfHarm"]
       88 SETLIST                          R9 R10 9 [1]
       90 DUPTABLE                         R10 K31 [{"Font"}]
       91 GETIMPORT                        R11 K34 [Enum.Font.BuilderSansBold]
       93 SETTABLEKS                       R11 R10 K30 ["Font"]
       95 DUPCLOSURE                       R11 K35 [PROTO_0]
       96 DUPCLOSURE                       R12 K36 [PROTO_1]
       97 CAPTURE                          VAL R1
       98 CAPTURE                          VAL R3
       99 DUPCLOSURE                       R13 K37 [PROTO_2]
      100 CAPTURE                          VAL R1
      101 CAPTURE                          VAL R3
      102 CAPTURE                          VAL R10
      103 DUPCLOSURE                       R14 K38 [PROTO_3]
      104 CAPTURE                          VAL R4
      105 CAPTURE                          VAL R5
      106 CAPTURE                          VAL R1
      107 CAPTURE                          VAL R3
      108 CAPTURE                          VAL R12
      109 CAPTURE                          VAL R6
      110 DUPCLOSURE                       R15 K39 [PROTO_14]
      111 CAPTURE                          VAL R4
      112 CAPTURE                          VAL R5
      113 CAPTURE                          VAL R1
      114 CAPTURE                          VAL R6
      115 CAPTURE                          VAL R3
      116 CAPTURE                          VAL R12
      117 CAPTURE                          VAL R10
      118 DUPCLOSURE                       R16 K40 [PROTO_16]
      119 CAPTURE                          VAL R4
      120 CAPTURE                          VAL R3
      121 CAPTURE                          VAL R9
      122 CAPTURE                          VAL R1
      123 CAPTURE                          VAL R10
      124 CAPTURE                          VAL R14
      125 DUPCLOSURE                       R17 K41 [PROTO_17]
      126 CAPTURE                          VAL R4
      127 CAPTURE                          VAL R1
      128 CAPTURE                          VAL R3
      129 CAPTURE                          VAL R10
      130 CAPTURE                          VAL R14
      131 DUPCLOSURE                       R18 K42 [PROTO_18]
      132 CAPTURE                          VAL R4
      133 CAPTURE                          VAL R1
      134 CAPTURE                          VAL R3
      135 DUPTABLE                         R19 K47 [{"Category", "CommentPicker", "Confirmed", "Details"}]
      136 SETTABLEKS                       R16 R19 K43 ["Category"]
      138 SETTABLEKS                       R15 R19 K44 ["CommentPicker"]
      140 SETTABLEKS                       R18 R19 K45 ["Confirmed"]
      142 SETTABLEKS                       R17 R19 K46 ["Details"]
      144 RETURN                           R19 1
