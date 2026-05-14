PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 NEWTABLE                         R3 0 0
        4 LOADN                            R4 1
        5 LOADK                            R7 K0 ["()@([%w_]+)()"]
        6 NAMECALL                         R5 R0 K1 ["gmatch"]
        8 CALL                             R5 2 3
        9 FORGPREP                         R5
       10 JUMPIFNOT                        R9 ; [+29]
       11 GETTABLE                         R11 R1 R9
       12 JUMPIFNOT                        R11 ; [+27]
       13 GETTABLE                         R13 R1 R9
       14 GETTABLEKS                       R13 R13 K2 ["UserId"]
       16 FASTCALL2                        TABLE_INSERT R2 R13 ; [+4]
       18 MOVE                             R12 R2
       19 GETIMPORT                        R11 K5 [table.insert]
       21 CALL                             R11 2 0
       22 MOVE                             R12 R3
       23 MOVE                             R15 R4
       24 SUBK                             R16 R8 K6 [1]
       25 NAMECALL                         R13 R0 K7 ["sub"]
       27 CALL                             R13 3 -1
       28 FASTCALL                         TABLE_INSERT ; [+2]
       29 GETIMPORT                        R11 K5 [table.insert]
       31 CALL                             R11 -1 0
       32 FASTCALL2K                       TABLE_INSERT R3 K8 ; [+5]
       34 MOVE                             R12 R3
       35 LOADK                            R13 K8 ["@%s"]
       36 GETIMPORT                        R11 K5 [table.insert]
       38 CALL                             R11 2 0
       39 ORK                              R4 R10 K9 [-1]
       40 FORGLOOP                         R5 3 ; [-31]
       42 JUMPIFEQKN                       R4 K9 [-1] ; [+10]
       44 MOVE                             R6 R3
       45 MOVE                             R9 R4
       46 NAMECALL                         R7 R0 K7 ["sub"]
       48 CALL                             R7 2 -1
       49 FASTCALL                         TABLE_INSERT ; [+2]
       50 GETIMPORT                        R5 K5 [table.insert]
       52 CALL                             R5 -1 0
       53 GETIMPORT                        R5 K11 [table.concat]
       55 MOVE                             R6 R3
       56 CALL                             R5 1 1
       57 GETIMPORT                        R6 K11 [table.concat]
       59 MOVE                             R7 R2
       60 LOADK                            R8 K12 [","]
       61 CALL                             R6 2 1
       62 MOVE                             R7 R6
       63 MOVE                             R8 R5
       64 RETURN                           R7 2

PROTO_1:
        0 LOADN                            R1 0
        1 LOADK                            R4 K0 ["@%%s"]
        2 NAMECALL                         R2 R0 K1 ["gmatch"]
        4 CALL                             R2 2 3
        5 FORGPREP                         R2
        6 ADDK                             R1 R1 K2 [1]
        7 FORGLOOP                         R2 1 ; [-2]
        9 RETURN                           R1 1

