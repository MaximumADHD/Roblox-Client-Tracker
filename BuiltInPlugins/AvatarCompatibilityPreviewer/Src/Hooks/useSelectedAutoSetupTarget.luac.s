PROTO_0:
        0 GETIMPORT                        R0 K2 [Instance.fromExisting]
        2 GETUPVAL                         R1 1
        3 CALL                             R0 1 1
        4 SETUPVAL                         R0 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Terrain"]
        3 JUMPIFEQ                         R0 R1 ; [+4]
        5 GETUPVAL                         R1 0
        6 JUMPIFNOTEQ                      R0 R1 ; [+3]
        8 LOADNIL                          R1
        9 RETURN                           R1 1
       10 GETTABLEKS                       R1 R0 K1 ["Archivable"]
       12 JUMPIF                           R1 ; [+2]
       13 LOADNIL                          R1
       14 RETURN                           R1 1
       15 LOADNIL                          R1
       16 GETIMPORT                        R2 K3 [pcall]
       18 NEWCLOSURE                       R3 P0
       19 CAPTURE                          REF R1
       20 CAPTURE                          VAL R0
       21 CALL                             R2 1 0
       22 JUMPIFNOTEQKNIL                  R1 ; [+4]
       24 LOADNIL                          R2
       25 CLOSEUPVALS                      R1
       26 RETURN                           R2 1
       27 NAMECALL                         R2 R0 K4 ["GetChildren"]
       29 CALL                             R2 1 3
       30 FORGPREP                         R2
       31 LOADK                            R9 K5 ["Accessory"]
       32 NAMECALL                         R7 R6 K6 ["IsA"]
       34 CALL                             R7 2 1
       35 JUMPIF                           R7 ; [+7]
       36 GETUPVAL                         R7 1
       37 MOVE                             R8 R6
       38 CALL                             R7 1 1
       39 JUMPIFEQKNIL                     R7 ; [+3]
       41 SETTABLEKS                       R1 R7 K7 ["Parent"]
       43 FORGLOOP                         R2 2 ; [-13]
       45 LOADK                            R4 K8 ["BasePart"]
       46 NAMECALL                         R2 R0 K6 ["IsA"]
       48 CALL                             R2 2 1
       49 JUMPIF                           R2 ; [+5]
       50 LOADK                            R4 K9 ["Model"]
       51 NAMECALL                         R2 R0 K6 ["IsA"]
       53 CALL                             R2 2 1
       54 JUMPIFNOT                        R2 ; [+13]
       55 GETIMPORT                        R2 K12 [Instance.new]
       57 LOADK                            R3 K13 ["ObjectValue"]
       58 CALL                             R2 1 1
       59 GETUPVAL                         R3 2
       60 GETTABLEKS                       R3 R3 K14 ["ORIGINAL_INSTANCE_VALUE_NAME"]
       62 SETTABLEKS                       R3 R2 K15 ["Name"]
       64 SETTABLEKS                       R0 R2 K16 ["Value"]
       66 SETTABLEKS                       R1 R2 K7 ["Parent"]
       68 LOADK                            R4 K9 ["Model"]
       69 NAMECALL                         R2 R0 K6 ["IsA"]
       71 CALL                             R2 2 1
       72 JUMPIFNOT                        R2 ; [+32]
       73 GETTABLEKS                       R2 R0 K17 ["PrimaryPart"]
       75 JUMPIFEQKNIL                     R2 ; [+29]
       77 LOADNIL                          R3
       78 NAMECALL                         R4 R1 K18 ["GetDescendants"]
       80 CALL                             R4 1 3
       81 FORGPREP                         R4
       82 GETUPVAL                         R11 2
       83 GETTABLEKS                       R11 R11 K14 ["ORIGINAL_INSTANCE_VALUE_NAME"]
       85 NAMECALL                         R9 R8 K19 ["FindFirstChild"]
       87 CALL                             R9 2 1
       88 JUMPIFEQKNIL                     R9 ; [+12]
       90 LOADK                            R12 K13 ["ObjectValue"]
       91 NAMECALL                         R10 R9 K6 ["IsA"]
       93 CALL                             R10 2 1
       94 JUMPIFNOT                        R10 ; [+6]
       95 GETTABLEKS                       R10 R9 K16 ["Value"]
       97 JUMPIFNOTEQ                      R10 R2 ; [+3]
       99 MOVE                             R3 R8
      100 JUMP                             ; [+2]
      101 FORGLOOP                         R4 2 ; [-20]
      103 SETTABLEKS                       R3 R1 K17 ["PrimaryPart"]
      105 GETUPVAL                         R2 3
      106 MOVE                             R3 R1
      107 CALL                             R2 1 0
      108 CLOSEUPVALS                      R1
      109 RETURN                           R1 1

