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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["JSONDecode"]
        3 GETUPVAL                         R3 0
        4 MOVE                             R4 R0
        5 FASTPCALL                        pcall 3 ; [+2]
        6 GETIMPORT                        R1 K2 [pcall]
        8 CALL                             R1 3 2
        9 JUMPIFNOT                        R1 ; [+7]
       10 FASTCALL1                        TYPEOF R2 ; [+3]
       11 MOVE                             R4 R2
       12 GETIMPORT                        R3 K4 [typeof]
       14 CALL                             R3 1 1
       15 JUMPIFEQKS                       R3 K5 ["table"] ; [+3]
       17 LOADNIL                          R3
       18 RETURN                           R3 1
       19 GETTABLEKS                       R3 R2 K6 ["assetId"]
       21 FASTCALL1                        TYPEOF R3 ; [+3]
       22 MOVE                             R5 R3
       23 GETIMPORT                        R4 K4 [typeof]
       25 CALL                             R4 1 1
       26 JUMPIFEQKS                       R4 K7 ["string"] ; [+10]
       28 FASTCALL1                        TYPEOF R3 ; [+3]
       29 MOVE                             R5 R3
       30 GETIMPORT                        R4 K4 [typeof]
       32 CALL                             R4 1 1
       33 JUMPIFEQKS                       R4 K8 ["number"] ; [+3]
       35 LOADNIL                          R4
       36 RETURN                           R4 1
       37 NEWTABLE                         R4 0 0
       39 GETTABLEKS                       R6 R2 K9 ["guids"]
       41 FASTCALL1                        TYPEOF R6 ; [+2]
       42 GETIMPORT                        R5 K4 [typeof]
       44 CALL                             R5 1 1
       45 JUMPIFNOTEQKS                    R5 K5 ["table"] ; [+31]
       47 GETTABLEKS                       R5 R2 K9 ["guids"]
       49 LOADNIL                          R6
       50 LOADNIL                          R7
       51 FORGPREP                         R5
       52 FASTCALL1                        TYPEOF R9 ; [+3]
       53 MOVE                             R11 R9
       54 GETIMPORT                        R10 K4 [typeof]
       56 CALL                             R10 1 1
       57 JUMPIFNOTEQKS                    R10 K7 ["string"] ; [+17]
       59 GETIMPORT                        R11 K11 [string.match]
       61 MOVE                             R12 R9
       62 LOADK                            R13 K12 ["[1-9a-fA-F]"]
       63 CALL                             R11 2 1
       64 JUMPIFNOTEQKNIL                  R11 ; [+2]
       66 LOADB                            R10 0 +1
       67 LOADB                            R10 1
       68 JUMPIFNOT                        R10 ; [+6]
       69 GETIMPORT                        R10 K14 [string.lower]
       71 MOVE                             R11 R9
       72 CALL                             R10 1 1
       73 LOADB                            R11 1
       74 SETTABLE                         R11 R4 R10
       75 FORGLOOP                         R5 2 ; [-24]
       77 DUPTABLE                         R5 K18 [{"assetId", "isOverride", "deleteLocal", "animationClipGuids"}]
       78 FASTCALL1                        TOSTRING R3 ; [+3]
       79 MOVE                             R7 R3
       80 GETIMPORT                        R6 K20 [tostring]
       82 CALL                             R6 1 1
       83 SETTABLEKS                       R6 R5 K6 ["assetId"]
       85 GETTABLEKS                       R7 R2 K15 ["isOverride"]
       87 JUMPIFEQKB                       R7 TRUE ; [+2]
       89 LOADB                            R6 0 +1
       90 LOADB                            R6 1
       91 SETTABLEKS                       R6 R5 K15 ["isOverride"]
       93 GETTABLEKS                       R7 R2 K16 ["deleteLocal"]
       95 JUMPIFEQKB                       R7 TRUE ; [+2]
       97 LOADB                            R6 0 +1
       98 LOADB                            R6 1
       99 SETTABLEKS                       R6 R5 K16 ["deleteLocal"]
      101 SETTABLEKS                       R4 R5 K17 ["animationClipGuids"]
      103 RETURN                           R5 1

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
