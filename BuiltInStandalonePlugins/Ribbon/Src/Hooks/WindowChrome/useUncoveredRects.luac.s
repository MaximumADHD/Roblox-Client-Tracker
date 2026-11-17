PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["AbsolutePosition"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["AbsoluteSize"]
        6 NEWTABLE                         R2 0 1
        8 GETIMPORT                        R3 K4 [Rect.new]
       10 GETIMPORT                        R4 K7 [Vector2.zero]
       12 MOVE                             R5 R1
       13 CALL                             R3 2 -1
       14 SETLIST                          R2 R3 -1 [1]
       16 GETUPVAL                         R3 1
       17 LOADNIL                          R4
       18 LOADNIL                          R5
       19 FORGPREP                         R3
       20 GETTABLEKS                       R8 R6 K8 ["Visible"]
       22 JUMPIFNOT                        R8 ; [+36]
       23 GETTABLEKS                       R8 R6 K9 ["Active"]
       25 JUMPIFNOT                        R8 ; [+33]
       26 GETTABLEKS                       R8 R6 K1 ["AbsoluteSize"]
       28 GETTABLEKS                       R9 R8 K10 ["X"]
       30 LOADN                            R10 0
       31 JUMPIFLE                         R9 R10 ; [+27]
       33 GETTABLEKS                       R9 R8 K11 ["Y"]
       35 LOADN                            R10 0
       36 JUMPIFLE                         R9 R10 ; [+22]
       38 GETUPVAL                         R9 2
       39 MOVE                             R10 R6
       40 GETUPVAL                         R11 0
       41 CALL                             R9 2 1
       42 JUMPIFEQKNIL                     R9 ; [+16]
       44 GETTABLEKS                       R11 R9 K12 ["Min"]
       46 SUB                              R10 R11 R0
       47 GETTABLEKS                       R12 R9 K13 ["Max"]
       49 SUB                              R11 R12 R0
       50 GETUPVAL                         R12 3
       51 MOVE                             R13 R2
       52 GETIMPORT                        R14 K4 [Rect.new]
       54 MOVE                             R15 R10
       55 MOVE                             R16 R11
       56 CALL                             R14 2 -1
       57 CALL                             R12 -1 1
       58 MOVE                             R2 R12
       59 FORGLOOP                         R3 1 ; [-40]
       61 GETUPVAL                         R3 4
       62 MOVE                             R4 R2
       63 CALL                             R3 1 0
       64 RETURN                           R0 0

PROTO_1:
        0 LOADNIL                          R0
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+3]
        3 GETUPVAL                         R0 1
        4 JUMPIFNOT                        R0 ; [+1]
        5 RETURN                           R0 0
        6 GETIMPORT                        R0 K2 [task.defer]
        8 NEWCLOSURE                       R1 P0
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          UPVAL U2
       11 CALL                             R0 1 1
       12 SETUPVAL                         R0 0
       13 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFEQKNIL                     R1 ; [+2]
        4 RETURN                           R0 0
        5 NEWTABLE                         R1 0 3
        7 LOADK                            R4 K0 ["AbsolutePosition"]
        8 NAMECALL                         R2 R0 K1 ["GetPropertyChangedSignal"]
       10 CALL                             R2 2 1
       11 GETUPVAL                         R4 1
       12 NAMECALL                         R2 R2 K2 ["Connect"]
       14 CALL                             R2 2 1
       15 LOADK                            R5 K3 ["AbsoluteSize"]
       16 NAMECALL                         R3 R0 K1 ["GetPropertyChangedSignal"]
       18 CALL                             R3 2 1
       19 GETUPVAL                         R5 1
       20 NAMECALL                         R3 R3 K2 ["Connect"]
       22 CALL                             R3 2 1
       23 LOADK                            R6 K4 ["ClipsDescendants"]
       24 NAMECALL                         R4 R0 K1 ["GetPropertyChangedSignal"]
       26 CALL                             R4 2 1
       27 GETUPVAL                         R6 1
       28 NAMECALL                         R4 R4 K2 ["Connect"]
       30 CALL                             R4 2 -1
       31 SETLIST                          R1 R2 -1 [1]
       33 LOADK                            R4 K5 ["ScrollingFrame"]
       34 NAMECALL                         R2 R0 K6 ["IsA"]
       36 CALL                             R2 2 1
       37 JUMPIFNOT                        R2 ; [+13]
       38 MOVE                             R3 R1
       39 LOADK                            R6 K7 ["AbsoluteWindowSize"]
       40 NAMECALL                         R4 R0 K1 ["GetPropertyChangedSignal"]
       42 CALL                             R4 2 1
       43 GETUPVAL                         R6 1
       44 NAMECALL                         R4 R4 K2 ["Connect"]
       46 CALL                             R4 2 -1
       47 FASTCALL                         TABLE_INSERT ; [+2]
       48 GETIMPORT                        R2 K10 [table.insert]
       50 CALL                             R2 -1 0
       51 LOADK                            R4 K11 ["GuiButton"]
       52 NAMECALL                         R2 R0 K6 ["IsA"]
       54 CALL                             R2 2 1
       55 JUMPIFNOT                        R2 ; [+29]
       56 MOVE                             R3 R1
       57 LOADK                            R6 K12 ["Visible"]
       58 NAMECALL                         R4 R0 K1 ["GetPropertyChangedSignal"]
       60 CALL                             R4 2 1
       61 GETUPVAL                         R6 1
       62 NAMECALL                         R4 R4 K2 ["Connect"]
       64 CALL                             R4 2 -1
       65 FASTCALL                         TABLE_INSERT ; [+2]
       66 GETIMPORT                        R2 K10 [table.insert]
       68 CALL                             R2 -1 0
       69 MOVE                             R3 R1
       70 LOADK                            R6 K13 ["Active"]
       71 NAMECALL                         R4 R0 K1 ["GetPropertyChangedSignal"]
       73 CALL                             R4 2 1
       74 GETUPVAL                         R6 1
       75 NAMECALL                         R4 R4 K2 ["Connect"]
       77 CALL                             R4 2 -1
       78 FASTCALL                         TABLE_INSERT ; [+2]
       79 GETIMPORT                        R2 K10 [table.insert]
       81 CALL                             R2 -1 0
       82 GETUPVAL                         R2 2
       83 LOADB                            R3 1
       84 SETTABLE                         R3 R2 R0
       85 GETUPVAL                         R2 0
       86 SETTABLE                         R1 R2 R0
       87 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOTEQKNIL                  R1 ; [+2]
        4 RETURN                           R0 0
        5 MOVE                             R2 R1
        6 LOADNIL                          R3
        7 LOADNIL                          R4
        8 FORGPREP                         R2
        9 NAMECALL                         R7 R6 K0 ["Disconnect"]
       11 CALL                             R7 1 0
       12 FORGLOOP                         R2 2 ; [-4]
       14 GETUPVAL                         R2 0
       15 LOADNIL                          R3
       16 SETTABLE                         R3 R2 R0
       17 LOADK                            R4 K1 ["GuiButton"]
       18 NAMECALL                         R2 R0 K2 ["IsA"]
       20 CALL                             R2 2 1
       21 JUMPIFNOT                        R2 ; [+3]
       22 GETUPVAL                         R2 1
       23 LOADNIL                          R3
       24 SETTABLE                         R3 R2 R0
       25 RETURN                           R0 0

