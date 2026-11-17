PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 LOADN                            R1 0
        4 JUMPIFNOTLE                      R0 R1 ; [+2]
        6 RETURN                           R0 0
        7 NEWTABLE                         R1 0 0
        9 LOADN                            R2 0
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K0 ["current"]
       13 LOADNIL                          R4
       14 LOADNIL                          R5
       15 FORGPREP                         R3
       16 GETTABLEKS                       R8 R7 K1 ["naturalWidth"]
       18 LOADN                            R9 0
       19 JUMPIFNOTLE                      R8 R9 ; [+2]
       21 RETURN                           R0 0
       22 GETUPVAL                         R9 2
       23 JUMPIFNOT                        R9 ; [+9]
       24 GETTABLEKS                       R9 R7 K1 ["naturalWidth"]
       26 GETUPVAL                         R10 2
       27 FASTCALL2                        MATH_MIN R9 R10 ; [+3]
       29 GETIMPORT                        R8 K4 [math.min]
       31 CALL                             R8 2 1
       32 JUMP                             ; [+2]
       33 GETTABLEKS                       R8 R7 K1 ["naturalWidth"]
       35 SETTABLE                         R8 R1 R6
       36 ADDK                             R2 R2 K5 [1]
       37 FORGLOOP                         R3 2 ; [-22]
       39 GETUPVAL                         R3 3
       40 MOVE                             R4 R1
       41 MOVE                             R5 R0
       42 MOVE                             R6 R2
       43 GETUPVAL                         R7 4
       44 CALL                             R3 4 1
       45 GETUPVAL                         R4 5
       46 JUMPIFNOTEQKNIL                  R3 ; [+2]
       48 LOADB                            R5 0 +1
       49 LOADB                            R5 1
       50 SETTABLEKS                       R5 R4 K0 ["current"]
       52 GETUPVAL                         R4 6
       53 MOVE                             R5 R3
       54 CALL                             R4 1 0
       55 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIFNOT                        R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K0 ["current"]
        8 GETTABLE                         R1 R2 R0
        9 JUMPIF                           R1 ; [+1]
       10 RETURN                           R0 0
       11 GETTABLEKS                       R2 R1 K1 ["rbx"]
       13 GETTABLEKS                       R2 R2 K2 ["AbsoluteSize"]
       15 GETTABLEKS                       R2 R2 K3 ["X"]
       17 LOADN                            R3 0
       18 JUMPIFNOTLT                      R3 R2 ; [+5]
       20 SETTABLEKS                       R2 R1 K4 ["naturalWidth"]
       22 GETUPVAL                         R3 2
       23 CALL                             R3 0 0
       24 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 GETTABLE                         R1 R2 R0
        4 JUMPIF                           R1 ; [+1]
        5 RETURN                           R0 0
        6 LOADN                            R2 0
        7 SETTABLEKS                       R2 R1 K1 ["naturalWidth"]
        9 GETUPVAL                         R2 1
       10 LOADB                            R3 0
       11 SETTABLEKS                       R3 R2 K0 ["current"]
       13 GETUPVAL                         R2 2
       14 LOADNIL                          R3
       15 CALL                             R2 1 0
       16 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        3 GETTABLEKS                       R2 R2 K1 ["X"]
        5 SETTABLEKS                       R2 R1 K2 ["current"]
        7 GETUPVAL                         R1 1
        8 CALL                             R1 0 0
        9 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["ContentText"]
        3 GETUPVAL                         R1 1
        4 JUMPIFEQ                         R0 R1 ; [+8]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["ContentText"]
        9 SETUPVAL                         R0 1
       10 GETUPVAL                         R0 2
       11 GETUPVAL                         R1 3
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 NAMECALL                         R5 R4 K0 ["Disconnect"]
        6 CALL                             R5 1 0
        7 FORGLOOP                         R0 2 ; [-4]
        9 GETUPVAL                         R0 1
       10 GETTABLEKS                       R0 R0 K1 ["current"]
       12 GETUPVAL                         R1 2
       13 LOADNIL                          R2
       14 SETTABLE                         R2 R0 R1
       15 GETUPVAL                         R0 3
       16 GETTABLEKS                       R0 R0 K1 ["current"]
       18 GETUPVAL                         R1 2
       19 LOADNIL                          R2
       20 SETTABLE                         R2 R0 R1
       21 GETUPVAL                         R0 4
       22 CALL                             R0 0 0
       23 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["current"]
        3 GETTABLE                         R2 R3 R0
        4 JUMPIFNOT                        R2 ; [+17]
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R5 R5 K0 ["current"]
        8 GETTABLE                         R2 R5 R0
        9 LOADNIL                          R3
       10 LOADNIL                          R4
       11 FORGPREP                         R2
       12 NAMECALL                         R7 R6 K1 ["Disconnect"]
       14 CALL                             R7 1 0
       15 FORGLOOP                         R2 2 ; [-4]
       17 GETUPVAL                         R2 0
       18 GETTABLEKS                       R2 R2 K0 ["current"]
       20 LOADNIL                          R3
       21 SETTABLE                         R3 R2 R0
       22 JUMPIFNOTEQKNIL                  R1 ; [+9]
       24 GETUPVAL                         R2 1
       25 GETTABLEKS                       R2 R2 K0 ["current"]
       27 LOADNIL                          R3
       28 SETTABLE                         R3 R2 R0
       29 GETUPVAL                         R2 2
       30 CALL                             R2 0 0
       31 RETURN                           R0 0
       32 LOADK                            R4 K2 ["TextLabel"]
       33 LOADB                            R5 1
       34 NAMECALL                         R2 R1 K3 ["FindFirstChildWhichIsA"]
       36 CALL                             R2 3 1
       37 GETUPVAL                         R3 1
       38 GETTABLEKS                       R3 R3 K0 ["current"]
       40 DUPTABLE                         R4 K8 [{["rbx"], ["naturalWidth"] = 0, ["textLabel"]}]
       41 SETTABLEKS                       R1 R4 K4 ["rbx"]
       43 SETTABLEKS                       R2 R4 K7 ["textLabel"]
       45 SETTABLE                         R4 R3 R0
       46 NEWTABLE                         R3 0 0
       48 MOVE                             R5 R3
       49 LOADK                            R8 K9 ["AbsoluteSize"]
       50 NAMECALL                         R6 R1 K10 ["GetPropertyChangedSignal"]
       52 CALL                             R6 2 1
       53 NEWCLOSURE                       R8 P0
       54 CAPTURE                          UPVAL U3
       55 CAPTURE                          VAL R0
       56 NAMECALL                         R6 R6 K11 ["Connect"]
       58 CALL                             R6 2 -1
       59 FASTCALL                         TABLE_INSERT ; [+2]
       60 GETIMPORT                        R4 K14 [table.insert]
       62 CALL                             R4 -1 0
       63 GETUPVAL                         R4 4
       64 JUMPIFNOT                        R4 ; [+22]
       65 JUMPIFNOT                        R2 ; [+21]
       66 GETTABLEKS                       R4 R2 K15 ["ContentText"]
       68 MOVE                             R6 R3
       69 LOADK                            R9 K15 ["ContentText"]
       70 NAMECALL                         R7 R2 K10 ["GetPropertyChangedSignal"]
       72 CALL                             R7 2 1
       73 NEWCLOSURE                       R9 P1
       74 CAPTURE                          VAL R2
       75 CAPTURE                          REF R4
       76 CAPTURE                          UPVAL U5
       77 CAPTURE                          VAL R0
       78 NAMECALL                         R7 R7 K11 ["Connect"]
       80 CALL                             R7 2 -1
       81 FASTCALL                         TABLE_INSERT ; [+2]
       82 GETIMPORT                        R5 K14 [table.insert]
       84 CALL                             R5 -1 0
       85 CLOSEUPVALS                      R4
       86 JUMP                             ; [+16]
       87 JUMPIFNOT                        R2 ; [+15]
       88 MOVE                             R5 R3
       89 LOADK                            R8 K16 ["Text"]
       90 NAMECALL                         R6 R2 K10 ["GetPropertyChangedSignal"]
       92 CALL                             R6 2 1
       93 NEWCLOSURE                       R8 P2
       94 CAPTURE                          UPVAL U5
       95 CAPTURE                          VAL R0
       96 NAMECALL                         R6 R6 K11 ["Connect"]
       98 CALL                             R6 2 -1
       99 FASTCALL                         TABLE_INSERT ; [+2]
      100 GETIMPORT                        R4 K14 [table.insert]
      102 CALL                             R4 -1 0
      103 MOVE                             R5 R3
      104 GETTABLEKS                       R6 R1 K17 ["Destroying"]
      106 NEWCLOSURE                       R8 P3
      107 CAPTURE                          VAL R3
      108 CAPTURE                          UPVAL U0
      109 CAPTURE                          VAL R0
      110 CAPTURE                          UPVAL U1
      111 CAPTURE                          UPVAL U2
      112 NAMECALL                         R6 R6 K18 ["Once"]
      114 CALL                             R6 2 -1
      115 FASTCALL                         TABLE_INSERT ; [+2]
      116 GETIMPORT                        R4 K14 [table.insert]
      118 CALL                             R4 -1 0
      119 GETUPVAL                         R4 0
      120 GETTABLEKS                       R4 R4 K0 ["current"]
      122 SETTABLE                         R3 R4 R0
      123 GETUPVAL                         R4 3
      124 MOVE                             R5 R0
      125 CALL                             R4 1 0
      126 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 LOADNIL                          R1
        4 LOADNIL                          R2
        5 FORGPREP                         R0
        6 MOVE                             R5 R4
        7 LOADNIL                          R6
        8 LOADNIL                          R7
        9 FORGPREP                         R5
       10 NAMECALL                         R10 R9 K1 ["Disconnect"]
       12 CALL                             R10 1 0
       13 FORGLOOP                         R5 2 ; [-4]
       15 FORGLOOP                         R0 2 ; [-10]
       17 RETURN                           R0 0

