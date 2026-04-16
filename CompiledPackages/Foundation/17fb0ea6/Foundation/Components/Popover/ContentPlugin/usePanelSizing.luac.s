PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 NAMECALL                         R5 R4 K0 ["Disconnect"]
        6 CALL                             R5 1 0
        7 FORGLOOP                         R0 2 ; [-4]
        9 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 JUMPIFEQKNIL                     R1 ; [+27]
        5 GETUPVAL                         R1 1
        6 LOADNIL                          R2
        7 LOADNIL                          R3
        8 FORGPREP                         R1
        9 GETUPVAL                         R6 0
       10 MOVE                             R8 R5
       11 NAMECALL                         R6 R6 K0 ["GetPropertyChangedSignal"]
       13 CALL                             R6 2 1
       14 GETUPVAL                         R11 2
       15 FASTCALL1                        TYPE R11 ; [+2]
       16 GETIMPORT                        R10 K2 [type]
       18 CALL                             R10 1 1
       19 JUMPIFNOTEQKS                    R10 K3 ["table"] ; [+4]
       21 NEWCLOSURE                       R9 P0
       22 CAPTURE                          UPVAL U2
       23 JUMP                             ; [+1]
       24 GETUPVAL                         R9 2
       25 NAMECALL                         R7 R6 K4 ["Connect"]
       27 CALL                             R7 2 1
       28 SETTABLE                         R7 R0 R5
       29 FORGLOOP                         R1 2 ; [-21]
       31 NEWCLOSURE                       R1 P1
       32 CAPTURE                          VAL R0
       33 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["useLayoutEffect"]
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 CAPTURE                          VAL R2
        7 NEWTABLE                         R5 0 2
        9 MOVE                             R6 R0
       10 MOVE                             R7 R2
       11 SETLIST                          R5 R6 2 [1]
       13 CALL                             R3 2 0
       14 RETURN                           R0 0