PROTO_2:
        0 LOADNIL                          R3
        1 GETTABLEKS                       R4 R0 K0 ["PrimaryPart"]
        3 JUMPIFEQKNIL                     R4 ; [+3]
        5 MOVE                             R3 R0
        6 JUMP                             ; [+26]
        7 LOADK                            R6 K1 ["BasePart"]
        8 NAMECALL                         R4 R0 K2 ["FindFirstChildWhichIsA"]
       10 CALL                             R4 2 1
       11 JUMPIFNOTEQKNIL                  R4 ; [+14]
       13 NAMECALL                         R5 R0 K3 ["GetDescendants"]
       15 CALL                             R5 1 3
       16 FORGPREP                         R5
       17 LOADK                            R12 K1 ["BasePart"]
       18 NAMECALL                         R10 R9 K4 ["IsA"]
       20 CALL                             R10 2 1
       21 JUMPIFNOT                        R10 ; [+2]
       22 MOVE                             R4 R9
       23 JUMP                             ; [+2]
       24 FORGLOOP                         R5 2 ; [-8]
       26 JUMPIFNOTEQKNIL                  R4 ; [+3]
       28 LOADNIL                          R5
       29 RETURN                           R5 1
       30 SETTABLEKS                       R4 R0 K0 ["PrimaryPart"]
       32 MOVE                             R3 R0
       33 DUPTABLE                         R4 K9 [{"model", "accessories", "intendedName", "lastFilteredSelection"}]
       34 SETTABLEKS                       R3 R4 K5 ["model"]
       36 SETTABLEKS                       R1 R4 K6 ["accessories"]
       38 GETTABLEKS                       R5 R0 K10 ["Name"]
       40 SETTABLEKS                       R5 R4 K7 ["intendedName"]
       42 SETTABLEKS                       R2 R4 K8 ["lastFilteredSelection"]
       44 RETURN                           R4 1

PROTO_3:
        0 LOADK                            R4 K0 ["Accessory"]
        1 NAMECALL                         R2 R1 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 JUMPIF                           R2 ; [+5]
        5 LOADK                            R4 K0 ["Accessory"]
        6 NAMECALL                         R2 R1 K2 ["FindFirstAncestorWhichIsA"]
        8 CALL                             R2 2 1
        9 JUMPIFNOT                        R2 ; [+2]
       10 LOADB                            R2 1
       11 RETURN                           R2 1
       12 JUMPIFEQKNIL                     R0 ; [+8]
       14 LOADK                            R4 K3 ["FaceControls"]
       15 NAMECALL                         R2 R1 K4 ["FindFirstChildWhichIsA"]
       17 CALL                             R2 2 1
       18 JUMPIFNOT                        R2 ; [+2]
       19 LOADB                            R2 1
       20 RETURN                           R2 1
       21 GETUPVAL                         R4 0
       22 NAMECALL                         R2 R1 K5 ["IsDescendantOf"]
       24 CALL                             R2 2 1
       25 JUMPIF                           R2 ; [+2]
       26 LOADB                            R2 1
       27 RETURN                           R2 1
       28 JUMPIFNOTEQKNIL                  R0 ; [+3]
       30 LOADB                            R2 0
       31 RETURN                           R2 1
       32 GETTABLEKS                       R2 R0 K6 ["WorldModel"]
       34 MOVE                             R5 R2
       35 NAMECALL                         R3 R1 K5 ["IsDescendantOf"]
       37 CALL                             R3 2 1
       38 JUMPIFNOT                        R3 ; [+2]
       39 LOADB                            R3 1
       40 RETURN                           R3 1
       41 LOADB                            R3 0
       42 RETURN                           R3 1

