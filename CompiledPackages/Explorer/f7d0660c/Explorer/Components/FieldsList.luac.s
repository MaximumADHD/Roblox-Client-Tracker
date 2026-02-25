PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["datum"]
        2 GETTABLEKS                       R2 R3 K1 ["fieldValues"]
        4 JUMPIFNOTEQKNIL                  R2 ; [+2]
        6 LOADB                            R1 0 +1
        7 LOADB                            R1 1
        8 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["token"]
        3 GETTABLE                         R2 R0 R3
        4 JUMPIFEQKB                       R2 TRUE ; [+2]
        6 LOADB                            R1 0 +1
        7 LOADB                            R1 1
        8 RETURN                           R1 1

PROTO_2:
        0 LOADB                            R1 0
        1 GETTABLEKS                       R3 R0 K0 ["datum"]
        3 GETTABLEKS                       R2 R3 K1 ["fieldValues"]
        5 JUMPIFEQKNIL                     R2 ; [+19]
        7 LOADB                            R1 0
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R2 R3 K2 ["token"]
       11 JUMPIFEQKNIL                     R2 ; [+13]
       13 GETTABLEKS                       R4 R0 K0 ["datum"]
       15 GETTABLEKS                       R3 R4 K1 ["fieldValues"]
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R4 R5 K2 ["token"]
       20 GETTABLE                         R2 R3 R4
       21 JUMPIFNOTEQKNIL                  R2 ; [+2]
       23 LOADB                            R1 0 +1
       24 LOADB                            R1 1
       25 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["datum"]
        2 GETTABLEKS                       R1 R2 K1 ["fieldValues"]
        4 JUMPIFNOT                        R1 ; [+12]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R1 R2 K2 ["token"]
        8 JUMPIFNOT                        R1 ; [+8]
        9 GETTABLEKS                       R3 R0 K0 ["datum"]
       11 GETTABLEKS                       R2 R3 K1 ["fieldValues"]
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R3 R4 K2 ["token"]
       16 GETTABLE                         R1 R2 R3
       17 RETURN                           R1 1

