PROTO_0:
        0 NEWTABLE                         R1 2 0
        2 JUMPIFNOT                        R0 ; [+3]
        3 GETTABLEKS                       R2 R0 K0 ["Name"]
        5 JUMPIF                           R2 ; [+1]
        6 LOADNIL                          R2
        7 SETTABLEKS                       R2 R1 K1 ["_name"]
        9 JUMPIFNOT                        R0 ; [+3]
       10 GETTABLEKS                       R2 R0 K2 ["Mask"]
       12 JUMPIF                           R2 ; [+1]
       13 LOADN                            R2 0
       14 SETTABLEKS                       R2 R1 K3 ["_mask"]
       16 GETUPVAL                         R4 0
       17 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
       19 MOVE                             R3 R1
       20 GETIMPORT                        R2 K5 [setmetatable]
       22 CALL                             R2 2 1
       23 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R1
        2 GETTABLEKS                       R5 R0 K0 ["_name"]
        4 NAMECALL                         R2 R2 K1 ["AddTag"]
        6 CALL                             R2 3 0
        7 NAMECALL                         R2 R0 K2 ["setPublishBlocked"]
        9 CALL                             R2 1 0
       10 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R1
        2 GETTABLEKS                       R5 R0 K0 ["_name"]
        4 NAMECALL                         R2 R2 K1 ["RemoveTag"]
        6 CALL                             R2 3 0
        7 NAMECALL                         R2 R0 K2 ["checkPublishTags"]
        9 CALL                             R2 1 0
       10 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["RunTests"]
        3 CALL                             R1 0 1
        4 JUMPIF                           R1 ; [+20]
        5 GETIMPORT                        R1 K2 [game]
        7 LOADK                            R3 K3 ["StudioPublishService"]
        8 NAMECALL                         R1 R1 K4 ["GetService"]
       10 CALL                             R1 2 1
       11 GETUPVAL                         R5 1
       12 NAMECALL                         R3 R1 K6 ["GetAttribute"]
       14 CALL                             R3 2 1
       15 ORK                              R2 R3 K5 [0]
       16 GETTABLEKS                       R5 R0 K7 ["_mask"]
       18 FASTCALL2                        BIT32_BTEST R2 R5 ; [+4]
       20 MOVE                             R4 R2
       21 GETIMPORT                        R3 K10 [bit32.btest]
       23 CALL                             R3 2 1
       24 RETURN                           R3 1
       25 LOADNIL                          R1
       26 RETURN                           R1 1

