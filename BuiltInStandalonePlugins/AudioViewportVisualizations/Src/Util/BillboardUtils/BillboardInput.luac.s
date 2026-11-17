PROTO_0:
        0 GETIMPORT                        R1 K3 [Enum.MouseBehavior.LockCurrentPosition]
        2 JUMPIFEQ                         R0 R1 ; [+3]
        4 LOADB                            R1 0
        5 RETURN                           R1 1
        6 GETUPVAL                         R1 0
        7 NAMECALL                         R1 R1 K4 ["GetMouseButtonsPressed"]
        9 CALL                             R1 1 3
       10 FORGPREP                         R1
       11 GETTABLEKS                       R6 R5 K5 ["UserInputType"]
       13 GETIMPORT                        R7 K7 [Enum.UserInputType.MouseButton1]
       15 JUMPIFEQ                         R6 R7 ; [+3]
       17 LOADB                            R6 1
       18 RETURN                           R6 1
       19 FORGLOOP                         R1 2 ; [-9]
       21 LOADB                            R1 0
       22 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["MouseBehavior"]
        3 GETIMPORT                        R3 K3 [Enum.MouseBehavior.LockCenter]
        5 JUMPIFEQ                         R1 R3 ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 JUMPIF                           R0 ; [+3]
       10 LOADNIL                          R3
       11 MOVE                             R4 R2
       12 RETURN                           R3 2
       13 JUMPIFNOT                        R2 ; [+5]
       14 GETTABLEKS                       R4 R0 K5 ["ViewportSize"]
       16 DIVK                             R3 R4 K4 [2]
       17 MOVE                             R4 R2
       18 RETURN                           R3 2
       19 GETUPVAL                         R3 1
       20 MOVE                             R4 R1
       21 CALL                             R3 1 1
       22 JUMPIFNOT                        R3 ; [+3]
       23 LOADNIL                          R3
       24 MOVE                             R4 R2
       25 RETURN                           R3 2
       26 GETUPVAL                         R3 0
       27 NAMECALL                         R3 R3 K6 ["GetMouseLocation"]
       29 CALL                             R3 1 1
       30 MOVE                             R4 R2
       31 RETURN                           R3 2

PROTO_2:
        0 MOVE                             R5 R1
        1 NAMECALL                         R3 R2 K0 ["WorldToViewportPoint"]
        3 CALL                             R3 2 2
        4 GETTABLEKS                       R5 R3 K1 ["Z"]
        6 LOADN                            R6 0
        7 JUMPIFNOTLE                      R5 R6 ; [+3]
        9 LOADNIL                          R5
       10 RETURN                           R5 1
       11 GETIMPORT                        R5 K4 [Vector2.new]
       13 GETTABLEKS                       R6 R3 K5 ["X"]
       15 GETTABLEKS                       R7 R3 K6 ["Y"]
       17 CALL                             R5 2 1
       18 GETTABLEKS                       R7 R0 K8 ["AbsoluteSize"]
       20 DIVK                             R6 R7 K7 [2]
       21 GETTABLEKS                       R7 R2 K9 ["ViewportSize"]
       23 JUMPIF                           R4 ; [+34]
       24 GETTABLEKS                       R8 R5 K5 ["X"]
       26 GETTABLEKS                       R10 R6 K5 ["X"]
       28 MINUS                            R9 R10
       29 JUMPIFLT                         R8 R9 ; [+26]
       31 GETTABLEKS                       R8 R5 K5 ["X"]
       33 GETTABLEKS                       R10 R7 K5 ["X"]
       35 GETTABLEKS                       R11 R6 K5 ["X"]
       37 ADD                              R9 R10 R11
       38 JUMPIFLT                         R9 R8 ; [+17]
       40 GETTABLEKS                       R8 R5 K6 ["Y"]
       42 GETTABLEKS                       R10 R6 K6 ["Y"]
       44 MINUS                            R9 R10
       45 JUMPIFLT                         R8 R9 ; [+10]
       47 GETTABLEKS                       R8 R5 K6 ["Y"]
       49 GETTABLEKS                       R10 R7 K6 ["Y"]
       51 GETTABLEKS                       R11 R6 K6 ["Y"]
       53 ADD                              R9 R10 R11
       54 JUMPIFNOTLT                      R9 R8 ; [+3]
       56 LOADNIL                          R8
       57 RETURN                           R8 1
       58 DUPTABLE                         R8 K13 [{"center", "canvasCenter", "depth"}]
       59 SETTABLEKS                       R5 R8 K10 ["center"]
       61 GETTABLEKS                       R10 R0 K14 ["AbsolutePosition"]
       63 ADD                              R9 R10 R6
       64 SETTABLEKS                       R9 R8 K11 ["canvasCenter"]
       66 GETTABLEKS                       R9 R3 K1 ["Z"]
       68 SETTABLEKS                       R9 R8 K12 ["depth"]
       70 RETURN                           R8 1

