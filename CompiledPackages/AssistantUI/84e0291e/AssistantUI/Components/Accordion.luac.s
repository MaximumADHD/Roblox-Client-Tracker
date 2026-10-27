PROTO_0:
        0 GETIMPORT                        R0 K1 [error]
        2 LOADK                            R1 K2 ["AccordionRoot is required to toggle expansion state"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R1 R0 K0 ["isContentHidden"]
        3 DUPTABLE                         R1 K3 [{["rawTransformValues"] = True}]
        4 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantHideContent"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["current"]
        7 GETUPVAL                         R1 2
        8 JUMPIFNOTEQ                      R0 R1 ; [+2]
       10 RETURN                           R0 0
       11 GETUPVAL                         R0 1
       12 GETUPVAL                         R1 2
       13 SETTABLEKS                       R1 R0 K1 ["current"]
       15 GETUPVAL                         R0 3
       16 GETTABLEKS                       R0 R0 K2 ["editThisContent"]
       18 GETUPVAL                         R1 3
       19 GETTABLEKS                       R1 R1 K3 ["contentId"]
       21 NEWCLOSURE                       R2 P0
       22 CAPTURE                          UPVAL U2
       23 CALL                             R0 2 0
       24 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 NOT                              R1 R2
        2 SETTABLEKS                       R1 R0 K0 ["expanded"]
        4 DUPTABLE                         R1 K3 [{["rawTransformValues"] = True}]
        5 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["editThisContent"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["contentId"]
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          UPVAL U1
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_5:
        0 DUPTABLE                         R0 K3 [{"isExpanded", "isContentHidden", "toggleIsExpanded"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["isExpanded"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["isContentHidden"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["toggleIsExpanded"]
       10 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantHideContent"]
        3 JUMPIFNOT                        R1 ; [+6]
        4 GETTABLEKS                       R2 R0 K1 ["isContentHidden"]
        6 JUMPIFEQKB                       R2 TRUE ; [+2]
        8 LOADB                            R1 0 +1
        9 LOADB                            R1 1
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K0 ["FFlagAssistantHideContent"]
       13 JUMPIFNOT                        R3 ; [+9]
       14 NOT                              R2 R1
       15 JUMPIFNOT                        R2 ; [+10]
       16 GETTABLEKS                       R3 R0 K2 ["expanded"]
       18 JUMPIFEQKB                       R3 TRUE ; [+2]
       20 LOADB                            R2 0 +1
       21 LOADB                            R2 1
       22 JUMP                             ; [+3]
       23 GETTABLEKS                       R3 R0 K2 ["expanded"]
       25 ORK                              R2 R3 K3 [False]
       26 GETUPVAL                         R3 1
       27 GETTABLEKS                       R3 R3 K4 ["useRef"]
       29 LOADB                            R4 0
       30 CALL                             R3 1 1
       31 GETUPVAL                         R4 1
       32 GETTABLEKS                       R4 R4 K5 ["useEffect"]
       34 NEWCLOSURE                       R5 P0
       35 CAPTURE                          UPVAL U0
       36 CAPTURE                          VAL R3
       37 CAPTURE                          VAL R1
       38 CAPTURE                          VAL R0
       39 NEWTABLE                         R6 0 3
       41 GETTABLEKS                       R7 R0 K6 ["contentId"]
       43 GETTABLEKS                       R8 R0 K7 ["editThisContent"]
       45 MOVE                             R9 R1
       46 SETLIST                          R6 R7 3 [1]
       48 CALL                             R4 2 0
       49 GETUPVAL                         R4 1
       50 GETTABLEKS                       R4 R4 K8 ["useCallback"]
       52 NEWCLOSURE                       R5 P1
       53 CAPTURE                          VAL R0
       54 CAPTURE                          VAL R2
       55 NEWTABLE                         R6 0 3
       57 GETTABLEKS                       R7 R0 K6 ["contentId"]
       59 GETTABLEKS                       R8 R0 K7 ["editThisContent"]
       61 MOVE                             R9 R2
       62 SETLIST                          R6 R7 3 [1]
       64 CALL                             R4 2 1
       65 GETUPVAL                         R5 1
       66 GETTABLEKS                       R5 R5 K9 ["useMemo"]
       68 NEWCLOSURE                       R6 P2
       69 CAPTURE                          VAL R2
       70 CAPTURE                          VAL R1
       71 CAPTURE                          VAL R4
       72 NEWTABLE                         R7 0 3
       74 MOVE                             R8 R2
       75 MOVE                             R9 R1
       76 MOVE                             R10 R4
       77 SETLIST                          R7 R8 3 [1]
       79 CALL                             R5 2 1
       80 GETUPVAL                         R6 2
       81 GETUPVAL                         R7 3
       82 DUPTABLE                         R8 K12 [{"tag", "LayoutOrder"}]
       83 GETTABLEKS                       R10 R0 K10 ["tag"]
       85 ORK                              R9 R10 K13 ["col size-full-0 auto-xy gap-small"]
       86 SETTABLEKS                       R9 R8 K10 ["tag"]
       88 GETTABLEKS                       R9 R0 K11 ["LayoutOrder"]
       90 SETTABLEKS                       R9 R8 K11 ["LayoutOrder"]
       92 DUPTABLE                         R9 K15 [{"Context"}]
       93 GETUPVAL                         R10 2
       94 GETUPVAL                         R11 4
       95 GETTABLEKS                       R11 R11 K16 ["Provider"]
       97 DUPTABLE                         R12 K18 [{"value"}]
       98 SETTABLEKS                       R5 R12 K17 ["value"]
      100 GETTABLEKS                       R13 R0 K19 ["children"]
      102 CALL                             R10 3 1
      103 SETTABLEKS                       R10 R9 K14 ["Context"]
      105 CALL                             R6 3 -1
      106 RETURN                           R6 -1

PROTO_7:
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

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["useContext"]
        9 GETUPVAL                         R3 2
       10 CALL                             R2 1 1
       11 GETTABLEKS                       R3 R2 K3 ["isExpanded"]
       13 GETTABLEKS                       R4 R2 K4 ["isContentHidden"]
       15 GETTABLEKS                       R5 R2 K5 ["toggleIsExpanded"]
       17 GETUPVAL                         R7 3
       18 GETTABLEKS                       R7 R7 K6 ["FFlagAssistantHideContent"]
       20 JUMPIFNOT                        R7 ; [+4]
       21 GETTABLEKS                       R7 R0 K7 ["IsDisabled"]
       23 OR                               R6 R7 R4
       24 JUMP                             ; [+2]
       25 GETTABLEKS                       R6 R0 K7 ["IsDisabled"]
       27 GETTABLEKS                       R7 R0 K8 ["AutomaticHeight"]
       29 GETTABLEKS                       R9 R0 K10 ["IconSize"]
       31 ORK                              R8 R9 K9 ["small"]
       32 JUMPIFNOTEQKS                    R8 K9 ["small"] ; [+3]
       34 LOADN                            R9 12
       35 JUMP                             ; [+1]
       36 LOADN                            R9 24
       37 GETTABLEKS                       R11 R0 K12 ["VerticalAlignment"]
       39 ORK                              R10 R11 K11 ["center"]
       40 GETUPVAL                         R11 1
       41 GETTABLEKS                       R11 R11 K13 ["useMemo"]
       43 NEWCLOSURE                       R12 P0
       44 CAPTURE                          VAL R10
       45 CAPTURE                          VAL R7
       46 NEWTABLE                         R13 0 2
       48 MOVE                             R14 R7
       49 MOVE                             R15 R10
       50 SETLIST                          R13 R14 2 [1]
       52 CALL                             R11 2 1
       53 GETUPVAL                         R12 4
       54 GETUPVAL                         R13 5
       55 DUPTABLE                         R14 K18 [{"tag", "onActivated", "LayoutOrder", "testId"}]
       56 SETTABLEKS                       R11 R14 K14 ["tag"]
       58 JUMPIFNOT                        R6 ; [+2]
       59 LOADNIL                          R15
       60 JUMP                             ; [+1]
       61 MOVE                             R15 R5
       62 SETTABLEKS                       R15 R14 K15 ["onActivated"]
       64 GETTABLEKS                       R15 R0 K16 ["LayoutOrder"]
       66 SETTABLEKS                       R15 R14 K16 ["LayoutOrder"]
       68 GETTABLEKS                       R15 R0 K17 ["testId"]
       70 SETTABLEKS                       R15 R14 K17 ["testId"]
       72 GETUPVAL                         R15 6
       73 GETTABLEKS                       R15 R15 K19 ["assign"]
       75 GETTABLEKS                       R16 R0 K20 ["children"]
       77 JUMPIF                           R16 ; [+2]
       78 NEWTABLE                         R16 0 0
       80 DUPTABLE                         R17 K22 [{"ExpandIcon"}]
       81 GETUPVAL                         R19 3
       82 GETTABLEKS                       R19 R19 K6 ["FFlagAssistantHideContent"]
       84 JUMPIFNOT                        R19 ; [+13]
       85 JUMPIFNOT                        R4 ; [+12]
       86 GETUPVAL                         R18 4
       87 GETUPVAL                         R19 5
       88 DUPTABLE                         R20 K25 [{["Size"], ["LayoutOrder"] = -1}]
       89 GETIMPORT                        R21 K28 [UDim2.fromOffset]
       91 MOVE                             R22 R9
       92 MOVE                             R23 R9
       93 CALL                             R21 2 1
       94 SETTABLEKS                       R21 R20 K23 ["Size"]
       96 CALL                             R18 2 1
       97 JUMP                             ; [+32]
       98 GETUPVAL                         R18 4
       99 GETUPVAL                         R19 7
      100 DUPTABLE                         R20 K32 [{["name"], ["size"], ["style"], ["LayoutOrder"] = -1}]
      101 JUMPIFNOT                        R3 ; [+8]
      102 GETUPVAL                         R21 0
      103 GETTABLEKS                       R21 R21 K33 ["Enums"]
      105 GETTABLEKS                       R21 R21 K34 ["IconName"]
      107 GETTABLEKS                       R21 R21 K35 ["ChevronSmallDown"]
      109 JUMP                             ; [+7]
      110 GETUPVAL                         R21 0
      111 GETTABLEKS                       R21 R21 K33 ["Enums"]
      113 GETTABLEKS                       R21 R21 K34 ["IconName"]
      115 GETTABLEKS                       R21 R21 K36 ["ChevronSmallRight"]
      117 SETTABLEKS                       R21 R20 K29 ["name"]
      119 SETTABLEKS                       R9 R20 K30 ["size"]
      121 GETTABLEKS                       R21 R1 K37 ["Color"]
      123 GETTABLEKS                       R21 R21 K38 ["Content"]
      125 GETTABLEKS                       R21 R21 K39 ["Emphasis"]
      127 SETTABLEKS                       R21 R20 K31 ["style"]
      129 CALL                             R18 2 1
      130 SETTABLEKS                       R18 R17 K21 ["ExpandIcon"]
      132 CALL                             R15 2 -1
      133 CALL                             R12 -1 -1
      134 RETURN                           R12 -1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        3 GETTABLEKS                       R2 R2 K1 ["Y"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R2 R0 K1 ["AbsoluteSize"]
        8 GETTABLEKS                       R2 R2 K2 ["Y"]
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_11:
        0 GETIMPORT                        R1 K2 [UDim2.fromOffset]
        2 LOADN                            R2 12
        3 MOVE                             R3 R0
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_12:
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
       69 DUPCLOSURE                       R19 K20 [PROTO_11]
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
       16 GETTABLEKS                       R3 R0 K8 ["Flags"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K6 ["Parent"]
       23 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K6 ["Parent"]
       30 GETTABLEKS                       R5 R5 K10 ["React"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K6 ["Parent"]
       37 GETTABLEKS                       R6 R6 K11 ["ReactUtils"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K12 ["Types"]
       44 CALL                             R6 1 1
       45 GETTABLEKS                       R7 R3 K13 ["Icon"]
       47 GETTABLEKS                       R8 R3 K14 ["View"]
       49 GETTABLEKS                       R9 R5 K15 ["createNextOrder"]
       51 GETTABLEKS                       R10 R4 K16 ["createElement"]
       53 DUPTABLE                         R11 K21 [{["isExpanded"] = False, ["isContentHidden"] = False, ["toggleIsExpanded"]}]
       54 DUPCLOSURE                       R12 K22 [PROTO_0]
       55 SETTABLEKS                       R12 R11 K20 ["toggleIsExpanded"]
       57 GETTABLEKS                       R12 R4 K23 ["createContext"]
       59 MOVE                             R13 R11
       60 CALL                             R12 1 1
       61 DUPCLOSURE                       R13 K24 [PROTO_6]
       62 CAPTURE                          VAL R2
       63 CAPTURE                          VAL R4
       64 CAPTURE                          VAL R10
       65 CAPTURE                          VAL R8
       66 CAPTURE                          VAL R12
       67 DUPCLOSURE                       R14 K25 [PROTO_8]
       68 CAPTURE                          VAL R3
       69 CAPTURE                          VAL R4
       70 CAPTURE                          VAL R12
       71 CAPTURE                          VAL R2
       72 CAPTURE                          VAL R10
       73 CAPTURE                          VAL R8
       74 CAPTURE                          VAL R1
       75 CAPTURE                          VAL R7
       76 DUPCLOSURE                       R15 K26 [PROTO_12]
       77 CAPTURE                          VAL R4
       78 CAPTURE                          VAL R12
       79 CAPTURE                          VAL R9
       80 CAPTURE                          VAL R10
       81 CAPTURE                          VAL R8
       82 DUPTABLE                         R16 K30 [{"Root", "Header", "Content"}]
       83 GETTABLEKS                       R17 R4 K31 ["memo"]
       85 MOVE                             R18 R13
       86 CALL                             R17 1 1
       87 SETTABLEKS                       R17 R16 K27 ["Root"]
       89 GETTABLEKS                       R17 R4 K31 ["memo"]
       91 MOVE                             R18 R14
       92 CALL                             R17 1 1
       93 SETTABLEKS                       R17 R16 K28 ["Header"]
       95 GETTABLEKS                       R17 R4 K31 ["memo"]
       97 MOVE                             R18 R15
       98 CALL                             R17 1 1
       99 SETTABLEKS                       R17 R16 K29 ["Content"]
      101 RETURN                           R16 1