PROTO_4:
        0 GETIMPORT                        R1 K1 [pairs]
        2 NAMECALL                         R2 R0 K2 ["getTagged"]
        4 CALL                             R2 1 -1
        5 CALL                             R1 -1 3
        6 FORGPREP_NEXT                    R1
        7 GETUPVAL                         R6 0
        8 MOVE                             R8 R5
        9 GETTABLEKS                       R9 R0 K3 ["_name"]
       11 NAMECALL                         R6 R6 K4 ["RemoveTag"]
       13 CALL                             R6 3 0
       14 FORGLOOP                         R1 2 ; [-8]
       16 NAMECALL                         R1 R0 K5 ["checkPublishTags"]
       18 CALL                             R1 1 0
       19 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["_name"]
        3 NAMECALL                         R1 R1 K1 ["GetTagged"]
        5 CALL                             R1 2 1
        6 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R1
        2 GETTABLEKS                       R5 R0 K0 ["_name"]
        4 NAMECALL                         R2 R2 K1 ["HasTag"]
        6 CALL                             R2 3 -1
        7 RETURN                           R2 -1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 GETUPVAL                         R8 1
        5 GETTABLE                         R7 R8 R5
        6 MOVE                             R10 R1
        7 NAMECALL                         R8 R7 K0 ["removeTag"]
        9 CALL                             R8 2 0
       10 NAMECALL                         R8 R1 K1 ["GetDescendants"]
       12 CALL                             R8 1 3
       13 FORGPREP                         R8
       14 MOVE                             R15 R12
       15 NAMECALL                         R13 R7 K0 ["removeTag"]
       17 CALL                             R13 2 0
       18 FORGLOOP                         R8 2 ; [-5]
       20 FORGLOOP                         R2 1 ; [-17]
       22 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["RunTests"]
        3 CALL                             R1 0 1
        4 JUMPIF                           R1 ; [+82]
        5 GETIMPORT                        R1 K2 [game]
        7 LOADK                            R3 K3 ["StudioPublishService"]
        8 NAMECALL                         R1 R1 K4 ["GetService"]
       10 CALL                             R1 2 1
       11 LOADB                            R2 1
       12 SETTABLEKS                       R2 R1 K5 ["PublishLocked"]
       14 LOADNIL                          R2
       15 GETTABLEKS                       R3 R0 K6 ["_name"]
       17 JUMPIFNOT                        R3 ; [+35]
       18 GETTABLEKS                       R3 R0 K7 ["_mask"]
       20 JUMPIFNOT                        R3 ; [+32]
       21 GETUPVAL                         R5 1
       22 NAMECALL                         R3 R1 K9 ["GetAttribute"]
       24 CALL                             R3 2 1
       25 ORK                              R2 R3 K8 [0]
       26 GETUPVAL                         R5 2
       27 GETTABLEKS                       R7 R0 K6 ["_name"]
       29 NAMECALL                         R5 R5 K10 ["GetTagged"]
       31 CALL                             R5 2 1
       32 LENGTH                           R4 R5
       33 LOADN                            R5 0
       34 JUMPIFLT                         R5 R4 ; [+2]
       36 LOADB                            R3 0 +1
       37 LOADB                            R3 1
       38 JUMPIF                           R3 ; [+43]
       39 GETTABLEKS                       R7 R0 K7 ["_mask"]
       41 FASTCALL1                        BIT32_BNOT R7 ; [+2]
       42 GETIMPORT                        R6 K13 [bit32.bnot]
       44 CALL                             R6 1 1
       45 FASTCALL2                        BIT32_BAND R2 R6 ; [+4]
       47 MOVE                             R5 R2
       48 GETIMPORT                        R4 K15 [bit32.band]
       50 CALL                             R4 2 1
       51 MOVE                             R2 R4
       52 JUMP                             ; [+29]
       53 LOADN                            R2 0
       54 GETUPVAL                         R3 3
       55 LOADNIL                          R4
       56 LOADNIL                          R5
       57 FORGPREP                         R3
       58 GETUPVAL                         R10 2
       59 GETTABLEKS                       R12 R7 K16 ["Name"]
       61 NAMECALL                         R10 R10 K10 ["GetTagged"]
       63 CALL                             R10 2 1
       64 LENGTH                           R9 R10
       65 LOADN                            R10 0
       66 JUMPIFLT                         R10 R9 ; [+2]
       68 LOADB                            R8 0 +1
       69 LOADB                            R8 1
       70 JUMPIFNOT                        R8 ; [+9]
       71 GETTABLEKS                       R11 R7 K17 ["Mask"]
       73 FASTCALL2                        BIT32_BOR R2 R11 ; [+4]
       75 MOVE                             R10 R2
       76 GETIMPORT                        R9 K19 [bit32.bor]
       78 CALL                             R9 2 1
       79 MOVE                             R2 R9
       80 FORGLOOP                         R3 2 ; [-23]
       82 GETUPVAL                         R5 1
       83 MOVE                             R6 R2
       84 NAMECALL                         R3 R1 K20 ["SetAttribute"]
       86 CALL                             R3 3 0
       87 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["RunTests"]
        3 CALL                             R1 0 1
        4 JUMPIF                           R1 ; [+28]
        5 GETIMPORT                        R1 K2 [game]
        7 LOADK                            R3 K3 ["StudioPublishService"]
        8 NAMECALL                         R1 R1 K4 ["GetService"]
       10 CALL                             R1 2 1
       11 LOADB                            R2 1
       12 SETTABLEKS                       R2 R1 K5 ["PublishLocked"]
       14 GETUPVAL                         R5 1
       15 NAMECALL                         R3 R1 K7 ["GetAttribute"]
       17 CALL                             R3 2 1
       18 ORK                              R2 R3 K6 [0]
       19 GETTABLEKS                       R5 R0 K8 ["_mask"]
       21 FASTCALL2                        BIT32_BOR R2 R5 ; [+4]
       23 MOVE                             R4 R2
       24 GETIMPORT                        R3 K11 [bit32.bor]
       26 CALL                             R3 2 1
       27 MOVE                             R2 R3
       28 GETUPVAL                         R5 1
       29 MOVE                             R6 R2
       30 NAMECALL                         R3 R1 K12 ["SetAttribute"]
       32 CALL                             R3 3 0
       33 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["RunTests"]
        3 CALL                             R1 0 1
        4 JUMPIF                           R1 ; [+11]
        5 GETIMPORT                        R1 K2 [game]
        7 LOADK                            R3 K3 ["StudioPublishService"]
        8 NAMECALL                         R1 R1 K4 ["GetService"]
       10 CALL                             R1 2 1
       11 GETUPVAL                         R4 1
       12 NAMECALL                         R2 R1 K5 ["GetAttribute"]
       14 CALL                             R2 2 -1
       15 RETURN                           R2 -1
       16 LOADNIL                          R1
       17 RETURN                           R1 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["RunTests"]
        3 CALL                             R1 0 1
        4 JUMPIF                           R1 ; [+9]
        5 GETIMPORT                        R1 K2 [game]
        7 LOADK                            R3 K3 ["StudioPublishService"]
        8 NAMECALL                         R1 R1 K4 ["GetService"]
       10 CALL                             R1 2 1
       11 LOADB                            R2 0
       12 SETTABLEKS                       R2 R1 K5 ["PublishLocked"]
       14 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["CollectionService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["R15Migrator"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Src"]
       17 GETTABLEKS                       R3 R3 K11 ["Util"]
       19 GETTABLEKS                       R3 R3 K12 ["DebugFlags"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K9 [require]
       24 GETTABLEKS                       R4 R1 K10 ["Src"]
       26 GETTABLEKS                       R4 R4 K13 ["Resources"]
       28 GETTABLEKS                       R4 R4 K14 ["Constants"]
       30 CALL                             R3 1 1
       31 GETTABLEKS                       R4 R3 K15 ["PublishTags"]
       33 GETTABLEKS                       R6 R3 K16 ["AttributePrefix"]
       35 LOADK                            R7 K17 ["Blocked"]
       36 CONCAT                           R5 R6 R7
       37 DUPTABLE                         R6 K22 [{["_name"] = , ["mask"] = 0}]
       38 SETTABLEKS                       R6 R6 K23 ["__index"]
       40 DUPCLOSURE                       R7 K24 [PROTO_0]
       41 CAPTURE                          VAL R6
       42 SETTABLEKS                       R7 R6 K25 ["new"]
       44 DUPCLOSURE                       R7 K26 [PROTO_1]
       45 CAPTURE                          VAL R0
       46 SETTABLEKS                       R7 R6 K27 ["addTag"]
       48 DUPCLOSURE                       R7 K28 [PROTO_2]
       49 CAPTURE                          VAL R0
       50 SETTABLEKS                       R7 R6 K29 ["removeTag"]
       52 DUPCLOSURE                       R7 K30 [PROTO_3]
       53 CAPTURE                          VAL R2
       54 CAPTURE                          VAL R5
       55 SETTABLEKS                       R7 R6 K31 ["isBlocking"]
       57 DUPCLOSURE                       R7 K32 [PROTO_4]
       58 CAPTURE                          VAL R0
       59 SETTABLEKS                       R7 R6 K33 ["removeAllTags"]
       61 DUPCLOSURE                       R7 K34 [PROTO_5]
       62 CAPTURE                          VAL R0
       63 SETTABLEKS                       R7 R6 K35 ["getTagged"]
       65 DUPCLOSURE                       R7 K36 [PROTO_6]
       66 CAPTURE                          VAL R0
       67 SETTABLEKS                       R7 R6 K37 ["hasTagged"]
       69 MOVE                             R7 R4
       70 LOADNIL                          R8
       71 LOADNIL                          R9
       72 FORGPREP                         R7
       73 GETTABLEKS                       R12 R6 K25 ["new"]
       75 MOVE                             R13 R11
       76 CALL                             R12 1 1
       77 SETTABLE                         R12 R6 R10
       78 FORGLOOP                         R7 2 ; [-6]
       80 DUPCLOSURE                       R7 K38 [PROTO_7]
       81 CAPTURE                          VAL R4
       82 CAPTURE                          VAL R6
       83 SETTABLEKS                       R7 R6 K39 ["clearPublishTags"]
       85 DUPCLOSURE                       R7 K40 [PROTO_8]
       86 CAPTURE                          VAL R2
       87 CAPTURE                          VAL R5
       88 CAPTURE                          VAL R0
       89 CAPTURE                          VAL R4
       90 SETTABLEKS                       R7 R6 K41 ["checkPublishTags"]
       92 DUPCLOSURE                       R7 K42 [PROTO_9]
       93 CAPTURE                          VAL R2
       94 CAPTURE                          VAL R5
       95 SETTABLEKS                       R7 R6 K43 ["setPublishBlocked"]
       97 DUPCLOSURE                       R7 K44 [PROTO_10]
       98 CAPTURE                          VAL R2
       99 CAPTURE                          VAL R5
      100 SETTABLEKS                       R7 R6 K45 ["publishingIsBlocked"]
      102 DUPCLOSURE                       R7 K46 [PROTO_11]
      103 CAPTURE                          VAL R2
      104 SETTABLEKS                       R7 R6 K47 ["prepareToPublish"]
      106 RETURN                           R6 1
