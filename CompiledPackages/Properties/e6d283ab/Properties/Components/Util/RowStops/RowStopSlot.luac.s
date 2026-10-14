PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onEditStart"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["onSelected"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_1:
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

PROTO_2:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 CALL                             R2 0 1
        4 GETTABLEKS                       R3 R2 K0 ["RowStops"]
        6 GETUPVAL                         R4 2
        7 GETTABLEKS                       R4 R4 K1 ["useMemo"]
        9 NEWCLOSURE                       R5 P0
       10 CAPTURE                          VAL R0
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          UPVAL U4
       13 NEWTABLE                         R6 0 4
       15 GETTABLEKS                       R7 R0 K2 ["onEditStart"]
       17 GETTABLEKS                       R8 R0 K3 ["onEditFinish"]
       19 GETTABLEKS                       R9 R0 K4 ["onSelected"]
       21 GETTABLEKS                       R10 R0 K5 ["rowSlot"]
       23 SETLIST                          R6 R7 4 [1]
       25 CALL                             R4 2 1
       26 GETUPVAL                         R5 3
       27 GETUPVAL                         R6 5
       28 DUPTABLE                         R7 K15 [{["LayoutOrder"], ["tag"] = "row flex-none gap-small size-full-0 auto-y padding-left-large padding-right-medium", ["padding"], ["backgroundStyle"], ["cornerRadius"], ["onActivated"], ["onAbsoluteSizeChanged"], ["testId"]}]
       29 GETTABLEKS                       R8 R0 K6 ["LayoutOrder"]
       31 SETTABLEKS                       R8 R7 K6 ["LayoutOrder"]
       33 DUPTABLE                         R8 K18 [{"top", "bottom"}]
       34 GETIMPORT                        R9 K21 [UDim.new]
       36 LOADN                            R10 0
       37 GETTABLEKS                       R11 R3 K22 ["RowSlotYPadding"]
       39 CALL                             R9 2 1
       40 SETTABLEKS                       R9 R8 K16 ["top"]
       42 GETIMPORT                        R9 K21 [UDim.new]
       44 LOADN                            R10 0
       45 GETTABLEKS                       R11 R3 K22 ["RowSlotYPadding"]
       47 CALL                             R9 2 1
       48 SETTABLEKS                       R9 R8 K17 ["bottom"]
       50 SETTABLEKS                       R8 R7 K9 ["padding"]
       52 GETTABLEKS                       R9 R0 K23 ["isSelected"]
       54 JUMPIFNOT                        R9 ; [+12]
       55 DUPTABLE                         R8 K27 [{["Color3"], ["Transparency"] = 0.9}]
       56 GETTABLEKS                       R9 R1 K28 ["Color"]
       58 GETTABLEKS                       R9 R9 K29 ["System"]
       60 GETTABLEKS                       R9 R9 K30 ["Emphasis"]
       62 GETTABLEKS                       R9 R9 K24 ["Color3"]
       64 SETTABLEKS                       R9 R8 K24 ["Color3"]
       66 JUMP                             ; [+1]
       67 DUPTABLE                         R8 K32 [{["Transparency"] = 1}]
       68 SETTABLEKS                       R8 R7 K10 ["backgroundStyle"]
       70 GETTABLEKS                       R9 R0 K23 ["isSelected"]
       72 JUMPIFNOT                        R9 ; [+5]
       73 GETTABLEKS                       R8 R1 K33 ["Radius"]
       75 GETTABLEKS                       R8 R8 K34 ["Small"]
       77 JUMP                             ; [+4]
       78 GETTABLEKS                       R8 R1 K33 ["Radius"]
       80 GETTABLEKS                       R8 R8 K35 ["None"]
       82 SETTABLEKS                       R8 R7 K11 ["cornerRadius"]
       84 GETTABLEKS                       R8 R0 K4 ["onSelected"]
       86 SETTABLEKS                       R8 R7 K12 ["onActivated"]
       88 GETTABLEKS                       R8 R0 K13 ["onAbsoluteSizeChanged"]
       90 SETTABLEKS                       R8 R7 K13 ["onAbsoluteSizeChanged"]
       92 LOADK                            R8 K36 ["RowStops-%*"]
       93 GETTABLEKS                       R10 R0 K6 ["LayoutOrder"]
       95 NAMECALL                         R8 R8 K37 ["format"]
       97 CALL                             R8 2 1
       98 SETTABLEKS                       R8 R7 K14 ["testId"]
      100 DUPTABLE                         R8 K40 [{"Cells", "Delete"}]
      101 GETUPVAL                         R9 3
      102 GETUPVAL                         R10 5
      103 DUPTABLE                         R11 K42 [{["tag"] = "row flex-x-fill fill gap-large size-full-0 auto-y", ["LayoutOrder"] = 1}]
      104 MOVE                             R12 R4
      105 CALL                             R9 3 1
      106 SETTABLEKS                       R9 R8 K38 ["Cells"]
      108 GETUPVAL                         R9 3
      109 GETUPVAL                         R10 6
      110 DUPTABLE                         R11 K51 [{["title"] = "", ["text"] = "Delete stop", ["align"], ["side"], ["LayoutOrder"] = 2, ["Visible"]}]
      111 GETUPVAL                         R12 7
      112 GETTABLEKS                       R12 R12 K52 ["End"]
      114 SETTABLEKS                       R12 R11 K47 ["align"]
      116 GETUPVAL                         R12 8
      117 GETTABLEKS                       R12 R12 K53 ["Top"]
      119 SETTABLEKS                       R12 R11 K48 ["side"]
      121 GETTABLEKS                       R12 R0 K54 ["canDelete"]
      123 SETTABLEKS                       R12 R11 K50 ["Visible"]
      125 DUPTABLE                         R12 K56 [{"Anchor"}]
      126 GETUPVAL                         R13 3
      127 GETUPVAL                         R14 9
      128 DUPTABLE                         R15 K60 [{"size", "icon", "variant", "onActivated", "testId"}]
      129 GETUPVAL                         R16 10
      130 GETTABLEKS                       R16 R16 K61 ["XSmall"]
      132 SETTABLEKS                       R16 R15 K57 ["size"]
      134 GETUPVAL                         R16 11
      135 GETTABLEKS                       R16 R16 K62 ["Minus"]
      137 SETTABLEKS                       R16 R15 K58 ["icon"]
      139 GETUPVAL                         R16 12
      140 GETTABLEKS                       R16 R16 K63 ["Utility"]
      142 SETTABLEKS                       R16 R15 K59 ["variant"]
      144 GETTABLEKS                       R16 R0 K64 ["onDelete"]
      146 SETTABLEKS                       R16 R15 K12 ["onActivated"]
      148 LOADK                            R16 K65 ["RowStops-Delete-%*"]
      149 GETTABLEKS                       R18 R0 K6 ["LayoutOrder"]
      151 NAMECALL                         R16 R16 K37 ["format"]
      153 CALL                             R16 2 1
      154 SETTABLEKS                       R16 R15 K14 ["testId"]
      156 CALL                             R13 2 1
      157 SETTABLEKS                       R13 R12 K55 ["Anchor"]
      159 CALL                             R9 3 1
      160 SETTABLEKS                       R9 R8 K39 ["Delete"]
      162 CALL                             R5 3 -1
      163 RETURN                           R5 -1

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
       74 DUPCLOSURE                       R17 K27 [PROTO_2]
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
