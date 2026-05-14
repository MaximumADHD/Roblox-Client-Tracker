PROTO_0:
        0 GETUPVAL                         R1 1
        1 GETUPVAL                         R3 2
        2 NAMECALL                         R1 R1 K1 ["GetTextBoundsAsync"]
        4 CALL                             R1 2 1
        5 GETTABLEKS                       R1 R1 K2 ["Y"]
        7 MULK                             R0 R1 K0 [1.2]
        8 SETUPVAL                         R0 0
        9 RETURN                           R0 0

PROTO_1:
        0 MOVE                             R5 R4
        1 JUMPIF                           R5 ; [+10]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R6 R0 K0 ["Contents"]
        5 GETTABLEKS                       R7 R0 K1 ["TaggedUsers"]
        7 MOVE                             R8 R2
        8 CALL                             R5 3 1
        9 JUMPIF                           R5 ; [+2]
       10 GETTABLEKS                       R5 R0 K0 ["Contents"]
       12 JUMPIFNOT                        R3 ; [+6]
       13 LOADN                            R7 0
       14 JUMPIFLT                         R7 R3 ; [+2]
       16 LOADB                            R6 0 +1
       17 LOADB                            R6 1
       18 JUMP                             ; [+7]
       19 GETTABLEKS                       R7 R0 K2 ["ReplyCount"]
       21 LOADN                            R8 0
       22 JUMPIFLT                         R8 R7 ; [+2]
       24 LOADB                            R6 0 +1
       25 LOADB                            R6 1
       26 LOADNIL                          R7
       27 GETIMPORT                        R8 K5 [Instance.new]
       29 LOADK                            R9 K6 ["GetTextBoundsParams"]
       30 CALL                             R8 1 1
       31 SETTABLEKS                       R5 R8 K7 ["Text"]
       33 GETIMPORT                        R9 K10 [Font.fromEnum]
       35 GETIMPORT                        R10 K13 [Enum.Font.SourceSans]
       37 CALL                             R9 1 1
       38 SETTABLEKS                       R9 R8 K8 ["Font"]
       40 LOADN                            R9 18
       41 SETTABLEKS                       R9 R8 K14 ["Size"]
       43 SUBK                             R9 R1 K15 [77]
       44 SETTABLEKS                       R9 R8 K16 ["Width"]
       46 LOADB                            R9 1
       47 SETTABLEKS                       R9 R8 K17 ["RichText"]
       49 GETIMPORT                        R9 K19 [pcall]
       51 NEWCLOSURE                       R10 P0
       52 CAPTURE                          REF R7
       53 CAPTURE                          UPVAL U1
       54 CAPTURE                          VAL R8
       55 CALL                             R9 1 2
       56 JUMPIF                           R9 ; [+16]
       57 GETUPVAL                         R11 1
       58 MOVE                             R13 R5
       59 LOADN                            R14 18
       60 GETIMPORT                        R15 K13 [Enum.Font.SourceSans]
       62 GETIMPORT                        R16 K22 [Vector2.new]
       64 SUBK                             R17 R1 K15 [77]
       65 LOADN                            R18 232
       66 CALL                             R16 2 -1
       67 NAMECALL                         R11 R11 K23 ["GetTextSize"]
       69 CALL                             R11 -1 1
       70 GETTABLEKS                       R11 R11 K24 ["Y"]
       72 MULK                             R7 R11 K20 [1.2]
       73 NAMECALL                         R11 R8 K25 ["Destroy"]
       75 CALL                             R11 1 0
       76 JUMPIFNOT                        R6 ; [+2]
       77 LOADN                            R11 21
       78 JUMP                             ; [+1]
       79 LOADN                            R11 0
       80 LOADN                            R14 68
       81 ADD                              R13 R14 R7
       82 ADD                              R12 R13 R11
       83 CLOSEUPVALS                      R7
       84 RETURN                           R12 1