PROTO_2:
        0 JUMPIFNOT                        R1 ; [+2]
        1 JUMPIFNOTEQKS                    R1 K0 [""] ; [+2]
        3 RETURN                           R0 1
        4 NEWTABLE                         R3 0 0
        6 GETIMPORT                        R4 K3 [string.split]
        8 MOVE                             R5 R1
        9 LOADK                            R6 K4 [","]
       10 CALL                             R4 2 1
       11 GETIMPORT                        R5 K6 [ipairs]
       13 MOVE                             R6 R4
       14 CALL                             R5 1 3
       15 FORGPREP_INEXT                   R5
       16 LOADK                            R13 K7 ["<b>@"]
       17 FASTCALL1                        TONUMBER R9 ; [+3]
       18 MOVE                             R19 R9
       19 GETIMPORT                        R18 K9 [tonumber]
       21 CALL                             R18 1 1
       22 NAMECALL                         R16 R2 K10 ["getUsername"]
       24 CALL                             R16 2 1
       25 MOVE                             R14 R16
       26 LOADK                            R15 K11 ["</b>"]
       27 CONCAT                           R12 R13 R15
       28 FASTCALL2                        TABLE_INSERT R3 R12 ; [+4]
       30 MOVE                             R11 R3
       31 GETIMPORT                        R10 K14 [table.insert]
       33 CALL                             R10 2 0
       34 FORGLOOP                         R5 2 [inext] ; [-19]
       36 LOADN                            R6 0
       37 LOADK                            R9 K15 ["@%%s"]
       38 NAMECALL                         R7 R0 K16 ["gmatch"]
       40 CALL                             R7 2 3
       41 FORGPREP                         R7
       42 ADDK                             R6 R6 K17 [1]
       43 FORGLOOP                         R7 1 ; [-2]
       45 MOVE                             R5 R6
       46 LENGTH                           R6 R3
       47 JUMPIFNOTLT                      R6 R5 ; [+9]
       49 FASTCALL2K                       TABLE_INSERT R3 K18 ; [+5]
       51 MOVE                             R7 R3
       52 LOADK                            R8 K18 ["<b>@</b>"]
       53 GETIMPORT                        R6 K14 [table.insert]
       55 CALL                             R6 2 0
       56 JUMPBACK                         ; [-11]
       57 NEWTABLE                         R6 0 0
       59 LOADN                            R7 1
       60 LOADN                            R8 1
       61 LOADK                            R11 K19 ["()@%%s()"]
       62 NAMECALL                         R9 R0 K16 ["gmatch"]
       64 CALL                             R9 2 3
       65 FORGPREP                         R9
       66 MOVE                             R15 R6
       67 MOVE                             R18 R8
       68 SUBK                             R19 R12 K17 [1]
       69 NAMECALL                         R16 R0 K20 ["sub"]
       71 CALL                             R16 3 -1
       72 FASTCALL                         TABLE_INSERT ; [+2]
       73 GETIMPORT                        R14 K14 [table.insert]
       75 CALL                             R14 -1 0
       76 LENGTH                           R14 R3
       77 JUMPIFLT                         R14 R7 ; [+12]
       79 GETTABLE                         R16 R3 R7
       80 FASTCALL2                        TABLE_INSERT R6 R16 ; [+4]
       82 MOVE                             R15 R6
       83 GETIMPORT                        R14 K14 [table.insert]
       85 CALL                             R14 2 0
       86 ADDK                             R7 R7 K17 [1]
       87 ORK                              R8 R13 K21 [-1]
       88 FORGLOOP                         R9 2 ; [-23]
       90 JUMPIFEQKN                       R8 K21 [-1] ; [+10]
       92 MOVE                             R10 R6
       93 MOVE                             R13 R8
       94 NAMECALL                         R11 R0 K20 ["sub"]
       96 CALL                             R11 2 -1
       97 FASTCALL                         TABLE_INSERT ; [+2]
       98 GETIMPORT                        R9 K14 [table.insert]
      100 CALL                             R9 -1 0
      101 GETIMPORT                        R9 K23 [table.concat]
      103 MOVE                             R10 R6
      104 CALL                             R9 1 -1
      105 RETURN                           R9 -1

