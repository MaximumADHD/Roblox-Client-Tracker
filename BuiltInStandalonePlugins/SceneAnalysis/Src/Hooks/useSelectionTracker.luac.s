PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K1 ["getMousePosition"]
        9 CALL                             R1 0 1
       10 GETTABLEKS                       R2 R1 K2 ["Y"]
       12 GETTABLEKS                       R3 R0 K3 ["AbsolutePosition"]
       14 GETTABLEKS                       R3 R3 K2 ["Y"]
       16 JUMPIFLT                         R2 R3 ; [+35]
       18 GETTABLEKS                       R2 R1 K2 ["Y"]
       20 GETTABLEKS                       R4 R0 K3 ["AbsolutePosition"]
       22 GETTABLEKS                       R4 R4 K2 ["Y"]
       24 GETTABLEKS                       R5 R0 K4 ["AbsoluteSize"]
       26 GETTABLEKS                       R5 R5 K2 ["Y"]
       28 ADD                              R3 R4 R5
       29 JUMPIFLT                         R3 R2 ; [+22]
       31 GETTABLEKS                       R2 R1 K5 ["X"]
       33 GETTABLEKS                       R3 R0 K3 ["AbsolutePosition"]
       35 GETTABLEKS                       R3 R3 K5 ["X"]
       37 JUMPIFLT                         R2 R3 ; [+14]
       39 GETTABLEKS                       R2 R1 K5 ["X"]
       41 GETTABLEKS                       R4 R0 K3 ["AbsolutePosition"]
       43 GETTABLEKS                       R4 R4 K5 ["X"]
       45 GETTABLEKS                       R5 R0 K4 ["AbsoluteSize"]
       47 GETTABLEKS                       R5 R5 K5 ["X"]
       49 ADD                              R3 R4 R5
       50 JUMPIFNOTLT                      R3 R2 ; [+5]
       52 GETUPVAL                         R2 2
       53 LOADNIL                          R3
       54 CALL                             R2 1 0
       55 RETURN                           R0 0
       56 GETIMPORT                        R3 K8 [Vector2.new]
       58 LOADN                            R4 0
       59 GETUPVAL                         R6 3
       60 GETTABLEKS                       R6 R6 K9 ["get"]
       62 CALL                             R6 0 1
       63 GETTABLEKS                       R7 R0 K3 ["AbsolutePosition"]
       65 GETTABLEKS                       R7 R7 K2 ["Y"]
       67 SUB                              R5 R6 R7
       68 CALL                             R3 2 1
       69 ADD                              R2 R1 R3
       70 GETUPVAL                         R3 4
       71 LOADNIL                          R4
       72 LOADNIL                          R5
       73 FORGPREP                         R3
       74 GETTABLEKS                       R8 R7 K9 ["get"]
       76 CALL                             R8 0 1
       77 JUMPIFNOT                        R8 ; [+26]
       78 GETTABLEKS                       R9 R8 K10 ["node"]
       80 JUMPIFNOT                        R9 ; [+23]
       81 GETTABLEKS                       R9 R8 K11 ["yPosition"]
       83 GETTABLEKS                       R10 R2 K2 ["Y"]
       85 JUMPIFNOTLE                      R9 R10 ; [+18]
       87 GETTABLEKS                       R9 R2 K2 ["Y"]
       89 GETTABLEKS                       R11 R8 K11 ["yPosition"]
       91 GETUPVAL                         R12 5
       92 GETTABLEKS                       R12 R12 K12 ["rowHeight"]
       94 ADD                              R10 R11 R12
       95 JUMPIFNOTLE                      R9 R10 ; [+8]
       97 GETUPVAL                         R9 2
       98 GETTABLEKS                       R10 R8 K10 ["node"]
      100 GETTABLEKS                       R10 R10 K13 ["Id"]
      102 CALL                             R9 1 0
      103 RETURN                           R0 0
      104 FORGLOOP                         R3 2 ; [-31]
      106 GETUPVAL                         R3 2
      107 LOADNIL                          R4
      108 CALL                             R3 1 0
      109 RETURN                           R0 0

