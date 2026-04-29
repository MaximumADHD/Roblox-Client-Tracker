PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["session"]
        3 GETTABLEKS                       R1 R2 K1 ["renameInstance"]
        5 GETUPVAL                         R5 1
        6 GETTABLEKS                       R4 R5 K2 ["get"]
        8 CALL                             R4 0 1
        9 GETTABLEKS                       R3 R4 K3 ["datum"]
       11 GETTABLEKS                       R2 R3 K4 ["id"]
       13 MOVE                             R3 R0
       14 CALL                             R1 2 0
       15 GETUPVAL                         R2 2
       16 GETTABLEKS                       R1 R2 K5 ["disable"]
       18 CALL                             R1 0 0
       19 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K2 [task.wait]
        2 CALL                             R0 0 0
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R0 R1 K3 ["setRenameBoxActiveFor"]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R2 R3 K4 ["datum"]
        9 GETTABLEKS                       R1 R2 K5 ["id"]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 0
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K0 ["session"]
        6 GETTABLEKS                       R2 R3 K1 ["getExplorerNodeById"]
        8 GETUPVAL                         R6 2
        9 GETTABLEKS                       R5 R6 K2 ["get"]
       11 CALL                             R5 0 1
       12 GETTABLEKS                       R4 R5 K3 ["datum"]
       14 GETTABLEKS                       R3 R4 K4 ["id"]
       16 CALL                             R2 1 1
       17 JUMPIFNOTEQKNIL                  R2 ; [+2]
       19 LOADB                            R4 0 +1
       20 LOADB                            R4 1
       21 FASTCALL2K                       ASSERT R4 K5 ; [+4]
       23 LOADK                            R5 K5 ["Couldn't find visible node"]
       24 GETIMPORT                        R3 K7 [assert]
       26 CALL                             R3 2 0
       27 GETUPVAL                         R3 3
       28 MOVE                             R4 R2
       29 CALL                             R3 1 1
       30 LOADN                            R4 0
       31 JUMPIFNOTLT                      R1 R4 ; [+4]
       33 JUMPIFNOTEQKN                    R3 K8 [1] ; [+2]
       35 RETURN                           R0 0
       36 GETUPVAL                         R5 4
       37 GETTABLEKS                       R4 R5 K9 ["getNthDescendant"]
       39 GETUPVAL                         R9 1
       40 GETTABLEKS                       R8 R9 K0 ["session"]
       42 GETTABLEKS                       R7 R8 K10 ["focusedRootObservable"]
       44 GETTABLEKS                       R6 R7 K2 ["get"]
       46 CALL                             R6 0 1
       47 GETTABLEKS                       R5 R6 K11 ["children"]
       49 ADD                              R6 R3 R1
       50 CALL                             R4 2 1
       51 JUMPIFNOTEQKNIL                  R4 ; [+2]
       53 RETURN                           R0 0
       54 GETUPVAL                         R7 1
       55 GETTABLEKS                       R6 R7 K12 ["scrollingFrameRef"]
       57 GETTABLEKS                       R5 R6 K13 ["current"]
       59 JUMPIFNOTEQKNIL                  R5 ; [+2]
       61 LOADB                            R7 0 +1
       62 LOADB                            R7 1
       63 FASTCALL2K                       ASSERT R7 K14 ; [+4]
       65 LOADK                            R8 K14 ["No scrollingFrame somehow"]
       66 GETIMPORT                        R6 K7 [assert]
       68 CALL                             R6 2 0
       69 GETTABLEKS                       R6 R5 K15 ["CanvasPosition"]
       71 GETUPVAL                         R9 1
       72 GETTABLEKS                       R8 R9 K0 ["session"]
       74 GETTABLEKS                       R7 R8 K16 ["selectIds"]
       76 GETIMPORT                        R8 K19 [table.freeze]
       78 NEWTABLE                         R9 0 1
       80 GETTABLEKS                       R11 R4 K3 ["datum"]
       82 GETTABLEKS                       R10 R11 K4 ["id"]
       84 SETLIST                          R9 R10 1 [1]
       86 CALL                             R8 1 -1
       87 CALL                             R7 -1 0
       88 GETTABLEKS                       R7 R5 K15 ["CanvasPosition"]
       90 JUMPIFEQ                         R6 R7 ; [+8]
       92 GETIMPORT                        R7 K22 [task.spawn]
       94 NEWCLOSURE                       R8 P0
       95 CAPTURE                          UPVAL U5
       96 CAPTURE                          VAL R4
       97 CALL                             R7 1 0
       98 RETURN                           R0 0
       99 GETUPVAL                         R8 5
      100 GETTABLEKS                       R7 R8 K23 ["setRenameBoxActiveFor"]
      102 GETTABLEKS                       R9 R4 K3 ["datum"]
      104 GETTABLEKS                       R8 R9 K4 ["id"]
      106 CALL                             R7 1 0
      107 RETURN                           R0 0