PROTO_3:
        0 JUMPIFNOT                        R1 ; [+2]
        1 JUMPIFNOTEQKS                    R1 K0 [""] ; [+2]
        3 RETURN                           R0 1
        4 NEWTABLE                         R3 0 0
        6 GETIMPORT                        R4 K3 [string.split]
        8 MOVE                             R5 R1
        9 LOADK                            R6 K4 [","]
       10 CALL                             R4 2 1
       11 GETIMPORT                        R5 K6 [ipairs]
       13 MOVE                             R6 R4
       14 CALL                             R5 1 3
       15 FORGPREP_INEXT                   R5
       16 MOVE                             R11 R3
       17 FASTCALL1                        TONUMBER R9 ; [+3]
       18 MOVE                             R15 R9
       19 GETIMPORT                        R14 K8 [tonumber]
       21 CALL                             R14 1 1
       22 NAMECALL                         R12 R2 K9 ["getUsername"]
       24 CALL                             R12 2 -1
       25 FASTCALL                         TABLE_INSERT ; [+2]
       26 GETIMPORT                        R10 K12 [table.insert]
       28 CALL                             R10 -1 0
       29 FORGLOOP                         R5 2 [inext] ; [-14]
       31 LOADN                            R6 0
       32 LOADK                            R9 K13 ["@%%s"]
       33 NAMECALL                         R7 R0 K14 ["gmatch"]
       35 CALL                             R7 2 3
       36 FORGPREP                         R7
       37 ADDK                             R6 R6 K15 [1]
       38 FORGLOOP                         R7 1 ; [-2]
       40 MOVE                             R5 R6
       41 LENGTH                           R6 R3
       42 JUMPIFNOTLT                      R6 R5 ; [+9]
       44 FASTCALL2K                       TABLE_INSERT R3 K0 ; [+5]
       46 MOVE                             R7 R3
       47 LOADK                            R8 K0 [""]
       48 GETIMPORT                        R6 K12 [table.insert]
       50 CALL                             R6 2 0
       51 JUMPBACK                         ; [-11]
       52 NEWTABLE                         R6 0 0
       54 LOADN                            R7 1
       55 LOADN                            R8 1
       56 LOADK                            R11 K16 ["()%%s()"]
       57 NAMECALL                         R9 R0 K14 ["gmatch"]
       59 CALL                             R9 2 3
       60 FORGPREP                         R9
       61 MOVE                             R15 R6
       62 MOVE                             R18 R8
       63 SUBK                             R19 R12 K15 [1]
       64 NAMECALL                         R16 R0 K17 ["sub"]
       66 CALL                             R16 3 -1
       67 FASTCALL                         TABLE_INSERT ; [+2]
       68 GETIMPORT                        R14 K12 [table.insert]
       70 CALL                             R14 -1 0
       71 LENGTH                           R14 R3
       72 JUMPIFLT                         R14 R7 ; [+12]
       74 GETTABLE                         R16 R3 R7
       75 FASTCALL2                        TABLE_INSERT R6 R16 ; [+4]
       77 MOVE                             R15 R6
       78 GETIMPORT                        R14 K12 [table.insert]
       80 CALL                             R14 2 0
       81 ADDK                             R7 R7 K15 [1]
       82 ORK                              R8 R13 K18 [-1]
       83 FORGLOOP                         R9 2 ; [-23]
       85 JUMPIFEQKN                       R8 K18 [-1] ; [+10]
       87 MOVE                             R10 R6
       88 MOVE                             R13 R8
       89 NAMECALL                         R11 R0 K17 ["sub"]
       91 CALL                             R11 2 -1
       92 FASTCALL                         TABLE_INSERT ; [+2]
       93 GETIMPORT                        R9 K12 [table.insert]
       95 CALL                             R9 -1 0
       96 GETIMPORT                        R9 K20 [table.concat]
       98 MOVE                             R10 R6
       99 CALL                             R9 1 -1
      100 RETURN                           R9 -1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["List"]
        3 GETTABLEKS                       R3 R3 K1 ["find"]
        5 MOVE                             R4 R1
        6 FASTCALL1                        TOSTRING R0 ; [+3]
        7 MOVE                             R6 R0
        8 GETIMPORT                        R5 K3 [tostring]
       10 CALL                             R5 1 1
       11 CALL                             R3 2 1
       12 JUMPIFNOTEQKNIL                  R3 ; [+2]
       14 LOADB                            R2 0 +1
       15 LOADB                            R2 1
       16 RETURN                           R2 1

PROTO_5:
        0 GETTABLEKS                       R2 R1 K0 ["TaggedUsers"]
        2 JUMPIFNOT                        R2 ; [+4]
        3 GETTABLEKS                       R2 R1 K0 ["TaggedUsers"]
        5 JUMPIFNOTEQKS                    R2 K1 [""] ; [+3]
        7 LOADB                            R2 0
        8 RETURN                           R2 1
        9 GETIMPORT                        R2 K4 [string.split]
       11 GETTABLEKS                       R3 R1 K0 ["TaggedUsers"]
       13 LOADK                            R4 K5 [","]
       14 CALL                             R2 2 1
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R4 R4 K6 ["List"]
       18 GETTABLEKS                       R4 R4 K7 ["find"]
       20 MOVE                             R5 R2
       21 FASTCALL1                        TOSTRING R0 ; [+3]
       22 MOVE                             R7 R0
       23 GETIMPORT                        R6 K9 [tostring]
       25 CALL                             R6 1 1
       26 CALL                             R4 2 1
       27 JUMPIFNOTEQKNIL                  R4 ; [+2]
       29 LOADB                            R3 0 +1
       30 LOADB                            R3 1
       31 RETURN                           R3 1

PROTO_6:
        0 LOADK                            R4 K0 ["TaggedUsersInThread"]
        1 NAMECALL                         R2 R1 K1 ["GetAttribute"]
        3 CALL                             R2 2 1
        4 JUMPIFNOT                        R2 ; [+6]
        5 LOADK                            R4 K0 ["TaggedUsersInThread"]
        6 NAMECALL                         R2 R1 K1 ["GetAttribute"]
        8 CALL                             R2 2 1
        9 JUMPIFNOTEQKS                    R2 K2 [""] ; [+3]
       11 LOADB                            R2 0
       12 RETURN                           R2 1
       13 GETIMPORT                        R2 K5 [string.split]
       15 LOADK                            R5 K0 ["TaggedUsersInThread"]
       16 NAMECALL                         R3 R1 K1 ["GetAttribute"]
       18 CALL                             R3 2 1
       19 LOADK                            R4 K6 [","]
       20 CALL                             R2 2 1
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R4 R4 K7 ["List"]
       24 GETTABLEKS                       R4 R4 K8 ["find"]
       26 MOVE                             R5 R2
       27 FASTCALL1                        TOSTRING R0 ; [+3]
       28 MOVE                             R7 R0
       29 GETIMPORT                        R6 K10 [tostring]
       31 CALL                             R6 1 1
       32 CALL                             R4 2 1
       33 JUMPIFNOTEQKNIL                  R4 ; [+2]
       35 LOADB                            R3 0 +1
       36 LOADB                            R3 1
       37 RETURN                           R3 1

