PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["datum"]
        2 GETTABLEKS                       R2 R2 K1 ["id"]
        4 GETUPVAL                         R3 0
        5 JUMPIFEQ                         R2 R3 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U1
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["joinBindings"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 NEWCLOSURE                       R4 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          VAL R1
        8 NAMECALL                         R2 R2 K1 ["map"]
       10 CALL                             R2 2 -1
       11 RETURN                           R2 -1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["getBinding"]
        2 CALL                             R1 0 -1
        3 RETURN                           R1 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["visibleNodeObservables"]
        4 DUPCLOSURE                       R2 K1 [PROTO_3]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_5:
        0 JUMPIFNOT                        R1 ; [+9]
        1 GETIMPORT                        R2 K2 [UDim2.fromOffset]
        3 LOADN                            R3 0
        4 GETTABLEKS                       R6 R1 K4 ["yPixels"]
        6 SUB                              R5 R6 R0
        7 ADDK                             R4 R5 K3 [2]
        8 CALL                             R2 2 -1
        9 RETURN                           R2 -1
       10 GETIMPORT                        R2 K6 [UDim2.fromScale]
       12 LOADN                            R3 0
       13 LOADN                            R4 -1000
       14 CALL                             R2 2 -1
       15 RETURN                           R2 -1

PROTO_6:
        0 JUMPIFNOT                        R2 ; [+21]
        1 GETIMPORT                        R3 K2 [UDim2.fromOffset]
        3 GETUPVAL                         R6 0
        4 GETTABLEKS                       R6 R6 K3 ["indentWidth"]
        6 GETUPVAL                         R8 1
        7 GETTABLEKS                       R8 R8 K5 ["targetDepth"]
        9 ADDK                             R7 R8 K4 [1]
       10 MUL                              R5 R6 R7
       11 SUB                              R4 R5 R1
       12 GETTABLEKS                       R8 R2 K6 ["yPixels"]
       14 SUB                              R7 R8 R0
       15 GETUPVAL                         R8 0
       16 GETTABLEKS                       R8 R8 K7 ["explorerRowHeight"]
       18 ADD                              R6 R7 R8
       19 SUBK                             R5 R6 K4 [1]
       20 CALL                             R3 2 -1
       21 RETURN                           R3 -1
       22 GETIMPORT                        R3 K9 [UDim2.fromScale]
       24 LOADN                            R4 0
       25 LOADN                            R5 -1000
       26 CALL                             R3 2 -1
       27 RETURN                           R3 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 GETTABLEKS                       R2 R0 K1 ["draggingTargetObservable"]
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["useMemo"]
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          VAL R0
       12 NEWTABLE                         R4 0 1
       14 GETTABLEKS                       R5 R0 K3 ["visibleNodeObservables"]
       16 SETLIST                          R4 R5 1 [1]
       18 CALL                             R2 2 1
       19 JUMPIFNOTEQKNIL                  R1 ; [+3]
       21 LOADNIL                          R3
       22 RETURN                           R3 1
       23 GETUPVAL                         R3 3
       24 CALL                             R3 0 1
       25 GETUPVAL                         R4 4
       26 GETUPVAL                         R5 1
       27 GETTABLEKS                       R5 R5 K4 ["Fragment"]
       29 NEWTABLE                         R6 0 0
       31 DUPTABLE                         R7 K7 [{"Target", "Thumb"}]
       32 GETUPVAL                         R8 4
       33 LOADK                            R9 K8 ["Frame"]
       34 NEWTABLE                         R10 8 0
       36 LOADN                            R11 1
       37 SETTABLEKS                       R11 R10 K9 ["BackgroundTransparency"]
       39 GETUPVAL                         R11 5
       40 DUPCLOSURE                       R12 K10 [PROTO_5]
       41 GETTABLEKS                       R13 R0 K11 ["scrollHeightObservable"]
       43 GETTABLEKS                       R13 R13 K12 ["getBinding"]
       45 CALL                             R13 0 1
       46 GETUPVAL                         R14 6
       47 MOVE                             R15 R2
       48 GETTABLEKS                       R16 R1 K13 ["targetId"]
       50 CALL                             R14 2 -1
       51 CALL                             R11 -1 1
       52 SETTABLEKS                       R11 R10 K14 ["Position"]
       54 GETIMPORT                        R11 K17 [UDim2.new]
       56 LOADN                            R12 1
       57 LOADN                            R13 -4
       58 LOADN                            R14 0
       59 GETUPVAL                         R16 7
       60 GETTABLEKS                       R16 R16 K19 ["explorerRowHeight"]
       62 SUBK                             R15 R16 K18 [4]
       63 CALL                             R11 4 1
       64 SETTABLEKS                       R11 R10 K20 ["Size"]
       66 MOVE                             R11 R3
       67 CALL                             R11 0 1
       68 SETTABLEKS                       R11 R10 K21 ["ZIndex"]
       70 GETUPVAL                         R11 1
       71 GETTABLEKS                       R11 R11 K22 ["Tag"]
       73 GETUPVAL                         R12 8
       74 LOADK                            R13 K23 ["Explorer-Radius-Small"]
       75 GETTABLEKS                       R15 R1 K24 ["type"]
       77 JUMPIFNOTEQKS                    R15 K25 ["below"] ; [+3]
       79 LOADK                            R14 K26 ["Explorer-Stroke-Emphasis"]
       80 JUMP                             ; [+1]
       81 LOADK                            R14 K27 ["Explorer-Stroke-System-Emphasis"]
       82 CALL                             R12 2 1
       83 SETTABLE                         R12 R10 R11
       84 CALL                             R8 2 1
       85 SETTABLEKS                       R8 R7 K5 ["Target"]
       87 LOADB                            R8 0
       88 GETTABLEKS                       R9 R1 K24 ["type"]
       90 JUMPIFNOTEQKS                    R9 K25 ["below"] ; [+49]
       92 GETUPVAL                         R8 4
       93 LOADK                            R9 K8 ["Frame"]
       94 NEWTABLE                         R10 8 0
       96 LOADN                            R11 0
       97 SETTABLEKS                       R11 R10 K28 ["BorderSizePixel"]
       99 GETUPVAL                         R11 5
      100 NEWCLOSURE                       R12 P2
      101 CAPTURE                          UPVAL U7
      102 CAPTURE                          VAL R1
      103 GETTABLEKS                       R13 R0 K11 ["scrollHeightObservable"]
      105 GETTABLEKS                       R13 R13 K12 ["getBinding"]
      107 CALL                             R13 0 1
      108 GETTABLEKS                       R14 R0 K29 ["scrollWidthObservable"]
      110 GETTABLEKS                       R14 R14 K12 ["getBinding"]
      112 CALL                             R14 0 1
      113 GETUPVAL                         R15 6
      114 MOVE                             R16 R2
      115 GETTABLEKS                       R17 R1 K30 ["belowId"]
      117 CALL                             R15 2 -1
      118 CALL                             R11 -1 1
      119 SETTABLEKS                       R11 R10 K14 ["Position"]
      121 GETIMPORT                        R11 K17 [UDim2.new]
      123 LOADN                            R12 1
      124 LOADN                            R13 0
      125 LOADN                            R14 0
      126 LOADN                            R15 1
      127 CALL                             R11 4 1
      128 SETTABLEKS                       R11 R10 K20 ["Size"]
      130 MOVE                             R11 R3
      131 CALL                             R11 0 1
      132 SETTABLEKS                       R11 R10 K21 ["ZIndex"]
      134 GETUPVAL                         R11 1
      135 GETTABLEKS                       R11 R11 K22 ["Tag"]
      137 LOADK                            R12 K31 ["Explorer-BG-PrimaryBrandFill"]
      138 SETTABLE                         R12 R10 R11
      139 CALL                             R8 2 1
      140 SETTABLEKS                       R8 R7 K6 ["Thumb"]
      142 CALL                             R4 3 -1
      143 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["Constants"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Util"]
       25 GETTABLEKS                       R4 R4 K10 ["Observable"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K8 ["Parent"]
       32 GETTABLEKS                       R5 R5 K11 ["React"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K12 ["RpcTypes"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K6 ["Util"]
       44 GETTABLEKS                       R7 R7 K13 ["createNextOrder"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R8 R0 K6 ["Util"]
       51 GETTABLEKS                       R8 R8 K14 ["find"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R9 R0 K6 ["Util"]
       58 GETTABLEKS                       R9 R9 K15 ["joinAndMapBindings"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K5 [require]
       63 GETTABLEKS                       R10 R0 K6 ["Util"]
       65 GETTABLEKS                       R10 R10 K16 ["mapValues"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K5 [require]
       70 GETTABLEKS                       R11 R0 K17 ["Hooks"]
       72 GETTABLEKS                       R11 R11 K18 ["useDragAndDrop"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K5 [require]
       77 GETTABLEKS                       R12 R0 K17 ["Hooks"]
       79 GETTABLEKS                       R12 R12 K19 ["useVisibleExplorerNodeRange"]
       81 CALL                             R11 1 1
       82 GETTABLEKS                       R12 R4 K20 ["createElement"]
       84 GETTABLEKS                       R13 R2 K21 ["Styling"]
       86 GETTABLEKS                       R13 R13 K22 ["joinTags"]
       88 DUPCLOSURE                       R14 K23 [PROTO_2]
       89 CAPTURE                          VAL R4
       90 CAPTURE                          VAL R7
       91 DUPCLOSURE                       R15 K24 [PROTO_7]
       92 CAPTURE                          VAL R3
       93 CAPTURE                          VAL R4
       94 CAPTURE                          VAL R9
       95 CAPTURE                          VAL R6
       96 CAPTURE                          VAL R12
       97 CAPTURE                          VAL R8
       98 CAPTURE                          VAL R14
       99 CAPTURE                          VAL R1
      100 CAPTURE                          VAL R13
      101 RETURN                           R15 1
