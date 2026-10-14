PROTO_0:
        0 NEWTABLE                         R1 8 0
        2 GETUPVAL                         R2 0
        3 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        5 GETIMPORT                        R0 K1 [setmetatable]
        7 CALL                             R0 2 1
        8 LOADB                            R1 0
        9 SETTABLEKS                       R1 R0 K2 ["transparencyDirty"]
       11 LOADB                            R1 0
       12 SETTABLEKS                       R1 R0 K3 ["enabled"]
       14 LOADNIL                          R1
       15 SETTABLEKS                       R1 R0 K4 ["lastTransparency"]
       17 LOADNIL                          R1
       18 LOADNIL                          R2
       19 SETTABLEKS                       R1 R0 K5 ["descendantAddedConn"]
       21 SETTABLEKS                       R2 R0 K6 ["descendantRemovingConn"]
       23 NEWTABLE                         R1 0 0
       25 SETTABLEKS                       R1 R0 K7 ["toolDescendantAddedConns"]
       27 NEWTABLE                         R1 0 0
       29 SETTABLEKS                       R1 R0 K8 ["toolDescendantRemovingConns"]
       31 NEWTABLE                         R1 0 0
       33 SETTABLEKS                       R1 R0 K9 ["cachedParts"]
       35 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R2 R1 K0 ["Parent"]
        2 JUMPIFNOTEQKNIL                  R2 ; [+3]
        4 LOADB                            R2 0
        5 RETURN                           R2 1
        6 GETTABLEKS                       R3 R1 K0 ["Parent"]
        8 FASTCALL2K                       ASSERT R3 K1 ; [+4]
       10 LOADK                            R4 K1 [""]
       11 GETIMPORT                        R2 K3 [assert]
       13 CALL                             R2 2 0
       14 GETTABLEKS                       R2 R1 K0 ["Parent"]
       16 LOADK                            R4 K4 ["Tool"]
       17 NAMECALL                         R2 R2 K5 ["IsA"]
       19 CALL                             R2 2 1
       20 JUMPIF                           R2 ; [+5]
       21 GETTABLEKS                       R4 R1 K0 ["Parent"]
       23 NAMECALL                         R2 R0 K6 ["HasToolAncestor"]
       25 CALL                             R2 2 1
       26 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 MOVE                             R9 R6
        5 NAMECALL                         R7 R1 K0 ["IsA"]
        7 CALL                             R7 2 1
        8 JUMPIFNOT                        R7 ; [+6]
        9 MOVE                             R10 R1
       10 NAMECALL                         R8 R0 K1 ["HasToolAncestor"]
       12 CALL                             R8 2 1
       13 NOT                              R7 R8
       14 RETURN                           R7 1
       15 FORGLOOP                         R2 2 ; [-12]
       17 LOADB                            R2 0
       18 RETURN                           R2 1

