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
       11 LOADN                            R2 24
       12 LOADN                            R3 24
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
       42 DUPTABLE                         R16 K12 [{"title", "text", "side"}]
       43 LOADK                            R17 K13 [""]
       44 SETTABLEKS                       R17 R16 K9 ["title"]
       46 GETTABLEKS                       R17 R12 K7 ["Tooltip"]
       48 SETTABLEKS                       R17 R16 K10 ["text"]
       50 GETUPVAL                         R17 0
       51 GETTABLEKS                       R17 R17 K14 ["Enums"]
       53 GETTABLEKS                       R17 R17 K15 ["PopoverSide"]
       55 GETTABLEKS                       R17 R17 K16 ["Bottom"]
       57 SETTABLEKS                       R17 R16 K11 ["side"]
       59 GETUPVAL                         R17 1
       60 GETTABLEKS                       R17 R17 K8 ["createElement"]
       62 GETUPVAL                         R18 0
       63 GETTABLEKS                       R18 R18 K17 ["IconButton"]
       65 DUPTABLE                         R19 K23 [{"icon", "onActivated", "size", "testId", "LayoutOrder"}]
       66 GETTABLEKS                       R20 R12 K24 ["Icon"]
       68 SETTABLEKS                       R20 R19 K18 ["icon"]
       70 GETTABLEKS                       R20 R12 K25 ["OnActivated"]
       72 SETTABLEKS                       R20 R19 K19 ["onActivated"]
       74 GETUPVAL                         R20 0
       75 GETTABLEKS                       R20 R20 K14 ["Enums"]
       77 GETTABLEKS                       R20 R20 K26 ["ButtonSize"]
       79 GETTABLEKS                       R20 R20 K27 ["Small"]
       81 SETTABLEKS                       R20 R19 K20 ["size"]
       83 LOADK                            R21 K28 ["ContextToolbarButton-%*"]
       84 GETTABLEKS                       R23 R12 K7 ["Tooltip"]
       86 LOADK                            R25 K29 ["%s"]
       87 LOADK                            R26 K30 ["_"]
       88 NAMECALL                         R23 R23 K31 ["gsub"]
       90 CALL                             R23 3 1
       91 NAMECALL                         R21 R21 K32 ["format"]
       93 CALL                             R21 2 1
       94 MOVE                             R20 R21
       95 SETTABLEKS                       R20 R19 K21 ["testId"]
       97 MOVE                             R20 R5
       98 CALL                             R20 0 1
       99 SETTABLEKS                       R20 R19 K22 ["LayoutOrder"]
      101 NEWTABLE                         R20 0 0
      103 CALL                             R17 3 -1
      104 CALL                             R14 -1 1
      105 SETTABLE                         R14 R7 R13
      106 FORGLOOP                         R8 2 ; [-75]
      108 GETUPVAL                         R8 1
      109 GETTABLEKS                       R8 R8 K8 ["createElement"]
      111 LOADK                            R9 K33 ["Folder"]
      112 NEWTABLE                         R10 0 0
      114 DUPTABLE                         R11 K36 [{"Anchor", "Portal"}]
      115 GETUPVAL                         R12 1
      116 GETTABLEKS                       R12 R12 K8 ["createElement"]
      118 GETUPVAL                         R13 0
      119 GETTABLEKS                       R13 R13 K37 ["View"]
      121 DUPTABLE                         R14 K39 [{"tag"}]
      122 LOADK                            R15 K40 ["position-top-center anchor-bottom-center padding-y-small"]
      123 SETTABLEKS                       R15 R14 K38 ["tag"]
      125 GETUPVAL                         R15 1
      126 GETTABLEKS                       R15 R15 K8 ["createElement"]
      128 GETUPVAL                         R16 0
      129 GETTABLEKS                       R16 R16 K37 ["View"]
      131 DUPTABLE                         R17 K42 [{"onAbsolutePositionChanged"}]
      132 SETTABLEKS                       R4 R17 K41 ["onAbsolutePositionChanged"]
      134 CALL                             R15 2 -1
      135 CALL                             R12 -1 1
      136 SETTABLEKS                       R12 R11 K34 ["Anchor"]
      138 MOVE                             R12 R1
      139 JUMPIFNOT                        R12 ; [+34]
      140 GETUPVAL                         R12 3
      141 GETTABLEKS                       R12 R12 K43 ["createPortal"]
      143 GETUPVAL                         R13 1
      144 GETTABLEKS                       R13 R13 K8 ["createElement"]
      146 GETUPVAL                         R14 0
      147 GETTABLEKS                       R14 R14 K37 ["View"]
      149 DUPTABLE                         R15 K45 [{"Position"}]
      150 DUPCLOSURE                       R18 K46 [PROTO_1]
      151 NAMECALL                         R16 R2 K47 ["map"]
      153 CALL                             R16 2 1
      154 SETTABLEKS                       R16 R15 K44 ["Position"]
      156 DUPTABLE                         R16 K49 [{"Toolbar"}]
      157 GETUPVAL                         R17 1
      158 GETTABLEKS                       R17 R17 K8 ["createElement"]
      160 GETUPVAL                         R18 0
      161 GETTABLEKS                       R18 R18 K37 ["View"]
      163 DUPTABLE                         R19 K39 [{"tag"}]
      164 LOADK                            R20 K50 ["padding-xsmall stroke-standard stroke-default position-top-center size-0-0 auto-xy anchor-bottom-center row align-x-center gap-xsmall bg-surface-100 radius-medium"]
      165 SETTABLEKS                       R20 R19 K38 ["tag"]
      167 MOVE                             R20 R7
      168 CALL                             R17 3 1
      169 SETTABLEKS                       R17 R16 K48 ["Toolbar"]
      171 CALL                             R13 3 1
      172 MOVE                             R14 R1
      173 CALL                             R12 2 1
      174 SETTABLEKS                       R12 R11 K35 ["Portal"]
      176 CALL                             R8 3 -1
      177 RETURN                           R8 -1

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
       35 DUPCLOSURE                       R5 K11 [PROTO_2]
       36 CAPTURE                          VAL R1
       37 CAPTURE                          VAL R2
       38 CAPTURE                          VAL R4
       39 CAPTURE                          VAL R3
       40 RETURN                           R5 1