PROTO_4:
        0 NEWTABLE                         R1 0 0
        2 NAMECALL                         R2 R0 K0 ["GetDescendants"]
        4 CALL                             R2 1 3
        5 FORGPREP                         R2
        6 LOADK                            R9 K1 ["Accessory"]
        7 NAMECALL                         R7 R6 K2 ["IsA"]
        9 CALL                             R7 2 1
       10 JUMPIF                           R7 ; [+10]
       11 LOADK                            R9 K3 ["BodyColors"]
       12 NAMECALL                         R7 R6 K2 ["IsA"]
       14 CALL                             R7 2 1
       15 JUMPIF                           R7 ; [+5]
       16 LOADK                            R9 K4 ["Clothing"]
       17 NAMECALL                         R7 R6 K2 ["IsA"]
       19 CALL                             R7 2 1
       20 JUMPIFNOT                        R7 ; [+12]
       21 GETUPVAL                         R7 0
       22 MOVE                             R8 R6
       23 CALL                             R7 1 1
       24 JUMPIFEQKNIL                     R7 ; [+8]
       26 FASTCALL2                        TABLE_INSERT R1 R7 ; [+5]
       28 MOVE                             R9 R1
       29 MOVE                             R10 R7
       30 GETIMPORT                        R8 K7 [table.insert]
       32 CALL                             R8 2 0
       33 FORGLOOP                         R2 2 ; [-28]
       35 RETURN                           R1 1

