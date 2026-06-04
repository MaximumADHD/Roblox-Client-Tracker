PROTO_0:
        0 GETIMPORT                        R0 K1 [error]
        2 LOADK                            R1 K2 ["AccordionRoot is required to toggle expansion state"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["expanded"]
        3 NOT                              R1 R2
        4 SETTABLEKS                       R1 R0 K0 ["expanded"]
        6 GETUPVAL                         R1 1
        7 CALL                             R1 0 1
        8 JUMPIFNOT                        R1 ; [+5]
        9 DUPTABLE                         R1 K2 [{"rawTransformValues"}]
       10 LOADB                            R2 1
       11 SETTABLEKS                       R2 R1 K1 ["rawTransformValues"]
       13 RETURN                           R1 1
       14 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["editThisContent"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["contentId"]
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          UPVAL U1
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R0 K2 [{"isExpanded", "toggleIsExpanded"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K3 ["expanded"]
        4 SETTABLEKS                       R1 R0 K0 ["isExpanded"]
        6 GETUPVAL                         R1 1
        7 SETTABLEKS                       R1 R0 K1 ["toggleIsExpanded"]
        9 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useCallback"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 NEWTABLE                         R3 0 3
        8 GETTABLEKS                       R4 R0 K1 ["contentId"]
       10 GETTABLEKS                       R5 R0 K2 ["editThisContent"]
       12 GETTABLEKS                       R6 R0 K3 ["expanded"]
       14 SETLIST                          R3 R4 3 [1]
       16 CALL                             R1 2 1
       17 GETUPVAL                         R2 0
       18 GETTABLEKS                       R2 R2 K4 ["useMemo"]
       20 NEWCLOSURE                       R3 P1
       21 CAPTURE                          VAL R0
       22 CAPTURE                          VAL R1
       23 NEWTABLE                         R4 0 2
       25 GETTABLEKS                       R5 R0 K3 ["expanded"]
       27 MOVE                             R6 R1
       28 SETLIST                          R4 R5 2 [1]
       30 CALL                             R2 2 1
       31 GETUPVAL                         R3 2
       32 GETUPVAL                         R4 3
       33 DUPTABLE                         R5 K7 [{"tag", "LayoutOrder"}]
       34 GETTABLEKS                       R7 R0 K5 ["tag"]
       36 ORK                              R6 R7 K8 ["col size-full-0 auto-xy gap-small"]
       37 SETTABLEKS                       R6 R5 K5 ["tag"]
       39 GETTABLEKS                       R6 R0 K6 ["LayoutOrder"]
       41 SETTABLEKS                       R6 R5 K6 ["LayoutOrder"]
       43 DUPTABLE                         R6 K10 [{"Context"}]
       44 GETUPVAL                         R7 2
       45 GETUPVAL                         R8 4
       46 GETTABLEKS                       R8 R8 K11 ["Provider"]
       48 DUPTABLE                         R9 K13 [{"value"}]
       49 SETTABLEKS                       R2 R9 K12 ["value"]
       51 GETTABLEKS                       R10 R0 K14 ["children"]
       53 CALL                             R7 3 1
       54 SETTABLEKS                       R7 R6 K9 ["Context"]
       56 CALL                             R3 3 -1
       57 RETURN                           R3 -1

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
       68 DUPTABLE                         R17 K24 [{"name", "size", "style", "LayoutOrder"}]
       69 JUMPIFNOT                        R3 ; [+8]
       70 GETUPVAL                         R18 0
       71 GETTABLEKS                       R18 R18 K25 ["Enums"]
       73 GETTABLEKS                       R18 R18 K26 ["IconName"]
       75 GETTABLEKS                       R18 R18 K27 ["ChevronSmallDown"]
       77 JUMP                             ; [+7]
       78 GETUPVAL                         R18 0
       79 GETTABLEKS                       R18 R18 K25 ["Enums"]
       81 GETTABLEKS                       R18 R18 K26 ["IconName"]
       83 GETTABLEKS                       R18 R18 K28 ["ChevronSmallRight"]
       85 SETTABLEKS                       R18 R17 K21 ["name"]
       87 JUMPIFNOTEQKS                    R6 K6 ["small"] ; [+3]
       89 LOADN                            R18 12
       90 JUMP                             ; [+1]
       91 LOADN                            R18 24
       92 SETTABLEKS                       R18 R17 K22 ["size"]
       94 GETTABLEKS                       R18 R1 K29 ["Color"]
       96 GETTABLEKS                       R18 R18 K30 ["Content"]
       98 GETTABLEKS                       R18 R18 K31 ["Emphasis"]
      100 SETTABLEKS                       R18 R17 K23 ["style"]
      102 LOADN                            R18 255
      103 SETTABLEKS                       R18 R17 K13 ["LayoutOrder"]
      105 CALL                             R15 2 1
      106 SETTABLEKS                       R15 R14 K19 ["ExpandIcon"]
      108 CALL                             R12 2 -1
      109 CALL                             R9 -1 -1
      110 RETURN                           R9 -1

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
       52 DUPTABLE                         R12 K12 [{"tag", "LayoutOrder", "Visible", "ref"}]
       53 LOADK                            R13 K13 ["row size-full-0 auto-y gap-xsmall"]
       54 SETTABLEKS                       R13 R12 K8 ["tag"]
       56 GETTABLEKS                       R13 R0 K9 ["LayoutOrder"]
       58 SETTABLEKS                       R13 R12 K9 ["LayoutOrder"]
       60 SETTABLEKS                       R8 R12 K10 ["Visible"]
       62 SETTABLEKS                       R5 R12 K11 ["ref"]
       64 DUPTABLE                         R13 K16 [{"VerticalBar", "Container"}]
       65 GETTABLEKS                       R15 R0 K17 ["disableVerticalBar"]
       67 NOT                              R14 R15
       68 JUMPIFNOT                        R14 ; [+55]
       69 GETUPVAL                         R14 3
       70 GETUPVAL                         R15 4
       71 DUPTABLE                         R16 K19 [{"Size", "LayoutOrder"}]
       72 DUPCLOSURE                       R19 K20 [PROTO_9]
       73 NAMECALL                         R17 R2 K21 ["map"]
       75 CALL                             R17 2 1
       76 SETTABLEKS                       R17 R16 K18 ["Size"]
       78 MOVE                             R17 R9
       79 CALL                             R17 0 1
       80 SETTABLEKS                       R17 R16 K9 ["LayoutOrder"]
       82 DUPTABLE                         R17 K23 [{"Line"}]
       83 GETUPVAL                         R18 3
       84 LOADK                            R19 K24 ["Frame"]
       85 DUPTABLE                         R20 K29 [{"AnchorPoint", "BackgroundColor3", "BackgroundTransparency", "Position", "Size"}]
       86 GETIMPORT                        R21 K32 [Vector2.new]
       88 LOADK                            R22 K33 [0.5]
       89 LOADK                            R23 K33 [0.5]
       90 CALL                             R21 2 1
       91 SETTABLEKS                       R21 R20 K25 ["AnchorPoint"]
       93 GETIMPORT                        R21 K35 [Color3.new]
       95 LOADN                            R22 1
       96 LOADN                            R23 1
       97 LOADN                            R24 1
       98 CALL                             R21 3 1
       99 SETTABLEKS                       R21 R20 K26 ["BackgroundColor3"]
      101 LOADK                            R21 K36 [0.92]
      102 SETTABLEKS                       R21 R20 K27 ["BackgroundTransparency"]
      104 GETIMPORT                        R21 K39 [UDim2.fromScale]
      106 LOADK                            R22 K33 [0.5]
      107 LOADK                            R23 K33 [0.5]
      108 CALL                             R21 2 1
      109 SETTABLEKS                       R21 R20 K28 ["Position"]
      111 GETIMPORT                        R21 K40 [UDim2.new]
      113 LOADN                            R22 0
      114 LOADN                            R23 1
      115 LOADN                            R24 1
      116 LOADN                            R25 0
      117 CALL                             R21 4 1
      118 SETTABLEKS                       R21 R20 K18 ["Size"]
      120 CALL                             R18 2 1
      121 SETTABLEKS                       R18 R17 K22 ["Line"]
      123 CALL                             R14 3 1
      124 SETTABLEKS                       R14 R13 K14 ["VerticalBar"]
      126 GETUPVAL                         R14 3
      127 GETUPVAL                         R15 4
      128 DUPTABLE                         R16 K42 [{"tag", "onAbsoluteSizeChanged", "LayoutOrder"}]
      129 GETTABLEKS                       R17 R0 K8 ["tag"]
      131 SETTABLEKS                       R17 R16 K8 ["tag"]
      133 SETTABLEKS                       R4 R16 K41 ["onAbsoluteSizeChanged"]
      135 MOVE                             R17 R9
      136 CALL                             R17 0 1
      137 SETTABLEKS                       R17 R16 K9 ["LayoutOrder"]
      139 GETTABLEKS                       R17 R0 K43 ["children"]
      141 CALL                             R14 3 1
      142 SETTABLEKS                       R14 R13 K15 ["Container"]
      144 CALL                             R10 3 -1
      145 RETURN                           R10 -1

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
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K12 ["Flags"]
       44 GETTABLEKS                       R7 R7 K13 ["FFlagAssistantMultipleChatPersistence"]
       46 CALL                             R6 1 1
       47 GETTABLEKS                       R7 R2 K14 ["Icon"]
       49 GETTABLEKS                       R8 R2 K15 ["View"]
       51 GETTABLEKS                       R9 R4 K16 ["createNextOrder"]
       53 GETTABLEKS                       R10 R3 K17 ["createElement"]
       55 DUPTABLE                         R11 K20 [{"isExpanded", "toggleIsExpanded"}]
       56 LOADB                            R12 0
       57 SETTABLEKS                       R12 R11 K18 ["isExpanded"]
       59 DUPCLOSURE                       R12 K21 [PROTO_0]
       60 SETTABLEKS                       R12 R11 K19 ["toggleIsExpanded"]
       62 GETTABLEKS                       R12 R3 K22 ["createContext"]
       64 MOVE                             R13 R11
       65 CALL                             R12 1 1
       66 DUPCLOSURE                       R13 K23 [PROTO_4]
       67 CAPTURE                          VAL R3
       68 CAPTURE                          VAL R6
       69 CAPTURE                          VAL R10
       70 CAPTURE                          VAL R8
       71 CAPTURE                          VAL R12
       72 DUPCLOSURE                       R14 K24 [PROTO_6]
       73 CAPTURE                          VAL R2
       74 CAPTURE                          VAL R3
       75 CAPTURE                          VAL R12
       76 CAPTURE                          VAL R10
       77 CAPTURE                          VAL R8
       78 CAPTURE                          VAL R1
       79 CAPTURE                          VAL R7
       80 DUPCLOSURE                       R15 K25 [PROTO_10]
       81 CAPTURE                          VAL R3
       82 CAPTURE                          VAL R12
       83 CAPTURE                          VAL R9
       84 CAPTURE                          VAL R10
       85 CAPTURE                          VAL R8
       86 DUPTABLE                         R16 K29 [{"Root", "Header", "Content"}]
       87 GETTABLEKS                       R17 R3 K30 ["memo"]
       89 MOVE                             R18 R13
       90 CALL                             R17 1 1
       91 SETTABLEKS                       R17 R16 K26 ["Root"]
       93 GETTABLEKS                       R17 R3 K30 ["memo"]
       95 MOVE                             R18 R14
       96 CALL                             R17 1 1
       97 SETTABLEKS                       R17 R16 K27 ["Header"]
       99 GETTABLEKS                       R17 R3 K30 ["memo"]
      101 MOVE                             R18 R15
      102 CALL                             R17 1 1
      103 SETTABLEKS                       R17 R16 K28 ["Content"]
      105 RETURN                           R16 1
