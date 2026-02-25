PROTO_0:
        0 SETTABLEKS                       R1 R0 K0 ["Depth"]
        2 GETIMPORT                        R2 K2 [pairs]
        4 GETTABLEKS                       R3 R0 K3 ["Components"]
        6 JUMPIF                           R3 ; [+2]
        7 NEWTABLE                         R3 0 0
        9 CALL                             R2 1 3
       10 FORGPREP_NEXT                    R2
       11 GETUPVAL                         R7 0
       12 MOVE                             R8 R6
       13 ADDK                             R9 R1 K4 [1]
       14 CALL                             R7 2 0
       15 FORGLOOP                         R2 2 ; [-5]
       17 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["Dictionary"]
        3 GETTABLEKS                       R3 R4 K1 ["keys"]
        5 MOVE                             R4 R0
        6 CALL                             R3 1 1
        7 GETIMPORT                        R4 K4 [table.sort]
        9 MOVE                             R5 R3
       10 CALL                             R4 1 0
       11 GETIMPORT                        R4 K6 [ipairs]
       13 MOVE                             R5 R3
       14 CALL                             R4 1 3
       15 FORGPREP_INEXT                   R4
       16 GETTABLE                         R9 R0 R8
       17 MOVE                             R10 R1
       18 MOVE                             R11 R8
       19 MOVE                             R12 R2
       20 CALL                             R10 2 1
       21 JUMPIFNOT                        R10 ; [+6]
       22 GETUPVAL                         R11 1
       23 MOVE                             R12 R9
       24 MOVE                             R13 R1
       25 ADDK                             R14 R2 K7 [1]
       26 CALL                             R11 3 0
       27 JUMP                             ; [+5]
       28 GETUPVAL                         R11 1
       29 MOVE                             R12 R9
       30 MOVE                             R13 R1
       31 MOVE                             R14 R2
       32 CALL                             R11 3 0
       33 FORGLOOP                         R4 2 [inext] ; [-18]
       35 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R2 K1 [ipairs]
        2 GETUPVAL                         R3 0
        3 CALL                             R2 1 3
        4 FORGPREP_INEXT                   R2
        5 GETTABLEKS                       R7 R6 K2 ["Name"]
        7 JUMPIFNOTEQ                      R7 R0 ; [+14]
        9 GETUPVAL                         R7 1
       10 MOVE                             R8 R6
       11 MOVE                             R9 R1
       12 CALL                             R7 2 0
       13 GETUPVAL                         R8 2
       14 FASTCALL2                        TABLE_INSERT R8 R6 ; [+4]
       16 MOVE                             R9 R6
       17 GETIMPORT                        R7 K5 [table.insert]
       19 CALL                             R7 2 0
       20 LOADB                            R7 1
       21 RETURN                           R7 1
       22 FORGLOOP                         R2 2 [inext] ; [-18]
       24 LOADB                            R2 0
       25 RETURN                           R2 1

PROTO_3:
        0 NEWTABLE                         R2 0 0
        2 GETUPVAL                         R3 0
        3 MOVE                             R4 R1
        4 NEWCLOSURE                       R5 P0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          VAL R2
        8 LOADN                            R6 0
        9 CALL                             R3 3 0
       10 RETURN                           R2 1

