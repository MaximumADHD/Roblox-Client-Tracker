PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R2 R3 K1 ["isMouseHoverEnabledObservable"]
        9 GETTABLEKS                       R1 R2 K2 ["get"]
       11 CALL                             R1 0 1
       12 JUMPIF                           R1 ; [+4]
       13 GETUPVAL                         R1 2
       14 LOADNIL                          R2
       15 CALL                             R1 1 0
       16 RETURN                           R0 0
       17 GETUPVAL                         R2 1
       18 GETTABLEKS                       R1 R2 K3 ["getMousePosition"]
       20 CALL                             R1 0 1
       21 GETTABLEKS                       R2 R1 K4 ["Y"]
       23 GETTABLEKS                       R4 R0 K5 ["AbsolutePosition"]
       25 GETTABLEKS                       R3 R4 K4 ["Y"]
       27 JUMPIFLT                         R2 R3 ; [+35]
       29 GETTABLEKS                       R2 R1 K4 ["Y"]
       31 GETTABLEKS                       R5 R0 K5 ["AbsolutePosition"]
       33 GETTABLEKS                       R4 R5 K4 ["Y"]
       35 GETTABLEKS                       R6 R0 K6 ["AbsoluteSize"]
       37 GETTABLEKS                       R5 R6 K4 ["Y"]
       39 ADD                              R3 R4 R5
       40 JUMPIFLT                         R3 R2 ; [+22]
       42 GETTABLEKS                       R2 R1 K7 ["X"]
       44 GETTABLEKS                       R4 R0 K5 ["AbsolutePosition"]
       46 GETTABLEKS                       R3 R4 K7 ["X"]
       48 JUMPIFLT                         R2 R3 ; [+14]
       50 GETTABLEKS                       R2 R1 K7 ["X"]
       52 GETTABLEKS                       R5 R0 K5 ["AbsolutePosition"]
       54 GETTABLEKS                       R4 R5 K7 ["X"]
       56 GETTABLEKS                       R6 R0 K6 ["AbsoluteSize"]
       58 GETTABLEKS                       R5 R6 K7 ["X"]
       60 ADD                              R3 R4 R5
       61 JUMPIFNOTLT                      R3 R2 ; [+5]
       63 GETUPVAL                         R2 2
       64 LOADNIL                          R3
       65 CALL                             R2 1 0
       66 RETURN                           R0 0
       67 GETIMPORT                        R3 K10 [Vector2.new]
       69 LOADN                            R4 0
       70 GETUPVAL                         R7 3
       71 GETTABLEKS                       R6 R7 K2 ["get"]
       73 CALL                             R6 0 1
       74 GETTABLEKS                       R8 R0 K5 ["AbsolutePosition"]
       76 GETTABLEKS                       R7 R8 K4 ["Y"]
       78 SUB                              R5 R6 R7
       79 CALL                             R3 2 1
       80 ADD                              R2 R1 R3
       81 GETUPVAL                         R3 4
       82 LOADNIL                          R4
       83 LOADNIL                          R5
       84 FORGPREP                         R3
       85 GETTABLEKS                       R8 R7 K2 ["get"]
       87 CALL                             R8 0 1
       88 JUMPIFNOT                        R8 ; [+26]
       89 GETTABLEKS                       R9 R8 K11 ["node"]
       91 JUMPIFNOT                        R9 ; [+23]
       92 GETTABLEKS                       R9 R8 K12 ["yPosition"]
       94 GETTABLEKS                       R10 R2 K4 ["Y"]
       96 JUMPIFNOTLE                      R9 R10 ; [+18]
       98 GETTABLEKS                       R9 R2 K4 ["Y"]
      100 GETTABLEKS                       R11 R8 K12 ["yPosition"]
      102 GETUPVAL                         R13 5
      103 GETTABLEKS                       R12 R13 K13 ["rowHeight"]
      105 ADD                              R10 R11 R12
      106 JUMPIFNOTLE                      R9 R10 ; [+8]
      108 GETUPVAL                         R9 2
      109 GETTABLEKS                       R11 R8 K11 ["node"]
      111 GETTABLEKS                       R10 R11 K14 ["Id"]
      113 CALL                             R9 1 0
      114 RETURN                           R0 0
      115 FORGLOOP                         R3 2 ; [-31]
      117 GETUPVAL                         R3 2
      118 LOADNIL                          R4
      119 CALL                             R3 1 0
      120 RETURN                           R0 0