PROTO_4:
        0 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["setSizeAsync"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R0 R1 K0 ["AbsoluteSize"]
        6 GETUPVAL                         R3 1
        7 FASTCALL1                        TYPE R3 ; [+2]
        8 GETIMPORT                        R2 K2 [type]
       10 CALL                             R2 1 1
       11 JUMPIFNOTEQKS                    R2 K3 ["table"] ; [+5]
       13 GETUPVAL                         R2 1
       14 GETTABLEKS                       R1 R2 K4 ["position"]
       16 JUMP                             ; [+1]
       17 GETUPVAL                         R1 1
       18 GETUPVAL                         R4 1
       19 FASTCALL1                        TYPE R4 ; [+2]
       20 GETIMPORT                        R3 K2 [type]
       22 CALL                             R3 1 1
       23 JUMPIFNOTEQKS                    R3 K3 ["table"] ; [+5]
       25 GETUPVAL                         R3 1
       26 GETTABLEKS                       R2 R3 K5 ["offset"]
       28 JUMP                             ; [+1]
       29 LOADN                            R2 0
       30 LOADN                            R3 0
       31 GETUPVAL                         R5 2
       32 FASTCALL1                        TYPE R5 ; [+2]
       33 GETIMPORT                        R4 K2 [type]
       35 CALL                             R4 1 1
       36 JUMPIFNOTEQKS                    R4 K3 ["table"] ; [+4]
       38 GETUPVAL                         R4 2
       39 GETTABLEKS                       R3 R4 K5 ["offset"]
       41 GETUPVAL                         R5 3
       42 ORK                              R4 R5 K6 [0]
       43 GETUPVAL                         R6 4
       44 GETTABLEKS                       R5 R6 K7 ["calculatePopoverBounds"]
       46 MOVE                             R6 R1
       47 MOVE                             R7 R2
       48 MOVE                             R8 R3
       49 MOVE                             R9 R4
       50 MOVE                             R10 R0
       51 CALL                             R5 5 1
       52 GETIMPORT                        R7 K10 [Vector2.new]
       54 GETUPVAL                         R9 5
       55 MULK                             R8 R9 K11 [2]
       56 GETUPVAL                         R10 5
       57 MULK                             R9 R10 K11 [2]
       58 CALL                             R7 2 1
       59 ADD                              R6 R5 R7
       60 GETUPVAL                         R7 6
       61 GETIMPORT                        R8 K14 [UDim2.fromOffset]
       63 GETTABLEKS                       R9 R0 K15 ["X"]
       65 GETTABLEKS                       R10 R0 K16 ["Y"]
       67 CALL                             R8 2 -1
       68 CALL                             R7 -1 0
       69 GETUPVAL                         R7 7
       70 GETIMPORT                        R8 K14 [UDim2.fromOffset]
       72 GETTABLEKS                       R9 R6 K15 ["X"]
       74 GETTABLEKS                       R10 R6 K16 ["Y"]
       76 CALL                             R8 2 -1
       77 CALL                             R7 -1 0
       78 GETUPVAL                         R8 0
       79 GETTABLEKS                       R7 R8 K17 ["AbsolutePosition"]
       81 GETUPVAL                         R8 8
       82 JUMPIFNOT                        R8 ; [+19]
       83 GETUPVAL                         R9 9
       84 GETTABLEKS                       R8 R9 K18 ["current"]
       86 JUMPIFNOT                        R8 ; [+6]
       87 GETIMPORT                        R8 K21 [task.cancel]
       89 GETUPVAL                         R10 9
       90 GETTABLEKS                       R9 R10 K18 ["current"]
       92 CALL                             R8 1 0
       93 GETUPVAL                         R8 9
       94 GETIMPORT                        R9 K23 [task.spawn]
       96 NEWCLOSURE                       R10 P0
       97 CAPTURE                          UPVAL U8
       98 CAPTURE                          VAL R6
       99 CALL                             R9 1 1
      100 SETTABLEKS                       R9 R8 K18 ["current"]
      102 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETIMPORT                        R0 K3 [task.cancel]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K0 ["current"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_9:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_10:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R5 R6 K0 ["useBinding"]
        3 GETIMPORT                        R6 K3 [UDim2.new]
        5 CALL                             R6 0 -1
        6 CALL                             R5 -1 2
        7 GETUPVAL                         R8 0
        8 GETTABLEKS                       R7 R8 K0 ["useBinding"]
       10 GETIMPORT                        R8 K3 [UDim2.new]
       12 CALL                             R8 0 -1
       13 CALL                             R7 -1 2
       14 GETUPVAL                         R10 0
       15 GETTABLEKS                       R9 R10 K4 ["useRef"]
       17 LOADNIL                          R10
       18 CALL                             R9 1 1
       19 GETUPVAL                         R11 0
       20 GETTABLEKS                       R10 R11 K4 ["useRef"]
       22 DUPCLOSURE                       R11 K5 [PROTO_4]
       23 CALL                             R10 1 1
       24 GETUPVAL                         R12 0
       25 GETTABLEKS                       R11 R12 K6 ["useCallback"]
       27 NEWCLOSURE                       R12 P1
       28 CAPTURE                          VAL R2
       29 CAPTURE                          VAL R0
       30 CAPTURE                          VAL R1
       31 CAPTURE                          VAL R3
       32 CAPTURE                          UPVAL U1
       33 CAPTURE                          UPVAL U2
       34 CAPTURE                          VAL R8
       35 CAPTURE                          VAL R6
       36 CAPTURE                          VAL R4
       37 CAPTURE                          VAL R9
       38 NEWTABLE                         R13 0 5
       40 MOVE                             R14 R2
       41 MOVE                             R15 R0
       42 MOVE                             R16 R1
       43 MOVE                             R17 R3
       44 MOVE                             R18 R4
       45 SETLIST                          R13 R14 5 [1]
       47 CALL                             R11 2 1
       48 SETTABLEKS                       R11 R10 K7 ["current"]
       50 NEWTABLE                         R12 0 1
       52 LOADK                            R13 K8 ["AbsoluteSize"]
       53 SETLIST                          R12 R13 1 [1]
       55 GETUPVAL                         R14 0
       56 GETTABLEKS                       R13 R14 K9 ["useLayoutEffect"]
       58 NEWCLOSURE                       R14 P2
       59 CAPTURE                          VAL R2
       60 CAPTURE                          VAL R12
       61 CAPTURE                          VAL R10
       62 NEWTABLE                         R15 0 2
       64 MOVE                             R16 R2
       65 MOVE                             R17 R10
       66 SETLIST                          R15 R16 2 [1]
       68 CALL                             R13 2 0
       69 GETUPVAL                         R13 0
       70 GETTABLEKS                       R12 R13 K9 ["useLayoutEffect"]
       72 NEWCLOSURE                       R13 P3
       73 CAPTURE                          VAL R11
       74 NEWTABLE                         R14 0 1
       76 MOVE                             R15 R11
       77 SETLIST                          R14 R15 1 [1]
       79 CALL                             R12 2 0
       80 GETUPVAL                         R13 0
       81 GETTABLEKS                       R12 R13 K10 ["useEffect"]
       83 NEWCLOSURE                       R13 P4
       84 CAPTURE                          VAL R9
       85 NEWTABLE                         R14 0 0
       87 CALL                             R12 2 0
       88 MOVE                             R12 R5
       89 MOVE                             R13 R7
       90 RETURN                           R12 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Constants"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R6 R0 K8 ["Providers"]
       18 GETTABLEKS                       R5 R6 K9 ["StudioPanels"]
       20 GETTABLEKS                       R4 R5 K10 ["Types"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R6 R0 K11 ["Enums"]
       27 GETTABLEKS                       R5 R6 K12 ["PopoverAlign"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R7 R0 K11 ["Enums"]
       34 GETTABLEKS                       R6 R7 K13 ["PopoverSide"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K6 [require]
       39 GETTABLEKS                       R7 R1 K14 ["React"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETIMPORT                        R11 K1 [script]
       46 GETTABLEKS                       R10 R11 K4 ["Parent"]
       48 GETTABLEKS                       R9 R10 K4 ["Parent"]
       50 GETTABLEKS                       R8 R9 K15 ["positioning"]
       52 CALL                             R7 1 1
       53 GETTABLEKS                       R8 R2 K16 ["SHADOW_SIZE"]
       55 DUPCLOSURE                       R9 K17 [PROTO_3]
       56 CAPTURE                          VAL R6
       57 DUPCLOSURE                       R10 K18 [PROTO_10]
       58 CAPTURE                          VAL R6
       59 CAPTURE                          VAL R7
       60 CAPTURE                          VAL R8
       61 RETURN                           R10 1
