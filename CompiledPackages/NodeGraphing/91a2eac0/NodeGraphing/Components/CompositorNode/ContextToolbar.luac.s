PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsolutePosition"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 JUMPIFNOT                        R0 ; [+8]
        1 GETIMPORT                        R1 K2 [UDim2.fromOffset]
        3 GETTABLEKS                       R2 R0 K3 ["X"]
        5 GETTABLEKS                       R3 R0 K4 ["Y"]
        7 CALL                             R1 2 1
        8 RETURN                           R1 1
        9 GETIMPORT                        R1 K6 [UDim2.fromScale]
       11 LOADN                            R2 -1000
       12 LOADN                            R3 -1000
       13 CALL                             R1 2 1
       14 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useOverlay"]
        5 CALL                             R1 0 1
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["useBinding"]
        9 LOADNIL                          R3
       10 CALL                             R2 1 2
       11 GETUPVAL                         R4 2
       12 GETTABLEKS                       R4 R4 K3 ["useEventCallback"]
       14 NEWCLOSURE                       R5 P0
       15 CAPTURE                          VAL R3
       16 CALL                             R4 1 1
       17 GETUPVAL                         R5 2
       18 GETTABLEKS                       R5 R5 K4 ["createNextOrder"]
       20 CALL                             R5 0 1
       21 GETUPVAL                         R6 2
       22 GETTABLEKS                       R6 R6 K5 ["createUniqueKey"]
       24 CALL                             R6 0 1
       25 NEWTABLE                         R7 0 0
       27 GETTABLEKS                       R8 R0 K6 ["Buttons"]
       29 LOADNIL                          R9
       30 LOADNIL                          R10
       31 FORGPREP                         R8
       32 MOVE                             R13 R6
       33 GETTABLEKS                       R14 R12 K7 ["Tooltip"]
       35 CALL                             R13 1 1
       36 GETUPVAL                         R14 1
       37 GETTABLEKS                       R14 R14 K8 ["createElement"]
       39 GETUPVAL                         R15 0
       40 GETTABLEKS                       R15 R15 K7 ["Tooltip"]
       42 DUPTABLE                         R16 K13 [{["title"] = "", ["text"], ["side"]}]
       43 GETTABLEKS                       R17 R12 K7 ["Tooltip"]
       45 SETTABLEKS                       R17 R16 K11 ["text"]
       47 GETUPVAL                         R17 0
       48 GETTABLEKS                       R17 R17 K14 ["Enums"]
       50 GETTABLEKS                       R17 R17 K15 ["PopoverSide"]
       52 GETTABLEKS                       R17 R17 K16 ["Bottom"]
       54 SETTABLEKS                       R17 R16 K12 ["side"]
       56 GETUPVAL                         R17 1
       57 GETTABLEKS                       R17 R17 K8 ["createElement"]
       59 GETUPVAL                         R18 0
       60 GETTABLEKS                       R18 R18 K17 ["IconButton"]
       62 DUPTABLE                         R19 K23 [{"icon", "onActivated", "size", "testId", "LayoutOrder"}]
       63 GETTABLEKS                       R20 R12 K24 ["Icon"]
       65 SETTABLEKS                       R20 R19 K18 ["icon"]
       67 GETTABLEKS                       R20 R12 K25 ["OnActivated"]
       69 SETTABLEKS                       R20 R19 K19 ["onActivated"]
       71 GETUPVAL                         R21 3
       72 CALL                             R21 0 1
       73 JUMPIFNOT                        R21 ; [+8]
       74 GETUPVAL                         R20 0
       75 GETTABLEKS                       R20 R20 K14 ["Enums"]
       77 GETTABLEKS                       R20 R20 K26 ["ButtonSize"]
       79 GETTABLEKS                       R20 R20 K27 ["XSmall"]
       81 JUMP                             ; [+7]
       82 GETUPVAL                         R20 0
       83 GETTABLEKS                       R20 R20 K14 ["Enums"]
       85 GETTABLEKS                       R20 R20 K26 ["ButtonSize"]
       87 GETTABLEKS                       R20 R20 K28 ["Small"]
       89 SETTABLEKS                       R20 R19 K20 ["size"]
       91 LOADK                            R21 K29 ["ContextToolbarButton-%*"]
       92 GETTABLEKS                       R23 R12 K7 ["Tooltip"]
       94 LOADK                            R25 K30 ["%s"]
       95 LOADK                            R26 K31 ["_"]
       96 NAMECALL                         R23 R23 K32 ["gsub"]
       98 CALL                             R23 3 1
       99 NAMECALL                         R21 R21 K33 ["format"]
      101 CALL                             R21 2 1
      102 MOVE                             R20 R21
      103 SETTABLEKS                       R20 R19 K21 ["testId"]
      105 MOVE                             R20 R5
      106 CALL                             R20 0 1
      107 SETTABLEKS                       R20 R19 K22 ["LayoutOrder"]
      109 NEWTABLE                         R20 0 0
      111 CALL                             R17 3 -1
      112 CALL                             R14 -1 1
      113 SETTABLE                         R14 R7 R13
      114 FORGLOOP                         R8 2 ; [-83]
      116 GETUPVAL                         R8 1
      117 GETTABLEKS                       R8 R8 K8 ["createElement"]
      119 LOADK                            R9 K34 ["Folder"]
      120 NEWTABLE                         R10 0 0
      122 DUPTABLE                         R11 K37 [{"Anchor", "Portal"}]
      123 GETUPVAL                         R12 1
      124 GETTABLEKS                       R12 R12 K8 ["createElement"]
      126 GETUPVAL                         R13 0
      127 GETTABLEKS                       R13 R13 K38 ["View"]
      129 DUPTABLE                         R14 K41 [{["tag"] = "position-top-center anchor-bottom-center padding-y-small"}]
      130 GETUPVAL                         R15 1
      131 GETTABLEKS                       R15 R15 K8 ["createElement"]
      133 GETUPVAL                         R16 0
      134 GETTABLEKS                       R16 R16 K38 ["View"]
      136 DUPTABLE                         R17 K43 [{"onAbsolutePositionChanged"}]
      137 SETTABLEKS                       R4 R17 K42 ["onAbsolutePositionChanged"]
      139 CALL                             R15 2 -1
      140 CALL                             R12 -1 1
      141 SETTABLEKS                       R12 R11 K35 ["Anchor"]
      143 MOVE                             R12 R1
      144 JUMPIFNOT                        R12 ; [+31]
      145 GETUPVAL                         R12 4
      146 GETTABLEKS                       R12 R12 K44 ["createPortal"]
      148 GETUPVAL                         R13 1
      149 GETTABLEKS                       R13 R13 K8 ["createElement"]
      151 GETUPVAL                         R14 0
      152 GETTABLEKS                       R14 R14 K38 ["View"]
      154 DUPTABLE                         R15 K46 [{"Position"}]
      155 DUPCLOSURE                       R18 K47 [PROTO_1]
      156 NAMECALL                         R16 R2 K48 ["map"]
      158 CALL                             R16 2 1
      159 SETTABLEKS                       R16 R15 K45 ["Position"]
      161 DUPTABLE                         R16 K50 [{"Toolbar"}]
      162 GETUPVAL                         R17 1
      163 GETTABLEKS                       R17 R17 K8 ["createElement"]
      165 GETUPVAL                         R18 0
      166 GETTABLEKS                       R18 R18 K38 ["View"]
      168 DUPTABLE                         R19 K52 [{["tag"] = "row align-x-center gap-xsmall position-top-center anchor-bottom-center size-0-0 auto-xy padding-xsmall stroke-standard stroke-default radius-medium bg-surface-100"}]
      169 MOVE                             R20 R7
      170 CALL                             R17 3 1
      171 SETTABLEKS                       R17 R16 K49 ["Toolbar"]
      173 CALL                             R13 3 1
      174 MOVE                             R14 R1
      175 CALL                             R12 2 1
      176 SETTABLEKS                       R12 R11 K36 ["Portal"]
      178 CALL                             R8 3 -1
      179 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K9 ["ReactRoblox"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Parent"]
       32 GETTABLEKS                       R5 R5 K10 ["ReactUtils"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K11 ["Flags"]
       39 GETTABLEKS                       R6 R6 K12 ["getFFlagAnimGraphUI_SpotlightNodes"]
       41 CALL                             R5 1 1
       42 DUPCLOSURE                       R6 K13 [PROTO_2]
       43 CAPTURE                          VAL R1
       44 CAPTURE                          VAL R2
       45 CAPTURE                          VAL R4
       46 CAPTURE                          VAL R5
       47 CAPTURE                          VAL R3
       48 RETURN                           R6 1
