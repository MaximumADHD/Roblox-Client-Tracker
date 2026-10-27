PROTO_0:
        0 GETIMPORT                        R1 K2 [string.lower]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 -1
        4 RETURN                           R1 -1

PROTO_1:
        0 GETIMPORT                        R2 K2 [string.match]
        2 MOVE                             R3 R0
        3 LOADK                            R4 K3 ["[1-9a-fA-F]"]
        4 CALL                             R2 2 1
        5 JUMPIFNOTEQKNIL                  R2 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_2:
        0 GETIMPORT                        R1 K1 [pcall]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K2 ["JSONDecode"]
        5 GETUPVAL                         R3 0
        6 MOVE                             R4 R0
        7 CALL                             R1 3 2
        8 JUMPIFNOT                        R1 ; [+7]
        9 FASTCALL1                        TYPEOF R2 ; [+3]
       10 MOVE                             R4 R2
       11 GETIMPORT                        R3 K4 [typeof]
       13 CALL                             R3 1 1
       14 JUMPIFEQKS                       R3 K5 ["table"] ; [+3]
       16 LOADNIL                          R3
       17 RETURN                           R3 1
       18 GETTABLEKS                       R3 R2 K6 ["assetId"]
       20 FASTCALL1                        TYPEOF R3 ; [+3]
       21 MOVE                             R5 R3
       22 GETIMPORT                        R4 K4 [typeof]
       24 CALL                             R4 1 1
       25 JUMPIFEQKS                       R4 K7 ["string"] ; [+10]
       27 FASTCALL1                        TYPEOF R3 ; [+3]
       28 MOVE                             R5 R3
       29 GETIMPORT                        R4 K4 [typeof]
       31 CALL                             R4 1 1
       32 JUMPIFEQKS                       R4 K8 ["number"] ; [+3]
       34 LOADNIL                          R4
       35 RETURN                           R4 1
       36 NEWTABLE                         R4 0 0
       38 GETTABLEKS                       R6 R2 K9 ["guids"]
       40 FASTCALL1                        TYPEOF R6 ; [+2]
       41 GETIMPORT                        R5 K4 [typeof]
       43 CALL                             R5 1 1
       44 JUMPIFNOTEQKS                    R5 K5 ["table"] ; [+31]
       46 GETTABLEKS                       R5 R2 K9 ["guids"]
       48 LOADNIL                          R6
       49 LOADNIL                          R7
       50 FORGPREP                         R5
       51 FASTCALL1                        TYPEOF R9 ; [+3]
       52 MOVE                             R11 R9
       53 GETIMPORT                        R10 K4 [typeof]
       55 CALL                             R10 1 1
       56 JUMPIFNOTEQKS                    R10 K7 ["string"] ; [+17]
       58 GETIMPORT                        R11 K11 [string.match]
       60 MOVE                             R12 R9
       61 LOADK                            R13 K12 ["[1-9a-fA-F]"]
       62 CALL                             R11 2 1
       63 JUMPIFNOTEQKNIL                  R11 ; [+2]
       65 LOADB                            R10 0 +1
       66 LOADB                            R10 1
       67 JUMPIFNOT                        R10 ; [+6]
       68 GETIMPORT                        R10 K14 [string.lower]
       70 MOVE                             R11 R9
       71 CALL                             R10 1 1
       72 LOADB                            R11 1
       73 SETTABLE                         R11 R4 R10
       74 FORGLOOP                         R5 2 ; [-24]
       76 DUPTABLE                         R5 K18 [{"assetId", "isOverride", "deleteLocal", "animationClipGuids"}]
       77 FASTCALL1                        TOSTRING R3 ; [+3]
       78 MOVE                             R7 R3
       79 GETIMPORT                        R6 K20 [tostring]
       81 CALL                             R6 1 1
       82 SETTABLEKS                       R6 R5 K6 ["assetId"]
       84 GETTABLEKS                       R7 R2 K15 ["isOverride"]
       86 JUMPIFEQKB                       R7 TRUE ; [+2]
       88 LOADB                            R6 0 +1
       89 LOADB                            R6 1
       90 SETTABLEKS                       R6 R5 K15 ["isOverride"]
       92 GETTABLEKS                       R7 R2 K16 ["deleteLocal"]
       94 JUMPIFEQKB                       R7 TRUE ; [+2]
       96 LOADB                            R6 0 +1
       97 LOADB                            R6 1
       98 SETTABLEKS                       R6 R5 K16 ["deleteLocal"]
      100 SETTABLEKS                       R4 R5 K17 ["animationClipGuids"]
      102 RETURN                           R5 1