PROTO_7:
        0 NAMECALL                         R3 R0 K0 ["GetChildren"]
        2 CALL                             R3 1 1
        3 NEWTABLE                         R4 0 0
        5 JUMPIFNOT                        R0 ; [+14]
        6 GETTABLEKS                       R5 R0 K1 ["TaggedUsers"]
        8 JUMPIFNOT                        R5 ; [+11]
        9 GETTABLEKS                       R5 R0 K1 ["TaggedUsers"]
       11 JUMPIFEQKS                       R5 K2 [""] ; [+8]
       13 GETIMPORT                        R5 K5 [string.split]
       15 GETTABLEKS                       R6 R0 K1 ["TaggedUsers"]
       17 LOADK                            R7 K6 [","]
       18 CALL                             R5 2 1
       19 MOVE                             R4 R5
       20 GETIMPORT                        R5 K8 [ipairs]
       22 MOVE                             R6 R3
       23 CALL                             R5 1 3
       24 FORGPREP_INEXT                   R5
       25 LOADK                            R12 K9 ["Annotation"]
       26 NAMECALL                         R10 R9 K10 ["IsA"]
       28 CALL                             R10 2 1
       29 JUMPIFNOT                        R10 ; [+56]
       30 JUMPIFNOT                        R2 ; [+10]
       31 JUMPIFNOT                        R1 ; [+9]
       32 NAMECALL                         R10 R9 K11 ["GetStringUniqueId"]
       34 CALL                             R10 1 1
       35 NAMECALL                         R11 R1 K11 ["GetStringUniqueId"]
       37 CALL                             R11 1 1
       38 JUMPIFNOTEQ                      R10 R11 ; [+2]
       40 JUMP                             ; [+45]
       41 NEWTABLE                         R10 0 0
       43 GETTABLEKS                       R11 R9 K1 ["TaggedUsers"]
       45 JUMPIFNOT                        R11 ; [+11]
       46 GETTABLEKS                       R11 R9 K1 ["TaggedUsers"]
       48 JUMPIFEQKS                       R11 K2 [""] ; [+8]
       50 GETIMPORT                        R11 K5 [string.split]
       52 GETTABLEKS                       R12 R9 K1 ["TaggedUsers"]
       54 LOADK                            R13 K6 [","]
       55 CALL                             R11 2 1
       56 MOVE                             R10 R11
       57 NEWTABLE                         R11 0 0
       59 GETIMPORT                        R12 K8 [ipairs]
       61 MOVE                             R13 R4
       62 CALL                             R12 1 3
       63 FORGPREP_INEXT                   R12
       64 LOADB                            R17 1
       65 SETTABLE                         R17 R11 R16
       66 FORGLOOP                         R12 2 [inext] ; [-3]
       68 GETIMPORT                        R12 K8 [ipairs]
       70 MOVE                             R13 R10
       71 CALL                             R12 1 3
       72 FORGPREP_INEXT                   R12
       73 GETTABLE                         R17 R11 R16
       74 JUMPIF                           R17 ; [+9]
       75 LOADB                            R17 1
       76 SETTABLE                         R17 R11 R16
       77 FASTCALL2                        TABLE_INSERT R4 R16 ; [+5]
       79 MOVE                             R18 R4
       80 MOVE                             R19 R16
       81 GETIMPORT                        R17 K14 [table.insert]
       83 CALL                             R17 2 0
       84 FORGLOOP                         R12 2 [inext] ; [-12]
       86 FORGLOOP                         R5 2 [inext] ; [-62]
       88 GETIMPORT                        R5 K16 [table.concat]
       90 MOVE                             R6 R4
       91 LOADK                            R7 K6 [","]
       92 CALL                             R5 2 1
       93 RETURN                           R5 1

