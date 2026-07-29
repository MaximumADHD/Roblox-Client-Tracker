PROTO_0:
        0 NAMECALL                         R2 R1 K0 ["GetDescendants"]
        2 CALL                             R2 1 3
        3 FORGPREP                         R2
        4 LOADK                            R9 K1 ["BasePart"]
        5 NAMECALL                         R7 R6 K2 ["IsA"]
        7 CALL                             R7 2 1
        8 JUMPIFNOT                        R7 ; [+4]
        9 GETTABLEKS                       R7 R0 K3 ["markLimbAsOriginal"]
       11 MOVE                             R8 R6
       12 CALL                             R7 1 0
       13 FORGLOOP                         R2 2 ; [-10]
       15 RETURN                           R0 0

PROTO_1:
        0 LOADK                            R4 K0 ["Animate"]
        1 NAMECALL                         R2 R1 K1 ["FindFirstChild"]
        3 CALL                             R2 2 1
        4 JUMPIF                           R2 ; [+1]
        5 RETURN                           R0 0
        6 LOADK                            R5 K0 ["Animate"]
        7 NAMECALL                         R3 R0 K1 ["FindFirstChild"]
        9 CALL                             R3 2 1
       10 JUMPIFNOT                        R3 ; [+3]
       11 NAMECALL                         R4 R3 K2 ["Remove"]
       13 CALL                             R4 1 0
       14 NAMECALL                         R4 R2 K3 ["Clone"]
       16 CALL                             R4 1 1
       17 SETTABLEKS                       R0 R4 K4 ["Parent"]
       19 RETURN                           R0 0