PROTO_4:
        0 GETTABLEKS                       R3 R0 K0 ["Name"]
        2 GETTABLEKS                       R4 R1 K0 ["Name"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_5:
        0 GETIMPORT                        R1 K2 [table.sort]
        2 MOVE                             R2 R0
        3 DUPCLOSURE                       R3 K3 [PROTO_4]
        4 CALL                             R1 2 0
        5 GETIMPORT                        R1 K5 [ipairs]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 3
        9 FORGPREP_INEXT                   R1
       10 GETUPVAL                         R6 0
       11 MOVE                             R7 R5
       12 LOADN                            R8 0
       13 CALL                             R6 2 0
       14 FORGLOOP                         R1 2 [inext] ; [-5]
       16 RETURN                           R0 1

PROTO_6:
        0 MOVE                             R2 R1
        1 JUMPIF                           R2 ; [+3]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K0 ["COMPONENT_PATH_BASE_SCALE"]
        5 MOVE                             R1 R2
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R2 R3 K1 ["getSortedComponents"]
        9 MOVE                             R3 R0
       10 CALL                             R2 1 1
       11 JUMPIFNOT                        R2 ; [+28]
       12 MOVE                             R3 R2
       13 LOADNIL                          R4
       14 LOADNIL                          R5
       15 FORGPREP                         R3
       16 GETTABLEKS                       R9 R0 K2 ["Components"]
       18 GETTABLE                         R8 R9 R7
       19 JUMPIFNOT                        R8 ; [+18]
       20 GETTABLEKS                       R9 R0 K2 ["Components"]
       22 GETTABLE                         R8 R9 R7
       23 GETTABLEKS                       R10 R0 K3 ["Index"]
       25 MUL                              R11 R6 R1
       26 ADD                              R9 R10 R11
       27 SETTABLEKS                       R9 R8 K3 ["Index"]
       29 GETUPVAL                         R8 2
       30 GETTABLEKS                       R10 R0 K2 ["Components"]
       32 GETTABLE                         R9 R10 R7
       33 GETUPVAL                         R12 0
       34 GETTABLEKS                       R11 R12 K0 ["COMPONENT_PATH_BASE_SCALE"]
       36 MUL                              R10 R1 R11
       37 CALL                             R8 2 0
       38 FORGLOOP                         R3 2 ; [-23]
       40 RETURN                           R0 0

PROTO_7:
        0 NAMECALL                         R2 R0 K0 ["getState"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R1 R2 K1 ["Status"]
        5 GETTABLEKS                       R2 R1 K2 ["RootInstance"]
        7 LOADNIL                          R3
        8 NEWTABLE                         R4 0 0
       10 JUMPIFNOT                        R2 ; [+62]
       11 FASTCALL1                        TYPEOF R2 ; [+3]
       12 MOVE                             R6 R2
       13 GETIMPORT                        R5 K4 [typeof]
       15 CALL                             R5 1 1
       16 JUMPIFNOTEQKS                    R5 K5 ["Instance"] ; [+56]
       18 GETTABLEKS                       R5 R2 K6 ["ClassName"]
       20 JUMPIFNOTEQKS                    R5 K7 ["Model"] ; [+52]
       22 LOADK                            R7 K8 ["Humanoid"]
       23 NAMECALL                         R5 R2 K9 ["FindFirstChildOfClass"]
       25 CALL                             R5 2 1
       26 JUMPIF                           R5 ; [+5]
       27 LOADK                            R7 K10 ["AnimationController"]
       28 NAMECALL                         R5 R2 K9 ["FindFirstChildOfClass"]
       30 CALL                             R5 2 1
       31 JUMPIFNOT                        R5 ; [+41]
       32 GETUPVAL                         R6 0
       33 GETTABLEKS                       R5 R6 K11 ["buildRigHierarchy"]
       35 MOVE                             R6 R2
       36 CALL                             R5 1 1
       37 GETUPVAL                         R7 0
       38 GETTABLEKS                       R6 R7 K12 ["getUnusedRigTracks"]
       40 MOVE                             R7 R2
       41 GETUPVAL                         R8 1
       42 CALL                             R6 2 1
       43 MOVE                             R4 R6
       44 GETUPVAL                         R6 1
       45 NEWTABLE                         R7 0 0
       47 GETUPVAL                         R8 2
       48 MOVE                             R9 R5
       49 NEWCLOSURE                       R10 P0
       50 CAPTURE                          VAL R6
       51 CAPTURE                          UPVAL U3
       52 CAPTURE                          VAL R7
       53 LOADN                            R11 0
       54 CALL                             R8 3 0
       55 MOVE                             R3 R7
       56 GETUPVAL                         R7 4
       57 GETTABLEKS                       R6 R7 K13 ["filterFacsTracks"]
       59 GETUPVAL                         R7 1
       60 CALL                             R6 1 1
       61 GETUPVAL                         R9 5
       62 GETTABLEKS                       R8 R9 K14 ["List"]
       64 GETTABLEKS                       R7 R8 K15 ["join"]
       66 MOVE                             R8 R3
       67 GETUPVAL                         R9 6
       68 MOVE                             R10 R6
       69 CALL                             R9 1 1
       70 CALL                             R7 2 1
       71 MOVE                             R3 R7
       72 JUMP                             ; [+4]
       73 GETUPVAL                         R5 6
       74 GETUPVAL                         R6 1
       75 CALL                             R5 1 1
       76 MOVE                             R3 R5
       77 GETUPVAL                         R6 4
       78 GETTABLEKS                       R5 R6 K16 ["getUnusedFacs"]
       80 GETUPVAL                         R6 1
       81 CALL                             R5 1 1
       82 GETUPVAL                         R6 7
       83 CALL                             R6 0 1
       84 JUMPIFNOT                        R6 ; [+15]
       85 MOVE                             R6 R3
       86 LOADNIL                          R7
       87 LOADNIL                          R8
       88 FORGPREP                         R6
       89 SETTABLEKS                       R9 R10 K17 ["Index"]
       91 DUPCLOSURE                       R11 K18 [PROTO_6]
       92 CAPTURE                          UPVAL U8
       93 CAPTURE                          UPVAL U9
       94 CAPTURE                          VAL R11
       95 MOVE                             R12 R11
       96 MOVE                             R13 R10
       97 CALL                             R12 1 0
       98 FORGLOOP                         R6 2 ; [-10]
      100 GETUPVAL                         R8 10
      101 MOVE                             R9 R3
      102 MOVE                             R10 R4
      103 MOVE                             R11 R5
      104 CALL                             R8 3 -1
      105 NAMECALL                         R6 R0 K19 ["dispatch"]
      107 CALL                             R6 -1 0
      108 RETURN                           R0 0

PROTO_8:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U5
        8 CAPTURE                          UPVAL U6
        9 CAPTURE                          UPVAL U7
       10 CAPTURE                          UPVAL U8
       11 CAPTURE                          UPVAL U9
       12 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Cryo"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Src"]
       18 GETTABLEKS                       R4 R5 K9 ["Actions"]
       20 GETTABLEKS                       R3 R4 K10 ["SetTracks"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R4 R0 K8 ["Src"]
       25 GETTABLEKS                       R3 R4 K11 ["Util"]
       27 GETIMPORT                        R4 K5 [require]
       29 GETTABLEKS                       R5 R3 K12 ["Constants"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K5 [require]
       34 GETTABLEKS                       R6 R3 K13 ["FacsUtils"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K5 [require]
       39 GETTABLEKS                       R7 R3 K14 ["RigInfo"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K5 [require]
       44 GETTABLEKS                       R8 R3 K15 ["TrackUtils"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K5 [require]
       49 GETTABLEKS                       R10 R0 K16 ["LuaFlags"]
       51 GETTABLEKS                       R9 R10 K17 ["GetFFlagFixDynamicTrackSelection"]
       53 CALL                             R8 1 1
       54 DUPCLOSURE                       R9 K18 [PROTO_0]
       55 CAPTURE                          VAL R9
       56 DUPCLOSURE                       R10 K19 [PROTO_1]
       57 CAPTURE                          VAL R1
       58 CAPTURE                          VAL R10
       59 DUPCLOSURE                       R11 K20 [PROTO_3]
       60 CAPTURE                          VAL R10
       61 CAPTURE                          VAL R9
       62 DUPCLOSURE                       R12 K21 [PROTO_5]
       63 CAPTURE                          VAL R9
       64 DUPCLOSURE                       R13 K22 [PROTO_8]
       65 CAPTURE                          VAL R6
       66 CAPTURE                          VAL R10
       67 CAPTURE                          VAL R9
       68 CAPTURE                          VAL R5
       69 CAPTURE                          VAL R1
       70 CAPTURE                          VAL R12
       71 CAPTURE                          VAL R8
       72 CAPTURE                          VAL R4
       73 CAPTURE                          VAL R7
       74 CAPTURE                          VAL R2
       75 RETURN                           R13 1
