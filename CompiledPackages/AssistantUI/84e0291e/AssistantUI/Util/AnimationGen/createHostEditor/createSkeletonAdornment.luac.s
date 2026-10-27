PROTO_0:
        0 GETUPVAL                         R0 0
        1 SUBK                             R0 R0 K0 [1]
        2 SETUPVAL                         R0 0
        3 GETUPVAL                         R0 0
        4 LOADN                            R1 0
        5 JUMPIFNOTLT                      R1 R0 ; [+2]
        7 RETURN                           R0 0
        8 GETUPVAL                         R0 1
        9 JUMPIFEQKNIL                     R0 ; [+7]
       11 GETUPVAL                         R0 1
       12 NAMECALL                         R0 R0 K1 ["Disconnect"]
       14 CALL                             R0 1 0
       15 LOADNIL                          R0
       16 SETUPVAL                         R0 1
       17 GETUPVAL                         R0 2
       18 LOADB                            R2 1
       19 NAMECALL                         R0 R0 K2 ["Activate"]
       21 CALL                             R0 2 0
       22 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+7]
        3 GETUPVAL                         R0 0
        4 NAMECALL                         R0 R0 K0 ["Disconnect"]
        6 CALL                             R0 1 0
        7 LOADNIL                          R0
        8 SETUPVAL                         R0 0
        9 RETURN                           R0 0

PROTO_2:
        0 LOADN                            R1 2
        1 LOADNIL                          R2
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K0 ["Heartbeat"]
        5 NEWCLOSURE                       R5 P0
        6 CAPTURE                          REF R1
        7 CAPTURE                          REF R2
        8 CAPTURE                          VAL R0
        9 NAMECALL                         R3 R3 K1 ["Connect"]
       11 CALL                             R3 2 1
       12 MOVE                             R2 R3
       13 NEWCLOSURE                       R3 P1
       14 CAPTURE                          REF R2
       15 CLOSEUPVALS                      R1
       16 RETURN                           R3 1

PROTO_3:
        0 JUMPIFEQ                         R0 R1 ; [+2]
        2 LOADB                            R2 0 +1
        3 LOADB                            R2 1
        4 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getSelectedJoint"]
        3 CALL                             R2 0 1
        4 JUMPIFEQ                         R0 R2 ; [+2]
        6 LOADB                            R1 0 +1
        7 LOADB                            R1 1
        8 JUMPIFNOT                        R1 ; [+2]
        9 GETUPVAL                         R1 1
       10 RETURN                           R1 1
       11 GETUPVAL                         R2 2
       12 JUMPIFEQ                         R0 R2 ; [+2]
       14 LOADB                            R1 0 +1
       15 LOADB                            R1 1
       16 JUMPIFNOT                        R1 ; [+2]
       17 GETUPVAL                         R1 3
       18 RETURN                           R1 1
       19 GETUPVAL                         R1 4
       20 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getSelectedJoint"]
        3 CALL                             R2 0 1
        4 JUMPIFEQ                         R0 R2 ; [+2]
        6 LOADB                            R1 0 +1
        7 LOADB                            R1 1
        8 JUMPIF                           R1 ; [+6]
        9 GETUPVAL                         R2 1
       10 JUMPIFEQ                         R0 R2 ; [+2]
       12 LOADB                            R1 0 +1
       13 LOADB                            R1 1
       14 JUMPIFNOT                        R1 ; [+2]
       15 LOADN                            R1 0
       16 RETURN                           R1 1
       17 LOADK                            R1 K1 [0.35]
       18 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getSelectedJoint"]
        3 CALL                             R2 0 1
        4 JUMPIFEQ                         R0 R2 ; [+2]
        6 LOADB                            R1 0 +1
        7 LOADB                            R1 1
        8 JUMPIFNOT                        R1 ; [+4]
        9 GETUPVAL                         R1 1
       10 GETUPVAL                         R2 2
       11 CALL                             R1 1 -1
       12 RETURN                           R1 -1
       13 GETUPVAL                         R2 3
       14 JUMPIFEQ                         R0 R2 ; [+2]
       16 LOADB                            R1 0 +1
       17 LOADB                            R1 1
       18 JUMPIFNOT                        R1 ; [+4]
       19 GETUPVAL                         R1 1
       20 GETUPVAL                         R2 4
       21 CALL                             R1 1 -1
       22 RETURN                           R1 -1
       23 GETUPVAL                         R1 5
       24 RETURN                           R1 1

