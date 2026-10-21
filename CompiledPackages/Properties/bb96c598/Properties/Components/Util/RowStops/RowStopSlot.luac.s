PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["rowSlot"]
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 GETTABLEKS                       R6 R5 K1 ["part"]
       10 DUPTABLE                         R7 K7 [{"kind", "name", "part", "onEdit", "step", "bounds"}]
       11 GETTABLEKS                       R8 R5 K2 ["kind"]
       13 SETTABLEKS                       R8 R7 K2 ["kind"]
       15 GETTABLEKS                       R8 R5 K3 ["name"]
       17 SETTABLEKS                       R8 R7 K3 ["name"]
       19 SETTABLEKS                       R6 R7 K1 ["part"]
       21 GETTABLEKS                       R8 R5 K4 ["onEdit"]
       23 SETTABLEKS                       R8 R7 K4 ["onEdit"]
       25 GETTABLEKS                       R8 R5 K5 ["step"]
       27 SETTABLEKS                       R8 R7 K5 ["step"]
       29 GETTABLEKS                       R8 R5 K6 ["bounds"]
       31 SETTABLEKS                       R8 R7 K6 ["bounds"]
       33 LOADK                            R9 K8 ["Cell"]
       34 MOVE                             R10 R4
       35 CONCAT                           R8 R9 R10
       36 GETUPVAL                         R9 1
       37 GETUPVAL                         R10 2
       38 DUPTABLE                         R11 K12 [{"LayoutOrder", "cell", "onSelected"}]
       39 SETTABLEKS                       R4 R11 K9 ["LayoutOrder"]
       41 SETTABLEKS                       R7 R11 K10 ["cell"]
       43 GETUPVAL                         R12 0
       44 GETTABLEKS                       R12 R12 K11 ["onSelected"]
       46 SETTABLEKS                       R12 R11 K11 ["onSelected"]
       48 CALL                             R9 2 1
       49 SETTABLE                         R9 R0 R8
       50 FORGLOOP                         R1 2 ; [-43]
       52 RETURN                           R0 1

