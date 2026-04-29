PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["get"]
        3 CALL                             R2 0 1
        4 GETTABLEKS                       R1 R2 K1 ["datum"]
        6 GETTABLEKS                       R0 R1 K2 ["id"]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R1 R2 K3 ["setInsertObjectOpenFor"]
       11 MOVE                             R2 R0
       12 CALL                             R1 1 1
       13 GETUPVAL                         R2 2
       14 MOVE                             R3 R0
       15 GETUPVAL                         R8 3
       16 GETTABLEKS                       R7 R8 K4 ["current"]
       18 GETTABLEKS                       R6 R7 K5 ["AbsolutePosition"]
       20 GETUPVAL                         R9 3
       21 GETTABLEKS                       R8 R9 K4 ["current"]
       23 GETTABLEKS                       R7 R8 K6 ["AbsoluteSize"]
       25 ADD                              R5 R6 R7
       26 GETIMPORT                        R6 K9 [Vector2.new]
       28 LOADN                            R7 240
       29 LOADN                            R8 0
       30 CALL                             R6 2 1
       31 SUB                              R4 R5 R6
       32 CALL                             R2 2 0
       33 MOVE                             R2 R1
       34 CALL                             R2 0 0
       35 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K0 ["current"]
        7 JUMPIFNOTEQKNIL                  R2 ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 FASTCALL2K                       ASSERT R1 K1 ; [+4]
       13 LOADK                            R2 K1 ["OverlaysRow not mounted when clicking"]
       14 GETIMPORT                        R0 K3 [assert]
       16 CALL                             R0 2 0
       17 GETIMPORT                        R0 K6 [task.spawn]
       19 NEWCLOSURE                       R1 P0
       20 CAPTURE                          UPVAL U2
       21 CAPTURE                          UPVAL U3
       22 CAPTURE                          UPVAL U0
       23 CAPTURE                          UPVAL U1
       24 CALL                             R0 1 0
       25 RETURN                           R0 0