PROTO_3:
        0 JUMPIFNOT                        R1 ; [+25]
        1 MOVE                             R4 R1
        2 NAMECALL                         R2 R0 K0 ["IsValidPartToModify"]
        4 CALL                             R2 2 1
        5 JUMPIFNOT                        R2 ; [+7]
        6 GETTABLEKS                       R2 R0 K1 ["cachedParts"]
        8 LOADB                            R3 1
        9 SETTABLE                         R3 R2 R1
       10 LOADB                            R2 1
       11 SETTABLEKS                       R2 R0 K2 ["transparencyDirty"]
       13 GETIMPORT                        R2 K4 [pairs]
       15 NAMECALL                         R3 R1 K5 ["GetChildren"]
       17 CALL                             R3 1 -1
       18 CALL                             R2 -1 3
       19 FORGPREP_NEXT                    R2
       20 MOVE                             R9 R6
       21 NAMECALL                         R7 R0 K6 ["CachePartsRecursive"]
       23 CALL                             R7 2 0
       24 FORGLOOP                         R2 2 ; [-5]
       26 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R1 K1 [pairs]
        2 GETTABLEKS                       R2 R0 K2 ["cachedParts"]
        4 CALL                             R1 1 3
        5 FORGPREP_NEXT                    R1
        6 LOADN                            R6 0
        7 SETTABLEKS                       R6 R4 K3 ["LocalTransparencyModifier"]
        9 FORGLOOP                         R1 2 ; [-4]
       11 NEWTABLE                         R1 0 0
       13 SETTABLEKS                       R1 R0 K2 ["cachedParts"]
       15 LOADB                            R1 1
       16 SETTABLEKS                       R1 R0 K4 ["transparencyDirty"]
       18 LOADNIL                          R1
       19 SETTABLEKS                       R1 R0 K5 ["lastTransparency"]
       21 GETTABLEKS                       R1 R0 K6 ["descendantAddedConn"]
       23 JUMPIFNOT                        R1 ; [+8]
       24 GETTABLEKS                       R1 R0 K6 ["descendantAddedConn"]
       26 NAMECALL                         R1 R1 K7 ["disconnect"]
       28 CALL                             R1 1 0
       29 LOADNIL                          R1
       30 SETTABLEKS                       R1 R0 K6 ["descendantAddedConn"]
       32 GETTABLEKS                       R1 R0 K8 ["descendantRemovingConn"]
       34 JUMPIFNOT                        R1 ; [+8]
       35 GETTABLEKS                       R1 R0 K8 ["descendantRemovingConn"]
       37 NAMECALL                         R1 R1 K7 ["disconnect"]
       39 CALL                             R1 1 0
       40 LOADNIL                          R1
       41 SETTABLEKS                       R1 R0 K8 ["descendantRemovingConn"]
       43 GETIMPORT                        R1 K1 [pairs]
       45 GETTABLEKS                       R2 R0 K9 ["toolDescendantAddedConns"]
       47 CALL                             R1 1 3
       48 FORGPREP_NEXT                    R1
       49 NAMECALL                         R6 R5 K10 ["Disconnect"]
       51 CALL                             R6 1 0
       52 GETTABLEKS                       R6 R0 K9 ["toolDescendantAddedConns"]
       54 LOADNIL                          R7
       55 SETTABLE                         R7 R6 R4
       56 FORGLOOP                         R1 2 ; [-8]
       58 GETIMPORT                        R1 K1 [pairs]
       60 GETTABLEKS                       R2 R0 K11 ["toolDescendantRemovingConns"]
       62 CALL                             R1 1 3
       63 FORGPREP_NEXT                    R1
       64 NAMECALL                         R6 R5 K10 ["Disconnect"]
       66 CALL                             R6 1 0
       67 GETTABLEKS                       R6 R0 K11 ["toolDescendantRemovingConns"]
       69 LOADNIL                          R7
       70 SETTABLE                         R7 R6 R4
       71 FORGLOOP                         R1 2 ; [-8]
       73 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["cachedParts"]
        3 LOADNIL                          R2
        4 SETTABLE                         R2 R1 R0
        5 LOADK                            R3 K1 ["BasePart"]
        6 NAMECALL                         R1 R0 K2 ["IsA"]
        8 CALL                             R1 2 1
        9 JUMPIF                           R1 ; [+5]
       10 LOADK                            R3 K3 ["Decal"]
       11 NAMECALL                         R1 R0 K2 ["IsA"]
       13 CALL                             R1 2 1
       14 JUMPIFNOT                        R1 ; [+3]
       15 LOADN                            R1 0
       16 SETTABLEKS                       R1 R0 K4 ["LocalTransparencyModifier"]
       18 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R1 K1 [wait]
        2 CALL                             R1 0 0
        3 GETUPVAL                         R1 0
        4 JUMPIFNOT                        R1 ; [+21]
        5 JUMPIFNOT                        R0 ; [+20]
        6 GETUPVAL                         R3 0
        7 NAMECALL                         R1 R0 K2 ["IsDescendantOf"]
        9 CALL                             R1 2 1
       10 JUMPIFNOT                        R1 ; [+15]
       11 GETUPVAL                         R1 1
       12 MOVE                             R3 R0
       13 NAMECALL                         R1 R1 K3 ["IsValidPartToModify"]
       15 CALL                             R1 2 1
       16 JUMPIFNOT                        R1 ; [+9]
       17 GETUPVAL                         R1 1
       18 GETTABLEKS                       R1 R1 K4 ["cachedParts"]
       20 LOADB                            R2 1
       21 SETTABLE                         R2 R1 R0
       22 GETUPVAL                         R1 1
       23 LOADB                            R2 1
       24 SETTABLEKS                       R2 R1 K5 ["transparencyDirty"]
       26 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["IsValidPartToModify"]
        4 CALL                             R1 2 1
        5 JUMPIFNOT                        R1 ; [+10]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K1 ["cachedParts"]
        9 LOADB                            R2 1
       10 SETTABLE                         R2 R1 R0
       11 GETUPVAL                         R1 0
       12 LOADB                            R2 1
       13 SETTABLEKS                       R2 R1 K2 ["transparencyDirty"]
       15 RETURN                           R0 0
       16 LOADK                            R3 K3 ["Tool"]
       17 NAMECALL                         R1 R0 K4 ["IsA"]
       19 CALL                             R1 2 1
       20 JUMPIFNOT                        R1 ; [+47]
       21 GETUPVAL                         R2 0
       22 GETTABLEKS                       R2 R2 K5 ["toolDescendantAddedConns"]
       24 GETTABLE                         R1 R2 R0
       25 JUMPIFNOT                        R1 ; [+7]
       26 GETUPVAL                         R2 0
       27 GETTABLEKS                       R2 R2 K5 ["toolDescendantAddedConns"]
       29 GETTABLE                         R1 R2 R0
       30 NAMECALL                         R1 R1 K6 ["Disconnect"]
       32 CALL                             R1 1 0
       33 GETUPVAL                         R1 0
       34 GETTABLEKS                       R1 R1 K5 ["toolDescendantAddedConns"]
       36 GETTABLEKS                       R2 R0 K7 ["DescendantAdded"]
       38 NEWCLOSURE                       R4 P0
       39 CAPTURE                          UPVAL U0
       40 NAMECALL                         R2 R2 K8 ["Connect"]
       42 CALL                             R2 2 1
       43 SETTABLE                         R2 R1 R0
       44 GETUPVAL                         R2 0
       45 GETTABLEKS                       R2 R2 K9 ["toolDescendantRemovingConns"]
       47 GETTABLE                         R1 R2 R0
       48 JUMPIFNOT                        R1 ; [+7]
       49 GETUPVAL                         R2 0
       50 GETTABLEKS                       R2 R2 K9 ["toolDescendantRemovingConns"]
       52 GETTABLE                         R1 R2 R0
       53 NAMECALL                         R1 R1 K10 ["disconnect"]
       55 CALL                             R1 1 0
       56 GETUPVAL                         R1 0
       57 GETTABLEKS                       R1 R1 K9 ["toolDescendantRemovingConns"]
       59 GETTABLEKS                       R2 R0 K11 ["DescendantRemoving"]
       61 NEWCLOSURE                       R4 P1
       62 CAPTURE                          UPVAL U1
       63 CAPTURE                          UPVAL U0
       64 NAMECALL                         R2 R2 K8 ["Connect"]
       66 CALL                             R2 2 1
       67 SETTABLE                         R2 R1 R0
       68 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["cachedParts"]
        3 GETTABLE                         R1 R2 R0
        4 JUMPIFNOT                        R1 ; [+8]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["cachedParts"]
        8 LOADNIL                          R2
        9 SETTABLE                         R2 R1 R0
       10 LOADN                            R1 0
       11 SETTABLEKS                       R1 R0 K1 ["LocalTransparencyModifier"]
       13 RETURN                           R0 0