PROTO_5:
        0 LOADK                            R3 K0 ["GuiObject"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+16]
        5 GETUPVAL                         R1 0
        6 MOVE                             R2 R0
        7 CALL                             R1 1 0
        8 GETUPVAL                         R1 1
        9 JUMPIFNOTEQKNIL                  R1 ; [+11]
       11 GETUPVAL                         R1 2
       12 JUMPIFNOT                        R1 ; [+1]
       13 RETURN                           R0 0
       14 GETIMPORT                        R1 K4 [task.defer]
       16 NEWCLOSURE                       R2 P0
       17 CAPTURE                          UPVAL U1
       18 CAPTURE                          UPVAL U3
       19 CALL                             R1 1 1
       20 SETUPVAL                         R1 1
       21 RETURN                           R0 0

PROTO_6:
        0 LOADK                            R3 K0 ["GuiObject"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+38]
        5 GETUPVAL                         R2 0
        6 GETTABLE                         R1 R2 R0
        7 JUMPIFNOTEQKNIL                  R1 ; [+2]
        9 JUMP                             ; [+20]
       10 MOVE                             R2 R1
       11 LOADNIL                          R3
       12 LOADNIL                          R4
       13 FORGPREP                         R2
       14 NAMECALL                         R7 R6 K2 ["Disconnect"]
       16 CALL                             R7 1 0
       17 FORGLOOP                         R2 2 ; [-4]
       19 GETUPVAL                         R2 0
       20 LOADNIL                          R3
       21 SETTABLE                         R3 R2 R0
       22 LOADK                            R4 K3 ["GuiButton"]
       23 NAMECALL                         R2 R0 K1 ["IsA"]
       25 CALL                             R2 2 1
       26 JUMPIFNOT                        R2 ; [+3]
       27 GETUPVAL                         R2 1
       28 LOADNIL                          R3
       29 SETTABLE                         R3 R2 R0
       30 GETUPVAL                         R1 2
       31 JUMPIFNOTEQKNIL                  R1 ; [+11]
       33 GETUPVAL                         R1 3
       34 JUMPIFNOT                        R1 ; [+1]
       35 RETURN                           R0 0
       36 GETIMPORT                        R1 K6 [task.defer]
       38 NEWCLOSURE                       R2 P0
       39 CAPTURE                          UPVAL U2
       40 CAPTURE                          UPVAL U4
       41 CALL                             R1 1 1
       42 SETUPVAL                         R1 2
       43 RETURN                           R0 0

