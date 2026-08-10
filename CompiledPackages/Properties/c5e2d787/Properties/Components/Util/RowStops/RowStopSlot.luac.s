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
        3 GETTABLEKS                       R2 R2 K0 ["useMemo"]
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          VAL R1
        7 NEWTABLE                         R4 0 1
        9 GETTABLEKS                       R5 R1 K1 ["Color"]
       11 GETTABLEKS                       R5 R5 K2 ["System"]
       13 GETTABLEKS                       R5 R5 K3 ["Emphasis"]
       15 GETTABLEKS                       R5 R5 K4 ["Color3"]
       17 SETLIST                          R4 R5 1 [1]
       19 CALL                             R2 2 1
       20 GETUPVAL                         R3 1
       21 GETTABLEKS                       R3 R3 K0 ["useMemo"]
       23 NEWCLOSURE                       R4 P1
       24 CAPTURE                          VAL R0
       25 CAPTURE                          UPVAL U2
       26 CAPTURE                          UPVAL U3
       27 NEWTABLE                         R5 0 4
       29 GETTABLEKS                       R6 R0 K5 ["onEditStart"]
       31 GETTABLEKS                       R7 R0 K6 ["onEditFinish"]
       33 GETTABLEKS                       R8 R0 K7 ["onSelected"]
       35 GETTABLEKS                       R9 R0 K8 ["rowSlot"]
       37 SETLIST                          R5 R6 4 [1]
       39 CALL                             R3 2 1
       40 GETUPVAL                         R4 2
       41 GETUPVAL                         R5 4
       42 DUPTABLE                         R6 K15 [{["LayoutOrder"], ["tag"] = "row flex-none gap-small size-full-0 auto-y padding-y-xsmall padding-left-large padding-right-medium", ["backgroundStyle"], ["onActivated"], ["onAbsoluteSizeChanged"]}]
       43 GETTABLEKS                       R7 R0 K9 ["LayoutOrder"]
       45 SETTABLEKS                       R7 R6 K9 ["LayoutOrder"]
       47 GETTABLEKS                       R8 R0 K16 ["isSelected"]
       49 JUMPIFNOT                        R8 ; [+2]
       50 MOVE                             R7 R2
       51 JUMP                             ; [+6]
       52 GETTABLEKS                       R7 R1 K1 ["Color"]
       54 GETTABLEKS                       R7 R7 K17 ["Surface"]
       56 GETTABLEKS                       R7 R7 K18 ["Surface_100"]
       58 SETTABLEKS                       R7 R6 K12 ["backgroundStyle"]
       60 GETTABLEKS                       R7 R0 K7 ["onSelected"]
       62 SETTABLEKS                       R7 R6 K13 ["onActivated"]
       64 GETTABLEKS                       R7 R0 K14 ["onAbsoluteSizeChanged"]
       66 SETTABLEKS                       R7 R6 K14 ["onAbsoluteSizeChanged"]
       68 DUPTABLE                         R7 K21 [{"Cells", "Delete"}]
       69 GETUPVAL                         R8 2
       70 GETUPVAL                         R9 4
       71 DUPTABLE                         R10 K24 [{["tag"] = "row flex-x-fill fill gap-large size-full-0 auto-y", ["LayoutOrder"] = 1}]
       72 MOVE                             R11 R3
       73 CALL                             R8 3 1
       74 SETTABLEKS                       R8 R7 K19 ["Cells"]
       76 GETUPVAL                         R8 2
       77 GETUPVAL                         R9 5
       78 DUPTABLE                         R10 K33 [{["title"] = "", ["text"] = "Delete stop", ["align"], ["side"], ["LayoutOrder"] = 2, ["Visible"]}]
       79 GETUPVAL                         R11 6
       80 GETTABLEKS                       R11 R11 K34 ["End"]
       82 SETTABLEKS                       R11 R10 K29 ["align"]
       84 GETUPVAL                         R11 7
       85 GETTABLEKS                       R11 R11 K35 ["Top"]
       87 SETTABLEKS                       R11 R10 K30 ["side"]
       89 GETTABLEKS                       R11 R0 K36 ["canDelete"]
       91 SETTABLEKS                       R11 R10 K32 ["Visible"]
       93 DUPTABLE                         R11 K38 [{"Anchor"}]
       94 GETUPVAL                         R12 2
       95 GETUPVAL                         R13 8
       96 DUPTABLE                         R14 K43 [{"size", "icon", "variant", "onActivated", "testId"}]
       97 GETUPVAL                         R15 9
       98 GETTABLEKS                       R15 R15 K44 ["XSmall"]
      100 SETTABLEKS                       R15 R14 K39 ["size"]
      102 GETUPVAL                         R15 10
      103 GETTABLEKS                       R15 R15 K45 ["Minus"]
      105 SETTABLEKS                       R15 R14 K40 ["icon"]
      107 GETUPVAL                         R15 11
      108 GETTABLEKS                       R15 R15 K46 ["Utility"]
      110 SETTABLEKS                       R15 R14 K41 ["variant"]
      112 GETTABLEKS                       R15 R0 K47 ["onDelete"]
      114 SETTABLEKS                       R15 R14 K13 ["onActivated"]
      116 LOADK                            R16 K48 ["RowStops-Delete-%*"]
      117 GETTABLEKS                       R18 R0 K9 ["LayoutOrder"]
      119 NAMECALL                         R16 R16 K49 ["format"]
      121 CALL                             R16 2 1
      122 MOVE                             R15 R16
      123 SETTABLEKS                       R15 R14 K42 ["testId"]
      125 CALL                             R12 2 1
      126 SETTABLEKS                       R12 R11 K37 ["Anchor"]
      128 CALL                             R8 3 1
      129 SETTABLEKS                       R8 R7 K20 ["Delete"]
      131 CALL                             R4 3 -1
      132 RETURN                           R4 -1

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
       35 GETTABLEKS                       R6 R2 K14 ["View"]
       37 GETTABLEKS                       R7 R2 K15 ["IconButton"]
       39 GETTABLEKS                       R8 R2 K16 ["Tooltip"]
       41 GETTABLEKS                       R9 R2 K17 ["Enums"]
       43 GETTABLEKS                       R9 R9 K18 ["IconName"]
       45 GETTABLEKS                       R10 R2 K17 ["Enums"]
       47 GETTABLEKS                       R10 R10 K19 ["InputSize"]
       49 GETTABLEKS                       R11 R2 K17 ["Enums"]
       51 GETTABLEKS                       R11 R11 K20 ["ButtonVariant"]
       53 GETTABLEKS                       R12 R2 K17 ["Enums"]
       55 GETTABLEKS                       R12 R12 K21 ["PopoverAlign"]
       57 GETTABLEKS                       R13 R2 K17 ["Enums"]
       59 GETTABLEKS                       R13 R13 K22 ["PopoverSide"]
       61 GETTABLEKS                       R14 R4 K23 ["createElement"]
       63 GETTABLEKS                       R15 R2 K24 ["Hooks"]
       65 GETTABLEKS                       R15 R15 K25 ["useTokens"]
       67 DUPCLOSURE                       R16 K26 [PROTO_3]
       68 CAPTURE                          VAL R15
       69 CAPTURE                          VAL R4
       70 CAPTURE                          VAL R14
       71 CAPTURE                          VAL R5
       72 CAPTURE                          VAL R6
       73 CAPTURE                          VAL R8
       74 CAPTURE                          VAL R12
       75 CAPTURE                          VAL R13
       76 CAPTURE                          VAL R7
       77 CAPTURE                          VAL R10
       78 CAPTURE                          VAL R9
       79 CAPTURE                          VAL R11
       80 RETURN                           R16 1