PROTO_7:
        0 GETTABLEKS                       R2 R0 K0 ["joint"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K1 ["getSelectedJoint"]
        5 CALL                             R4 0 1
        6 JUMPIFEQ                         R2 R4 ; [+2]
        8 LOADB                            R3 0 +1
        9 LOADB                            R3 1
       10 JUMPIFNOT                        R3 ; [+2]
       11 GETUPVAL                         R1 1
       12 JUMP                             ; [+9]
       13 GETUPVAL                         R4 2
       14 JUMPIFEQ                         R2 R4 ; [+2]
       16 LOADB                            R3 0 +1
       17 LOADB                            R3 1
       18 JUMPIFNOT                        R3 ; [+2]
       19 GETUPVAL                         R1 3
       20 JUMP                             ; [+1]
       21 GETUPVAL                         R1 4
       22 GETTABLEKS                       R3 R0 K0 ["joint"]
       24 GETUPVAL                         R5 0
       25 GETTABLEKS                       R5 R5 K1 ["getSelectedJoint"]
       27 CALL                             R5 0 1
       28 JUMPIFEQ                         R3 R5 ; [+2]
       30 LOADB                            R4 0 +1
       31 LOADB                            R4 1
       32 JUMPIF                           R4 ; [+6]
       33 GETUPVAL                         R5 2
       34 JUMPIFEQ                         R3 R5 ; [+2]
       36 LOADB                            R4 0 +1
       37 LOADB                            R4 1
       38 JUMPIFNOT                        R4 ; [+2]
       39 LOADN                            R2 0
       40 JUMP                             ; [+1]
       41 LOADK                            R2 K2 [0.35]
       42 GETTABLEKS                       R3 R0 K3 ["sphere"]
       44 SETTABLEKS                       R1 R3 K4 ["Color3"]
       46 GETTABLEKS                       R3 R0 K3 ["sphere"]
       48 SETTABLEKS                       R2 R3 K5 ["Transparency"]
       50 GETTABLEKS                       R3 R0 K6 ["wire"]
       52 GETTABLEKS                       R5 R0 K0 ["joint"]
       54 GETUPVAL                         R7 0
       55 GETTABLEKS                       R7 R7 K1 ["getSelectedJoint"]
       57 CALL                             R7 0 1
       58 JUMPIFEQ                         R5 R7 ; [+2]
       60 LOADB                            R6 0 +1
       61 LOADB                            R6 1
       62 JUMPIFNOT                        R6 ; [+5]
       63 GETUPVAL                         R6 5
       64 GETUPVAL                         R7 1
       65 CALL                             R6 1 1
       66 MOVE                             R4 R6
       67 JUMP                             ; [+12]
       68 GETUPVAL                         R7 2
       69 JUMPIFEQ                         R5 R7 ; [+2]
       71 LOADB                            R6 0 +1
       72 LOADB                            R6 1
       73 JUMPIFNOT                        R6 ; [+5]
       74 GETUPVAL                         R6 5
       75 GETUPVAL                         R7 3
       76 CALL                             R6 1 1
       77 MOVE                             R4 R6
       78 JUMP                             ; [+1]
       79 GETUPVAL                         R4 6
       80 SETTABLEKS                       R4 R3 K4 ["Color3"]
       82 GETTABLEKS                       R3 R0 K6 ["wire"]
       84 GETTABLEKS                       R6 R0 K0 ["joint"]
       86 GETUPVAL                         R7 2
       87 JUMPIFEQ                         R6 R7 ; [+2]
       89 LOADB                            R5 0 +1
       90 LOADB                            R5 1
       91 JUMPIF                           R5 ; [+11]
       92 GETTABLEKS                       R6 R0 K0 ["joint"]
       94 GETUPVAL                         R7 0
       95 GETTABLEKS                       R7 R7 K1 ["getSelectedJoint"]
       97 CALL                             R7 0 1
       98 JUMPIFEQ                         R6 R7 ; [+2]
      100 LOADB                            R5 0 +1
      101 LOADB                            R5 1
      102 JUMPIFNOT                        R5 ; [+2]
      103 LOADN                            R4 0
      104 JUMP                             ; [+1]
      105 LOADK                            R4 K7 [0.2]
      106 SETTABLEKS                       R4 R3 K5 ["Transparency"]
      108 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["parentJoint"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K1 ["getSelectedJoint"]
        5 CALL                             R4 0 1
        6 JUMPIFEQ                         R1 R4 ; [+2]
        8 LOADB                            R3 0 +1
        9 LOADB                            R3 1
       10 JUMPIFNOT                        R3 ; [+2]
       11 GETUPVAL                         R2 1
       12 JUMP                             ; [+9]
       13 GETUPVAL                         R4 2
       14 JUMPIFEQ                         R1 R4 ; [+2]
       16 LOADB                            R3 0 +1
       17 LOADB                            R3 1
       18 JUMPIFNOT                        R3 ; [+2]
       19 GETUPVAL                         R2 3
       20 JUMP                             ; [+1]
       21 GETUPVAL                         R2 4
       22 GETUPVAL                         R5 0
       23 GETTABLEKS                       R5 R5 K1 ["getSelectedJoint"]
       25 CALL                             R5 0 1
       26 JUMPIFEQ                         R1 R5 ; [+2]
       28 LOADB                            R4 0 +1
       29 LOADB                            R4 1
       30 JUMPIF                           R4 ; [+6]
       31 GETUPVAL                         R5 2
       32 JUMPIFEQ                         R1 R5 ; [+2]
       34 LOADB                            R4 0 +1
       35 LOADB                            R4 1
       36 JUMPIFNOT                        R4 ; [+2]
       37 LOADN                            R3 0
       38 JUMP                             ; [+1]
       39 LOADK                            R3 K2 [0.35]
       40 GETTABLEKS                       R4 R0 K3 ["pyramid"]
       42 SETTABLEKS                       R2 R4 K4 ["Color3"]
       44 GETTABLEKS                       R4 R0 K3 ["pyramid"]
       46 SETTABLEKS                       R3 R4 K5 ["Transparency"]
       48 GETTABLEKS                       R4 R0 K6 ["wireframe"]
       50 GETUPVAL                         R7 0
       51 GETTABLEKS                       R7 R7 K1 ["getSelectedJoint"]
       53 CALL                             R7 0 1
       54 JUMPIFEQ                         R1 R7 ; [+2]
       56 LOADB                            R6 0 +1
       57 LOADB                            R6 1
       58 JUMPIFNOT                        R6 ; [+4]
       59 GETUPVAL                         R5 5
       60 GETUPVAL                         R6 1
       61 CALL                             R5 1 1
       62 JUMP                             ; [+11]
       63 GETUPVAL                         R7 2
       64 JUMPIFEQ                         R1 R7 ; [+2]
       66 LOADB                            R6 0 +1
       67 LOADB                            R6 1
       68 JUMPIFNOT                        R6 ; [+4]
       69 GETUPVAL                         R5 5
       70 GETUPVAL                         R6 3
       71 CALL                             R5 1 1
       72 JUMP                             ; [+1]
       73 GETUPVAL                         R5 6
       74 SETTABLEKS                       R5 R4 K4 ["Color3"]
       76 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 GETUPVAL                         R5 1
        5 MOVE                             R6 R4
        6 CALL                             R5 1 0
        7 FORGLOOP                         R0 2 ; [-4]
        9 GETUPVAL                         R0 2
       10 LOADNIL                          R1
       11 LOADNIL                          R2
       12 FORGPREP                         R0
       13 GETTABLEKS                       R5 R4 K0 ["parentJoint"]
       15 GETUPVAL                         R8 3
       16 GETTABLEKS                       R8 R8 K1 ["getSelectedJoint"]
       18 CALL                             R8 0 1
       19 JUMPIFEQ                         R5 R8 ; [+2]
       21 LOADB                            R7 0 +1
       22 LOADB                            R7 1
       23 JUMPIFNOT                        R7 ; [+2]
       24 GETUPVAL                         R6 4
       25 JUMP                             ; [+9]
       26 GETUPVAL                         R8 5
       27 JUMPIFEQ                         R5 R8 ; [+2]
       29 LOADB                            R7 0 +1
       30 LOADB                            R7 1
       31 JUMPIFNOT                        R7 ; [+2]
       32 GETUPVAL                         R6 6
       33 JUMP                             ; [+1]
       34 GETUPVAL                         R6 7
       35 GETUPVAL                         R9 3
       36 GETTABLEKS                       R9 R9 K1 ["getSelectedJoint"]
       38 CALL                             R9 0 1
       39 JUMPIFEQ                         R5 R9 ; [+2]
       41 LOADB                            R8 0 +1
       42 LOADB                            R8 1
       43 JUMPIF                           R8 ; [+6]
       44 GETUPVAL                         R9 5
       45 JUMPIFEQ                         R5 R9 ; [+2]
       47 LOADB                            R8 0 +1
       48 LOADB                            R8 1
       49 JUMPIFNOT                        R8 ; [+2]
       50 LOADN                            R7 0
       51 JUMP                             ; [+1]
       52 LOADK                            R7 K2 [0.35]
       53 GETTABLEKS                       R8 R4 K3 ["pyramid"]
       55 SETTABLEKS                       R6 R8 K4 ["Color3"]
       57 GETTABLEKS                       R8 R4 K3 ["pyramid"]
       59 SETTABLEKS                       R7 R8 K5 ["Transparency"]
       61 GETTABLEKS                       R8 R4 K6 ["wireframe"]
       63 GETUPVAL                         R11 3
       64 GETTABLEKS                       R11 R11 K1 ["getSelectedJoint"]
       66 CALL                             R11 0 1
       67 JUMPIFEQ                         R5 R11 ; [+2]
       69 LOADB                            R10 0 +1
       70 LOADB                            R10 1
       71 JUMPIFNOT                        R10 ; [+4]
       72 GETUPVAL                         R9 8
       73 GETUPVAL                         R10 4
       74 CALL                             R9 1 1
       75 JUMP                             ; [+11]
       76 GETUPVAL                         R11 5
       77 JUMPIFEQ                         R5 R11 ; [+2]
       79 LOADB                            R10 0 +1
       80 LOADB                            R10 1
       81 JUMPIFNOT                        R10 ; [+4]
       82 GETUPVAL                         R9 8
       83 GETUPVAL                         R10 6
       84 CALL                             R9 1 1
       85 JUMP                             ; [+1]
       86 GETUPVAL                         R9 9
       87 SETTABLEKS                       R9 R8 K4 ["Color3"]
       89 FORGLOOP                         R0 2 ; [-77]
       91 RETURN                           R0 0

PROTO_10:
        0 LOADNIL                          R0
        1 LOADK                            R1 K0 [Infinity]
        2 GETUPVAL                         R2 0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 JUMPIFNOTLT                      R6 R1 ; [+3]
        8 MOVE                             R0 R5
        9 MOVE                             R1 R6
       10 FORGLOOP                         R2 2 ; [-5]
       12 GETUPVAL                         R2 1
       13 JUMPIFEQ                         R0 R2 ; [+4]
       15 SETUPVAL                         R0 1
       16 GETUPVAL                         R2 2
       17 CALL                             R2 0 0
       18 RETURN                           R0 0

PROTO_11:
        0 GETIMPORT                        R1 K1 [workspace]
        2 GETTABLEKS                       R1 R1 K2 ["CurrentCamera"]
        4 JUMPIF                           R1 ; [+1]
        5 RETURN                           R0 0
        6 GETUPVAL                         R2 0
        7 MOVE                             R3 R0
        8 CALL                             R2 1 1
        9 GETTABLEKS                       R2 R2 K3 ["Position"]
       11 GETTABLEKS                       R4 R1 K4 ["CFrame"]
       13 GETTABLEKS                       R4 R4 K3 ["Position"]
       15 SUB                              R3 R4 R2
       16 GETTABLEKS                       R3 R3 K5 ["Magnitude"]
       18 GETUPVAL                         R4 1
       19 SETTABLE                         R3 R4 R0
       20 LOADNIL                          R4
       21 LOADK                            R5 K6 [Infinity]
       22 GETUPVAL                         R6 1
       23 LOADNIL                          R7
       24 LOADNIL                          R8
       25 FORGPREP                         R6
       26 JUMPIFNOTLT                      R10 R5 ; [+3]
       28 MOVE                             R4 R9
       29 MOVE                             R5 R10
       30 FORGLOOP                         R6 2 ; [-5]
       32 GETUPVAL                         R6 2
       33 JUMPIFEQ                         R4 R6 ; [+4]
       35 SETUPVAL                         R4 2
       36 GETUPVAL                         R6 3
       37 CALL                             R6 0 0
       38 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 SETTABLE                         R2 R1 R0
        3 LOADNIL                          R1
        4 LOADK                            R2 K0 [Infinity]
        5 GETUPVAL                         R3 0
        6 LOADNIL                          R4
        7 LOADNIL                          R5
        8 FORGPREP                         R3
        9 JUMPIFNOTLT                      R7 R2 ; [+3]
       11 MOVE                             R1 R6
       12 MOVE                             R2 R7
       13 FORGLOOP                         R3 2 ; [-5]
       15 GETUPVAL                         R3 1
       16 JUMPIFEQ                         R1 R3 ; [+4]
       18 SETUPVAL                         R1 1
       19 GETUPVAL                         R3 2
       20 CALL                             R3 0 0
       21 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 0
        8 GETUPVAL                         R0 1
        9 LOADNIL                          R1
       10 LOADNIL                          R2
       11 FORGPREP                         R0
       12 GETTABLEKS                       R5 R4 K1 ["eventConnections"]
       14 LOADNIL                          R6
       15 LOADNIL                          R7
       16 FORGPREP                         R5
       17 NAMECALL                         R10 R9 K0 ["Disconnect"]
       19 CALL                             R10 1 0
       20 FORGLOOP                         R5 2 ; [-4]
       22 GETTABLEKS                       R5 R4 K2 ["sphere"]
       24 NAMECALL                         R5 R5 K3 ["Destroy"]
       26 CALL                             R5 1 0
       27 GETTABLEKS                       R5 R4 K4 ["wire"]
       29 NAMECALL                         R5 R5 K3 ["Destroy"]
       31 CALL                             R5 1 0
       32 FORGLOOP                         R0 2 ; [-21]
       34 GETIMPORT                        R0 K7 [table.clear]
       36 GETUPVAL                         R1 1
       37 CALL                             R0 1 0
       38 GETUPVAL                         R0 2
       39 LOADNIL                          R1
       40 LOADNIL                          R2
       41 FORGPREP                         R0
       42 GETTABLEKS                       R5 R4 K1 ["eventConnections"]
       44 LOADNIL                          R6
       45 LOADNIL                          R7
       46 FORGPREP                         R5
       47 NAMECALL                         R10 R9 K0 ["Disconnect"]
       49 CALL                             R10 1 0
       50 FORGLOOP                         R5 2 ; [-4]
       52 GETTABLEKS                       R5 R4 K8 ["pyramid"]
       54 NAMECALL                         R5 R5 K3 ["Destroy"]
       56 CALL                             R5 1 0
       57 GETTABLEKS                       R5 R4 K9 ["wireframe"]
       59 NAMECALL                         R5 R5 K3 ["Destroy"]
       61 CALL                             R5 1 0
       62 FORGLOOP                         R0 2 ; [-21]
       64 GETIMPORT                        R0 K7 [table.clear]
       66 GETUPVAL                         R1 2
       67 CALL                             R0 1 0
       68 GETIMPORT                        R0 K7 [table.clear]
       70 GETUPVAL                         R1 3
       71 CALL                             R0 1 0
       72 LOADNIL                          R0
       73 SETUPVAL                         R0 4
       74 GETUPVAL                         R0 5
       75 GETTABLEKS                       R0 R0 K10 ["clearSelection"]
       77 CALL                             R0 0 0
       78 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 NAMECALL                         R0 R0 K0 ["GetSelectedRibbonTool"]
        6 CALL                             R0 1 1
        7 GETIMPORT                        R1 K4 [Enum.RibbonTool.Move]
        9 JUMPIFEQ                         R0 R1 ; [+5]
       11 GETIMPORT                        R1 K6 [Enum.RibbonTool.Rotate]
       13 JUMPIFNOTEQ                      R0 R1 ; [+36]
       15 GETUPVAL                         R1 2
       16 GETTABLEKS                       R1 R1 K7 ["setDraggerTool"]
       18 GETIMPORT                        R3 K4 [Enum.RibbonTool.Move]
       20 JUMPIFNOTEQ                      R0 R3 ; [+3]
       22 LOADK                            R2 K8 ["translate"]
       23 JUMP                             ; [+1]
       24 LOADK                            R2 K9 ["rotate"]
       25 CALL                             R1 1 0
       26 GETUPVAL                         R1 3
       27 JUMPIFEQKNIL                     R1 ; [+3]
       29 GETUPVAL                         R1 3
       30 CALL                             R1 0 0
       31 GETUPVAL                         R2 1
       32 LOADN                            R3 2
       33 LOADNIL                          R4
       34 GETUPVAL                         R5 4
       35 GETTABLEKS                       R5 R5 K10 ["Heartbeat"]
       37 NEWCLOSURE                       R7 P0
       38 CAPTURE                          REF R3
       39 CAPTURE                          REF R4
       40 CAPTURE                          VAL R2
       41 NAMECALL                         R5 R5 K11 ["Connect"]
       43 CALL                             R5 2 1
       44 MOVE                             R4 R5
       45 NEWCLOSURE                       R1 P1
       46 CAPTURE                          REF R4
       47 CLOSEUPVALS                      R3
       48 SETUPVAL                         R1 3
       49 RETURN                           R0 0
       50 GETUPVAL                         R1 3
       51 JUMPIFEQKNIL                     R1 ; [+5]
       53 GETUPVAL                         R1 3
       54 CALL                             R1 0 0
       55 LOADNIL                          R1
       56 SETUPVAL                         R1 3
       57 GETUPVAL                         R1 5
       58 CALL                             R1 0 0
       59 LOADB                            R1 0
       60 SETUPVAL                         R1 0
       61 GETUPVAL                         R1 2
       62 GETTABLEKS                       R1 R1 K12 ["onDeactivated"]
       64 CALL                             R1 0 0
       65 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 GETUPVAL                         R6 1
        5 GETTABLEKS                       R7 R5 K0 ["joint"]
        7 CALL                             R6 1 1
        8 GETTABLEKS                       R7 R5 K1 ["adornee"]
       10 GETTABLEKS                       R8 R5 K2 ["sphere"]
       12 GETTABLEKS                       R10 R7 K3 ["CFrame"]
       14 NAMECALL                         R10 R10 K4 ["Inverse"]
       16 CALL                             R10 1 1
       17 MUL                              R9 R10 R6
       18 SETTABLEKS                       R9 R8 K3 ["CFrame"]
       20 GETTABLEKS                       R8 R6 K5 ["Position"]
       22 GETIMPORT                        R9 K7 [CFrame.lookAt]
       24 MOVE                             R10 R8
       25 MOVE                             R11 R0
       26 CALL                             R9 2 1
       27 GETTABLEKS                       R10 R5 K8 ["wire"]
       29 GETTABLEKS                       R12 R7 K3 ["CFrame"]
       31 NAMECALL                         R12 R12 K4 ["Inverse"]
       33 CALL                             R12 1 1
       34 MUL                              R11 R12 R9
       35 SETTABLEKS                       R11 R10 K3 ["CFrame"]
       37 FORGLOOP                         R1 2 ; [-34]
       39 GETUPVAL                         R1 2
       40 LOADNIL                          R2
       41 LOADNIL                          R3
       42 FORGPREP                         R1
       43 GETUPVAL                         R6 1
       44 GETTABLEKS                       R7 R5 K9 ["parentJoint"]
       46 CALL                             R6 1 1
       47 GETUPVAL                         R7 1
       48 GETTABLEKS                       R8 R5 K10 ["childJoint"]
       50 CALL                             R7 1 1
       51 GETTABLEKS                       R9 R7 K5 ["Position"]
       53 GETTABLEKS                       R10 R6 K5 ["Position"]
       55 SUB                              R8 R9 R10
       56 GETTABLEKS                       R9 R8 K11 ["Magnitude"]
       58 GETTABLEKS                       R10 R5 K1 ["adornee"]
       60 LOADK                            R11 K12 [0.001]
       61 JUMPIFLT                         R9 R11 ; [+269]
       63 GETTABLEKS                       R11 R8 K13 ["Unit"]
       65 GETTABLEKS                       R12 R5 K14 ["effectiveRadius"]
       67 JUMPIFNOTLE                      R9 R12 ; [+10]
       69 MULK                             R14 R9 K15 [0.5]
       70 GETTABLEKS                       R15 R5 K14 ["effectiveRadius"]
       72 FASTCALL2                        MATH_MIN R14 R15 ; [+3]
       74 GETIMPORT                        R13 K18 [math.min]
       76 CALL                             R13 2 1
       77 MOVE                             R12 R13
       78 GETTABLEKS                       R14 R6 K5 ["Position"]
       80 MUL                              R15 R11 R12
       81 ADD                              R13 R14 R15
       82 GETTABLEKS                       R16 R11 K19 ["Y"]
       84 FASTCALL1                        MATH_ABS R16 ; [+2]
       85 GETIMPORT                        R15 K21 [math.abs]
       87 CALL                             R15 1 1
       88 LOADK                            R16 K22 [0.9]
       89 JUMPIFNOTLT                      R16 R15 ; [+3]
       91 LOADK                            R14 K23 [{1, 0, 0}]
       92 JUMP                             ; [+1]
       93 LOADK                            R14 K24 [{0, 1, 0}]
       94 GETIMPORT                        R15 K7 [CFrame.lookAt]
       96 MOVE                             R16 R13
       97 ADD                              R17 R13 R11
       98 MOVE                             R18 R14
       99 CALL                             R15 3 1
      100 GETTABLEKS                       R17 R10 K3 ["CFrame"]
      102 NAMECALL                         R17 R17 K4 ["Inverse"]
      104 CALL                             R17 1 1
      105 MUL                              R16 R17 R15
      106 SUB                              R18 R9 R12
      107 FASTCALL2K                       MATH_MAX R18 K25 ; [+4]
      109 LOADK                            R19 K25 [0.01]
      110 GETIMPORT                        R17 K27 [math.max]
      112 CALL                             R17 2 1
      113 GETTABLEKS                       R18 R5 K28 ["pyramid"]
      115 SETTABLEKS                       R16 R18 K3 ["CFrame"]
      117 GETTABLEKS                       R18 R5 K28 ["pyramid"]
      119 SETTABLEKS                       R17 R18 K29 ["Height"]
      121 GETTABLEKS                       R18 R5 K30 ["wireframe"]
      123 SETTABLEKS                       R16 R18 K3 ["CFrame"]
      125 GETTABLEKS                       R18 R5 K30 ["wireframe"]
      127 NAMECALL                         R18 R18 K31 ["Clear"]
      129 CALL                             R18 1 0
      130 GETTABLEKS                       R20 R5 K14 ["effectiveRadius"]
      132 MULK                             R19 R20 K33 [1.5]
      133 DIVK                             R18 R19 K32 [2]
      134 MINUS                            R20 R18
      135 MINUS                            R21 R18
      136 LOADN                            R22 0
      137 FASTCALL                         VECTOR ; [+2]
      138 GETIMPORT                        R19 K36 [Vector3.new]
      140 CALL                             R19 3 1
      141 MINUS                            R22 R18
      142 LOADN                            R23 0
      143 FASTCALL3                        VECTOR R18 R22 R23
      145 MOVE                             R21 R18
      146 GETIMPORT                        R20 K36 [Vector3.new]
      148 CALL                             R20 3 1
      149 LOADN                            R24 0
      150 FASTCALL3                        VECTOR R18 R18 R24
      152 MOVE                             R22 R18
      153 MOVE                             R23 R18
      154 GETIMPORT                        R21 K36 [Vector3.new]
      156 CALL                             R21 3 1
      157 MINUS                            R23 R18
      158 LOADN                            R25 0
      159 FASTCALL3                        VECTOR R23 R18 R25
      161 MOVE                             R24 R18
      162 GETIMPORT                        R22 K36 [Vector3.new]
      164 CALL                             R22 3 1
      165 LOADN                            R24 0
      166 LOADN                            R25 0
      167 MINUS                            R26 R17
      168 FASTCALL                         VECTOR ; [+2]
      169 GETIMPORT                        R23 K36 [Vector3.new]
      171 CALL                             R23 3 1
      172 ADD                              R28 R19 R20
      173 ADD                              R27 R28 R21
      174 ADD                              R26 R27 R22
      175 ADD                              R25 R26 R23
      176 DIVK                             R24 R25 K37 [5]
      177 GETTABLEKS                       R26 R10 K3 ["CFrame"]
      179 MUL                              R25 R26 R16
      180 MOVE                             R28 R0
      181 NAMECALL                         R26 R25 K38 ["PointToObjectSpace"]
      183 CALL                             R26 2 1
      184 GETUPVAL                         R27 3
      185 MOVE                             R28 R19
      186 MOVE                             R29 R20
      187 MOVE                             R30 R21
      188 MOVE                             R31 R24
      189 MOVE                             R32 R26
      190 CALL                             R27 5 1
      191 GETUPVAL                         R28 3
      192 MOVE                             R29 R19
      193 MOVE                             R30 R20
      194 MOVE                             R31 R23
      195 MOVE                             R32 R24
      196 MOVE                             R33 R26
      197 CALL                             R28 5 1
      198 GETUPVAL                         R29 3
      199 MOVE                             R30 R20
      200 MOVE                             R31 R21
      201 MOVE                             R32 R23
      202 MOVE                             R33 R24
      203 MOVE                             R34 R26
      204 CALL                             R29 5 1
      205 GETUPVAL                         R30 3
      206 MOVE                             R31 R21
      207 MOVE                             R32 R22
      208 MOVE                             R33 R23
      209 MOVE                             R34 R24
      210 MOVE                             R35 R26
      211 CALL                             R30 5 1
      212 GETUPVAL                         R31 3
      213 MOVE                             R32 R22
      214 MOVE                             R33 R19
      215 MOVE                             R34 R23
      216 MOVE                             R35 R24
      217 MOVE                             R36 R26
      218 CALL                             R31 5 1
      219 JUMPIF                           R27 ; [+1]
      220 JUMPIFNOT                        R28 ; [+12]
      221 GETTABLEKS                       R32 R5 K30 ["wireframe"]
      223 NEWTABLE                         R34 0 2
      225 MOVE                             R35 R19
      226 MOVE                             R36 R20
      227 SETLIST                          R34 R35 2 [1]
      229 LOADB                            R35 0
      230 NAMECALL                         R32 R32 K39 ["AddPath"]
      232 CALL                             R32 3 0
      233 JUMPIF                           R27 ; [+1]
      234 JUMPIFNOT                        R29 ; [+12]
      235 GETTABLEKS                       R32 R5 K30 ["wireframe"]
      237 NEWTABLE                         R34 0 2
      239 MOVE                             R35 R20
      240 MOVE                             R36 R21
      241 SETLIST                          R34 R35 2 [1]
      243 LOADB                            R35 0
      244 NAMECALL                         R32 R32 K39 ["AddPath"]
      246 CALL                             R32 3 0
      247 JUMPIF                           R27 ; [+1]
      248 JUMPIFNOT                        R30 ; [+12]
      249 GETTABLEKS                       R32 R5 K30 ["wireframe"]
      251 NEWTABLE                         R34 0 2
      253 MOVE                             R35 R21
      254 MOVE                             R36 R22
      255 SETLIST                          R34 R35 2 [1]
      257 LOADB                            R35 0
      258 NAMECALL                         R32 R32 K39 ["AddPath"]
      260 CALL                             R32 3 0
      261 JUMPIF                           R27 ; [+1]
      262 JUMPIFNOT                        R31 ; [+12]
      263 GETTABLEKS                       R32 R5 K30 ["wireframe"]
      265 NEWTABLE                         R34 0 2
      267 MOVE                             R35 R22
      268 MOVE                             R36 R19
      269 SETLIST                          R34 R35 2 [1]
      271 LOADB                            R35 0
      272 NAMECALL                         R32 R32 K39 ["AddPath"]
      274 CALL                             R32 3 0
      275 JUMPIF                           R28 ; [+1]
      276 JUMPIFNOT                        R31 ; [+12]
      277 GETTABLEKS                       R32 R5 K30 ["wireframe"]
      279 NEWTABLE                         R34 0 2
      281 MOVE                             R35 R19
      282 MOVE                             R36 R23
      283 SETLIST                          R34 R35 2 [1]
      285 LOADB                            R35 0
      286 NAMECALL                         R32 R32 K39 ["AddPath"]
      288 CALL                             R32 3 0
      289 JUMPIF                           R28 ; [+1]
      290 JUMPIFNOT                        R29 ; [+12]
      291 GETTABLEKS                       R32 R5 K30 ["wireframe"]
      293 NEWTABLE                         R34 0 2
      295 MOVE                             R35 R20
      296 MOVE                             R36 R23
      297 SETLIST                          R34 R35 2 [1]
      299 LOADB                            R35 0
      300 NAMECALL                         R32 R32 K39 ["AddPath"]
      302 CALL                             R32 3 0
      303 JUMPIF                           R29 ; [+1]
      304 JUMPIFNOT                        R30 ; [+12]
      305 GETTABLEKS                       R32 R5 K30 ["wireframe"]
      307 NEWTABLE                         R34 0 2
      309 MOVE                             R35 R21
      310 MOVE                             R36 R23
      311 SETLIST                          R34 R35 2 [1]
      313 LOADB                            R35 0
      314 NAMECALL                         R32 R32 K39 ["AddPath"]
      316 CALL                             R32 3 0
      317 JUMPIF                           R30 ; [+1]
      318 JUMPIFNOT                        R31 ; [+12]
      319 GETTABLEKS                       R32 R5 K30 ["wireframe"]
      321 NEWTABLE                         R34 0 2
      323 MOVE                             R35 R22
      324 MOVE                             R36 R23
      325 SETLIST                          R34 R35 2 [1]
      327 LOADB                            R35 0
      328 NAMECALL                         R32 R32 K39 ["AddPath"]
      330 CALL                             R32 3 0
      331 FORGLOOP                         R1 2 ; [-289]
      333 RETURN                           R0 0

PROTO_16:
        0 GETTABLE                         R2 R1 R0
        1 JUMPIFNOT                        R2 ; [+5]
        2 GETTABLEKS                       R4 R2 K0 ["childJoints"]
        4 LENGTH                           R3 R4
        5 JUMPIFNOTEQKN                    R3 K1 [0] ; [+3]
        7 LOADN                            R3 0
        8 RETURN                           R3 1
        9 LOADN                            R3 0
       10 GETTABLEKS                       R4 R2 K0 ["childJoints"]
       12 LOADNIL                          R5
       13 LOADNIL                          R6
       14 FORGPREP                         R4
       15 GETUPVAL                         R9 0
       16 MOVE                             R10 R0
       17 MOVE                             R11 R8
       18 CALL                             R9 2 1
       19 GETUPVAL                         R10 1
       20 MOVE                             R11 R8
       21 MOVE                             R12 R1
       22 CALL                             R10 2 1
       23 ADD                              R11 R9 R10
       24 JUMPIFNOTLT                      R3 R11 ; [+2]
       26 MOVE                             R3 R11
       27 FORGLOOP                         R4 2 ; [-13]
       29 RETURN                           R3 1

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K1 [workspace]
        3 GETTABLEKS                       R1 R1 K2 ["CurrentCamera"]
        5 JUMPIF                           R1 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R2 1
        8 MOVE                             R3 R0
        9 CALL                             R2 1 1
       10 GETTABLEKS                       R2 R2 K3 ["Position"]
       12 GETTABLEKS                       R4 R1 K4 ["CFrame"]
       14 GETTABLEKS                       R4 R4 K3 ["Position"]
       16 SUB                              R3 R4 R2
       17 GETTABLEKS                       R3 R3 K5 ["Magnitude"]
       19 GETUPVAL                         R4 2
       20 SETTABLE                         R3 R4 R0
       21 LOADNIL                          R4
       22 LOADK                            R5 K6 [Infinity]
       23 GETUPVAL                         R6 2
       24 LOADNIL                          R7
       25 LOADNIL                          R8
       26 FORGPREP                         R6
       27 JUMPIFNOTLT                      R10 R5 ; [+3]
       29 MOVE                             R4 R9
       30 MOVE                             R5 R10
       31 FORGLOOP                         R6 2 ; [-5]
       33 GETUPVAL                         R6 3
       34 JUMPIFEQ                         R4 R6 ; [+4]
       36 SETUPVAL                         R4 3
       37 GETUPVAL                         R6 4
       38 CALL                             R6 0 0
       39 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADNIL                          R2
        3 SETTABLE                         R2 R1 R0
        4 LOADNIL                          R1
        5 LOADK                            R2 K0 [Infinity]
        6 GETUPVAL                         R3 1
        7 LOADNIL                          R4
        8 LOADNIL                          R5
        9 FORGPREP                         R3
       10 JUMPIFNOTLT                      R7 R2 ; [+3]
       12 MOVE                             R1 R6
       13 MOVE                             R2 R7
       14 FORGLOOP                         R3 2 ; [-5]
       16 GETUPVAL                         R3 2
       17 JUMPIFEQ                         R1 R3 ; [+4]
       19 SETUPVAL                         R1 2
       20 GETUPVAL                         R3 3
       21 CALL                             R3 0 0
       22 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onJointClicked"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K1 [workspace]
        3 GETTABLEKS                       R1 R1 K2 ["CurrentCamera"]
        5 JUMPIF                           R1 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R2 1
        8 MOVE                             R3 R0
        9 CALL                             R2 1 1
       10 GETTABLEKS                       R2 R2 K3 ["Position"]
       12 GETTABLEKS                       R4 R1 K4 ["CFrame"]
       14 GETTABLEKS                       R4 R4 K3 ["Position"]
       16 SUB                              R3 R4 R2
       17 GETTABLEKS                       R3 R3 K5 ["Magnitude"]
       19 GETUPVAL                         R4 2
       20 SETTABLE                         R3 R4 R0
       21 LOADNIL                          R4
       22 LOADK                            R5 K6 [Infinity]
       23 GETUPVAL                         R6 2
       24 LOADNIL                          R7
       25 LOADNIL                          R8
       26 FORGPREP                         R6
       27 JUMPIFNOTLT                      R10 R5 ; [+3]
       29 MOVE                             R4 R9
       30 MOVE                             R5 R10
       31 FORGLOOP                         R6 2 ; [-5]
       33 GETUPVAL                         R6 3
       34 JUMPIFEQ                         R4 R6 ; [+4]
       36 SETUPVAL                         R4 3
       37 GETUPVAL                         R6 4
       38 CALL                             R6 0 0
       39 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADNIL                          R2
        3 SETTABLE                         R2 R1 R0
        4 LOADNIL                          R1
        5 LOADK                            R2 K0 [Infinity]
        6 GETUPVAL                         R3 1
        7 LOADNIL                          R4
        8 LOADNIL                          R5
        9 FORGPREP                         R3
       10 JUMPIFNOTLT                      R7 R2 ; [+3]
       12 MOVE                             R1 R6
       13 MOVE                             R2 R7
       14 FORGLOOP                         R3 2 ; [-5]
       16 GETUPVAL                         R3 2
       17 JUMPIFEQ                         R1 R3 ; [+4]
       19 SETUPVAL                         R1 2
       20 GETUPVAL                         R3 3
       21 CALL                             R3 0 0
       22 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onJointClicked"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_23:
        0 GETIMPORT                        R0 K1 [workspace]
        2 GETTABLEKS                       R0 R0 K2 ["CurrentCamera"]
        4 JUMPIFNOT                        R0 ; [+6]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R2 R0 K3 ["CFrame"]
        8 GETTABLEKS                       R2 R2 K4 ["Position"]
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R1 1
        3 JUMPIFEQKNIL                     R1 ; [+7]
        5 GETUPVAL                         R0 2
        6 GETTABLEKS                       R0 R0 K0 ["getRig"]
        8 GETUPVAL                         R1 1
        9 CALL                             R0 1 1
       10 JUMP                             ; [+1]
       11 LOADNIL                          R0
       12 JUMPIFNOTEQKNIL                  R0 ; [+2]
       14 RETURN                           R0 0
       15 GETUPVAL                         R1 3
       16 MOVE                             R2 R0
       17 CALL                             R1 1 1
       18 GETUPVAL                         R2 4
       19 MOVE                             R3 R1
       20 CALL                             R2 1 1
       21 DUPCLOSURE                       R3 K1 [PROTO_16]
       22 CAPTURE                          UPVAL U5
       23 CAPTURE                          VAL R3
       24 NEWTABLE                         R4 0 0
       26 MOVE                             R5 R2
       27 LOADNIL                          R6
       28 LOADNIL                          R7
       29 FORGPREP                         R5
       30 GETTABLEKS                       R10 R9 K2 ["joint"]
       32 SETTABLE                         R9 R4 R10
       33 FORGLOOP                         R5 2 ; [-4]
       35 LOADN                            R5 0
       36 MOVE                             R6 R2
       37 LOADNIL                          R7
       38 LOADNIL                          R8
       39 FORGPREP                         R6
       40 GETTABLEKS                       R11 R10 K3 ["parentJoint"]
       42 JUMPIFNOTEQKNIL                  R11 ; [+9]
       44 MOVE                             R11 R3
       45 GETTABLEKS                       R12 R10 K2 ["joint"]
       47 MOVE                             R13 R4
       48 CALL                             R11 2 1
       49 JUMPIFNOTLT                      R5 R11 ; [+2]
       51 MOVE                             R5 R11
       52 FORGLOOP                         R6 2 ; [-13]
       54 LOADN                            R7 0
       55 JUMPIFNOTLT                      R7 R5 ; [+4]
       57 DIVK                             R7 R5 K5 [6]
       58 MULK                             R6 R7 K4 [0.2]
       59 JUMP                             ; [+1]
       60 LOADK                            R6 K4 [0.2]
       61 NEWTABLE                         R7 0 0
       63 MOVE                             R8 R2
       64 LOADNIL                          R9
       65 LOADNIL                          R10
       66 FORGPREP                         R8
       67 MOVE                             R13 R6
       68 GETTABLEKS                       R15 R12 K6 ["childJoints"]
       70 LENGTH                           R14 R15
       71 LOADN                            R15 0
       72 JUMPIFNOTLT                      R15 R14 ; [+33]
       74 LOADN                            R14 0
       75 LOADN                            R15 0
       76 GETTABLEKS                       R16 R12 K6 ["childJoints"]
       78 LOADNIL                          R17
       79 LOADNIL                          R18
       80 FORGPREP                         R16
       81 GETUPVAL                         R21 5
       82 GETTABLEKS                       R22 R12 K2 ["joint"]
       84 MOVE                             R23 R20
       85 CALL                             R21 2 1
       86 LOADN                            R22 0
       87 JUMPIFNOTLT                      R22 R21 ; [+3]
       89 ADD                              R14 R14 R21
       90 ADDK                             R15 R15 K7 [1]
       91 FORGLOOP                         R16 2 ; [-11]
       93 LOADN                            R16 0
       94 JUMPIFNOTLT                      R16 R15 ; [+31]
       96 DIV                              R19 R14 R15
       97 MULK                             R18 R19 K4 [0.2]
       98 FASTCALL2                        MATH_MIN R13 R18 ; [+4]
      100 MOVE                             R17 R13
      101 GETIMPORT                        R16 K10 [math.min]
      103 CALL                             R16 2 1
      104 MOVE                             R13 R16
      105 JUMP                             ; [+20]
      106 GETTABLEKS                       R14 R12 K3 ["parentJoint"]
      108 JUMPIFNOT                        R14 ; [+17]
      109 GETUPVAL                         R14 5
      110 GETTABLEKS                       R15 R12 K3 ["parentJoint"]
      112 GETTABLEKS                       R16 R12 K2 ["joint"]
      114 CALL                             R14 2 1
      115 LOADN                            R15 0
      116 JUMPIFNOTLT                      R15 R14 ; [+9]
      118 MULK                             R17 R14 K4 [0.2]
      119 FASTCALL2                        MATH_MIN R13 R17 ; [+4]
      121 MOVE                             R16 R13
      122 GETIMPORT                        R15 K10 [math.min]
      124 CALL                             R15 2 1
      125 MOVE                             R13 R15
      126 GETTABLEKS                       R14 R12 K2 ["joint"]
      128 LOADK                            R17 K11 [0.005]
      129 LOADN                            R18 20
      130 FASTCALL3                        MATH_CLAMP R13 R17 R18
      132 MOVE                             R16 R13
      133 GETIMPORT                        R15 K13 [math.clamp]
      135 CALL                             R15 3 1
      136 SETTABLE                         R15 R7 R14
      137 FORGLOOP                         R8 2 ; [-71]
      139 MOVE                             R8 R2
      140 LOADNIL                          R9
      141 LOADNIL                          R10
      142 FORGPREP                         R8
      143 GETTABLEKS                       R13 R12 K14 ["adornee"]
      145 JUMPIFNOT                        R13 ; [+277]
      146 GETTABLEKS                       R16 R12 K2 ["joint"]
      148 GETTABLE                         R15 R7 R16
      149 OR                               R14 R15 R6
      150 MULK                             R15 R14 K15 [1.025]
      151 GETUPVAL                         R16 6
      152 GETTABLEKS                       R17 R12 K2 ["joint"]
      154 CALL                             R16 1 1
      155 GETTABLEKS                       R16 R16 K16 ["Position"]
      157 GETIMPORT                        R17 K19 [Instance.new]
      159 LOADK                            R18 K20 ["SphereHandleAdornment"]
      160 CALL                             R17 1 1
      161 LOADB                            R18 0
      162 SETTABLEKS                       R18 R17 K21 ["Archivable"]
      164 SETTABLEKS                       R13 R17 K22 ["Adornee"]
      166 SETTABLEKS                       R14 R17 K23 ["Radius"]
      168 GETUPVAL                         R18 7
      169 SETTABLEKS                       R18 R17 K24 ["Color3"]
      171 LOADK                            R18 K25 [0.35]
      172 SETTABLEKS                       R18 R17 K26 ["Transparency"]
      174 LOADB                            R18 1
      175 SETTABLEKS                       R18 R17 K27 ["AlwaysOnTop"]
      177 LOADN                            R18 0
      178 SETTABLEKS                       R18 R17 K28 ["ZIndex"]
      180 GETUPVAL                         R18 8
      181 SETTABLEKS                       R18 R17 K29 ["Parent"]
      183 GETIMPORT                        R18 K19 [Instance.new]
      185 LOADK                            R19 K30 ["WireframeHandleAdornment"]
      186 CALL                             R18 1 1
      187 LOADB                            R19 0
      188 SETTABLEKS                       R19 R18 K21 ["Archivable"]
      190 SETTABLEKS                       R13 R18 K22 ["Adornee"]
      192 LOADB                            R19 1
      193 SETTABLEKS                       R19 R18 K27 ["AlwaysOnTop"]
      195 LOADK                            R19 K4 [0.2]
      196 SETTABLEKS                       R19 R18 K26 ["Transparency"]
      198 LOADN                            R19 0
      199 SETTABLEKS                       R19 R18 K28 ["ZIndex"]
      201 GETUPVAL                         R19 9
      202 SETTABLEKS                       R19 R18 K24 ["Color3"]
      204 GETUPVAL                         R19 8
      205 SETTABLEKS                       R19 R18 K29 ["Parent"]
      207 GETUPVAL                         R19 10
      208 LOADN                            R20 24
      209 MOVE                             R21 R15
      210 CALL                             R19 2 1
      211 MOVE                             R22 R19
      212 LOADB                            R23 1
      213 NAMECALL                         R20 R18 K31 ["AddPath"]
      215 CALL                             R20 3 0
      216 NEWTABLE                         R20 0 0
      218 GETTABLEKS                       R21 R12 K2 ["joint"]
      220 MOVE                             R23 R20
      221 GETTABLEKS                       R24 R17 K32 ["MouseEnter"]
      223 NEWCLOSURE                       R26 P1
      224 CAPTURE                          VAL R21
      225 CAPTURE                          UPVAL U6
      226 CAPTURE                          UPVAL U11
      227 CAPTURE                          UPVAL U12
      228 CAPTURE                          UPVAL U13
      229 NAMECALL                         R24 R24 K33 ["Connect"]
      231 CALL                             R24 2 -1
      232 FASTCALL                         TABLE_INSERT ; [+2]
      233 GETIMPORT                        R22 K36 [table.insert]
      235 CALL                             R22 -1 0
      236 MOVE                             R23 R20
      237 GETTABLEKS                       R24 R17 K37 ["MouseLeave"]
      239 NEWCLOSURE                       R26 P2
      240 CAPTURE                          VAL R21
      241 CAPTURE                          UPVAL U11
      242 CAPTURE                          UPVAL U12
      243 CAPTURE                          UPVAL U13
      244 NAMECALL                         R24 R24 K33 ["Connect"]
      246 CALL                             R24 2 -1
      247 FASTCALL                         TABLE_INSERT ; [+2]
      248 GETIMPORT                        R22 K36 [table.insert]
      250 CALL                             R22 -1 0
      251 MOVE                             R23 R20
      252 GETTABLEKS                       R24 R17 K38 ["MouseButton1Down"]
      254 NEWCLOSURE                       R26 P3
      255 CAPTURE                          UPVAL U2
      256 CAPTURE                          VAL R21
      257 NAMECALL                         R24 R24 K33 ["Connect"]
      259 CALL                             R24 2 -1
      260 FASTCALL                         TABLE_INSERT ; [+2]
      261 GETIMPORT                        R22 K36 [table.insert]
      263 CALL                             R22 -1 0
      264 GETUPVAL                         R23 14
      265 DUPTABLE                         R24 K42 [{"joint", "adornee", "sphere", "wire", "eventConnections"}]
      266 GETTABLEKS                       R25 R12 K2 ["joint"]
      268 SETTABLEKS                       R25 R24 K2 ["joint"]
      270 SETTABLEKS                       R13 R24 K14 ["adornee"]
      272 SETTABLEKS                       R17 R24 K39 ["sphere"]
      274 SETTABLEKS                       R18 R24 K40 ["wire"]
      276 SETTABLEKS                       R20 R24 K41 ["eventConnections"]
      278 FASTCALL2                        TABLE_INSERT R23 R24 ; [+3]
      280 GETIMPORT                        R22 K36 [table.insert]
      282 CALL                             R22 2 0
      283 GETTABLEKS                       R22 R12 K6 ["childJoints"]
      285 LOADNIL                          R23
      286 LOADNIL                          R24
      287 FORGPREP                         R22
      288 GETUPVAL                         R28 6
      289 MOVE                             R29 R26
      290 CALL                             R28 1 1
      291 GETTABLEKS                       R28 R28 K16 ["Position"]
      293 SUB                              R27 R28 R16
      294 GETTABLEKS                       R27 R27 K43 ["Magnitude"]
      296 LOADK                            R28 K44 [0.001]
      297 JUMPIFLT                         R27 R28 ; [+123]
      299 GETIMPORT                        R27 K19 [Instance.new]
      301 LOADK                            R28 K45 ["PyramidHandleAdornment"]
      302 CALL                             R27 1 1
      303 LOADB                            R28 0
      304 SETTABLEKS                       R28 R27 K21 ["Archivable"]
      306 SETTABLEKS                       R13 R27 K22 ["Adornee"]
      308 MULK                             R28 R14 K46 [1.5]
      309 SETTABLEKS                       R28 R27 K47 ["Size"]
      311 GETUPVAL                         R28 7
      312 SETTABLEKS                       R28 R27 K24 ["Color3"]
      314 LOADK                            R28 K25 [0.35]
      315 SETTABLEKS                       R28 R27 K26 ["Transparency"]
      317 LOADB                            R28 1
      318 SETTABLEKS                       R28 R27 K27 ["AlwaysOnTop"]
      320 LOADN                            R28 0
      321 SETTABLEKS                       R28 R27 K28 ["ZIndex"]
      323 GETUPVAL                         R28 8
      324 SETTABLEKS                       R28 R27 K29 ["Parent"]
      326 GETIMPORT                        R28 K19 [Instance.new]
      328 LOADK                            R29 K30 ["WireframeHandleAdornment"]
      329 CALL                             R28 1 1
      330 LOADB                            R29 0
      331 SETTABLEKS                       R29 R28 K21 ["Archivable"]
      333 SETTABLEKS                       R13 R28 K22 ["Adornee"]
      335 LOADB                            R29 1
      336 SETTABLEKS                       R29 R28 K27 ["AlwaysOnTop"]
      338 LOADN                            R29 0
      339 SETTABLEKS                       R29 R28 K26 ["Transparency"]
      341 LOADN                            R29 0
      342 SETTABLEKS                       R29 R28 K28 ["ZIndex"]
      344 GETUPVAL                         R29 9
      345 SETTABLEKS                       R29 R28 K24 ["Color3"]
      347 GETUPVAL                         R29 8
      348 SETTABLEKS                       R29 R28 K29 ["Parent"]
      350 NEWTABLE                         R29 0 0
      352 GETTABLEKS                       R30 R12 K2 ["joint"]
      354 MOVE                             R32 R29
      355 GETTABLEKS                       R33 R27 K32 ["MouseEnter"]
      357 NEWCLOSURE                       R35 P4
      358 CAPTURE                          VAL R30
      359 CAPTURE                          UPVAL U6
      360 CAPTURE                          UPVAL U11
      361 CAPTURE                          UPVAL U12
      362 CAPTURE                          UPVAL U13
      363 NAMECALL                         R33 R33 K33 ["Connect"]
      365 CALL                             R33 2 -1
      366 FASTCALL                         TABLE_INSERT ; [+2]
      367 GETIMPORT                        R31 K36 [table.insert]
      369 CALL                             R31 -1 0
      370 MOVE                             R32 R29
      371 GETTABLEKS                       R33 R27 K37 ["MouseLeave"]
      373 NEWCLOSURE                       R35 P5
      374 CAPTURE                          VAL R30
      375 CAPTURE                          UPVAL U11
      376 CAPTURE                          UPVAL U12
      377 CAPTURE                          UPVAL U13
      378 NAMECALL                         R33 R33 K33 ["Connect"]
      380 CALL                             R33 2 -1
      381 FASTCALL                         TABLE_INSERT ; [+2]
      382 GETIMPORT                        R31 K36 [table.insert]
      384 CALL                             R31 -1 0
      385 MOVE                             R32 R29
      386 GETTABLEKS                       R33 R27 K38 ["MouseButton1Down"]
      388 NEWCLOSURE                       R35 P6
      389 CAPTURE                          UPVAL U2
      390 CAPTURE                          VAL R30
      391 NAMECALL                         R33 R33 K33 ["Connect"]
      393 CALL                             R33 2 -1
      394 FASTCALL                         TABLE_INSERT ; [+2]
      395 GETIMPORT                        R31 K36 [table.insert]
      397 CALL                             R31 -1 0
      398 GETUPVAL                         R32 15
      399 DUPTABLE                         R33 K52 [{"parentJoint", "childJoint", "adornee", "pyramid", "wireframe", "effectiveRadius", "eventConnections"}]
      400 GETTABLEKS                       R34 R12 K2 ["joint"]
      402 SETTABLEKS                       R34 R33 K3 ["parentJoint"]
      404 SETTABLEKS                       R26 R33 K48 ["childJoint"]
      406 SETTABLEKS                       R13 R33 K14 ["adornee"]
      408 SETTABLEKS                       R27 R33 K49 ["pyramid"]
      410 SETTABLEKS                       R28 R33 K50 ["wireframe"]
      412 SETTABLEKS                       R14 R33 K51 ["effectiveRadius"]
      414 SETTABLEKS                       R29 R33 K41 ["eventConnections"]
      416 FASTCALL2                        TABLE_INSERT R32 R33 ; [+3]
      418 GETIMPORT                        R31 K36 [table.insert]
      420 CALL                             R31 2 0
      421 FORGLOOP                         R22 2 ; [-134]
      423 FORGLOOP                         R8 2 ; [-281]
      425 GETIMPORT                        R8 K54 [workspace]
      427 GETTABLEKS                       R8 R8 K55 ["CurrentCamera"]
      429 JUMPIFNOT                        R8 ; [+6]
      430 GETUPVAL                         R9 16
      431 GETTABLEKS                       R10 R8 K56 ["CFrame"]
      433 GETTABLEKS                       R10 R10 K16 ["Position"]
      435 CALL                             R9 1 0
      436 GETUPVAL                         R9 18
      437 GETTABLEKS                       R9 R9 K57 ["Heartbeat"]
      439 NEWCLOSURE                       R11 P7
      440 CAPTURE                          UPVAL U16
      441 NAMECALL                         R9 R9 K33 ["Connect"]
      443 CALL                             R9 2 1
      444 SETUPVAL                         R9 17
      445 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOTEQ                      R0 R2 ; [+2]
        3 RETURN                           R0 0
        4 SETUPVAL                         R0 0
        5 JUMPIFNOT                        R0 ; [+11]
        6 SETUPVAL                         R1 1
        7 GETUPVAL                         R2 2
        8 JUMPIFNOT                        R2 ; [+5]
        9 GETUPVAL                         R2 2
       10 LOADB                            R4 1
       11 NAMECALL                         R2 R2 K0 ["Activate"]
       13 CALL                             R2 2 0
       14 GETUPVAL                         R2 3
       15 CALL                             R2 0 0
       16 RETURN                           R0 0
       17 GETUPVAL                         R2 4
       18 CALL                             R2 0 0
       19 GETUPVAL                         R2 5
       20 JUMPIFEQKNIL                     R2 ; [+5]
       22 GETUPVAL                         R2 5
       23 CALL                             R2 0 0
       24 LOADNIL                          R2
       25 SETUPVAL                         R2 5
       26 GETUPVAL                         R2 2
       27 JUMPIFNOT                        R2 ; [+4]
       28 GETUPVAL                         R2 2
       29 NAMECALL                         R2 R2 K1 ["Deactivate"]
       31 CALL                             R2 1 0
       32 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQ                      R0 R1 ; [+5]
        3 GETUPVAL                         R1 1
        4 JUMPIFNOT                        R1 ; [+2]
        5 GETUPVAL                         R1 2
        6 CALL                             R1 0 0
        7 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+5]
        3 GETUPVAL                         R0 0
        4 CALL                             R0 0 0
        5 LOADNIL                          R0
        6 SETUPVAL                         R0 0
        7 GETUPVAL                         R0 1
        8 JUMPIFNOT                        R0 ; [+6]
        9 GETUPVAL                         R0 1
       10 NAMECALL                         R0 R0 K0 ["Disconnect"]
       12 CALL                             R0 1 0
       13 LOADNIL                          R0
       14 SETUPVAL                         R0 1
       15 GETUPVAL                         R0 2
       16 CALL                             R0 0 0
       17 GETUPVAL                         R0 3
       18 JUMPIFNOT                        R0 ; [+8]
       19 LOADB                            R0 0
       20 SETUPVAL                         R0 3
       21 GETUPVAL                         R0 4
       22 JUMPIFNOT                        R0 ; [+4]
       23 GETUPVAL                         R0 4
       24 NAMECALL                         R0 R0 K1 ["Deactivate"]
       26 CALL                             R0 1 0
       27 RETURN                           R0 0

PROTO_28:
        0 LOADB                            R1 0
        1 LOADNIL                          R2
        2 NEWTABLE                         R3 0 0
        4 NEWTABLE                         R4 0 0
        6 NEWTABLE                         R5 0 0
        8 LOADNIL                          R6
        9 LOADNIL                          R7
       10 DUPCLOSURE                       R8 K0 [PROTO_3]
       11 NEWCLOSURE                       R9 P1
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U0
       14 CAPTURE                          REF R6
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          UPVAL U2
       17 NEWCLOSURE                       R10 P2
       18 CAPTURE                          VAL R0
       19 CAPTURE                          REF R6
       20 NEWCLOSURE                       R11 P3
       21 CAPTURE                          VAL R0
       22 CAPTURE                          UPVAL U3
       23 CAPTURE                          UPVAL U0
       24 CAPTURE                          REF R6
       25 CAPTURE                          UPVAL U1
       26 CAPTURE                          UPVAL U4
       27 NEWCLOSURE                       R12 P4
       28 CAPTURE                          VAL R0
       29 CAPTURE                          UPVAL U0
       30 CAPTURE                          REF R6
       31 CAPTURE                          UPVAL U1
       32 CAPTURE                          UPVAL U2
       33 CAPTURE                          UPVAL U3
       34 CAPTURE                          UPVAL U4
       35 NEWCLOSURE                       R13 P5
       36 CAPTURE                          VAL R0
       37 CAPTURE                          UPVAL U0
       38 CAPTURE                          REF R6
       39 CAPTURE                          UPVAL U1
       40 CAPTURE                          UPVAL U2
       41 CAPTURE                          UPVAL U3
       42 CAPTURE                          UPVAL U4
       43 NEWCLOSURE                       R14 P6
       44 CAPTURE                          VAL R3
       45 CAPTURE                          VAL R12
       46 CAPTURE                          VAL R4
       47 CAPTURE                          VAL R0
       48 CAPTURE                          UPVAL U0
       49 CAPTURE                          REF R6
       50 CAPTURE                          UPVAL U1
       51 CAPTURE                          UPVAL U2
       52 CAPTURE                          UPVAL U3
       53 CAPTURE                          UPVAL U4
       54 NEWCLOSURE                       R15 P7
       55 CAPTURE                          VAL R5
       56 CAPTURE                          REF R6
       57 CAPTURE                          VAL R14
       58 NEWCLOSURE                       R16 P8
       59 CAPTURE                          UPVAL U5
       60 CAPTURE                          VAL R5
       61 CAPTURE                          REF R6
       62 CAPTURE                          VAL R14
       63 NEWCLOSURE                       R17 P9
       64 CAPTURE                          VAL R5
       65 CAPTURE                          REF R6
       66 CAPTURE                          VAL R14
       67 NEWCLOSURE                       R18 P10
       68 CAPTURE                          REF R7
       69 CAPTURE                          VAL R3
       70 CAPTURE                          VAL R4
       71 CAPTURE                          VAL R5
       72 CAPTURE                          REF R6
       73 CAPTURE                          VAL R0
       74 GETIMPORT                        R19 K2 [script]
       76 LOADK                            R21 K3 ["Plugin"]
       77 NAMECALL                         R19 R19 K4 ["FindFirstAncestorWhichIsA"]
       79 CALL                             R19 2 1
       80 LOADNIL                          R20
       81 LOADNIL                          R21
       82 JUMPIFNOT                        R19 ; [+13]
       83 GETTABLEKS                       R22 R19 K5 ["Deactivation"]
       85 NEWCLOSURE                       R24 P11
       86 CAPTURE                          REF R1
       87 CAPTURE                          VAL R19
       88 CAPTURE                          VAL R0
       89 CAPTURE                          REF R21
       90 CAPTURE                          UPVAL U6
       91 CAPTURE                          VAL R18
       92 NAMECALL                         R22 R22 K6 ["Connect"]
       94 CALL                             R22 2 1
       95 MOVE                             R20 R22
       96 NEWCLOSURE                       R22 P12
       97 CAPTURE                          VAL R3
       98 CAPTURE                          UPVAL U5
       99 CAPTURE                          VAL R4
      100 CAPTURE                          UPVAL U7
      101 NEWCLOSURE                       R23 P13
      102 CAPTURE                          VAL R18
      103 CAPTURE                          REF R2
      104 CAPTURE                          VAL R0
      105 CAPTURE                          UPVAL U8
      106 CAPTURE                          UPVAL U9
      107 CAPTURE                          UPVAL U10
      108 CAPTURE                          UPVAL U5
      109 CAPTURE                          UPVAL U2
      110 CAPTURE                          UPVAL U11
      111 CAPTURE                          UPVAL U4
      112 CAPTURE                          UPVAL U12
      113 CAPTURE                          VAL R5
      114 CAPTURE                          REF R6
      115 CAPTURE                          VAL R14
      116 CAPTURE                          VAL R3
      117 CAPTURE                          VAL R4
      118 CAPTURE                          VAL R22
      119 CAPTURE                          REF R7
      120 CAPTURE                          UPVAL U6
      121 NEWCLOSURE                       R24 P14
      122 CAPTURE                          REF R1
      123 CAPTURE                          REF R2
      124 CAPTURE                          VAL R19
      125 CAPTURE                          VAL R23
      126 CAPTURE                          VAL R18
      127 CAPTURE                          REF R21
      128 NEWCLOSURE                       R25 P15
      129 CAPTURE                          REF R2
      130 CAPTURE                          REF R1
      131 CAPTURE                          VAL R23
      132 NEWCLOSURE                       R26 P16
      133 CAPTURE                          REF R21
      134 CAPTURE                          REF R20
      135 CAPTURE                          VAL R18
      136 CAPTURE                          REF R1
      137 CAPTURE                          VAL R19
      138 DUPTABLE                         R27 K11 [{"refreshStyles", "setMeshSelectorActive", "onRigChanged", "destroy"}]
      139 SETTABLEKS                       R14 R27 K7 ["refreshStyles"]
      141 SETTABLEKS                       R24 R27 K8 ["setMeshSelectorActive"]
      143 SETTABLEKS                       R25 R27 K9 ["onRigChanged"]
      145 SETTABLEKS                       R26 R27 K10 ["destroy"]
      147 CLOSEUPVALS                      R1
      148 RETURN                           R27 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["CoreGui"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["RunService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K6 [script]
       15 LOADK                            R4 K7 ["AssistantUI"]
       16 NAMECALL                         R2 R2 K8 ["FindFirstAncestor"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K10 [require]
       21 GETIMPORT                        R4 K6 [script]
       23 GETTABLEKS                       R4 R4 K11 ["Parent"]
       25 GETTABLEKS                       R4 R4 K12 ["JointFrames"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K10 [require]
       30 GETIMPORT                        R5 K6 [script]
       32 GETTABLEKS                       R5 R5 K11 ["Parent"]
       34 GETTABLEKS                       R5 R5 K13 ["SkeletonAdornmentUtils"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K10 [require]
       39 GETTABLEKS                       R6 R2 K14 ["Types"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K10 [require]
       44 GETIMPORT                        R7 K6 [script]
       46 GETTABLEKS                       R7 R7 K11 ["Parent"]
       48 GETTABLEKS                       R7 R7 K15 ["createPartDragger"]
       50 CALL                             R6 1 1
       51 GETTABLEKS                       R7 R3 K16 ["getJointWorldCFrame"]
       53 GETTABLEKS                       R8 R4 K17 ["getRestBoneLength"]
       55 GETTABLEKS                       R9 R4 K18 ["buildSkeleton"]
       57 GETTABLEKS                       R10 R4 K19 ["buildSkeletonEntries"]
       59 GETTABLEKS                       R11 R4 K20 ["buildCircle"]
       61 GETTABLEKS                       R12 R4 K21 ["isTriangleFrontFacing"]
       63 GETTABLEKS                       R13 R4 K22 ["darkenColor"]
       65 GETIMPORT                        R14 K25 [Color3.fromRGB]
       67 LOADN                            R15 230
       68 LOADN                            R16 104
       69 LOADN                            R17 10
       70 CALL                             R14 3 1
       71 GETIMPORT                        R15 K25 [Color3.fromRGB]
       73 LOADN                            R16 239
       74 LOADN                            R17 209
       75 LOADN                            R18 184
       76 CALL                             R15 3 1
       77 GETIMPORT                        R16 K25 [Color3.fromRGB]
       79 LOADN                            R17 51
       80 LOADN                            R18 95
       81 LOADN                            R19 255
       82 CALL                             R16 3 1
       83 GETIMPORT                        R17 K25 [Color3.fromRGB]
       85 LOADN                            R18 68
       86 LOADN                            R19 73
       87 LOADN                            R20 100
       88 CALL                             R17 3 1
       89 DUPCLOSURE                       R18 K26 [PROTO_2]
       90 CAPTURE                          VAL R1
       91 DUPCLOSURE                       R19 K27 [PROTO_28]
       92 CAPTURE                          VAL R16
       93 CAPTURE                          VAL R15
       94 CAPTURE                          VAL R14
       95 CAPTURE                          VAL R13
       96 CAPTURE                          VAL R17
       97 CAPTURE                          VAL R7
       98 CAPTURE                          VAL R1
       99 CAPTURE                          VAL R12
      100 CAPTURE                          VAL R9
      101 CAPTURE                          VAL R10
      102 CAPTURE                          VAL R8
      103 CAPTURE                          VAL R0
      104 CAPTURE                          VAL R11
      105 RETURN                           R19 1