PROTO_9:
        0 NAMECALL                         R2 R0 K0 ["TeardownTransparency"]
        2 CALL                             R2 1 0
        3 GETTABLEKS                       R2 R0 K1 ["descendantAddedConn"]
        5 JUMPIFNOT                        R2 ; [+5]
        6 GETTABLEKS                       R2 R0 K1 ["descendantAddedConn"]
        8 NAMECALL                         R2 R2 K2 ["disconnect"]
       10 CALL                             R2 1 0
       11 GETTABLEKS                       R2 R1 K3 ["DescendantAdded"]
       13 NEWCLOSURE                       R4 P0
       14 CAPTURE                          VAL R0
       15 CAPTURE                          VAL R1
       16 NAMECALL                         R2 R2 K4 ["Connect"]
       18 CALL                             R2 2 1
       19 SETTABLEKS                       R2 R0 K1 ["descendantAddedConn"]
       21 GETTABLEKS                       R2 R0 K5 ["descendantRemovingConn"]
       23 JUMPIFNOT                        R2 ; [+5]
       24 GETTABLEKS                       R2 R0 K5 ["descendantRemovingConn"]
       26 NAMECALL                         R2 R2 K2 ["disconnect"]
       28 CALL                             R2 1 0
       29 GETTABLEKS                       R2 R1 K6 ["DescendantRemoving"]
       31 NEWCLOSURE                       R4 P1
       32 CAPTURE                          VAL R0
       33 NAMECALL                         R2 R2 K7 ["connect"]
       35 CALL                             R2 2 1
       36 SETTABLEKS                       R2 R0 K5 ["descendantRemovingConn"]
       38 MOVE                             R4 R1
       39 NAMECALL                         R2 R0 K8 ["CachePartsRecursive"]
       41 CALL                             R2 2 0
       42 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R2 R0 K0 ["enabled"]
        2 JUMPIFEQ                         R2 R1 ; [+3]
        4 SETTABLEKS                       R1 R0 K0 ["enabled"]
        6 RETURN                           R0 0

