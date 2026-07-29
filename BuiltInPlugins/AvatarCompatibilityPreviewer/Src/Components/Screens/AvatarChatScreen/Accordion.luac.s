PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R0 K2 [{"expanded", "onToggle"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["expanded"]
        4 SETTABLEKS                       R1 R0 K0 ["expanded"]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K1 ["onToggle"]
        9 SETTABLEKS                       R1 R0 K1 ["onToggle"]
       11 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 NEWTABLE                         R3 0 2
        7 GETTABLEKS                       R4 R0 K1 ["expanded"]
        9 GETTABLEKS                       R5 R0 K2 ["onToggle"]
       11 SETLIST                          R3 R4 2 [1]
       13 CALL                             R1 2 1
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K3 ["createElement"]
       17 GETUPVAL                         R3 1
       18 DUPTABLE                         R4 K7 [{["tag"] = "col gap-small size-full-0 auto-y", ["LayoutOrder"]}]
       19 GETTABLEKS                       R5 R0 K6 ["LayoutOrder"]
       21 SETTABLEKS                       R5 R4 K6 ["LayoutOrder"]
       23 DUPTABLE                         R5 K9 [{"Context"}]
       24 GETUPVAL                         R6 0
       25 GETTABLEKS                       R6 R6 K3 ["createElement"]
       27 GETUPVAL                         R7 2
       28 GETTABLEKS                       R7 R7 K10 ["Provider"]
       30 DUPTABLE                         R8 K12 [{"value"}]
       31 SETTABLEKS                       R1 R8 K11 ["value"]
       33 GETTABLEKS                       R9 R0 K13 ["children"]
       35 CALL                             R6 3 1
       36 SETTABLEKS                       R6 R5 K8 ["Context"]
       38 CALL                             R2 3 -1
       39 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["useContext"]
        5 GETUPVAL                         R3 2
        6 CALL                             R2 1 1
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K1 ["createElement"]
       10 GETUPVAL                         R4 3
       11 DUPTABLE                         R5 K7 [{["tag"] = "row align-y-center gap-xsmall size-full-600 padding-y-xxsmall radius-medium", ["onActivated"], ["LayoutOrder"], ["testId"]}]
       12 GETTABLEKS                       R7 R0 K8 ["isDisabled"]
       14 JUMPIFNOT                        R7 ; [+2]
       15 LOADNIL                          R6
       16 JUMP                             ; [+2]
       17 GETTABLEKS                       R6 R2 K9 ["onToggle"]
       19 SETTABLEKS                       R6 R5 K4 ["onActivated"]
       21 GETTABLEKS                       R6 R0 K5 ["LayoutOrder"]
       23 SETTABLEKS                       R6 R5 K5 ["LayoutOrder"]
       25 GETTABLEKS                       R6 R0 K6 ["testId"]
       27 SETTABLEKS                       R6 R5 K6 ["testId"]
       29 GETUPVAL                         R6 4
       30 GETTABLEKS                       R6 R6 K10 ["assign"]
       32 NEWTABLE                         R7 0 0
       34 GETTABLEKS                       R8 R0 K11 ["children"]
       36 JUMPIF                           R8 ; [+2]
       37 NEWTABLE                         R8 0 0
       39 DUPTABLE                         R9 K13 [{"ExpandIcon"}]
       40 GETTABLEKS                       R11 R0 K8 ["isDisabled"]
       42 JUMPIFNOT                        R11 ; [+2]
       43 LOADNIL                          R10
       44 JUMP                             ; [+26]
       45 GETUPVAL                         R10 1
       46 GETTABLEKS                       R10 R10 K1 ["createElement"]
       48 GETUPVAL                         R11 5
       49 DUPTABLE                         R12 K19 [{["name"], ["size"] = 12, ["style"], ["LayoutOrder"] = -1}]
       50 GETTABLEKS                       R14 R2 K20 ["expanded"]
       52 JUMPIFNOT                        R14 ; [+4]
       53 GETUPVAL                         R13 6
       54 GETTABLEKS                       R13 R13 K21 ["ChevronSmallDown"]
       56 JUMP                             ; [+3]
       57 GETUPVAL                         R13 6
       58 GETTABLEKS                       R13 R13 K22 ["ChevronSmallRight"]
       60 SETTABLEKS                       R13 R12 K14 ["name"]
       62 GETTABLEKS                       R13 R1 K23 ["Color"]
       64 GETTABLEKS                       R13 R13 K24 ["Content"]
       66 GETTABLEKS                       R13 R13 K25 ["Emphasis"]
       68 SETTABLEKS                       R13 R12 K17 ["style"]
       70 CALL                             R10 2 1
       71 SETTABLEKS                       R10 R9 K12 ["ExpandIcon"]
       73 CALL                             R6 3 -1
       74 CALL                             R3 -1 -1
       75 RETURN                           R3 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        3 GETTABLEKS                       R2 R2 K1 ["Y"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R1 K2 [UDim2.fromOffset]
        2 LOADN                            R2 12
        3 MOVE                             R3 R0
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["useBinding"]
        8 LOADN                            R3 0
        9 CALL                             R2 1 2
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K2 ["useCallback"]
       13 NEWCLOSURE                       R5 P0
       14 CAPTURE                          VAL R3
       15 NEWTABLE                         R6 0 1
       17 MOVE                             R7 R3
       18 SETLIST                          R6 R7 1 [1]
       20 CALL                             R4 2 1
       21 GETTABLEKS                       R5 R1 K3 ["expanded"]
       23 JUMPIF                           R5 ; [+2]
       24 LOADNIL                          R5
       25 RETURN                           R5 1
       26 GETUPVAL                         R5 2
       27 GETTABLEKS                       R5 R5 K4 ["createNextOrder"]
       29 CALL                             R5 0 1
       30 GETUPVAL                         R6 0
       31 GETTABLEKS                       R6 R6 K5 ["createElement"]
       33 GETUPVAL                         R7 3
       34 DUPTABLE                         R8 K9 [{["tag"] = "row gap-xsmall size-full-0 auto-y", ["LayoutOrder"]}]
       35 GETTABLEKS                       R9 R0 K8 ["LayoutOrder"]
       37 SETTABLEKS                       R9 R8 K8 ["LayoutOrder"]
       39 DUPTABLE                         R9 K12 [{"VerticalBar", "Container"}]
       40 GETUPVAL                         R10 0
       41 GETTABLEKS                       R10 R10 K5 ["createElement"]
       43 GETUPVAL                         R11 3
       44 DUPTABLE                         R12 K14 [{"Size", "LayoutOrder"}]
       45 DUPCLOSURE                       R15 K15 [PROTO_5]
       46 NAMECALL                         R13 R2 K16 ["map"]
       48 CALL                             R13 2 1
       49 SETTABLEKS                       R13 R12 K13 ["Size"]
       51 MOVE                             R13 R5
       52 CALL                             R13 0 1
       53 SETTABLEKS                       R13 R12 K8 ["LayoutOrder"]
       55 DUPTABLE                         R13 K18 [{"Line"}]
       56 GETUPVAL                         R14 0
       57 GETTABLEKS                       R14 R14 K5 ["createElement"]
       59 LOADK                            R15 K19 ["Frame"]
       60 DUPTABLE                         R16 K25 [{["AnchorPoint"], ["BackgroundColor3"], ["BackgroundTransparency"] = 0.92, ["Position"], ["Size"]}]
       61 GETIMPORT                        R17 K28 [Vector2.new]
       63 LOADK                            R18 K29 [0.5]
       64 LOADK                            R19 K29 [0.5]
       65 CALL                             R17 2 1
       66 SETTABLEKS                       R17 R16 K20 ["AnchorPoint"]
       68 GETIMPORT                        R17 K31 [Color3.new]
       70 LOADN                            R18 1
       71 LOADN                            R19 1
       72 LOADN                            R20 1
       73 CALL                             R17 3 1
       74 SETTABLEKS                       R17 R16 K21 ["BackgroundColor3"]
       76 GETIMPORT                        R17 K34 [UDim2.fromScale]
       78 LOADK                            R18 K29 [0.5]
       79 LOADK                            R19 K29 [0.5]
       80 CALL                             R17 2 1
       81 SETTABLEKS                       R17 R16 K24 ["Position"]
       83 GETIMPORT                        R17 K35 [UDim2.new]
       85 LOADN                            R18 0
       86 LOADN                            R19 1
       87 LOADN                            R20 1
       88 LOADN                            R21 0
       89 CALL                             R17 4 1
       90 SETTABLEKS                       R17 R16 K13 ["Size"]
       92 CALL                             R14 2 1
       93 SETTABLEKS                       R14 R13 K17 ["Line"]
       95 CALL                             R10 3 1
       96 SETTABLEKS                       R10 R9 K10 ["VerticalBar"]
       98 GETUPVAL                         R10 0
       99 GETTABLEKS                       R10 R10 K5 ["createElement"]
      101 GETUPVAL                         R11 3
      102 DUPTABLE                         R12 K37 [{"tag", "onAbsoluteSizeChanged", "LayoutOrder"}]
      103 GETTABLEKS                       R13 R0 K6 ["tag"]
      105 SETTABLEKS                       R13 R12 K6 ["tag"]
      107 SETTABLEKS                       R4 R12 K36 ["onAbsoluteSizeChanged"]
      109 MOVE                             R13 R5
      110 CALL                             R13 0 1
      111 SETTABLEKS                       R13 R12 K8 ["LayoutOrder"]
      113 GETTABLEKS                       R13 R0 K38 ["children"]
      115 CALL                             R10 3 1
      116 SETTABLEKS                       R10 R9 K11 ["Container"]
      118 CALL                             R6 3 -1
      119 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["Foundation"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R4 K11 ["Enums"]
       37 GETTABLEKS                       R5 R5 K12 ["IconName"]
       39 GETTABLEKS                       R6 R4 K13 ["Hooks"]
       41 GETTABLEKS                       R6 R6 K14 ["useTokens"]
       43 GETTABLEKS                       R7 R4 K15 ["Icon"]
       45 GETTABLEKS                       R8 R4 K16 ["View"]
       47 GETTABLEKS                       R9 R2 K17 ["createContext"]
       49 DUPTABLE                         R10 K21 [{["expanded"] = False, ["onToggle"]}]
       50 DUPCLOSURE                       R11 K22 [PROTO_0]
       51 SETTABLEKS                       R11 R10 K20 ["onToggle"]
       53 CALL                             R9 1 1
       54 DUPCLOSURE                       R10 K23 [PROTO_2]
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R8
       57 CAPTURE                          VAL R9
       58 DUPCLOSURE                       R11 K24 [PROTO_3]
       59 CAPTURE                          VAL R6
       60 CAPTURE                          VAL R2
       61 CAPTURE                          VAL R9
       62 CAPTURE                          VAL R8
       63 CAPTURE                          VAL R1
       64 CAPTURE                          VAL R7
       65 CAPTURE                          VAL R5
       66 DUPCLOSURE                       R12 K25 [PROTO_6]
       67 CAPTURE                          VAL R2
       68 CAPTURE                          VAL R9
       69 CAPTURE                          VAL R3
       70 CAPTURE                          VAL R8
       71 DUPTABLE                         R13 K29 [{"Root", "Header", "Content"}]
       72 GETTABLEKS                       R14 R2 K30 ["memo"]
       74 MOVE                             R15 R10
       75 CALL                             R14 1 1
       76 SETTABLEKS                       R14 R13 K26 ["Root"]
       78 GETTABLEKS                       R14 R2 K30 ["memo"]
       80 MOVE                             R15 R11
       81 CALL                             R14 1 1
       82 SETTABLEKS                       R14 R13 K27 ["Header"]
       84 GETTABLEKS                       R14 R2 K30 ["memo"]
       86 MOVE                             R15 R12
       87 CALL                             R14 1 1
       88 SETTABLEKS                       R14 R13 K28 ["Content"]
       90 RETURN                           R13 1
