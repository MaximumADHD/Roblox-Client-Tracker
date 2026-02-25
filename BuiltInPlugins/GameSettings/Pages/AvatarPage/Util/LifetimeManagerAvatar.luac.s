PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["Handle"]
        3 JUMPIFNOTEQKNIL                  R1 ; [+5]
        5 GETUPVAL                         R1 1
        6 MOVE                             R2 R0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R1 R2 K0 ["Handle"]
       12 MOVE                             R3 R0
       13 NAMECALL                         R1 R1 K1 ["applyTemplates"]
       15 CALL                             R1 2 0
       16 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 1
        1 LOADK                            R2 K0 ["rbxasset://avatar/morpherEditorR15.rbxmx"]
        2 NAMECALL                         R0 R0 K1 ["LoadLocalAsset"]
        4 CALL                             R0 2 1
        5 SETUPVAL                         R0 0
        6 GETUPVAL                         R0 1
        7 LOADK                            R2 K2 ["rbxasset://avatar/morpherEditorR6.rbxmx"]
        8 NAMECALL                         R0 R0 K1 ["LoadLocalAsset"]
       10 CALL                             R0 2 1
       11 SETUPVAL                         R0 2
       12 RETURN                           R0 0

PROTO_2:
        0 LOADNIL                          R0
        1 LOADNIL                          R1
        2 GETIMPORT                        R2 K1 [pcall]
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          REF R0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          REF R1
        8 CALL                             R2 1 2
        9 JUMPIFNOT                        R2 ; [+19]
       10 JUMPIFNOT                        R0 ; [+18]
       11 JUMPIFNOT                        R1 ; [+17]
       12 GETUPVAL                         R4 1
       13 GETUPVAL                         R6 2
       14 GETTABLEKS                       R5 R6 K2 ["loadWithTemplates"]
       16 MOVE                             R6 R1
       17 MOVE                             R7 R0
       18 GETUPVAL                         R8 3
       19 CALL                             R5 3 1
       20 SETTABLEKS                       R5 R4 K3 ["Handle"]
       22 GETUPVAL                         R5 1
       23 GETTABLEKS                       R4 R5 K3 ["Handle"]
       25 JUMPIFNOT                        R4 ; [+3]
       26 GETUPVAL                         R4 4
       27 GETUPVAL                         R5 1
       28 CALL                             R4 1 0
       29 JUMPIFNOT                        R3 ; [+4]
       30 GETIMPORT                        R4 K5 [warn]
       32 MOVE                             R5 R3
       33 CALL                             R4 1 0
       34 GETUPVAL                         R4 1
       35 LOADB                            R5 0
       36 SETTABLEKS                       R5 R4 K6 ["Loading"]
       38 CLOSEUPVALS                      R0
       39 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["WaitingToDestroy"]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K1 ["Loading"]
        7 JUMPIF                           R1 ; [+18]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R1 R2 K2 ["Handle"]
       11 JUMPIFNOTEQKNIL                  R1 ; [+14]
       13 GETUPVAL                         R1 0
       14 LOADB                            R2 1
       15 SETTABLEKS                       R2 R1 K1 ["Loading"]
       17 GETIMPORT                        R1 K4 [spawn]
       19 NEWCLOSURE                       R2 P0
       20 CAPTURE                          UPVAL U1
       21 CAPTURE                          UPVAL U0
       22 CAPTURE                          UPVAL U2
       23 CAPTURE                          VAL R0
       24 CAPTURE                          UPVAL U3
       25 CALL                             R1 1 0
       26 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["Handle"]
        2 JUMPIFEQKNIL                     R1 ; [+9]
        4 GETTABLEKS                       R1 R0 K0 ["Handle"]
        6 NAMECALL                         R1 R1 K1 ["destroy"]
        8 CALL                             R1 1 0
        9 LOADNIL                          R1
       10 SETTABLEKS                       R1 R0 K0 ["Handle"]
       12 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["Loading"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETIMPORT                        R0 K2 [wait]
        6 CALL                             R0 0 0
        7 JUMPBACK                         ; [-8]
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R0 R1 K3 ["WaitingToDestroy"]
       11 JUMPIFNOT                        R0 ; [+17]
       12 GETUPVAL                         R0 1
       13 GETTABLEKS                       R1 R0 K4 ["Handle"]
       15 JUMPIFEQKNIL                     R1 ; [+9]
       17 GETTABLEKS                       R1 R0 K4 ["Handle"]
       19 NAMECALL                         R1 R1 K5 ["destroy"]
       21 CALL                             R1 1 0
       22 LOADNIL                          R1
       23 SETTABLEKS                       R1 R0 K4 ["Handle"]
       25 GETUPVAL                         R0 0
       26 LOADB                            R1 0
       27 SETTABLEKS                       R1 R0 K3 ["WaitingToDestroy"]
       29 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["Loading"]
        3 JUMPIFNOT                        R1 ; [+14]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K1 ["WaitingToDestroy"]
        7 JUMPIF                           R1 ; [+10]
        8 GETUPVAL                         R1 0
        9 LOADB                            R2 1
       10 SETTABLEKS                       R2 R1 K1 ["WaitingToDestroy"]
       12 GETIMPORT                        R1 K3 [spawn]
       14 NEWCLOSURE                       R2 P0
       15 CAPTURE                          UPVAL U0
       16 CAPTURE                          VAL R0
       17 CALL                             R1 1 0
       18 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["Handle"]
        2 JUMPIFEQKNIL                     R1 ; [+9]
        4 GETTABLEKS                       R1 R0 K0 ["Handle"]
        6 NAMECALL                         R1 R1 K1 ["destroy"]
        8 CALL                             R1 1 0
        9 LOADNIL                          R1
       10 SETTABLEKS                       R1 R0 K0 ["Handle"]
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R1 R2 K2 ["Loading"]
       15 JUMPIFNOT                        R1 ; [+14]
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R1 R2 K3 ["WaitingToDestroy"]
       19 JUMPIF                           R1 ; [+10]
       20 GETUPVAL                         R1 0
       21 LOADB                            R2 1
       22 SETTABLEKS                       R2 R1 K3 ["WaitingToDestroy"]
       24 GETIMPORT                        R1 K5 [spawn]
       26 NEWCLOSURE                       R2 P0
       27 CAPTURE                          UPVAL U0
       28 CAPTURE                          VAL R0
       29 CALL                             R1 1 0
       30 RETURN                           R0 0

PROTO_8:
        0 GETIMPORT                        R2 K1 [workspace]
        2 GETTABLEKS                       R1 R2 K2 ["CurrentCamera"]
        4 JUMPIFNOT                        R1 ; [+29]
        5 GETTABLEKS                       R4 R1 K3 ["CFrame"]
        7 GETTABLEKS                       R7 R1 K3 ["CFrame"]
        9 GETTABLEKS                       R6 R7 K5 ["lookVector"]
       11 MULK                             R5 R6 K4 [8]
       12 ADD                              R3 R4 R5
       13 GETTABLEKS                       R2 R3 K6 ["p"]
       15 GETTABLEKS                       R6 R1 K3 ["CFrame"]
       17 GETTABLEKS                       R5 R6 K5 ["lookVector"]
       19 GETTABLEKS                       R4 R5 K7 ["Unit"]
       21 SUB                              R3 R2 R4
       22 GETUPVAL                         R5 0
       23 GETTABLEKS                       R4 R5 K8 ["Handle"]
       25 GETIMPORT                        R6 K10 [CFrame.new]
       27 MOVE                             R7 R2
       28 MOVE                             R8 R3
       29 CALL                             R6 2 -1
       30 NAMECALL                         R4 R4 K11 ["setPosition"]
       32 CALL                             R4 -1 0
       33 RETURN                           R0 0
       34 GETIMPORT                        R2 K10 [CFrame.new]
       36 LOADK                            R3 K12 [{0, 0, 0}]
       37 CALL                             R2 1 1
       38 GETTABLEKS                       R3 R0 K8 ["Handle"]
       40 MOVE                             R5 R2
       41 NAMECALL                         R3 R3 K11 ["setPosition"]
       43 CALL                             R3 2 0
       44 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R3 R0 K5 ["Util"]
       11 GETTABLEKS                       R2 R3 K6 ["Avatar"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K8 [game]
       16 LOADK                            R4 K9 ["InsertService"]
       17 NAMECALL                         R2 R2 K10 ["GetService"]
       19 CALL                             R2 2 1
       20 NEWTABLE                         R3 8 0
       22 LOADNIL                          R4
       23 SETTABLEKS                       R4 R3 K11 ["Handle"]
       25 LOADB                            R4 0
       26 SETTABLEKS                       R4 R3 K12 ["Loading"]
       28 LOADB                            R4 0
       29 SETTABLEKS                       R4 R3 K13 ["WaitingToDestroy"]
       31 LOADNIL                          R4
       32 LOADNIL                          R5
       33 NEWCLOSURE                       R6 P0
       34 CAPTURE                          VAL R3
       35 CAPTURE                          REF R5
       36 SETTABLEKS                       R6 R3 K14 ["apply"]
       38 NEWCLOSURE                       R5 P1
       39 CAPTURE                          VAL R3
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R1
       42 CAPTURE                          REF R4
       43 DUPCLOSURE                       R6 K15 [PROTO_4]
       44 DUPCLOSURE                       R7 K16 [PROTO_6]
       45 CAPTURE                          VAL R3
       46 DUPCLOSURE                       R8 K17 [PROTO_7]
       47 CAPTURE                          VAL R3
       48 SETTABLEKS                       R8 R3 K18 ["destroy"]
       50 DUPCLOSURE                       R4 K19 [PROTO_8]
       51 CAPTURE                          VAL R3
       52 CLOSEUPVALS                      R4
       53 RETURN                           R3 1
