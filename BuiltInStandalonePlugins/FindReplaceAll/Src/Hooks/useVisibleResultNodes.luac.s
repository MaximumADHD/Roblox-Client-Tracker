PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K0 ["get"]
        5 CALL                             R1 0 1
        6 LOADN                            R3 1
        7 LOADN                            R6 1
        8 GETUPVAL                         R9 1
        9 GETTABLEKS                       R8 R9 K0 ["get"]
       11 CALL                             R8 0 1
       12 GETUPVAL                         R10 2
       13 GETTABLEKS                       R9 R10 K1 ["resultRowHeight"]
       15 IDIV                             R7 R8 R9
       16 ADD                              R5 R6 R7
       17 GETUPVAL                         R7 3
       18 GETTABLEKS                       R6 R7 K2 ["EXTRA_NODES"]
       20 SUB                              R4 R5 R6
       21 FASTCALL2                        MATH_MAX R3 R4 ; [+3]
       23 GETIMPORT                        R2 K5 [math.max]
       25 CALL                             R2 2 1
       26 MOVE                             R5 R2
       27 GETUPVAL                         R7 4
       28 ADD                              R6 R2 R7
       29 SUBK                             R3 R6 K6 [1]
       30 LOADN                            R4 1
       31 FORNPREP                         R3
       32 JUMPIFNOT                        R1 ; [+4]
       33 GETTABLE                         R7 R1 R5
       34 JUMPIFNOT                        R7 ; [+2]
       35 GETTABLE                         R6 R1 R5
       36 JUMP                             ; [+1]
       37 LOADNIL                          R6
       38 JUMPIFNOTEQKNIL                  R6 ; [+9]
       40 GETUPVAL                         R9 5
       41 FASTCALL2                        TABLE_INSERT R0 R9 ; [+4]
       43 MOVE                             R8 R0
       44 GETIMPORT                        R7 K9 [table.insert]
       46 CALL                             R7 2 0
       47 JUMP                             ; [+19]
       48 DUPTABLE                         R7 K12 [{"datum", "yPosition"}]
       49 SETTABLEKS                       R6 R7 K10 ["datum"]
       51 SUBK                             R9 R5 K6 [1]
       52 GETUPVAL                         R11 2
       53 GETTABLEKS                       R10 R11 K1 ["resultRowHeight"]
       55 MUL                              R8 R9 R10
       56 SETTABLEKS                       R8 R7 K11 ["yPosition"]
       58 MOVE                             R9 R0
       59 GETIMPORT                        R10 K14 [table.freeze]
       61 MOVE                             R11 R7
       62 CALL                             R10 1 -1
       63 FASTCALL                         TABLE_INSERT ; [+2]
       64 GETIMPORT                        R8 K9 [table.insert]
       66 CALL                             R8 -1 0
       67 FORNLOOP                         R3
       68 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["observable"]
        2 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 LENGTH                           R3 R0
        3 GETUPVAL                         R4 1
        4 JUMPIFEQ                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 FASTCALL2K                       ASSERT R2 K0 ; [+4]
       10 LOADK                            R3 K0 ["Amount of visible nodes changed"]
       11 GETIMPORT                        R1 K2 [assert]
       13 CALL                             R1 2 0
       14 NEWTABLE                         R1 0 0
       16 MOVE                             R2 R0
       17 LOADNIL                          R3
       18 LOADNIL                          R4
       19 FORGPREP                         R2
       20 GETTABLEKS                       R8 R6 K3 ["datum"]
       22 GETTABLEKS                       R7 R8 K4 ["id"]
       24 GETUPVAL                         R9 2
       25 GETTABLEKS                       R8 R9 K5 ["nilId"]
       27 JUMPIFEQ                         R7 R8 ; [+11]
       29 GETTABLEKS                       R10 R6 K3 ["datum"]
       31 GETTABLEKS                       R9 R10 K4 ["id"]
       33 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       35 MOVE                             R8 R1
       36 GETIMPORT                        R7 K8 [table.insert]
       38 CALL                             R7 2 0
       39 GETUPVAL                         R9 3
       40 GETTABLE                         R8 R9 R5
       41 GETTABLEKS                       R7 R8 K9 ["set"]
       43 MOVE                             R8 R6
       44 CALL                             R7 1 0
       45 FORGLOOP                         R2 2 ; [-26]
       47 GETUPVAL                         R3 4
       48 GETTABLEKS                       R2 R3 K10 ["setViewingInstances"]
       50 MOVE                             R3 R1
       51 CALL                             R2 1 0
       52 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 NAMECALL                         R5 R4 K0 ["Disconnect"]
        6 CALL                             R5 1 0
        7 FORGLOOP                         R0 2 ; [-4]
        9 RETURN                           R0 0