PROTO_2:
        0 LOADK                            R4 K0 ["Humanoid"]
        1 NAMECALL                         R2 R1 K1 ["FindFirstChildWhichIsA"]
        3 CALL                             R2 2 1
        4 JUMPIFNOTEQKNIL                  R2 ; [+2]
        6 RETURN                           R0 0
        7 LOADK                            R5 K0 ["Humanoid"]
        8 NAMECALL                         R3 R0 K1 ["FindFirstChildWhichIsA"]
       10 CALL                             R3 2 1
       11 JUMPIFNOTEQKNIL                  R3 ; [+2]
       13 RETURN                           R0 0
       14 LOADB                            R4 0
       15 GETUPVAL                         R5 0
       16 LOADNIL                          R6
       17 LOADNIL                          R7
       18 FORGPREP                         R5
       19 MOVE                             R12 R9
       20 NAMECALL                         R10 R2 K2 ["FindFirstChild"]
       22 CALL                             R10 2 1
       23 JUMPIFNOT                        R10 ; [+26]
       24 LOADK                            R13 K3 ["NumberValue"]
       25 NAMECALL                         R11 R10 K4 ["IsA"]
       27 CALL                             R11 2 1
       28 JUMPIFNOT                        R11 ; [+21]
       29 MOVE                             R13 R9
       30 NAMECALL                         R11 R3 K2 ["FindFirstChild"]
       32 CALL                             R11 2 1
       33 JUMPIFNOT                        R11 ; [+16]
       34 LOADK                            R14 K3 ["NumberValue"]
       35 NAMECALL                         R12 R11 K4 ["IsA"]
       37 CALL                             R12 2 1
       38 JUMPIFNOT                        R12 ; [+11]
       39 GETTABLEKS                       R12 R11 K5 ["Value"]
       41 GETTABLEKS                       R13 R10 K5 ["Value"]
       43 JUMPIFEQ                         R12 R13 ; [+6]
       45 GETTABLEKS                       R12 R10 K5 ["Value"]
       47 SETTABLEKS                       R12 R11 K5 ["Value"]
       49 LOADB                            R4 1
       50 FORGLOOP                         R5 2 ; [-32]
       52 JUMPIFNOT                        R4 ; [+3]
       53 NAMECALL                         R5 R3 K6 ["BuildRigFromAttachments"]
       55 CALL                             R5 1 0
       56 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R1 0 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Humanoid"]
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R0 R0 K1 ["ApplyDescriptionAsync"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 0
        7 GETUPVAL                         R1 2
        8 GETTABLEKS                       R1 R1 K2 ["WorldModel"]
       10 LOADK                            R4 K3 ["Animate"]
       11 NAMECALL                         R2 R1 K4 ["FindFirstChild"]
       13 CALL                             R2 2 1
       14 JUMPIF                           R2 ; [+1]
       15 JUMP                             ; [+13]
       16 LOADK                            R5 K3 ["Animate"]
       17 NAMECALL                         R3 R0 K4 ["FindFirstChild"]
       19 CALL                             R3 2 1
       20 JUMPIFNOT                        R3 ; [+3]
       21 NAMECALL                         R4 R3 K5 ["Remove"]
       23 CALL                             R4 1 0
       24 NAMECALL                         R4 R2 K6 ["Clone"]
       26 CALL                             R4 1 1
       27 SETTABLEKS                       R0 R4 K7 ["Parent"]
       29 GETUPVAL                         R0 3
       30 GETUPVAL                         R1 0
       31 GETUPVAL                         R2 2
       32 GETTABLEKS                       R2 R2 K2 ["WorldModel"]
       34 CALL                             R0 2 0
       35 GETUPVAL                         R0 0
       36 LOADNIL                          R1
       37 SETTABLEKS                       R1 R0 K7 ["Parent"]
       39 GETUPVAL                         R0 0
       40 LOADB                            R1 1
       41 SETTABLEKS                       R1 R0 K8 ["Archivable"]
       43 GETUPVAL                         R0 4
       44 JUMPIFNOT                        R0 ; [+23]
       45 LOADB                            R0 0
       46 SETUPVAL                         R0 4
       47 GETUPVAL                         R0 5
       48 DUPTABLE                         R1 K13 [{"dummy", "sourceDummy", "initialProportionScale", "initialWorldModelScale"}]
       49 GETUPVAL                         R2 0
       50 SETTABLEKS                       R2 R1 K9 ["dummy"]
       52 GETUPVAL                         R2 2
       53 GETTABLEKS                       R2 R2 K2 ["WorldModel"]
       55 SETTABLEKS                       R2 R1 K10 ["sourceDummy"]
       57 GETUPVAL                         R2 2
       58 GETTABLEKS                       R2 R2 K14 ["ProportionalScale"]
       60 SETTABLEKS                       R2 R1 K11 ["initialProportionScale"]
       62 GETUPVAL                         R2 2
       63 GETTABLEKS                       R2 R2 K15 ["WorldModelScale"]
       65 SETTABLEKS                       R2 R1 K12 ["initialWorldModelScale"]
       67 CALL                             R0 1 0
       68 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R0 K2 [task.cancel]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+6]
        6 LOADB                            R0 0
        7 SETUPVAL                         R0 1
        8 GETUPVAL                         R0 2
        9 LOADNIL                          R1
       10 SETTABLEKS                       R1 R0 K3 ["Parent"]
       12 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R2 K1 [game]
        3 NAMECALL                         R0 R0 K2 ["IsDescendantOf"]
        5 CALL                             R0 2 1
        6 JUMPIFNOT                        R0 ; [+40]
        7 GETUPVAL                         R0 1
        8 NAMECALL                         R0 R0 K3 ["Disconnect"]
       10 CALL                             R0 1 0
       11 GETUPVAL                         R0 0
       12 GETTABLEKS                       R0 R0 K4 ["Humanoid"]
       14 GETUPVAL                         R2 2
       15 NAMECALL                         R0 R0 K5 ["ApplyDescriptionAsync"]
       17 CALL                             R0 2 0
       18 GETUPVAL                         R0 0
       19 GETUPVAL                         R1 3
       20 GETTABLEKS                       R1 R1 K6 ["WorldModel"]
       22 LOADK                            R4 K7 ["Animate"]
       23 NAMECALL                         R2 R1 K8 ["FindFirstChild"]
       25 CALL                             R2 2 1
       26 JUMPIF                           R2 ; [+1]
       27 JUMP                             ; [+13]
       28 LOADK                            R5 K7 ["Animate"]
       29 NAMECALL                         R3 R0 K8 ["FindFirstChild"]
       31 CALL                             R3 2 1
       32 JUMPIFNOT                        R3 ; [+3]
       33 NAMECALL                         R4 R3 K9 ["Remove"]
       35 CALL                             R4 1 0
       36 NAMECALL                         R4 R2 K10 ["Clone"]
       38 CALL                             R4 1 1
       39 SETTABLEKS                       R0 R4 K11 ["Parent"]
       41 GETUPVAL                         R0 4
       42 GETUPVAL                         R1 0
       43 GETUPVAL                         R2 3
       44 GETTABLEKS                       R2 R2 K6 ["WorldModel"]
       46 CALL                             R0 2 0
       47 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["WorldModel"]
        3 NAMECALL                         R0 R0 K1 ["Clone"]
        5 CALL                             R0 1 1
        6 GETUPVAL                         R1 1
        7 GETUPVAL                         R2 2
        8 MOVE                             R3 R0
        9 CALL                             R1 2 0
       10 GETUPVAL                         R1 3
       11 MOVE                             R2 R0
       12 GETUPVAL                         R3 4
       13 GETTABLEKS                       R3 R3 K2 ["ALL_ALLOWED_PART_NAMES"]
       15 CALL                             R1 2 0
       16 GETUPVAL                         R1 0
       17 GETTABLEKS                       R1 R1 K0 ["WorldModel"]
       19 LOADK                            R4 K3 ["Animate"]
       20 NAMECALL                         R2 R1 K4 ["FindFirstChild"]
       22 CALL                             R2 2 1
       23 JUMPIF                           R2 ; [+1]
       24 JUMP                             ; [+13]
       25 LOADK                            R5 K3 ["Animate"]
       26 NAMECALL                         R3 R0 K4 ["FindFirstChild"]
       28 CALL                             R3 2 1
       29 JUMPIFNOT                        R3 ; [+3]
       30 NAMECALL                         R4 R3 K5 ["Remove"]
       32 CALL                             R4 1 0
       33 NAMECALL                         R4 R2 K1 ["Clone"]
       35 CALL                             R4 1 1
       36 SETTABLEKS                       R0 R4 K6 ["Parent"]
       38 GETUPVAL                         R1 5
       39 CALL                             R1 0 1
       40 JUMPIFNOT                        R1 ; [+26]
       41 LOADB                            R1 1
       42 LOADB                            R2 0
       43 SETTABLEKS                       R2 R0 K7 ["Archivable"]
       45 GETUPVAL                         R2 6
       46 GETTABLEKS                       R2 R2 K8 ["CurrentCamera"]
       48 SETTABLEKS                       R2 R0 K6 ["Parent"]
       50 GETIMPORT                        R2 K11 [task.spawn]
       52 NEWCLOSURE                       R3 P0
       53 CAPTURE                          VAL R0
       54 CAPTURE                          UPVAL U7
       55 CAPTURE                          UPVAL U0
       56 CAPTURE                          UPVAL U8
       57 CAPTURE                          REF R1
       58 CAPTURE                          UPVAL U9
       59 CALL                             R2 1 1
       60 NEWCLOSURE                       R3 P1
       61 CAPTURE                          VAL R2
       62 CAPTURE                          REF R1
       63 CAPTURE                          VAL R0
       64 CLOSEUPVALS                      R1
       65 RETURN                           R3 1
       66 CLOSEUPVALS                      R1
       67 GETUPVAL                         R1 9
       68 DUPTABLE                         R2 K15 [{"dummy", "initialProportionScale", "initialWorldModelScale"}]
       69 SETTABLEKS                       R0 R2 K12 ["dummy"]
       71 GETUPVAL                         R3 0
       72 GETTABLEKS                       R3 R3 K16 ["ProportionalScale"]
       74 SETTABLEKS                       R3 R2 K13 ["initialProportionScale"]
       76 GETUPVAL                         R3 0
       77 GETTABLEKS                       R3 R3 K17 ["WorldModelScale"]
       79 SETTABLEKS                       R3 R2 K14 ["initialWorldModelScale"]
       81 CALL                             R1 1 0
       82 LOADNIL                          R1
       83 GETTABLEKS                       R2 R0 K18 ["AncestryChanged"]
       85 NEWCLOSURE                       R4 P2
       86 CAPTURE                          VAL R0
       87 CAPTURE                          REF R1
       88 CAPTURE                          UPVAL U7
       89 CAPTURE                          UPVAL U0
       90 CAPTURE                          UPVAL U8
       91 NAMECALL                         R2 R2 K19 ["Connect"]
       93 CALL                             R2 2 1
       94 MOVE                             R1 R2
       95 NEWCLOSURE                       R2 P3
       96 CAPTURE                          REF R1
       97 CLOSEUPVALS                      R1
       98 RETURN                           R2 1
       99 CLOSEUPVALS                      R1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["dummy"]
        3 GETTABLEKS                       R0 R0 K1 ["Humanoid"]
        5 GETUPVAL                         R2 1
        6 NAMECALL                         R0 R0 K2 ["ApplyDescriptionAsync"]
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_11:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 2
        6 JUMPIF                           R0 ; [+15]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["dummy"]
       10 GETIMPORT                        R4 K4 [game]
       12 NAMECALL                         R2 R2 K5 ["IsDescendantOf"]
       14 CALL                             R2 2 1
       15 JUMPIF                           R2 ; [+1]
       16 RETURN                           R0 0
       17 GETIMPORT                        R2 K7 [error]
       19 LOADK                            R3 K8 ["Failed to apply description to dummy"]
       20 MOVE                             R4 R1
       21 CALL                             R2 2 0
       22 GETUPVAL                         R2 0
       23 GETTABLEKS                       R2 R2 K2 ["dummy"]
       25 GETUPVAL                         R3 2
       26 GETTABLEKS                       R3 R3 K9 ["WorldModel"]
       28 LOADK                            R6 K10 ["Animate"]
       29 NAMECALL                         R4 R3 K11 ["FindFirstChild"]
       31 CALL                             R4 2 1
       32 JUMPIF                           R4 ; [+1]
       33 JUMP                             ; [+13]
       34 LOADK                            R7 K10 ["Animate"]
       35 NAMECALL                         R5 R2 K11 ["FindFirstChild"]
       37 CALL                             R5 2 1
       38 JUMPIFNOT                        R5 ; [+3]
       39 NAMECALL                         R6 R5 K12 ["Remove"]
       41 CALL                             R6 1 0
       42 NAMECALL                         R6 R4 K13 ["Clone"]
       44 CALL                             R6 1 1
       45 SETTABLEKS                       R2 R6 K14 ["Parent"]
       47 GETUPVAL                         R2 3
       48 GETUPVAL                         R3 0
       49 GETTABLEKS                       R3 R3 K2 ["dummy"]
       51 GETUPVAL                         R4 2
       52 GETTABLEKS                       R4 R4 K9 ["WorldModel"]
       54 CALL                             R2 2 0
       55 RETURN                           R0 0

