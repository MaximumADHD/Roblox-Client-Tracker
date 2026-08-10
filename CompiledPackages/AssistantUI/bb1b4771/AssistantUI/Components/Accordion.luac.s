PROTO_0:
        0 GETIMPORT                        R0 K1 [error]
        2 LOADK                            R1 K2 ["AccordionRoot is required to toggle expansion state"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 NOT                              R1 R2
        2 SETTABLEKS                       R1 R0 K0 ["expanded"]
        4 DUPTABLE                         R1 K3 [{["rawTransformValues"] = True}]
        5 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["editThisContent"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["contentId"]
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          UPVAL U1
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R0 K2 [{"isExpanded", "toggleIsExpanded"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["isExpanded"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["toggleIsExpanded"]
        7 RETURN                           R0 1

PROTO_4:
        0 GETTABLEKS                       R2 R0 K1 ["expanded"]
        2 ORK                              R1 R2 K0 [False]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K2 ["useCallback"]
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          VAL R0
        8 CAPTURE                          VAL R1
        9 NEWTABLE                         R4 0 3
       11 GETTABLEKS                       R5 R0 K3 ["contentId"]
       13 GETTABLEKS                       R6 R0 K4 ["editThisContent"]
       15 MOVE                             R7 R1
       16 SETLIST                          R4 R5 3 [1]
       18 CALL                             R2 2 1
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R3 R3 K5 ["useMemo"]
       22 NEWCLOSURE                       R4 P1
       23 CAPTURE                          VAL R1
       24 CAPTURE                          VAL R2
       25 NEWTABLE                         R5 0 2
       27 MOVE                             R6 R1
       28 MOVE                             R7 R2
       29 SETLIST                          R5 R6 2 [1]
       31 CALL                             R3 2 1
       32 GETUPVAL                         R4 1
       33 GETUPVAL                         R5 2
       34 DUPTABLE                         R6 K8 [{"tag", "LayoutOrder"}]
       35 GETTABLEKS                       R8 R0 K6 ["tag"]
       37 ORK                              R7 R8 K9 ["col size-full-0 auto-xy gap-small"]
       38 SETTABLEKS                       R7 R6 K6 ["tag"]
       40 GETTABLEKS                       R7 R0 K7 ["LayoutOrder"]
       42 SETTABLEKS                       R7 R6 K7 ["LayoutOrder"]
       44 DUPTABLE                         R7 K11 [{"Context"}]
       45 GETUPVAL                         R8 1
       46 GETUPVAL                         R9 3
       47 GETTABLEKS                       R9 R9 K12 ["Provider"]
       49 DUPTABLE                         R10 K14 [{"value"}]
       50 SETTABLEKS                       R3 R10 K13 ["value"]
       52 GETTABLEKS                       R11 R0 K15 ["children"]
       54 CALL                             R8 3 1
       55 SETTABLEKS                       R8 R7 K10 ["Context"]
       57 CALL                             R4 3 -1
       58 RETURN                           R4 -1

PROTO_5:
        0 NEWTABLE                         R0 8 0
        2 LOADB                            R1 1
        3 SETTABLEKS                       R1 R0 K0 ["row gap-xsmall radius-medium padding-y-xxsmall"]
        5 GETUPVAL                         R2 0
        6 JUMPIFEQKS                       R2 K1 ["center"] ; [+2]
        8 LOADB                            R1 0 +1
        9 LOADB                            R1 1
       10 SETTABLEKS                       R1 R0 K2 ["align-y-center"]
       12 GETUPVAL                         R2 0
       13 JUMPIFEQKS                       R2 K3 ["top"] ; [+2]
       15 LOADB                            R1 0 +1
       16 LOADB                            R1 1
       17 SETTABLEKS                       R1 R0 K4 ["align-y-top"]
       19 GETUPVAL                         R2 1
       20 NOT                              R1 R2
       21 SETTABLEKS                       R1 R0 K5 ["size-full-600"]
       23 GETUPVAL                         R3 1
       24 NOT                              R2 R3
       25 NOT                              R1 R2
       26 SETTABLEKS                       R1 R0 K6 ["size-full-0 auto-y"]
       28 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["useContext"]
        9 GETUPVAL                         R3 2
       10 CALL                             R2 1 1
       11 GETTABLEKS                       R3 R2 K3 ["isExpanded"]
       13 GETTABLEKS                       R4 R2 K4 ["toggleIsExpanded"]
       15 GETTABLEKS                       R5 R0 K5 ["AutomaticHeight"]
       17 GETTABLEKS                       R7 R0 K7 ["IconSize"]
       19 ORK                              R6 R7 K6 ["small"]
       20 GETTABLEKS                       R8 R0 K9 ["VerticalAlignment"]
       22 ORK                              R7 R8 K8 ["center"]
       23 GETUPVAL                         R8 1
       24 GETTABLEKS                       R8 R8 K10 ["useMemo"]
       26 NEWCLOSURE                       R9 P0
       27 CAPTURE                          VAL R7
       28 CAPTURE                          VAL R5
       29 NEWTABLE                         R10 0 2
       31 MOVE                             R11 R5
       32 MOVE                             R12 R7
       33 SETLIST                          R10 R11 2 [1]
       35 CALL                             R8 2 1
       36 GETUPVAL                         R9 3
       37 GETUPVAL                         R10 4
       38 DUPTABLE                         R11 K15 [{"tag", "onActivated", "LayoutOrder", "testId"}]
       39 SETTABLEKS                       R8 R11 K11 ["tag"]
       41 GETTABLEKS                       R13 R0 K16 ["IsDisabled"]
       43 JUMPIFNOT                        R13 ; [+2]
       44 LOADNIL                          R12
       45 JUMP                             ; [+1]
       46 MOVE                             R12 R4
       47 SETTABLEKS                       R12 R11 K12 ["onActivated"]
       49 GETTABLEKS                       R12 R0 K13 ["LayoutOrder"]
       51 SETTABLEKS                       R12 R11 K13 ["LayoutOrder"]
       53 GETTABLEKS                       R12 R0 K14 ["testId"]
       55 SETTABLEKS                       R12 R11 K14 ["testId"]
       57 GETUPVAL                         R12 5
       58 GETTABLEKS                       R12 R12 K17 ["assign"]
       60 GETTABLEKS                       R13 R0 K18 ["children"]
       62 JUMPIF                           R13 ; [+2]
       63 NEWTABLE                         R13 0 0
       65 DUPTABLE                         R14 K20 [{"ExpandIcon"}]
       66 GETUPVAL                         R15 3
       67 GETUPVAL                         R16 6
       68 DUPTABLE                         R17 K25 [{["name"], ["size"], ["style"], ["LayoutOrder"] = -1}]
       69 JUMPIFNOT                        R3 ; [+8]
       70 GETUPVAL                         R18 0
       71 GETTABLEKS                       R18 R18 K26 ["Enums"]
       73 GETTABLEKS                       R18 R18 K27 ["IconName"]
       75 GETTABLEKS                       R18 R18 K28 ["ChevronSmallDown"]
       77 JUMP                             ; [+7]
       78 GETUPVAL                         R18 0
       79 GETTABLEKS                       R18 R18 K26 ["Enums"]
       81 GETTABLEKS                       R18 R18 K27 ["IconName"]
       83 GETTABLEKS                       R18 R18 K29 ["ChevronSmallRight"]
       85 SETTABLEKS                       R18 R17 K21 ["name"]
       87 JUMPIFNOTEQKS                    R6 K6 ["small"] ; [+3]
       89 LOADN                            R18 12
       90 JUMP                             ; [+1]
       91 LOADN                            R18 24
       92 SETTABLEKS                       R18 R17 K22 ["size"]
       94 GETTABLEKS                       R18 R1 K30 ["Color"]
       96 GETTABLEKS                       R18 R18 K31 ["Content"]
       98 GETTABLEKS                       R18 R18 K32 ["Emphasis"]
      100 SETTABLEKS                       R18 R17 K23 ["style"]
      102 CALL                             R15 2 1
      103 SETTABLEKS                       R15 R14 K19 ["ExpandIcon"]
      105 CALL                             R12 2 -1
      106 CALL                             R9 -1 -1
      107 RETURN                           R9 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        3 GETTABLEKS                       R2 R2 K1 ["Y"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R2 R0 K1 ["AbsoluteSize"]
        8 GETTABLEKS                       R2 R2 K2 ["Y"]
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_9:
        0 GETIMPORT                        R1 K2 [UDim2.fromOffset]
        2 LOADN                            R2 12
        3 MOVE                             R3 R0
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_10:
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
       21 GETUPVAL                         R5 0
       22 GETTABLEKS                       R5 R5 K3 ["useRef"]
       24 LOADNIL                          R6
       25 CALL                             R5 1 1
       26 GETUPVAL                         R6 0
       27 GETTABLEKS                       R6 R6 K4 ["useEffect"]
       29 NEWCLOSURE                       R7 P1
       30 CAPTURE                          VAL R5
       31 CAPTURE                          VAL R3
       32 NEWTABLE                         R8 0 1
       34 GETTABLEKS                       R9 R5 K5 ["current"]
       36 SETLIST                          R8 R9 1 [1]
       38 CALL                             R6 2 0
       39 GETTABLEKS                       R6 R1 K6 ["isExpanded"]
       41 GETTABLEKS                       R7 R0 K7 ["UseVisible"]
       43 JUMPIF                           R6 ; [+3]
       44 JUMPIF                           R7 ; [+2]
       45 LOADNIL                          R8
       46 RETURN                           R8 1
       47 AND                              R8 R7 R6
       48 GETUPVAL                         R9 2
       49 CALL                             R9 0 1
       50 GETUPVAL                         R10 3
       51 GETUPVAL                         R11 4
       52 DUPTABLE                         R12 K13 [{["tag"] = "row gap-xsmall size-full-0 auto-y", ["LayoutOrder"], ["Visible"], ["ref"]}]
       53 GETTABLEKS                       R13 R0 K10 ["LayoutOrder"]
       55 SETTABLEKS                       R13 R12 K10 ["LayoutOrder"]
       57 SETTABLEKS                       R8 R12 K11 ["Visible"]
       59 SETTABLEKS                       R5 R12 K12 ["ref"]
       61 DUPTABLE                         R13 K16 [{"VerticalBar", "Container"}]
       62 GETTABLEKS                       R15 R0 K17 ["disableVerticalBar"]
       64 NOT                              R14 R15
       65 JUMPIFNOT                        R14 ; [+52]
       66 GETUPVAL                         R14 3
       67 GETUPVAL                         R15 4
       68 DUPTABLE                         R16 K19 [{"Size", "LayoutOrder"}]
       69 DUPCLOSURE                       R19 K20 [PROTO_9]
       70 NAMECALL                         R17 R2 K21 ["map"]
       72 CALL                             R17 2 1
       73 SETTABLEKS                       R17 R16 K18 ["Size"]
       75 MOVE                             R17 R9
       76 CALL                             R17 0 1
       77 SETTABLEKS                       R17 R16 K10 ["LayoutOrder"]
       79 DUPTABLE                         R17 K23 [{"Line"}]
       80 GETUPVAL                         R18 3
       81 LOADK                            R19 K24 ["Frame"]
       82 DUPTABLE                         R20 K30 [{["AnchorPoint"], ["BackgroundColor3"], ["BackgroundTransparency"] = 0.92, ["Position"], ["Size"]}]
       83 GETIMPORT                        R21 K33 [Vector2.new]
       85 LOADK                            R22 K34 [0.5]
       86 LOADK                            R23 K34 [0.5]
       87 CALL                             R21 2 1
       88 SETTABLEKS                       R21 R20 K25 ["AnchorPoint"]
       90 GETIMPORT                        R21 K36 [Color3.new]
       92 LOADN                            R22 1
       93 LOADN                            R23 1
       94 LOADN                            R24 1
       95 CALL                             R21 3 1
       96 SETTABLEKS                       R21 R20 K26 ["BackgroundColor3"]
       98 GETIMPORT                        R21 K39 [UDim2.fromScale]
      100 LOADK                            R22 K34 [0.5]
      101 LOADK                            R23 K34 [0.5]
      102 CALL                             R21 2 1
      103 SETTABLEKS                       R21 R20 K29 ["Position"]
      105 GETIMPORT                        R21 K40 [UDim2.new]
      107 LOADN                            R22 0
      108 LOADN                            R23 1
      109 LOADN                            R24 1
      110 LOADN                            R25 0
      111 CALL                             R21 4 1
      112 SETTABLEKS                       R21 R20 K18 ["Size"]
      114 CALL                             R18 2 1
      115 SETTABLEKS                       R18 R17 K22 ["Line"]
      117 CALL                             R14 3 1
      118 SETTABLEKS                       R14 R13 K14 ["VerticalBar"]
      120 GETUPVAL                         R14 3
      121 GETUPVAL                         R15 4
      122 DUPTABLE                         R16 K42 [{"tag", "onAbsoluteSizeChanged", "LayoutOrder"}]
      123 GETTABLEKS                       R17 R0 K8 ["tag"]
      125 SETTABLEKS                       R17 R16 K8 ["tag"]
      127 SETTABLEKS                       R4 R16 K41 ["onAbsoluteSizeChanged"]
      129 MOVE                             R17 R9
      130 CALL                             R17 0 1
      131 SETTABLEKS                       R17 R16 K10 ["LayoutOrder"]
      133 GETTABLEKS                       R17 R0 K43 ["children"]
      135 CALL                             R14 3 1
      136 SETTABLEKS                       R14 R13 K15 ["Container"]
      138 CALL                             R10 3 -1
      139 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Parent"]
       32 GETTABLEKS                       R5 R5 K10 ["ReactUtils"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K11 ["Types"]
       39 CALL                             R5 1 1
       40 GETTABLEKS                       R6 R2 K12 ["Icon"]
       42 GETTABLEKS                       R7 R2 K13 ["View"]
       44 GETTABLEKS                       R8 R4 K14 ["createNextOrder"]
       46 GETTABLEKS                       R9 R3 K15 ["createElement"]
       48 DUPTABLE                         R10 K19 [{["isExpanded"] = False, ["toggleIsExpanded"]}]
       49 DUPCLOSURE                       R11 K20 [PROTO_0]
       50 SETTABLEKS                       R11 R10 K18 ["toggleIsExpanded"]
       52 GETTABLEKS                       R11 R3 K21 ["createContext"]
       54 MOVE                             R12 R10
       55 CALL                             R11 1 1
       56 DUPCLOSURE                       R12 K22 [PROTO_4]
       57 CAPTURE                          VAL R3
       58 CAPTURE                          VAL R9
       59 CAPTURE                          VAL R7
       60 CAPTURE                          VAL R11
       61 DUPCLOSURE                       R13 K23 [PROTO_6]
       62 CAPTURE                          VAL R2
       63 CAPTURE                          VAL R3
       64 CAPTURE                          VAL R11
       65 CAPTURE                          VAL R9
       66 CAPTURE                          VAL R7
       67 CAPTURE                          VAL R1
       68 CAPTURE                          VAL R6
       69 DUPCLOSURE                       R14 K24 [PROTO_10]
       70 CAPTURE                          VAL R3
       71 CAPTURE                          VAL R11
       72 CAPTURE                          VAL R8
       73 CAPTURE                          VAL R9
       74 CAPTURE                          VAL R7
       75 DUPTABLE                         R15 K28 [{"Root", "Header", "Content"}]
       76 GETTABLEKS                       R16 R3 K29 ["memo"]
       78 MOVE                             R17 R12
       79 CALL                             R16 1 1
       80 SETTABLEKS                       R16 R15 K25 ["Root"]
       82 GETTABLEKS                       R16 R3 K29 ["memo"]
       84 MOVE                             R17 R13
       85 CALL                             R16 1 1
       86 SETTABLEKS                       R16 R15 K26 ["Header"]
       88 GETTABLEKS                       R16 R3 K29 ["memo"]
       90 MOVE                             R17 R14
       91 CALL                             R16 1 1
       92 SETTABLEKS                       R16 R15 K27 ["Content"]
       94 RETURN                           R15 1