PROTO_10:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["useRef"]
        3 LOADN                            R3 0
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K0 ["useRef"]
        8 NEWTABLE                         R4 0 0
       10 CALL                             R3 1 1
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K0 ["useRef"]
       14 NEWTABLE                         R5 0 0
       16 CALL                             R4 1 1
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R5 R5 K1 ["useState"]
       20 LOADNIL                          R6
       21 CALL                             R5 1 2
       22 GETUPVAL                         R7 0
       23 GETTABLEKS                       R7 R7 K0 ["useRef"]
       25 LOADB                            R8 0
       26 CALL                             R7 1 1
       27 GETUPVAL                         R8 0
       28 GETTABLEKS                       R8 R8 K2 ["useCallback"]
       30 NEWCLOSURE                       R9 P0
       31 CAPTURE                          VAL R2
       32 CAPTURE                          VAL R3
       33 CAPTURE                          VAL R1
       34 CAPTURE                          UPVAL U1
       35 CAPTURE                          VAL R0
       36 CAPTURE                          VAL R7
       37 CAPTURE                          VAL R6
       38 NEWTABLE                         R10 0 2
       40 MOVE                             R11 R0
       41 MOVE                             R12 R1
       42 SETLIST                          R10 R11 2 [1]
       44 CALL                             R8 2 1
       45 GETUPVAL                         R9 0
       46 GETTABLEKS                       R9 R9 K2 ["useCallback"]
       48 NEWCLOSURE                       R10 P1
       49 CAPTURE                          VAL R7
       50 CAPTURE                          VAL R3
       51 CAPTURE                          VAL R8
       52 NEWTABLE                         R11 0 1
       54 MOVE                             R12 R8
       55 SETLIST                          R11 R12 1 [1]
       57 CALL                             R9 2 1
       58 GETUPVAL                         R10 0
       59 GETTABLEKS                       R10 R10 K2 ["useCallback"]
       61 NEWCLOSURE                       R11 P2
       62 CAPTURE                          VAL R3
       63 CAPTURE                          VAL R7
       64 CAPTURE                          VAL R6
       65 NEWTABLE                         R12 0 0
       67 CALL                             R10 2 1
       68 GETUPVAL                         R11 0
       69 GETTABLEKS                       R11 R11 K2 ["useCallback"]
       71 NEWCLOSURE                       R12 P3
       72 CAPTURE                          VAL R2
       73 CAPTURE                          VAL R8
       74 NEWTABLE                         R13 0 1
       76 MOVE                             R14 R8
       77 SETLIST                          R13 R14 1 [1]
       79 CALL                             R11 2 1
       80 GETUPVAL                         R12 0
       81 GETTABLEKS                       R12 R12 K2 ["useCallback"]
       83 NEWCLOSURE                       R13 P4
       84 CAPTURE                          VAL R4
       85 CAPTURE                          VAL R3
       86 CAPTURE                          VAL R8
       87 CAPTURE                          VAL R9
       88 CAPTURE                          UPVAL U2
       89 CAPTURE                          VAL R10
       90 NEWTABLE                         R14 0 3
       92 MOVE                             R15 R8
       93 MOVE                             R16 R9
       94 MOVE                             R17 R10
       95 SETLIST                          R14 R15 3 [1]
       97 CALL                             R12 2 1
       98 GETUPVAL                         R13 0
       99 GETTABLEKS                       R13 R13 K3 ["useEffect"]
      101 NEWCLOSURE                       R14 P5
      102 CAPTURE                          VAL R4
      103 NEWTABLE                         R15 0 1
      105 MOVE                             R16 R4
      106 SETLIST                          R15 R16 1 [1]
      108 CALL                             R13 2 0
      109 MOVE                             R13 R5
      110 MOVE                             R14 R12
      111 MOVE                             R15 R11
      112 RETURN                           R13 3

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StudioFoundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R4 K9 ["Dialog"]
       20 GETTABLEKS                       R4 R4 K10 ["computeFairWidths"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R0 K11 ["SharedFlags"]
       27 GETTABLEKS                       R5 R5 K12 ["getFFlagStudioDialogManagerTertiaryButtonVariant"]
       29 CALL                             R4 1 1
       30 CALL                             R4 0 1
       31 DUPCLOSURE                       R5 K13 [PROTO_11]
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R3
       34 CAPTURE                          VAL R4
       35 RETURN                           R5 1
