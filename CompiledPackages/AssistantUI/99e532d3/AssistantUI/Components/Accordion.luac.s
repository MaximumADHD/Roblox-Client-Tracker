PROTO_0:
        0 GETIMPORT                        R0 K1 [error]
        2 LOADK                            R1 K2 ["AccordionRoot is required to toggle expansion state"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["expanded"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["editThisContent"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R1 R2 K1 ["contentId"]
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          UPVAL U1
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useCallback"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 NEWTABLE                         R3 0 3
        8 GETTABLEKS                       R4 R0 K1 ["contentId"]
       10 GETTABLEKS                       R5 R0 K2 ["editThisContent"]
       12 GETTABLEKS                       R6 R0 K3 ["expanded"]
       14 SETLIST                          R3 R4 3 [1]
       16 CALL                             R1 2 1
       17 GETUPVAL                         R2 2
       18 GETUPVAL                         R3 3
       19 DUPTABLE                         R4 K6 [{"tag", "LayoutOrder"}]
       20 LOADK                            R5 K7 ["col size-full-0 auto-xy gap-small"]
       21 SETTABLEKS                       R5 R4 K4 ["tag"]
       23 GETTABLEKS                       R5 R0 K5 ["LayoutOrder"]
       25 SETTABLEKS                       R5 R4 K5 ["LayoutOrder"]
       27 DUPTABLE                         R5 K9 [{"Context"}]
       28 GETUPVAL                         R6 2
       29 GETUPVAL                         R8 4
       30 GETTABLEKS                       R7 R8 K10 ["Provider"]
       32 DUPTABLE                         R8 K12 [{"value"}]
       33 DUPTABLE                         R9 K15 [{"isExpanded", "toggleIsExpanded"}]
       34 GETTABLEKS                       R10 R0 K3 ["expanded"]
       36 SETTABLEKS                       R10 R9 K13 ["isExpanded"]
       38 SETTABLEKS                       R1 R9 K14 ["toggleIsExpanded"]
       40 SETTABLEKS                       R9 R8 K11 ["value"]
       42 GETTABLEKS                       R9 R0 K16 ["children"]
       44 CALL                             R6 3 1
       45 SETTABLEKS                       R6 R5 K8 ["Context"]
       47 CALL                             R2 3 -1
       48 RETURN                           R2 -1

PROTO_4:
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

PROTO_5:
        0 NEWTABLE                         R0 4 0
        2 GETUPVAL                         R2 0
        3 JUMPIFEQKS                       R2 K0 ["small"] ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 SETTABLEKS                       R1 R0 K1 ["size-300-300"]
        9 GETUPVAL                         R2 0
       10 JUMPIFEQKS                       R2 K2 ["medium"] ; [+2]
       12 LOADB                            R1 0 +1
       13 LOADB                            R1 1
       14 SETTABLEKS                       R1 R0 K3 ["size-600-600"]
       16 LOADB                            R1 1
       17 SETTABLEKS                       R1 R0 K4 ["align-x-center align-y-center"]
       19 NEWTABLE                         R1 4 0
       21 GETUPVAL                         R3 0
       22 JUMPIFEQKS                       R3 K0 ["small"] ; [+2]
       24 LOADB                            R2 0 +1
       25 LOADB                            R2 1
       26 SETTABLEKS                       R2 R1 K5 ["size-150-150"]
       28 GETUPVAL                         R3 0
       29 JUMPIFEQKS                       R3 K2 ["medium"] ; [+2]
       31 LOADB                            R2 0 +1
       32 LOADB                            R2 1
       33 SETTABLEKS                       R2 R1 K1 ["size-300-300"]
       35 LOADB                            R2 1
       36 SETTABLEKS                       R2 R1 K6 ["content-emphasis"]
       38 RETURN                           R0 2

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R2 R1 K1 ["isExpanded"]
        7 GETTABLEKS                       R3 R1 K2 ["toggleIsExpanded"]
        9 GETTABLEKS                       R4 R0 K3 ["AutomaticHeight"]
       11 GETTABLEKS                       R6 R0 K5 ["IconSize"]
       13 ORK                              R5 R6 K4 ["small"]
       14 GETTABLEKS                       R7 R0 K7 ["VerticalAlignment"]
       16 ORK                              R6 R7 K6 ["center"]
       17 GETUPVAL                         R8 0
       18 GETTABLEKS                       R7 R8 K8 ["useMemo"]
       20 NEWCLOSURE                       R8 P0
       21 CAPTURE                          VAL R6
       22 CAPTURE                          VAL R4
       23 NEWTABLE                         R9 0 2
       25 MOVE                             R10 R4
       26 MOVE                             R11 R6
       27 SETLIST                          R9 R10 2 [1]
       29 CALL                             R7 2 1
       30 GETUPVAL                         R9 0
       31 GETTABLEKS                       R8 R9 K8 ["useMemo"]
       33 NEWCLOSURE                       R9 P1
       34 CAPTURE                          VAL R5
       35 NEWTABLE                         R10 0 1
       37 MOVE                             R11 R5
       38 SETLIST                          R10 R11 1 [1]
       40 CALL                             R8 2 2
       41 GETUPVAL                         R10 2
       42 GETUPVAL                         R11 3
       43 DUPTABLE                         R12 K13 [{"tag", "onActivated", "LayoutOrder", "testId"}]
       44 SETTABLEKS                       R7 R12 K9 ["tag"]
       46 GETTABLEKS                       R14 R0 K14 ["IsDisabled"]
       48 JUMPIFNOT                        R14 ; [+2]
       49 LOADNIL                          R13
       50 JUMP                             ; [+1]
       51 MOVE                             R13 R3
       52 SETTABLEKS                       R13 R12 K10 ["onActivated"]
       54 GETTABLEKS                       R13 R0 K11 ["LayoutOrder"]
       56 SETTABLEKS                       R13 R12 K11 ["LayoutOrder"]
       58 GETTABLEKS                       R13 R0 K12 ["testId"]
       60 SETTABLEKS                       R13 R12 K12 ["testId"]
       62 GETUPVAL                         R15 4
       63 GETTABLEKS                       R14 R15 K15 ["Dictionary"]
       65 GETTABLEKS                       R13 R14 K16 ["join"]
       67 DUPTABLE                         R14 K18 [{"ExpandIcon"}]
       68 GETUPVAL                         R15 2
       69 GETUPVAL                         R16 5
       70 DUPTABLE                         R17 K21 [{"icon", "tag", "iconTag", "LayoutOrder"}]
       71 JUMPIFNOT                        R2 ; [+2]
       72 LOADK                            R18 K22 ["icons/actions/truncationExpand_small"]
       73 JUMP                             ; [+1]
       74 LOADK                            R18 K23 ["icons/actions/cycleRight_small"]
       75 SETTABLEKS                       R18 R17 K19 ["icon"]
       77 SETTABLEKS                       R8 R17 K9 ["tag"]
       79 SETTABLEKS                       R9 R17 K20 ["iconTag"]
       81 LOADN                            R18 255
       82 SETTABLEKS                       R18 R17 K11 ["LayoutOrder"]
       84 CALL                             R15 2 1
       85 SETTABLEKS                       R15 R14 K17 ["ExpandIcon"]
       87 GETTABLEKS                       R15 R0 K24 ["children"]
       89 CALL                             R13 2 -1
       90 CALL                             R10 -1 -1
       91 RETURN                           R10 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["AbsoluteSize"]
        3 GETTABLEKS                       R2 R3 K1 ["Y"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R3 R0 K1 ["AbsoluteSize"]
        8 GETTABLEKS                       R2 R3 K2 ["Y"]
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_9:
        0 GETIMPORT                        R1 K2 [UDim2.fromOffset]
        2 LOADN                            R2 12
        3 MOVE                             R3 R0
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K1 ["useBinding"]
        8 LOADN                            R3 0
        9 CALL                             R2 1 2
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R4 R5 K2 ["useCallback"]
       13 NEWCLOSURE                       R5 P0
       14 CAPTURE                          VAL R3
       15 NEWTABLE                         R6 0 1
       17 MOVE                             R7 R3
       18 SETLIST                          R6 R7 1 [1]
       20 CALL                             R4 2 1
       21 GETUPVAL                         R6 0
       22 GETTABLEKS                       R5 R6 K3 ["useRef"]
       24 LOADNIL                          R6
       25 CALL                             R5 1 1
       26 GETUPVAL                         R7 0
       27 GETTABLEKS                       R6 R7 K4 ["useEffect"]
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
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["Cryo"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Components"]
       18 GETTABLEKS                       R3 R4 K9 ["CustomIconButton"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R5 K10 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K6 ["Parent"]
       32 GETTABLEKS                       R5 R6 K11 ["React"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R7 R0 K6 ["Parent"]
       39 GETTABLEKS                       R6 R7 K12 ["ReactUtils"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K13 ["Types"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R9 R0 K14 ["Flags"]
       51 GETTABLEKS                       R8 R9 K15 ["FFlagAssistantPersistConversations"]
       53 CALL                             R7 1 1
       54 GETTABLEKS                       R8 R3 K16 ["View"]
       56 GETTABLEKS                       R9 R5 K17 ["createNextOrder"]
       58 GETTABLEKS                       R10 R4 K18 ["createElement"]
       60 GETTABLEKS                       R11 R4 K19 ["createContext"]
       62 DUPTABLE                         R12 K22 [{"isExpanded", "toggleIsExpanded"}]
       63 LOADB                            R13 0
       64 SETTABLEKS                       R13 R12 K20 ["isExpanded"]
       66 DUPCLOSURE                       R13 K23 [PROTO_0]
       67 SETTABLEKS                       R13 R12 K21 ["toggleIsExpanded"]
       69 CALL                             R11 1 1
       70 DUPCLOSURE                       R12 K24 [PROTO_3]
       71 CAPTURE                          VAL R4
       72 CAPTURE                          VAL R7
       73 CAPTURE                          VAL R10
       74 CAPTURE                          VAL R8
       75 CAPTURE                          VAL R11
       76 DUPCLOSURE                       R13 K25 [PROTO_6]
       77 CAPTURE                          VAL R4
       78 CAPTURE                          VAL R11
       79 CAPTURE                          VAL R10
       80 CAPTURE                          VAL R8
       81 CAPTURE                          VAL R1
       82 CAPTURE                          VAL R2
       83 DUPCLOSURE                       R14 K26 [PROTO_10]
       84 CAPTURE                          VAL R4
       85 CAPTURE                          VAL R11
       86 CAPTURE                          VAL R9
       87 CAPTURE                          VAL R10
       88 CAPTURE                          VAL R8
       89 DUPTABLE                         R15 K30 [{"Root", "Header", "Content"}]
       90 GETTABLEKS                       R16 R4 K31 ["memo"]
       92 MOVE                             R17 R12
       93 CALL                             R16 1 1
       94 SETTABLEKS                       R16 R15 K27 ["Root"]
       96 GETTABLEKS                       R16 R4 K31 ["memo"]
       98 MOVE                             R17 R13
       99 CALL                             R16 1 1
      100 SETTABLEKS                       R16 R15 K28 ["Header"]
      102 GETTABLEKS                       R16 R4 K31 ["memo"]
      104 MOVE                             R17 R14
      105 CALL                             R16 1 1
      106 SETTABLEKS                       R16 R15 K29 ["Content"]
      108 RETURN                           R15 1