PROTO_12:
        0 GETIMPORT                        R0 K2 [task.cancel]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["dummy"]
        3 JUMPIFEQKNIL                     R0 ; [+10]
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K0 ["dummy"]
        8 GETIMPORT                        R2 K2 [game]
       10 NAMECALL                         R0 R0 K3 ["IsDescendantOf"]
       12 CALL                             R0 2 1
       13 JUMPIF                           R0 ; [+1]
       14 RETURN                           R0 0
       15 GETUPVAL                         R0 1
       16 CALL                             R0 0 1
       17 JUMPIFNOT                        R0 ; [+18]
       18 GETUPVAL                         R0 0
       19 GETTABLEKS                       R0 R0 K4 ["sourceDummy"]
       21 GETUPVAL                         R1 2
       22 GETTABLEKS                       R1 R1 K5 ["WorldModel"]
       24 JUMPIFEQ                         R0 R1 ; [+2]
       26 RETURN                           R0 0
       27 GETUPVAL                         R0 0
       28 GETTABLEKS                       R0 R0 K6 ["initialWorldModelScale"]
       30 GETUPVAL                         R1 2
       31 GETTABLEKS                       R1 R1 K7 ["WorldModelScale"]
       33 JUMPIFEQ                         R0 R1 ; [+2]
       35 RETURN                           R0 0
       36 GETIMPORT                        R0 K10 [task.spawn]
       38 NEWCLOSURE                       R1 P0
       39 CAPTURE                          UPVAL U0
       40 CAPTURE                          UPVAL U3
       41 CAPTURE                          UPVAL U2
       42 CAPTURE                          UPVAL U4
       43 CALL                             R0 1 1
       44 NEWCLOSURE                       R1 P1
       45 CAPTURE                          VAL R0
       46 RETURN                           R1 1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K0 ["dummy"]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K1 ["initialProportionScale"]
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K2 ["initialWorldModelScale"]
       13 JUMPIFEQKNIL                     R0 ; [+5]
       15 JUMPIFEQKNIL                     R1 ; [+3]
       17 JUMPIFNOTEQKNIL                  R2 ; [+2]
       19 RETURN                           R0 0
       20 GETUPVAL                         R5 2
       21 GETTABLEKS                       R5 R5 K3 ["ProportionalScale"]
       23 DIV                              R4 R5 R1
       24 MUL                              R3 R2 R4
       25 NAMECALL                         R6 R0 K4 ["GetScale"]
       27 CALL                             R6 1 1
       28 SUB                              R5 R6 R3
       29 FASTCALL1                        MATH_ABS R5 ; [+2]
       30 GETIMPORT                        R4 K7 [math.abs]
       32 CALL                             R4 1 1
       33 LOADK                            R5 K8 [0.001]
       34 JUMPIFNOTLE                      R5 R4 ; [+10]
       36 MOVE                             R6 R3
       37 NAMECALL                         R4 R0 K9 ["ScaleTo"]
       39 CALL                             R4 2 0
       40 GETTABLEKS                       R4 R0 K10 ["Humanoid"]
       42 NAMECALL                         R4 R4 K11 ["BuildRigFromAttachments"]
       44 CALL                             R4 1 0
       45 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["useState"]
        8 NEWTABLE                         R4 0 0
       10 CALL                             R3 1 2
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R5 R5 K2 ["useEffect"]
       14 NEWCLOSURE                       R6 P0
       15 CAPTURE                          VAL R4
       16 NEWTABLE                         R7 0 1
       18 GETTABLEKS                       R8 R0 K3 ["LatestWorldModelHash"]
       20 SETLIST                          R7 R8 1 [1]
       22 CALL                             R5 2 0
       23 GETUPVAL                         R5 0
       24 GETTABLEKS                       R5 R5 K2 ["useEffect"]
       26 NEWCLOSURE                       R6 P1
       27 CAPTURE                          VAL R0
       28 CAPTURE                          UPVAL U2
       29 CAPTURE                          VAL R2
       30 CAPTURE                          UPVAL U3
       31 CAPTURE                          UPVAL U4
       32 CAPTURE                          UPVAL U5
       33 CAPTURE                          UPVAL U6
       34 CAPTURE                          VAL R1
       35 CAPTURE                          UPVAL U7
       36 CAPTURE                          VAL R4
       37 GETUPVAL                         R8 5
       38 CALL                             R8 0 1
       39 JUMPIFNOT                        R8 ; [+11]
       40 NEWTABLE                         R7 0 3
       42 GETTABLEKS                       R8 R0 K4 ["WorldModel"]
       44 GETTABLEKS                       R9 R0 K3 ["LatestWorldModelHash"]
       46 GETTABLEKS                       R10 R0 K5 ["WorldModelScale"]
       48 SETLIST                          R7 R8 3 [1]
       50 JUMP                             ; [+8]
       51 NEWTABLE                         R7 0 2
       53 GETTABLEKS                       R8 R0 K4 ["WorldModel"]
       55 GETTABLEKS                       R9 R0 K3 ["LatestWorldModelHash"]
       57 SETLIST                          R7 R8 2 [1]
       59 CALL                             R5 2 0
       60 GETUPVAL                         R5 0
       61 GETTABLEKS                       R5 R5 K2 ["useEffect"]
       63 NEWCLOSURE                       R6 P2
       64 CAPTURE                          VAL R3
       65 CAPTURE                          UPVAL U5
       66 CAPTURE                          VAL R0
       67 CAPTURE                          VAL R1
       68 CAPTURE                          UPVAL U7
       69 GETUPVAL                         R8 5
       70 CALL                             R8 0 1
       71 JUMPIFNOT                        R8 ; [+12]
       72 NEWTABLE                         R7 0 4
       74 GETTABLEKS                       R8 R3 K6 ["dummy"]
       76 GETTABLEKS                       R9 R3 K7 ["sourceDummy"]
       78 MOVE                             R10 R1
       79 GETTABLEKS                       R11 R0 K4 ["WorldModel"]
       81 SETLIST                          R7 R8 4 [1]
       83 JUMP                             ; [+9]
       84 NEWTABLE                         R7 0 3
       86 GETTABLEKS                       R8 R3 K6 ["dummy"]
       88 MOVE                             R9 R1
       89 GETTABLEKS                       R10 R0 K4 ["WorldModel"]
       91 SETLIST                          R7 R8 3 [1]
       93 CALL                             R5 2 0
       94 GETUPVAL                         R5 0
       95 GETTABLEKS                       R5 R5 K2 ["useEffect"]
       97 NEWCLOSURE                       R6 P3
       98 CAPTURE                          UPVAL U5
       99 CAPTURE                          VAL R3
      100 CAPTURE                          VAL R0
      101 NEWTABLE                         R7 0 4
      103 GETTABLEKS                       R8 R3 K6 ["dummy"]
      105 GETTABLEKS                       R9 R3 K8 ["initialProportionScale"]
      107 GETTABLEKS                       R10 R3 K9 ["initialWorldModelScale"]
      109 GETTABLEKS                       R11 R0 K10 ["ProportionalScale"]
      111 SETLIST                          R7 R8 4 [1]
      113 CALL                             R5 2 0
      114 GETTABLEKS                       R5 R3 K6 ["dummy"]
      116 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Workspace"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AvatarCompatibilityPreviewer"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["React"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K12 ["Src"]
       24 GETTABLEKS                       R4 R4 K13 ["Util"]
       26 GETTABLEKS                       R4 R4 K14 ["OriginalLimbContext"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K9 [require]
       31 GETTABLEKS                       R5 R1 K12 ["Src"]
       33 GETTABLEKS                       R5 R5 K13 ["Util"]
       35 GETTABLEKS                       R5 R5 K15 ["filterDescendants"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K9 [require]
       40 GETTABLEKS                       R6 R1 K12 ["Src"]
       42 GETTABLEKS                       R6 R6 K13 ["Util"]
       44 GETTABLEKS                       R6 R6 K16 ["Constants"]
       46 CALL                             R5 1 1
       47 GETIMPORT                        R6 K9 [require]
       49 GETTABLEKS                       R7 R1 K12 ["Src"]
       51 GETTABLEKS                       R7 R7 K17 ["Types"]
       53 CALL                             R6 1 1
       54 GETIMPORT                        R7 K9 [require]
       56 GETTABLEKS                       R8 R1 K12 ["Src"]
       58 GETTABLEKS                       R8 R8 K18 ["Flags"]
       60 GETTABLEKS                       R8 R8 K19 ["getFFlagAvatarPreviewerSelectionStability"]
       62 CALL                             R7 1 1
       63 DUPCLOSURE                       R8 K20 [PROTO_0]
       64 DUPCLOSURE                       R9 K21 [PROTO_1]
       65 NEWTABLE                         R10 0 6
       67 LOADK                            R11 K22 ["BodyDepthScale"]
       68 LOADK                            R12 K23 ["BodyWidthScale"]
       69 LOADK                            R13 K24 ["BodyHeightScale"]
       70 LOADK                            R14 K25 ["HeadScale"]
       71 LOADK                            R15 K26 ["BodyTypeScale"]
       72 LOADK                            R16 K27 ["BodyProportionScale"]
       73 SETLIST                          R10 R11 6 [1]
       75 DUPCLOSURE                       R11 K28 [PROTO_2]
       76 CAPTURE                          VAL R10
       77 DUPCLOSURE                       R12 K29 [PROTO_15]
       78 CAPTURE                          VAL R2
       79 CAPTURE                          VAL R3
       80 CAPTURE                          VAL R8
       81 CAPTURE                          VAL R4
       82 CAPTURE                          VAL R5
       83 CAPTURE                          VAL R7
       84 CAPTURE                          VAL R0
       85 CAPTURE                          VAL R11
       86 RETURN                           R12 1