PROTO_3:
        0 GETTABLEKS                       R4 R1 K0 ["AbsoluteSize"]
        2 GETTABLEKS                       R5 R4 K1 ["X"]
        4 LOADN                            R6 0
        5 JUMPIFLE                         R5 R6 ; [+6]
        7 GETTABLEKS                       R5 R4 K2 ["Y"]
        9 LOADN                            R6 0
       10 JUMPIFNOTLE                      R5 R6 ; [+3]
       12 LOADB                            R5 0
       13 RETURN                           R5 1
       14 GETTABLEKS                       R6 R1 K3 ["AbsolutePosition"]
       16 DIVK                             R7 R4 K4 [2]
       17 ADD                              R5 R6 R7
       18 GETTABLEKS                       R7 R2 K5 ["center"]
       20 GETTABLEKS                       R9 R2 K6 ["canvasCenter"]
       22 SUB                              R8 R5 R9
       23 ADD                              R6 R7 R8
       24 DIVK                             R7 R4 K4 [2]
       25 LOADB                            R8 0
       26 GETTABLEKS                       R11 R0 K1 ["X"]
       28 GETTABLEKS                       R12 R6 K1 ["X"]
       30 SUB                              R10 R11 R12
       31 FASTCALL1                        MATH_ABS R10 ; [+2]
       32 GETIMPORT                        R9 K9 [math.abs]
       34 CALL                             R9 1 1
       35 GETTABLEKS                       R10 R7 K1 ["X"]
       37 JUMPIFNOTLE                      R9 R10 ; [+24]
       39 LOADB                            R8 0
       40 GETTABLEKS                       R9 R0 K2 ["Y"]
       42 GETTABLEKS                       R11 R6 K2 ["Y"]
       44 GETTABLEKS                       R12 R7 K2 ["Y"]
       46 SUB                              R10 R11 R12
       47 JUMPIFNOTLE                      R10 R9 ; [+14]
       49 GETTABLEKS                       R9 R0 K2 ["Y"]
       51 GETTABLEKS                       R12 R6 K2 ["Y"]
       53 GETTABLEKS                       R13 R7 K2 ["Y"]
       55 ADD                              R11 R12 R13
       56 ORK                              R12 R3 K10 [0]
       57 ADD                              R10 R11 R12
       58 JUMPIFLE                         R9 R10 ; [+2]
       60 LOADB                            R8 0 +1
       61 LOADB                            R8 1
       62 RETURN                           R8 1