PROTO_11:
        0 LOADNIL                          R2
        1 JUMPIFNOT                        R1 ; [+7]
        2 LOADK                            R5 K0 ["Humanoid"]
        3 NAMECALL                         R3 R1 K1 ["IsA"]
        5 CALL                             R3 2 1
        6 JUMPIFNOT                        R3 ; [+2]
        7 GETTABLEKS                       R2 R1 K2 ["Parent"]
        9 JUMPIFNOT                        R1 ; [+12]
       10 LOADK                            R5 K3 ["VehicleSeat"]
       11 NAMECALL                         R3 R1 K1 ["IsA"]
       13 CALL                             R3 2 1
       14 JUMPIFNOT                        R3 ; [+7]
       15 GETTABLEKS                       R3 R1 K4 ["Occupant"]
       17 JUMPIFNOT                        R3 ; [+4]
       18 GETTABLEKS                       R3 R1 K4 ["Occupant"]
       20 GETTABLEKS                       R2 R3 K2 ["Parent"]
       22 JUMPIFNOT                        R2 ; [+5]
       23 MOVE                             R5 R2
       24 NAMECALL                         R3 R0 K5 ["SetupTransparency"]
       26 CALL                             R3 2 0
       27 RETURN                           R0 0
       28 NAMECALL                         R3 R0 K6 ["TeardownTransparency"]
       30 CALL                             R3 1 0
       31 RETURN                           R0 0