PROTO_3:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["animationClips"]
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 LOADK                            R9 K1 ["AnimationClip"]
        8 NAMECALL                         R7 R6 K2 ["IsA"]
       10 CALL                             R7 2 1
       11 JUMPIFNOT                        R7 ; [+21]
       12 GETTABLEKS                       R8 R6 K3 ["Guid"]
       14 GETIMPORT                        R9 K6 [string.match]
       16 MOVE                             R10 R8
       17 LOADK                            R11 K7 ["[1-9a-fA-F]"]
       18 CALL                             R9 2 1
       19 JUMPIFNOTEQKNIL                  R9 ; [+2]
       21 LOADB                            R7 0 +1
       22 LOADB                            R7 1
       23 JUMPIFNOT                        R7 ; [+9]
       24 MOVE                             R8 R1
       25 GETUPVAL                         R9 0
       26 GETTABLEKS                       R10 R6 K3 ["Guid"]
       28 CALL                             R9 1 -1
       29 FASTCALL                         TABLE_INSERT ; [+2]
       30 GETIMPORT                        R7 K10 [table.insert]
       32 CALL                             R7 -1 0
       33 FORGLOOP                         R2 2 ; [-27]
       35 GETUPVAL                         R2 1
       36 LOADK                            R4 K11 ["AnimationClipPublished"]
       37 GETUPVAL                         R5 2
       38 DUPTABLE                         R7 K16 [{"assetId", "isOverride", "deleteLocal", "guids"}]
       39 GETTABLEKS                       R8 R0 K12 ["assetId"]
       41 SETTABLEKS                       R8 R7 K12 ["assetId"]
       43 GETTABLEKS                       R8 R0 K13 ["isOverride"]
       45 SETTABLEKS                       R8 R7 K13 ["isOverride"]
       47 GETTABLEKS                       R9 R0 K14 ["deleteLocal"]
       49 JUMPIFEQKB                       R9 TRUE ; [+2]
       51 LOADB                            R8 0 +1
       52 LOADB                            R8 1
       53 SETTABLEKS                       R8 R7 K14 ["deleteLocal"]
       55 SETTABLEKS                       R1 R7 K15 ["guids"]
       57 NAMECALL                         R5 R5 K17 ["JSONEncode"]
       59 CALL                             R5 2 -1
       60 NAMECALL                         R2 R2 K18 ["Fire"]
       62 CALL                             R2 -1 0
       63 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFEQKNIL                     R1 ; [+4]
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R1
        7 CALL                             R2 1 0
        8 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["AnimationClipPublished"]
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          VAL R0
        5 NAMECALL                         R1 R1 K1 ["Bind"]
        7 CALL                             R1 3 -1
        8 RETURN                           R1 -1

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["Guid"]
        2 GETIMPORT                        R3 K3 [string.match]
        4 MOVE                             R4 R2
        5 LOADK                            R5 K4 ["[1-9a-fA-F]"]
        6 CALL                             R3 2 1
        7 JUMPIFNOTEQKNIL                  R3 ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 JUMPIF                           R1 ; [+2]
       12 LOADNIL                          R1
       13 RETURN                           R1 1
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R2 R0 K0 ["Guid"]
       17 CALL                             R1 1 -1
       18 RETURN                           R1 -1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getNormalizedGuid"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKNIL                  R2 ; [+3]
        7 LOADB                            R3 0
        8 RETURN                           R3 1
        9 GETTABLEKS                       R5 R0 K1 ["animationClipGuids"]
       11 GETTABLE                         R4 R5 R2
       12 JUMPIFEQKB                       R4 TRUE ; [+2]
       14 LOADB                            R3 0 +1
       15 LOADB                            R3 1
       16 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["MemStorageService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 DUPCLOSURE                       R2 K5 [PROTO_0]
       14 DUPCLOSURE                       R3 K6 [PROTO_1]
       15 DUPCLOSURE                       R4 K7 [PROTO_2]
       16 CAPTURE                          VAL R0
       17 NEWTABLE                         R5 4 0
       19 DUPCLOSURE                       R6 K8 [PROTO_3]
       20 CAPTURE                          VAL R2
       21 CAPTURE                          VAL R1
       22 CAPTURE                          VAL R0
       23 SETTABLEKS                       R6 R5 K9 ["notifyAnimationPublished"]
       25 DUPCLOSURE                       R6 K10 [PROTO_5]
       26 CAPTURE                          VAL R1
       27 CAPTURE                          VAL R4
       28 SETTABLEKS                       R6 R5 K11 ["onAnimationPublished"]
       30 DUPCLOSURE                       R6 K12 [PROTO_6]
       31 CAPTURE                          VAL R2
       32 SETTABLEKS                       R6 R5 K13 ["getNormalizedGuid"]
       34 DUPCLOSURE                       R6 K14 [PROTO_7]
       35 CAPTURE                          VAL R5
       36 SETTABLEKS                       R6 R5 K15 ["isAnimationClipPublished"]
       38 RETURN                           R5 1