PROTO_4:
        0 NEWTABLE                         R3 0 0
        2 GETTABLEKS                       R4 R2 K0 ["rows"]
        4 LOADNIL                          R5
        5 LOADNIL                          R6
        6 FORGPREP                         R4
        7 GETTABLEKS                       R9 R8 K1 ["billboard"]
        9 GETTABLE                         R10 R1 R9
       10 GETTABLEKS                       R11 R2 K2 ["getHitAreas"]
       12 MOVE                             R12 R9
       13 CALL                             R11 1 1
       14 JUMPIFNOT                        R11 ; [+3]
       15 GETTABLEKS                       R12 R11 K3 ["namesPanel"]
       17 JUMP                             ; [+1]
       18 LOADNIL                          R12
       19 JUMPIFNOT                        R10 ; [+32]
       20 JUMPIFNOT                        R11 ; [+31]
       21 JUMPIFNOT                        R12 ; [+30]
       22 GETTABLEKS                       R13 R7 K4 ["Visible"]
       24 JUMPIFNOT                        R13 ; [+27]
       25 GETTABLEKS                       R13 R12 K4 ["Visible"]
       27 JUMPIFNOT                        R13 ; [+24]
       28 GETTABLEKS                       R13 R11 K5 ["namesHost"]
       30 GETTABLEKS                       R13 R13 K4 ["Visible"]
       32 JUMPIFNOT                        R13 ; [+19]
       33 GETUPVAL                         R13 0
       34 GETTABLEKS                       R13 R13 K6 ["isPointInChild"]
       36 MOVE                             R14 R0
       37 MOVE                             R15 R12
       38 MOVE                             R16 R10
       39 CALL                             R13 3 1
       40 JUMPIFNOT                        R13 ; [+11]
       41 GETUPVAL                         R13 0
       42 GETTABLEKS                       R13 R13 K6 ["isPointInChild"]
       44 MOVE                             R14 R0
       45 MOVE                             R15 R7
       46 MOVE                             R16 R10
       47 CALL                             R13 3 1
       48 JUMPIFNOT                        R13 ; [+3]
       49 GETTABLEKS                       R13 R8 K7 ["instance"]
       51 SETTABLE                         R13 R3 R9
       52 FORGLOOP                         R4 2 ; [-46]
       54 LOADNIL                          R4
       55 LOADNIL                          R5
       56 LOADB                            R6 0
       57 LOADK                            R7 K8 [Infinity]
       58 MOVE                             R8 R1
       59 LOADNIL                          R9
       60 LOADNIL                          R10
       61 FORGPREP                         R8
       62 GETTABLEKS                       R13 R2 K2 ["getHitAreas"]
       64 MOVE                             R14 R11
       65 CALL                             R13 1 1
       66 JUMPIFNOT                        R13 ; [+44]
       67 GETTABLEKS                       R14 R12 K9 ["depth"]
       69 JUMPIFLE                         R7 R14 ; [+41]
       71 GETTABLE                         R14 R3 R11
       72 GETTABLEKS                       R15 R13 K10 ["iconHost"]
       74 GETTABLEKS                       R15 R15 K4 ["Visible"]
       76 JUMPIFNOT                        R15 ; [+10]
       77 GETUPVAL                         R15 0
       78 GETTABLEKS                       R15 R15 K6 ["isPointInChild"]
       80 MOVE                             R16 R0
       81 GETTABLEKS                       R17 R13 K10 ["iconHost"]
       83 MOVE                             R18 R12
       84 GETTABLEKS                       R19 R2 K11 ["iconBottomPadding"]
       86 CALL                             R15 4 1
       87 LOADB                            R16 1
       88 JUMPIFNOTEQKNIL                  R14 ; [+16]
       90 MOVE                             R16 R15
       91 JUMPIF                           R16 ; [+13]
       92 GETTABLEKS                       R16 R13 K5 ["namesHost"]
       94 GETTABLEKS                       R16 R16 K4 ["Visible"]
       96 JUMPIFNOT                        R16 ; [+8]
       97 GETUPVAL                         R16 0
       98 GETTABLEKS                       R16 R16 K6 ["isPointInChild"]
      100 MOVE                             R17 R0
      101 GETTABLEKS                       R18 R13 K5 ["namesHost"]
      103 MOVE                             R19 R12
      104 CALL                             R16 3 1
      105 JUMPIFNOT                        R16 ; [+5]
      106 MOVE                             R4 R11
      107 MOVE                             R5 R14
      108 MOVE                             R6 R15
      109 GETTABLEKS                       R7 R12 K9 ["depth"]
      111 FORGLOOP                         R8 2 ; [-50]
      113 RETURN                           R4 3

