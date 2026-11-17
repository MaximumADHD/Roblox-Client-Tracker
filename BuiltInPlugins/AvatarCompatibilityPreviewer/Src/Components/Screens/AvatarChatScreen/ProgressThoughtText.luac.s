PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["createElement"]
        3 GETUPVAL                         R4 1
        4 DUPTABLE                         R5 K6 [{["LayoutOrder"], ["Text"], ["tag"] = "size-full-0 auto-y padding-left-medium text-body-small text-wrap text-align-x-left text-truncate-none content-muted", ["onAbsoluteSizeChanged"]}]
        5 SETTABLEKS                       R1 R5 K1 ["LayoutOrder"]
        7 SETTABLEKS                       R0 R5 K2 ["Text"]
        9 SETTABLEKS                       R2 R5 K5 ["onAbsoluteSizeChanged"]
       11 CALL                             R3 2 -1
       12 RETURN                           R3 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["reducedMotion"]
        3 JUMPIFNOT                        R0 ; [+10]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R1 R1 K1 ["text"]
        8 SETTABLEKS                       R1 R0 K2 ["current"]
       10 GETUPVAL                         R0 3
       11 LOADNIL                          R1
       12 CALL                             R0 1 0
       13 RETURN                           R0 0
       14 GETUPVAL                         R0 1
       15 GETTABLEKS                       R0 R0 K2 ["current"]
       17 GETUPVAL                         R1 1
       18 GETUPVAL                         R2 2
       19 GETTABLEKS                       R2 R2 K1 ["text"]
       21 SETTABLEKS                       R2 R1 K2 ["current"]
       23 GETUPVAL                         R1 2
       24 GETTABLEKS                       R1 R1 K1 ["text"]
       26 JUMPIFNOTEQ                      R0 R1 ; [+2]
       28 RETURN                           R0 0
       29 GETUPVAL                         R1 4
       30 LOADN                            R2 0
       31 CALL                             R1 1 0
       32 GETUPVAL                         R1 3
       33 DUPTABLE                         R2 K5 [{"outgoingText", "fromHeight"}]
       34 SETTABLEKS                       R0 R2 K3 ["outgoingText"]
       36 GETUPVAL                         R3 5
       37 NAMECALL                         R3 R3 K6 ["getValue"]
       39 CALL                             R3 1 1
       40 SETTABLEKS                       R3 R2 K4 ["fromHeight"]
       42 CALL                             R1 1 0
       43 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 2
        5 NAMECALL                         R0 R0 K0 ["destroy"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K0 ["createSingleMotor"]
        7 LOADN                            R1 0
        8 CALL                             R0 1 1
        9 GETUPVAL                         R3 2
       10 NAMECALL                         R1 R0 K1 ["onStep"]
       12 CALL                             R1 2 1
       13 NEWCLOSURE                       R4 P0
       14 CAPTURE                          UPVAL U3
       15 NAMECALL                         R2 R0 K2 ["onComplete"]
       17 CALL                             R2 2 1
       18 GETUPVAL                         R5 1
       19 GETTABLEKS                       R5 R5 K3 ["ease"]
       21 LOADN                            R6 1
       22 DUPTABLE                         R7 K7 [{["duration"] = 0.45, ["easingStyle"]}]
       23 GETIMPORT                        R8 K11 [Enum.EasingStyle.Sine]
       25 SETTABLEKS                       R8 R7 K6 ["easingStyle"]
       27 CALL                             R5 2 -1
       28 NAMECALL                         R3 R0 K12 ["setGoal"]
       30 CALL                             R3 -1 0
       31 NEWCLOSURE                       R3 P1
       32 CAPTURE                          VAL R1
       33 CAPTURE                          VAL R2
       34 CAPTURE                          VAL R0
       35 RETURN                           R3 1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["AbsoluteSize"]
        2 GETTABLEKS                       R1 R1 K1 ["Y"]
        4 LOADN                            R2 0
        5 JUMPIFNOTLT                      R2 R1 ; [+4]
        7 GETUPVAL                         R2 0
        8 MOVE                             R3 R1
        9 CALL                             R2 1 0
       10 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["fromHeight"]
        3 GETIMPORT                        R2 K3 [UDim2.new]
        5 LOADN                            R3 1
        6 LOADN                            R4 0
        7 LOADN                            R5 0
        8 GETTABLEN                        R9 R0 2
        9 SUB                              R8 R9 R1
       10 GETTABLEN                        R9 R0 1
       11 MUL                              R7 R8 R9
       12 ADD                              R6 R1 R7
       13 CALL                             R2 4 -1
       14 RETURN                           R2 -1

PROTO_7:
        0 SUBRK                            R1 K0 [1] R0
        1 RETURN                           R1 1

PROTO_8:
        0 GETIMPORT                        R1 K2 [UDim2.fromOffset]
        2 LOADN                            R2 0
        3 SUBRK                            R4 K4 [1] R0
        4 MULK                             R3 R4 K3 [16]
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_9:
        0 GETIMPORT                        R1 K2 [UDim2.fromOffset]
        2 LOADN                            R2 0
        3 MULK                             R3 R0 K3 [-16]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["useBinding"]
        5 LOADN                            R3 1
        6 CALL                             R2 1 2
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K0 ["useBinding"]
       10 LOADN                            R5 0
       11 CALL                             R4 1 2
       12 GETUPVAL                         R6 1
       13 GETTABLEKS                       R6 R6 K1 ["useState"]
       15 LOADNIL                          R7
       16 CALL                             R6 1 2
       17 GETUPVAL                         R8 1
       18 GETTABLEKS                       R8 R8 K2 ["useRef"]
       20 GETTABLEKS                       R9 R0 K3 ["text"]
       22 CALL                             R8 1 1
       23 GETUPVAL                         R9 1
       24 GETTABLEKS                       R9 R9 K4 ["useLayoutEffect"]
       26 NEWCLOSURE                       R10 P0
       27 CAPTURE                          VAL R1
       28 CAPTURE                          VAL R8
       29 CAPTURE                          VAL R0
       30 CAPTURE                          VAL R7
       31 CAPTURE                          VAL R3
       32 CAPTURE                          VAL R4
       33 NEWTABLE                         R11 0 2
       35 GETTABLEKS                       R12 R0 K3 ["text"]
       37 GETTABLEKS                       R13 R1 K5 ["reducedMotion"]
       39 SETLIST                          R11 R12 2 [1]
       41 CALL                             R9 2 0
       42 GETUPVAL                         R9 1
       43 GETTABLEKS                       R9 R9 K6 ["useEffect"]
       45 NEWCLOSURE                       R10 P1
       46 CAPTURE                          VAL R6
       47 CAPTURE                          UPVAL U2
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R7
       50 NEWTABLE                         R11 0 1
       52 MOVE                             R12 R6
       53 SETLIST                          R11 R12 1 [1]
       55 CALL                             R9 2 0
       56 NEWCLOSURE                       R9 P2
       57 CAPTURE                          VAL R5
       58 JUMPIFNOTEQKNIL                  R6 ; [+9]
       60 GETUPVAL                         R10 3
       61 GETTABLEKS                       R11 R0 K3 ["text"]
       63 GETTABLEKS                       R12 R0 K7 ["LayoutOrder"]
       65 MOVE                             R13 R9
       66 CALL                             R10 3 -1
       67 RETURN                           R10 -1
       68 GETUPVAL                         R10 1
       69 GETTABLEKS                       R10 R10 K8 ["createElement"]
       71 GETUPVAL                         R11 4
       72 DUPTABLE                         R12 K12 [{["LayoutOrder"], ["tag"] = "clip", ["Size"]}]
       73 GETTABLEKS                       R13 R0 K7 ["LayoutOrder"]
       75 SETTABLEKS                       R13 R12 K7 ["LayoutOrder"]
       77 GETUPVAL                         R13 1
       78 GETTABLEKS                       R13 R13 K13 ["joinBindings"]
       80 NEWTABLE                         R14 0 2
       82 MOVE                             R15 R2
       83 MOVE                             R16 R4
       84 SETLIST                          R14 R15 2 [1]
       86 CALL                             R13 1 1
       87 NEWCLOSURE                       R15 P3
       88 CAPTURE                          VAL R6
       89 NAMECALL                         R13 R13 K14 ["map"]
       91 CALL                             R13 2 1
       92 SETTABLEKS                       R13 R12 K11 ["Size"]
       94 DUPTABLE                         R13 K17 [{"Incoming", "Outgoing"}]
       95 GETUPVAL                         R14 1
       96 GETTABLEKS                       R14 R14 K8 ["createElement"]
       98 GETUPVAL                         R15 4
       99 DUPTABLE                         R16 K23 [{["GroupTransparency"], ["Position"], ["ZIndex"] = 2, ["tag"] = "size-full-0 auto-y"}]
      100 DUPCLOSURE                       R19 K24 [PROTO_7]
      101 NAMECALL                         R17 R2 K14 ["map"]
      103 CALL                             R17 2 1
      104 SETTABLEKS                       R17 R16 K18 ["GroupTransparency"]
      106 DUPCLOSURE                       R19 K25 [PROTO_8]
      107 NAMECALL                         R17 R2 K14 ["map"]
      109 CALL                             R17 2 1
      110 SETTABLEKS                       R17 R16 K19 ["Position"]
      112 DUPTABLE                         R17 K27 [{"Text"}]
      113 GETTABLEKS                       R19 R0 K3 ["text"]
      115 GETUPVAL                         R20 1
      116 GETTABLEKS                       R20 R20 K8 ["createElement"]
      118 GETUPVAL                         R21 5
      119 DUPTABLE                         R22 K31 [{["LayoutOrder"] = , ["Text"], ["tag"] = "size-full-0 auto-y padding-left-medium text-body-small text-wrap text-align-x-left text-truncate-none content-muted", ["onAbsoluteSizeChanged"]}]
      120 SETTABLEKS                       R19 R22 K26 ["Text"]
      122 SETTABLEKS                       R9 R22 K30 ["onAbsoluteSizeChanged"]
      124 CALL                             R20 2 1
      125 MOVE                             R18 R20
      126 SETTABLEKS                       R18 R17 K26 ["Text"]
      128 CALL                             R14 3 1
      129 SETTABLEKS                       R14 R13 K15 ["Incoming"]
      131 GETUPVAL                         R14 1
      132 GETTABLEKS                       R14 R14 K8 ["createElement"]
      134 GETUPVAL                         R15 4
      135 DUPTABLE                         R16 K33 [{["GroupTransparency"], ["Position"], ["ZIndex"] = 1, ["tag"] = "size-full-0 auto-y"}]
      136 SETTABLEKS                       R2 R16 K18 ["GroupTransparency"]
      138 DUPCLOSURE                       R19 K34 [PROTO_9]
      139 NAMECALL                         R17 R2 K14 ["map"]
      141 CALL                             R17 2 1
      142 SETTABLEKS                       R17 R16 K19 ["Position"]
      144 DUPTABLE                         R17 K27 [{"Text"}]
      145 GETTABLEKS                       R19 R6 K35 ["outgoingText"]
      147 GETUPVAL                         R20 1
      148 GETTABLEKS                       R20 R20 K8 ["createElement"]
      150 GETUPVAL                         R21 5
      151 DUPTABLE                         R22 K36 [{["LayoutOrder"] = , ["Text"], ["tag"] = "size-full-0 auto-y padding-left-medium text-body-small text-wrap text-align-x-left text-truncate-none content-muted", ["onAbsoluteSizeChanged"] = }]
      152 SETTABLEKS                       R19 R22 K26 ["Text"]
      154 CALL                             R20 2 1
      155 MOVE                             R18 R20
      156 SETTABLEKS                       R18 R17 K26 ["Text"]
      158 CALL                             R14 3 1
      159 SETTABLEKS                       R14 R13 K16 ["Outgoing"]
      161 CALL                             R10 3 -1
      162 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Otter"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["Text"]
       30 GETTABLEKS                       R5 R3 K11 ["View"]
       32 GETTABLEKS                       R6 R3 K12 ["Hooks"]
       34 GETTABLEKS                       R6 R6 K13 ["usePreferences"]
       36 DUPCLOSURE                       R7 K14 [PROTO_0]
       37 CAPTURE                          VAL R2
       38 CAPTURE                          VAL R4
       39 DUPCLOSURE                       R8 K15 [PROTO_10]
       40 CAPTURE                          VAL R6
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R7
       44 CAPTURE                          VAL R5
       45 CAPTURE                          VAL R4
       46 RETURN                           R8 1