PROTO_7:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETIMPORT                        R0 K2 [task.cancel]
        6 GETUPVAL                         R1 1
        7 CALL                             R0 1 0
        8 LOADNIL                          R0
        9 SETUPVAL                         R0 1
       10 GETUPVAL                         R0 2
       11 LOADNIL                          R1
       12 LOADNIL                          R2
       13 FORGPREP                         R0
       14 NAMECALL                         R5 R4 K3 ["Disconnect"]
       16 CALL                             R5 1 0
       17 FORGLOOP                         R0 2 ; [-4]
       19 GETUPVAL                         R0 3
       20 LOADNIL                          R1
       21 LOADNIL                          R2
       22 FORGPREP                         R0
       23 GETUPVAL                         R6 3
       24 GETTABLE                         R5 R6 R3
       25 JUMPIFNOTEQKNIL                  R5 ; [+2]
       27 JUMP                             ; [+20]
       28 MOVE                             R6 R5
       29 LOADNIL                          R7
       30 LOADNIL                          R8
       31 FORGPREP                         R6
       32 NAMECALL                         R11 R10 K3 ["Disconnect"]
       34 CALL                             R11 1 0
       35 FORGLOOP                         R6 2 ; [-4]
       37 GETUPVAL                         R6 3
       38 LOADNIL                          R7
       39 SETTABLE                         R7 R6 R3
       40 LOADK                            R8 K4 ["GuiButton"]
       41 NAMECALL                         R6 R3 K5 ["IsA"]
       43 CALL                             R6 2 1
       44 JUMPIFNOT                        R6 ; [+3]
       45 GETUPVAL                         R6 4
       46 LOADNIL                          R7
       47 SETTABLE                         R7 R6 R3
       48 FORGLOOP                         R0 1 ; [-26]
       50 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+2]
        5 RETURN                           R0 0
        6 NEWTABLE                         R1 0 0
        8 NEWTABLE                         R2 0 0
       10 NEWTABLE                         R3 0 0
       12 LOADNIL                          R4
       13 LOADB                            R5 0
       14 NEWCLOSURE                       R6 P0
       15 CAPTURE                          VAL R0
       16 CAPTURE                          VAL R3
       17 CAPTURE                          UPVAL U1
       18 CAPTURE                          UPVAL U2
       19 CAPTURE                          UPVAL U3
       20 NEWCLOSURE                       R7 P1
       21 CAPTURE                          REF R4
       22 CAPTURE                          REF R5
       23 CAPTURE                          VAL R6
       24 NEWCLOSURE                       R8 P2
       25 CAPTURE                          VAL R2
       26 CAPTURE                          VAL R7
       27 CAPTURE                          VAL R3
       28 NEWCLOSURE                       R9 P3
       29 CAPTURE                          VAL R2
       30 CAPTURE                          VAL R3
       31 MOVE                             R11 R1
       32 GETTABLEKS                       R12 R0 K1 ["DescendantAdded"]
       34 NEWCLOSURE                       R14 P4
       35 CAPTURE                          VAL R8
       36 CAPTURE                          REF R4
       37 CAPTURE                          REF R5
       38 CAPTURE                          VAL R6
       39 NAMECALL                         R12 R12 K2 ["Connect"]
       41 CALL                             R12 2 -1
       42 FASTCALL                         TABLE_INSERT ; [+2]
       43 GETIMPORT                        R10 K5 [table.insert]
       45 CALL                             R10 -1 0
       46 MOVE                             R11 R1
       47 GETTABLEKS                       R12 R0 K6 ["DescendantRemoving"]
       49 NEWCLOSURE                       R14 P5
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R3
       52 CAPTURE                          REF R4
       53 CAPTURE                          REF R5
       54 CAPTURE                          VAL R6
       55 NAMECALL                         R12 R12 K2 ["Connect"]
       57 CALL                             R12 2 -1
       58 FASTCALL                         TABLE_INSERT ; [+2]
       59 GETIMPORT                        R10 K5 [table.insert]
       61 CALL                             R10 -1 0
       62 MOVE                             R11 R1
       63 LOADK                            R14 K7 ["AbsolutePosition"]
       64 NAMECALL                         R12 R0 K8 ["GetPropertyChangedSignal"]
       66 CALL                             R12 2 1
       67 MOVE                             R14 R7
       68 NAMECALL                         R12 R12 K2 ["Connect"]
       70 CALL                             R12 2 -1
       71 FASTCALL                         TABLE_INSERT ; [+2]
       72 GETIMPORT                        R10 K5 [table.insert]
       74 CALL                             R10 -1 0
       75 MOVE                             R11 R1
       76 LOADK                            R14 K9 ["AbsoluteSize"]
       77 NAMECALL                         R12 R0 K8 ["GetPropertyChangedSignal"]
       79 CALL                             R12 2 1
       80 MOVE                             R14 R7
       81 NAMECALL                         R12 R12 K2 ["Connect"]
       83 CALL                             R12 2 -1
       84 FASTCALL                         TABLE_INSERT ; [+2]
       85 GETIMPORT                        R10 K5 [table.insert]
       87 CALL                             R10 -1 0
       88 NAMECALL                         R10 R0 K10 ["GetDescendants"]
       90 CALL                             R10 1 3
       91 FORGPREP                         R10
       92 LOADK                            R17 K11 ["GuiObject"]
       93 NAMECALL                         R15 R14 K12 ["IsA"]
       95 CALL                             R15 2 1
       96 JUMPIFNOT                        R15 ; [+3]
       97 MOVE                             R15 R8
       98 MOVE                             R16 R14
       99 CALL                             R15 1 0
      100 FORGLOOP                         R10 2 ; [-9]
      102 MOVE                             R10 R6
      103 CALL                             R10 0 0
      104 NEWCLOSURE                       R10 P6
      105 CAPTURE                          REF R5
      106 CAPTURE                          REF R4
      107 CAPTURE                          VAL R1
      108 CAPTURE                          VAL R2
      109 CAPTURE                          VAL R3
      110 CLOSEUPVALS                      R4
      111 RETURN                           R10 1