PROTO_5:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 NAMECALL                         R2 R2 K0 ["Get"]
        5 CALL                             R2 1 3
        6 FORGPREP                         R2
        7 LOADB                            R7 1
        8 GETTABLEKS                       R8 R0 K1 ["source"]
       10 JUMPIFEQ                         R6 R8 ; [+7]
       12 GETTABLEKS                       R7 R0 K1 ["source"]
       14 MOVE                             R9 R6
       15 NAMECALL                         R7 R7 K2 ["IsDescendantOf"]
       17 CALL                             R7 2 1
       18 JUMPIF                           R7 ; [+16]
       19 GETTABLEKS                       R8 R0 K3 ["members"]
       21 LOADNIL                          R9
       22 LOADNIL                          R10
       23 FORGPREP                         R8
       24 JUMPIFEQ                         R6 R12 ; [+6]
       26 MOVE                             R15 R6
       27 NAMECALL                         R13 R12 K2 ["IsDescendantOf"]
       29 CALL                             R13 2 1
       30 JUMPIFNOT                        R13 ; [+2]
       31 LOADB                            R7 1
       32 JUMP                             ; [+2]
       33 FORGLOOP                         R8 2 ; [-10]
       35 JUMPIF                           R7 ; [+7]
       36 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       38 MOVE                             R9 R1
       39 MOVE                             R10 R6
       40 GETIMPORT                        R8 K6 [table.insert]
       42 CALL                             R8 2 0
       43 FORGLOOP                         R2 2 ; [-37]
       45 GETUPVAL                         R2 0
       46 MOVE                             R4 R1
       47 NAMECALL                         R2 R2 K7 ["Set"]
       49 CALL                             R2 2 0
       50 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["Get"]
        3 CALL                             R1 1 1
        4 LENGTH                           R2 R1
        5 JUMPIFNOTEQKN                    R2 K1 [1] ; [+11]
        7 GETTABLEN                        R2 R1 1
        8 JUMPIFNOTEQ                      R0 R2 ; [+8]
       10 GETUPVAL                         R2 0
       11 NEWTABLE                         R4 0 0
       13 NAMECALL                         R2 R2 K2 ["Set"]
       15 CALL                             R2 2 0
       16 RETURN                           R0 0
       17 GETUPVAL                         R2 0
       18 NEWTABLE                         R4 0 1
       20 MOVE                             R5 R0
       21 SETLIST                          R4 R5 1 [1]
       23 NAMECALL                         R2 R2 K2 ["Set"]
       25 CALL                             R2 2 0
       26 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R3 R0 K0 ["members"]
        2 LENGTH                           R2 R3
        3 JUMPIFNOTEQKN                    R2 K1 [1] ; [+5]
        5 GETTABLEKS                       R2 R0 K0 ["members"]
        7 GETTABLEN                        R1 R2 1
        8 RETURN                           R1 1
        9 GETTABLEKS                       R1 R0 K2 ["source"]
       11 RETURN                           R1 1

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["soloed"]
        2 JUMPIFNOT                        R1 ; [+4]
        3 GETUPVAL                         R1 0
        4 MOVE                             R2 R0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0
        7 NEWTABLE                         R1 0 0
        9 GETTABLEKS                       R2 R0 K1 ["cluster"]
       11 JUMPIF                           R2 ; [+5]
       12 NEWTABLE                         R2 0 1
       14 MOVE                             R3 R0
       15 SETLIST                          R2 R3 1 [1]
       17 MOVE                             R3 R2
       18 LOADNIL                          R4
       19 LOADNIL                          R5
       20 FORGPREP                         R3
       21 GETTABLEKS                       R12 R7 K2 ["members"]
       23 LENGTH                           R11 R12
       24 JUMPIFNOTEQKN                    R11 K3 [1] ; [+5]
       26 GETTABLEKS                       R11 R7 K2 ["members"]
       28 GETTABLEN                        R10 R11 1
       29 JUMP                             ; [+2]
       30 GETTABLEKS                       R10 R7 K4 ["source"]
       32 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
       34 MOVE                             R9 R1
       35 GETIMPORT                        R8 K7 [table.insert]
       37 CALL                             R8 2 0
       38 FORGLOOP                         R3 2 ; [-18]
       40 GETUPVAL                         R3 1
       41 MOVE                             R5 R1
       42 NAMECALL                         R3 R3 K8 ["Set"]
       44 CALL                             R3 2 0
       45 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["Get"]
        3 CALL                             R1 1 3
        4 FORGPREP                         R1
        5 MOVE                             R6 R0
        6 MOVE                             R7 R5
        7 CALL                             R6 1 1
        8 JUMPIFNOT                        R6 ; [+2]
        9 LOADB                            R6 1
       10 RETURN                           R6 1
       11 FORGLOOP                         R1 2 ; [-7]
       13 LOADB                            R1 0
       14 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 GETUPVAL                         R5 1
        5 MOVE                             R7 R4
        6 NAMECALL                         R5 R5 K0 ["IsKeyDown"]
        8 CALL                             R5 2 1
        9 JUMPIFNOT                        R5 ; [+2]
       10 LOADB                            R5 1
       11 RETURN                           R5 1
       12 FORGLOOP                         R0 2 ; [-9]
       14 LOADB                            R0 0
       15 RETURN                           R0 1

