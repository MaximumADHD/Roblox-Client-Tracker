PROTO_0:
        0 DUPTABLE                         R0 K3 [{[1], ["Transparency"] = 0.85}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K4 ["Color"]
        4 GETTABLEKS                       R1 R1 K5 ["System"]
        6 GETTABLEKS                       R1 R1 K6 ["Emphasis"]
        8 GETTABLEKS                       R1 R1 K0 ["Color3"]
       10 SETTABLEKS                       R1 R0 K0 ["Color3"]
       12 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onEditStart"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["onSelected"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["rowSlot"]
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 GETTABLEKS                       R6 R5 K1 ["part"]
       10 DUPTABLE                         R7 K7 [{"kind", "name", "part", "onChange", "step", "bounds"}]
       11 GETTABLEKS                       R8 R5 K2 ["kind"]
       13 SETTABLEKS                       R8 R7 K2 ["kind"]
       15 GETTABLEKS                       R8 R5 K3 ["name"]
       17 SETTABLEKS                       R8 R7 K3 ["name"]
       19 SETTABLEKS                       R6 R7 K1 ["part"]
       21 GETTABLEKS                       R8 R5 K4 ["onChange"]
       23 SETTABLEKS                       R8 R7 K4 ["onChange"]
       25 GETTABLEKS                       R8 R5 K5 ["step"]
       27 SETTABLEKS                       R8 R7 K5 ["step"]
       29 GETTABLEKS                       R8 R5 K6 ["bounds"]
       31 SETTABLEKS                       R8 R7 K6 ["bounds"]
       33 LOADK                            R9 K8 ["Cell"]
       34 MOVE                             R10 R4
       35 CONCAT                           R8 R9 R10
       36 GETUPVAL                         R9 1
       37 GETUPVAL                         R10 2
       38 DUPTABLE                         R11 K13 [{"LayoutOrder", "cell", "onEditStart", "onEditFinish"}]
       39 SETTABLEKS                       R4 R11 K9 ["LayoutOrder"]
       41 SETTABLEKS                       R7 R11 K10 ["cell"]
       43 NEWCLOSURE                       R12 P0
       44 CAPTURE                          UPVAL U0
       45 SETTABLEKS                       R12 R11 K11 ["onEditStart"]
       47 GETUPVAL                         R12 0
       48 GETTABLEKS                       R12 R12 K12 ["onEditFinish"]
       50 SETTABLEKS                       R12 R11 K12 ["onEditFinish"]
       52 CALL                             R9 2 1
       53 SETTABLE                         R9 R0 R8
       54 FORGLOOP                         R1 2 ; [-47]
       56 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 CALL                             R2 0 1
        4 GETTABLEKS                       R3 R2 K0 ["RowStops"]
        6 GETUPVAL                         R4 2
        7 GETTABLEKS                       R4 R4 K1 ["useMemo"]
        9 NEWCLOSURE                       R5 P0
       10 CAPTURE                          VAL R1
       11 NEWTABLE                         R6 0 1
       13 GETTABLEKS                       R7 R1 K2 ["Color"]
       15 GETTABLEKS                       R7 R7 K3 ["System"]
       17 GETTABLEKS                       R7 R7 K4 ["Emphasis"]
       19 GETTABLEKS                       R7 R7 K5 ["Color3"]
       21 SETLIST                          R6 R7 1 [1]
       23 CALL                             R4 2 1
       24 GETUPVAL                         R5 2
       25 GETTABLEKS                       R5 R5 K1 ["useMemo"]
       27 NEWCLOSURE                       R6 P1
       28 CAPTURE                          VAL R0
       29 CAPTURE                          UPVAL U3
       30 CAPTURE                          UPVAL U4
       31 NEWTABLE                         R7 0 4
       33 GETTABLEKS                       R8 R0 K6 ["onEditStart"]
       35 GETTABLEKS                       R9 R0 K7 ["onEditFinish"]
       37 GETTABLEKS                       R10 R0 K8 ["onSelected"]
       39 GETTABLEKS                       R11 R0 K9 ["rowSlot"]
       41 SETLIST                          R7 R8 4 [1]
       43 CALL                             R5 2 1
       44 GETUPVAL                         R6 3
       45 GETUPVAL                         R7 5
       46 DUPTABLE                         R8 K18 [{["LayoutOrder"], ["tag"] = "row flex-none gap-small size-full-0 auto-y padding-left-large padding-right-medium", ["padding"], ["backgroundStyle"], ["onActivated"], ["onAbsoluteSizeChanged"], ["testId"]}]
       47 GETTABLEKS                       R9 R0 K10 ["LayoutOrder"]
       49 SETTABLEKS                       R9 R8 K10 ["LayoutOrder"]
       51 DUPTABLE                         R9 K21 [{"top", "bottom"}]
       52 GETIMPORT                        R10 K24 [UDim.new]
       54 LOADN                            R11 0
       55 GETTABLEKS                       R12 R3 K25 ["RowSlotYPadding"]
       57 CALL                             R10 2 1
       58 SETTABLEKS                       R10 R9 K19 ["top"]
       60 GETIMPORT                        R10 K24 [UDim.new]
       62 LOADN                            R11 0
       63 GETTABLEKS                       R12 R3 K25 ["RowSlotYPadding"]
       65 CALL                             R10 2 1
       66 SETTABLEKS                       R10 R9 K20 ["bottom"]
       68 SETTABLEKS                       R9 R8 K13 ["padding"]
       70 GETTABLEKS                       R10 R0 K26 ["isSelected"]
       72 JUMPIFNOT                        R10 ; [+2]
       73 MOVE                             R9 R4
       74 JUMP                             ; [+6]
       75 GETTABLEKS                       R9 R1 K2 ["Color"]
       77 GETTABLEKS                       R9 R9 K27 ["Surface"]
       79 GETTABLEKS                       R9 R9 K28 ["Surface_100"]
       81 SETTABLEKS                       R9 R8 K14 ["backgroundStyle"]
       83 GETTABLEKS                       R9 R0 K8 ["onSelected"]
       85 SETTABLEKS                       R9 R8 K15 ["onActivated"]
       87 GETTABLEKS                       R9 R0 K16 ["onAbsoluteSizeChanged"]
       89 SETTABLEKS                       R9 R8 K16 ["onAbsoluteSizeChanged"]
       91 LOADK                            R10 K29 ["RowStops-%*"]
       92 GETTABLEKS                       R12 R0 K10 ["LayoutOrder"]
       94 NAMECALL                         R10 R10 K30 ["format"]
       96 CALL                             R10 2 1
       97 MOVE                             R9 R10
       98 SETTABLEKS                       R9 R8 K17 ["testId"]
      100 DUPTABLE                         R9 K33 [{"Cells", "Delete"}]
      101 GETUPVAL                         R10 3
      102 GETUPVAL                         R11 5
      103 DUPTABLE                         R12 K36 [{["tag"] = "row flex-x-fill fill gap-large size-full-0 auto-y", ["LayoutOrder"] = 1}]
      104 MOVE                             R13 R5
      105 CALL                             R10 3 1
      106 SETTABLEKS                       R10 R9 K31 ["Cells"]
      108 GETUPVAL                         R10 3
      109 GETUPVAL                         R11 6
      110 DUPTABLE                         R12 K45 [{["title"] = "", ["text"] = "Delete stop", ["align"], ["side"], ["LayoutOrder"] = 2, ["Visible"]}]
      111 GETUPVAL                         R13 7
      112 GETTABLEKS                       R13 R13 K46 ["End"]
      114 SETTABLEKS                       R13 R12 K41 ["align"]
      116 GETUPVAL                         R13 8
      117 GETTABLEKS                       R13 R13 K47 ["Top"]
      119 SETTABLEKS                       R13 R12 K42 ["side"]
      121 GETTABLEKS                       R13 R0 K48 ["canDelete"]
      123 SETTABLEKS                       R13 R12 K44 ["Visible"]
      125 DUPTABLE                         R13 K50 [{"Anchor"}]
      126 GETUPVAL                         R14 3
      127 GETUPVAL                         R15 9
      128 DUPTABLE                         R16 K54 [{"size", "icon", "variant", "onActivated", "testId"}]
      129 GETUPVAL                         R17 10
      130 GETTABLEKS                       R17 R17 K55 ["XSmall"]
      132 SETTABLEKS                       R17 R16 K51 ["size"]
      134 GETUPVAL                         R17 11
      135 GETTABLEKS                       R17 R17 K56 ["Minus"]
      137 SETTABLEKS                       R17 R16 K52 ["icon"]
      139 GETUPVAL                         R17 12
      140 GETTABLEKS                       R17 R17 K57 ["Utility"]
      142 SETTABLEKS                       R17 R16 K53 ["variant"]
      144 GETTABLEKS                       R17 R0 K58 ["onDelete"]
      146 SETTABLEKS                       R17 R16 K15 ["onActivated"]
      148 LOADK                            R18 K59 ["RowStops-Delete-%*"]
      149 GETTABLEKS                       R20 R0 K10 ["LayoutOrder"]
      151 NAMECALL                         R18 R18 K30 ["format"]
      153 CALL                             R18 2 1
      154 MOVE                             R17 R18
      155 SETTABLEKS                       R17 R16 K17 ["testId"]
      157 CALL                             R14 2 1
      158 SETTABLEKS                       R14 R13 K49 ["Anchor"]
      160 CALL                             R10 3 1
      161 SETTABLEKS                       R10 R9 K32 ["Delete"]
      163 CALL                             R6 3 -1
      164 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Foundation"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["PropertyTypes"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["React"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R0 K10 ["Components"]
       28 GETTABLEKS                       R6 R6 K11 ["Util"]
       30 GETTABLEKS                       R6 R6 K12 ["RowStops"]
       32 GETTABLEKS                       R6 R6 K13 ["RowStopCell"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K14 ["Hooks"]
       39 GETTABLEKS                       R7 R7 K15 ["useVisualValues"]
       41 CALL                             R6 1 1
       42 GETTABLEKS                       R7 R2 K16 ["View"]
       44 GETTABLEKS                       R8 R2 K17 ["IconButton"]
       46 GETTABLEKS                       R9 R2 K18 ["Tooltip"]
       48 GETTABLEKS                       R10 R2 K19 ["Enums"]
       50 GETTABLEKS                       R10 R10 K20 ["IconName"]
       52 GETTABLEKS                       R11 R2 K19 ["Enums"]
       54 GETTABLEKS                       R11 R11 K21 ["InputSize"]
       56 GETTABLEKS                       R12 R2 K19 ["Enums"]
       58 GETTABLEKS                       R12 R12 K22 ["ButtonVariant"]
       60 GETTABLEKS                       R13 R2 K19 ["Enums"]
       62 GETTABLEKS                       R13 R13 K23 ["PopoverAlign"]
       64 GETTABLEKS                       R14 R2 K19 ["Enums"]
       66 GETTABLEKS                       R14 R14 K24 ["PopoverSide"]
       68 GETTABLEKS                       R15 R4 K25 ["createElement"]
       70 GETTABLEKS                       R16 R2 K14 ["Hooks"]
       72 GETTABLEKS                       R16 R16 K26 ["useTokens"]
       74 DUPCLOSURE                       R17 K27 [PROTO_3]
       75 CAPTURE                          VAL R16
       76 CAPTURE                          VAL R6
       77 CAPTURE                          VAL R4
       78 CAPTURE                          VAL R15
       79 CAPTURE                          VAL R5
       80 CAPTURE                          VAL R7
       81 CAPTURE                          VAL R9
       82 CAPTURE                          VAL R13
       83 CAPTURE                          VAL R14
       84 CAPTURE                          VAL R8
       85 CAPTURE                          VAL R11
       86 CAPTURE                          VAL R10
       87 CAPTURE                          VAL R12
       88 RETURN                           R17 1
