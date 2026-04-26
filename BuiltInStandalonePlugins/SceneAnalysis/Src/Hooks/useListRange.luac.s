PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["obs"]
        2 RETURN                           R1 1

PROTO_1:
        0 LOADN                            R1 1
        1 LOADN                            R4 1
        2 GETUPVAL                         R7 0
        3 GETTABLEKS                       R6 R7 K0 ["get"]
        5 CALL                             R6 0 1
        6 GETUPVAL                         R8 1
        7 GETTABLEKS                       R7 R8 K1 ["rowHeight"]
        9 IDIV                             R5 R6 R7
       10 ADD                              R3 R4 R5
       11 GETUPVAL                         R5 2
       12 GETTABLEKS                       R4 R5 K2 ["EXTRA_NODES"]
       14 SUB                              R2 R3 R4
       15 FASTCALL2                        MATH_MAX R1 R2 ; [+3]
       17 GETIMPORT                        R0 K5 [math.max]
       19 CALL                             R0 2 1
       20 LOADN                            R3 1
       21 GETUPVAL                         R1 3
       22 LOADN                            R2 1
       23 FORNPREP                         R1
       24 ADD                              R5 R0 R3
       25 SUBK                             R4 R5 K6 [1]
       26 GETUPVAL                         R6 4
       27 GETTABLEKS                       R5 R6 K7 ["getNodeAtIndex"]
       29 MOVE                             R6 R4
       30 CALL                             R5 1 1
       31 LOADNIL                          R6
       32 JUMPIFNOT                        R5 ; [+25]
       33 GETTABLEKS                       R7 R5 K8 ["node"]
       35 JUMPIFNOT                        R7 ; [+22]
       36 DUPTABLE                         R7 K12 [{"node", "depth", "hasChildren", "yPosition"}]
       37 GETTABLEKS                       R8 R5 K8 ["node"]
       39 SETTABLEKS                       R8 R7 K8 ["node"]
       41 GETTABLEKS                       R8 R5 K9 ["depth"]
       43 SETTABLEKS                       R8 R7 K9 ["depth"]
       45 GETTABLEKS                       R8 R5 K10 ["hasChildren"]
       47 SETTABLEKS                       R8 R7 K10 ["hasChildren"]
       49 SUBK                             R9 R4 K6 [1]
       50 GETUPVAL                         R11 1
       51 GETTABLEKS                       R10 R11 K1 ["rowHeight"]
       53 MUL                              R8 R9 R10
       54 SETTABLEKS                       R8 R7 K11 ["yPosition"]
       56 MOVE                             R6 R7
       57 JUMP                             ; [+1]
       58 GETUPVAL                         R6 5
       59 GETUPVAL                         R8 6
       60 GETTABLE                         R7 R8 R3
       61 JUMPIFNOT                        R7 ; [+11]
       62 GETUPVAL                         R9 6
       63 GETTABLE                         R8 R9 R3
       64 GETTABLEKS                       R7 R8 K13 ["set"]
       66 JUMPIFNOT                        R7 ; [+6]
       67 GETUPVAL                         R9 6
       68 GETTABLE                         R8 R9 R3
       69 GETTABLEKS                       R7 R8 K13 ["set"]
       71 MOVE                             R8 R6
       72 CALL                             R7 1 0
       73 FORNLOOP                         R1
       74 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 NAMECALL                         R5 R4 K0 ["Disconnect"]
        6 CALL                             R5 1 0
        7 FORGLOOP                         R0 2 ; [-4]
        9 RETURN                           R0 0

PROTO_3:
        0 NEWTABLE                         R0 0 0
        2 LOADN                            R3 1
        3 GETUPVAL                         R1 0
        4 LOADN                            R2 1
        5 FORNPREP                         R1
        6 GETUPVAL                         R5 1
        7 GETTABLEKS                       R4 R5 K0 ["create"]
        9 GETUPVAL                         R5 2
       10 CALL                             R4 1 2
       11 DUPTABLE                         R6 K3 [{"obs", "set"}]
       12 SETTABLEKS                       R4 R6 K1 ["obs"]
       14 SETTABLEKS                       R5 R6 K2 ["set"]
       16 SETTABLE                         R6 R0 R3
       17 FORNLOOP                         R1
       18 GETUPVAL                         R1 3
       19 GETUPVAL                         R2 4
       20 MOVE                             R3 R0
       21 DUPCLOSURE                       R4 K4 [PROTO_0]
       22 CALL                             R2 2 -1
       23 CALL                             R1 -1 0
       24 NEWCLOSURE                       R1 P1
       25 CAPTURE                          UPVAL U5
       26 CAPTURE                          UPVAL U6
       27 CAPTURE                          UPVAL U7
       28 CAPTURE                          UPVAL U0
       29 CAPTURE                          UPVAL U8
       30 CAPTURE                          UPVAL U2
       31 CAPTURE                          VAL R0
       32 MOVE                             R2 R1
       33 CALL                             R2 0 0
       34 NEWTABLE                         R2 0 3
       36 GETUPVAL                         R4 5
       37 GETTABLEKS                       R3 R4 K5 ["changedSignal"]
       39 MOVE                             R5 R1
       40 NAMECALL                         R3 R3 K6 ["Connect"]
       42 CALL                             R3 2 1
       43 GETUPVAL                         R6 8
       44 GETTABLEKS                       R5 R6 K7 ["getOrderObservable"]
       46 CALL                             R5 0 1
       47 GETTABLEKS                       R4 R5 K5 ["changedSignal"]
       49 MOVE                             R6 R1
       50 NAMECALL                         R4 R4 K6 ["Connect"]
       52 CALL                             R4 2 1
       53 GETUPVAL                         R7 8
       54 GETTABLEKS                       R6 R7 K8 ["getNodesObservable"]
       56 CALL                             R6 0 1
       57 GETTABLEKS                       R5 R6 K5 ["changedSignal"]
       59 MOVE                             R7 R1
       60 NAMECALL                         R5 R5 K6 ["Connect"]
       62 CALL                             R5 2 -1
       63 SETLIST                          R2 R3 -1 [1]
       65 NEWCLOSURE                       R3 P2
       66 CAPTURE                          VAL R2
       67 RETURN                           R3 1

