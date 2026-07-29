PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+14]
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+12]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R1 2
        6 SETTABLEKS                       R1 R0 K0 ["Scale"]
        8 GETUPVAL                         R0 0
        9 GETIMPORT                        R1 K3 [UDim2.fromOffset]
       11 GETUPVAL                         R2 3
       12 GETUPVAL                         R3 4
       13 CALL                             R1 2 1
       14 SETTABLEKS                       R1 R0 K4 ["Position"]
       16 GETUPVAL                         R0 5
       17 LOADNIL                          R1
       18 LOADNIL                          R2
       19 FORGPREP                         R0
       20 MOVE                             R5 R4
       21 GETUPVAL                         R6 2
       22 CALL                             R5 1 0
       23 FORGLOOP                         R0 2 ; [-4]
       25 GETIMPORT                        R0 K7 [Vector2.new]
       27 GETUPVAL                         R1 3
       28 GETUPVAL                         R2 4
       29 CALL                             R0 2 1
       30 GETUPVAL                         R1 6
       31 LOADNIL                          R2
       32 LOADNIL                          R3
       33 FORGPREP                         R1
       34 MOVE                             R6 R5
       35 MOVE                             R7 R0
       36 CALL                             R6 1 0
       37 FORGLOOP                         R1 2 ; [-4]
       39 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["AbsolutePosition"]
        2 GETTABLEKS                       R3 R0 K1 ["AbsoluteSize"]
        4 LOADB                            R4 0
        5 GETTABLEKS                       R5 R1 K2 ["X"]
        7 GETTABLEKS                       R6 R2 K2 ["X"]
        9 JUMPIFNOTLE                      R6 R5 ; [+29]
       11 LOADB                            R4 0
       12 GETTABLEKS                       R5 R1 K3 ["Y"]
       14 GETTABLEKS                       R6 R2 K3 ["Y"]
       16 JUMPIFNOTLE                      R6 R5 ; [+22]
       18 LOADB                            R4 0
       19 GETTABLEKS                       R5 R1 K2 ["X"]
       21 GETTABLEKS                       R7 R2 K2 ["X"]
       23 GETTABLEKS                       R8 R3 K2 ["X"]
       25 ADD                              R6 R7 R8
       26 JUMPIFNOTLE                      R5 R6 ; [+12]
       28 GETTABLEKS                       R5 R1 K3 ["Y"]
       30 GETTABLEKS                       R7 R2 K3 ["Y"]
       32 GETTABLEKS                       R8 R3 K3 ["Y"]
       34 ADD                              R6 R7 R8
       35 JUMPIFLE                         R5 R6 ; [+2]
       37 LOADB                            R4 0 +1
       38 LOADB                            R4 1
       39 RETURN                           R4 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["X"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["Y"]
        7 NAMECALL                         R0 R0 K2 ["GetGuiObjectsAtPosition"]
        9 CALL                             R0 3 -1
       10 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 JUMPIFNOT                        R2 ; [+44]
        3 JUMPIFNOT                        R1 ; [+43]
        4 GETTABLEKS                       R2 R1 K0 ["Visible"]
        6 JUMPIFNOT                        R2 ; [+40]
        7 GETTABLEKS                       R3 R1 K1 ["AbsolutePosition"]
        9 GETTABLEKS                       R4 R1 K2 ["AbsoluteSize"]
       11 LOADB                            R2 0
       12 GETTABLEKS                       R5 R0 K3 ["X"]
       14 GETTABLEKS                       R6 R3 K3 ["X"]
       16 JUMPIFNOTLE                      R6 R5 ; [+29]
       18 LOADB                            R2 0
       19 GETTABLEKS                       R5 R0 K4 ["Y"]
       21 GETTABLEKS                       R6 R3 K4 ["Y"]
       23 JUMPIFNOTLE                      R6 R5 ; [+22]
       25 LOADB                            R2 0
       26 GETTABLEKS                       R5 R0 K3 ["X"]
       28 GETTABLEKS                       R7 R3 K3 ["X"]
       30 GETTABLEKS                       R8 R4 K3 ["X"]
       32 ADD                              R6 R7 R8
       33 JUMPIFNOTLE                      R5 R6 ; [+12]
       35 GETTABLEKS                       R5 R0 K4 ["Y"]
       37 GETTABLEKS                       R7 R3 K4 ["Y"]
       39 GETTABLEKS                       R8 R4 K4 ["Y"]
       41 ADD                              R6 R7 R8
       42 JUMPIFLE                         R5 R6 ; [+2]
       44 LOADB                            R2 0 +1
       45 LOADB                            R2 1
       46 JUMPIF                           R2 ; [+2]
       47 LOADB                            R2 0
       48 RETURN                           R2 1
       49 LOADK                            R4 K5 ["LayerCollector"]
       50 NAMECALL                         R2 R1 K6 ["FindFirstAncestorWhichIsA"]
       52 CALL                             R2 2 1
       53 JUMPIF                           R2 ; [+2]
       54 LOADB                            R3 1
       55 RETURN                           R3 1
       56 GETIMPORT                        R3 K8 [pcall]
       58 NEWCLOSURE                       R4 P0
       59 CAPTURE                          VAL R2
       60 CAPTURE                          VAL R0
       61 CALL                             R3 1 2
       62 JUMPIF                           R3 ; [+2]
       63 LOADB                            R5 1
       64 RETURN                           R5 1
       65 MOVE                             R5 R4
       66 LOADNIL                          R6
       67 LOADNIL                          R7
       68 FORGPREP                         R5
       69 JUMPIFNOTEQ                      R9 R1 ; [+3]
       71 LOADB                            R10 1
       72 RETURN                           R10 1
       73 MOVE                             R12 R1
       74 NAMECALL                         R10 R9 K9 ["IsDescendantOf"]
       76 CALL                             R10 2 1
       77 JUMPIFNOT                        R10 ; [+16]
       78 MOVE                             R10 R9
       79 JUMPIFNOT                        R10 ; [+12]
       80 JUMPIFEQ                         R10 R1 ; [+11]
       82 LOADK                            R13 K10 ["ScrollingFrame"]
       83 NAMECALL                         R11 R10 K11 ["IsA"]
       85 CALL                             R11 2 1
       86 JUMPIFNOT                        R11 ; [+2]
       87 LOADB                            R11 0
       88 RETURN                           R11 1
       89 GETTABLEKS                       R10 R10 K12 ["Parent"]
       91 JUMPBACK                         ; [-13]
       92 LOADB                            R11 1
       93 RETURN                           R11 1
       94 LOADB                            R10 0
       95 RETURN                           R10 1
       96 FORGLOOP                         R5 2 ; [-28]
       98 LOADB                            R5 1
       99 RETURN                           R5 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+13]
        2 GETUPVAL                         R0 0
        3 LOADK                            R2 K0 ["RBX_MousePosition"]
        4 NAMECALL                         R0 R0 K1 ["GetAttribute"]
        6 CALL                             R0 2 1
        7 FASTCALL1                        TYPEOF R0 ; [+3]
        8 MOVE                             R2 R0
        9 GETIMPORT                        R1 K3 [typeof]
       11 CALL                             R1 1 1
       12 JUMPIFNOTEQKS                    R1 K4 ["Vector2"] ; [+2]
       14 RETURN                           R0 1
       15 GETUPVAL                         R0 1
       16 NAMECALL                         R0 R0 K5 ["GetMouseLocation"]
       18 CALL                             R0 1 -1
       19 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetMouseLocation"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+2]
        2 LOADNIL                          R2
        3 RETURN                           R2 1
        4 GETTABLEKS                       R3 R1 K0 ["AbsolutePosition"]
        6 SUB                              R2 R0 R3
        7 RETURN                           R2 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+2]
        2 LOADNIL                          R2
        3 RETURN                           R2 1
        4 GETTABLEKS                       R2 R1 K0 ["AbsoluteSize"]
        6 GETIMPORT                        R3 K3 [Vector2.new]
        8 GETTABLEKS                       R5 R0 K4 ["X"]
       10 LOADN                            R6 0
       11 GETTABLEKS                       R7 R2 K4 ["X"]
       13 FASTCALL                         MATH_CLAMP ; [+2]
       14 GETIMPORT                        R4 K7 [math.clamp]
       16 CALL                             R4 3 1
       17 GETTABLEKS                       R6 R0 K8 ["Y"]
       19 LOADN                            R7 0
       20 GETTABLEKS                       R8 R2 K8 ["Y"]
       22 FASTCALL                         MATH_CLAMP ; [+2]
       23 GETIMPORT                        R5 K7 [math.clamp]
       25 CALL                             R5 3 1
       26 CALL                             R3 2 -1
       27 RETURN                           R3 -1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 JUMPIF                           R2 ; [+2]
        2 LOADNIL                          R1
        3 JUMP                             ; [+3]
        4 GETTABLEKS                       R3 R2 K0 ["AbsolutePosition"]
        6 SUB                              R1 R0 R3
        7 JUMPIFNOT                        R1 ; [+29]
        8 GETUPVAL                         R3 0
        9 JUMPIF                           R3 ; [+2]
       10 LOADNIL                          R2
       11 JUMP                             ; [+24]
       12 GETTABLEKS                       R4 R3 K1 ["AbsoluteSize"]
       14 GETIMPORT                        R5 K4 [Vector2.new]
       16 GETTABLEKS                       R7 R1 K5 ["X"]
       18 LOADN                            R8 0
       19 GETTABLEKS                       R9 R4 K5 ["X"]
       21 FASTCALL                         MATH_CLAMP ; [+2]
       22 GETIMPORT                        R6 K8 [math.clamp]
       24 CALL                             R6 3 1
       25 GETTABLEKS                       R8 R1 K9 ["Y"]
       27 LOADN                            R9 0
       28 GETTABLEKS                       R10 R4 K9 ["Y"]
       30 FASTCALL                         MATH_CLAMP ; [+2]
       31 GETIMPORT                        R7 K8 [math.clamp]
       33 CALL                             R7 3 1
       34 CALL                             R5 2 1
       35 MOVE                             R2 R5
       36 SETUPVAL                         R2 1
       37 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+2]
        2 LOADNIL                          R1
        3 RETURN                           R1 1
        4 GETTABLEKS                       R2 R0 K1 ["AbsoluteSize"]
        6 DIVK                             R1 R2 K0 [2]
        7 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+14]
        2 GETUPVAL                         R1 0
        3 LOADK                            R3 K0 ["RBX_MousePosition"]
        4 NAMECALL                         R1 R1 K1 ["GetAttribute"]
        6 CALL                             R1 2 1
        7 FASTCALL1                        TYPEOF R1 ; [+3]
        8 MOVE                             R3 R1
        9 GETIMPORT                        R2 K3 [typeof]
       11 CALL                             R2 1 1
       12 JUMPIFNOTEQKS                    R2 K4 ["Vector2"] ; [+3]
       14 MOVE                             R0 R1
       15 JUMP                             ; [+4]
       16 GETUPVAL                         R0 1
       17 NAMECALL                         R0 R0 K5 ["GetMouseLocation"]
       19 CALL                             R0 1 1
       20 GETUPVAL                         R1 2
       21 MOVE                             R2 R0
       22 CALL                             R1 1 1
       23 JUMPIFNOT                        R1 ; [+8]
       24 GETUPVAL                         R2 3
       25 JUMPIF                           R2 ; [+2]
       26 LOADNIL                          R1
       27 RETURN                           R1 1
       28 GETTABLEKS                       R3 R2 K6 ["AbsolutePosition"]
       30 SUB                              R1 R0 R3
       31 RETURN                           R1 1
       32 GETUPVAL                         R1 1
       33 NAMECALL                         R1 R1 K5 ["GetMouseLocation"]
       35 CALL                             R1 1 1
       36 JUMPIFEQ                         R1 R0 ; [+13]
       38 GETUPVAL                         R2 2
       39 MOVE                             R3 R1
       40 CALL                             R2 1 1
       41 JUMPIFNOT                        R2 ; [+8]
       42 GETUPVAL                         R3 3
       43 JUMPIF                           R3 ; [+2]
       44 LOADNIL                          R2
       45 RETURN                           R2 1
       46 GETTABLEKS                       R4 R3 K6 ["AbsolutePosition"]
       48 SUB                              R2 R1 R4
       49 RETURN                           R2 1
       50 LOADNIL                          R2
       51 RETURN                           R2 1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 0
        3 RETURN                           R0 1
        4 GETUPVAL                         R1 1
        5 JUMPIF                           R1 ; [+2]
        6 LOADNIL                          R0
        7 RETURN                           R0 1
        8 GETTABLEKS                       R2 R1 K1 ["AbsoluteSize"]
       10 DIVK                             R0 R2 K0 [2]
       11 RETURN                           R0 1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["MouseTracker"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["RegisterMouseTrackingRelativeToWidgetAsync"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_14:
        0 JUMPIFNOT                        R0 ; [+1]
        1 JUMPIF                           R1 ; [+1]
        2 RETURN                           R0 0
        3 GETIMPORT                        R2 K1 [pcall]
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          VAL R1
        7 CALL                             R2 1 2
        8 JUMPIFNOT                        R2 ; [+1]
        9 JUMPIF                           R3 ; [+1]
       10 RETURN                           R0 0
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K2 ["join"]
       14 NAMECALL                         R5 R1 K3 ["GetUri"]
       16 CALL                             R5 1 1
       17 DUPTABLE                         R6 K7 [{["Category"] = "Widgets", ["ItemId"]}]
       18 GETTABLEKS                       R7 R0 K8 ["Name"]
       20 SETTABLEKS                       R7 R6 K6 ["ItemId"]
       22 CALL                             R4 2 1
       23 GETIMPORT                        R5 K1 [pcall]
       25 NEWCLOSURE                       R6 P1
       26 CAPTURE                          VAL R3
       27 CAPTURE                          VAL R4
       28 CALL                             R5 1 2
       29 JUMPIFNOT                        R5 ; [+2]
       30 JUMPIFNOT                        R6 ; [+1]
       31 SETUPVAL                         R6 1
       32 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R3 0
        1 JUMPIF                           R3 ; [+1]
        2 RETURN                           R0 0
        3 MULK                             R4 R2 K0 [0.2]
        4 MULK                             R5 R0 K1 [0.1]
        5 ADD                              R3 R4 R5
        6 GETUPVAL                         R6 1
        7 JUMPIFNOT                        R6 ; [+14]
        8 GETUPVAL                         R6 1
        9 LOADK                            R8 K2 ["RBX_MousePosition"]
       10 NAMECALL                         R6 R6 K3 ["GetAttribute"]
       12 CALL                             R6 2 1
       13 FASTCALL1                        TYPEOF R6 ; [+3]
       14 MOVE                             R8 R6
       15 GETIMPORT                        R7 K5 [typeof]
       17 CALL                             R7 1 1
       18 JUMPIFNOTEQKS                    R7 K6 ["Vector2"] ; [+3]
       20 MOVE                             R5 R6
       21 JUMP                             ; [+4]
       22 GETUPVAL                         R5 2
       23 NAMECALL                         R5 R5 K7 ["GetMouseLocation"]
       25 CALL                             R5 1 1
       26 GETUPVAL                         R6 3
       27 MOVE                             R7 R5
       28 CALL                             R6 1 1
       29 JUMPIFNOT                        R6 ; [+8]
       30 GETUPVAL                         R6 4
       31 JUMPIF                           R6 ; [+2]
       32 LOADNIL                          R4
       33 JUMP                             ; [+23]
       34 GETTABLEKS                       R7 R6 K8 ["AbsolutePosition"]
       36 SUB                              R4 R5 R7
       37 JUMP                             ; [+19]
       38 GETUPVAL                         R6 2
       39 NAMECALL                         R6 R6 K7 ["GetMouseLocation"]
       41 CALL                             R6 1 1
       42 JUMPIFEQ                         R6 R5 ; [+13]
       44 GETUPVAL                         R7 3
       45 MOVE                             R8 R6
       46 CALL                             R7 1 1
       47 JUMPIFNOT                        R7 ; [+8]
       48 GETUPVAL                         R7 4
       49 JUMPIF                           R7 ; [+2]
       50 LOADNIL                          R4
       51 JUMP                             ; [+5]
       52 GETTABLEKS                       R8 R7 K8 ["AbsolutePosition"]
       54 SUB                              R4 R6 R8
       55 JUMP                             ; [+1]
       56 LOADNIL                          R4
       57 JUMPIF                           R4 ; [+20]
       58 JUMPIFEQKN                       R2 K9 [0] ; [+18]
       60 GETUPVAL                         R5 5
       61 MOVE                             R7 R3
       62 GETUPVAL                         R9 6
       63 JUMPIFNOT                        R9 ; [+2]
       64 GETUPVAL                         R8 6
       65 JUMP                             ; [+7]
       66 GETUPVAL                         R9 4
       67 JUMPIF                           R9 ; [+2]
       68 LOADNIL                          R8
       69 JUMP                             ; [+3]
       70 GETTABLEKS                       R10 R9 K11 ["AbsoluteSize"]
       72 DIVK                             R8 R10 K10 [2]
       73 NAMECALL                         R5 R5 K12 ["zoomBy"]
       75 CALL                             R5 3 0
       76 RETURN                           R0 0
       77 RETURN                           R0 0
       78 JUMPIFEQKN                       R3 K9 [0] ; [+7]
       80 GETUPVAL                         R5 5
       81 MOVE                             R7 R3
       82 MOVE                             R8 R4
       83 NAMECALL                         R5 R5 K12 ["zoomBy"]
       85 CALL                             R5 3 0
       86 GETIMPORT                        R5 K14 [Vector2.zero]
       88 JUMPIFEQ                         R1 R5 ; [+17]
       90 GETUPVAL                         R5 7
       91 LOADN                            R7 50
       92 GETTABLEKS                       R8 R1 K15 ["X"]
       94 MUL                              R6 R7 R8
       95 SUB                              R5 R5 R6
       96 SETUPVAL                         R5 7
       97 GETUPVAL                         R5 8
       98 LOADN                            R7 50
       99 GETTABLEKS                       R8 R1 K16 ["Y"]
      101 MUL                              R6 R7 R8
      102 SUB                              R5 R5 R6
      103 SETUPVAL                         R5 8
      104 GETUPVAL                         R5 9
      105 CALL                             R5 0 0
      106 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 MOVE                             R6 R2
        4 CALL                             R3 3 0
        5 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 NAMECALL                         R0 R0 K0 ["Connect"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_18:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U0
        5 CALL                             R1 1 2
        6 JUMPIFNOT                        R1 ; [+8]
        7 JUMPIFNOT                        R2 ; [+7]
        8 GETUPVAL                         R4 1
        9 FASTCALL2                        TABLE_INSERT R4 R2 ; [+4]
       11 MOVE                             R5 R2
       12 GETIMPORT                        R3 K4 [table.insert]
       14 CALL                             R3 2 0
       15 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R2 0
        1 JUMPIF                           R2 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R2 1
        4 JUMPIFNOT                        R2 ; [+4]
        5 GETUPVAL                         R2 2
        6 JUMPIFNOT                        R2 ; [+2]
        7 GETUPVAL                         R2 3
        8 JUMPIF                           R2 ; [+1]
        9 RETURN                           R0 0
       10 LOADK                            R4 K0 [0.1]
       11 LOADN                            R5 26
       12 FASTCALL3                        MATH_CLAMP R0 R4 R5
       14 MOVE                             R3 R0
       15 GETIMPORT                        R2 K3 [math.clamp]
       17 CALL                             R2 3 1
       18 MOVE                             R0 R2
       19 GETUPVAL                         R2 4
       20 JUMPIFNOTEQ                      R0 R2 ; [+2]
       22 RETURN                           R0 0
       23 GETUPVAL                         R2 1
       24 GETTABLEKS                       R2 R2 K4 ["AbsoluteSize"]
       26 GETTABLEKS                       R3 R2 K5 ["X"]
       28 LOADN                            R4 0
       29 JUMPIFLE                         R3 R4 ; [+6]
       31 GETTABLEKS                       R3 R2 K6 ["Y"]
       33 LOADN                            R4 0
       34 JUMPIFNOTLE                      R3 R4 ; [+5]
       36 SETUPVAL                         R0 4
       37 GETUPVAL                         R3 5
       38 CALL                             R3 0 0
       39 RETURN                           R0 0
       40 MOVE                             R3 R1
       41 JUMPIF                           R3 ; [+1]
       42 DIVK                             R3 R2 K7 [2]
       43 GETTABLEKS                       R6 R3 K5 ["X"]
       45 GETUPVAL                         R7 6
       46 SUB                              R5 R6 R7
       47 GETUPVAL                         R6 4
       48 DIV                              R4 R5 R6
       49 GETTABLEKS                       R7 R3 K6 ["Y"]
       51 GETUPVAL                         R8 7
       52 SUB                              R6 R7 R8
       53 GETUPVAL                         R7 4
       54 DIV                              R5 R6 R7
       55 SETUPVAL                         R0 4
       56 GETTABLEKS                       R7 R3 K5 ["X"]
       58 MUL                              R8 R4 R0
       59 SUB                              R6 R7 R8
       60 SETUPVAL                         R6 6
       61 GETTABLEKS                       R7 R3 K6 ["Y"]
       63 MUL                              R8 R5 R0
       64 SUB                              R6 R7 R8
       65 SETUPVAL                         R6 7
       66 GETUPVAL                         R6 5
       67 CALL                             R6 0 0
       68 RETURN                           R0 0

PROTO_20:
        0 GETTABLEKS                       R2 R0 K0 ["KeyCode"]
        2 GETIMPORT                        R3 K3 [Enum.KeyCode.Space]
        4 JUMPIFNOTEQ                      R2 R3 ; [+3]
        6 LOADB                            R2 1
        7 SETUPVAL                         R2 0
        8 RETURN                           R0 0

PROTO_21:
        0 GETTABLEKS                       R1 R0 K0 ["KeyCode"]
        2 GETIMPORT                        R2 K3 [Enum.KeyCode.Space]
        4 JUMPIFNOTEQ                      R1 R2 ; [+5]
        6 LOADB                            R1 0
        7 SETUPVAL                         R1 0
        8 LOADB                            R1 0
        9 SETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R0 K4 ["UserInputType"]
       12 GETIMPORT                        R2 K6 [Enum.UserInputType.MouseButton3]
       14 JUMPIFEQ                         R1 R2 ; [+7]
       16 GETTABLEKS                       R1 R0 K4 ["UserInputType"]
       18 GETIMPORT                        R2 K8 [Enum.UserInputType.MouseButton1]
       20 JUMPIFNOTEQ                      R1 R2 ; [+3]
       22 LOADB                            R1 0
       23 SETUPVAL                         R1 1
       24 RETURN                           R0 0

PROTO_22:
        0 GETTABLEKS                       R1 R0 K0 ["UserInputType"]
        2 GETIMPORT                        R2 K3 [Enum.UserInputType.MouseButton3]
        4 JUMPIFEQ                         R1 R2 ; [+7]
        6 GETTABLEKS                       R1 R0 K0 ["UserInputType"]
        8 GETIMPORT                        R2 K5 [Enum.UserInputType.MouseButton1]
       10 JUMPIFNOTEQ                      R1 R2 ; [+3]
       12 LOADB                            R1 0
       13 SETUPVAL                         R1 0
       14 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+1]
        2 RETURN                           R0 0
        3 GETIMPORT                        R1 K2 [Vector2.new]
        5 GETTABLEKS                       R2 R0 K3 ["Position"]
        7 GETTABLEKS                       R2 R2 K4 ["X"]
        9 GETTABLEKS                       R3 R0 K3 ["Position"]
       11 GETTABLEKS                       R3 R3 K5 ["Y"]
       13 CALL                             R1 2 1
       14 GETUPVAL                         R3 1
       15 JUMPIF                           R3 ; [+2]
       16 LOADNIL                          R2
       17 JUMP                             ; [+3]
       18 GETTABLEKS                       R4 R3 K6 ["AbsolutePosition"]
       20 SUB                              R2 R1 R4
       21 JUMPIFNOT                        R2 ; [+29]
       22 GETUPVAL                         R4 1
       23 JUMPIF                           R4 ; [+2]
       24 LOADNIL                          R3
       25 JUMP                             ; [+24]
       26 GETTABLEKS                       R5 R4 K7 ["AbsoluteSize"]
       28 GETIMPORT                        R6 K2 [Vector2.new]
       30 GETTABLEKS                       R8 R2 K4 ["X"]
       32 LOADN                            R9 0
       33 GETTABLEKS                       R10 R5 K4 ["X"]
       35 FASTCALL                         MATH_CLAMP ; [+2]
       36 GETIMPORT                        R7 K10 [math.clamp]
       38 CALL                             R7 3 1
       39 GETTABLEKS                       R9 R2 K5 ["Y"]
       41 LOADN                            R10 0
       42 GETTABLEKS                       R11 R5 K5 ["Y"]
       44 FASTCALL                         MATH_CLAMP ; [+2]
       45 GETIMPORT                        R8 K10 [math.clamp]
       47 CALL                             R8 3 1
       48 CALL                             R6 2 1
       49 MOVE                             R3 R6
       50 SETUPVAL                         R3 2
       51 GETTABLEKS                       R1 R0 K11 ["UserInputType"]
       53 GETIMPORT                        R2 K14 [Enum.UserInputType.MouseButton3]
       55 JUMPIFNOTEQ                      R1 R2 ; [+22]
       57 LOADB                            R1 1
       58 SETUPVAL                         R1 3
       59 GETIMPORT                        R1 K2 [Vector2.new]
       61 GETTABLEKS                       R2 R0 K3 ["Position"]
       63 GETTABLEKS                       R2 R2 K4 ["X"]
       65 GETTABLEKS                       R3 R0 K3 ["Position"]
       67 GETTABLEKS                       R3 R3 K5 ["Y"]
       69 CALL                             R1 2 1
       70 SETUPVAL                         R1 4
       71 GETIMPORT                        R1 K2 [Vector2.new]
       73 GETUPVAL                         R2 6
       74 GETUPVAL                         R3 7
       75 CALL                             R1 2 1
       76 SETUPVAL                         R1 5
       77 RETURN                           R0 0
       78 GETTABLEKS                       R1 R0 K11 ["UserInputType"]
       80 GETIMPORT                        R2 K16 [Enum.UserInputType.MouseButton1]
       82 JUMPIFNOTEQ                      R1 R2 ; [+25]
       84 GETUPVAL                         R1 8
       85 JUMPIF                           R1 ; [+2]
       86 GETUPVAL                         R1 9
       87 JUMPIFNOT                        R1 ; [+20]
       88 LOADB                            R1 1
       89 SETUPVAL                         R1 3
       90 GETIMPORT                        R1 K2 [Vector2.new]
       92 GETTABLEKS                       R2 R0 K3 ["Position"]
       94 GETTABLEKS                       R2 R2 K4 ["X"]
       96 GETTABLEKS                       R3 R0 K3 ["Position"]
       98 GETTABLEKS                       R3 R3 K5 ["Y"]
      100 CALL                             R1 2 1
      101 SETUPVAL                         R1 4
      102 GETIMPORT                        R1 K2 [Vector2.new]
      104 GETUPVAL                         R2 6
      105 GETUPVAL                         R3 7
      106 CALL                             R1 2 1
      107 SETUPVAL                         R1 5
      108 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+1]
        2 RETURN                           R0 0
        3 GETTABLEKS                       R1 R0 K0 ["UserInputType"]
        5 GETIMPORT                        R2 K3 [Enum.UserInputType.MouseMovement]
        7 JUMPIFNOTEQ                      R1 R2 ; [+49]
        9 GETIMPORT                        R1 K6 [Vector2.new]
       11 GETTABLEKS                       R2 R0 K7 ["Position"]
       13 GETTABLEKS                       R2 R2 K8 ["X"]
       15 GETTABLEKS                       R3 R0 K7 ["Position"]
       17 GETTABLEKS                       R3 R3 K9 ["Y"]
       19 CALL                             R1 2 1
       20 GETUPVAL                         R3 1
       21 JUMPIF                           R3 ; [+2]
       22 LOADNIL                          R2
       23 JUMP                             ; [+3]
       24 GETTABLEKS                       R4 R3 K10 ["AbsolutePosition"]
       26 SUB                              R2 R1 R4
       27 JUMPIFNOT                        R2 ; [+29]
       28 GETUPVAL                         R4 1
       29 JUMPIF                           R4 ; [+2]
       30 LOADNIL                          R3
       31 JUMP                             ; [+24]
       32 GETTABLEKS                       R5 R4 K11 ["AbsoluteSize"]
       34 GETIMPORT                        R6 K6 [Vector2.new]
       36 GETTABLEKS                       R8 R2 K8 ["X"]
       38 LOADN                            R9 0
       39 GETTABLEKS                       R10 R5 K8 ["X"]
       41 FASTCALL                         MATH_CLAMP ; [+2]
       42 GETIMPORT                        R7 K14 [math.clamp]
       44 CALL                             R7 3 1
       45 GETTABLEKS                       R9 R2 K9 ["Y"]
       47 LOADN                            R10 0
       48 GETTABLEKS                       R11 R5 K9 ["Y"]
       50 FASTCALL                         MATH_CLAMP ; [+2]
       51 GETIMPORT                        R8 K14 [math.clamp]
       53 CALL                             R8 3 1
       54 CALL                             R6 2 1
       55 MOVE                             R3 R6
       56 SETUPVAL                         R3 2
       57 GETUPVAL                         R1 3
       58 JUMPIFNOT                        R1 ; [+35]
       59 GETTABLEKS                       R1 R0 K0 ["UserInputType"]
       61 GETIMPORT                        R2 K3 [Enum.UserInputType.MouseMovement]
       63 JUMPIFNOTEQ                      R1 R2 ; [+30]
       65 GETIMPORT                        R1 K6 [Vector2.new]
       67 GETTABLEKS                       R2 R0 K7 ["Position"]
       69 GETTABLEKS                       R2 R2 K8 ["X"]
       71 GETTABLEKS                       R3 R0 K7 ["Position"]
       73 GETTABLEKS                       R3 R3 K9 ["Y"]
       75 CALL                             R1 2 1
       76 GETUPVAL                         R3 4
       77 SUB                              R2 R1 R3
       78 GETUPVAL                         R4 6
       79 GETTABLEKS                       R4 R4 K8 ["X"]
       81 GETTABLEKS                       R5 R2 K8 ["X"]
       83 ADD                              R3 R4 R5
       84 SETUPVAL                         R3 5
       85 GETUPVAL                         R4 6
       86 GETTABLEKS                       R4 R4 K9 ["Y"]
       88 GETTABLEKS                       R5 R2 K9 ["Y"]
       90 ADD                              R3 R4 R5
       91 SETUPVAL                         R3 7
       92 GETUPVAL                         R3 8
       93 CALL                             R3 0 0
       94 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["PointerAction"]
        3 RETURN                           R0 1

PROTO_26:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["PointerAction"]
        3 RETURN                           R0 1

PROTO_27:
        0 SETUPVAL                         R2 0
        1 SETUPVAL                         R1 1
        2 GETUPVAL                         R5 2
        3 MOVE                             R6 R3
        4 MOVE                             R7 R4
        5 CALL                             R5 2 0
        6 GETIMPORT                        R5 K2 [Instance.new]
        8 LOADK                            R6 K3 ["UIScale"]
        9 CALL                             R5 1 1
       10 GETUPVAL                         R6 3
       11 SETTABLEKS                       R6 R5 K4 ["Scale"]
       13 SETTABLEKS                       R2 R5 K5 ["Parent"]
       15 SETUPVAL                         R5 4
       16 LOADB                            R6 0
       17 GETIMPORT                        R7 K8 [Vector2.zero]
       19 GETIMPORT                        R8 K8 [Vector2.zero]
       21 LOADB                            R9 0
       22 GETUPVAL                         R11 5
       23 GETUPVAL                         R12 6
       24 GETTABLEKS                       R12 R12 K9 ["InputBegan"]
       26 NEWCLOSURE                       R14 P0
       27 CAPTURE                          REF R9
       28 NAMECALL                         R12 R12 K10 ["Connect"]
       30 CALL                             R12 2 -1
       31 FASTCALL                         TABLE_INSERT ; [+2]
       32 GETIMPORT                        R10 K13 [table.insert]
       34 CALL                             R10 -1 0
       35 GETUPVAL                         R11 5
       36 GETUPVAL                         R12 6
       37 GETTABLEKS                       R12 R12 K14 ["InputEnded"]
       39 NEWCLOSURE                       R14 P1
       40 CAPTURE                          REF R9
       41 CAPTURE                          REF R6
       42 NAMECALL                         R12 R12 K10 ["Connect"]
       44 CALL                             R12 2 -1
       45 FASTCALL                         TABLE_INSERT ; [+2]
       46 GETIMPORT                        R10 K13 [table.insert]
       48 CALL                             R10 -1 0
       49 GETUPVAL                         R11 5
       50 GETTABLEKS                       R12 R1 K14 ["InputEnded"]
       52 NEWCLOSURE                       R14 P2
       53 CAPTURE                          REF R6
       54 NAMECALL                         R12 R12 K10 ["Connect"]
       56 CALL                             R12 2 -1
       57 FASTCALL                         TABLE_INSERT ; [+2]
       58 GETIMPORT                        R10 K13 [table.insert]
       60 CALL                             R10 -1 0
       61 GETUPVAL                         R11 5
       62 GETTABLEKS                       R12 R1 K9 ["InputBegan"]
       64 NEWCLOSURE                       R14 P3
       65 CAPTURE                          UPVAL U7
       66 CAPTURE                          UPVAL U1
       67 CAPTURE                          UPVAL U8
       68 CAPTURE                          REF R6
       69 CAPTURE                          REF R7
       70 CAPTURE                          REF R8
       71 CAPTURE                          UPVAL U9
       72 CAPTURE                          UPVAL U10
       73 CAPTURE                          REF R9
       74 CAPTURE                          UPVAL U11
       75 NAMECALL                         R12 R12 K10 ["Connect"]
       77 CALL                             R12 2 -1
       78 FASTCALL                         TABLE_INSERT ; [+2]
       79 GETIMPORT                        R10 K13 [table.insert]
       81 CALL                             R10 -1 0
       82 GETUPVAL                         R11 5
       83 GETTABLEKS                       R12 R1 K15 ["InputChanged"]
       85 NEWCLOSURE                       R14 P4
       86 CAPTURE                          UPVAL U7
       87 CAPTURE                          UPVAL U1
       88 CAPTURE                          UPVAL U8
       89 CAPTURE                          REF R6
       90 CAPTURE                          REF R7
       91 CAPTURE                          UPVAL U9
       92 CAPTURE                          REF R8
       93 CAPTURE                          UPVAL U10
       94 CAPTURE                          UPVAL U12
       95 NAMECALL                         R12 R12 K10 ["Connect"]
       97 CALL                             R12 2 -1
       98 FASTCALL                         TABLE_INSERT ; [+2]
       99 GETIMPORT                        R10 K13 [table.insert]
      101 CALL                             R10 -1 0
      102 JUMPIFNOT                        R3 ; [+29]
      103 GETIMPORT                        R10 K17 [game]
      105 LOADK                            R12 K18 ["PluginGuiProcessPointerAction"]
      106 NAMECALL                         R10 R10 K19 ["GetEngineFeature"]
      108 CALL                             R10 2 1
      109 JUMPIFNOT                        R10 ; [+22]
      110 GETIMPORT                        R10 K21 [pcall]
      112 NEWCLOSURE                       R11 P5
      113 CAPTURE                          VAL R3
      114 CALL                             R10 1 2
      115 JUMPIFNOT                        R10 ; [+16]
      116 JUMPIFNOT                        R11 ; [+15]
      117 GETIMPORT                        R12 K21 [pcall]
      119 NEWCLOSURE                       R13 P6
      120 CAPTURE                          VAL R11
      121 CAPTURE                          UPVAL U13
      122 CALL                             R12 1 2
      123 JUMPIFNOT                        R12 ; [+8]
      124 JUMPIFNOT                        R13 ; [+7]
      125 GETUPVAL                         R15 5
      126 FASTCALL2                        TABLE_INSERT R15 R13 ; [+4]
      128 MOVE                             R16 R13
      129 GETIMPORT                        R14 K13 [table.insert]
      131 CALL                             R14 2 0
      132 GETIMPORT                        R10 K21 [pcall]
      134 DUPCLOSURE                       R11 K22 [PROTO_26]
      135 CAPTURE                          UPVAL U6
      136 CALL                             R10 1 2
      137 JUMPIFNOT                        R10 ; [+16]
      138 JUMPIFNOT                        R11 ; [+15]
      139 GETIMPORT                        R12 K21 [pcall]
      141 NEWCLOSURE                       R13 P6
      142 CAPTURE                          VAL R11
      143 CAPTURE                          UPVAL U13
      144 CALL                             R12 1 2
      145 JUMPIFNOT                        R12 ; [+8]
      146 JUMPIFNOT                        R13 ; [+7]
      147 GETUPVAL                         R15 5
      148 FASTCALL2                        TABLE_INSERT R15 R13 ; [+4]
      150 MOVE                             R16 R13
      151 GETIMPORT                        R14 K13 [table.insert]
      153 CALL                             R14 2 0
      154 CLOSEUPVALS                      R6
      155 RETURN                           R0 0

PROTO_28:
        0 LOADN                            R1 1
        1 SETUPVAL                         R1 0
        2 LOADN                            R1 0
        3 SETUPVAL                         R1 1
        4 LOADN                            R1 0
        5 SETUPVAL                         R1 2
        6 GETUPVAL                         R1 3
        7 CALL                             R1 0 0
        8 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOTEQ                      R2 R1 ; [+2]
        3 RETURN                           R0 0
        4 SETUPVAL                         R1 0
        5 GETUPVAL                         R2 0
        6 JUMPIF                           R2 ; [+8]
        7 LOADN                            R2 1
        8 SETUPVAL                         R2 1
        9 LOADN                            R2 0
       10 SETUPVAL                         R2 2
       11 LOADN                            R2 0
       12 SETUPVAL                         R2 3
       13 GETUPVAL                         R2 4
       14 CALL                             R2 0 0
       15 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R1 0
        1 RETURN                           R1 1

PROTO_31:
        0 SETUPVAL                         R1 0
        1 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R1 0
        1 RETURN                           R1 1

PROTO_33:
        0 GETUPVAL                         R4 0
        1 JUMPIF                           R4 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R4 1
        4 JUMPIFNOT                        R4 ; [+4]
        5 GETUPVAL                         R4 2
        6 JUMPIFNOT                        R4 ; [+2]
        7 GETUPVAL                         R4 3
        8 JUMPIF                           R4 ; [+1]
        9 RETURN                           R0 0
       10 LOADN                            R4 0
       11 JUMPIFLE                         R1 R4 ; [+4]
       13 LOADN                            R4 0
       14 JUMPIFNOTLE                      R2 R4 ; [+2]
       16 RETURN                           R0 0
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R4 R4 K0 ["AbsoluteSize"]
       20 GETTABLEKS                       R5 R4 K1 ["X"]
       22 LOADN                            R6 0
       23 JUMPIFLE                         R5 R6 ; [+6]
       25 GETTABLEKS                       R5 R4 K2 ["Y"]
       27 LOADN                            R6 0
       28 JUMPIFNOTLE                      R5 R6 ; [+2]
       30 RETURN                           R0 0
       31 LOADN                            R6 0
       32 ORK                              R7 R3 K3 [64]
       33 FASTCALL2                        MATH_MAX R6 R7 ; [+3]
       35 GETIMPORT                        R5 K6 [math.max]
       37 CALL                             R5 2 1
       38 LOADN                            R7 1
       39 GETTABLEKS                       R9 R4 K1 ["X"]
       41 MULK                             R10 R5 K7 [2]
       42 SUB                              R8 R9 R10
       43 FASTCALL2                        MATH_MAX R7 R8 ; [+3]
       45 GETIMPORT                        R6 K6 [math.max]
       47 CALL                             R6 2 1
       48 LOADN                            R8 1
       49 GETTABLEKS                       R10 R4 K2 ["Y"]
       51 MULK                             R11 R5 K7 [2]
       52 SUB                              R9 R10 R11
       53 FASTCALL2                        MATH_MAX R8 R9 ; [+3]
       55 GETIMPORT                        R7 K6 [math.max]
       57 CALL                             R7 2 1
       58 DIV                              R9 R6 R1
       59 DIV                              R10 R7 R2
       60 LOADN                            R11 1
       61 FASTCALL                         MATH_MIN ; [+2]
       62 GETIMPORT                        R8 K9 [math.min]
       64 CALL                             R8 3 1
       65 LOADK                            R11 K10 [0.1]
       66 LOADN                            R12 26
       67 FASTCALL3                        MATH_CLAMP R8 R11 R12
       69 MOVE                             R10 R8
       70 GETIMPORT                        R9 K12 [math.clamp]
       72 CALL                             R9 3 1
       73 MOVE                             R8 R9
       74 SETUPVAL                         R8 4
       75 SUBRK                            R11 K13 [1] R8
       76 GETTABLEKS                       R12 R4 K1 ["X"]
       78 MUL                              R10 R11 R12
       79 DIVK                             R9 R10 K7 [2]
       80 SETUPVAL                         R9 5
       81 SUBRK                            R11 K13 [1] R8
       82 GETTABLEKS                       R12 R4 K2 ["Y"]
       84 MUL                              R10 R11 R12
       85 DIVK                             R9 R10 K7 [2]
       86 SETUPVAL                         R9 6
       87 GETUPVAL                         R9 7
       88 CALL                             R9 0 0
       89 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 0
        3 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R5 1
        2 ADDK                             R6 R1 K0 [1]
        3 MUL                              R4 R5 R6
        4 MOVE                             R5 R2
        5 CALL                             R3 2 0
        6 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R1 0
        1 RETURN                           R1 1

PROTO_37:
        0 GETIMPORT                        R1 K2 [Vector2.new]
        2 GETUPVAL                         R2 0
        3 GETUPVAL                         R3 1
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_38:
        0 GETUPVAL                         R3 0
        1 FASTCALL2                        TABLE_INSERT R3 R1 ; [+4]
        3 MOVE                             R4 R1
        4 GETIMPORT                        R2 K2 [table.insert]
        6 CALL                             R2 2 0
        7 RETURN                           R0 0

PROTO_39:
        0 GETUPVAL                         R3 0
        1 FASTCALL2                        TABLE_INSERT R3 R1 ; [+4]
        3 MOVE                             R4 R1
        4 GETIMPORT                        R2 K2 [table.insert]
        6 CALL                             R2 2 0
        7 MOVE                             R2 R1
        8 GETIMPORT                        R3 K5 [Vector2.new]
       10 GETUPVAL                         R4 1
       11 GETUPVAL                         R5 2
       12 CALL                             R3 2 -1
       13 CALL                             R2 -1 0
       14 RETURN                           R0 0

PROTO_40:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 NAMECALL                         R6 R5 K0 ["Disconnect"]
        6 CALL                             R6 1 0
        7 FORGLOOP                         R1 2 ; [-4]
        9 GETIMPORT                        R1 K3 [table.clear]
       11 GETUPVAL                         R2 0
       12 CALL                             R1 1 0
       13 GETUPVAL                         R1 1
       14 JUMPIFNOT                        R1 ; [+6]
       15 GETUPVAL                         R1 1
       16 NAMECALL                         R1 R1 K4 ["Destroy"]
       18 CALL                             R1 1 0
       19 LOADNIL                          R1
       20 SETUPVAL                         R1 1
       21 LOADNIL                          R1
       22 SETUPVAL                         R1 2
       23 LOADNIL                          R1
       24 SETUPVAL                         R1 3
       25 GETUPVAL                         R1 4
       26 JUMPIFNOT                        R1 ; [+6]
       27 GETUPVAL                         R1 4
       28 NAMECALL                         R1 R1 K4 ["Destroy"]
       30 CALL                             R1 1 0
       31 LOADNIL                          R1
       32 SETUPVAL                         R1 4
       33 GETIMPORT                        R1 K3 [table.clear]
       35 GETUPVAL                         R2 5
       36 CALL                             R1 1 0
       37 GETIMPORT                        R1 K3 [table.clear]
       39 GETUPVAL                         R2 6
       40 CALL                             R1 1 0
       41 RETURN                           R0 0

PROTO_41:
        0 LOADN                            R0 1
        1 LOADN                            R1 0
        2 LOADN                            R2 0
        3 LOADB                            R3 1
        4 LOADB                            R4 0
        5 NEWTABLE                         R5 0 0
        7 LOADNIL                          R6
        8 LOADNIL                          R7
        9 LOADNIL                          R8
       10 LOADNIL                          R9
       11 LOADNIL                          R10
       12 NEWTABLE                         R11 0 0
       14 NEWTABLE                         R12 0 0
       16 NEWTABLE                         R13 0 0
       18 NEWCLOSURE                       R14 P0
       19 CAPTURE                          REF R7
       20 CAPTURE                          REF R6
       21 CAPTURE                          REF R0
       22 CAPTURE                          REF R1
       23 CAPTURE                          REF R2
       24 CAPTURE                          VAL R11
       25 CAPTURE                          VAL R12
       26 DUPCLOSURE                       R15 K0 [PROTO_1]
       27 NEWCLOSURE                       R16 P2
       28 CAPTURE                          REF R8
       29 CAPTURE                          REF R3
       30 NEWCLOSURE                       R17 P3
       31 CAPTURE                          REF R9
       32 CAPTURE                          UPVAL U0
       33 DUPCLOSURE                       R18 K1 [PROTO_5]
       34 CAPTURE                          UPVAL U0
       35 NEWCLOSURE                       R19 P5
       36 CAPTURE                          REF R8
       37 NEWCLOSURE                       R20 P6
       38 CAPTURE                          REF R8
       39 NEWCLOSURE                       R21 P7
       40 CAPTURE                          REF R8
       41 CAPTURE                          REF R10
       42 NEWCLOSURE                       R22 P8
       43 CAPTURE                          REF R8
       44 NEWCLOSURE                       R23 P9
       45 CAPTURE                          REF R9
       46 CAPTURE                          UPVAL U0
       47 CAPTURE                          VAL R16
       48 CAPTURE                          REF R8
       49 NEWCLOSURE                       R24 P10
       50 CAPTURE                          REF R10
       51 CAPTURE                          REF R8
       52 NEWCLOSURE                       R25 P11
       53 CAPTURE                          UPVAL U1
       54 CAPTURE                          REF R9
       55 NEWCLOSURE                       R26 P12
       56 CAPTURE                          REF R3
       57 CAPTURE                          REF R9
       58 CAPTURE                          UPVAL U0
       59 CAPTURE                          VAL R16
       60 CAPTURE                          REF R8
       61 CAPTURE                          VAL R13
       62 CAPTURE                          REF R10
       63 CAPTURE                          REF R1
       64 CAPTURE                          REF R2
       65 CAPTURE                          VAL R14
       66 NEWCLOSURE                       R27 P13
       67 CAPTURE                          VAL R26
       68 CAPTURE                          VAL R5
       69 NEWCLOSURE                       R28 P14
       70 CAPTURE                          REF R3
       71 CAPTURE                          REF R8
       72 CAPTURE                          REF R7
       73 CAPTURE                          REF R6
       74 CAPTURE                          REF R0
       75 CAPTURE                          VAL R14
       76 CAPTURE                          REF R1
       77 CAPTURE                          REF R2
       78 NEWCLOSURE                       R29 P15
       79 CAPTURE                          REF R7
       80 CAPTURE                          REF R8
       81 CAPTURE                          VAL R25
       82 CAPTURE                          REF R0
       83 CAPTURE                          REF R6
       84 CAPTURE                          VAL R5
       85 CAPTURE                          UPVAL U0
       86 CAPTURE                          REF R3
       87 CAPTURE                          REF R10
       88 CAPTURE                          REF R1
       89 CAPTURE                          REF R2
       90 CAPTURE                          REF R4
       91 CAPTURE                          VAL R14
       92 CAPTURE                          VAL R26
       93 SETTABLEKS                       R29 R13 K2 ["attach"]
       95 NEWCLOSURE                       R29 P16
       96 CAPTURE                          REF R0
       97 CAPTURE                          REF R1
       98 CAPTURE                          REF R2
       99 CAPTURE                          VAL R14
      100 SETTABLEKS                       R29 R13 K3 ["reset"]
      102 NEWCLOSURE                       R29 P17
      103 CAPTURE                          REF R3
      104 CAPTURE                          REF R0
      105 CAPTURE                          REF R1
      106 CAPTURE                          REF R2
      107 CAPTURE                          VAL R14
      108 SETTABLEKS                       R29 R13 K4 ["setEnabled"]
      110 NEWCLOSURE                       R29 P18
      111 CAPTURE                          REF R3
      112 SETTABLEKS                       R29 R13 K5 ["isEnabled"]
      114 NEWCLOSURE                       R29 P19
      115 CAPTURE                          REF R4
      116 SETTABLEKS                       R29 R13 K6 ["setDirectPanEnabled"]
      118 NEWCLOSURE                       R29 P20
      119 CAPTURE                          REF R4
      120 SETTABLEKS                       R29 R13 K7 ["isDirectPanEnabled"]
      122 NEWCLOSURE                       R29 P21
      123 CAPTURE                          REF R3
      124 CAPTURE                          REF R8
      125 CAPTURE                          REF R7
      126 CAPTURE                          REF R6
      127 CAPTURE                          REF R0
      128 CAPTURE                          REF R1
      129 CAPTURE                          REF R2
      130 CAPTURE                          VAL R14
      131 SETTABLEKS                       R29 R13 K8 ["fitToBounds"]
      133 NEWCLOSURE                       R29 P22
      134 CAPTURE                          VAL R28
      135 SETTABLEKS                       R29 R13 K9 ["setScale"]
      137 NEWCLOSURE                       R29 P23
      138 CAPTURE                          VAL R28
      139 CAPTURE                          REF R0
      140 SETTABLEKS                       R29 R13 K10 ["zoomBy"]
      142 NEWCLOSURE                       R29 P24
      143 CAPTURE                          REF R0
      144 SETTABLEKS                       R29 R13 K11 ["getScale"]
      146 NEWCLOSURE                       R29 P25
      147 CAPTURE                          REF R1
      148 CAPTURE                          REF R2
      149 SETTABLEKS                       R29 R13 K12 ["getOffset"]
      151 NEWCLOSURE                       R29 P26
      152 CAPTURE                          VAL R11
      153 SETTABLEKS                       R29 R13 K13 ["onScaleChanged"]
      155 NEWCLOSURE                       R29 P27
      156 CAPTURE                          VAL R12
      157 CAPTURE                          REF R1
      158 CAPTURE                          REF R2
      159 SETTABLEKS                       R29 R13 K14 ["onOffsetChanged"]
      161 NEWCLOSURE                       R29 P28
      162 CAPTURE                          VAL R5
      163 CAPTURE                          REF R6
      164 CAPTURE                          REF R7
      165 CAPTURE                          REF R8
      166 CAPTURE                          REF R9
      167 CAPTURE                          VAL R11
      168 CAPTURE                          VAL R12
      169 SETTABLEKS                       R29 R13 K15 ["destroy"]
      171 CLOSEUPVALS                      R0
      172 RETURN                           R13 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["UserInputService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["DesignAssist"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["StudioFoundation"]
       19 CALL                             R2 1 1
       20 GETTABLEKS                       R3 R2 K12 ["Util"]
       22 GETTABLEKS                       R3 R3 K13 ["StudioUri"]
       24 DUPCLOSURE                       R4 K14 [PROTO_41]
       25 CAPTURE                          VAL R0
       26 CAPTURE                          VAL R3
       27 DUPTABLE                         R5 K16 [{"createZoomPan"}]
       28 SETTABLEKS                       R4 R5 K15 ["createZoomPan"]
       30 RETURN                           R5 1