PROTO_2:
        0 DUPTABLE                         R0 K4 [{"annotationMetadata", "indices", "rowWidth", "didInit"}]
        1 NEWTABLE                         R1 0 0
        3 SETTABLEKS                       R1 R0 K0 ["annotationMetadata"]
        5 NEWTABLE                         R1 0 0
        7 SETTABLEKS                       R1 R0 K1 ["indices"]
        9 LOADN                            R1 0
       10 SETTABLEKS                       R1 R0 K2 ["rowWidth"]
       12 LOADB                            R1 0
       13 SETTABLEKS                       R1 R0 K3 ["didInit"]
       15 GETUPVAL                         R3 0
       16 FASTCALL2                        SETMETATABLE R0 R3 ; [+4]
       18 MOVE                             R2 R0
       19 GETIMPORT                        R1 K6 [setmetatable]
       21 CALL                             R1 2 0
       22 RETURN                           R0 1

PROTO_3:
        0 LOADB                            R4 1
        1 SETTABLEKS                       R4 R0 K0 ["didInit"]
        3 SETTABLEKS                       R2 R0 K1 ["rowWidth"]
        5 NEWTABLE                         R4 0 0
        7 SETTABLEKS                       R4 R0 K2 ["annotationMetadata"]
        9 NEWTABLE                         R4 0 0
       11 SETTABLEKS                       R4 R0 K3 ["indices"]
       13 SETTABLEKS                       R3 R0 K4 ["usernameContext"]
       15 GETIMPORT                        R4 K6 [ipairs]
       17 MOVE                             R5 R1
       18 CALL                             R4 1 3
       19 FORGPREP_INEXT                   R4
       20 GETTABLEKS                       R10 R0 K2 ["annotationMetadata"]
       22 GETTABLEKS                       R11 R8 K7 ["Name"]
       24 GETTABLE                         R9 R10 R11
       25 JUMPIF                           R9 ; [+23]
       26 DUPTABLE                         R9 K10 [{"Annotation", "Height"}]
       27 SETTABLEKS                       R8 R9 K8 ["Annotation"]
       29 GETUPVAL                         R10 0
       30 MOVE                             R11 R8
       31 MOVE                             R12 R2
       32 MOVE                             R13 R3
       33 CALL                             R10 3 1
       34 SETTABLEKS                       R10 R9 K9 ["Height"]
       36 GETTABLEKS                       R10 R0 K2 ["annotationMetadata"]
       38 GETTABLEKS                       R11 R8 K7 ["Name"]
       40 SETTABLE                         R9 R10 R11
       41 GETTABLEKS                       R11 R0 K3 ["indices"]
       43 FASTCALL2                        TABLE_INSERT R11 R9 ; [+4]
       45 MOVE                             R12 R9
       46 GETIMPORT                        R10 K13 [table.insert]
       48 CALL                             R10 2 0
       49 FORGLOOP                         R4 2 [inext] ; [-30]
       51 RETURN                           R0 0

PROTO_4:
        0 LOADN                            R4 0
        1 NEWTABLE                         R5 0 0
        3 GETIMPORT                        R6 K1 [ipairs]
        5 GETTABLEKS                       R7 R0 K2 ["indices"]
        7 CALL                             R6 1 3
        8 FORGPREP_INEXT                   R6
        9 MOVE                             R11 R3
       10 GETTABLEKS                       R12 R10 K3 ["Annotation"]
       12 CALL                             R11 1 1
       13 JUMPIFNOT                        R11 ; [+30]
       14 GETTABLEKS                       R11 R10 K4 ["Height"]
       16 ADD                              R4 R4 R11
       17 SUBK                             R11 R1 K5 [400]
       18 JUMPIFLT                         R4 R11 ; [+25]
       20 ADD                              R12 R1 R2
       21 ADDK                             R11 R12 K5 [400]
       22 JUMPIFLT                         R11 R4 ; [+21]
       24 DUPTABLE                         R13 K7 [{"Annotation", "PositionOffset", "Height"}]
       25 GETTABLEKS                       R14 R10 K3 ["Annotation"]
       27 SETTABLEKS                       R14 R13 K3 ["Annotation"]
       29 GETTABLEKS                       R15 R10 K4 ["Height"]
       31 SUB                              R14 R4 R15
       32 SETTABLEKS                       R14 R13 K6 ["PositionOffset"]
       34 GETTABLEKS                       R14 R10 K4 ["Height"]
       36 SETTABLEKS                       R14 R13 K4 ["Height"]
       38 FASTCALL2                        TABLE_INSERT R5 R13 ; [+4]
       40 MOVE                             R12 R5
       41 GETIMPORT                        R11 K10 [table.insert]
       43 CALL                             R11 2 0
       44 FORGLOOP                         R6 2 [inext] ; [-36]
       46 MOVE                             R6 R5
       47 MOVE                             R7 R4
       48 RETURN                           R6 2

