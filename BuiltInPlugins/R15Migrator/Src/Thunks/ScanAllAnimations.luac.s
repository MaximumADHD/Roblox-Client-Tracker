PROTO_0:
        0 LOADK                            R3 K0 ["Script"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R5 R6 K0 ["isR6Animation"]
        3 MOVE                             R6 R2
        4 CALL                             R5 1 1
        5 JUMPIF                           R5 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R6 1
        8 GETTABLEKS                       R5 R6 K1 ["new"]
       10 MOVE                             R6 R2
       11 GETUPVAL                         R7 2
       12 MOVE                             R8 R4
       13 MOVE                             R9 R0
       14 MOVE                             R10 R1
       15 CALL                             R7 3 1
       16 GETUPVAL                         R8 3
       17 CALL                             R5 3 -1
       18 RETURN                           R5 -1

PROTO_2:
        0 PREPVARARGS                      0
        1 GETVARARGS                       R1 5
        2 GETUPVAL                         R7 0
        3 GETTABLEKS                       R6 R7 K0 ["isR6Animation"]
        5 MOVE                             R7 R3
        6 CALL                             R6 1 1
        7 JUMPIF                           R6 ; [+2]
        8 LOADNIL                          R0
        9 JUMP                             ; [+12]
       10 GETUPVAL                         R7 1
       11 GETTABLEKS                       R6 R7 K1 ["new"]
       13 MOVE                             R7 R3
       14 GETUPVAL                         R8 2
       15 MOVE                             R9 R5
       16 MOVE                             R10 R1
       17 MOVE                             R11 R2
       18 CALL                             R8 3 1
       19 GETUPVAL                         R9 3
       20 CALL                             R6 3 1
       21 MOVE                             R0 R6
       22 JUMPIF                           R0 ; [+1]
       23 RETURN                           R0 0
       24 NAMECALL                         R1 R0 K2 ["id"]
       26 CALL                             R1 1 1
       27 GETUPVAL                         R3 4
       28 GETTABLE                         R2 R3 R1
       29 JUMPIF                           R2 ; [+4]
       30 GETUPVAL                         R2 4
       31 NEWTABLE                         R3 0 0
       33 SETTABLE                         R3 R2 R1
       34 GETUPVAL                         R4 4
       35 GETTABLE                         R3 R4 R1
       36 FASTCALL2                        TABLE_INSERT R3 R0 ; [+4]
       38 MOVE                             R4 R0
       39 GETIMPORT                        R2 K5 [table.insert]
       41 CALL                             R2 2 0
       42 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 NEWCLOSURE                       R5 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CALL                             R2 3 0
       10 RETURN                           R0 0

PROTO_4:
        0 PREPVARARGS                      0
        1 GETVARARGS                       R1 5
        2 GETUPVAL                         R7 0
        3 GETTABLEKS                       R6 R7 K0 ["isR6Animation"]
        5 MOVE                             R7 R3
        6 CALL                             R6 1 1
        7 JUMPIF                           R6 ; [+2]
        8 LOADNIL                          R0
        9 JUMP                             ; [+12]
       10 GETUPVAL                         R7 1
       11 GETTABLEKS                       R6 R7 K1 ["new"]
       13 MOVE                             R7 R3
       14 GETUPVAL                         R8 2
       15 MOVE                             R9 R5
       16 MOVE                             R10 R1
       17 MOVE                             R11 R2
       18 CALL                             R8 3 1
       19 GETUPVAL                         R9 3
       20 CALL                             R6 3 1
       21 MOVE                             R0 R6
       22 JUMPIF                           R0 ; [+1]
       23 RETURN                           R0 0
       24 NAMECALL                         R1 R0 K2 ["id"]
       26 CALL                             R1 1 1
       27 GETUPVAL                         R3 4
       28 GETTABLE                         R2 R3 R1
       29 JUMPIFNOT                        R2 ; [+10]
       30 GETUPVAL                         R5 4
       31 GETTABLE                         R2 R5 R1
       32 LOADNIL                          R3
       33 LOADNIL                          R4
       34 FORGPREP                         R2
       35 JUMPIFNOTEQ                      R6 R0 ; [+2]
       37 RETURN                           R0 0
       38 FORGLOOP                         R2 2 ; [-4]
       40 GETUPVAL                         R3 5
       41 GETTABLE                         R2 R3 R1
       42 JUMPIF                           R2 ; [+4]
       43 GETUPVAL                         R2 5
       44 NEWTABLE                         R3 0 0
       46 SETTABLE                         R3 R2 R1
       47 GETUPVAL                         R4 5
       48 GETTABLE                         R3 R4 R1
       49 FASTCALL2                        TABLE_INSERT R3 R0 ; [+4]
       51 MOVE                             R4 R0
       52 GETIMPORT                        R2 K5 [table.insert]
       54 CALL                             R2 2 0
       55 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R5 1
        3 ADD                              R4 R1 R5
        4 NEWCLOSURE                       R5 P0
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CAPTURE                          UPVAL U6
       10 CAPTURE                          UPVAL U7
       11 CALL                             R2 3 0
       12 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R6 1
        2 GETTABLEKS                       R5 R6 K0 ["Status"]
        4 GETTABLEKS                       R4 R5 K1 ["ScanningScripts"]
        6 CALL                             R3 1 -1
        7 NAMECALL                         R1 R0 K2 ["dispatch"]
        9 CALL                             R1 -1 0
       10 GETUPVAL                         R1 2
       11 GETUPVAL                         R2 3
       12 CALL                             R1 1 1
       13 NEWTABLE                         R2 0 0
       15 NEWTABLE                         R3 0 0
       17 MOVE                             R4 R1
       18 LOADNIL                          R5
       19 LOADNIL                          R6
       20 FORGPREP                         R4
       21 GETUPVAL                         R9 4
       22 MOVE                             R11 R8
       23 NAMECALL                         R9 R9 K3 ["GetEditorSource"]
       25 CALL                             R9 2 1
       26 NEWCLOSURE                       R10 P0
       27 CAPTURE                          UPVAL U5
       28 CAPTURE                          UPVAL U6
       29 CAPTURE                          UPVAL U7
       30 CAPTURE                          VAL R8
       31 GETUPVAL                         R12 8
       32 GETTABLEKS                       R11 R12 K4 ["ForEachLine"]
       34 MOVE                             R12 R9
       35 NEWCLOSURE                       R13 P1
       36 CAPTURE                          UPVAL U9
       37 CAPTURE                          UPVAL U5
       38 CAPTURE                          UPVAL U6
       39 CAPTURE                          UPVAL U7
       40 CAPTURE                          VAL R8
       41 CAPTURE                          VAL R2
       42 CALL                             R11 2 0
       43 GETUPVAL                         R11 10
       44 MOVE                             R13 R8
       45 NAMECALL                         R11 R11 K5 ["GetScriptBackupChunks"]
       47 CALL                             R11 2 1
       48 JUMPIFNOT                        R11 ; [+35]
       49 GETUPVAL                         R12 10
       50 MOVE                             R14 R8
       51 MOVE                             R15 R11
       52 NAMECALL                         R12 R12 K6 ["DidSourceChange"]
       54 CALL                             R12 3 1
       55 JUMPIFNOT                        R12 ; [+28]
       56 LOADN                            R12 0
       57 MOVE                             R13 R11
       58 LOADNIL                          R14
       59 LOADNIL                          R15
       60 FORGPREP                         R13
       61 GETUPVAL                         R19 8
       62 GETTABLEKS                       R18 R19 K4 ["ForEachLine"]
       64 MOVE                             R19 R17
       65 NEWCLOSURE                       R20 P2
       66 CAPTURE                          UPVAL U9
       67 CAPTURE                          REF R12
       68 CAPTURE                          UPVAL U5
       69 CAPTURE                          UPVAL U6
       70 CAPTURE                          UPVAL U7
       71 CAPTURE                          VAL R8
       72 CAPTURE                          VAL R2
       73 CAPTURE                          VAL R3
       74 CALL                             R18 2 0
       75 LOADK                            R20 K7 ["\n"]
       76 LOADK                            R21 K7 ["\n"]
       77 NAMECALL                         R18 R17 K8 ["gsub"]
       79 CALL                             R18 3 2
       80 ADD                              R12 R12 R19
       81 FORGLOOP                         R13 2 ; [-21]
       83 CLOSEUPVALS                      R12
       84 FORGLOOP                         R4 2 ; [-64]
       86 RETURN                           R2 2

PROTO_7:
        0 LOADK                            R3 K0 ["Animation"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+4]
        5 LOADK                            R3 K2 ["KeyframeSequence"]
        6 NAMECALL                         R1 R0 K1 ["IsA"]
        8 CALL                             R1 2 1
        9 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R6 1
        2 GETTABLEKS                       R5 R6 K0 ["Status"]
        4 GETTABLEKS                       R4 R5 K1 ["ScanningWorkspace"]
        6 CALL                             R3 1 -1
        7 NAMECALL                         R1 R0 K2 ["dispatch"]
        9 CALL                             R1 -1 0
       10 GETUPVAL                         R1 2
       11 DUPCLOSURE                       R2 K3 [PROTO_7]
       12 CALL                             R1 1 1
       13 NEWTABLE                         R2 0 0
       15 NEWTABLE                         R3 0 0
       17 NEWTABLE                         R4 0 0
       19 MOVE                             R5 R1
       20 LOADNIL                          R6
       21 LOADNIL                          R7
       22 FORGPREP                         R5
       23 GETUPVAL                         R11 3
       24 GETTABLEKS                       R10 R11 K4 ["isConvertibleKeyframeSequence"]
       26 MOVE                             R11 R9
       27 CALL                             R10 1 1
       28 JUMPIFNOT                        R10 ; [+14]
       29 GETUPVAL                         R11 4
       30 GETTABLEKS                       R10 R11 K5 ["isR6KeyframeSequence"]
       32 MOVE                             R11 R9
       33 CALL                             R10 1 1
       34 JUMPIF                           R10 ; [+8]
       35 FASTCALL2                        TABLE_INSERT R3 R9 ; [+5]
       37 MOVE                             R11 R3
       38 MOVE                             R12 R9
       39 GETIMPORT                        R10 K8 [table.insert]
       41 CALL                             R10 2 0
       42 JUMP                             ; [+41]
       43 GETUPVAL                         R11 4
       44 GETTABLEKS                       R10 R11 K9 ["isR6Animation"]
       46 MOVE                             R11 R9
       47 CALL                             R10 1 1
       48 JUMPIFNOT                        R10 ; [+13]
       49 FASTCALL2                        TABLE_INSERT R2 R9 ; [+5]
       51 MOVE                             R11 R2
       52 MOVE                             R12 R9
       53 GETIMPORT                        R10 K8 [table.insert]
       55 CALL                             R10 2 0
       56 GETUPVAL                         R10 5
       57 MOVE                             R12 R9
       58 NAMECALL                         R10 R10 K10 ["addTag"]
       60 CALL                             R10 2 0
       61 JUMP                             ; [+22]
       62 GETUPVAL                         R12 6
       63 NAMECALL                         R10 R9 K11 ["GetAttribute"]
       65 CALL                             R10 2 1
       66 JUMPIFNOT                        R10 ; [+17]
       67 LOADK                            R12 K12 ["Animation"]
       68 NAMECALL                         R10 R9 K13 ["IsA"]
       70 CALL                             R10 2 1
       71 JUMPIFNOT                        R10 ; [+8]
       72 FASTCALL2                        TABLE_INSERT R4 R9 ; [+5]
       74 MOVE                             R11 R4
       75 MOVE                             R12 R9
       76 GETIMPORT                        R10 K8 [table.insert]
       78 CALL                             R10 2 0
       79 JUMP                             ; [+4]
       80 GETIMPORT                        R10 K15 [warn]
       82 LOADK                            R11 K16 ["OriginalId Attribute should only be found on Animation Instances. Were Attributes manually edited?"]
       83 CALL                             R10 1 0
       84 FORGLOOP                         R5 2 ; [-62]
       86 RETURN                           R2 3

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["id"]
        4 NAMECALL                         R0 R0 K1 ["GetProductInfo"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_10:
        0 NEWTABLE                         R1 0 0
        2 LOADN                            R2 1
        3 MOVE                             R3 R0
        4 LOADNIL                          R4
        5 LOADNIL                          R5
        6 FORGPREP                         R3
        7 GETUPVAL                         R9 0
        8 GETTABLEKS                       R8 R9 K0 ["getAnimationAssetInfo"]
       10 MOVE                             R9 R7
       11 CALL                             R8 1 1
       12 GETTABLEKS                       R9 R7 K1 ["Name"]
       14 GETUPVAL                         R13 1
       15 GETTABLEKS                       R12 R13 K2 ["RobloxAsset"]
       17 NAMECALL                         R10 R8 K3 ["IsA"]
       19 CALL                             R10 2 1
       20 JUMPIFNOT                        R10 ; [+14]
       21 GETTABLEKS                       R11 R8 K4 ["id"]
       23 GETTABLE                         R10 R1 R11
       24 JUMPIF                           R10 ; [+10]
       25 GETIMPORT                        R10 K6 [pcall]
       27 NEWCLOSURE                       R11 P0
       28 CAPTURE                          UPVAL U2
       29 CAPTURE                          VAL R8
       30 CALL                             R10 1 2
       31 JUMPIFNOT                        R10 ; [+3]
       32 GETTABLEKS                       R9 R11 K1 ["Name"]
       34 JUMP                             ; [0]
       35 GETUPVAL                         R13 1
       36 GETTABLEKS                       R12 R13 K2 ["RobloxAsset"]
       38 NAMECALL                         R10 R8 K3 ["IsA"]
       40 CALL                             R10 2 1
       41 JUMPIFNOT                        R10 ; [+11]
       42 GETUPVAL                         R12 3
       43 NAMECALL                         R10 R7 K7 ["GetAttribute"]
       45 CALL                             R10 2 1
       46 JUMPIF                           R10 ; [+6]
       47 GETUPVAL                         R12 3
       48 GETTABLEKS                       R13 R8 K4 ["id"]
       50 NAMECALL                         R10 R7 K8 ["SetAttribute"]
       52 CALL                             R10 3 0
       53 GETTABLEKS                       R11 R8 K4 ["id"]
       55 GETTABLE                         R10 R1 R11
       56 JUMPIF                           R10 ; [+13]
       57 GETTABLEKS                       R10 R8 K4 ["id"]
       59 GETUPVAL                         R12 4
       60 GETTABLEKS                       R11 R12 K9 ["new"]
       62 MOVE                             R12 R8
       63 MOVE                             R13 R9
       64 MOVE                             R14 R2
       65 LOADNIL                          R15
       66 LOADNIL                          R16
       67 CALL                             R11 5 1
       68 SETTABLE                         R11 R1 R10
       69 ADDK                             R2 R2 K10 [1]
       70 GETTABLEKS                       R12 R8 K4 ["id"]
       72 GETTABLE                         R11 R1 R12
       73 GETTABLEKS                       R10 R11 K11 ["refs"]
       75 SETTABLE                         R8 R10 R7
       76 FORGLOOP                         R3 2 ; [-70]
       78 RETURN                           R1 1

PROTO_11:
        0 NEWTABLE                         R3 0 0
        2 MOVE                             R4 R0
        3 LOADNIL                          R5
        4 LOADNIL                          R6
        5 FORGPREP                         R4
        6 LOADB                            R9 1
        7 SETTABLE                         R9 R3 R7
        8 FORGLOOP                         R4 2 ; [-3]
       10 MOVE                             R4 R1
       11 LOADNIL                          R5
       12 LOADNIL                          R6
       13 FORGPREP                         R4
       14 LOADB                            R9 1
       15 SETTABLE                         R9 R3 R7
       16 FORGLOOP                         R4 2 ; [-3]
       18 MOVE                             R4 R2
       19 LOADNIL                          R5
       20 LOADNIL                          R6
       21 FORGPREP                         R4
       22 GETTABLEKS                       R9 R8 K0 ["animationAssetInfo"]
       24 GETUPVAL                         R12 0
       25 GETTABLEKS                       R11 R12 K1 ["RobloxAsset"]
       27 NAMECALL                         R9 R9 K2 ["IsA"]
       29 CALL                             R9 2 1
       30 JUMPIFNOT                        R9 ; [+2]
       31 LOADB                            R9 1
       32 SETTABLE                         R9 R3 R7
       33 FORGLOOP                         R4 2 ; [-12]
       35 RETURN                           R3 1

PROTO_12:
        0 GETUPVAL                         R6 0
        1 GETUPVAL                         R9 1
        2 GETTABLEKS                       R8 R9 K0 ["Status"]
        4 GETTABLEKS                       R7 R8 K1 ["ConvertingAnimations"]
        6 CALL                             R6 1 -1
        7 NAMECALL                         R4 R0 K2 ["dispatch"]
        9 CALL                             R4 -1 0
       10 MOVE                             R4 R3
       11 LOADNIL                          R5
       12 LOADNIL                          R6
       13 FORGPREP                         R4
       14 GETTABLEKS                       R9 R8 K3 ["animationAssetInfo"]
       16 GETUPVAL                         R12 2
       17 GETTABLEKS                       R11 R12 K4 ["RobloxAsset"]
       19 NAMECALL                         R9 R9 K5 ["IsA"]
       21 CALL                             R9 2 1
       22 JUMPIFNOT                        R9 ; [+1]
       23 JUMP                             ; [+22]
       24 GETTABLEKS                       R9 R8 K3 ["animationAssetInfo"]
       26 GETUPVAL                         R12 2
       27 GETTABLEKS                       R11 R12 K6 ["LocalAsset"]
       29 NAMECALL                         R9 R9 K5 ["IsA"]
       31 CALL                             R9 2 1
       32 JUMPIFNOT                        R9 ; [+13]
       33 GETTABLEKS                       R9 R8 K7 ["refs"]
       35 LOADNIL                          R10
       36 LOADNIL                          R11
       37 FORGPREP                         R9
       38 GETUPVAL                         R15 3
       39 GETTABLEKS                       R14 R15 K8 ["convertAnimation"]
       41 MOVE                             R15 R12
       42 CALL                             R14 1 0
       43 JUMP                             ; [+2]
       44 FORGLOOP                         R9 1 ; [-7]
       46 FORGLOOP                         R4 2 ; [-33]
       48 GETUPVAL                         R5 3
       49 GETTABLEKS                       R4 R5 K9 ["checkIfAssetsAlreadyConverted"]
       51 MOVE                             R5 R1
       52 MOVE                             R6 R2
       53 CALL                             R4 2 1
       54 MOVE                             R5 R4
       55 LOADNIL                          R6
       56 LOADNIL                          R7
       57 FORGPREP                         R5
       58 GETTABLE                         R10 R3 R8
       59 JUMPIFNOT                        R10 ; [+3]
       60 GETTABLE                         R10 R3 R8
       61 SETTABLEKS                       R9 R10 K10 ["converted"]
       63 FORGLOOP                         R5 2 ; [-6]
       65 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["getOriginalR6KeyframeSequences"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 1
        5 GETUPVAL                         R7 1
        6 GETTABLEKS                       R6 R7 K2 ["Dictionary"]
        8 GETTABLEKS                       R5 R6 K3 ["keys"]
       10 MOVE                             R6 R0
       11 CALL                             R5 1 1
       12 LENGTH                           R4 R5
       13 ADDK                             R3 R4 K1 [1]
       14 MOVE                             R4 R2
       15 LOADNIL                          R5
       16 LOADNIL                          R6
       17 FORGPREP                         R4
       18 GETUPVAL                         R10 2
       19 GETTABLEKS                       R9 R10 K4 ["registerConvertedKeyframeSequence"]
       21 MOVE                             R10 R8
       22 MOVE                             R11 R7
       23 CALL                             R9 2 0
       24 GETUPVAL                         R10 2
       25 GETTABLEKS                       R9 R10 K5 ["getAnimationAssetInfo"]
       27 MOVE                             R10 R8
       28 CALL                             R9 1 1
       29 GETTABLEKS                       R10 R9 K6 ["id"]
       31 GETTABLE                         R11 R0 R10
       32 JUMPIF                           R11 ; [+14]
       33 GETUPVAL                         R12 3
       34 GETTABLEKS                       R11 R12 K7 ["new"]
       36 MOVE                             R12 R9
       37 GETTABLEKS                       R13 R7 K8 ["Name"]
       39 MOVE                             R14 R3
       40 GETUPVAL                         R16 4
       41 GETTABLEKS                       R15 R16 K9 ["Done"]
       43 LOADNIL                          R16
       44 CALL                             R11 5 1
       45 SETTABLE                         R11 R0 R10
       46 ADDK                             R3 R3 K1 [1]
       47 GETTABLE                         R12 R0 R10
       48 GETTABLEKS                       R11 R12 K10 ["oldRefs"]
       50 SETTABLE                         R9 R11 R7
       51 FORGLOOP                         R4 2 ; [-34]
       53 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R5 R6 K1 ["Dictionary"]
        3 GETTABLEKS                       R4 R5 K2 ["keys"]
        5 MOVE                             R5 R0
        6 CALL                             R4 1 1
        7 LENGTH                           R3 R4
        8 ADDK                             R2 R3 K0 [1]
        9 MOVE                             R3 R1
       10 LOADNIL                          R4
       11 LOADNIL                          R5
       12 FORGPREP                         R3
       13 NAMECALL                         R8 R7 K3 ["Clone"]
       15 CALL                             R8 1 1
       16 GETUPVAL                         R10 1
       17 GETTABLEKS                       R9 R10 K4 ["getAnimationId"]
       19 GETUPVAL                         R12 2
       20 NAMECALL                         R10 R7 K5 ["GetAttribute"]
       22 CALL                             R10 2 -1
       23 CALL                             R9 -1 1
       24 SETTABLEKS                       R9 R8 K6 ["AnimationId"]
       26 GETUPVAL                         R10 1
       27 GETTABLEKS                       R9 R10 K7 ["getAnimationAssetInfo"]
       29 MOVE                             R10 R8
       30 CALL                             R9 1 1
       31 GETTABLEKS                       R10 R9 K8 ["id"]
       33 GETTABLE                         R11 R0 R10
       34 JUMPIF                           R11 ; [+23]
       35 GETUPVAL                         R12 3
       36 GETTABLEKS                       R11 R12 K9 ["new"]
       38 MOVE                             R12 R9
       39 GETTABLEKS                       R13 R7 K10 ["Name"]
       41 MOVE                             R14 R2
       42 GETUPVAL                         R16 4
       43 GETTABLEKS                       R15 R16 K11 ["Done"]
       45 GETUPVAL                         R17 1
       46 GETTABLEKS                       R16 R17 K12 ["getConvertedAssetId"]
       48 MOVE                             R17 R10
       49 CALL                             R16 1 -1
       50 CALL                             R11 -1 1
       51 SETTABLE                         R11 R0 R10
       52 GETUPVAL                         R11 5
       53 MOVE                             R13 R7
       54 NAMECALL                         R11 R11 K13 ["removeTag"]
       56 CALL                             R11 2 0
       57 ADDK                             R2 R2 K0 [1]
       58 GETTABLE                         R12 R0 R10
       59 GETTABLEKS                       R11 R12 K14 ["oldRefs"]
       61 SETTABLE                         R9 R11 R7
       62 FORGLOOP                         R3 2 ; [-50]
       64 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R5 R6 K1 ["Dictionary"]
        3 GETTABLEKS                       R4 R5 K2 ["keys"]
        5 MOVE                             R5 R0
        6 CALL                             R4 1 1
        7 LENGTH                           R3 R4
        8 ADDK                             R2 R3 K0 [1]
        9 MOVE                             R3 R1
       10 LOADNIL                          R4
       11 LOADNIL                          R5
       12 FORGPREP                         R3
       13 MOVE                             R8 R7
       14 LOADNIL                          R9
       15 LOADNIL                          R10
       16 FORGPREP                         R8
       17 GETUPVAL                         R14 1
       18 GETTABLEKS                       R13 R14 K3 ["getAnimationAssetInfo"]
       20 GETTABLEKS                       R14 R12 K4 ["str"]
       22 CALL                             R13 1 1
       23 GETTABLE                         R14 R0 R6
       24 JUMPIF                           R14 ; [+26]
       25 GETUPVAL                         R15 1
       26 GETTABLEKS                       R14 R15 K5 ["getCachedName"]
       28 MOVE                             R15 R6
       29 CALL                             R14 1 1
       30 GETUPVAL                         R16 2
       31 GETTABLEKS                       R15 R16 K6 ["new"]
       33 MOVE                             R16 R13
       34 JUMPIFNOT                        R14 ; [+2]
       35 MOVE                             R17 R14
       36 JUMP                             ; [+2]
       37 GETTABLEKS                       R17 R12 K4 ["str"]
       39 MOVE                             R18 R2
       40 GETUPVAL                         R20 3
       41 GETTABLEKS                       R19 R20 K7 ["Done"]
       43 GETUPVAL                         R21 1
       44 GETTABLEKS                       R20 R21 K8 ["getConvertedAssetId"]
       46 MOVE                             R21 R6
       47 CALL                             R20 1 -1
       48 CALL                             R15 -1 1
       49 SETTABLE                         R15 R0 R6
       50 ADDK                             R2 R2 K0 [1]
       51 GETTABLE                         R15 R0 R6
       52 GETTABLEKS                       R14 R15 K9 ["oldRefs"]
       54 SETTABLE                         R13 R14 R12
       55 FORGLOOP                         R8 2 ; [-39]
       57 FORGLOOP                         R3 2 ; [-45]
       59 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getAllSavedAnimationAssetIds"]
        3 CALL                             R0 0 1
        4 MOVE                             R1 R0
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 GETUPVAL                         R7 1
        9 GETTABLEKS                       R6 R7 K1 ["registerConvertedAssetId"]
       11 MOVE                             R7 R4
       12 GETTABLEKS                       R8 R5 K2 ["converted"]
       14 GETTABLEKS                       R9 R5 K3 ["kfs"]
       16 GETTABLEKS                       R10 R5 K4 ["name"]
       18 CALL                             R6 4 0
       19 GETUPVAL                         R7 1
       20 GETTABLEKS                       R6 R7 K5 ["overrideIsR6Cache"]
       22 GETTABLEKS                       R7 R5 K2 ["converted"]
       24 LOADB                            R8 0
       25 CALL                             R6 2 0
       26 FORGLOOP                         R1 2 ; [-19]
       28 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R1 2
        4 CALL                             R0 1 2
        5 GETUPVAL                         R2 3
        6 GETUPVAL                         R3 2
        7 CALL                             R2 1 3
        8 GETUPVAL                         R5 4
        9 MOVE                             R6 R2
       10 CALL                             R5 1 1
       11 GETUPVAL                         R6 5
       12 MOVE                             R7 R5
       13 MOVE                             R8 R3
       14 CALL                             R6 2 0
       15 GETUPVAL                         R6 6
       16 MOVE                             R7 R5
       17 MOVE                             R8 R4
       18 CALL                             R6 2 0
       19 GETUPVAL                         R6 7
       20 MOVE                             R7 R5
       21 MOVE                             R8 R1
       22 CALL                             R6 2 0
       23 GETUPVAL                         R7 8
       24 GETTABLEKS                       R6 R7 K0 ["addConvertibleKeyframeSequences"]
       26 MOVE                             R7 R2
       27 CALL                             R6 1 0
       28 GETUPVAL                         R7 8
       29 GETTABLEKS                       R6 R7 K1 ["addConvertibleAnimations"]
       31 MOVE                             R7 R2
       32 CALL                             R6 1 0
       33 GETUPVAL                         R7 8
       34 GETTABLEKS                       R6 R7 K2 ["addConvertibleAssetIds"]
       36 GETUPVAL                         R9 9
       37 GETTABLEKS                       R8 R9 K3 ["Dictionary"]
       39 GETTABLEKS                       R7 R8 K4 ["keys"]
       41 MOVE                             R8 R0
       42 CALL                             R7 1 -1
       43 CALL                             R6 -1 0
       44 GETUPVAL                         R6 10
       45 MOVE                             R7 R0
       46 MOVE                             R8 R1
       47 MOVE                             R9 R5
       48 CALL                             R6 3 1
       49 GETUPVAL                         R7 11
       50 LOADK                            R9 K5 ["onInitialAnimationsAnalysisScan"]
       51 NAMECALL                         R7 R7 K6 ["getHandler"]
       53 CALL                             R7 2 1
       54 MOVE                             R8 R6
       55 MOVE                             R9 R5
       56 CALL                             R7 2 0
       57 GETUPVAL                         R7 12
       58 GETUPVAL                         R8 2
       59 GETUPVAL                         R9 13
       60 MOVE                             R10 R6
       61 MOVE                             R11 R5
       62 CALL                             R7 4 0
       63 GETUPVAL                         R7 2
       64 GETUPVAL                         R9 14
       65 MOVE                             R10 R5
       66 CALL                             R9 1 -1
       67 NAMECALL                         R7 R7 K7 ["dispatch"]
       69 CALL                             R7 -1 0
       70 GETUPVAL                         R7 15
       71 CALL                             R7 0 0
       72 GETUPVAL                         R7 2
       73 GETUPVAL                         R9 16
       74 GETUPVAL                         R12 17
       75 GETTABLEKS                       R11 R12 K8 ["Status"]
       77 GETTABLEKS                       R10 R11 K9 ["Done"]
       79 CALL                             R9 1 -1
       80 NAMECALL                         R7 R7 K7 ["dispatch"]
       82 CALL                             R7 -1 0
       83 RETURN                           R0 0

PROTO_18:
        0 GETIMPORT                        R1 K2 [task.spawn]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          UPVAL U5
       10 CAPTURE                          UPVAL U6
       11 CAPTURE                          UPVAL U7
       12 CAPTURE                          UPVAL U8
       13 CAPTURE                          UPVAL U9
       14 CAPTURE                          UPVAL U10
       15 CAPTURE                          UPVAL U11
       16 CAPTURE                          UPVAL U12
       17 CAPTURE                          UPVAL U13
       18 CAPTURE                          UPVAL U14
       19 CAPTURE                          UPVAL U15
       20 CAPTURE                          UPVAL U16
       21 CALL                             R1 1 0
       22 RETURN                           R0 0

PROTO_19:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          UPVAL U5
        7 CAPTURE                          UPVAL U6
        8 CAPTURE                          UPVAL U7
        9 CAPTURE                          UPVAL U8
       10 CAPTURE                          UPVAL U9
       11 CAPTURE                          VAL R0
       12 CAPTURE                          UPVAL U10
       13 CAPTURE                          VAL R1
       14 CAPTURE                          UPVAL U11
       15 CAPTURE                          VAL R2
       16 CAPTURE                          UPVAL U12
       17 CAPTURE                          UPVAL U13
       18 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Cryo"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K9 [game]
       16 LOADK                            R4 K10 ["ScriptEditorService"]
       17 NAMECALL                         R2 R2 K11 ["GetService"]
       19 CALL                             R2 2 1
       20 GETIMPORT                        R3 K9 [game]
       22 LOADK                            R5 K12 ["MarketplaceService"]
       23 NAMECALL                         R3 R3 K11 ["GetService"]
       25 CALL                             R3 2 1
       26 GETTABLEKS                       R6 R0 K13 ["Src"]
       28 GETTABLEKS                       R5 R6 K14 ["Util"]
       30 GETTABLEKS                       R4 R5 K15 ["ScriptAnalysis"]
       32 GETIMPORT                        R5 K5 [require]
       34 GETTABLEKS                       R6 R4 K16 ["StringUtil"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K5 [require]
       39 GETTABLEKS                       R7 R4 K17 ["findAssetId"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K5 [require]
       44 GETTABLEKS                       R8 R4 K18 ["buildRange"]
       46 CALL                             R7 1 1
       47 GETTABLEKS                       R9 R0 K13 ["Src"]
       49 GETTABLEKS                       R8 R9 K14 ["Util"]
       51 GETIMPORT                        R9 K5 [require]
       53 GETTABLEKS                       R10 R8 K19 ["findAllInServices"]
       55 CALL                             R9 1 1
       56 GETIMPORT                        R10 K5 [require]
       58 GETTABLEKS                       R11 R8 K20 ["SaveInterface"]
       60 CALL                             R10 1 1
       61 GETIMPORT                        R11 K5 [require]
       63 GETTABLEKS                       R13 R8 K21 ["AnimationConversion"]
       65 GETTABLEKS                       R12 R13 K22 ["AnimationConversionManager"]
       67 CALL                             R11 1 1
       68 GETIMPORT                        R12 K5 [require]
       70 GETTABLEKS                       R14 R8 K23 ["ScriptHistory"]
       72 GETTABLEKS                       R13 R14 K24 ["ChunkUtil"]
       74 CALL                             R12 1 1
       75 GETIMPORT                        R14 K5 [require]
       77 GETTABLEKS                       R15 R8 K25 ["PublishTagging"]
       79 CALL                             R14 1 1
       80 GETTABLEKS                       R13 R14 K26 ["AnimationTagging"]
       82 GETTABLEKS                       R14 R8 K21 ["AnimationConversion"]
       84 GETIMPORT                        R15 K5 [require]
       86 GETTABLEKS                       R16 R14 K27 ["DiagRef"]
       88 CALL                             R15 1 1
       89 GETIMPORT                        R16 K5 [require]
       91 GETTABLEKS                       R17 R14 K28 ["AnimationState"]
       93 CALL                             R16 1 1
       94 GETIMPORT                        R17 K5 [require]
       96 GETTABLEKS                       R18 R14 K29 ["constants"]
       98 CALL                             R17 1 1
       99 GETTABLEKS                       R18 R17 K30 ["AssetType"]
      101 GETTABLEKS                       R19 R17 K31 ["AnimationStatus"]
      103 GETTABLEKS                       R21 R0 K13 ["Src"]
      105 GETTABLEKS                       R20 R21 K32 ["Actions"]
      107 GETIMPORT                        R21 K5 [require]
      109 GETTABLEKS                       R22 R20 K33 ["SetStatus"]
      111 CALL                             R21 1 1
      112 GETIMPORT                        R22 K5 [require]
      114 GETTABLEKS                       R23 R20 K34 ["SetAnimations"]
      116 CALL                             R22 1 1
      117 GETIMPORT                        R25 K5 [require]
      119 GETTABLEKS                       R28 R0 K13 ["Src"]
      121 GETTABLEKS                       R27 R28 K35 ["Resources"]
      123 GETTABLEKS                       R26 R27 K36 ["Constants"]
      125 CALL                             R25 1 1
      126 GETTABLEKS                       R24 R25 K37 ["Attributes"]
      128 GETTABLEKS                       R23 R24 K38 ["OriginalId"]
      130 DUPCLOSURE                       R24 K39 [PROTO_0]
      131 DUPCLOSURE                       R25 K40 [PROTO_6]
      132 CAPTURE                          VAL R21
      133 CAPTURE                          VAL R17
      134 CAPTURE                          VAL R9
      135 CAPTURE                          VAL R24
      136 CAPTURE                          VAL R2
      137 CAPTURE                          VAL R11
      138 CAPTURE                          VAL R15
      139 CAPTURE                          VAL R7
      140 CAPTURE                          VAL R5
      141 CAPTURE                          VAL R6
      142 CAPTURE                          VAL R12
      143 DUPCLOSURE                       R26 K41 [PROTO_8]
      144 CAPTURE                          VAL R21
      145 CAPTURE                          VAL R17
      146 CAPTURE                          VAL R9
      147 CAPTURE                          VAL R10
      148 CAPTURE                          VAL R11
      149 CAPTURE                          VAL R13
      150 CAPTURE                          VAL R23
      151 DUPCLOSURE                       R27 K42 [PROTO_10]
      152 CAPTURE                          VAL R11
      153 CAPTURE                          VAL R18
      154 CAPTURE                          VAL R3
      155 CAPTURE                          VAL R23
      156 CAPTURE                          VAL R16
      157 DUPCLOSURE                       R28 K43 [PROTO_11]
      158 CAPTURE                          VAL R18
      159 DUPCLOSURE                       R29 K44 [PROTO_12]
      160 CAPTURE                          VAL R21
      161 CAPTURE                          VAL R17
      162 CAPTURE                          VAL R18
      163 CAPTURE                          VAL R11
      164 DUPCLOSURE                       R30 K45 [PROTO_13]
      165 CAPTURE                          VAL R10
      166 CAPTURE                          VAL R1
      167 CAPTURE                          VAL R11
      168 CAPTURE                          VAL R16
      169 CAPTURE                          VAL R19
      170 DUPCLOSURE                       R31 K46 [PROTO_14]
      171 CAPTURE                          VAL R1
      172 CAPTURE                          VAL R11
      173 CAPTURE                          VAL R23
      174 CAPTURE                          VAL R16
      175 CAPTURE                          VAL R19
      176 CAPTURE                          VAL R13
      177 DUPCLOSURE                       R32 K47 [PROTO_15]
      178 CAPTURE                          VAL R1
      179 CAPTURE                          VAL R11
      180 CAPTURE                          VAL R16
      181 CAPTURE                          VAL R19
      182 DUPCLOSURE                       R33 K48 [PROTO_16]
      183 CAPTURE                          VAL R10
      184 CAPTURE                          VAL R11
      185 DUPCLOSURE                       R34 K49 [PROTO_19]
      186 CAPTURE                          VAL R33
      187 CAPTURE                          VAL R25
      188 CAPTURE                          VAL R26
      189 CAPTURE                          VAL R27
      190 CAPTURE                          VAL R30
      191 CAPTURE                          VAL R31
      192 CAPTURE                          VAL R32
      193 CAPTURE                          VAL R10
      194 CAPTURE                          VAL R1
      195 CAPTURE                          VAL R28
      196 CAPTURE                          VAL R29
      197 CAPTURE                          VAL R22
      198 CAPTURE                          VAL R21
      199 CAPTURE                          VAL R17
      200 RETURN                           R34 1
