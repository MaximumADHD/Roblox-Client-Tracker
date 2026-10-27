PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["deferredEffects"]
        2 LENGTH                           R1 R2
        3 LOADN                            R2 0
        4 JUMPIFNOTLT                      R2 R1 ; [+22]
        6 GETTABLEKS                       R1 R0 K0 ["deferredEffects"]
        8 LOADNIL                          R2
        9 LOADNIL                          R3
       10 FORGPREP                         R1
       11 GETTABLEKS                       R6 R0 K1 ["api"]
       13 GETTABLEKS                       R6 R6 K2 ["createEffect"]
       15 GETTABLEKS                       R7 R5 K3 ["fn"]
       17 GETTABLEKS                       R8 R5 K4 ["debugName"]
       19 CALL                             R6 2 0
       20 FORGLOOP                         R1 2 ; [-10]
       22 GETIMPORT                        R1 K7 [table.clear]
       24 GETTABLEKS                       R2 R0 K0 ["deferredEffects"]
       26 CALL                             R1 1 0
       27 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["templateAst"]
        3 GETTABLEKS                       R1 R1 K1 ["mountEffect"]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K2 ["context"]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K3 ["api"]
       11 GETUPVAL                         R4 1
       12 MOVE                             R5 R0
       13 CALL                             R1 4 -1
       14 RETURN                           R1 -1

PROTO_2:
        0 LOADB                            R2 1
        1 SETTABLEKS                       R2 R1 K0 ["mounted"]
        3 GETTABLEKS                       R2 R1 K1 ["templateAst"]
        5 GETTABLEKS                       R2 R2 K2 ["children"]
        7 LOADNIL                          R3
        8 LOADNIL                          R4
        9 FORGPREP                         R2
       10 GETTABLEKS                       R7 R6 K3 ["type"]
       12 JUMPIFNOTEQKS                    R7 K4 ["Instance"] ; [+47]
       14 GETTABLEKS                       R7 R6 K5 ["className"]
       16 JUMPIFEQKS                       R7 K6 ["ModuleScript"] ; [+82]
       18 GETUPVAL                         R7 0
       19 MOVE                             R8 R0
       20 MOVE                             R9 R1
       21 MOVE                             R10 R6
       22 CALL                             R7 3 1
       23 GETTABLEKS                       R8 R6 K7 ["params"]
       25 GETTABLEKS                       R8 R8 K8 ["LayoutOrder"]
       27 JUMPIFNOTEQKNIL                  R8 ; [+19]
       29 LOADK                            R10 K9 ["GuiObject"]
       30 NAMECALL                         R8 R7 K10 ["IsA"]
       32 CALL                             R8 2 1
       33 JUMPIFNOT                        R8 ; [+13]
       34 GETTABLEKS                       R9 R1 K11 ["childOrder"]
       36 LOADN                            R10 0
       37 JUMPIFNOTLT                      R10 R9 ; [+6]
       39 GETTABLEKS                       R10 R1 K11 ["childOrder"]
       41 ADD                              R9 R10 R5
       42 SUBK                             R8 R9 K12 [1]
       43 JUMP                             ; [+1]
       44 MOVE                             R8 R5
       45 SETTABLEKS                       R8 R7 K8 ["LayoutOrder"]
       47 GETTABLEKS                       R8 R1 K13 ["host"]
       49 SETTABLEKS                       R8 R7 K14 ["Parent"]
       51 GETTABLEKS                       R9 R1 K2 ["children"]
       53 FASTCALL2                        TABLE_INSERT R9 R7 ; [+4]
       55 MOVE                             R10 R7
       56 GETIMPORT                        R8 K17 [table.insert]
       58 CALL                             R8 2 0
       59 JUMP                             ; [+39]
       60 GETTABLEKS                       R7 R6 K3 ["type"]
       62 JUMPIFNOTEQKS                    R7 K18 ["Ref"] ; [+36]
       64 GETTABLEKS                       R8 R1 K19 ["dynamic"]
       66 JUMPIFNOT                        R8 ; [+2]
       67 LOADNIL                          R7
       68 JUMP                             ; [+2]
       69 GETTABLEKS                       R7 R1 K20 ["context"]
       71 GETUPVAL                         R8 1
       72 MOVE                             R9 R0
       73 MOVE                             R10 R6
       74 GETTABLEKS                       R11 R1 K13 ["host"]
       76 MOVE                             R12 R1
       77 MOVE                             R13 R7
       78 MOVE                             R14 R5
       79 CALL                             R8 6 1
       80 MOVE                             R9 R0
       81 MOVE                             R10 R8
       82 CALL                             R9 1 0
       83 GETTABLEKS                       R10 R1 K2 ["children"]
       85 FASTCALL2                        TABLE_INSERT R10 R8 ; [+4]
       87 MOVE                             R11 R8
       88 GETIMPORT                        R9 K17 [table.insert]
       90 CALL                             R9 2 0
       91 GETTABLEKS                       R10 R1 K21 ["elements"]
       93 FASTCALL2                        TABLE_INSERT R10 R8 ; [+4]
       95 MOVE                             R11 R8
       96 GETIMPORT                        R9 K17 [table.insert]
       98 CALL                             R9 2 0
       99 FORGLOOP                         R2 2 ; [-90]
      101 GETTABLEKS                       R2 R1 K1 ["templateAst"]
      103 GETTABLEKS                       R2 R2 K22 ["mountEffect"]
      105 JUMPIFNOT                        R2 ; [+10]
      106 NEWTABLE                         R2 0 0
      108 GETTABLEKS                       R3 R1 K23 ["api"]
      110 GETTABLEKS                       R3 R3 K24 ["createEffect"]
      112 NEWCLOSURE                       R4 P0
      113 CAPTURE                          VAL R1
      114 CAPTURE                          VAL R2
      115 CALL                             R3 1 0
      116 GETTABLEKS                       R3 R1 K25 ["deferredEffects"]
      118 LENGTH                           R2 R3
      119 LOADN                            R3 0
      120 JUMPIFNOTLT                      R3 R2 ; [+9]
      122 GETTABLEKS                       R3 R1 K21 ["elements"]
      124 LENGTH                           R2 R3
      125 JUMPIFNOTEQKN                    R2 K26 [0] ; [+4]
      127 GETUPVAL                         R2 2
      128 MOVE                             R3 R1
      129 CALL                             R2 1 0
      130 RETURN                           R0 0

