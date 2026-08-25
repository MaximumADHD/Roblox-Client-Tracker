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
        6 DUPTABLE                         R3 K7 [{["LayoutOrder"] = 1, ["Text"], ["tag"] = "size-full-0 auto-y padding-y-xsmall text-body-small text-align-x-left content-emphasis", ["fontStyle"]}]
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
       16 DUPTABLE                         R6 K6 [{"LayoutOrder", "tag"}]
       17 GETTABLEKS                       R7 R0 K4 ["LayoutOrder"]
       19 SETTABLEKS                       R7 R6 K4 ["LayoutOrder"]
       21 NEWTABLE                         R7 2 0
       23 GETTABLEKS                       R9 R0 K7 ["Fill"]
       25 JUMPIFEQKB                       R9 TRUE ; [+2]
       27 LOADB                            R8 0 +1
       28 LOADB                            R8 1
       29 SETTABLEKS                       R8 R7 K8 ["row align-y-center fill gap-small size-0-0 auto-y"]
       31 GETTABLEKS                       R9 R0 K7 ["Fill"]
       33 NOT                              R8 R9
       34 SETTABLEKS                       R8 R7 K9 ["row align-y-center gap-small size-full-0 auto-y"]
       36 SETTABLEKS                       R7 R6 K5 ["tag"]
       38 DUPTABLE                         R7 K12 [{"Avatar", "Text"}]
       39 GETUPVAL                         R8 4
       40 GETTABLEKS                       R9 R3 K13 ["AuthorId"]
       42 CALL                             R8 1 1
       43 SETTABLEKS                       R8 R7 K10 ["Avatar"]
       45 GETUPVAL                         R8 2
       46 GETTABLEKS                       R8 R8 K2 ["createElement"]
       48 GETUPVAL                         R9 3
       49 GETTABLEKS                       R9 R9 K3 ["View"]
       51 DUPTABLE                         R10 K16 [{["LayoutOrder"] = 2, ["tag"] = "col align-x-left fill gap-xsmall size-0-0 auto-y"}]
       52 DUPTABLE                         R11 K19 [{"Metadata", "Contents"}]
       53 GETUPVAL                         R12 2
       54 GETTABLEKS                       R12 R12 K2 ["createElement"]
       56 GETUPVAL                         R13 3
       57 GETTABLEKS                       R13 R13 K11 ["Text"]
       59 DUPTABLE                         R14 K23 [{["LayoutOrder"] = 1, ["Text"], ["tag"] = "size-full-0 auto-y text-label-small text-align-x-left content-emphasis", ["fontStyle"]}]
       60 LOADK                            R16 K24 ["%* · %*"]
       61 GETTABLEKS                       R20 R3 K13 ["AuthorId"]
       63 NAMECALL                         R18 R2 K25 ["getUsername"]
       65 CALL                             R18 2 1
       66 GETTABLEKS                       R20 R3 K26 ["CreationTimeUnix"]
       68 NAMECALL                         R21 R1 K27 ["getLocale"]
       70 CALL                             R21 1 1
       71 GETIMPORT                        R22 K30 [DateTime.fromUnixTimestamp]
       73 MOVE                             R23 R20
       74 CALL                             R22 1 1
       75 LOADK                            R24 K31 ["LT MMM D"]
       76 MOVE                             R25 R21
       77 NAMECALL                         R22 R22 K32 ["FormatLocalTime"]
       79 CALL                             R22 3 1
       80 MOVE                             R19 R22
       81 NAMECALL                         R16 R16 K33 ["format"]
       83 CALL                             R16 3 1
       84 MOVE                             R15 R16
       85 SETTABLEKS                       R15 R14 K11 ["Text"]
       87 GETUPVAL                         R15 5
       88 SETTABLEKS                       R15 R14 K22 ["fontStyle"]
       90 CALL                             R12 2 1
       91 SETTABLEKS                       R12 R11 K17 ["Metadata"]
       93 GETUPVAL                         R12 2
       94 GETTABLEKS                       R12 R12 K2 ["createElement"]
       96 GETUPVAL                         R13 3
       97 GETTABLEKS                       R13 R13 K11 ["Text"]
       99 DUPTABLE                         R14 K35 [{["LayoutOrder"] = 2, ["Text"], ["tag"] = "size-full-0 auto-y text-body-small text-wrap text-align-x-left content-muted"}]
      100 GETUPVAL                         R15 6
      101 GETTABLEKS                       R16 R3 K18 ["Contents"]
      103 GETTABLEKS                       R17 R3 K36 ["TaggedUsers"]
      105 MOVE                             R18 R2
      106 CALL                             R15 3 1
      107 SETTABLEKS                       R15 R14 K11 ["Text"]
      109 CALL                             R12 2 1
      110 SETTABLEKS                       R12 R11 K18 ["Contents"]
      112 CALL                             R8 3 1
      113 SETTABLEKS                       R8 R7 K11 ["Text"]
      115 CALL                             R4 3 -1
      116 RETURN                           R4 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["createElement"]
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R3 R3 K2 ["View"]
       10 DUPTABLE                         R4 K6 [{["LayoutOrder"] = 2, ["tag"]}]
       11 NEWTABLE                         R5 2 0
       13 LOADB                            R6 1
       14 SETTABLEKS                       R6 R5 K7 ["col gap-xsmall size-full-0 auto-y padding-small bg-shift-100"]
       16 GETTABLEKS                       R6 R0 K8 ["Rounded"]
       18 SETTABLEKS                       R6 R5 K9 ["radius-small"]
       20 SETTABLEKS                       R5 R4 K5 ["tag"]
       22 DUPTABLE                         R5 K12 [{"Reporting", "CommentRow"}]
       23 GETUPVAL                         R6 1
       24 GETTABLEKS                       R6 R6 K1 ["createElement"]
       26 GETUPVAL                         R7 2
       27 GETTABLEKS                       R7 R7 K13 ["Text"]
       29 DUPTABLE                         R8 K17 [{["LayoutOrder"] = 1, ["Text"], ["tag"] = "size-full-0 auto-y text-label-small text-align-x-left content-muted", ["fontStyle"]}]
       30 LOADK                            R11 K18 ["Report"]
       31 LOADK                            R12 K10 ["Reporting"]
       32 NAMECALL                         R9 R1 K19 ["getText"]
       34 CALL                             R9 3 1
       35 SETTABLEKS                       R9 R8 K13 ["Text"]
       37 GETUPVAL                         R9 3
       38 SETTABLEKS                       R9 R8 K16 ["fontStyle"]
       40 CALL                             R6 2 1
       41 SETTABLEKS                       R6 R5 K10 ["Reporting"]
       43 GETUPVAL                         R6 1
       44 GETTABLEKS                       R6 R6 K1 ["createElement"]
       46 GETUPVAL                         R7 4
       47 DUPTABLE                         R8 K21 [{["LayoutOrder"] = 2, ["Comment"]}]
       48 GETTABLEKS                       R9 R0 K20 ["Comment"]
       50 SETTABLEKS                       R9 R8 K20 ["Comment"]
       52 CALL                             R6 2 1
       53 SETTABLEKS                       R6 R5 K11 ["CommentRow"]
       55 CALL                             R2 3 -1
       56 RETURN                           R2 -1

