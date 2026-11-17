PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["isDragging"]
        3 CALL                             R0 1 1
        4 JUMPIF                           R0 ; [+1]
        5 RETURN                           R0 0
        6 GETUPVAL                         R0 0
        7 NAMECALL                         R0 R0 K1 ["getInvalidDragHoverPosition"]
        9 CALL                             R0 1 1
       10 GETUPVAL                         R1 1
       11 MOVE                             R2 R0
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 LOADNIL                          R2
        5 CALL                             R1 1 0
        6 GETIMPORT                        R1 K2 [task.defer]
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          UPVAL U1
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 LOADNIL                          R2
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["isDragging"]
        3 CALL                             R0 1 1
        4 JUMPIFNOT                        R0 ; [+6]
        5 GETUPVAL                         R0 1
        6 LOADNIL                          R1
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 2
        9 LOADNIL                          R1
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_5:
        0 NEWTABLE                         R0 0 0
        2 MOVE                             R2 R0
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K0 ["OnDragMove"]
        6 NEWCLOSURE                       R5 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U0
       10 NAMECALL                         R3 R3 K1 ["Connect"]
       12 CALL                             R3 2 -1
       13 FASTCALL                         TABLE_INSERT ; [+2]
       14 GETIMPORT                        R1 K4 [table.insert]
       16 CALL                             R1 -1 0
       17 MOVE                             R2 R0
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R3 R3 K5 ["OnDrop"]
       21 NEWCLOSURE                       R5 P1
       22 CAPTURE                          UPVAL U2
       23 CAPTURE                          UPVAL U1
       24 NAMECALL                         R3 R3 K1 ["Connect"]
       26 CALL                             R3 2 -1
       27 FASTCALL                         TABLE_INSERT ; [+2]
       28 GETIMPORT                        R1 K4 [table.insert]
       30 CALL                             R1 -1 0
       31 NEWCLOSURE                       R1 P2
       32 CAPTURE                          UPVAL U0
       33 CAPTURE                          UPVAL U2
       34 CAPTURE                          UPVAL U1
       35 MOVE                             R3 R0
       36 GETUPVAL                         R4 3
       37 GETTABLEKS                       R4 R4 K6 ["OnContentScrollChanged"]
       39 MOVE                             R6 R1
       40 NAMECALL                         R4 R4 K1 ["Connect"]
       42 CALL                             R4 2 -1
       43 FASTCALL                         TABLE_INSERT ; [+2]
       44 GETIMPORT                        R2 K4 [table.insert]
       46 CALL                             R2 -1 0
       47 MOVE                             R3 R0
       48 GETUPVAL                         R4 3
       49 GETTABLEKS                       R4 R4 K7 ["OnSidebarScrollChanged"]
       51 MOVE                             R6 R1
       52 NAMECALL                         R4 R4 K1 ["Connect"]
       54 CALL                             R4 2 -1
       55 FASTCALL                         TABLE_INSERT ; [+2]
       56 GETIMPORT                        R2 K4 [table.insert]
       58 CALL                             R2 -1 0
       59 NEWCLOSURE                       R2 P3
       60 CAPTURE                          UPVAL U4
       61 CAPTURE                          VAL R0
       62 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_7:
        0 GETIMPORT                        R0 K2 [task.cancel]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+5]
        3 GETUPVAL                         R0 1
        4 LOADNIL                          R1
        5 CALL                             R0 1 0
        6 RETURN                           R0 0
        7 GETIMPORT                        R0 K2 [task.delay]
        9 LOADK                            R1 K3 [0.5]
       10 NEWCLOSURE                       R2 P0
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          UPVAL U0
       13 CALL                             R0 2 1
       14 NEWCLOSURE                       R1 P1
       15 CAPTURE                          VAL R0
       16 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["use"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K0 ["use"]
        7 CALL                             R1 0 1
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R2 R2 K0 ["use"]
       11 CALL                             R2 0 1
       12 GETUPVAL                         R3 3
       13 GETTABLEKS                       R3 R3 K1 ["Hooks"]
       15 GETTABLEKS                       R3 R3 K2 ["useTokens"]
       17 CALL                             R3 0 1
       18 GETUPVAL                         R4 4
       19 GETTABLEKS                       R4 R4 K3 ["useState"]
       21 LOADNIL                          R5
       22 CALL                             R4 1 2
       23 GETUPVAL                         R6 4
       24 GETTABLEKS                       R6 R6 K3 ["useState"]
       26 LOADNIL                          R7
       27 CALL                             R6 1 2
       28 GETUPVAL                         R8 4
       29 GETTABLEKS                       R8 R8 K4 ["useEffect"]
       31 NEWCLOSURE                       R9 P0
       32 CAPTURE                          VAL R1
       33 CAPTURE                          VAL R7
       34 CAPTURE                          VAL R5
       35 CAPTURE                          VAL R2
       36 CAPTURE                          UPVAL U5
       37 NEWTABLE                         R10 0 1
       39 MOVE                             R11 R1
       40 SETLIST                          R10 R11 1 [1]
       42 CALL                             R8 2 0
       43 GETUPVAL                         R8 4
       44 GETTABLEKS                       R8 R8 K4 ["useEffect"]
       46 NEWCLOSURE                       R9 P1
       47 CAPTURE                          VAL R4
       48 CAPTURE                          VAL R7
       49 NEWTABLE                         R10 0 1
       51 MOVE                             R11 R4
       52 SETLIST                          R10 R11 1 [1]
       54 CALL                             R8 2 0
       55 JUMPIFNOTEQKNIL                  R6 ; [+3]
       57 LOADNIL                          R8
       58 RETURN                           R8 1
       59 LOADK                            R10 K5 ["MouseHoverFeedback"]
       60 LOADK                            R11 K6 ["InvalidDragTarget"]
       61 NAMECALL                         R8 R0 K7 ["getText"]
       63 CALL                             R8 3 1
       64 GETUPVAL                         R9 4
       65 GETTABLEKS                       R9 R9 K8 ["createElement"]
       67 GETUPVAL                         R10 3
       68 GETTABLEKS                       R10 R10 K9 ["View"]
       70 DUPTABLE                         R11 K18 [{["ZIndex"] = 4, ["Position"], ["backgroundStyle"], ["tag"] = "auto-xy padding-xsmall radius-small", ["testId"] = "drag-invalid-popover"}]
       71 GETIMPORT                        R12 K21 [UDim2.fromOffset]
       73 GETTABLEKS                       R14 R6 K23 ["X"]
       75 ADDK                             R13 R14 K22 [16]
       76 GETTABLEKS                       R15 R6 K24 ["Y"]
       78 ADDK                             R14 R15 K22 [16]
       79 CALL                             R12 2 1
       80 SETTABLEKS                       R12 R11 K12 ["Position"]
       82 GETTABLEKS                       R12 R3 K25 ["Inverse"]
       84 GETTABLEKS                       R12 R12 K26 ["Surface"]
       86 GETTABLEKS                       R12 R12 K27 ["Surface_0"]
       88 SETTABLEKS                       R12 R11 K13 ["backgroundStyle"]
       90 GETUPVAL                         R12 4
       91 GETTABLEKS                       R12 R12 K8 ["createElement"]
       93 GETUPVAL                         R13 3
       94 GETTABLEKS                       R13 R13 K28 ["Text"]
       96 DUPTABLE                         R14 K30 [{["Text"], ["tag"] = "auto-xy text-body-small content-inverse-default"}]
       97 SETTABLEKS                       R8 R14 K28 ["Text"]
       99 CALL                             R12 2 -1
      100 CALL                             R9 -1 -1
      101 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["ContextServices"]
       30 GETTABLEKS                       R5 R4 K11 ["Localization"]
       32 GETIMPORT                        R6 K5 [require]
       34 GETTABLEKS                       R7 R0 K12 ["Src"]
       36 GETTABLEKS                       R7 R7 K13 ["Controllers"]
       38 GETTABLEKS                       R7 R7 K14 ["Input"]
       40 CALL                             R6 1 1
       41 GETIMPORT                        R7 K5 [require]
       43 GETTABLEKS                       R8 R0 K12 ["Src"]
       45 GETTABLEKS                       R8 R8 K13 ["Controllers"]
       47 GETTABLEKS                       R8 R8 K15 ["LayoutController"]
       49 CALL                             R7 1 1
       50 GETIMPORT                        R8 K5 [require]
       52 GETTABLEKS                       R9 R0 K12 ["Src"]
       54 GETTABLEKS                       R9 R9 K16 ["Util"]
       56 GETTABLEKS                       R9 R9 K17 ["cleanConnections"]
       58 CALL                             R8 1 1
       59 DUPCLOSURE                       R9 K18 [PROTO_9]
       60 CAPTURE                          VAL R5
       61 CAPTURE                          VAL R6
       62 CAPTURE                          VAL R7
       63 CAPTURE                          VAL R2
       64 CAPTURE                          VAL R1
       65 CAPTURE                          VAL R8
       66 RETURN                           R9 1