PROTO_5:
        0 NEWTABLE                         R1 0 0
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R3 R0
        5 LOADNIL                          R4
        6 LOADNIL                          R5
        7 FORGPREP                         R3
        8 GETTABLE                         R8 R2 R7
        9 JUMPIF                           R8 ; [+17]
       10 LOADB                            R8 1
       11 SETTABLE                         R8 R1 R7
       12 LOADB                            R8 1
       13 SETTABLE                         R8 R2 R7
       14 NAMECALL                         R8 R7 K0 ["GetDescendants"]
       16 CALL                             R8 1 3
       17 FORGPREP                         R8
       18 GETTABLE                         R13 R2 R12
       19 JUMPIFNOT                        R13 ; [+3]
       20 LOADNIL                          R13
       21 SETTABLE                         R13 R1 R12
       22 JUMP                             ; [+2]
       23 LOADB                            R13 1
       24 SETTABLE                         R13 R2 R12
       25 FORGLOOP                         R8 2 ; [-8]
       27 FORGLOOP                         R3 2 ; [-20]
       29 NEWTABLE                         R3 0 0
       31 MOVE                             R4 R1
       32 LOADNIL                          R5
       33 LOADNIL                          R6
       34 FORGPREP                         R4
       35 FASTCALL2                        TABLE_INSERT R3 R7 ; [+5]
       37 MOVE                             R10 R3
       38 MOVE                             R11 R7
       39 GETIMPORT                        R9 K3 [table.insert]
       41 CALL                             R9 2 0
       42 FORGLOOP                         R4 1 ; [-8]
       44 RETURN                           R3 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Get"]
        3 CALL                             R0 1 1
        4 LENGTH                           R1 R0
        5 JUMPIFNOTEQKN                    R1 K1 [0] ; [+3]
        7 LOADNIL                          R1
        8 RETURN                           R1 1
        9 NEWTABLE                         R1 0 0
       11 MOVE                             R2 R0
       12 LOADNIL                          R3
       13 LOADNIL                          R4
       14 FORGPREP                         R2
       15 GETUPVAL                         R7 1
       16 JUMPIFEQ                         R6 R7 ; [+13]
       18 GETUPVAL                         R7 2
       19 GETUPVAL                         R8 3
       20 MOVE                             R9 R6
       21 CALL                             R7 2 1
       22 JUMPIF                           R7 ; [+7]
       23 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       25 MOVE                             R8 R1
       26 MOVE                             R9 R6
       27 GETIMPORT                        R7 K4 [table.insert]
       29 CALL                             R7 2 0
       30 FORGLOOP                         R2 2 ; [-16]
       32 GETUPVAL                         R2 4
       33 MOVE                             R3 R1
       34 CALL                             R2 1 1
       35 RETURN                           R2 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 0
        4 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+4]
        3 NEWTABLE                         R0 0 0
        5 RETURN                           R0 1
        6 NEWTABLE                         R0 0 0
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K0 ["computeHashSerializeContext"]
       11 GETUPVAL                         R2 0
       12 DUPTABLE                         R3 K3 [{"ignoreUniformScaleChanges", "ignoreAccessories"}]
       13 LOADB                            R4 0
       14 SETTABLEKS                       R4 R3 K1 ["ignoreUniformScaleChanges"]
       16 LOADB                            R4 1
       17 SETTABLEKS                       R4 R3 K2 ["ignoreAccessories"]
       19 CALL                             R1 2 1
       20 GETUPVAL                         R2 0
       21 LOADNIL                          R3
       22 LOADNIL                          R4
       23 FORGPREP                         R2
       24 GETUPVAL                         R7 1
       25 GETTABLEKS                       R7 R7 K4 ["hashCharacter"]
       27 MOVE                             R8 R6
       28 MOVE                             R9 R1
       29 CALL                             R7 2 1
       30 FASTCALL2                        TABLE_INSERT R0 R7 ; [+5]
       32 MOVE                             R9 R0
       33 MOVE                             R10 R7
       34 GETIMPORT                        R8 K7 [table.insert]
       36 CALL                             R8 2 0
       37 FORGLOOP                         R2 2 ; [-14]
       39 DUPTABLE                         R2 K10 [{"hash", "lastFilteredSelection"}]
       40 GETUPVAL                         R3 2
       41 GETIMPORT                        R4 K12 [table.concat]
       43 MOVE                             R5 R0
       44 LOADK                            R6 K13 [","]
       45 CALL                             R4 2 -1
       46 CALL                             R3 -1 1
       47 SETTABLEKS                       R3 R2 K8 ["hash"]
       49 GETUPVAL                         R3 0
       50 SETTABLEKS                       R3 R2 K9 ["lastFilteredSelection"]
       52 RETURN                           R2 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 0
        4 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+7]
        3 GETUPVAL                         R0 1
        4 NEWTABLE                         R1 0 0
        6 CALL                             R0 1 0
        7 LOADNIL                          R0
        8 RETURN                           R0 1
        9 GETUPVAL                         R0 2
       10 GETTABLEKS                       R0 R0 K0 ["new"]
       12 CALL                             R0 0 1
       13 GETUPVAL                         R1 0
       14 LOADNIL                          R2
       15 LOADNIL                          R3
       16 FORGPREP                         R1
       17 GETUPVAL                         R8 3
       18 GETTABLEKS                       R8 R8 K1 ["throttleDeferWatchForChanges"]
       20 MOVE                             R9 R5
       21 NEWCLOSURE                       R10 P0
       22 CAPTURE                          UPVAL U1
       23 CAPTURE                          UPVAL U4
       24 CALL                             R8 2 -1
       25 NAMECALL                         R6 R0 K2 ["giveTask"]
       27 CALL                             R6 -1 0
       28 FORGLOOP                         R1 2 ; [-12]
       30 GETUPVAL                         R1 1
       31 GETUPVAL                         R2 4
       32 CALL                             R2 0 -1
       33 CALL                             R1 -1 0
       34 NEWCLOSURE                       R1 P1
       35 CAPTURE                          VAL R0
       36 RETURN                           R1 1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["lastFilteredSelection"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+3]
        5 LOADNIL                          R0
        6 RETURN                           R0 1
        7 GETIMPORT                        R0 K3 [Instance.new]
        9 LOADK                            R1 K4 ["Model"]
       10 CALL                             R0 1 1
       11 LOADK                            R1 K5 ["Rig"]
       12 SETTABLEKS                       R1 R0 K6 ["Name"]
       14 NEWTABLE                         R1 0 0
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R2 R2 K0 ["lastFilteredSelection"]
       19 LOADNIL                          R3
       20 LOADNIL                          R4
       21 FORGPREP                         R2
       22 LOADK                            R9 K7 ["BasePart"]
       23 NAMECALL                         R7 R6 K8 ["IsA"]
       25 CALL                             R7 2 1
       26 JUMPIF                           R7 ; [+10]
       27 LOADK                            R9 K9 ["Folder"]
       28 NAMECALL                         R7 R6 K8 ["IsA"]
       30 CALL                             R7 2 1
       31 JUMPIF                           R7 ; [+5]
       32 LOADK                            R9 K4 ["Model"]
       33 NAMECALL                         R7 R6 K8 ["IsA"]
       35 CALL                             R7 2 1
       36 JUMPIFNOT                        R7 ; [+27]
       37 GETUPVAL                         R7 1
       38 MOVE                             R8 R6
       39 CALL                             R7 1 1
       40 JUMPIFEQKNIL                     R7 ; [+23]
       42 GETUPVAL                         R8 2
       43 MOVE                             R9 R6
       44 CALL                             R8 1 3
       45 FORGPREP                         R8
       46 FASTCALL2                        TABLE_INSERT R1 R12 ; [+5]
       48 MOVE                             R14 R1
       49 MOVE                             R15 R12
       50 GETIMPORT                        R13 K12 [table.insert]
       52 CALL                             R13 2 0
       53 FORGLOOP                         R8 2 ; [-8]
       55 SETTABLEKS                       R0 R7 K13 ["Parent"]
       57 LOADK                            R10 K7 ["BasePart"]
       58 NAMECALL                         R8 R7 K8 ["IsA"]
       60 CALL                             R8 2 1
       61 JUMPIFNOT                        R8 ; [+2]
       62 SETTABLEKS                       R7 R0 K14 ["PrimaryPart"]
       64 FORGLOOP                         R2 2 ; [-43]
       66 GETUPVAL                         R2 3
       67 MOVE                             R3 R0
       68 MOVE                             R4 R1
       69 GETUPVAL                         R5 0
       70 GETTABLEKS                       R5 R5 K0 ["lastFilteredSelection"]
       72 CALL                             R2 3 1
       73 RETURN                           R2 1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 NAMECALL                         R1 R1 K1 ["get"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K2 ["useCallback"]
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          VAL R1
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          VAL R0
       15 CAPTURE                          UPVAL U4
       16 NEWTABLE                         R4 0 2
       18 MOVE                             R5 R1
       19 MOVE                             R6 R0
       20 SETLIST                          R4 R5 2 [1]
       22 CALL                             R2 2 1
       23 GETUPVAL                         R3 1
       24 GETTABLEKS                       R3 R3 K3 ["useState"]
       26 MOVE                             R4 R2
       27 CALL                             R3 1 2
       28 GETUPVAL                         R5 5
       29 GETTABLEKS                       R6 R1 K4 ["SelectionChanged"]
       31 NEWCLOSURE                       R7 P1
       32 CAPTURE                          VAL R4
       33 CAPTURE                          VAL R2
       34 NEWTABLE                         R8 0 2
       36 MOVE                             R9 R2
       37 MOVE                             R10 R1
       38 SETLIST                          R8 R9 2 [1]
       40 CALL                             R5 3 0
       41 GETUPVAL                         R5 1
       42 GETTABLEKS                       R5 R5 K2 ["useCallback"]
       44 NEWCLOSURE                       R6 P2
       45 CAPTURE                          VAL R3
       46 CAPTURE                          UPVAL U6
       47 CAPTURE                          UPVAL U7
       48 NEWTABLE                         R7 0 1
       50 MOVE                             R8 R3
       51 SETLIST                          R7 R8 1 [1]
       53 CALL                             R5 2 1
       54 GETUPVAL                         R6 1
       55 GETTABLEKS                       R6 R6 K3 ["useState"]
       57 MOVE                             R7 R5
       58 CALL                             R6 1 2
       59 GETUPVAL                         R8 1
       60 GETTABLEKS                       R8 R8 K5 ["useEffect"]
       62 NEWCLOSURE                       R9 P3
       63 CAPTURE                          VAL R3
       64 CAPTURE                          VAL R7
       65 CAPTURE                          UPVAL U8
       66 CAPTURE                          UPVAL U9
       67 CAPTURE                          VAL R5
       68 NEWTABLE                         R10 0 1
       70 MOVE                             R11 R5
       71 SETLIST                          R10 R11 1 [1]
       73 CALL                             R8 2 0
       74 GETUPVAL                         R8 1
       75 GETTABLEKS                       R8 R8 K6 ["useMemo"]
       77 NEWCLOSURE                       R9 P4
       78 CAPTURE                          VAL R6
       79 CAPTURE                          UPVAL U10
       80 CAPTURE                          UPVAL U11
       81 CAPTURE                          UPVAL U12
       82 NEWTABLE                         R10 0 1
       84 GETTABLEKS                       R11 R6 K7 ["hash"]
       86 SETLIST                          R10 R11 1 [1]
       88 CALL                             R8 2 1
       89 JUMPIFNOTEQKNIL                  R8 ; [+2]
       91 LOADB                            R9 0 +1
       92 LOADB                            R9 1
       93 RETURN                           R8 2

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
       15 GETTABLEKS                       R3 R1 K10 ["Src"]
       17 GETTABLEKS                       R3 R3 K11 ["Types"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K12 ["Packages"]
       24 GETTABLEKS                       R4 R4 K13 ["React"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R1 K10 ["Src"]
       31 GETTABLEKS                       R5 R5 K14 ["Util"]
       33 GETTABLEKS                       R5 R5 K15 ["CharacterHashUtils"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K9 [require]
       38 GETTABLEKS                       R6 R1 K10 ["Src"]
       40 GETTABLEKS                       R6 R6 K14 ["Util"]
       42 GETTABLEKS                       R6 R6 K16 ["Constants"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K9 [require]
       47 GETTABLEKS                       R7 R1 K10 ["Src"]
       49 GETTABLEKS                       R7 R7 K14 ["Util"]
       51 GETTABLEKS                       R7 R7 K17 ["DataModelUtils"]
       53 CALL                             R6 1 1
       54 GETIMPORT                        R7 K9 [require]
       56 GETTABLEKS                       R8 R1 K10 ["Src"]
       58 GETTABLEKS                       R8 R8 K14 ["Util"]
       60 GETTABLEKS                       R8 R8 K18 ["Maid"]
       62 CALL                             R7 1 1
       63 GETIMPORT                        R8 K9 [require]
       65 GETTABLEKS                       R9 R1 K10 ["Src"]
       67 GETTABLEKS                       R9 R9 K14 ["Util"]
       69 GETTABLEKS                       R9 R9 K19 ["SelectionWrapper"]
       71 CALL                             R8 1 1
       72 GETIMPORT                        R9 K9 [require]
       74 GETTABLEKS                       R10 R1 K10 ["Src"]
       76 GETTABLEKS                       R10 R10 K14 ["Util"]
       78 GETTABLEKS                       R10 R10 K20 ["sanitizeModel"]
       80 CALL                             R9 1 1
       81 GETIMPORT                        R10 K9 [require]
       83 GETTABLEKS                       R12 R1 K10 ["Src"]
       85 GETTABLEKS                       R12 R12 K14 ["Util"]
       87 GETTABLEKS                       R11 R12 K21 ["sha256.global"]
       89 CALL                             R10 1 1
       90 GETIMPORT                        R11 K9 [require]
       92 GETTABLEKS                       R12 R1 K10 ["Src"]
       94 GETTABLEKS                       R12 R12 K22 ["Hooks"]
       96 GETTABLEKS                       R12 R12 K23 ["useEventConnection"]
       98 CALL                             R11 1 1
       99 DUPCLOSURE                       R12 K24 [PROTO_1]
      100 CAPTURE                          VAL R0
      101 CAPTURE                          VAL R12
      102 CAPTURE                          VAL R5
      103 CAPTURE                          VAL R9
      104 DUPCLOSURE                       R13 K25 [PROTO_2]
      105 DUPCLOSURE                       R14 K26 [PROTO_3]
      106 CAPTURE                          VAL R0
      107 DUPCLOSURE                       R15 K27 [PROTO_4]
      108 CAPTURE                          VAL R12
      109 DUPCLOSURE                       R16 K28 [PROTO_5]
      110 DUPCLOSURE                       R17 K29 [PROTO_13]
      111 CAPTURE                          VAL R8
      112 CAPTURE                          VAL R3
      113 CAPTURE                          VAL R0
      114 CAPTURE                          VAL R14
      115 CAPTURE                          VAL R16
      116 CAPTURE                          VAL R11
      117 CAPTURE                          VAL R4
      118 CAPTURE                          VAL R10
      119 CAPTURE                          VAL R7
      120 CAPTURE                          VAL R6
      121 CAPTURE                          VAL R12
      122 CAPTURE                          VAL R15
      123 CAPTURE                          VAL R13
      124 RETURN                           R17 1