PROTO_5:
        0 GETTABLEKS                       R3 R0 K0 ["Annotation"]
        2 GETTABLEKS                       R3 R3 K1 ["CreationTimeUnix"]
        4 GETTABLEKS                       R4 R1 K0 ["Annotation"]
        6 GETTABLEKS                       R4 R4 K1 ["CreationTimeUnix"]
        8 JUMPIFLT                         R4 R3 ; [+2]
       10 LOADB                            R2 0 +1
       11 LOADB                            R2 1
       12 RETURN                           R2 1

PROTO_6:
        0 GETTABLEKS                       R3 R0 K0 ["annotationMetadata"]
        2 GETTABLEKS                       R4 R1 K1 ["Name"]
        4 GETTABLE                         R2 R3 R4
        5 JUMPIFNOT                        R2 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R2 0
        8 MOVE                             R3 R1
        9 GETTABLEKS                       R4 R0 K2 ["rowWidth"]
       11 GETTABLEKS                       R5 R0 K3 ["usernameContext"]
       13 CALL                             R2 3 1
       14 GETTABLEKS                       R3 R0 K0 ["annotationMetadata"]
       16 GETTABLEKS                       R4 R1 K1 ["Name"]
       18 DUPTABLE                         R5 K7 [{"Annotation", "Height", "PositionOffset"}]
       19 SETTABLEKS                       R1 R5 K4 ["Annotation"]
       21 SETTABLEKS                       R2 R5 K5 ["Height"]
       23 LOADN                            R6 0
       24 SETTABLEKS                       R6 R5 K6 ["PositionOffset"]
       26 SETTABLE                         R5 R3 R4
       27 GETTABLEKS                       R4 R0 K8 ["indices"]
       29 GETTABLEKS                       R6 R0 K0 ["annotationMetadata"]
       31 GETTABLEKS                       R7 R1 K1 ["Name"]
       33 GETTABLE                         R5 R6 R7
       34 FASTCALL2                        TABLE_INSERT R4 R5 ; [+3]
       36 GETIMPORT                        R3 K11 [table.insert]
       38 CALL                             R3 2 0
       39 GETUPVAL                         R3 1
       40 GETTABLEKS                       R3 R3 K12 ["List"]
       42 GETTABLEKS                       R3 R3 K13 ["sort"]
       44 GETTABLEKS                       R4 R0 K8 ["indices"]
       46 DUPCLOSURE                       R5 K14 [PROTO_5]
       47 CALL                             R3 2 1
       48 SETTABLEKS                       R3 R0 K8 ["indices"]
       50 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R3 R0 K0 ["annotationMetadata"]
        2 GETTABLEKS                       R4 R1 K1 ["Name"]
        4 GETTABLE                         R2 R3 R4
        5 GETTABLEKS                       R3 R0 K0 ["annotationMetadata"]
        7 GETTABLEKS                       R4 R1 K1 ["Name"]
        9 LOADNIL                          R5
       10 SETTABLE                         R5 R3 R4
       11 LOADN                            R3 255
       12 GETIMPORT                        R4 K3 [ipairs]
       14 GETTABLEKS                       R5 R0 K4 ["indices"]
       16 CALL                             R4 1 3
       17 FORGPREP_INEXT                   R4
       18 JUMPIFNOTEQKN                    R3 K5 [-1] ; [+5]
       20 JUMPIFNOTEQ                      R8 R2 ; [+3]
       22 MOVE                             R3 R7
       23 JUMP                             ; [+2]
       24 FORGLOOP                         R4 2 [inext] ; [-7]
       26 GETIMPORT                        R4 K8 [table.remove]
       28 GETTABLEKS                       R5 R0 K4 ["indices"]
       30 MOVE                             R6 R3
       31 CALL                             R4 2 0
       32 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R2 R0 K0 ["rowWidth"]
        2 JUMPIFNOTEQ                      R2 R1 ; [+2]
        4 RETURN                           R0 0
        5 SETTABLEKS                       R1 R0 K0 ["rowWidth"]
        7 GETIMPORT                        R2 K2 [ipairs]
        9 GETTABLEKS                       R3 R0 K3 ["indices"]
       11 CALL                             R2 1 3
       12 FORGPREP_INEXT                   R2
       13 GETUPVAL                         R7 0
       14 GETTABLEKS                       R8 R6 K4 ["Annotation"]
       16 GETTABLEKS                       R9 R0 K0 ["rowWidth"]
       18 GETTABLEKS                       R10 R0 K5 ["usernameContext"]
       20 CALL                             R7 3 1
       21 SETTABLEKS                       R7 R6 K6 ["Height"]
       23 FORGLOOP                         R2 2 [inext] ; [-11]
       25 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R5 R0 K0 ["annotationMetadata"]
        2 GETTABLE                         R4 R5 R1
        3 JUMPIF                           R4 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R6 R4 K1 ["Annotation"]
        8 GETTABLEKS                       R7 R0 K2 ["rowWidth"]
       10 GETTABLEKS                       R8 R0 K3 ["usernameContext"]
       12 MOVE                             R9 R2
       13 MOVE                             R10 R3
       14 CALL                             R5 5 1
       15 SETTABLEKS                       R5 R4 K4 ["Height"]
       17 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceAnnotations"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Cryo"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Types"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K11 [game]
       23 LOADK                            R5 K12 ["TextService"]
       24 NAMECALL                         R3 R3 K13 ["GetService"]
       26 CALL                             R3 2 1
       27 GETIMPORT                        R4 K5 [require]
       29 GETTABLEKS                       R5 R0 K8 ["Src"]
       31 GETTABLEKS                       R5 R5 K14 ["Util"]
       33 GETTABLEKS                       R5 R5 K15 ["TaggedUsersUtils"]
       35 CALL                             R4 1 1
       36 GETTABLEKS                       R4 R4 K16 ["GetContentsWithBoldTags"]
       38 DUPCLOSURE                       R5 K17 [PROTO_1]
       39 CAPTURE                          VAL R4
       40 CAPTURE                          VAL R3
       41 NEWTABLE                         R6 8 0
       43 SETTABLEKS                       R6 R6 K18 ["__index"]
       45 DUPCLOSURE                       R7 K19 [PROTO_2]
       46 CAPTURE                          VAL R6
       47 SETTABLEKS                       R7 R6 K20 ["new"]
       49 DUPCLOSURE                       R7 K21 [PROTO_3]
       50 CAPTURE                          VAL R5
       51 SETTABLEKS                       R7 R6 K22 ["Init"]
       53 DUPCLOSURE                       R7 K23 [PROTO_4]
       54 SETTABLEKS                       R7 R6 K24 ["GetVisibleAnnotationsFiltered"]
       56 DUPCLOSURE                       R7 K25 [PROTO_6]
       57 CAPTURE                          VAL R5
       58 CAPTURE                          VAL R1
       59 SETTABLEKS                       R7 R6 K26 ["AddItem"]
       61 DUPCLOSURE                       R7 K27 [PROTO_7]
       62 SETTABLEKS                       R7 R6 K28 ["RemoveItem"]
       64 DUPCLOSURE                       R7 K29 [PROTO_8]
       65 CAPTURE                          VAL R5
       66 SETTABLEKS                       R7 R6 K30 ["UpdateRowWidth"]
       68 DUPCLOSURE                       R7 K31 [PROTO_9]
       69 CAPTURE                          VAL R5
       70 SETTABLEKS                       R7 R6 K32 ["UpdateItem"]
       72 RETURN                           R6 1