PROTO_8:
        0 GETTABLEKS                       R5 R0 K0 ["Parent"]
        2 JUMPIFNOT                        R5 ; [+10]
        3 GETTABLEKS                       R5 R0 K0 ["Parent"]
        5 LOADK                            R7 K1 ["Annotation"]
        6 NAMECALL                         R5 R5 K2 ["IsA"]
        8 CALL                             R5 2 1
        9 JUMPIFNOT                        R5 ; [+3]
       10 GETTABLEKS                       R4 R0 K0 ["Parent"]
       12 JUMP                             ; [+1]
       13 MOVE                             R4 R0
       14 GETUPVAL                         R5 0
       15 MOVE                             R6 R4
       16 MOVE                             R7 R0
       17 MOVE                             R8 R3
       18 CALL                             R5 3 1
       19 NAMECALL                         R6 R4 K3 ["GetStringUniqueId"]
       21 CALL                             R6 1 1
       22 NAMECALL                         R7 R0 K3 ["GetStringUniqueId"]
       24 CALL                             R7 1 1
       25 JUMPIFEQ                         R6 R7 ; [+10]
       27 GETTABLEKS                       R6 R1 K4 ["syncStandaloneAnnotation"]
       29 MOVE                             R7 R2
       30 MOVE                             R8 R4
       31 DUPTABLE                         R9 K6 [{"TaggedUsersInThread"}]
       32 SETTABLEKS                       R5 R9 K5 ["TaggedUsersInThread"]
       34 CALL                             R6 3 0
       35 RETURN                           R0 0
       36 GETTABLEKS                       R6 R1 K4 ["syncStandaloneAnnotation"]
       38 MOVE                             R7 R2
       39 MOVE                             R8 R0
       40 DUPTABLE                         R9 K6 [{"TaggedUsersInThread"}]
       41 SETTABLEKS                       R5 R9 K5 ["TaggedUsersInThread"]
       43 CALL                             R6 3 0
       44 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 CALL                             R3 1 1
        3 GETTABLEKS                       R4 R1 K0 ["syncStandaloneAnnotation"]
        5 MOVE                             R5 R2
        6 MOVE                             R6 R0
        7 DUPTABLE                         R7 K2 [{"TaggedUsersInThread"}]
        8 SETTABLEKS                       R3 R7 K1 ["TaggedUsersInThread"]
       10 CALL                             R4 3 0
       11 RETURN                           R0 0

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
       21 DUPCLOSURE                       R3 K10 [PROTO_0]
       22 DUPCLOSURE                       R4 K11 [PROTO_1]
       23 DUPCLOSURE                       R5 K12 [PROTO_2]
       24 DUPCLOSURE                       R6 K13 [PROTO_3]
       25 DUPCLOSURE                       R7 K14 [PROTO_4]
       26 CAPTURE                          VAL R1
       27 DUPCLOSURE                       R8 K15 [PROTO_5]
       28 CAPTURE                          VAL R1
       29 DUPCLOSURE                       R9 K16 [PROTO_6]
       30 CAPTURE                          VAL R1
       31 DUPCLOSURE                       R10 K17 [PROTO_7]
       32 DUPCLOSURE                       R11 K18 [PROTO_8]
       33 CAPTURE                          VAL R10
       34 DUPCLOSURE                       R12 K19 [PROTO_9]
       35 CAPTURE                          VAL R10
       36 DUPTABLE                         R13 K28 [{"GetTaggedUsersAndAnonymizedContents", "GetContentsWithTags", "GetContentsWithBoldTags", "IsUserTagged", "IsUserTaggedInThread", "GetTaggedUsersInThread", "UpdateAnnotationOrParentTaggedUsersInThread", "UpdateAnnotationTaggedUsersInThread"}]
       37 SETTABLEKS                       R3 R13 K20 ["GetTaggedUsersAndAnonymizedContents"]
       39 SETTABLEKS                       R6 R13 K21 ["GetContentsWithTags"]
       41 SETTABLEKS                       R5 R13 K22 ["GetContentsWithBoldTags"]
       43 SETTABLEKS                       R8 R13 K23 ["IsUserTagged"]
       45 SETTABLEKS                       R9 R13 K24 ["IsUserTaggedInThread"]
       47 SETTABLEKS                       R10 R13 K25 ["GetTaggedUsersInThread"]
       49 SETTABLEKS                       R11 R13 K26 ["UpdateAnnotationOrParentTaggedUsersInThread"]
       51 SETTABLEKS                       R12 R13 K27 ["UpdateAnnotationTaggedUsersInThread"]
       53 RETURN                           R13 1
