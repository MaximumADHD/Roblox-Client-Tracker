PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["getIndexOfInstanceId"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 1
        5 JUMPIFEQKNIL                     R2 ; [+28]
        7 GETUPVAL                         R4 1
        8 GETUPVAL                         R7 1
        9 GETTABLEKS                       R8 R0 K1 ["furthestSelectedVisibleIndex"]
       11 MUL                              R6 R7 R8
       12 GETUPVAL                         R8 1
       13 MUL                              R7 R8 R2
       14 FASTCALL2                        MATH_MIN R6 R7 ; [+3]
       16 GETIMPORT                        R5 K4 [math.min]
       18 CALL                             R5 2 1
       19 MUL                              R3 R4 R5
       20 SETTABLEKS                       R3 R0 K1 ["furthestSelectedVisibleIndex"]
       22 GETTABLEKS                       R3 R0 K5 ["selectedVisibleIds"]
       24 LOADB                            R4 1
       25 SETTABLE                         R4 R3 R1
       26 GETTABLEKS                       R4 R0 K6 ["selectedVisibleIdsArray"]
       28 FASTCALL2                        TABLE_INSERT R4 R1 ; [+4]
       30 MOVE                             R5 R1
       31 GETIMPORT                        R3 K9 [table.insert]
       33 CALL                             R3 2 0
       34 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["getNthDescendant"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["children"]
        6 MOVE                             R3 R0
        7 CALL                             R1 2 1
        8 JUMPIFNOTEQKNIL                  R1 ; [+2]
       10 LOADB                            R3 0 +1
       11 LOADB                            R3 1
       12 FASTCALL2K                       ASSERT R3 K2 ; [+4]
       14 LOADK                            R4 K2 ["Selected node not found in search root"]
       15 GETIMPORT                        R2 K4 [assert]
       17 CALL                             R2 2 0
       18 GETTABLEKS                       R3 R1 K5 ["datum"]
       20 GETTABLEKS                       R2 R3 K6 ["id"]
       22 GETUPVAL                         R5 2
       23 GETTABLEKS                       R4 R5 K7 ["selectedVisibleIds"]
       25 GETTABLE                         R3 R4 R2
       26 JUMPIF                           R3 ; [+18]
       27 GETUPVAL                         R3 3
       28 JUMPIFEQKNIL                     R3 ; [+5]
       30 GETUPVAL                         R3 3
       31 MOVE                             R4 R2
       32 CALL                             R3 1 1
       33 JUMPIFNOT                        R3 ; [+11]
       34 GETUPVAL                         R3 4
       35 CALL                             R3 0 1
       36 JUMPIFNOT                        R3 ; [+10]
       37 GETUPVAL                         R3 5
       38 CALL                             R3 0 1
       39 JUMPIFNOT                        R3 ; [+7]
       40 GETTABLEKS                       R4 R1 K5 ["datum"]
       42 GETTABLEKS                       R3 R4 K8 ["isGhost"]
       44 JUMPIFNOT                        R3 ; [+2]
       45 LOADB                            R3 0
       46 RETURN                           R3 1
       47 GETUPVAL                         R3 6
       48 JUMPIFNOT                        R3 ; [+20]
       49 GETUPVAL                         R5 2
       50 GETTABLEKS                       R4 R5 K9 ["selectedVisibleIdsArray"]
       52 FASTCALL2                        TABLE_INSERT R4 R2 ; [+4]
       54 MOVE                             R5 R2
       55 GETIMPORT                        R3 K12 [table.insert]
       57 CALL                             R3 2 0
       58 GETUPVAL                         R4 7
       59 GETTABLEKS                       R3 R4 K13 ["selectIds"]
       61 GETIMPORT                        R4 K15 [table.freeze]
       63 GETUPVAL                         R6 2
       64 GETTABLEKS                       R5 R6 K9 ["selectedVisibleIdsArray"]
       66 CALL                             R4 1 -1
       67 CALL                             R3 -1 0
       68 JUMP                             ; [+12]
       69 GETUPVAL                         R4 7
       70 GETTABLEKS                       R3 R4 K13 ["selectIds"]
       72 GETIMPORT                        R4 K15 [table.freeze]
       74 NEWTABLE                         R5 0 1
       76 MOVE                             R6 R2
       77 SETLIST                          R5 R6 1 [1]
       79 CALL                             R4 1 -1
       80 CALL                             R3 -1 0
       81 LOADB                            R3 1
       82 RETURN                           R3 1

PROTO_2:
        0 JUMPIFNOTEQKN                    R0 K0 [0] ; [+2]
        2 RETURN                           R0 0
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R4 R5 K1 ["focusedRootObservable"]
        6 GETTABLEKS                       R3 R4 K2 ["get"]
        8 CALL                             R3 0 1
        9 JUMPIFNOTEQKNIL                  R3 ; [+2]
       11 LOADB                            R5 0 +1
       12 LOADB                            R5 1
       13 FASTCALL2K                       ASSERT R5 K3 ; [+4]
       15 LOADK                            R6 K3 ["No root when selecting next search node"]
       16 GETIMPORT                        R4 K5 [assert]
       18 CALL                             R4 2 0
       19 GETUPVAL                         R4 1
       20 GETUPVAL                         R5 0
       21 CALL                             R4 1 1
       22 JUMPIFNOTEQKN                    R4 K0 [0] ; [+2]
       24 RETURN                           R0 0
       25 FASTCALL1                        MATH_SIGN R0 ; [+3]
       26 MOVE                             R6 R0
       27 GETIMPORT                        R5 K8 [math.sign]
       29 CALL                             R5 1 1
       30 DUPTABLE                         R6 K12 [{"furthestSelectedVisibleIndex", "selectedVisibleIds", "selectedVisibleIdsArray"}]
       31 MUL                              R8 R5 R4
       32 ADDK                             R7 R8 K13 [1]
       33 SETTABLEKS                       R7 R6 K9 ["furthestSelectedVisibleIndex"]
       35 NEWTABLE                         R7 0 0
       37 SETTABLEKS                       R7 R6 K10 ["selectedVisibleIds"]
       39 NEWTABLE                         R7 0 0
       41 SETTABLEKS                       R7 R6 K11 ["selectedVisibleIdsArray"]
       43 GETUPVAL                         R9 0
       44 GETTABLEKS                       R8 R9 K14 ["selectedIdsArrayObservable"]
       46 GETTABLEKS                       R7 R8 K2 ["get"]
       48 CALL                             R7 0 1
       49 GETUPVAL                         R8 2
       50 MOVE                             R9 R7
       51 NEWCLOSURE                       R10 P0
       52 CAPTURE                          UPVAL U0
       53 CAPTURE                          VAL R5
       54 MOVE                             R11 R6
       55 CALL                             R8 3 1
       56 NEWCLOSURE                       R9 P1
       57 CAPTURE                          UPVAL U3
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R8
       60 CAPTURE                          VAL R2
       61 CAPTURE                          UPVAL U4
       62 CAPTURE                          UPVAL U5
       63 CAPTURE                          VAL R1
       64 CAPTURE                          UPVAL U0
       65 GETTABLEKS                       R12 R8 K11 ["selectedVisibleIdsArray"]
       67 LENGTH                           R11 R12
       68 JUMPIFNOTEQKN                    R11 K0 [0] ; [+8]
       70 LOADN                            R11 0
       71 JUMPIFNOTLT                      R5 R11 ; [+3]
       73 MOVE                             R10 R4
       74 JUMP                             ; [+12]
       75 LOADN                            R10 1
       76 JUMP                             ; [+10]
       77 GETTABLEKS                       R12 R8 K9 ["furthestSelectedVisibleIndex"]
       79 ADD                              R11 R12 R0
       80 LOADN                            R12 1
       81 FASTCALL3                        MATH_CLAMP R11 R12 R4
       83 MOVE                             R13 R4
       84 GETIMPORT                        R10 K16 [math.clamp]
       86 CALL                             R10 3 1
       87 LOADN                            R12 0
       88 JUMPIFNOTLT                      R5 R12 ; [+3]
       90 LOADN                            R11 1
       91 JUMP                             ; [+1]
       92 MOVE                             R11 R4
       93 MOVE                             R14 R10
       94 MOVE                             R12 R11
       95 MOVE                             R13 R5
       96 FORNPREP                         R12
       97 MOVE                             R15 R9
       98 MOVE                             R16 R14
       99 CALL                             R15 1 1
      100 JUMPIFNOT                        R15 ; [+1]
      101 RETURN                           R0 0
      102 FORNLOOP                         R12
      103 MOVE                             R14 R10
      104 GETTABLEKS                       R12 R8 K9 ["furthestSelectedVisibleIndex"]
      106 MINUS                            R13 R5
      107 FORNPREP                         R12
      108 MOVE                             R15 R9
      109 MOVE                             R16 R14
      110 CALL                             R15 1 1
      111 JUMPIFNOT                        R15 ; [+1]
      112 RETURN                           R0 0
      113 FORNLOOP                         R12
      114 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useCallback"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          UPVAL U5
       10 NEWTABLE                         R3 0 1
       12 MOVE                             R4 R0
       13 SETLIST                          R3 R4 1 [1]
       15 CALL                             R1 2 1
       16 DUPTABLE                         R2 K2 [{"stepSelectedNode"}]
       17 SETTABLEKS                       R1 R2 K1 ["stepSelectedNode"]
       19 RETURN                           R2 1

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
       16 GETTABLEKS                       R4 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R4 K9 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["RpcTypes"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R6 R0 K11 ["Flags"]
       30 GETTABLEKS                       R5 R6 K12 ["getFFlagExplorerSkipGhosts"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R7 R0 K11 ["Flags"]
       37 GETTABLEKS                       R6 R7 K13 ["getFFlagExplorerStreaming"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R8 R0 K6 ["Util"]
       44 GETTABLEKS                       R7 R8 K14 ["getItemCount"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R9 R0 K6 ["Util"]
       51 GETTABLEKS                       R8 R9 K15 ["reduceList"]
       53 CALL                             R7 1 1
       54 DUPCLOSURE                       R8 K16 [PROTO_3]
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R6
       57 CAPTURE                          VAL R7
       58 CAPTURE                          VAL R1
       59 CAPTURE                          VAL R5
       60 CAPTURE                          VAL R4
       61 RETURN                           R8 1