PROTO_5:
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

PROTO_6:
        0 JUMPIFNOTEQKNIL                  R1 ; [+3]
        2 GETUPVAL                         R2 0
        3 CALL                             R2 0 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_8:
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

PROTO_9:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 NAMECALL                         R5 R4 K0 ["Disconnect"]
        6 CALL                             R5 1 0
        7 FORGLOOP                         R0 2 ; [-4]
        9 GETIMPORT                        R0 K3 [table.clear]
       11 GETUPVAL                         R1 0
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R3 R0 K0 ["CreationTimeUnix"]
        2 GETTABLEKS                       R4 R1 K0 ["CreationTimeUnix"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 NAMECALL                         R5 R4 K0 ["Disconnect"]
        6 CALL                             R5 1 0
        7 FORGLOOP                         R0 2 ; [-4]
        9 GETIMPORT                        R0 K3 [table.clear]
       11 GETUPVAL                         R1 0
       12 CALL                             R0 1 0
       13 NEWTABLE                         R0 0 1
       15 GETUPVAL                         R1 1
       16 SETLIST                          R0 R1 1 [1]
       18 GETUPVAL                         R1 1
       19 NAMECALL                         R1 R1 K4 ["GetChildren"]
       21 CALL                             R1 1 3
       22 FORGPREP                         R1
       23 LOADK                            R8 K5 ["Annotation"]
       24 NAMECALL                         R6 R5 K6 ["IsA"]
       26 CALL                             R6 2 1
       27 JUMPIFNOT                        R6 ; [+7]
       28 FASTCALL2                        TABLE_INSERT R0 R5 ; [+5]
       30 MOVE                             R7 R0
       31 MOVE                             R8 R5
       32 GETIMPORT                        R6 K8 [table.insert]
       34 CALL                             R6 2 0
       35 FORGLOOP                         R1 2 ; [-13]
       37 GETIMPORT                        R1 K10 [table.sort]
       39 MOVE                             R2 R0
       40 DUPCLOSURE                       R3 K11 [PROTO_10]
       41 CALL                             R1 2 0
       42 GETUPVAL                         R1 2
       43 GETTABLEKS                       R1 R1 K12 ["current"]
       45 JUMPIFNOT                        R1 ; [+8]
       46 GETIMPORT                        R2 K14 [table.find]
       48 MOVE                             R3 R0
       49 MOVE                             R4 R1
       50 CALL                             R2 2 1
       51 JUMPIF                           R2 ; [+2]
       52 GETUPVAL                         R2 3
       53 CALL                             R2 0 0
       54 MOVE                             R2 R0
       55 LOADNIL                          R3
       56 LOADNIL                          R4
       57 FORGPREP                         R2
       58 GETUPVAL                         R8 0
       59 LOADK                            R11 K15 ["Contents"]
       60 NAMECALL                         R9 R6 K16 ["GetPropertyChangedSignal"]
       62 CALL                             R9 2 1
       63 GETUPVAL                         R11 4
       64 NAMECALL                         R9 R9 K17 ["Connect"]
       66 CALL                             R9 2 -1
       67 FASTCALL                         TABLE_INSERT ; [+2]
       68 GETIMPORT                        R7 K8 [table.insert]
       70 CALL                             R7 -1 0
       71 GETUPVAL                         R8 0
       72 LOADK                            R11 K18 ["TaggedUsers"]
       73 NAMECALL                         R9 R6 K16 ["GetPropertyChangedSignal"]
       75 CALL                             R9 2 1
       76 GETUPVAL                         R11 4
       77 NAMECALL                         R9 R9 K17 ["Connect"]
       79 CALL                             R9 2 -1
       80 FASTCALL                         TABLE_INSERT ; [+2]
       81 GETIMPORT                        R7 K8 [table.insert]
       83 CALL                             R7 -1 0
       84 FORGLOOP                         R2 2 ; [-27]
       86 GETUPVAL                         R2 5
       87 MOVE                             R3 R0
       88 CALL                             R2 1 0
       89 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 2
        9 LOADNIL                          R1
       10 LOADNIL                          R2
       11 FORGPREP                         R0
       12 NAMECALL                         R5 R4 K0 ["Disconnect"]
       14 CALL                             R5 1 0
       15 FORGLOOP                         R0 2 ; [-4]
       17 GETIMPORT                        R0 K3 [table.clear]
       19 GETUPVAL                         R1 2
       20 CALL                             R0 1 0
       21 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Thread"]
        3 JUMPIF                           R0 ; [+5]
        4 GETUPVAL                         R1 1
        5 NEWTABLE                         R2 0 0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0
        9 NEWTABLE                         R1 0 0
       11 NEWCLOSURE                       R2 P0
       12 CAPTURE                          VAL R1
       13 NEWCLOSURE                       R3 P1
       14 CAPTURE                          VAL R1
       15 CAPTURE                          VAL R0
       16 CAPTURE                          UPVAL U2
       17 CAPTURE                          UPVAL U3
       18 CAPTURE                          UPVAL U4
       19 CAPTURE                          UPVAL U1
       20 MOVE                             R4 R3
       21 CALL                             R4 0 0
       22 GETTABLEKS                       R4 R0 K1 ["ChildAdded"]
       24 MOVE                             R6 R3
       25 NAMECALL                         R4 R4 K2 ["Connect"]
       27 CALL                             R4 2 1
       28 GETTABLEKS                       R5 R0 K3 ["ChildRemoved"]
       30 MOVE                             R7 R3
       31 NAMECALL                         R5 R5 K2 ["Connect"]
       33 CALL                             R5 2 1
       34 NEWCLOSURE                       R6 P2
       35 CAPTURE                          VAL R4
       36 CAPTURE                          VAL R5
       37 CAPTURE                          VAL R1
       38 RETURN                           R6 1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnSelectedCommentChanged"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_15:
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

PROTO_16:
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
       20 GETTABLEKS                       R7 R7 K3 ["useReducer"]
       22 GETUPVAL                         R8 3
       23 LOADN                            R9 0
       24 CALL                             R7 2 2
       25 GETUPVAL                         R9 2
       26 GETTABLEKS                       R9 R9 K4 ["useRef"]
       28 GETTABLEKS                       R10 R0 K5 ["SelectedComment"]
       30 CALL                             R9 1 1
       31 GETUPVAL                         R10 2
       32 GETTABLEKS                       R10 R10 K4 ["useRef"]
       34 GETTABLEKS                       R11 R0 K6 ["OnSelectedCommentChanged"]
       36 CALL                             R10 1 1
       37 GETTABLEKS                       R11 R0 K5 ["SelectedComment"]
       39 SETTABLEKS                       R11 R9 K7 ["current"]
       41 GETTABLEKS                       R11 R0 K6 ["OnSelectedCommentChanged"]
       43 SETTABLEKS                       R11 R10 K7 ["current"]
       45 GETUPVAL                         R11 2
       46 GETTABLEKS                       R11 R11 K8 ["useCallback"]
       48 NEWCLOSURE                       R12 P0
       49 CAPTURE                          VAL R9
       50 CAPTURE                          VAL R10
       51 NEWTABLE                         R13 0 0
       53 CALL                             R11 2 1
       54 GETUPVAL                         R12 2
       55 GETTABLEKS                       R12 R12 K9 ["useEffect"]
       57 NEWCLOSURE                       R13 P1
       58 CAPTURE                          VAL R0
       59 CAPTURE                          VAL R11
       60 NEWTABLE                         R14 0 2
       62 GETTABLEKS                       R15 R0 K5 ["SelectedComment"]
       64 MOVE                             R16 R11
       65 SETLIST                          R14 R15 2 [1]
       67 CALL                             R12 2 0
       68 GETUPVAL                         R12 2
       69 GETTABLEKS                       R12 R12 K9 ["useEffect"]
       71 NEWCLOSURE                       R13 P2
       72 CAPTURE                          VAL R0
       73 CAPTURE                          VAL R4
       74 CAPTURE                          VAL R9
       75 CAPTURE                          VAL R11
       76 CAPTURE                          VAL R8
       77 NEWTABLE                         R14 0 3
       79 GETTABLEKS                       R15 R0 K10 ["Thread"]
       81 MOVE                             R16 R11
       82 MOVE                             R17 R8
       83 SETLIST                          R14 R15 3 [1]
       85 CALL                             R12 2 0
       86 NEWTABLE                         R12 0 0
       88 GETIMPORT                        R13 K13 [string.lower]
       90 MOVE                             R14 R5
       91 CALL                             R13 1 1
       92 MOVE                             R14 R3
       93 LOADNIL                          R15
       94 LOADNIL                          R16
       95 FORGPREP                         R14
       96 GETUPVAL                         R19 4
       97 GETTABLEKS                       R20 R18 K14 ["Contents"]
       99 GETTABLEKS                       R21 R18 K15 ["TaggedUsers"]
      101 MOVE                             R22 R2
      102 CALL                             R19 3 1
      103 JUMPIFEQKS                       R5 K2 [""] ; [+12]
      105 GETIMPORT                        R20 K17 [string.find]
      107 GETIMPORT                        R21 K13 [string.lower]
      109 MOVE                             R22 R19
      110 CALL                             R21 1 1
      111 MOVE                             R22 R13
      112 LOADN                            R23 1
      113 LOADB                            R24 1
      114 CALL                             R20 4 1
      115 JUMPIFNOT                        R20 ; [+65]
      116 GETTABLEKS                       R20 R18 K18 ["Name"]
      118 GETUPVAL                         R21 2
      119 GETTABLEKS                       R21 R21 K19 ["createElement"]
      121 GETUPVAL                         R22 5
      122 GETTABLEKS                       R22 R22 K20 ["View"]
      124 DUPTABLE                         R23 K25 [{["LayoutOrder"], ["tag"] = "col size-full-0 auto-y radius-small", ["onActivated"]}]
      125 SETTABLEKS                       R17 R23 K21 ["LayoutOrder"]
      127 NEWCLOSURE                       R24 P3
      128 CAPTURE                          VAL R0
      129 CAPTURE                          VAL R18
      130 SETTABLEKS                       R24 R23 K24 ["onActivated"]
      132 DUPTABLE                         R24 K27 [{"Row"}]
      133 GETUPVAL                         R25 2
      134 GETTABLEKS                       R25 R25 K19 ["createElement"]
      136 GETUPVAL                         R26 5
      137 GETTABLEKS                       R26 R26 K20 ["View"]
      139 DUPTABLE                         R27 K30 [{["LayoutOrder"] = 1, ["tag"] = "row align-y-center gap-small size-full-0 auto-y padding-small"}]
      140 DUPTABLE                         R28 K33 [{"Comment", "Radio"}]
      141 GETUPVAL                         R29 2
      142 GETTABLEKS                       R29 R29 K19 ["createElement"]
      144 GETUPVAL                         R30 6
      145 DUPTABLE                         R31 K37 [{["LayoutOrder"] = 2, ["Comment"], ["Fill"] = True}]
      146 SETTABLEKS                       R18 R31 K31 ["Comment"]
      148 CALL                             R29 2 1
      149 SETTABLEKS                       R29 R28 K31 ["Comment"]
      151 GETUPVAL                         R29 2
      152 GETTABLEKS                       R29 R29 K19 ["createElement"]
      154 GETUPVAL                         R30 5
      155 GETTABLEKS                       R30 R30 K38 ["RadioGroup"]
      157 GETTABLEKS                       R30 R30 K39 ["Item"]
      159 DUPTABLE                         R31 K44 [{["LayoutOrder"] = 3, ["value"], ["label"] = "", ["size"]}]
      160 GETTABLEKS                       R32 R18 K18 ["Name"]
      162 SETTABLEKS                       R32 R31 K41 ["value"]
      164 GETUPVAL                         R32 5
      165 GETTABLEKS                       R32 R32 K45 ["Enums"]
      167 GETTABLEKS                       R32 R32 K46 ["InputSize"]
      169 GETTABLEKS                       R32 R32 K47 ["Small"]
      171 SETTABLEKS                       R32 R31 K43 ["size"]
      173 CALL                             R29 2 1
      174 SETTABLEKS                       R29 R28 K32 ["Radio"]
      176 CALL                             R25 3 1
      177 SETTABLEKS                       R25 R24 K26 ["Row"]
      179 CALL                             R21 3 1
      180 SETTABLE                         R21 R12 R20
      181 FORGLOOP                         R14 2 ; [-86]
      183 GETUPVAL                         R14 2
      184 GETTABLEKS                       R14 R14 K19 ["createElement"]
      186 GETUPVAL                         R15 5
      187 GETTABLEKS                       R15 R15 K20 ["View"]
      189 DUPTABLE                         R16 K49 [{["tag"] = "col gap-small size-full-0 auto-y"}]
      190 DUPTABLE                         R17 K53 [{"Heading", "Search", "Comments"}]
      191 LOADK                            R21 K54 ["Report"]
      192 LOADK                            R22 K55 ["SelectComment"]
      193 NAMECALL                         R19 R1 K56 ["getText"]
      195 CALL                             R19 3 1
      196 GETUPVAL                         R20 2
      197 GETTABLEKS                       R20 R20 K19 ["createElement"]
      199 GETUPVAL                         R21 5
      200 GETTABLEKS                       R21 R21 K57 ["Text"]
      202 DUPTABLE                         R22 K60 [{["LayoutOrder"] = 1, ["Text"], ["tag"] = "size-full-0 auto-y padding-y-xsmall text-body-small text-align-x-left content-emphasis", ["fontStyle"]}]
      203 SETTABLEKS                       R19 R22 K57 ["Text"]
      205 GETUPVAL                         R23 7
      206 SETTABLEKS                       R23 R22 K59 ["fontStyle"]
      208 CALL                             R20 2 1
      209 MOVE                             R18 R20
      210 SETTABLEKS                       R18 R17 K50 ["Heading"]
      212 GETUPVAL                         R18 2
      213 GETTABLEKS                       R18 R18 K19 ["createElement"]
      215 GETUPVAL                         R19 5
      216 GETTABLEKS                       R19 R19 K61 ["TextInput"]
      218 DUPTABLE                         R20 K68 [{["LayoutOrder"] = 2, ["label"] = "", ["placeholder"], ["leadingIcon"], ["text"], ["onChanged"], ["size"], ["variant"], ["width"]}]
      219 LOADK                            R23 K54 ["Report"]
      220 LOADK                            R24 K51 ["Search"]
      221 NAMECALL                         R21 R1 K56 ["getText"]
      223 CALL                             R21 3 1
      224 SETTABLEKS                       R21 R20 K62 ["placeholder"]
      226 GETUPVAL                         R21 5
      227 GETTABLEKS                       R21 R21 K45 ["Enums"]
      229 GETTABLEKS                       R21 R21 K69 ["IconName"]
      231 GETTABLEKS                       R21 R21 K70 ["MagnifyingGlass"]
      233 SETTABLEKS                       R21 R20 K63 ["leadingIcon"]
      235 SETTABLEKS                       R5 R20 K64 ["text"]
      237 SETTABLEKS                       R6 R20 K65 ["onChanged"]
      239 GETUPVAL                         R21 5
      240 GETTABLEKS                       R21 R21 K45 ["Enums"]
      242 GETTABLEKS                       R21 R21 K46 ["InputSize"]
      244 GETTABLEKS                       R21 R21 K47 ["Small"]
      246 SETTABLEKS                       R21 R20 K43 ["size"]
      248 GETUPVAL                         R21 5
      249 GETTABLEKS                       R21 R21 K45 ["Enums"]
      251 GETTABLEKS                       R21 R21 K71 ["InputVariant"]
      253 GETTABLEKS                       R21 R21 K72 ["Contrast"]
      255 SETTABLEKS                       R21 R20 K66 ["variant"]
      257 GETIMPORT                        R21 K75 [UDim.new]
      259 LOADN                            R22 1
      260 LOADN                            R23 0
      261 CALL                             R21 2 1
      262 SETTABLEKS                       R21 R20 K67 ["width"]
      264 CALL                             R18 2 1
      265 SETTABLEKS                       R18 R17 K51 ["Search"]
      267 GETUPVAL                         R18 2
      268 GETTABLEKS                       R18 R18 K19 ["createElement"]
      270 GETUPVAL                         R19 5
      271 GETTABLEKS                       R19 R19 K76 ["ScrollView"]
      273 DUPTABLE                         R20 K80 [{["LayoutOrder"] = 3, ["Size"], ["layout"], ["scroll"]}]
      274 GETIMPORT                        R21 K82 [UDim2.new]
      276 LOADN                            R22 1
      277 LOADN                            R23 0
      278 LOADN                            R24 0
      279 LOADN                            R25 510
      280 CALL                             R21 4 1
      281 SETTABLEKS                       R21 R20 K77 ["Size"]
      283 DUPTABLE                         R21 K86 [{"FillDirection", "SortOrder", "HorizontalFlex"}]
      284 GETIMPORT                        R22 K89 [Enum.FillDirection.Vertical]
      286 SETTABLEKS                       R22 R21 K83 ["FillDirection"]
      288 GETIMPORT                        R22 K90 [Enum.SortOrder.LayoutOrder]
      290 SETTABLEKS                       R22 R21 K84 ["SortOrder"]
      292 GETIMPORT                        R22 K92 [Enum.UIFlexAlignment.Fill]
      294 SETTABLEKS                       R22 R21 K85 ["HorizontalFlex"]
      296 SETTABLEKS                       R21 R20 K78 ["layout"]
      298 DUPTABLE                         R21 K97 [{"CanvasSize", "AutomaticCanvasSize", "ScrollingDirection", "VerticalScrollBarInset"}]
      299 GETIMPORT                        R22 K99 [UDim2.fromOffset]
      301 LOADN                            R23 0
      302 LOADN                            R24 0
      303 CALL                             R22 2 1
      304 SETTABLEKS                       R22 R21 K93 ["CanvasSize"]
      306 GETIMPORT                        R22 K102 [Enum.AutomaticSize.Y]
      308 SETTABLEKS                       R22 R21 K94 ["AutomaticCanvasSize"]
      310 GETIMPORT                        R22 K103 [Enum.ScrollingDirection.Y]
      312 SETTABLEKS                       R22 R21 K95 ["ScrollingDirection"]
      314 GETIMPORT                        R22 K106 [Enum.ScrollBarInset.ScrollBar]
      316 SETTABLEKS                       R22 R21 K96 ["VerticalScrollBarInset"]
      318 SETTABLEKS                       R21 R20 K79 ["scroll"]
      320 DUPTABLE                         R21 K107 [{"RadioGroup"}]
      321 GETUPVAL                         R22 2
      322 GETTABLEKS                       R22 R22 K19 ["createElement"]
      324 GETUPVAL                         R23 5
      325 GETTABLEKS                       R23 R23 K38 ["RadioGroup"]
      327 GETTABLEKS                       R23 R23 K108 ["Root"]
      329 DUPTABLE                         R24 K110 [{"value", "onValueChanged"}]
      330 GETTABLEKS                       R26 R0 K5 ["SelectedComment"]
      332 JUMPIFNOT                        R26 ; [+5]
      333 GETTABLEKS                       R25 R0 K5 ["SelectedComment"]
      335 GETTABLEKS                       R25 R25 K18 ["Name"]
      337 JUMP                             ; [+1]
      338 LOADNIL                          R25
      339 SETTABLEKS                       R25 R24 K41 ["value"]
      341 NEWCLOSURE                       R25 P4
      342 CAPTURE                          VAL R3
      343 CAPTURE                          VAL R0
      344 SETTABLEKS                       R25 R24 K109 ["onValueChanged"]
      346 MOVE                             R25 R12
      347 CALL                             R22 3 1
      348 SETTABLEKS                       R22 R21 K38 ["RadioGroup"]
      350 CALL                             R18 3 1
      351 SETTABLEKS                       R18 R17 K52 ["Comments"]
      353 CALL                             R14 3 -1
      354 RETURN                           R14 -1

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnSelectedCategoryChanged"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_18:
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
      167 DUPTABLE                         R12 K53 [{["LayoutOrder"] = 1, ["Text"], ["tag"] = "size-full-0 auto-y padding-y-xsmall text-body-small text-align-x-left content-emphasis", ["fontStyle"]}]
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

PROTO_19:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETIMPORT                        R2 K3 [utf8.len]
        6 GETTABLEKS                       R3 R0 K4 ["Details"]
        8 CALL                             R2 1 1
        9 LOADN                            R4 1000
       10 JUMPIFLT                         R4 R2 ; [+2]
       12 LOADB                            R3 0 +1
       13 LOADB                            R3 1
       14 LOADK                            R6 K5 ["Report"]
       15 LOADK                            R7 K6 ["CharacterCount"]
       16 DUPTABLE                         R8 K9 [{"characterCount", "maxLength"}]
       17 FASTCALL1                        TOSTRING R2 ; [+3]
       18 MOVE                             R10 R2
       19 GETIMPORT                        R9 K11 [tostring]
       21 CALL                             R9 1 1
       22 SETTABLEKS                       R9 R8 K7 ["characterCount"]
       24 LOADN                            R10 1000
       25 FASTCALL1                        TOSTRING R10 ; [+2]
       26 GETIMPORT                        R9 K11 [tostring]
       28 CALL                             R9 1 1
       29 SETTABLEKS                       R9 R8 K8 ["maxLength"]
       31 NAMECALL                         R4 R1 K12 ["getText"]
       33 CALL                             R4 4 1
       34 GETUPVAL                         R5 1
       35 GETTABLEKS                       R5 R5 K13 ["createElement"]
       37 GETUPVAL                         R6 2
       38 GETTABLEKS                       R6 R6 K14 ["View"]
       40 DUPTABLE                         R7 K17 [{["tag"] = "col gap-small size-full-0 auto-y"}]
       41 DUPTABLE                         R8 K20 [{"Heading", "Summary", "Details", "CharacterCount"}]
       42 LOADK                            R12 K5 ["Report"]
       43 LOADK                            R13 K21 ["AddDetails"]
       44 NAMECALL                         R10 R1 K12 ["getText"]
       46 CALL                             R10 3 1
       47 GETUPVAL                         R11 1
       48 GETTABLEKS                       R11 R11 K13 ["createElement"]
       50 GETUPVAL                         R12 2
       51 GETTABLEKS                       R12 R12 K22 ["Text"]
       53 DUPTABLE                         R13 K27 [{["LayoutOrder"] = 1, ["Text"], ["tag"] = "size-full-0 auto-y padding-y-xsmall text-body-small text-align-x-left content-emphasis", ["fontStyle"]}]
       54 SETTABLEKS                       R10 R13 K22 ["Text"]
       56 GETUPVAL                         R14 3
       57 SETTABLEKS                       R14 R13 K26 ["fontStyle"]
       59 CALL                             R11 2 1
       60 MOVE                             R9 R11
       61 SETTABLEKS                       R9 R8 K18 ["Heading"]
       63 GETTABLEKS                       R9 R0 K28 ["TargetComment"]
       65 JUMPIFNOT                        R9 ; [+10]
       66 GETUPVAL                         R9 1
       67 GETTABLEKS                       R9 R9 K13 ["createElement"]
       69 GETUPVAL                         R10 4
       70 DUPTABLE                         R11 K32 [{["Comment"], ["Rounded"] = True}]
       71 GETTABLEKS                       R12 R0 K28 ["TargetComment"]
       73 SETTABLEKS                       R12 R11 K29 ["Comment"]
       75 CALL                             R9 2 1
       76 SETTABLEKS                       R9 R8 K19 ["Summary"]
       78 GETUPVAL                         R9 1
       79 GETTABLEKS                       R9 R9 K13 ["createElement"]
       81 GETUPVAL                         R10 2
       82 GETTABLEKS                       R10 R10 K33 ["TextArea"]
       84 DUPTABLE                         R11 K47 [{["LayoutOrder"] = 3, ["text"], ["onChanged"], ["label"] = "", ["placeholder"], ["width"], ["numLines"] = 6, ["size"], ["hasError"], ["testId"] = "--report-details"}]
       85 GETTABLEKS                       R12 R0 K4 ["Details"]
       87 SETTABLEKS                       R12 R11 K35 ["text"]
       89 GETTABLEKS                       R12 R0 K48 ["OnDetailsChanged"]
       91 SETTABLEKS                       R12 R11 K36 ["onChanged"]
       93 LOADK                            R14 K5 ["Report"]
       94 LOADK                            R15 K49 ["DetailsPlaceholder"]
       95 NAMECALL                         R12 R1 K12 ["getText"]
       97 CALL                             R12 3 1
       98 SETTABLEKS                       R12 R11 K39 ["placeholder"]
      100 GETIMPORT                        R12 K52 [UDim.new]
      102 LOADN                            R13 1
      103 LOADN                            R14 0
      104 CALL                             R12 2 1
      105 SETTABLEKS                       R12 R11 K40 ["width"]
      107 GETUPVAL                         R12 2
      108 GETTABLEKS                       R12 R12 K53 ["Enums"]
      110 GETTABLEKS                       R12 R12 K54 ["InputSize"]
      112 GETTABLEKS                       R12 R12 K55 ["Medium"]
      114 SETTABLEKS                       R12 R11 K43 ["size"]
      116 SETTABLEKS                       R3 R11 K44 ["hasError"]
      118 CALL                             R9 2 1
      119 SETTABLEKS                       R9 R8 K4 ["Details"]
      121 GETUPVAL                         R9 1
      122 GETTABLEKS                       R9 R9 K13 ["createElement"]
      124 GETUPVAL                         R10 2
      125 GETTABLEKS                       R10 R10 K22 ["Text"]
      127 DUPTABLE                         R11 K58 [{["LayoutOrder"] = 4, ["Text"], ["tag"], ["testId"] = "--report-details-character-count"}]
      128 SETTABLEKS                       R4 R11 K22 ["Text"]
      130 NEWTABLE                         R12 4 0
      132 LOADB                            R13 1
      133 SETTABLEKS                       R13 R12 K59 ["size-full-0 auto-y text-label-small text-align-x-left"]
      135 SETTABLEKS                       R3 R12 K60 ["content-system-alert"]
      137 NOT                              R13 R3
      138 SETTABLEKS                       R13 R12 K61 ["content-muted"]
      140 SETTABLEKS                       R12 R11 K15 ["tag"]
      142 CALL                             R9 2 1
      143 SETTABLEKS                       R9 R8 K6 ["CharacterCount"]
      145 CALL                             R5 3 -1
      146 RETURN                           R5 -1

PROTO_20:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R2 R0 K1 ["InvalidTargetReason"]
        6 JUMPIFNOTEQKNIL                  R2 ; [+2]
        8 LOADB                            R3 0 +1
        9 LOADB                            R3 1
       10 JUMPIFNOT                        R2 ; [+2]
       11 MOVE                             R4 R2
       12 JUMP                             ; [+6]
       13 GETTABLEKS                       R5 R0 K2 ["SubmissionFailed"]
       15 JUMPIFNOT                        R5 ; [+2]
       16 LOADK                            R4 K2 ["SubmissionFailed"]
       17 JUMP                             ; [+1]
       18 LOADNIL                          R4
       19 GETUPVAL                         R5 1
       20 GETTABLEKS                       R5 R5 K3 ["createElement"]
       22 GETUPVAL                         R6 2
       23 GETTABLEKS                       R6 R6 K4 ["View"]
       25 DUPTABLE                         R7 K7 [{["tag"] = "fill size-full-0"}]
       26 DUPTABLE                         R8 K9 [{"Body"}]
       27 GETUPVAL                         R9 1
       28 GETTABLEKS                       R9 R9 K3 ["createElement"]
       30 GETUPVAL                         R10 2
       31 GETTABLEKS                       R10 R10 K4 ["View"]
       33 DUPTABLE                         R11 K11 [{["tag"] = "col gap-small size-full"}]
       34 DUPTABLE                         R12 K15 [{"Steps", "FeedbackAlert", "Content"}]
       35 GETUPVAL                         R13 1
       36 GETTABLEKS                       R13 R13 K3 ["createElement"]
       38 LOADK                            R14 K16 ["CanvasGroup"]
       39 NEWTABLE                         R15 8 0
       41 LOADN                            R16 1
       42 SETTABLEKS                       R16 R15 K17 ["LayoutOrder"]
       44 LOADN                            R16 1
       45 SETTABLEKS                       R16 R15 K18 ["BackgroundTransparency"]
       47 JUMPIFNOT                        R3 ; [+2]
       48 LOADK                            R16 K19 [0.5]
       49 JUMP                             ; [+1]
       50 LOADNIL                          R16
       51 SETTABLEKS                       R16 R15 K20 ["GroupTransparency"]
       53 GETIMPORT                        R16 K23 [UDim2.new]
       55 LOADN                            R17 1
       56 LOADN                            R18 0
       57 LOADN                            R19 0
       58 LOADN                            R20 34
       59 CALL                             R16 4 1
       60 SETTABLEKS                       R16 R15 K24 ["Size"]
       62 GETUPVAL                         R16 1
       63 GETTABLEKS                       R16 R16 K25 ["Tag"]
       65 LOADK                            R17 K26 ["data-testid=--report-steps"]
       66 SETTABLE                         R17 R15 R16
       67 DUPTABLE                         R16 K28 [{"Menu"}]
       68 GETTABLEKS                       R17 R0 K29 ["StepMenu"]
       70 SETTABLEKS                       R17 R16 K27 ["Menu"]
       72 CALL                             R13 3 1
       73 SETTABLEKS                       R13 R12 K12 ["Steps"]
       75 JUMPIFNOT                        R4 ; [+49]
       76 GETUPVAL                         R13 1
       77 GETTABLEKS                       R13 R13 K3 ["createElement"]
       79 GETUPVAL                         R14 2
       80 GETTABLEKS                       R14 R14 K13 ["FeedbackAlert"]
       82 DUPTABLE                         R15 K34 [{["LayoutOrder"] = 2, ["title"], ["severity"], ["testId"]}]
       83 LOADK                            R18 K35 ["Report"]
       84 MOVE                             R19 R4
       85 NAMECALL                         R16 R1 K36 ["getText"]
       87 CALL                             R16 3 1
       88 SETTABLEKS                       R16 R15 K31 ["title"]
       90 JUMPIFNOTEQKS                    R4 K37 ["CommentEdited"] ; [+9]
       92 GETUPVAL                         R16 2
       93 GETTABLEKS                       R16 R16 K38 ["Enums"]
       95 GETTABLEKS                       R16 R16 K39 ["AlertSeverity"]
       97 GETTABLEKS                       R16 R16 K40 ["Warning"]
       99 JUMP                             ; [+7]
      100 GETUPVAL                         R16 2
      101 GETTABLEKS                       R16 R16 K38 ["Enums"]
      103 GETTABLEKS                       R16 R16 K39 ["AlertSeverity"]
      105 GETTABLEKS                       R16 R16 K41 ["Error"]
      107 SETTABLEKS                       R16 R15 K32 ["severity"]
      109 JUMPIFNOT                        R2 ; [+10]
      110 LOADK                            R17 K42 ["--report-invalid-target-%*"]
      111 GETIMPORT                        R19 K45 [string.lower]
      113 MOVE                             R20 R2
      114 CALL                             R19 1 1
      115 NAMECALL                         R17 R17 K46 ["format"]
      117 CALL                             R17 2 1
      118 MOVE                             R16 R17
      119 JUMP                             ; [+1]
      120 LOADK                            R16 K47 ["--report-submission-failed"]
      121 SETTABLEKS                       R16 R15 K33 ["testId"]
      123 CALL                             R13 2 1
      124 JUMP                             ; [+1]
      125 LOADNIL                          R13
      126 SETTABLEKS                       R13 R12 K13 ["FeedbackAlert"]
      128 GETUPVAL                         R13 1
      129 GETTABLEKS                       R13 R13 K3 ["createElement"]
      131 LOADK                            R14 K16 ["CanvasGroup"]
      132 NEWTABLE                         R15 8 0
      134 LOADN                            R16 3
      135 SETTABLEKS                       R16 R15 K17 ["LayoutOrder"]
      137 LOADN                            R16 1
      138 SETTABLEKS                       R16 R15 K18 ["BackgroundTransparency"]
      140 JUMPIFNOT                        R3 ; [+2]
      141 LOADK                            R16 K19 [0.5]
      142 JUMP                             ; [+1]
      143 LOADNIL                          R16
      144 SETTABLEKS                       R16 R15 K20 ["GroupTransparency"]
      146 NOT                              R16 R3
      147 SETTABLEKS                       R16 R15 K48 ["Interactable"]
      149 GETUPVAL                         R16 1
      150 GETTABLEKS                       R16 R16 K25 ["Tag"]
      152 LOADK                            R17 K49 ["size-full-0 auto-y data-testid=--report-content"]
      153 SETTABLE                         R17 R15 R16
      154 DUPTABLE                         R16 K9 [{"Body"}]
      155 GETTABLEKS                       R17 R0 K8 ["Body"]
      157 SETTABLEKS                       R17 R16 K8 ["Body"]
      159 CALL                             R13 3 1
      160 SETTABLEKS                       R13 R12 K14 ["Content"]
      162 CALL                             R9 3 1
      163 SETTABLEKS                       R9 R8 K8 ["Body"]
      165 CALL                             R5 3 -1
      166 RETURN                           R5 -1

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
       56 GETTABLEKS                       R8 R8 K15 ["Util"]
       58 GETTABLEKS                       R8 R8 K18 ["rerenderReducer"]
       60 CALL                             R7 1 1
       61 GETIMPORT                        R8 K5 [require]
       63 GETTABLEKS                       R9 R0 K12 ["Src"]
       65 GETTABLEKS                       R9 R9 K19 ["Enums"]
       67 GETTABLEKS                       R9 R9 K20 ["ReportCategory"]
       69 CALL                             R8 1 1
       70 GETIMPORT                        R9 K5 [require]
       72 GETTABLEKS                       R10 R0 K12 ["Src"]
       74 GETTABLEKS                       R10 R10 K21 ["Types"]
       76 CALL                             R9 1 1
       77 NEWTABLE                         R10 0 9
       79 GETTABLEKS                       R11 R8 K22 ["Bullying"]
       81 GETTABLEKS                       R12 R8 K23 ["Discrimination"]
       83 GETTABLEKS                       R13 R8 K24 ["SharingPersonalInformation"]
       85 GETTABLEKS                       R14 R8 K25 ["DangerousSuggestions"]
       87 GETTABLEKS                       R15 R8 K26 ["UnsafeRequests"]
       89 GETTABLEKS                       R16 R8 K27 ["ThreatsOfViolence"]
       91 GETTABLEKS                       R17 R8 K28 ["RomanceOrSex"]
       93 GETTABLEKS                       R18 R8 K29 ["IllegalGoodsActivities"]
       95 GETTABLEKS                       R19 R8 K30 ["SuicideSelfHarm"]
       97 SETLIST                          R10 R11 9 [1]
       99 DUPTABLE                         R11 K32 [{"Font"}]
      100 GETIMPORT                        R12 K35 [Enum.Font.BuilderSansBold]
      102 SETTABLEKS                       R12 R11 K31 ["Font"]
      104 DUPTABLE                         R12 K32 [{"Font"}]
      105 GETIMPORT                        R13 K37 [Enum.Font.BuilderSansMedium]
      107 SETTABLEKS                       R13 R12 K31 ["Font"]
      109 DUPCLOSURE                       R13 K38 [PROTO_0]
      110 DUPCLOSURE                       R14 K39 [PROTO_1]
      111 CAPTURE                          VAL R1
      112 CAPTURE                          VAL R3
      113 DUPCLOSURE                       R15 K40 [PROTO_2]
      114 CAPTURE                          VAL R1
      115 CAPTURE                          VAL R3
      116 CAPTURE                          VAL R11
      117 DUPCLOSURE                       R16 K41 [PROTO_3]
      118 CAPTURE                          VAL R4
      119 CAPTURE                          VAL R5
      120 CAPTURE                          VAL R1
      121 CAPTURE                          VAL R3
      122 CAPTURE                          VAL R14
      123 CAPTURE                          VAL R12
      124 CAPTURE                          VAL R6
      125 DUPCLOSURE                       R17 K42 [PROTO_4]
      126 CAPTURE                          VAL R4
      127 CAPTURE                          VAL R1
      128 CAPTURE                          VAL R3
      129 CAPTURE                          VAL R11
      130 CAPTURE                          VAL R16
      131 DUPCLOSURE                       R18 K43 [PROTO_16]
      132 CAPTURE                          VAL R4
      133 CAPTURE                          VAL R5
      134 CAPTURE                          VAL R1
      135 CAPTURE                          VAL R7
      136 CAPTURE                          VAL R6
      137 CAPTURE                          VAL R3
      138 CAPTURE                          VAL R16
      139 CAPTURE                          VAL R11
      140 DUPCLOSURE                       R19 K44 [PROTO_18]
      141 CAPTURE                          VAL R4
      142 CAPTURE                          VAL R3
      143 CAPTURE                          VAL R10
      144 CAPTURE                          VAL R1
      145 CAPTURE                          VAL R11
      146 CAPTURE                          VAL R17
      147 DUPCLOSURE                       R20 K45 [PROTO_19]
      148 CAPTURE                          VAL R4
      149 CAPTURE                          VAL R1
      150 CAPTURE                          VAL R3
      151 CAPTURE                          VAL R11
      152 CAPTURE                          VAL R17
      153 DUPCLOSURE                       R21 K46 [PROTO_20]
      154 CAPTURE                          VAL R4
      155 CAPTURE                          VAL R1
      156 CAPTURE                          VAL R3
      157 DUPTABLE                         R22 K53 [{["Category"], ["CommentPicker"], ["Details"], ["Layout"], ["MAX_DETAILS_LENGTH"] = 1000}]
      158 SETTABLEKS                       R19 R22 K47 ["Category"]
      160 SETTABLEKS                       R18 R22 K48 ["CommentPicker"]
      162 SETTABLEKS                       R20 R22 K49 ["Details"]
      164 SETTABLEKS                       R21 R22 K50 ["Layout"]
      166 RETURN                           R22 1