PROTO_4:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          UPVAL U5
        7 MOVE                             R1 R0
        8 CALL                             R1 0 1
        9 NEWTABLE                         R2 0 0
       11 NEWTABLE                         R3 0 0
       13 MOVE                             R4 R1
       14 LOADNIL                          R5
       15 LOADNIL                          R6
       16 FORGPREP                         R4
       17 GETTABLEKS                       R10 R8 K0 ["datum"]
       19 GETTABLEKS                       R9 R10 K1 ["id"]
       21 GETUPVAL                         R11 3
       22 GETTABLEKS                       R10 R11 K2 ["nilId"]
       24 JUMPIFEQ                         R9 R10 ; [+11]
       26 GETTABLEKS                       R12 R8 K0 ["datum"]
       28 GETTABLEKS                       R11 R12 K1 ["id"]
       30 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       32 MOVE                             R10 R3
       33 GETIMPORT                        R9 K5 [table.insert]
       35 CALL                             R9 2 0
       36 GETUPVAL                         R10 6
       37 GETTABLEKS                       R9 R10 K6 ["create"]
       39 MOVE                             R10 R8
       40 CALL                             R9 1 2
       41 DUPTABLE                         R11 K9 [{"observable", "set"}]
       42 SETTABLEKS                       R9 R11 K7 ["observable"]
       44 SETTABLEKS                       R10 R11 K8 ["set"]
       46 SETTABLE                         R11 R2 R7
       47 FORGLOOP                         R4 2 ; [-31]
       49 LENGTH                           R6 R1
       50 LENGTH                           R7 R2
       51 JUMPIFEQ                         R6 R7 ; [+2]
       53 LOADB                            R5 0 +1
       54 LOADB                            R5 1
       55 FASTCALL2K                       ASSERT R5 K10 ; [+4]
       57 LOADK                            R6 K10 ["ASSERT"]
       58 GETIMPORT                        R4 K12 [assert]
       60 CALL                             R4 2 0
       61 GETUPVAL                         R5 7
       62 GETTABLEKS                       R4 R5 K13 ["setViewingInstances"]
       64 MOVE                             R5 R3
       65 CALL                             R4 1 0
       66 GETUPVAL                         R4 8
       67 GETUPVAL                         R5 9
       68 MOVE                             R6 R2
       69 DUPCLOSURE                       R7 K14 [PROTO_1]
       70 CALL                             R5 2 -1
       71 CALL                             R4 -1 0
       72 NEWCLOSURE                       R4 P2
       73 CAPTURE                          VAL R0
       74 CAPTURE                          UPVAL U4
       75 CAPTURE                          UPVAL U3
       76 CAPTURE                          VAL R2
       77 CAPTURE                          UPVAL U7
       78 NEWTABLE                         R5 0 4
       80 GETUPVAL                         R7 10
       81 GETTABLEKS                       R6 R7 K15 ["changedSignal"]
       83 MOVE                             R8 R4
       84 NAMECALL                         R6 R6 K16 ["Connect"]
       86 CALL                             R6 2 1
       87 GETUPVAL                         R8 11
       88 GETTABLEKS                       R7 R8 K15 ["changedSignal"]
       90 MOVE                             R9 R4
       91 NAMECALL                         R7 R7 K16 ["Connect"]
       93 CALL                             R7 2 1
       94 GETUPVAL                         R9 1
       95 GETTABLEKS                       R8 R9 K15 ["changedSignal"]
       97 MOVE                             R10 R4
       98 NAMECALL                         R8 R8 K16 ["Connect"]
      100 CALL                             R8 2 1
      101 GETUPVAL                         R10 0
      102 GETTABLEKS                       R9 R10 K15 ["changedSignal"]
      104 MOVE                             R11 R4
      105 NAMECALL                         R9 R9 K16 ["Connect"]
      107 CALL                             R9 2 -1
      108 SETLIST                          R5 R6 -1 [1]
      110 NEWCLOSURE                       R6 P3
      111 CAPTURE                          VAL R5
      112 RETURN                           R6 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 NEWTABLE                         R2 0 0
        5 CALL                             R1 1 2
        6 GETTABLEKS                       R6 R0 K1 ["windowHeight"]
        8 GETUPVAL                         R8 1
        9 GETTABLEKS                       R7 R8 K2 ["resultRowHeight"]
       11 DIV                              R5 R6 R7
       12 FASTCALL1                        MATH_CEIL R5 ; [+2]
       13 GETIMPORT                        R4 K5 [math.ceil]
       15 CALL                             R4 1 1
       16 GETUPVAL                         R7 2
       17 GETTABLEKS                       R6 R7 K7 ["EXTRA_NODES"]
       19 MULK                             R5 R6 K6 [2]
       20 ADD                              R3 R4 R5
       21 GETTABLEKS                       R5 R0 K8 ["resultManager"]
       23 GETTABLEKS                       R4 R5 K9 ["hoveredObservable"]
       25 GETTABLEKS                       R6 R0 K8 ["resultManager"]
       27 GETTABLEKS                       R5 R6 K10 ["selectedObservable"]
       29 GETTABLEKS                       R7 R0 K8 ["resultManager"]
       31 GETTABLEKS                       R6 R7 K11 ["resultsObservable"]
       33 GETTABLEKS                       R8 R0 K8 ["resultManager"]
       35 GETTABLEKS                       R7 R8 K12 ["scrollHeightObservable"]
       37 GETUPVAL                         R9 0
       38 GETTABLEKS                       R8 R9 K13 ["useEffect"]
       40 NEWCLOSURE                       R9 P0
       41 CAPTURE                          VAL R6
       42 CAPTURE                          VAL R7
       43 CAPTURE                          UPVAL U1
       44 CAPTURE                          UPVAL U2
       45 CAPTURE                          VAL R3
       46 CAPTURE                          UPVAL U3
       47 CAPTURE                          UPVAL U4
       48 CAPTURE                          VAL R0
       49 CAPTURE                          VAL R2
       50 CAPTURE                          UPVAL U5
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R5
       53 NEWTABLE                         R10 0 6
       55 MOVE                             R11 R3
       56 MOVE                             R12 R4
       57 MOVE                             R13 R5
       58 MOVE                             R14 R6
       59 MOVE                             R15 R7
       60 GETTABLEKS                       R16 R0 K14 ["setViewingInstances"]
       62 SETLIST                          R10 R11 6 [1]
       64 CALL                             R8 2 0
       65 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["FindReplaceAll"]
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
       27 GETTABLEKS                       R5 R6 K11 ["Util"]
       29 GETTABLEKS                       R4 R5 K12 ["Constants"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R7 R0 K8 ["Src"]
       36 GETTABLEKS                       R6 R7 K11 ["Util"]
       38 GETTABLEKS                       R5 R6 K13 ["Observable"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R8 R0 K8 ["Src"]
       45 GETTABLEKS                       R7 R8 K11 ["Util"]
       47 GETTABLEKS                       R6 R7 K14 ["mapValues"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R8 R0 K8 ["Src"]
       54 GETTABLEKS                       R7 R8 K15 ["Types"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K18 [table.freeze]
       59 DUPTABLE                         R8 K21 [{"datum", "yPosition"}]
       60 GETIMPORT                        R9 K18 [table.freeze]
       62 DUPTABLE                         R10 K26 [{"id", "text", "guid", "isFile"}]
       63 GETTABLEKS                       R11 R3 K27 ["nilId"]
       65 SETTABLEKS                       R11 R10 K22 ["id"]
       67 LOADK                            R11 K28 [""]
       68 SETTABLEKS                       R11 R10 K23 ["text"]
       70 LOADK                            R11 K28 [""]
       71 SETTABLEKS                       R11 R10 K24 ["guid"]
       73 LOADB                            R11 0
       74 SETTABLEKS                       R11 R10 K25 ["isFile"]
       76 CALL                             R9 1 1
       77 SETTABLEKS                       R9 R8 K19 ["datum"]
       79 LOADN                            R9 24
       80 SETTABLEKS                       R9 R8 K20 ["yPosition"]
       82 CALL                             R7 1 1
       83 DUPCLOSURE                       R8 K29 [PROTO_5]
       84 CAPTURE                          VAL R1
       85 CAPTURE                          VAL R2
       86 CAPTURE                          VAL R3
       87 CAPTURE                          VAL R7
       88 CAPTURE                          VAL R4
       89 CAPTURE                          VAL R5
       90 RETURN                           R8 1