PROTO_3:
        0 LOADN                            R3 0
        1 GETUPVAL                         R6 0
        2 MOVE                             R7 R1
        3 CALL                             R6 1 1
        4 GETTABLEKS                       R5 R6 K0 ["leftOfName"]
        6 SUB                              R4 R5 R0
        7 FASTCALL2                        MATH_MAX R3 R4 ; [+3]
        9 GETIMPORT                        R2 K3 [math.max]
       11 CALL                             R2 2 1
       12 RETURN                           R2 1

PROTO_4:
        0 GETIMPORT                        R1 K2 [UDim2.fromOffset]
        2 MOVE                             R2 R0
        3 LOADN                            R3 0
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_5:
        0 GETIMPORT                        R1 K2 [UDim2.new]
        2 LOADN                            R2 1
        3 MINUS                            R3 R0
        4 LOADN                            R4 1
        5 LOADN                            R5 0
        6 CALL                             R1 4 -1
        7 RETURN                           R1 -1

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["visibleNodeObservable"]
        2 GETUPVAL                         R2 0
        3 MOVE                             R3 R1
        4 CALL                             R2 1 1
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R3 R4 K1 ["useContext"]
        8 GETUPVAL                         R5 2
        9 GETTABLEKS                       R4 R5 K2 ["Context"]
       11 CALL                             R3 1 1
       12 GETUPVAL                         R5 1
       13 GETTABLEKS                       R4 R5 K3 ["useCallback"]
       15 NEWCLOSURE                       R5 P0
       16 CAPTURE                          VAL R0
       17 CAPTURE                          VAL R1
       18 CAPTURE                          VAL R2
       19 NEWTABLE                         R6 0 3
       21 MOVE                             R7 R1
       22 GETTABLEKS                       R9 R0 K4 ["session"]
       24 GETTABLEKS                       R8 R9 K5 ["renameInstance"]
       26 GETTABLEKS                       R9 R2 K6 ["disable"]
       28 SETLIST                          R6 R7 3 [1]
       30 CALL                             R4 2 1
       31 GETUPVAL                         R6 1
       32 GETTABLEKS                       R5 R6 K3 ["useCallback"]
       34 NEWCLOSURE                       R6 P1
       35 CAPTURE                          VAL R4
       36 CAPTURE                          VAL R0
       37 CAPTURE                          VAL R1
       38 CAPTURE                          UPVAL U3
       39 CAPTURE                          UPVAL U4
       40 CAPTURE                          VAL R3
       41 NEWTABLE                         R7 0 7
       43 MOVE                             R8 R4
       44 GETTABLEKS                       R10 R0 K4 ["session"]
       46 GETTABLEKS                       R9 R10 K7 ["getExplorerNodeById"]
       48 GETUPVAL                         R10 3
       49 GETUPVAL                         R12 4
       50 GETTABLEKS                       R11 R12 K8 ["getNthDescendant"]
       52 GETTABLEKS                       R13 R0 K4 ["session"]
       54 GETTABLEKS                       R12 R13 K9 ["selectIds"]
       56 GETTABLEKS                       R13 R0 K10 ["scrollingFrameRef"]
       58 GETTABLEKS                       R14 R3 K11 ["setRenameBoxActiveFor"]
       60 SETLIST                          R7 R8 7 [1]
       62 CALL                             R5 2 1
       63 GETTABLEKS                       R6 R2 K12 ["enabled"]
       65 JUMPIF                           R6 ; [+2]
       66 LOADNIL                          R6
       67 RETURN                           R6 1
       68 GETUPVAL                         R6 5
       69 DUPCLOSURE                       R7 K13 [PROTO_3]
       70 CAPTURE                          UPVAL U6
       71 GETTABLEKS                       R9 R0 K14 ["scrollWidthObservable"]
       73 GETTABLEKS                       R8 R9 K15 ["getBinding"]
       75 CALL                             R8 0 1
       76 GETTABLEKS                       R10 R0 K0 ["visibleNodeObservable"]
       78 GETTABLEKS                       R9 R10 K15 ["getBinding"]
       80 CALL                             R9 0 -1
       81 CALL                             R6 -1 1
       82 GETUPVAL                         R7 7
       83 LOADK                            R8 K16 ["Frame"]
       84 NEWTABLE                         R9 4 0
       86 LOADN                            R10 1
       87 SETTABLEKS                       R10 R9 K17 ["BackgroundTransparency"]
       89 DUPCLOSURE                       R12 K18 [PROTO_4]
       90 NAMECALL                         R10 R6 K19 ["map"]
       92 CALL                             R10 2 1
       93 SETTABLEKS                       R10 R9 K20 ["Position"]
       95 DUPCLOSURE                       R12 K21 [PROTO_5]
       96 NAMECALL                         R10 R6 K19 ["map"]
       98 CALL                             R10 2 1
       99 SETTABLEKS                       R10 R9 K22 ["Size"]
      101 GETUPVAL                         R11 1
      102 GETTABLEKS                       R10 R11 K23 ["Tag"]
      104 LOADK                            R11 K24 ["data-testid=Overlays-RenameBoxOverlay"]
      105 SETTABLE                         R11 R9 R10
      106 DUPTABLE                         R10 K26 [{"RenameBox"}]
      107 GETUPVAL                         R11 7
      108 GETUPVAL                         R12 8
      109 DUPTABLE                         R13 K31 [{"session", "initialText", "onRenameComplete", "onCancel", "iterateRenameBox"}]
      110 GETTABLEKS                       R14 R0 K4 ["session"]
      112 SETTABLEKS                       R14 R13 K4 ["session"]
      114 GETTABLEKS                       R16 R1 K32 ["get"]
      116 CALL                             R16 0 1
      117 GETTABLEKS                       R15 R16 K33 ["datum"]
      119 GETTABLEKS                       R14 R15 K34 ["name"]
      121 SETTABLEKS                       R14 R13 K27 ["initialText"]
      123 SETTABLEKS                       R4 R13 K28 ["onRenameComplete"]
      125 GETTABLEKS                       R14 R2 K6 ["disable"]
      127 SETTABLEKS                       R14 R13 K29 ["onCancel"]
      129 SETTABLEKS                       R5 R13 K30 ["iterateRenameBox"]
      131 CALL                             R11 2 1
      132 SETTABLEKS                       R11 R10 K25 ["RenameBox"]
      134 CALL                             R7 3 -1
      135 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R3 K7 ["ExplorerNodeChildrenMutable"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Util"]
       18 GETTABLEKS                       R3 R4 K8 ["Observable"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K9 ["Parent"]
       25 GETTABLEKS                       R4 R5 K10 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K11 ["Components"]
       32 GETTABLEKS                       R5 R6 K12 ["RenameBox"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R8 R0 K11 ["Components"]
       39 GETTABLEKS                       R7 R8 K13 ["Contexts"]
       41 GETTABLEKS                       R6 R7 K14 ["RenameBoxContext"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K15 ["RpcTypes"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R9 R0 K6 ["Util"]
       53 GETTABLEKS                       R8 R9 K16 ["calculateExplorerNodeWidth"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R10 R0 K6 ["Util"]
       60 GETTABLEKS                       R9 R10 K17 ["getExplorerNodeIndex"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R11 R0 K6 ["Util"]
       67 GETTABLEKS                       R10 R11 K18 ["joinAndMapBindings"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K5 [require]
       72 GETTABLEKS                       R12 R0 K19 ["Hooks"]
       74 GETTABLEKS                       R11 R12 K20 ["useRenameBoxActivity"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K5 [require]
       79 GETTABLEKS                       R13 R0 K19 ["Hooks"]
       81 GETTABLEKS                       R12 R13 K21 ["useVisibleExplorerNodeRange"]
       83 CALL                             R11 1 1
       84 GETTABLEKS                       R12 R3 K22 ["createElement"]
       86 DUPCLOSURE                       R13 K23 [PROTO_6]
       87 CAPTURE                          VAL R10
       88 CAPTURE                          VAL R3
       89 CAPTURE                          VAL R5
       90 CAPTURE                          VAL R8
       91 CAPTURE                          VAL R1
       92 CAPTURE                          VAL R9
       93 CAPTURE                          VAL R7
       94 CAPTURE                          VAL R12
       95 CAPTURE                          VAL R4
       96 RETURN                           R13 1
