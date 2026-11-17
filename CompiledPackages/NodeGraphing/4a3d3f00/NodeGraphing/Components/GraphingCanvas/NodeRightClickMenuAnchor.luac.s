PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["anchorPosition"]
        3 JUMPIFNOT                        R1 ; [+14]
        4 GETTABLEKS                       R1 R0 K1 ["plotToView"]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K0 ["anchorPosition"]
        9 CALL                             R1 1 1
       10 GETIMPORT                        R2 K4 [UDim2.fromScale]
       12 GETTABLEKS                       R3 R1 K5 ["X"]
       14 GETTABLEKS                       R4 R1 K6 ["Y"]
       16 CALL                             R2 2 -1
       17 RETURN                           R2 -1
       18 GETIMPORT                        R1 K4 [UDim2.fromScale]
       20 LOADN                            R2 0
       21 LOADN                            R3 0
       22 CALL                             R1 2 -1
       23 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["targetNodeId"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["hideMenu"]
        6 CALL                             R1 0 0
        7 JUMPIFNOT                        R0 ; [+9]
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K2 ["onShowInExplorer"]
       11 JUMPIFNOT                        R1 ; [+5]
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K2 ["onShowInExplorer"]
       15 MOVE                             R2 R0
       16 CALL                             R1 1 0
       17 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["targetNodeId"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["hideMenu"]
        6 CALL                             R1 0 0
        7 JUMPIFNOT                        R0 ; [+9]
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K2 ["onBreakConnections"]
       11 JUMPIFNOT                        R1 ; [+5]
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K2 ["onBreakConnections"]
       15 MOVE                             R2 R0
       16 CALL                             R1 1 0
       17 RETURN                           R0 0

PROTO_3:
        0 NEWTABLE                         R0 0 1
        2 DUPTABLE                         R1 K1 [{"items"}]
        3 NEWTABLE                         R2 0 1
        5 DUPTABLE                         R3 K6 [{["id"] = "ShowInExplorer", ["text"], ["onActivated"]}]
        6 GETUPVAL                         R5 0
        7 CALL                             R5 0 1
        8 JUMPIFNOT                        R5 ; [+9]
        9 GETUPVAL                         R4 1
       10 LOADK                            R6 K7 ["Common"]
       11 LOADK                            R7 K8 ["AnimationEditor"]
       12 LOADK                            R8 K9 ["Menu"]
       13 LOADK                            R9 K3 ["ShowInExplorer"]
       14 NAMECALL                         R4 R4 K10 ["getExternalText"]
       16 CALL                             R4 5 1
       17 JUMP                             ; [+1]
       18 LOADK                            R4 K11 ["Show in Explorer"]
       19 SETTABLEKS                       R4 R3 K4 ["text"]
       21 GETUPVAL                         R4 2
       22 SETTABLEKS                       R4 R3 K5 ["onActivated"]
       24 SETLIST                          R2 R3 1 [1]
       26 SETTABLEKS                       R2 R1 K0 ["items"]
       28 SETLIST                          R0 R1 1 [1]
       30 GETUPVAL                         R1 3
       31 JUMPIFNOT                        R1 ; [+40]
       32 DUPTABLE                         R3 K1 [{"items"}]
       33 NEWTABLE                         R4 0 1
       35 DUPTABLE                         R5 K14 [{["id"] = "BreakConnections", ["text"], ["isDisabled"], ["onActivated"]}]
       36 GETUPVAL                         R7 0
       37 CALL                             R7 0 1
       38 JUMPIFNOT                        R7 ; [+9]
       39 GETUPVAL                         R6 1
       40 LOADK                            R8 K7 ["Common"]
       41 LOADK                            R9 K8 ["AnimationEditor"]
       42 LOADK                            R10 K9 ["Menu"]
       43 LOADK                            R11 K12 ["BreakConnections"]
       44 NAMECALL                         R6 R6 K10 ["getExternalText"]
       46 CALL                             R6 5 1
       47 JUMP                             ; [+1]
       48 LOADK                            R6 K15 ["Break Connections"]
       49 SETTABLEKS                       R6 R5 K4 ["text"]
       51 GETUPVAL                         R7 4
       52 NOT                              R6 R7
       53 SETTABLEKS                       R6 R5 K13 ["isDisabled"]
       55 GETUPVAL                         R7 4
       56 JUMPIFNOT                        R7 ; [+2]
       57 GETUPVAL                         R6 5
       58 JUMP                             ; [+1]
       59 LOADNIL                          R6
       60 SETTABLEKS                       R6 R5 K5 ["onActivated"]
       62 SETLIST                          R4 R5 1 [1]
       64 SETTABLEKS                       R4 R3 K0 ["items"]
       66 FASTCALL2                        TABLE_INSERT R0 R3 ; [+4]
       68 MOVE                             R2 R0
       69 GETIMPORT                        R1 K18 [table.insert]
       71 CALL                             R1 2 0
       72 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useContext"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Context"]
        6 CALL                             R0 1 1
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K0 ["useContext"]
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R2 R2 K1 ["Context"]
       13 CALL                             R1 1 1
       14 GETUPVAL                         R2 3
       15 GETTABLEKS                       R2 R2 K2 ["ContextServices"]
       17 GETTABLEKS                       R2 R2 K3 ["Localization"]
       19 NAMECALL                         R2 R2 K4 ["use"]
       21 CALL                             R2 1 1
       22 GETTABLEKS                       R4 R0 K5 ["targetNodeId"]
       24 JUMPIFNOTEQKNIL                  R4 ; [+2]
       26 LOADB                            R3 0 +1
       27 LOADB                            R3 1
       28 GETUPVAL                         R4 4
       29 GETTABLEKS                       R4 R4 K6 ["useViewportBinding"]
       31 NEWCLOSURE                       R5 P0
       32 CAPTURE                          VAL R0
       33 NEWTABLE                         R6 0 1
       35 GETTABLEKS                       R7 R0 K7 ["anchorPosition"]
       37 SETLIST                          R6 R7 1 [1]
       39 CALL                             R4 2 1
       40 GETUPVAL                         R5 0
       41 GETTABLEKS                       R5 R5 K8 ["useCallback"]
       43 NEWCLOSURE                       R6 P1
       44 CAPTURE                          VAL R0
       45 NEWTABLE                         R7 0 3
       47 GETTABLEKS                       R8 R0 K5 ["targetNodeId"]
       49 GETTABLEKS                       R9 R0 K9 ["hideMenu"]
       51 GETTABLEKS                       R10 R0 K10 ["onShowInExplorer"]
       53 SETLIST                          R7 R8 3 [1]
       55 CALL                             R5 2 1
       56 GETUPVAL                         R6 0
       57 GETTABLEKS                       R6 R6 K8 ["useCallback"]
       59 NEWCLOSURE                       R7 P2
       60 CAPTURE                          VAL R0
       61 NEWTABLE                         R8 0 3
       63 GETTABLEKS                       R9 R0 K5 ["targetNodeId"]
       65 GETTABLEKS                       R10 R0 K9 ["hideMenu"]
       67 GETTABLEKS                       R11 R0 K11 ["onBreakConnections"]
       69 SETLIST                          R8 R9 3 [1]
       71 CALL                             R6 2 1
       72 LOADB                            R7 0
       73 GETTABLEKS                       R8 R0 K11 ["onBreakConnections"]
       75 JUMPIFEQKNIL                     R8 ; [+4]
       77 GETTABLEKS                       R8 R1 K12 ["isReadonly"]
       79 NOT                              R7 R8
       80 GETTABLEKS                       R8 R0 K5 ["targetNodeId"]
       82 GETUPVAL                         R9 5
       83 GETTABLEKS                       R9 R9 K13 ["useSignalState"]
       85 GETTABLEKS                       R10 R1 K14 ["nodePayloadDispatcher"]
       87 GETTABLEKS                       R10 R10 K15 ["observeMap"]
       89 CALL                             R9 1 1
       90 LOADB                            R10 0
       91 JUMPIFEQKNIL                     R8 ; [+11]
       93 GETUPVAL                         R12 6
       94 MOVE                             R13 R9
       95 MOVE                             R14 R8
       96 CALL                             R12 2 1
       97 LENGTH                           R11 R12
       98 LOADN                            R12 0
       99 JUMPIFLT                         R12 R11 ; [+2]
      101 LOADB                            R10 0 +1
      102 LOADB                            R10 1
      103 GETUPVAL                         R11 0
      104 GETTABLEKS                       R11 R11 K16 ["useMemo"]
      106 NEWCLOSURE                       R12 P3
      107 CAPTURE                          UPVAL U7
      108 CAPTURE                          VAL R2
      109 CAPTURE                          VAL R5
      110 CAPTURE                          VAL R7
      111 CAPTURE                          VAL R10
      112 CAPTURE                          VAL R6
      113 NEWTABLE                         R13 0 5
      115 MOVE                             R14 R5
      116 MOVE                             R15 R6
      117 MOVE                             R16 R7
      118 MOVE                             R17 R10
      119 MOVE                             R18 R2
      120 SETLIST                          R13 R14 5 [1]
      122 CALL                             R11 2 1
      123 GETUPVAL                         R12 0
      124 GETTABLEKS                       R12 R12 K17 ["createElement"]
      126 GETUPVAL                         R13 8
      127 GETTABLEKS                       R13 R13 K18 ["View"]
      129 DUPTABLE                         R14 K22 [{["tag"] = "size-0-0", ["Position"]}]
      130 SETTABLEKS                       R4 R14 K21 ["Position"]
      132 DUPTABLE                         R15 K24 [{"NodeContextMenu"}]
      133 GETUPVAL                         R16 0
      134 GETTABLEKS                       R16 R16 K17 ["createElement"]
      136 GETUPVAL                         R17 8
      137 GETTABLEKS                       R17 R17 K25 ["Menu"]
      139 DUPTABLE                         R18 K30 [{"isOpen", "onPressedOutside", "items", "size"}]
      140 SETTABLEKS                       R3 R18 K26 ["isOpen"]
      142 GETTABLEKS                       R19 R0 K9 ["hideMenu"]
      144 SETTABLEKS                       R19 R18 K27 ["onPressedOutside"]
      146 SETTABLEKS                       R11 R18 K28 ["items"]
      148 GETUPVAL                         R19 8
      149 GETTABLEKS                       R19 R19 K31 ["Enums"]
      151 GETTABLEKS                       R19 R19 K32 ["InputSize"]
      153 GETTABLEKS                       R19 R19 K33 ["XSmall"]
      155 SETTABLEKS                       R19 R18 K29 ["size"]
      157 CALL                             R16 2 1
      158 SETTABLEKS                       R16 R15 K23 ["NodeContextMenu"]
      160 CALL                             R12 3 -1
      161 RETURN                           R12 -1

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
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Components"]
       25 GETTABLEKS                       R4 R4 K10 ["GraphContext"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Parent"]
       32 GETTABLEKS                       R5 R5 K11 ["Graphing"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K9 ["Components"]
       39 GETTABLEKS                       R6 R6 K12 ["NodeRightClickMenuContext"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K6 ["Parent"]
       46 GETTABLEKS                       R7 R7 K13 ["React"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K6 ["Parent"]
       53 GETTABLEKS                       R8 R8 K14 ["SignalsReact"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K15 ["Flags"]
       60 GETTABLEKS                       R9 R9 K16 ["getFFlagAnimGraphUI_Localization2"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R10 R0 K17 ["Util"]
       67 GETTABLEKS                       R10 R10 K18 ["getNodeConnectionBindings"]
       69 CALL                             R9 1 1
       70 DUPCLOSURE                       R10 K19 [PROTO_4]
       71 CAPTURE                          VAL R6
       72 CAPTURE                          VAL R5
       73 CAPTURE                          VAL R3
       74 CAPTURE                          VAL R2
       75 CAPTURE                          VAL R4
       76 CAPTURE                          VAL R7
       77 CAPTURE                          VAL R9
       78 CAPTURE                          VAL R8
       79 CAPTURE                          VAL R1
       80 RETURN                           R10 1