PROTO_3:
        0 LOADB                            R2 0
        1 SETTABLEKS                       R2 R1 K0 ["mounted"]
        3 GETTABLEKS                       R2 R1 K1 ["children"]
        5 LOADNIL                          R3
        6 LOADNIL                          R4
        7 FORGPREP                         R2
        8 FASTCALL1                        TYPEOF R6 ; [+3]
        9 MOVE                             R8 R6
       10 GETIMPORT                        R7 K3 [typeof]
       12 CALL                             R7 1 1
       13 JUMPIFNOTEQKS                    R7 K4 ["Instance"] ; [+4]
       15 NAMECALL                         R7 R6 K5 ["Destroy"]
       17 CALL                             R7 1 0
       18 FORGLOOP                         R2 2 ; [-11]
       20 GETTABLEKS                       R2 R1 K6 ["elements"]
       22 LOADNIL                          R3
       23 LOADNIL                          R4
       24 FORGPREP                         R2
       25 LOADB                            R7 0
       26 SETTABLEKS                       R7 R6 K7 ["alive"]
       28 MOVE                             R7 R0
       29 MOVE                             R8 R6
       30 CALL                             R7 1 0
       31 FORGLOOP                         R2 2 ; [-7]
       33 GETTABLEKS                       R2 R1 K8 ["disposal"]
       35 LOADNIL                          R3
       36 LOADNIL                          R4
       37 FORGPREP                         R2
       38 MOVE                             R7 R6
       39 CALL                             R7 0 0
       40 FORGLOOP                         R2 2 ; [-3]
       42 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R2 R1 K0 ["alive"]
        2 JUMPIF                           R2 ; [+8]
        3 GETTABLEKS                       R2 R1 K1 ["mounted"]
        5 JUMPIFNOT                        R2 ; [+4]
        6 GETUPVAL                         R2 0
        7 MOVE                             R3 R0
        8 MOVE                             R4 R1
        9 CALL                             R2 2 0
       10 RETURN                           R0 0
       11 GETTABLEKS                       R2 R1 K1 ["mounted"]
       13 JUMPIF                           R2 ; [+4]
       14 GETUPVAL                         R2 1
       15 MOVE                             R3 R0
       16 MOVE                             R4 R1
       17 CALL                             R2 2 0
       18 GETTABLEKS                       R2 R1 K2 ["dirty"]
       20 JUMPIFNOT                        R2 ; [+26]
       21 GETTABLEKS                       R2 R1 K3 ["effects"]
       23 LOADNIL                          R3
       24 LOADNIL                          R4
       25 FORGPREP                         R2
       26 GETTABLEKS                       R8 R1 K4 ["effectsDirty"]
       28 GETTABLE                         R7 R8 R6
       29 JUMPIFNOT                        R7 ; [+15]
       30 GETTABLEKS                       R7 R1 K4 ["effectsDirty"]
       32 LOADB                            R8 0
       33 SETTABLE                         R8 R7 R6
       34 GETIMPORT                        R7 K6 [pcall]
       36 MOVE                             R8 R6
       37 CALL                             R7 1 2
       38 JUMPIF                           R7 ; [+6]
       39 GETUPVAL                         R9 2
       40 GETTABLEKS                       R9 R9 K7 ["warn"]
       42 LOADK                            R10 K8 ["Blox: Error occurred while flushing effect"]
       43 MOVE                             R11 R8
       44 CALL                             R9 2 0
       45 FORGLOOP                         R2 2 ; [-20]
       47 LOADB                            R2 0
       48 SETTABLEKS                       R2 R1 K2 ["dirty"]
       50 GETTABLEKS                       R2 R1 K9 ["parent"]
       52 JUMPIFNOT                        R2 ; [+28]
       53 GETTABLEKS                       R3 R1 K9 ["parent"]
       55 GETTABLEKS                       R3 R3 K10 ["deferredEffects"]
       57 LENGTH                           R2 R3
       58 LOADN                            R3 0
       59 JUMPIFNOTLT                      R3 R2 ; [+21]
       61 LOADB                            R2 1
       62 GETTABLEKS                       R3 R1 K9 ["parent"]
       64 GETTABLEKS                       R3 R3 K11 ["elements"]
       66 LOADNIL                          R4
       67 LOADNIL                          R5
       68 FORGPREP                         R3
       69 GETTABLEKS                       R8 R7 K1 ["mounted"]
       71 JUMPIF                           R8 ; [+2]
       72 LOADB                            R2 0
       73 JUMP                             ; [+2]
       74 FORGLOOP                         R3 2 ; [-6]
       76 JUMPIFNOT                        R2 ; [+4]
       77 GETUPVAL                         R3 3
       78 GETTABLEKS                       R4 R1 K9 ["parent"]
       80 CALL                             R3 1 0
       81 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Debug"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R3 R0 K6 ["types"]
       16 CALL                             R2 1 1
       17 GETIMPORT                        R3 K4 [require]
       19 GETTABLEKS                       R4 R0 K7 ["runtime"]
       21 GETTABLEKS                       R4 R4 K8 ["makeElement"]
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K4 [require]
       26 GETTABLEKS                       R5 R0 K7 ["runtime"]
       28 GETTABLEKS                       R5 R5 K9 ["createInstance"]
       30 CALL                             R4 1 1
       31 DUPCLOSURE                       R5 K10 [PROTO_0]
       32 DUPCLOSURE                       R6 K11 [PROTO_2]
       33 CAPTURE                          VAL R4
       34 CAPTURE                          VAL R3
       35 CAPTURE                          VAL R5
       36 DUPCLOSURE                       R7 K12 [PROTO_3]
       37 DUPCLOSURE                       R8 K13 [PROTO_4]
       38 CAPTURE                          VAL R7
       39 CAPTURE                          VAL R6
       40 CAPTURE                          VAL R1
       41 CAPTURE                          VAL R5
       42 RETURN                           R8 1