PROTO_11:
        0 LENGTH                           R2 R0
        1 LENGTH                           R3 R1
        2 JUMPIFEQ                         R2 R3 ; [+3]
        4 LOADB                            R2 0
        5 RETURN                           R2 1
        6 NEWTABLE                         R2 0 0
        8 MOVE                             R3 R1
        9 LOADNIL                          R4
       10 LOADNIL                          R5
       11 FORGPREP                         R3
       12 LOADB                            R8 1
       13 SETTABLE                         R8 R2 R7
       14 FORGLOOP                         R3 2 ; [-3]
       16 MOVE                             R3 R0
       17 LOADNIL                          R4
       18 LOADNIL                          R5
       19 FORGPREP                         R3
       20 GETTABLE                         R8 R2 R7
       21 JUMPIF                           R8 ; [+2]
       22 LOADB                            R8 0
       23 RETURN                           R8 1
       24 FORGLOOP                         R3 2 ; [-5]
       26 LOADB                            R3 1
       27 RETURN                           R3 1

PROTO_12:
        0 LOADNIL                          R2
        1 SETUPVAL                         R2 0
        2 GETUPVAL                         R3 1
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 GETUPVAL                         R8 2
        7 MOVE                             R10 R7
        8 NAMECALL                         R8 R8 K0 ["IsKeyDown"]
       10 CALL                             R8 2 1
       11 JUMPIFNOT                        R8 ; [+2]
       12 LOADB                            R2 1
       13 JUMP                             ; [+3]
       14 FORGLOOP                         R3 2 ; [-9]
       16 LOADB                            R2 0
       17 JUMPIF                           R2 ; [+16]
       18 GETUPVAL                         R2 3
       19 GETTABLEKS                       R2 R2 K1 ["hasAudioSelection"]
       21 MOVE                             R3 R1
       22 CALL                             R2 1 1
       23 JUMPIFNOT                        R2 ; [+10]
       24 DUPTABLE                         R2 K4 [{"position", "selection"}]
       25 SETTABLEKS                       R0 R2 K2 ["position"]
       27 GETUPVAL                         R3 4
       28 NAMECALL                         R3 R3 K5 ["Get"]
       30 CALL                             R3 1 1
       31 SETTABLEKS                       R3 R2 K3 ["selection"]
       33 SETUPVAL                         R2 0
       34 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 SETUPVAL                         R2 0
        3 JUMPIFNOT                        R1 ; [+23]
        4 GETTABLEKS                       R3 R1 K0 ["position"]
        6 SUB                              R2 R0 R3
        7 GETTABLEKS                       R2 R2 K1 ["Magnitude"]
        9 LOADN                            R3 4
       10 JUMPIFNOTLE                      R2 R3 ; [+16]
       12 GETUPVAL                         R2 1
       13 GETUPVAL                         R3 2
       14 NAMECALL                         R3 R3 K2 ["Get"]
       16 CALL                             R3 1 1
       17 GETTABLEKS                       R4 R1 K3 ["selection"]
       19 CALL                             R2 2 1
       20 JUMPIFNOT                        R2 ; [+6]
       21 GETUPVAL                         R2 2
       22 NEWTABLE                         R4 0 0
       24 NAMECALL                         R2 R2 K4 ["Set"]
       26 CALL                             R2 2 0
       27 RETURN                           R0 0