PROTO_12:
        0 GETIMPORT                        R2 K1 [workspace]
        2 GETTABLEKS                       R2 R2 K2 ["CurrentCamera"]
        4 JUMPIFNOT                        R2 ; [+147]
        5 GETTABLEKS                       R3 R0 K3 ["enabled"]
        7 JUMPIFNOT                        R3 ; [+144]
        8 GETTABLEKS                       R4 R2 K4 ["Focus"]
       10 GETTABLEKS                       R4 R4 K5 ["Position"]
       12 GETTABLEKS                       R5 R2 K6 ["CoordinateFrame"]
       14 GETTABLEKS                       R5 R5 K5 ["Position"]
       16 SUB                              R3 R4 R5
       17 GETTABLEKS                       R3 R3 K7 ["magnitude"]
       19 LOADN                            R5 2
       20 JUMPIFNOTLT                      R3 R5 ; [+5]
       22 SUBK                             R6 R3 K10 [0.5]
       23 DIVK                             R5 R6 K9 [1.5]
       24 SUBRK                            R4 K8 [1] R5
       25 JUMPIF                           R4 ; [+1]
       26 LOADN                            R4 0
       27 LOADK                            R5 K10 [0.5]
       28 JUMPIFNOTLT                      R4 R5 ; [+2]
       30 LOADN                            R4 0
       31 GETTABLEKS                       R5 R0 K11 ["lastTransparency"]
       33 JUMPIFNOT                        R5 ; [+26]
       34 LOADN                            R5 1
       35 JUMPIFNOTLT                      R4 R5 ; [+24]
       37 GETTABLEKS                       R5 R0 K11 ["lastTransparency"]
       39 LOADK                            R6 K12 [0.95]
       40 JUMPIFNOTLT                      R5 R6 ; [+19]
       42 GETTABLEKS                       R6 R0 K11 ["lastTransparency"]
       44 SUB                              R5 R4 R6
       45 LOADK                            R7 K13 [2.8]
       46 MUL                              R6 R7 R1
       47 MINUS                            R9 R6
       48 FASTCALL3                        MATH_CLAMP R5 R9 R6
       50 MOVE                             R8 R5
       51 MOVE                             R10 R6
       52 GETIMPORT                        R7 K16 [math.clamp]
       54 CALL                             R7 3 1
       55 MOVE                             R5 R7
       56 GETTABLEKS                       R7 R0 K11 ["lastTransparency"]
       58 ADD                              R4 R7 R5
       59 JUMP                             ; [+3]
       60 LOADB                            R5 1
       61 SETTABLEKS                       R5 R0 K17 ["transparencyDirty"]
       63 GETUPVAL                         R6 0
       64 GETTABLEKS                       R6 R6 K18 ["Round"]
       66 MOVE                             R7 R4
       67 LOADN                            R8 2
       68 CALL                             R6 2 1
       69 LOADN                            R7 0
       70 LOADN                            R8 1
       71 FASTCALL                         MATH_CLAMP ; [+2]
       72 GETIMPORT                        R5 K16 [math.clamp]
       74 CALL                             R5 3 1
       75 MOVE                             R4 R5
       76 GETTABLEKS                       R5 R0 K17 ["transparencyDirty"]
       78 JUMPIF                           R5 ; [+4]
       79 GETTABLEKS                       R5 R0 K11 ["lastTransparency"]
       81 JUMPIFEQ                         R5 R4 ; [+70]
       83 GETIMPORT                        R5 K20 [pairs]
       85 GETTABLEKS                       R6 R0 K21 ["cachedParts"]
       87 CALL                             R5 1 3
       88 FORGPREP_NEXT                    R5
       89 GETUPVAL                         R10 1
       90 GETTABLEKS                       R10 R10 K22 ["VREnabled"]
       92 JUMPIFNOT                        R10 ; [+50]
       93 GETUPVAL                         R10 1
       94 GETTABLEKS                       R10 R10 K23 ["AvatarGestures"]
       96 JUMPIFNOT                        R10 ; [+46]
       97 NEWTABLE                         R10 8 0
       99 GETIMPORT                        R11 K27 [Enum.AccessoryType.Hat]
      101 LOADB                            R12 1
      102 SETTABLE                         R12 R10 R11
      103 GETIMPORT                        R11 K29 [Enum.AccessoryType.Hair]
      105 LOADB                            R12 1
      106 SETTABLE                         R12 R10 R11
      107 GETIMPORT                        R11 K31 [Enum.AccessoryType.Face]
      109 LOADB                            R12 1
      110 SETTABLE                         R12 R10 R11
      111 GETIMPORT                        R11 K33 [Enum.AccessoryType.Eyebrow]
      113 LOADB                            R12 1
      114 SETTABLE                         R12 R10 R11
      115 GETIMPORT                        R11 K35 [Enum.AccessoryType.Eyelash]
      117 LOADB                            R12 1
      118 SETTABLE                         R12 R10 R11
      119 GETTABLEKS                       R11 R8 K36 ["Parent"]
      121 LOADK                            R13 K37 ["Accessory"]
      122 NAMECALL                         R11 R11 K38 ["IsA"]
      124 CALL                             R11 2 1
      125 JUMPIFNOT                        R11 ; [+6]
      126 GETTABLEKS                       R12 R8 K36 ["Parent"]
      128 GETTABLEKS                       R12 R12 K25 ["AccessoryType"]
      130 GETTABLE                         R11 R10 R12
      131 JUMPIF                           R11 ; [+4]
      132 GETTABLEKS                       R11 R8 K39 ["Name"]
      134 JUMPIFNOTEQKS                    R11 K40 ["Head"] ; [+4]
      136 SETTABLEKS                       R4 R8 K41 ["LocalTransparencyModifier"]
      138 JUMP                             ; [+6]
      139 LOADN                            R11 0
      140 SETTABLEKS                       R11 R8 K41 ["LocalTransparencyModifier"]
      142 JUMP                             ; [+2]
      143 SETTABLEKS                       R4 R8 K41 ["LocalTransparencyModifier"]
      145 FORGLOOP                         R5 2 ; [-57]
      147 LOADB                            R5 0
      148 SETTABLEKS                       R5 R0 K17 ["transparencyDirty"]
      150 SETTABLEKS                       R4 R0 K11 ["lastTransparency"]
      152 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["VRService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 NEWTABLE                         R1 0 9
        9 LOADK                            R2 K4 ["BasePart"]
       10 LOADK                            R3 K5 ["Decal"]
       11 LOADK                            R4 K6 ["Beam"]
       12 LOADK                            R5 K7 ["ParticleEmitter"]
       13 LOADK                            R6 K8 ["Trail"]
       14 LOADK                            R7 K9 ["Fire"]
       15 LOADK                            R8 K10 ["Smoke"]
       16 LOADK                            R9 K11 ["Sparkles"]
       17 LOADK                            R10 K12 ["Explosion"]
       18 SETLIST                          R1 R2 9 [1]
       20 GETIMPORT                        R2 K14 [require]
       22 GETIMPORT                        R3 K16 [script]
       24 GETTABLEKS                       R3 R3 K17 ["Parent"]
       26 LOADK                            R5 K18 ["CameraUtils"]
       27 NAMECALL                         R3 R3 K19 ["WaitForChild"]
       29 CALL                             R3 2 -1
       30 CALL                             R2 -1 1
       31 NEWTABLE                         R3 16 0
       33 SETTABLEKS                       R3 R3 K20 ["__index"]
       35 DUPCLOSURE                       R4 K21 [PROTO_0]
       36 CAPTURE                          VAL R3
       37 SETTABLEKS                       R4 R3 K22 ["new"]
       39 DUPCLOSURE                       R4 K23 [PROTO_1]
       40 SETTABLEKS                       R4 R3 K24 ["HasToolAncestor"]
       42 DUPCLOSURE                       R4 K25 [PROTO_2]
       43 CAPTURE                          VAL R1
       44 SETTABLEKS                       R4 R3 K26 ["IsValidPartToModify"]
       46 DUPCLOSURE                       R4 K27 [PROTO_3]
       47 SETTABLEKS                       R4 R3 K28 ["CachePartsRecursive"]
       49 DUPCLOSURE                       R4 K29 [PROTO_4]
       50 SETTABLEKS                       R4 R3 K30 ["TeardownTransparency"]
       52 DUPCLOSURE                       R4 K31 [PROTO_9]
       53 SETTABLEKS                       R4 R3 K32 ["SetupTransparency"]
       55 DUPCLOSURE                       R4 K33 [PROTO_10]
       56 SETTABLEKS                       R4 R3 K34 ["Enable"]
       58 DUPCLOSURE                       R4 K35 [PROTO_11]
       59 SETTABLEKS                       R4 R3 K36 ["SetSubject"]
       61 DUPCLOSURE                       R4 K37 [PROTO_12]
       62 CAPTURE                          VAL R2
       63 CAPTURE                          VAL R0
       64 SETTABLEKS                       R4 R3 K38 ["Update"]
       66 RETURN                           R3 1