PROTO_1:
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
       13 NEWTABLE                         R6 0 2
       15 GETTABLEKS                       R7 R0 K2 ["onSelected"]
       17 GETTABLEKS                       R8 R0 K3 ["rowSlot"]
       19 SETLIST                          R6 R7 2 [1]
       21 CALL                             R4 2 1
       22 GETUPVAL                         R5 3
       23 GETUPVAL                         R6 5
       24 DUPTABLE                         R7 K13 [{["LayoutOrder"], ["tag"] = "row flex-none gap-small size-full-0 auto-y padding-left-large padding-right-medium", ["padding"], ["backgroundStyle"], ["cornerRadius"], ["onActivated"], ["onAbsoluteSizeChanged"], ["testId"]}]
       25 GETTABLEKS                       R8 R0 K4 ["LayoutOrder"]
       27 SETTABLEKS                       R8 R7 K4 ["LayoutOrder"]
       29 DUPTABLE                         R8 K16 [{"top", "bottom"}]
       30 GETIMPORT                        R9 K19 [UDim.new]
       32 LOADN                            R10 0
       33 GETTABLEKS                       R11 R3 K20 ["RowSlotYPadding"]
       35 CALL                             R9 2 1
       36 SETTABLEKS                       R9 R8 K14 ["top"]
       38 GETIMPORT                        R9 K19 [UDim.new]
       40 LOADN                            R10 0
       41 GETTABLEKS                       R11 R3 K20 ["RowSlotYPadding"]
       43 CALL                             R9 2 1
       44 SETTABLEKS                       R9 R8 K15 ["bottom"]
       46 SETTABLEKS                       R8 R7 K7 ["padding"]
       48 GETTABLEKS                       R9 R0 K21 ["isSelected"]
       50 JUMPIFNOT                        R9 ; [+12]
       51 DUPTABLE                         R8 K25 [{["Color3"], ["Transparency"] = 0.9}]
       52 GETTABLEKS                       R9 R1 K26 ["Color"]
       54 GETTABLEKS                       R9 R9 K27 ["System"]
       56 GETTABLEKS                       R9 R9 K28 ["Emphasis"]
       58 GETTABLEKS                       R9 R9 K22 ["Color3"]
       60 SETTABLEKS                       R9 R8 K22 ["Color3"]
       62 JUMP                             ; [+1]
       63 DUPTABLE                         R8 K30 [{["Transparency"] = 1}]
       64 SETTABLEKS                       R8 R7 K8 ["backgroundStyle"]
       66 GETTABLEKS                       R9 R0 K21 ["isSelected"]
       68 JUMPIFNOT                        R9 ; [+5]
       69 GETTABLEKS                       R8 R1 K31 ["Radius"]
       71 GETTABLEKS                       R8 R8 K32 ["Small"]
       73 JUMP                             ; [+4]
       74 GETTABLEKS                       R8 R1 K31 ["Radius"]
       76 GETTABLEKS                       R8 R8 K33 ["None"]
       78 SETTABLEKS                       R8 R7 K9 ["cornerRadius"]
       80 GETTABLEKS                       R8 R0 K2 ["onSelected"]
       82 SETTABLEKS                       R8 R7 K10 ["onActivated"]
       84 GETTABLEKS                       R8 R0 K11 ["onAbsoluteSizeChanged"]
       86 SETTABLEKS                       R8 R7 K11 ["onAbsoluteSizeChanged"]
       88 LOADK                            R8 K34 ["RowStops-%*"]
       89 GETTABLEKS                       R10 R0 K4 ["LayoutOrder"]
       91 NAMECALL                         R8 R8 K35 ["format"]
       93 CALL                             R8 2 1
       94 SETTABLEKS                       R8 R7 K12 ["testId"]
       96 DUPTABLE                         R8 K38 [{"Cells", "Delete"}]
       97 GETUPVAL                         R9 3
       98 GETUPVAL                         R10 5
       99 DUPTABLE                         R11 K40 [{["tag"] = "row flex-x-fill fill gap-large size-full-0 auto-y", ["LayoutOrder"] = 1}]
      100 MOVE                             R12 R4
      101 CALL                             R9 3 1
      102 SETTABLEKS                       R9 R8 K36 ["Cells"]
      104 GETUPVAL                         R9 3
      105 GETUPVAL                         R10 6
      106 DUPTABLE                         R11 K49 [{["title"] = "", ["text"] = "Delete stop", ["align"], ["side"], ["LayoutOrder"] = 2, ["Visible"]}]
      107 GETUPVAL                         R12 7
      108 GETTABLEKS                       R12 R12 K50 ["End"]
      110 SETTABLEKS                       R12 R11 K45 ["align"]
      112 GETUPVAL                         R12 8
      113 GETTABLEKS                       R12 R12 K51 ["Top"]
      115 SETTABLEKS                       R12 R11 K46 ["side"]
      117 GETTABLEKS                       R12 R0 K52 ["canDelete"]
      119 SETTABLEKS                       R12 R11 K48 ["Visible"]
      121 DUPTABLE                         R12 K54 [{"Anchor"}]
      122 GETUPVAL                         R13 3
      123 GETUPVAL                         R14 9
      124 DUPTABLE                         R15 K58 [{"size", "icon", "variant", "onActivated", "testId"}]
      125 GETUPVAL                         R16 10
      126 GETTABLEKS                       R16 R16 K59 ["XSmall"]
      128 SETTABLEKS                       R16 R15 K55 ["size"]
      130 GETUPVAL                         R16 11
      131 GETTABLEKS                       R16 R16 K60 ["Minus"]
      133 SETTABLEKS                       R16 R15 K56 ["icon"]
      135 GETUPVAL                         R16 12
      136 GETTABLEKS                       R16 R16 K61 ["Utility"]
      138 SETTABLEKS                       R16 R15 K57 ["variant"]
      140 GETTABLEKS                       R16 R0 K62 ["onDelete"]
      142 SETTABLEKS                       R16 R15 K10 ["onActivated"]
      144 LOADK                            R16 K63 ["RowStops-Delete-%*"]
      145 GETTABLEKS                       R18 R0 K4 ["LayoutOrder"]
      147 NAMECALL                         R16 R16 K35 ["format"]
      149 CALL                             R16 2 1
      150 SETTABLEKS                       R16 R15 K12 ["testId"]
      152 CALL                             R13 2 1
      153 SETTABLEKS                       R13 R12 K53 ["Anchor"]
      155 CALL                             R9 3 1
      156 SETTABLEKS                       R9 R8 K37 ["Delete"]
      158 CALL                             R5 3 -1
      159 RETURN                           R5 -1

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
       74 DUPCLOSURE                       R17 K27 [PROTO_1]
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