PROTO_14:
        0 LOADNIL                          R0
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_15:
        0 LOADNIL                          R0
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          REF R0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 NEWCLOSURE                       R2 P1
        8 CAPTURE                          REF R0
        9 CAPTURE                          UPVAL U4
       10 CAPTURE                          UPVAL U3
       11 NEWCLOSURE                       R3 P2
       12 CAPTURE                          REF R0
       13 DUPTABLE                         R4 K3 [{"press", "release", "cancel"}]
       14 SETTABLEKS                       R1 R4 K0 ["press"]
       16 SETTABLEKS                       R2 R4 K1 ["release"]
       18 SETTABLEKS                       R3 R4 K2 ["cancel"]
       20 CLOSEUPVALS                      R0
       21 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AudioViewportVisualizations"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K9 [game]
       16 LOADK                            R4 K10 ["Selection"]
       17 NAMECALL                         R2 R2 K11 ["GetService"]
       19 CALL                             R2 2 1
       20 GETIMPORT                        R3 K9 [game]
       22 LOADK                            R5 K12 ["UserInputService"]
       23 NAMECALL                         R3 R3 K11 ["GetService"]
       25 CALL                             R3 2 1
       26 NEWTABLE                         R4 0 6
       28 GETIMPORT                        R5 K16 [Enum.KeyCode.LeftShift]
       30 GETIMPORT                        R6 K18 [Enum.KeyCode.RightShift]
       32 GETIMPORT                        R7 K20 [Enum.KeyCode.LeftControl]
       34 GETIMPORT                        R8 K22 [Enum.KeyCode.RightControl]
       36 GETIMPORT                        R9 K24 [Enum.KeyCode.LeftSuper]
       38 GETIMPORT                        R10 K26 [Enum.KeyCode.RightSuper]
       40 SETLIST                          R4 R5 6 [1]
       42 NEWTABLE                         R5 8 0
       44 DUPCLOSURE                       R6 K27 [PROTO_0]
       45 CAPTURE                          VAL R3
       46 DUPCLOSURE                       R7 K28 [PROTO_1]
       47 CAPTURE                          VAL R3
       48 CAPTURE                          VAL R6
       49 SETTABLEKS                       R7 R5 K29 ["getHoverPoint"]
       51 DUPCLOSURE                       R7 K30 [PROTO_2]
       52 SETTABLEKS                       R7 R5 K31 ["projectBillboard"]
       54 DUPCLOSURE                       R7 K32 [PROTO_3]
       55 SETTABLEKS                       R7 R5 K33 ["isPointInChild"]
       57 DUPCLOSURE                       R7 K34 [PROTO_4]
       58 CAPTURE                          VAL R5
       59 SETTABLEKS                       R7 R5 K35 ["hitTest"]
       61 DUPCLOSURE                       R7 K36 [PROTO_5]
       62 CAPTURE                          VAL R2
       63 DUPCLOSURE                       R8 K37 [PROTO_6]
       64 CAPTURE                          VAL R2
       65 SETTABLEKS                       R8 R5 K38 ["selectBillboardRow"]
       67 DUPCLOSURE                       R8 K39 [PROTO_7]
       68 DUPCLOSURE                       R9 K40 [PROTO_8]
       69 CAPTURE                          VAL R7
       70 CAPTURE                          VAL R2
       71 SETTABLEKS                       R9 R5 K41 ["selectBillboardIcon"]
       73 DUPCLOSURE                       R9 K42 [PROTO_9]
       74 CAPTURE                          VAL R2
       75 SETTABLEKS                       R9 R5 K43 ["hasAudioSelection"]
       77 DUPCLOSURE                       R9 K44 [PROTO_10]
       78 CAPTURE                          VAL R4
       79 CAPTURE                          VAL R3
       80 DUPCLOSURE                       R10 K45 [PROTO_11]
       81 DUPCLOSURE                       R11 K46 [PROTO_15]
       82 CAPTURE                          VAL R4
       83 CAPTURE                          VAL R3
       84 CAPTURE                          VAL R5
       85 CAPTURE                          VAL R2
       86 CAPTURE                          VAL R10
       87 SETTABLEKS                       R11 R5 K47 ["createClickAway"]
       89 RETURN                           R5 1