PROTO_4:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R3 R4 K0 ["token"]
        4 JUMPIFNOTEQKNIL                  R3 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 FASTCALL2K                       ASSERT R2 K1 ; [+4]
       10 LOADK                            R3 K1 ["Luau"]
       11 GETIMPORT                        R1 K3 [assert]
       13 CALL                             R1 2 0
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R2 R3 K4 ["session"]
       17 GETTABLEKS                       R1 R2 K5 ["performFieldAction"]
       19 GETUPVAL                         R6 1
       20 GETTABLEKS                       R5 R6 K6 ["visibleNodeObservable"]
       22 GETTABLEKS                       R4 R5 K7 ["get"]
       24 CALL                             R4 0 1
       25 GETTABLEKS                       R3 R4 K8 ["datum"]
       27 GETTABLEKS                       R2 R3 K9 ["id"]
       29 GETUPVAL                         R4 0
       30 GETTABLEKS                       R3 R4 K0 ["token"]
       32 MOVE                             R4 R0
       33 GETVARARGS                       R5 -1
       34 CALL                             R1 -1 0
       35 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R3 R0 K0 ["field"]
        2 GETTABLEKS                       R2 R3 K1 ["render"]
        4 JUMPIFNOTEQKNIL                  R2 ; [+3]
        6 LOADNIL                          R2
        7 RETURN                           R2 1
        8 GETUPVAL                         R2 0
        9 LOADK                            R3 K2 ["Frame"]
       10 NEWTABLE                         R4 8 0
       12 GETTABLEKS                       R5 R0 K3 ["token"]
       14 SETTABLEKS                       R5 R4 K4 ["key"]
       16 GETIMPORT                        R5 K8 [Enum.AutomaticSize.X]
       18 SETTABLEKS                       R5 R4 K6 ["AutomaticSize"]
       20 GETUPVAL                         R6 1
       21 CALL                             R6 0 1
       22 JUMPIFNOT                        R6 ; [+14]
       23 GETUPVAL                         R8 2
       24 GETTABLEKS                       R7 R8 K9 ["session"]
       26 GETTABLEKS                       R6 R7 K10 ["seenFieldsObservable"]
       28 GETTABLEKS                       R5 R6 K11 ["getBinding"]
       30 CALL                             R5 0 1
       31 NEWCLOSURE                       R7 P0
       32 CAPTURE                          VAL R0
       33 NAMECALL                         R5 R5 K12 ["map"]
       35 CALL                             R5 2 1
       36 JUMP                             ; [+11]
       37 GETUPVAL                         R7 2
       38 GETTABLEKS                       R6 R7 K13 ["visibleNodeObservable"]
       40 GETTABLEKS                       R5 R6 K11 ["getBinding"]
       42 CALL                             R5 0 1
       43 NEWCLOSURE                       R7 P1
       44 CAPTURE                          VAL R0
       45 NAMECALL                         R5 R5 K12 ["map"]
       47 CALL                             R5 2 1
       48 SETTABLEKS                       R5 R4 K14 ["Visible"]
       50 LOADN                            R5 1
       51 SETTABLEKS                       R5 R4 K15 ["BackgroundTransparency"]
       53 GETUPVAL                         R6 1
       54 CALL                             R6 0 1
       55 JUMPIFNOT                        R6 ; [+7]
       56 GETUPVAL                         R6 3
       57 GETTABLEKS                       R8 R0 K0 ["field"]
       59 GETTABLEKS                       R7 R8 K4 ["key"]
       61 GETTABLE                         R5 R6 R7
       62 JUMP                             ; [+1]
       63 MOVE                             R5 R1
       64 SETTABLEKS                       R5 R4 K16 ["LayoutOrder"]
       66 GETIMPORT                        R5 K19 [UDim2.fromOffset]
       68 GETUPVAL                         R7 4
       69 GETTABLEKS                       R6 R7 K20 ["fieldSize"]
       71 GETUPVAL                         R8 4
       72 GETTABLEKS                       R7 R8 K20 ["fieldSize"]
       74 CALL                             R5 2 1
       75 SETTABLEKS                       R5 R4 K21 ["Size"]
       77 GETUPVAL                         R6 5
       78 GETTABLEKS                       R5 R6 K22 ["Tag"]
       80 LOADK                            R7 K23 ["data-testid=Field-%*"]
       81 GETTABLEKS                       R10 R0 K0 ["field"]
       83 GETTABLEKS                       R9 R10 K4 ["key"]
       85 NAMECALL                         R7 R7 K24 ["format"]
       87 CALL                             R7 2 1
       88 MOVE                             R6 R7
       89 SETTABLE                         R6 R4 R5
       90 GETTABLEKS                       R6 R0 K0 ["field"]
       92 GETTABLEKS                       R5 R6 K1 ["render"]
       94 GETUPVAL                         R8 2
       95 GETTABLEKS                       R7 R8 K13 ["visibleNodeObservable"]
       97 GETTABLEKS                       R6 R7 K11 ["getBinding"]
       99 CALL                             R6 0 1
      100 NEWCLOSURE                       R8 P2
      101 CAPTURE                          VAL R0
      102 NAMECALL                         R6 R6 K12 ["map"]
      104 CALL                             R6 2 1
      105 NEWCLOSURE                       R7 P3
      106 CAPTURE                          VAL R0
      107 CAPTURE                          UPVAL U2
      108 GETTABLEKS                       R8 R0 K25 ["parameters"]
      110 CALL                             R5 3 -1
      111 CALL                             R2 -1 1
      112 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["use"]
        3 GETTABLEKS                       R3 R0 K1 ["session"]
        5 GETTABLEKS                       R2 R3 K2 ["requestedFieldsObservable"]
        7 CALL                             R1 1 1
        8 GETUPVAL                         R2 1
        9 LOADK                            R3 K3 ["Frame"]
       10 NEWTABLE                         R4 4 0
       12 LOADN                            R5 1
       13 SETTABLEKS                       R5 R4 K4 ["BackgroundTransparency"]
       15 GETTABLEKS                       R5 R0 K5 ["layoutOrder"]
       17 SETTABLEKS                       R5 R4 K6 ["LayoutOrder"]
       19 GETUPVAL                         R6 2
       20 GETTABLEKS                       R5 R6 K7 ["Tag"]
       22 GETUPVAL                         R7 3
       23 CALL                             R7 0 1
       24 JUMPIFNOT                        R7 ; [+4]
       25 GETUPVAL                         R7 4
       26 JUMPIFNOT                        R7 ; [+2]
       27 LOADK                            R6 K8 ["X-RowS X-Middle X-Right X-FitX Explorer-SidePadS"]
       28 JUMP                             ; [+1]
       29 LOADK                            R6 K9 ["X-Row X-Middle X-Right X-FitX"]
       30 SETTABLE                         R6 R4 R5
       31 GETTABLEKS                       R6 R0 K10 ["visibleNodeObservable"]
       33 GETTABLEKS                       R5 R6 K11 ["getBinding"]
       35 CALL                             R5 0 1
       36 DUPCLOSURE                       R7 K12 [PROTO_0]
       37 NAMECALL                         R5 R5 K13 ["map"]
       39 CALL                             R5 2 1
       40 SETTABLEKS                       R5 R4 K14 ["Visible"]
       42 GETUPVAL                         R5 5
       43 MOVE                             R6 R1
       44 NEWCLOSURE                       R7 P1
       45 CAPTURE                          UPVAL U1
       46 CAPTURE                          UPVAL U3
       47 CAPTURE                          VAL R0
       48 CAPTURE                          UPVAL U6
       49 CAPTURE                          UPVAL U7
       50 CAPTURE                          UPVAL U2
       51 CALL                             R5 2 -1
       52 CALL                             R2 -1 -1
       53 RETURN                           R2 -1

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
       16 GETTABLEKS                       R4 R0 K8 ["Fields"]
       18 GETTABLEKS                       R3 R4 K9 ["LayoutOrders"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Util"]
       25 GETTABLEKS                       R4 R5 K10 ["Observable"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K11 ["Parent"]
       32 GETTABLEKS                       R5 R6 K12 ["React"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K13 ["RpcTypes"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R8 R0 K14 ["Flags"]
       44 GETTABLEKS                       R7 R8 K15 ["getFFlagExplorerFieldColumns"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R9 R0 K6 ["Util"]
       51 GETTABLEKS                       R8 R9 K16 ["mapValues"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R10 R0 K17 ["Hooks"]
       58 GETTABLEKS                       R9 R10 K18 ["useVisibleExplorerNodeRange"]
       60 CALL                             R8 1 1
       61 GETTABLEKS                       R9 R4 K19 ["createElement"]
       63 GETIMPORT                        R10 K21 [game]
       65 LOADK                            R12 K22 ["ExplorerFieldPadding"]
       66 LOADB                            R13 0
       67 NAMECALL                         R10 R10 K23 ["DefineFastFlag"]
       69 CALL                             R10 3 1
       70 DUPCLOSURE                       R11 K24 [PROTO_6]
       71 CAPTURE                          VAL R3
       72 CAPTURE                          VAL R9
       73 CAPTURE                          VAL R4
       74 CAPTURE                          VAL R6
       75 CAPTURE                          VAL R10
       76 CAPTURE                          VAL R7
       77 CAPTURE                          VAL R2
       78 CAPTURE                          VAL R1
       79 RETURN                           R11 1