PROTO_1:
        0 LOADB                            R0 0
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 GETTABLE                         R2 R3 R4
        3 GETTABLEKS                       R3 R0 K0 ["node"]
        5 GETTABLEKS                       R3 R3 K1 ["Id"]
        7 JUMPIFNOTEQ                      R2 R3 ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 GETUPVAL                         R2 0
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R4 R0 K0 ["node"]
       15 GETTABLEKS                       R4 R4 K1 ["Id"]
       17 SETTABLE                         R4 R2 R3
       18 GETUPVAL                         R2 2
       19 JUMPIFNOT                        R2 ; [+1]
       20 RETURN                           R0 0
       21 JUMPIFNOT                        R1 ; [+7]
       22 GETUPVAL                         R2 3
       23 CALL                             R2 0 0
       24 GETIMPORT                        R2 K4 [task.defer]
       26 NEWCLOSURE                       R3 P0
       27 CAPTURE                          UPVAL U2
       28 CALL                             R2 1 0
       29 RETURN                           R0 0

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
       12 GETTABLEKS                       R8 R8 K1 ["node"]
       14 GETTABLEKS                       R8 R8 K2 ["Id"]
       16 SETTABLE                         R8 R2 R6
       17 MOVE                             R9 R0
       18 GETTABLEKS                       R10 R7 K3 ["changedSignal"]
       20 NEWCLOSURE                       R12 P0
       21 CAPTURE                          VAL R2
       22 CAPTURE                          VAL R6
       23 CAPTURE                          REF R1
       24 CAPTURE                          UPVAL U1
       25 NAMECALL                         R10 R10 K4 ["Connect"]
       27 CALL                             R10 2 -1
       28 FASTCALL                         TABLE_INSERT ; [+2]
       29 GETIMPORT                        R8 K7 [table.insert]
       31 CALL                             R8 -1 0
       32 FORGLOOP                         R3 2 ; [-24]
       34 NEWCLOSURE                       R3 P1
       35 CAPTURE                          VAL R0
       36 CLOSEUPVALS                      R1
       37 RETURN                           R3 1

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
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["useContext"]
        3 GETUPVAL                         R5 1
        4 CALL                             R4 1 1
        5 JUMPIFNOTEQKNIL                  R4 ; [+2]
        7 RETURN                           R0 0
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K1 ["useCallback"]
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
       29 GETUPVAL                         R6 0
       30 GETTABLEKS                       R6 R6 K3 ["useEffect"]
       32 NEWCLOSURE                       R7 P1
       33 CAPTURE                          VAL R1
       34 CAPTURE                          VAL R5
       35 NEWTABLE                         R8 0 2
       37 MOVE                             R9 R1
       38 MOVE                             R10 R5
       39 SETLIST                          R8 R9 2 [1]
       41 CALL                             R6 2 0
       42 GETUPVAL                         R6 0
       43 GETTABLEKS                       R6 R6 K3 ["useEffect"]
       45 NEWCLOSURE                       R7 P2
       46 CAPTURE                          VAL R0
       47 NEWTABLE                         R8 0 1
       49 MOVE                             R9 R0
       50 SETLIST                          R8 R9 1 [1]
       52 CALL                             R6 2 0
       53 GETUPVAL                         R6 3
       54 GETTABLEKS                       R7 R4 K4 ["mouseDown"]
       56 MOVE                             R8 R5
       57 NEWTABLE                         R9 0 1
       59 MOVE                             R10 R5
       60 SETLIST                          R9 R10 1 [1]
       62 CALL                             R6 3 0
       63 GETUPVAL                         R6 0
       64 GETTABLEKS                       R6 R6 K3 ["useEffect"]
       66 MOVE                             R7 R5
       67 NEWTABLE                         R8 0 1
       69 MOVE                             R9 R5
       70 SETLIST                          R8 R9 1 [1]
       72 CALL                             R6 2 0
       73 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["SceneAnalysis"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Resources"]
       13 GETTABLEKS                       R2 R2 K8 ["StyleConstants"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K9 ["Contexts"]
       22 GETTABLEKS                       R3 R3 K10 ["MouseContext"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K6 ["Src"]
       29 GETTABLEKS                       R4 R4 K11 ["Util"]
       31 GETTABLEKS                       R4 R4 K12 ["Observable"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K13 ["Packages"]
       38 GETTABLEKS                       R5 R5 K14 ["React"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K6 ["Src"]
       45 GETTABLEKS                       R6 R6 K15 ["Hooks"]
       47 GETTABLEKS                       R6 R6 K16 ["useEventConnection"]
       49 CALL                             R5 1 1
       50 DUPCLOSURE                       R6 K17 [PROTO_7]
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R1
       54 CAPTURE                          VAL R5
       55 RETURN                           R6 1
