PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["datum"]
        2 GETTABLEKS                       R2 R2 K1 ["fieldValues"]
        4 JUMPIFNOTEQKNIL                  R2 ; [+2]
        6 LOADB                            R1 0 +1
        7 LOADB                            R1 1
        8 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["token"]
        3 GETTABLE                         R2 R0 R3
        4 JUMPIFEQKB                       R2 TRUE ; [+2]
        6 LOADB                            R1 0 +1
        7 LOADB                            R1 1
        8 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["datum"]
        2 GETTABLEKS                       R1 R1 K1 ["fieldValues"]
        4 JUMPIFNOT                        R1 ; [+12]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K2 ["token"]
        8 JUMPIFNOT                        R1 ; [+8]
        9 GETTABLEKS                       R2 R0 K0 ["datum"]
       11 GETTABLEKS                       R2 R2 K1 ["fieldValues"]
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R3 R3 K2 ["token"]
       16 GETTABLE                         R1 R2 R3
       17 RETURN                           R1 1

PROTO_3:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K0 ["token"]
        4 JUMPIFNOTEQKNIL                  R3 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 FASTCALL2K                       ASSERT R2 K1 ; [+4]
       10 LOADK                            R3 K1 ["Luau"]
       11 GETIMPORT                        R1 K3 [assert]
       13 CALL                             R1 2 0
       14 GETUPVAL                         R1 1
       15 GETTABLEKS                       R1 R1 K4 ["session"]
       17 GETTABLEKS                       R1 R1 K5 ["performFieldAction"]
       19 GETUPVAL                         R2 1
       20 GETTABLEKS                       R2 R2 K6 ["visibleNodeObservable"]
       22 GETTABLEKS                       R2 R2 K7 ["get"]
       24 CALL                             R2 0 1
       25 GETTABLEKS                       R2 R2 K8 ["datum"]
       27 GETTABLEKS                       R2 R2 K9 ["id"]
       29 GETUPVAL                         R3 0
       30 GETTABLEKS                       R3 R3 K0 ["token"]
       32 MOVE                             R4 R0
       33 GETVARARGS                       R5 -1
       34 CALL                             R1 -1 0
       35 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["selectionState"]
        2 RETURN                           R1 1

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["field"]
        2 GETTABLEKS                       R2 R2 K1 ["render"]
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
       20 GETUPVAL                         R5 1
       21 GETTABLEKS                       R5 R5 K9 ["session"]
       23 GETTABLEKS                       R5 R5 K10 ["seenFieldsObservable"]
       25 GETTABLEKS                       R5 R5 K11 ["getBinding"]
       27 CALL                             R5 0 1
       28 NEWCLOSURE                       R7 P0
       29 CAPTURE                          VAL R0
       30 NAMECALL                         R5 R5 K12 ["map"]
       32 CALL                             R5 2 1
       33 SETTABLEKS                       R5 R4 K13 ["Visible"]
       35 LOADN                            R5 1
       36 SETTABLEKS                       R5 R4 K14 ["BackgroundTransparency"]
       38 GETUPVAL                         R6 2
       39 GETTABLEKS                       R7 R0 K0 ["field"]
       41 GETTABLEKS                       R7 R7 K4 ["key"]
       43 GETTABLE                         R5 R6 R7
       44 SETTABLEKS                       R5 R4 K15 ["LayoutOrder"]
       46 GETIMPORT                        R5 K18 [UDim2.fromOffset]
       48 GETUPVAL                         R6 3
       49 GETTABLEKS                       R6 R6 K19 ["fieldSize"]
       51 GETUPVAL                         R7 3
       52 GETTABLEKS                       R7 R7 K19 ["fieldSize"]
       54 CALL                             R5 2 1
       55 SETTABLEKS                       R5 R4 K20 ["Size"]
       57 GETUPVAL                         R5 4
       58 GETTABLEKS                       R5 R5 K21 ["Tag"]
       60 LOADK                            R7 K22 ["data-testid=Field-%*"]
       61 GETTABLEKS                       R9 R0 K0 ["field"]
       63 GETTABLEKS                       R9 R9 K4 ["key"]
       65 NAMECALL                         R7 R7 K23 ["format"]
       67 CALL                             R7 2 1
       68 MOVE                             R6 R7
       69 SETTABLE                         R6 R4 R5
       70 GETTABLEKS                       R5 R0 K0 ["field"]
       72 GETTABLEKS                       R5 R5 K1 ["render"]
       74 GETUPVAL                         R6 1
       75 GETTABLEKS                       R6 R6 K24 ["visibleNodeObservable"]
       77 GETTABLEKS                       R6 R6 K11 ["getBinding"]
       79 CALL                             R6 0 1
       80 NEWCLOSURE                       R8 P1
       81 CAPTURE                          VAL R0
       82 NAMECALL                         R6 R6 K12 ["map"]
       84 CALL                             R6 2 1
       85 NEWCLOSURE                       R7 P2
       86 CAPTURE                          VAL R0
       87 CAPTURE                          UPVAL U1
       88 GETUPVAL                         R8 1
       89 GETTABLEKS                       R8 R8 K24 ["visibleNodeObservable"]
       91 GETTABLEKS                       R8 R8 K11 ["getBinding"]
       93 CALL                             R8 0 1
       94 DUPCLOSURE                       R10 K25 [PROTO_4]
       95 NAMECALL                         R8 R8 K12 ["map"]
       97 CALL                             R8 2 -1
       98 CALL                             R5 -1 -1
       99 CALL                             R2 -1 1
      100 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 GETTABLEKS                       R2 R0 K1 ["session"]
        5 GETTABLEKS                       R2 R2 K2 ["requestedFieldsObservable"]
        7 CALL                             R1 1 1
        8 GETUPVAL                         R2 1
        9 LOADK                            R3 K3 ["Frame"]
       10 NEWTABLE                         R4 4 0
       12 LOADN                            R5 1
       13 SETTABLEKS                       R5 R4 K4 ["BackgroundTransparency"]
       15 GETTABLEKS                       R5 R0 K5 ["layoutOrder"]
       17 SETTABLEKS                       R5 R4 K6 ["LayoutOrder"]
       19 GETUPVAL                         R5 2
       20 GETTABLEKS                       R5 R5 K7 ["Tag"]
       22 LOADK                            R6 K8 ["X-RowS X-Middle X-Right X-FitX Explorer-SidePadS"]
       23 SETTABLE                         R6 R4 R5
       24 GETTABLEKS                       R5 R0 K9 ["visibleNodeObservable"]
       26 GETTABLEKS                       R5 R5 K10 ["getBinding"]
       28 CALL                             R5 0 1
       29 DUPCLOSURE                       R7 K11 [PROTO_0]
       30 NAMECALL                         R5 R5 K12 ["map"]
       32 CALL                             R5 2 1
       33 SETTABLEKS                       R5 R4 K13 ["Visible"]
       35 GETUPVAL                         R5 3
       36 MOVE                             R6 R1
       37 NEWCLOSURE                       R7 P1
       38 CAPTURE                          UPVAL U1
       39 CAPTURE                          VAL R0
       40 CAPTURE                          UPVAL U4
       41 CAPTURE                          UPVAL U5
       42 CAPTURE                          UPVAL U2
       43 CALL                             R5 2 -1
       44 CALL                             R2 -1 -1
       45 RETURN                           R2 -1

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
       16 GETTABLEKS                       R3 R0 K8 ["Fields"]
       18 GETTABLEKS                       R3 R3 K9 ["LayoutOrders"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Util"]
       25 GETTABLEKS                       R4 R4 K10 ["Observable"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["Parent"]
       32 GETTABLEKS                       R5 R5 K12 ["React"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K13 ["RpcTypes"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K6 ["Util"]
       44 GETTABLEKS                       R7 R7 K14 ["mapValues"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R8 R0 K15 ["Hooks"]
       51 GETTABLEKS                       R8 R8 K16 ["useVisibleExplorerNodeRange"]
       53 CALL                             R7 1 1
       54 GETTABLEKS                       R8 R4 K17 ["createElement"]
       56 DUPCLOSURE                       R9 K18 [PROTO_6]
       57 CAPTURE                          VAL R3
       58 CAPTURE                          VAL R8
       59 CAPTURE                          VAL R4
       60 CAPTURE                          VAL R6
       61 CAPTURE                          VAL R2
       62 CAPTURE                          VAL R1
       63 RETURN                           R9 1