PROTO_1:
        0 LOADB                            R0 0
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_2:
        0 JUMPIFNOT                        R0 ; [+3]
        1 GETTABLEKS                       R1 R0 K0 ["node"]
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R3 0
        6 GETUPVAL                         R4 1
        7 GETTABLE                         R2 R3 R4
        8 GETTABLEKS                       R4 R0 K0 ["node"]
       10 GETTABLEKS                       R3 R4 K1 ["Id"]
       12 JUMPIFNOTEQ                      R2 R3 ; [+2]
       14 LOADB                            R1 0 +1
       15 LOADB                            R1 1
       16 GETUPVAL                         R2 0
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R5 R0 K0 ["node"]
       20 GETTABLEKS                       R4 R5 K1 ["Id"]
       22 SETTABLE                         R4 R2 R3
       23 GETUPVAL                         R2 2
       24 JUMPIFNOT                        R2 ; [+1]
       25 RETURN                           R0 0
       26 JUMPIFNOT                        R1 ; [+7]
       27 GETUPVAL                         R2 3
       28 CALL                             R2 0 0
       29 GETIMPORT                        R2 K4 [task.defer]
       31 NEWCLOSURE                       R3 P0
       32 CAPTURE                          UPVAL U2
       33 CALL                             R2 1 0
       34 RETURN                           R0 0

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
        0 NEWTABLE                         R0 0 0
        2 LOADB                            R1 0
        3 NEWTABLE                         R2 0 0
        5 GETUPVAL                         R3 0
        6 LOADNIL                          R4
        7 LOADNIL                          R5
        8 FORGPREP                         R3
        9 GETTABLEKS                       R8 R7 K0 ["get"]
       11 CALL                             R8 0 1
       12 JUMPIFNOT                        R8 ; [+23]
       13 GETTABLEKS                       R9 R8 K1 ["node"]
       15 JUMPIFNOT                        R9 ; [+20]
       16 GETTABLEKS                       R10 R8 K1 ["node"]
       18 GETTABLEKS                       R9 R10 K2 ["Id"]
       20 SETTABLE                         R9 R2 R6
       21 MOVE                             R10 R0
       22 GETTABLEKS                       R11 R7 K3 ["changedSignal"]
       24 NEWCLOSURE                       R13 P0
       25 CAPTURE                          VAL R2
       26 CAPTURE                          VAL R6
       27 CAPTURE                          REF R1
       28 CAPTURE                          UPVAL U1
       29 NAMECALL                         R11 R11 K4 ["Connect"]
       31 CALL                             R11 2 -1
       32 FASTCALL                         TABLE_INSERT ; [+2]
       33 GETIMPORT                        R9 K7 [table.insert]
       35 CALL                             R9 -1 0
       36 FORGLOOP                         R3 2 ; [-28]
       38 NEWCLOSURE                       R3 P1
       39 CAPTURE                          VAL R0
       40 CLOSEUPVALS                      R1
       41 RETURN                           R3 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_6:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["useContext"]
        3 GETUPVAL                         R5 1
        4 CALL                             R4 1 1
        5 JUMPIFNOTEQKNIL                  R4 ; [+2]
        7 RETURN                           R0 0
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R5 R6 K1 ["useCallback"]
       11 NEWCLOSURE                       R6 P0
       12 CAPTURE                          VAL R3
       13 CAPTURE                          VAL R4
       14 CAPTURE                          VAL R0
       15 CAPTURE                          VAL R2
       16 CAPTURE                          VAL R1
       17 CAPTURE                          UPVAL U2
       18 NEWTABLE                         R7 0 5
       20 MOVE                             R8 R2
       21 MOVE                             R9 R0
       22 GETTABLEKS                       R10 R4 K2 ["getMousePosition"]
       24 MOVE                             R11 R1
       25 MOVE                             R12 R3
       26 SETLIST                          R7 R8 5 [1]
       28 CALL                             R5 2 1
       29 GETUPVAL                         R7 0
       30 GETTABLEKS                       R6 R7 K3 ["useEffect"]
       32 NEWCLOSURE                       R7 P1
       33 CAPTURE                          VAL R1
       34 CAPTURE                          VAL R5
       35 NEWTABLE                         R8 0 2
       37 MOVE                             R9 R1
       38 MOVE                             R10 R5
       39 SETLIST                          R8 R9 2 [1]
       41 CALL                             R6 2 0
       42 GETUPVAL                         R7 0
       43 GETTABLEKS                       R6 R7 K3 ["useEffect"]
       45 NEWCLOSURE                       R7 P2
       46 CAPTURE                          VAL R0
       47 NEWTABLE                         R8 0 1
       49 MOVE                             R9 R0
       50 SETLIST                          R8 R9 1 [1]
       52 CALL                             R6 2 0
       53 GETUPVAL                         R6 3
       54 GETTABLEKS                       R7 R4 K4 ["mouseMoved"]
       56 MOVE                             R8 R5
       57 NEWTABLE                         R9 0 1
       59 MOVE                             R10 R5
       60 SETLIST                          R9 R10 1 [1]
       62 CALL                             R6 3 0
       63 GETUPVAL                         R7 4
       64 GETTABLEKS                       R6 R7 K3 ["useEffect"]
       66 GETTABLEKS                       R7 R4 K5 ["isMouseHoverEnabledObservable"]
       68 MOVE                             R8 R5
       69 NEWTABLE                         R9 0 1
       71 MOVE                             R10 R5
       72 SETLIST                          R9 R10 1 [1]
       74 CALL                             R6 3 0
       75 GETUPVAL                         R7 0
       76 GETTABLEKS                       R6 R7 K3 ["useEffect"]
       78 MOVE                             R7 R5
       79 NEWTABLE                         R8 0 1
       81 MOVE                             R9 R5
       82 SETLIST                          R8 R9 1 [1]
       84 CALL                             R6 2 0
       85 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["SceneAnalysis"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Resources"]
       13 GETTABLEKS                       R2 R3 K8 ["StyleConstants"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R5 R0 K6 ["Src"]
       20 GETTABLEKS                       R4 R5 K9 ["Contexts"]
       22 GETTABLEKS                       R3 R4 K10 ["MouseContext"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R6 R0 K6 ["Src"]
       29 GETTABLEKS                       R5 R6 K11 ["Util"]
       31 GETTABLEKS                       R4 R5 K12 ["Observable"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R6 R0 K13 ["Packages"]
       38 GETTABLEKS                       R5 R6 K14 ["React"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R8 R0 K6 ["Src"]
       45 GETTABLEKS                       R7 R8 K15 ["Hooks"]
       47 GETTABLEKS                       R6 R7 K16 ["useEventConnection"]
       49 CALL                             R5 1 1
       50 DUPCLOSURE                       R6 K17 [PROTO_7]
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R1
       54 CAPTURE                          VAL R5
       55 CAPTURE                          VAL R3
       56 RETURN                           R6 1