PROTO_2:
        0 JUMPIFNOT                        R0 ; [+8]
        1 GETUPVAL                         R3 0
        2 CALL                             R3 0 1
        3 JUMPIFNOT                        R3 ; [+7]
        4 GETTABLEKS                       R4 R1 K0 ["datum"]
        6 GETTABLEKS                       R3 R4 K1 ["isGhost"]
        8 JUMPIFNOT                        R3 ; [+2]
        9 LOADB                            R3 0
       10 RETURN                           R3 1
       11 GETUPVAL                         R3 1
       12 JUMPIFNOTEQKS                    R3 K2 ["keepVisible"] ; [+3]
       14 LOADB                            R3 1
       15 RETURN                           R3 1
       16 MOVE                             R3 R2
       17 JUMPIFNOT                        R3 ; [+6]
       18 GETTABLEKS                       R4 R1 K3 ["hoverState"]
       20 JUMPIFEQKS                       R4 K4 ["Hovered"] ; [+2]
       22 LOADB                            R3 0 +1
       23 LOADB                            R3 1
       24 RETURN                           R3 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K0 ["useContext"]
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R3 R4 K1 ["Context"]
       13 CALL                             R2 1 1
       14 GETUPVAL                         R4 3
       15 GETTABLEKS                       R3 R4 K2 ["use"]
       17 GETTABLEKS                       R6 R0 K3 ["session"]
       19 GETTABLEKS                       R5 R6 K4 ["capabilities"]
       21 GETTABLEKS                       R4 R5 K5 ["openInsertObjectMenuAsyncObservable"]
       23 CALL                             R3 1 1
       24 GETTABLEKS                       R4 R0 K6 ["visibleNodeObservable"]
       26 GETUPVAL                         R6 0
       27 GETTABLEKS                       R5 R6 K7 ["useRef"]
       29 LOADNIL                          R6
       30 CALL                             R5 1 1
       31 GETUPVAL                         R7 0
       32 GETTABLEKS                       R6 R7 K8 ["useCallback"]
       34 NEWCLOSURE                       R7 P0
       35 CAPTURE                          VAL R3
       36 CAPTURE                          VAL R5
       37 CAPTURE                          VAL R4
       38 CAPTURE                          VAL R1
       39 NEWTABLE                         R8 0 3
       41 MOVE                             R9 R3
       42 MOVE                             R10 R4
       43 GETTABLEKS                       R11 R1 K9 ["setInsertObjectOpenFor"]
       45 SETLIST                          R8 R9 3 [1]
       47 CALL                             R6 2 1
       48 GETUPVAL                         R7 4
       49 GETTABLEKS                       R8 R0 K6 ["visibleNodeObservable"]
       51 GETTABLEKS                       R9 R0 K10 ["boxSelecting"]
       53 CALL                             R7 2 1
       54 MOVE                             R8 R3
       55 JUMPIFNOT                        R8 ; [+118]
       56 LOADB                            R8 0
       57 JUMPIFEQKS                       R7 K11 ["notVisible"] ; [+116]
       59 GETUPVAL                         R8 5
       60 LOADK                            R9 K12 ["TextButton"]
       61 NEWTABLE                         R10 16 0
       63 LOADB                            R11 0
       64 SETTABLEKS                       R11 R10 K13 ["AutoButtonColor"]
       66 LOADN                            R11 1
       67 SETTABLEKS                       R11 R10 K14 ["BackgroundTransparency"]
       69 LOADN                            R11 0
       70 SETTABLEKS                       R11 R10 K15 ["BorderSizePixel"]
       72 GETIMPORT                        R11 K18 [UDim2.fromOffset]
       74 GETUPVAL                         R13 6
       75 GETTABLEKS                       R12 R13 K19 ["explorerRowHeight"]
       77 GETUPVAL                         R14 6
       78 GETTABLEKS                       R13 R14 K19 ["explorerRowHeight"]
       80 CALL                             R11 2 1
       81 SETTABLEKS                       R11 R10 K20 ["Size"]
       83 LOADK                            R11 K21 [""]
       84 SETTABLEKS                       R11 R10 K22 ["Text"]
       86 SETTABLEKS                       R5 R10 K23 ["ref"]
       88 GETUPVAL                         R11 7
       89 NEWCLOSURE                       R12 P1
       90 CAPTURE                          UPVAL U8
       91 CAPTURE                          VAL R7
       92 GETTABLEKS                       R14 R2 K24 ["showPlusButtonOnHoverObservable"]
       94 GETTABLEKS                       R13 R14 K25 ["getBinding"]
       96 CALL                             R13 0 1
       97 GETTABLEKS                       R14 R4 K25 ["getBinding"]
       99 CALL                             R14 0 1
      100 GETTABLEKS                       R16 R0 K26 ["windowIsHoveredObservable"]
      102 GETTABLEKS                       R15 R16 K25 ["getBinding"]
      104 CALL                             R15 0 -1
      105 CALL                             R11 -1 1
      106 SETTABLEKS                       R11 R10 K27 ["Visible"]
      108 GETUPVAL                         R13 0
      109 GETTABLEKS                       R12 R13 K28 ["Event"]
      111 GETTABLEKS                       R11 R12 K29 ["Activated"]
      113 SETTABLE                         R6 R10 R11
      114 GETUPVAL                         R12 0
      115 GETTABLEKS                       R11 R12 K30 ["Tag"]
      117 LOADK                            R12 K31 ["Explorer-View Explorer-InsertObjectButton"]
      118 SETTABLE                         R12 R10 R11
      119 DUPTABLE                         R11 K34 [{"Padding", "Image"}]
      120 GETUPVAL                         R12 5
      121 LOADK                            R13 K35 ["UIPadding"]
      122 DUPTABLE                         R14 K40 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
      123 GETIMPORT                        R15 K43 [UDim.new]
      125 LOADN                            R16 0
      126 LOADN                            R17 4
      127 CALL                             R15 2 1
      128 SETTABLEKS                       R15 R14 K36 ["PaddingTop"]
      130 GETIMPORT                        R15 K43 [UDim.new]
      132 LOADN                            R16 0
      133 LOADN                            R17 4
      134 CALL                             R15 2 1
      135 SETTABLEKS                       R15 R14 K37 ["PaddingBottom"]
      137 GETIMPORT                        R15 K43 [UDim.new]
      139 LOADN                            R16 0
      140 LOADN                            R17 4
      141 CALL                             R15 2 1
      142 SETTABLEKS                       R15 R14 K38 ["PaddingLeft"]
      144 GETIMPORT                        R15 K43 [UDim.new]
      146 LOADN                            R16 0
      147 LOADN                            R17 4
      148 CALL                             R15 2 1
      149 SETTABLEKS                       R15 R14 K39 ["PaddingRight"]
      151 CALL                             R12 2 1
      152 SETTABLEKS                       R12 R11 K32 ["Padding"]
      154 GETUPVAL                         R12 5
      155 LOADK                            R13 K44 ["ImageLabel"]
      156 NEWTABLE                         R14 2 0
      158 GETUPVAL                         R16 9
      159 GETTABLEKS                       R15 R16 K45 ["standard"]
      161 LOADK                            R16 K46 ["insertObject"]
      162 CALL                             R15 1 1
      163 SETTABLEKS                       R15 R14 K33 ["Image"]
      165 GETUPVAL                         R16 0
      166 GETTABLEKS                       R15 R16 K30 ["Tag"]
      168 LOADK                            R16 K47 ["Explorer-View Explorer-Square Explorer-Content-Muted"]
      169 SETTABLE                         R16 R14 R15
      170 CALL                             R12 2 1
      171 SETTABLEKS                       R12 R11 K33 ["Image"]
      173 CALL                             R8 3 1
      174 RETURN                           R8 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R3 K7 ["Constants"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Util"]
       18 GETTABLEKS                       R3 R4 K8 ["ImageUrl"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R6 R0 K9 ["Components"]
       25 GETTABLEKS                       R5 R6 K10 ["Contexts"]
       27 GETTABLEKS                       R4 R5 K11 ["InsertObjectContext"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R6 R0 K6 ["Util"]
       34 GETTABLEKS                       R5 R6 K12 ["Observable"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R7 R0 K13 ["Parent"]
       41 GETTABLEKS                       R6 R7 K14 ["React"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K15 ["RpcTypes"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R10 R0 K9 ["Components"]
       53 GETTABLEKS                       R9 R10 K10 ["Contexts"]
       55 GETTABLEKS                       R8 R9 K16 ["SettingsContext"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R10 R0 K17 ["Flags"]
       62 GETTABLEKS                       R9 R10 K18 ["getFFlagExplorerStreaming"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R11 R0 K6 ["Util"]
       69 GETTABLEKS                       R10 R11 K19 ["joinAndMapBindings"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R13 R0 K9 ["Components"]
       76 GETTABLEKS                       R12 R13 K20 ["ExplorerNodeRow"]
       78 GETTABLEKS                       R11 R12 K21 ["useInsertObjectVisibility"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K5 [require]
       83 GETTABLEKS                       R13 R0 K22 ["Hooks"]
       85 GETTABLEKS                       R12 R13 K23 ["useVisibleExplorerNodeRange"]
       87 CALL                             R11 1 1
       88 GETTABLEKS                       R12 R5 K24 ["createElement"]
       90 DUPCLOSURE                       R13 K25 [PROTO_3]
       91 CAPTURE                          VAL R5
       92 CAPTURE                          VAL R3
       93 CAPTURE                          VAL R7
       94 CAPTURE                          VAL R4
       95 CAPTURE                          VAL R10
       96 CAPTURE                          VAL R12
       97 CAPTURE                          VAL R1
       98 CAPTURE                          VAL R9
       99 CAPTURE                          VAL R8
      100 CAPTURE                          VAL R2
      101 RETURN                           R13 1