PROTO_9:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        4 LOADK                            R4 K0 ["useUncoveredRects called without StudioCustomWindowChromeFeature engine feature"]
        5 GETIMPORT                        R2 K2 [assert]
        7 CALL                             R2 2 0
        8 GETUPVAL                         R2 1
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          VAL R0
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          UPVAL U3
       13 CAPTURE                          VAL R1
       14 NEWTABLE                         R4 0 2
       16 MOVE                             R5 R0
       17 MOVE                             R6 R1
       18 SETLIST                          R4 R5 2 [1]
       20 CALL                             R2 2 0
       21 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["useEffect"]
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R0 K9 ["Src"]
       20 GETTABLEKS                       R4 R4 K10 ["SharedFlags"]
       22 GETTABLEKS                       R4 R4 K11 ["getFeatureStudioCustomWindowChrome"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R5 R0 K9 ["Src"]
       29 GETTABLEKS                       R5 R5 K12 ["Hooks"]
       31 GETTABLEKS                       R5 R5 K13 ["WindowChrome"]
       33 GETTABLEKS                       R5 R5 K14 ["Utils"]
       35 GETTABLEKS                       R5 R5 K15 ["getVisibleAbsoluteRect"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K5 [require]
       40 GETTABLEKS                       R6 R0 K9 ["Src"]
       42 GETTABLEKS                       R6 R6 K12 ["Hooks"]
       44 GETTABLEKS                       R6 R6 K13 ["WindowChrome"]
       46 GETTABLEKS                       R6 R6 K14 ["Utils"]
       48 GETTABLEKS                       R6 R6 K16 ["subtractRect"]
       50 CALL                             R5 1 1
       51 DUPCLOSURE                       R6 K17 [PROTO_9]
       52 CAPTURE                          VAL R3
       53 CAPTURE                          VAL R2
       54 CAPTURE                          VAL R4
       55 CAPTURE                          VAL R5
       56 RETURN                           R6 1
