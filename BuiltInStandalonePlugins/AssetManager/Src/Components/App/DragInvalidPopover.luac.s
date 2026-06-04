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
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+1]
        3 RETURN                           R0 0
        4 NEWTABLE                         R0 0 0
        6 MOVE                             R2 R0
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K0 ["OnDragMove"]
       10 NEWCLOSURE                       R5 P0
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          UPVAL U3
       13 CAPTURE                          UPVAL U1
       14 NAMECALL                         R3 R3 K1 ["Connect"]
       16 CALL                             R3 2 -1
       17 FASTCALL                         TABLE_INSERT ; [+2]
       18 GETIMPORT                        R1 K4 [table.insert]
       20 CALL                             R1 -1 0
       21 MOVE                             R2 R0
       22 GETUPVAL                         R3 1
       23 GETTABLEKS                       R3 R3 K5 ["OnDrop"]
       25 NEWCLOSURE                       R5 P1
       26 CAPTURE                          UPVAL U3
       27 CAPTURE                          UPVAL U2
       28 NAMECALL                         R3 R3 K1 ["Connect"]
       30 CALL                             R3 2 -1
       31 FASTCALL                         TABLE_INSERT ; [+2]
       32 GETIMPORT                        R1 K4 [table.insert]
       34 CALL                             R1 -1 0
       35 NEWCLOSURE                       R1 P2
       36 CAPTURE                          UPVAL U1
       37 CAPTURE                          UPVAL U3
       38 CAPTURE                          UPVAL U2
       39 MOVE                             R3 R0
       40 GETUPVAL                         R4 4
       41 GETTABLEKS                       R4 R4 K6 ["OnContentScrollChanged"]
       43 MOVE                             R6 R1
       44 NAMECALL                         R4 R4 K1 ["Connect"]
       46 CALL                             R4 2 -1
       47 FASTCALL                         TABLE_INSERT ; [+2]
       48 GETIMPORT                        R2 K4 [table.insert]
       50 CALL                             R2 -1 0
       51 MOVE                             R3 R0
       52 GETUPVAL                         R4 4
       53 GETTABLEKS                       R4 R4 K7 ["OnSidebarScrollChanged"]
       55 MOVE                             R6 R1
       56 NAMECALL                         R4 R4 K1 ["Connect"]
       58 CALL                             R4 2 -1
       59 FASTCALL                         TABLE_INSERT ; [+2]
       60 GETIMPORT                        R2 K4 [table.insert]
       62 CALL                             R2 -1 0
       63 NEWCLOSURE                       R2 P3
       64 CAPTURE                          UPVAL U5
       65 CAPTURE                          VAL R0
       66 RETURN                           R2 1

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
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R0 1
        5 JUMPIFNOTEQKNIL                  R0 ; [+5]
        7 GETUPVAL                         R0 2
        8 LOADNIL                          R1
        9 CALL                             R0 1 0
       10 RETURN                           R0 0
       11 GETIMPORT                        R0 K2 [task.delay]
       13 LOADK                            R1 K3 [0.5]
       14 NEWCLOSURE                       R2 P0
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          UPVAL U1
       17 CALL                             R0 2 1
       18 NEWCLOSURE                       R1 P1
       19 CAPTURE                          VAL R0
       20 RETURN                           R1 1

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
       32 CAPTURE                          UPVAL U5
       33 CAPTURE                          VAL R1
       34 CAPTURE                          VAL R7
       35 CAPTURE                          VAL R5
       36 CAPTURE                          VAL R2
       37 CAPTURE                          UPVAL U6
       38 NEWTABLE                         R10 0 1
       40 MOVE                             R11 R1
       41 SETLIST                          R10 R11 1 [1]
       43 CALL                             R8 2 0
       44 GETUPVAL                         R8 4
       45 GETTABLEKS                       R8 R8 K4 ["useEffect"]
       47 NEWCLOSURE                       R9 P1
       48 CAPTURE                          UPVAL U5
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R7
       51 NEWTABLE                         R10 0 1
       53 MOVE                             R11 R4
       54 SETLIST                          R10 R11 1 [1]
       56 CALL                             R8 2 0
       57 GETUPVAL                         R8 5
       58 CALL                             R8 0 1
       59 JUMPIFNOT                        R8 ; [+2]
       60 JUMPIFNOTEQKNIL                  R6 ; [+3]
       62 LOADNIL                          R8
       63 RETURN                           R8 1
       64 LOADK                            R10 K5 ["MouseHoverFeedback"]
       65 LOADK                            R11 K6 ["InvalidDragTarget"]
       66 NAMECALL                         R8 R0 K7 ["getText"]
       68 CALL                             R8 3 1
       69 GETUPVAL                         R9 4
       70 GETTABLEKS                       R9 R9 K8 ["createElement"]
       72 GETUPVAL                         R10 3
       73 GETTABLEKS                       R10 R10 K9 ["View"]
       75 DUPTABLE                         R11 K14 [{"ZIndex", "Position", "backgroundStyle", "tag"}]
       76 LOADN                            R12 4
       77 SETTABLEKS                       R12 R11 K10 ["ZIndex"]
       79 GETIMPORT                        R12 K17 [UDim2.fromOffset]
       81 GETTABLEKS                       R14 R6 K19 ["X"]
       83 ADDK                             R13 R14 K18 [16]
       84 GETTABLEKS                       R15 R6 K20 ["Y"]
       86 ADDK                             R14 R15 K18 [16]
       87 CALL                             R12 2 1
       88 SETTABLEKS                       R12 R11 K11 ["Position"]
       90 GETTABLEKS                       R12 R3 K21 ["Inverse"]
       92 GETTABLEKS                       R12 R12 K22 ["Surface"]
       94 GETTABLEKS                       R12 R12 K23 ["Surface_0"]
       96 SETTABLEKS                       R12 R11 K12 ["backgroundStyle"]
       98 LOADK                            R12 K24 ["auto-xy padding-xsmall radius-small data-testid=drag-invalid-popover"]
       99 SETTABLEKS                       R12 R11 K13 ["tag"]
      101 GETUPVAL                         R12 4
      102 GETTABLEKS                       R12 R12 K8 ["createElement"]
      104 GETUPVAL                         R13 3
      105 GETTABLEKS                       R13 R13 K25 ["Text"]
      107 DUPTABLE                         R14 K26 [{"Text", "tag"}]
      108 SETTABLEKS                       R8 R14 K25 ["Text"]
      110 LOADK                            R15 K27 ["text-body-small content-inverse-default auto-xy"]
      111 SETTABLEKS                       R15 R14 K13 ["tag"]
      113 CALL                             R12 2 -1
      114 CALL                             R9 -1 -1
      115 RETURN                           R9 -1

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
       59 GETIMPORT                        R9 K5 [require]
       61 GETTABLEKS                       R10 R0 K12 ["Src"]
       63 GETTABLEKS                       R10 R10 K18 ["Flags"]
       65 GETTABLEKS                       R10 R10 K19 ["getFFlagAmrOrganizationFoundation"]
       67 CALL                             R9 1 1
       68 DUPCLOSURE                       R10 K20 [PROTO_9]
       69 CAPTURE                          VAL R5
       70 CAPTURE                          VAL R6
       71 CAPTURE                          VAL R7
       72 CAPTURE                          VAL R2
       73 CAPTURE                          VAL R1
       74 CAPTURE                          VAL R9
       75 CAPTURE                          VAL R8
       76 RETURN                           R10 1