PROTO_4:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["useState"]
        3 NEWTABLE                         R4 0 0
        5 CALL                             R3 1 2
        6 GETUPVAL                         R9 1
        7 GETTABLEKS                       R8 R9 K1 ["rowHeight"]
        9 DIV                              R7 R1 R8
       10 FASTCALL1                        MATH_CEIL R7 ; [+2]
       11 GETIMPORT                        R6 K4 [math.ceil]
       13 CALL                             R6 1 1
       14 GETUPVAL                         R9 2
       15 GETTABLEKS                       R8 R9 K6 ["EXTRA_NODES"]
       17 MULK                             R7 R8 K5 [2]
       18 ADD                              R5 R6 R7
       19 GETUPVAL                         R7 0
       20 GETTABLEKS                       R6 R7 K7 ["useEffect"]
       22 NEWCLOSURE                       R7 P0
       23 CAPTURE                          VAL R5
       24 CAPTURE                          UPVAL U3
       25 CAPTURE                          UPVAL U4
       26 CAPTURE                          VAL R4
       27 CAPTURE                          UPVAL U5
       28 CAPTURE                          VAL R2
       29 CAPTURE                          UPVAL U1
       30 CAPTURE                          UPVAL U2
       31 CAPTURE                          VAL R0
       32 NEWTABLE                         R8 0 3
       34 MOVE                             R9 R5
       35 MOVE                             R10 R0
       36 MOVE                             R11 R2
       37 SETLIST                          R8 R9 3 [1]
       39 CALL                             R6 2 0
       40 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["SceneAnalysis"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Src"]
       18 GETTABLEKS                       R4 R5 K9 ["Resources"]
       20 GETTABLEKS                       R3 R4 K10 ["StyleConstants"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R6 R0 K8 ["Src"]
       27 GETTABLEKS                       R5 R6 K9 ["Resources"]
       29 GETTABLEKS                       R4 R5 K11 ["Constants"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R7 R0 K8 ["Src"]
       36 GETTABLEKS                       R6 R7 K12 ["Util"]
       38 GETTABLEKS                       R5 R6 K13 ["Observable"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R8 R0 K8 ["Src"]
       45 GETTABLEKS                       R7 R8 K12 ["Util"]
       47 GETTABLEKS                       R6 R7 K14 ["mapValues"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K17 [table.freeze]
       52 DUPTABLE                         R7 K22 [{"node", "depth", "hasChildren", "yPosition"}]
       53 GETIMPORT                        R8 K17 [table.freeze]
       55 DUPTABLE                         R9 K29 [{"Id", "Name", "AssetId", "Size", "ReferenceCount", "TypeKey"}]
       56 LOADK                            R10 K30 ["-1"]
       57 SETTABLEKS                       R10 R9 K23 ["Id"]
       59 GETTABLEKS                       R10 R3 K31 ["NIL_NODE"]
       61 SETTABLEKS                       R10 R9 K24 ["Name"]
       63 LOADK                            R10 K32 [""]
       64 SETTABLEKS                       R10 R9 K25 ["AssetId"]
       66 LOADN                            R10 0
       67 SETTABLEKS                       R10 R9 K26 ["Size"]
       69 LOADN                            R10 0
       70 SETTABLEKS                       R10 R9 K27 ["ReferenceCount"]
       72 LOADK                            R10 K32 [""]
       73 SETTABLEKS                       R10 R9 K28 ["TypeKey"]
       75 CALL                             R8 1 1
       76 SETTABLEKS                       R8 R7 K18 ["node"]
       78 LOADN                            R8 0
       79 SETTABLEKS                       R8 R7 K19 ["depth"]
       81 LOADB                            R8 0
       82 SETTABLEKS                       R8 R7 K20 ["hasChildren"]
       84 LOADN                            R8 24
       85 SETTABLEKS                       R8 R7 K21 ["yPosition"]
       87 CALL                             R6 1 1
       88 DUPCLOSURE                       R7 K33 [PROTO_4]
       89 CAPTURE                          VAL R1
       90 CAPTURE                          VAL R2
       91 CAPTURE                          VAL R3
       92 CAPTURE                          VAL R4
       93 CAPTURE                          VAL R6
       94 CAPTURE                          VAL R5
       95 RETURN                           R7 1
