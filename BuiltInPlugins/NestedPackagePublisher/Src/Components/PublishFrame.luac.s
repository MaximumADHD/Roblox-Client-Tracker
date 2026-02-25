PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["PackageUIService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 LOADK                            R3 K0 ["PackageLink"]
        3 NAMECALL                         R1 R0 K1 ["FindFirstChildOfClass"]
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["Name"]
        2 RETURN                           R1 1

PROTO_3:
        0 GETIMPORT                        R2 K1 [pcall]
        2 GETUPVAL                         R3 0
        3 MOVE                             R4 R0
        4 CALL                             R2 2 1
        5 NOT                              R1 R2
        6 RETURN                           R1 1

PROTO_4:
        0 GETIMPORT                        R4 K1 [pcall]
        2 GETUPVAL                         R5 0
        3 MOVE                             R6 R1
        4 CALL                             R4 2 1
        5 NOT                              R3 R4
        6 JUMPIFNOT                        R3 ; [+1]
        7 RETURN                           R0 0
        8 JUMPIF                           R1 ; [+2]
        9 LOADNIL                          R3
       10 JUMP                             ; [+4]
       11 LOADK                            R5 K2 ["PackageLink"]
       12 NAMECALL                         R3 R1 K3 ["FindFirstChildOfClass"]
       14 CALL                             R3 2 1
       15 JUMPIFNOT                        R3 ; [+18]
       16 GETTABLEKS                       R5 R3 K4 ["PackageId"]
       18 GETTABLE                         R4 R2 R5
       19 JUMPIFNOT                        R4 ; [+14]
       20 GETTABLEKS                       R5 R4 K5 ["oldVersionId"]
       22 GETTABLEKS                       R6 R3 K6 ["VersionNumber"]
       24 JUMPIFNOTEQ                      R5 R6 ; [+9]
       26 FASTCALL2                        TABLE_INSERT R0 R1 ; [+5]
       28 MOVE                             R6 R0
       29 MOVE                             R7 R1
       30 GETIMPORT                        R5 K9 [table.insert]
       32 CALL                             R5 2 0
       33 RETURN                           R0 0
       34 NAMECALL                         R4 R1 K10 ["GetChildren"]
       36 CALL                             R4 1 3
       37 FORGPREP                         R4
       38 GETUPVAL                         R9 1
       39 MOVE                             R10 R0
       40 MOVE                             R11 R8
       41 MOVE                             R12 R2
       42 CALL                             R9 3 0
       43 FORGLOOP                         R4 2 ; [-6]
       45 RETURN                           R0 0

PROTO_5:
        0 NEWTABLE                         R2 0 0
        2 GETUPVAL                         R3 0
        3 MOVE                             R4 R2
        4 MOVE                             R5 R0
        5 MOVE                             R6 R1
        6 CALL                             R3 3 0
        7 RETURN                           R2 1

PROTO_6:
        0 GETIMPORT                        R4 K1 [pcall]
        2 GETUPVAL                         R5 0
        3 MOVE                             R6 R1
        4 CALL                             R4 2 1
        5 NOT                              R3 R4
        6 JUMPIFNOT                        R3 ; [+1]
        7 RETURN                           R0 0
        8 JUMPIF                           R1 ; [+2]
        9 LOADNIL                          R3
       10 JUMP                             ; [+4]
       11 LOADK                            R5 K2 ["PackageLink"]
       12 NAMECALL                         R3 R1 K3 ["FindFirstChildOfClass"]
       14 CALL                             R3 2 1
       15 JUMPIFNOT                        R3 ; [+24]
       16 GETTABLEKS                       R5 R3 K4 ["PackageId"]
       18 GETTABLE                         R4 R0 R5
       19 JUMPIF                           R4 ; [+10]
       20 GETTABLEKS                       R4 R3 K4 ["PackageId"]
       22 DUPTABLE                         R5 K7 [{"instance", "parents"}]
       23 SETTABLEKS                       R1 R5 K5 ["instance"]
       25 NEWTABLE                         R6 0 0
       27 SETTABLEKS                       R6 R5 K6 ["parents"]
       29 SETTABLE                         R5 R0 R4
       30 JUMPIFNOT                        R2 ; [+7]
       31 GETTABLEKS                       R6 R3 K4 ["PackageId"]
       33 GETTABLE                         R5 R0 R6
       34 GETTABLEKS                       R4 R5 K6 ["parents"]
       36 GETTABLE                         R5 R0 R2
       37 SETTABLE                         R5 R4 R2
       38 GETTABLEKS                       R2 R3 K4 ["PackageId"]
       40 NAMECALL                         R4 R1 K8 ["GetChildren"]
       42 CALL                             R4 1 3
       43 FORGPREP                         R4
       44 GETUPVAL                         R9 1
       45 MOVE                             R10 R0
       46 MOVE                             R11 R8
       47 MOVE                             R12 R2
       48 CALL                             R9 3 0
       49 FORGLOOP                         R4 2 ; [-6]
       51 RETURN                           R0 0

PROTO_7:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 MOVE                             R3 R1
        4 MOVE                             R4 R0
        5 LOADNIL                          R5
        6 CALL                             R2 3 0
        7 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 NAMECALL                         R0 R0 K0 ["SetPackageVersion"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_9:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R2
        2 JUMP                             ; [+4]
        3 LOADK                            R4 K0 ["PackageLink"]
        4 NAMECALL                         R2 R0 K1 ["FindFirstChildOfClass"]
        6 CALL                             R2 2 1
        7 JUMPIF                           R2 ; [+1]
        8 RETURN                           R0 0
        9 FASTCALL1                        TYPEOF R1 ; [+3]
       10 MOVE                             R3 R1
       11 GETIMPORT                        R2 K3 [typeof]
       13 CALL                             R2 1 1
       14 JUMPIFEQKS                       R2 K4 ["number"] ; [+2]
       16 RETURN                           R0 0
       17 GETIMPORT                        R2 K6 [pcall]
       19 NEWCLOSURE                       R3 P0
       20 CAPTURE                          UPVAL U0
       21 CAPTURE                          VAL R0
       22 CAPTURE                          VAL R1
       23 CALL                             R2 1 2
       24 JUMPIFNOT                        R2 ; [+1]
       25 JUMPIF                           R3 ; [+5]
       26 GETIMPORT                        R4 K8 [warn]
       28 MOVE                             R5 R3
       29 CALL                             R4 1 0
       30 RETURN                           R0 0
       31 RETURN                           R3 1

PROTO_10:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 GETTABLEKS                       R1 R0 K0 ["Parent"]
        4 JUMPIF                           R1 ; [+1]
        5 RETURN                           R0 0
        6 JUMPIF                           R1 ; [+2]
        7 LOADNIL                          R2
        8 JUMP                             ; [+4]
        9 LOADK                            R4 K1 ["PackageLink"]
       10 NAMECALL                         R2 R1 K2 ["FindFirstChildOfClass"]
       12 CALL                             R2 2 1
       13 JUMPIFNOT                        R2 ; [+1]
       14 RETURN                           R1 1
       15 GETUPVAL                         R3 0
       16 MOVE                             R4 R1
       17 CALL                             R3 1 -1
       18 RETURN                           R3 -1

PROTO_11:
        0 GETTABLEKS                       R2 R0 K0 ["Depth"]
        2 GETTABLEKS                       R3 R1 K0 ["Depth"]
        4 JUMPIFNOTEQ                      R2 R3 ; [+10]
        6 GETTABLEKS                       R3 R0 K1 ["PackageId"]
        8 GETTABLEKS                       R4 R1 K1 ["PackageId"]
       10 JUMPIFLT                         R3 R4 ; [+2]
       12 LOADB                            R2 0 +1
       13 LOADB                            R2 1
       14 RETURN                           R2 1
       15 GETTABLEKS                       R3 R0 K0 ["Depth"]
       17 GETTABLEKS                       R4 R1 K0 ["Depth"]
       19 JUMPIFLT                         R3 R4 ; [+2]
       21 LOADB                            R2 0 +1
       22 LOADB                            R2 1
       23 RETURN                           R2 1

PROTO_12:
        0 GETIMPORT                        R0 K2 [string.match]
        2 GETUPVAL                         R1 0
        3 LOADK                            R2 K3 ["%d+"]
        4 CALL                             R0 2 1
        5 GETUPVAL                         R1 1
        6 MOVE                             R3 R0
        7 NAMECALL                         R1 R1 K4 ["GetPackageInfo"]
        9 CALL                             R1 2 -1
       10 RETURN                           R1 -1

PROTO_13:
        0 GETUPVAL                         R4 0
        1 GETTABLE                         R3 R4 R0
        2 GETTABLE                         R4 R2 R3
        3 JUMPIFNOT                        R4 ; [+1]
        4 RETURN                           R0 0
        5 LOADB                            R4 1
        6 SETTABLE                         R4 R2 R3
        7 GETIMPORT                        R4 K1 [pairs]
        9 GETTABLEKS                       R5 R3 K2 ["parents"]
       11 CALL                             R4 1 3
       12 FORGPREP_NEXT                    R4
       13 GETUPVAL                         R9 1
       14 MOVE                             R10 R7
       15 ADDK                             R11 R1 K3 [1]
       16 GETIMPORT                        R12 K6 [table.clone]
       18 MOVE                             R13 R2
       19 CALL                             R12 1 -1
       20 CALL                             R9 -1 0
       21 FORGLOOP                         R4 2 ; [-9]
       23 GETUPVAL                         R5 2
       24 GETTABLE                         R4 R5 R0
       25 JUMPIFNOT                        R4 ; [+15]
       26 GETUPVAL                         R5 2
       27 GETTABLE                         R4 R5 R0
       28 GETUPVAL                         R8 2
       29 GETTABLE                         R7 R8 R0
       30 GETTABLEKS                       R6 R7 K7 ["Depth"]
       32 FASTCALL2                        MATH_MAX R6 R1 ; [+4]
       34 MOVE                             R7 R1
       35 GETIMPORT                        R5 K10 [math.max]
       37 CALL                             R5 2 1
       38 SETTABLEKS                       R5 R4 K7 ["Depth"]
       40 RETURN                           R0 0
       41 GETIMPORT                        R4 K12 [pcall]
       43 NEWCLOSURE                       R5 P0
       44 CAPTURE                          VAL R0
       45 CAPTURE                          UPVAL U3
       46 CALL                             R4 1 2
       47 JUMPIF                           R4 ; [+4]
       48 GETIMPORT                        R6 K14 [error]
       50 MOVE                             R7 R5
       51 CALL                             R6 1 0
       52 JUMPIFEQKN                       R1 K15 [0] ; [+2]
       54 LOADB                            R6 0 +1
       55 LOADB                            R6 1
       56 DUPTABLE                         R7 K23 [{"PackageId", "FoundInstance", "Depth", "Changed", "IsSelected", "LatestVersionNumber", "PackageAssetName", "HasEditPermission"}]
       57 SETTABLEKS                       R0 R7 K16 ["PackageId"]
       59 JUMPIFNOT                        R6 ; [+2]
       60 GETUPVAL                         R8 4
       61 JUMP                             ; [+2]
       62 GETTABLEKS                       R8 R3 K24 ["instance"]
       64 SETTABLEKS                       R8 R7 K17 ["FoundInstance"]
       66 SETTABLEKS                       R1 R7 K7 ["Depth"]
       68 SETTABLEKS                       R6 R7 K18 ["Changed"]
       70 SETTABLEKS                       R6 R7 K19 ["IsSelected"]
       72 GETTABLEKS                       R8 R5 K20 ["LatestVersionNumber"]
       74 SETTABLEKS                       R8 R7 K20 ["LatestVersionNumber"]
       76 GETTABLEKS                       R8 R5 K21 ["PackageAssetName"]
       78 SETTABLEKS                       R8 R7 K21 ["PackageAssetName"]
       80 GETTABLEKS                       R10 R5 K25 ["PermissionLevel"]
       82 GETTABLEKS                       R9 R10 K26 ["Value"]
       84 GETIMPORT                        R11 K30 [Enum.PackagePermission.Edit]
       86 GETTABLEKS                       R10 R11 K26 ["Value"]
       88 JUMPIFLE                         R10 R9 ; [+2]
       90 LOADB                            R8 0 +1
       91 LOADB                            R8 1
       92 SETTABLEKS                       R8 R7 K22 ["HasEditPermission"]
       94 GETUPVAL                         R8 2
       95 SETTABLE                         R7 R8 R0
       96 GETUPVAL                         R9 5
       97 FASTCALL2                        TABLE_INSERT R9 R7 ; [+4]
       99 MOVE                             R10 R7
      100 GETIMPORT                        R8 K32 [table.insert]
      102 CALL                             R8 2 0
      103 RETURN                           R0 0

PROTO_14:
        0 FASTCALL1                        ASSERT R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [assert]
        4 CALL                             R2 1 0
        5 FASTCALL1                        ASSERT R1 ; [+3]
        6 MOVE                             R3 R1
        7 GETIMPORT                        R2 K1 [assert]
        9 CALL                             R2 1 0
       10 JUMPIF                           R0 ; [+2]
       11 LOADNIL                          R2
       12 JUMP                             ; [+4]
       13 LOADK                            R4 K2 ["PackageLink"]
       14 NAMECALL                         R2 R0 K3 ["FindFirstChildOfClass"]
       16 CALL                             R2 2 1
       17 FASTCALL1                        ASSERT R2 ; [+3]
       18 MOVE                             R4 R2
       19 GETIMPORT                        R3 K1 [assert]
       21 CALL                             R3 1 0
       22 NEWTABLE                         R4 0 0
       24 GETUPVAL                         R5 0
       25 MOVE                             R6 R4
       26 MOVE                             R7 R1
       27 LOADNIL                          R8
       28 CALL                             R5 3 0
       29 MOVE                             R3 R4
       30 NEWTABLE                         R4 0 0
       32 NEWTABLE                         R5 0 0
       34 NEWCLOSURE                       R6 P0
       35 CAPTURE                          VAL R3
       36 CAPTURE                          VAL R6
       37 CAPTURE                          VAL R4
       38 CAPTURE                          UPVAL U1
       39 CAPTURE                          VAL R0
       40 CAPTURE                          VAL R5
       41 MOVE                             R7 R6
       42 GETTABLEKS                       R8 R2 K4 ["PackageId"]
       44 LOADN                            R9 0
       45 NEWTABLE                         R10 0 0
       47 CALL                             R7 3 0
       48 RETURN                           R5 1

PROTO_15:
        0 NEWTABLE                         R5 0 0
        2 GETUPVAL                         R6 0
        3 MOVE                             R7 R5
        4 MOVE                             R8 R2
        5 MOVE                             R9 R3
        6 CALL                             R6 3 0
        7 MOVE                             R4 R5
        8 LENGTH                           R5 R4
        9 LOADN                            R6 0
       10 JUMPIFNOTLT                      R6 R5 ; [+62]
       12 GETUPVAL                         R6 1
       13 GETTABLEKS                       R5 R6 K0 ["Updating"]
       15 SETTABLEKS                       R5 R1 K1 ["PublishStatus"]
       17 NEWTABLE                         R7 0 0
       19 NAMECALL                         R5 R0 K2 ["setState"]
       21 CALL                             R5 2 0
       22 GETIMPORT                        R5 K4 [ipairs]
       24 MOVE                             R6 R4
       25 CALL                             R5 1 3
       26 FORGPREP_INEXT                   R5
       27 JUMPIF                           R9 ; [+2]
       28 LOADNIL                          R12
       29 JUMP                             ; [+4]
       30 LOADK                            R14 K5 ["PackageLink"]
       31 NAMECALL                         R12 R9 K6 ["FindFirstChildOfClass"]
       33 CALL                             R12 2 1
       34 GETTABLEKS                       R11 R12 K7 ["PackageId"]
       36 GETTABLE                         R10 R3 R11
       37 LOADN                            R11 0
       38 GETTABLEKS                       R13 R0 K8 ["state"]
       40 GETTABLEKS                       R12 R13 K9 ["isCancelling"]
       42 JUMPIFNOT                        R12 ; [+1]
       43 RETURN                           R0 0
       44 GETUPVAL                         R12 2
       45 MOVE                             R13 R9
       46 GETTABLEKS                       R14 R10 K10 ["newVersionId"]
       48 CALL                             R12 2 1
       49 JUMPIFNOT                        R12 ; [+4]
       50 LOADB                            R12 1
       51 SETTABLEKS                       R12 R1 K11 ["Changed"]
       53 JUMP                             ; [+17]
       54 DUPTABLE                         R14 K13 [{"canCancel"}]
       55 LOADN                            R16 3
       56 JUMPIFLE                         R16 R11 ; [+2]
       58 LOADB                            R15 0 +1
       59 LOADB                            R15 1
       60 SETTABLEKS                       R15 R14 K12 ["canCancel"]
       62 NAMECALL                         R12 R0 K2 ["setState"]
       64 CALL                             R12 2 0
       65 ADDK                             R11 R11 K14 [1]
       66 GETIMPORT                        R12 K17 [task.wait]
       68 LOADK                            R13 K18 [0.5]
       69 CALL                             R12 1 0
       70 JUMPBACK                         ; [-33]
       71 FORGLOOP                         R5 2 [inext] ; [-45]
       73 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R2 R1 K0 ["FoundInstance"]
        2 JUMPIF                           R2 ; [+7]
        3 GETIMPORT                        R3 K2 [warn]
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R4 R5 K3 ["LatestVersionFailure"]
        8 CALL                             R3 1 0
        9 RETURN                           R0 0
       10 NAMECALL                         R3 R2 K4 ["Clone"]
       12 CALL                             R3 1 1
       13 MOVE                             R2 R3
       14 GETTABLEKS                       R4 R0 K5 ["state"]
       16 GETTABLEKS                       R3 R4 K6 ["tempContainer"]
       18 SETTABLEKS                       R3 R2 K7 ["Parent"]
       20 GETTABLEKS                       R3 R1 K8 ["IsSelected"]
       22 JUMPIFNOT                        R3 ; [+1]
       23 RETURN                           R2 1
       24 LOADN                            R3 0
       25 LOADNIL                          R4
       26 GETTABLEKS                       R6 R0 K5 ["state"]
       28 GETTABLEKS                       R5 R6 K9 ["isCancelling"]
       30 JUMPIFNOT                        R5 ; [+1]
       31 RETURN                           R0 0
       32 GETUPVAL                         R5 1
       33 MOVE                             R6 R2
       34 GETTABLEKS                       R7 R1 K10 ["LatestVersionNumber"]
       36 CALL                             R5 2 1
       37 MOVE                             R4 R5
       38 JUMPIF                           R4 ; [+43]
       39 LOADN                            R6 3
       40 JUMPIFLE                         R6 R3 ; [+2]
       42 LOADB                            R5 0 +1
       43 LOADB                            R5 1
       44 GETTABLEKS                       R7 R0 K5 ["state"]
       46 GETTABLEKS                       R6 R7 K11 ["canCancel"]
       48 JUMPIFEQ                         R6 R5 ; [+7]
       50 DUPTABLE                         R8 K12 [{"canCancel"}]
       51 SETTABLEKS                       R5 R8 K11 ["canCancel"]
       53 NAMECALL                         R6 R0 K13 ["setState"]
       55 CALL                             R6 2 0
       56 GETIMPORT                        R6 K2 [warn]
       58 GETIMPORT                        R7 K16 [string.format]
       60 GETUPVAL                         R9 0
       61 GETTABLEKS                       R8 R9 K17 ["PackagePublishFailure"]
       63 GETTABLEKS                       R9 R1 K18 ["PackageAssetName"]
       65 GETTABLEKS                       R10 R1 K19 ["PackageId"]
       67 CALL                             R7 3 -1
       68 CALL                             R6 -1 0
       69 GETIMPORT                        R6 K22 [task.wait]
       71 LOADN                            R8 2
       72 FASTCALL2K                       MATH_MIN R3 K23 ; [+5]
       74 MOVE                             R10 R3
       75 LOADK                            R11 K23 [2]
       76 GETIMPORT                        R9 K26 [math.min]
       78 CALL                             R9 2 1
       79 POW                              R7 R8 R9
       80 CALL                             R6 1 0
       81 ADDK                             R3 R3 K27 [1]
       82 JUMPIF                           R4 ; [+1]
       83 JUMPBACK                         ; [-58]
       84 RETURN                           R4 1

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 LOADB                            R3 0
        3 NAMECALL                         R0 R0 K0 ["PublishPackage"]
        5 CALL                             R0 3 0
        6 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["state"]
        3 GETTABLEKS                       R0 R1 K1 ["isCancelling"]
        5 JUMPIFNOT                        R0 ; [+3]
        6 GETUPVAL                         R0 1
        7 CALL                             R0 0 -1
        8 RETURN                           R0 -1
        9 GETUPVAL                         R0 0
       10 DUPTABLE                         R2 K3 [{"canCancel"}]
       11 LOADB                            R3 0
       12 SETTABLEKS                       R3 R2 K2 ["canCancel"]
       14 NAMECALL                         R0 R0 K4 ["setState"]
       16 CALL                             R0 2 0
       17 GETUPVAL                         R0 0
       18 GETUPVAL                         R2 2
       19 NAMECALL                         R0 R0 K5 ["getLatestVersionClone"]
       21 CALL                             R0 2 1
       22 JUMPIF                           R0 ; [+3]
       23 GETUPVAL                         R1 1
       24 CALL                             R1 0 -1
       25 RETURN                           R1 -1
       26 GETUPVAL                         R2 2
       27 GETTABLEKS                       R1 R2 K6 ["IsSelected"]
       29 JUMPIF                           R1 ; [+7]
       30 GETUPVAL                         R1 0
       31 GETUPVAL                         R3 2
       32 MOVE                             R4 R0
       33 GETUPVAL                         R5 3
       34 NAMECALL                         R1 R1 K7 ["runScopedMassUpdate"]
       36 CALL                             R1 4 0
       37 GETUPVAL                         R2 2
       38 GETTABLEKS                       R1 R2 K8 ["Changed"]
       40 JUMPIF                           R1 ; [+30]
       41 GETUPVAL                         R1 2
       42 GETUPVAL                         R3 4
       43 GETTABLEKS                       R2 R3 K9 ["Skipped"]
       45 SETTABLEKS                       R2 R1 K10 ["PublishStatus"]
       47 GETUPVAL                         R1 0
       48 NEWTABLE                         R3 0 0
       50 NAMECALL                         R1 R1 K4 ["setState"]
       52 CALL                             R1 2 0
       53 GETIMPORT                        R1 K12 [warn]
       55 GETIMPORT                        R2 K15 [string.format]
       57 GETUPVAL                         R4 5
       58 GETTABLEKS                       R3 R4 K16 ["PackagePublishSkipped"]
       60 GETUPVAL                         R5 2
       61 GETTABLEKS                       R4 R5 K17 ["PackageAssetName"]
       63 GETUPVAL                         R6 2
       64 GETTABLEKS                       R5 R6 K18 ["PackageId"]
       66 CALL                             R2 3 -1
       67 CALL                             R1 -1 0
       68 GETUPVAL                         R1 6
       69 CALL                             R1 0 -1
       70 RETURN                           R1 -1
       71 NAMECALL                         R1 R0 K19 ["Clone"]
       73 CALL                             R1 1 1
       74 LOADB                            R2 0
       75 SETTABLEKS                       R2 R1 K20 ["Archivable"]
       77 GETTABLEKS                       R2 R0 K21 ["Parent"]
       79 SETTABLEKS                       R2 R1 K21 ["Parent"]
       81 JUMPIF                           R1 ; [+2]
       82 LOADNIL                          R2
       83 JUMP                             ; [+4]
       84 LOADK                            R4 K22 ["PackageLink"]
       85 NAMECALL                         R2 R1 K23 ["FindFirstChildOfClass"]
       87 CALL                             R2 2 1
       88 JUMPIF                           R0 ; [+2]
       89 LOADNIL                          R3
       90 JUMP                             ; [+4]
       91 LOADK                            R5 K22 ["PackageLink"]
       92 NAMECALL                         R3 R0 K23 ["FindFirstChildOfClass"]
       94 CALL                             R3 2 1
       95 GETTABLEKS                       R4 R3 K24 ["Status"]
       97 GETUPVAL                         R6 5
       98 GETTABLEKS                       R5 R6 K25 ["UpToDateString"]
      100 JUMPIFNOTEQ                      R4 R5 ; [+8]
      102 LOADK                            R6 K24 ["Status"]
      103 NAMECALL                         R4 R3 K26 ["GetPropertyChangedSignal"]
      105 CALL                             R4 2 1
      106 NAMECALL                         R4 R4 K27 ["Wait"]
      108 CALL                             R4 1 0
      109 GETUPVAL                         R4 2
      110 GETUPVAL                         R6 4
      111 GETTABLEKS                       R5 R6 K28 ["Pending"]
      113 SETTABLEKS                       R5 R4 K10 ["PublishStatus"]
      115 GETUPVAL                         R4 0
      116 NEWTABLE                         R6 0 0
      118 NAMECALL                         R4 R4 K4 ["setState"]
      120 CALL                             R4 2 0
      121 LOADN                            R4 0
      122 LOADNIL                          R5
      123 LOADNIL                          R6
      124 GETUPVAL                         R9 0
      125 GETTABLEKS                       R8 R9 K0 ["state"]
      127 GETTABLEKS                       R7 R8 K1 ["isCancelling"]
      129 JUMPIFNOT                        R7 ; [+3]
      130 GETUPVAL                         R7 1
      131 CALL                             R7 0 -1
      132 RETURN                           R7 -1
      133 GETIMPORT                        R7 K30 [pcall]
      135 NEWCLOSURE                       R8 P0
      136 CAPTURE                          UPVAL U7
      137 CAPTURE                          VAL R0
      138 CALL                             R7 1 2
      139 MOVE                             R5 R7
      140 MOVE                             R6 R8
      141 JUMPIFNOT                        R5 ; [+66]
      142 GETIMPORT                        R7 K12 [warn]
      144 GETIMPORT                        R8 K15 [string.format]
      146 GETUPVAL                         R10 5
      147 GETTABLEKS                       R9 R10 K31 ["PackagePublishSuccess"]
      149 GETUPVAL                         R11 2
      150 GETTABLEKS                       R10 R11 K17 ["PackageAssetName"]
      152 GETUPVAL                         R12 2
      153 GETTABLEKS                       R11 R12 K18 ["PackageId"]
      155 CALL                             R8 3 -1
      156 CALL                             R7 -1 0
      157 GETIMPORT                        R7 K33 [string.find]
      159 GETTABLEKS                       R8 R2 K24 ["Status"]
      161 GETUPVAL                         R10 5
      162 GETTABLEKS                       R9 R10 K34 ["NewVersionString"]
      164 CALL                             R7 2 1
      165 JUMPIF                           R7 ; [+7]
      166 LOADK                            R9 K24 ["Status"]
      167 NAMECALL                         R7 R2 K26 ["GetPropertyChangedSignal"]
      169 CALL                             R7 2 1
      170 NAMECALL                         R7 R7 K27 ["Wait"]
      172 CALL                             R7 1 0
      173 JUMPIF                           R0 ; [+2]
      174 LOADNIL                          R8
      175 JUMP                             ; [+4]
      176 LOADK                            R10 K22 ["PackageLink"]
      177 NAMECALL                         R8 R0 K23 ["FindFirstChildOfClass"]
      179 CALL                             R8 2 1
      180 GETTABLEKS                       R7 R8 K35 ["VersionNumber"]
      182 GETUPVAL                         R8 3
      183 GETUPVAL                         R10 2
      184 GETTABLEKS                       R9 R10 K18 ["PackageId"]
      186 DUPTABLE                         R10 K38 [{"oldVersionId", "newVersionId"}]
      187 GETUPVAL                         R12 2
      188 GETTABLEKS                       R11 R12 K39 ["LatestVersionNumber"]
      190 SETTABLEKS                       R11 R10 K36 ["oldVersionId"]
      192 SETTABLEKS                       R7 R10 K37 ["newVersionId"]
      194 SETTABLE                         R10 R8 R9
      195 GETUPVAL                         R8 2
      196 GETUPVAL                         R10 4
      197 GETTABLEKS                       R9 R10 K40 ["Success"]
      199 SETTABLEKS                       R9 R8 K10 ["PublishStatus"]
      201 GETUPVAL                         R8 0
      202 NEWTABLE                         R10 0 0
      204 NAMECALL                         R8 R8 K4 ["setState"]
      206 CALL                             R8 2 0
      207 JUMP                             ; [+62]
      208 GETIMPORT                        R7 K12 [warn]
      210 MOVE                             R8 R6
      211 CALL                             R7 1 0
      212 GETUPVAL                         R7 2
      213 GETUPVAL                         R9 4
      214 GETTABLEKS                       R8 R9 K41 ["Failed"]
      216 SETTABLEKS                       R8 R7 K10 ["PublishStatus"]
      218 GETUPVAL                         R7 0
      219 DUPTABLE                         R9 K3 [{"canCancel"}]
      220 LOADN                            R11 3
      221 JUMPIFLE                         R11 R4 ; [+2]
      223 LOADB                            R10 0 +1
      224 LOADB                            R10 1
      225 SETTABLEKS                       R10 R9 K2 ["canCancel"]
      227 NAMECALL                         R7 R7 K4 ["setState"]
      229 CALL                             R7 2 0
      230 GETIMPORT                        R7 K12 [warn]
      232 GETIMPORT                        R8 K15 [string.format]
      234 GETUPVAL                         R10 5
      235 GETTABLEKS                       R9 R10 K42 ["PackagePublishFailure"]
      237 GETUPVAL                         R11 2
      238 GETTABLEKS                       R10 R11 K17 ["PackageAssetName"]
      240 GETUPVAL                         R12 2
      241 GETTABLEKS                       R11 R12 K18 ["PackageId"]
      243 CALL                             R8 3 -1
      244 CALL                             R7 -1 0
      245 GETIMPORT                        R7 K45 [task.wait]
      247 LOADN                            R9 2
      248 FASTCALL2K                       MATH_MIN R4 K46 ; [+5]
      250 MOVE                             R11 R4
      251 LOADK                            R12 K46 [2]
      252 GETIMPORT                        R10 K49 [math.min]
      254 CALL                             R10 2 1
      255 POW                              R8 R9 R10
      256 CALL                             R7 1 0
      257 ADDK                             R4 R4 K50 [1]
      258 GETUPVAL                         R7 2
      259 GETUPVAL                         R9 4
      260 GETTABLEKS                       R8 R9 K28 ["Pending"]
      262 SETTABLEKS                       R8 R7 K10 ["PublishStatus"]
      264 GETUPVAL                         R7 0
      265 NEWTABLE                         R9 0 0
      267 NAMECALL                         R7 R7 K4 ["setState"]
      269 CALL                             R7 2 0
      270 JUMPIF                           R5 ; [+1]
      271 JUMPBACK                         ; [-148]
      272 NAMECALL                         R7 R0 K51 ["Destroy"]
      274 CALL                             R7 1 0
      275 NAMECALL                         R7 R1 K51 ["Destroy"]
      277 CALL                             R7 1 0
      278 GETUPVAL                         R7 6
      279 CALL                             R7 0 -1
      280 RETURN                           R7 -1

PROTO_19:
        0 GETIMPORT                        R2 K2 [task.spawn]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U5
       11 CALL                             R2 1 0
       12 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["new"]
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 CAPTURE                          VAL R2
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U3
       10 CALL                             R3 1 -1
       11 RETURN                           R3 -1

PROTO_21:
        0 GETUPVAL                         R0 0
        1 SUBK                             R0 R0 K0 [1]
        2 SETUPVAL                         R0 0
        3 GETUPVAL                         R0 1
        4 LOADB                            R2 1
        5 NAMECALL                         R0 R0 K1 ["Fire"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 LOADB                            R2 0
        2 NAMECALL                         R0 R0 K0 ["Fire"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_23:
        0 JUMPIFNOT                        R1 ; [+3]
        1 LENGTH                           R3 R1
        2 JUMPIFNOTEQKN                    R3 K0 [0] ; [+4]
        4 LOADB                            R3 1
        5 LOADNIL                          R4
        6 RETURN                           R3 2
        7 GETIMPORT                        R3 K3 [Instance.new]
        9 LOADK                            R4 K4 ["BindableEvent"]
       10 CALL                             R3 1 1
       11 LOADN                            R4 0
       12 MOVE                             R5 R1
       13 LOADNIL                          R6
       14 LOADNIL                          R7
       15 FORGPREP                         R5
       16 GETUPVAL                         R10 0
       17 JUMPIF                           R10 ; [+11]
       18 LOADN                            R10 5
       19 JUMPIFNOTLE                      R10 R4 ; [+9]
       21 GETTABLEKS                       R10 R3 K5 ["Event"]
       23 NAMECALL                         R10 R10 K6 ["Wait"]
       25 CALL                             R10 1 1
       26 JUMPIF                           R10 ; [+2]
       27 CLOSEUPVALS                      R4
       28 RETURN                           R0 0
       29 GETUPVAL                         R10 0
       30 JUMPIFNOT                        R10 ; [+37]
       31 GETIMPORT                        R10 K9 [os.clock]
       33 CALL                             R10 0 1
       34 GETUPVAL                         R12 1
       35 MULK                             R11 R12 K10 [60]
       36 GETTABLEKS                       R12 R0 K11 ["NumPromised"]
       38 GETUPVAL                         R13 2
       39 JUMPIFNOTEQ                      R12 R13 ; [+22]
       41 GETTABLEKS                       R13 R0 K12 ["PublishStartTime"]
       43 ADD                              R12 R13 R11
       44 JUMPIFNOTLT                      R10 R12 ; [+17]
       46 GETIMPORT                        R12 K15 [task.wait]
       48 GETTABLEKS                       R16 R0 K12 ["PublishStartTime"]
       50 ADD                              R15 R16 R11
       51 SUB                              R14 R15 R10
       52 ADDK                             R13 R14 K16 [5]
       53 CALL                             R12 1 0
       54 LOADN                            R12 0
       55 SETTABLEKS                       R12 R0 K11 ["NumPromised"]
       57 GETIMPORT                        R12 K9 [os.clock]
       59 CALL                             R12 0 1
       60 SETTABLEKS                       R12 R0 K12 ["PublishStartTime"]
       62 GETTABLEKS                       R12 R0 K11 ["NumPromised"]
       64 ADDK                             R12 R12 K17 [1]
       65 SETTABLEKS                       R12 R0 K11 ["NumPromised"]
       67 JUMP                             ; [+22]
       68 GETTABLEKS                       R11 R0 K12 ["PublishStartTime"]
       70 GETTABLEKS                       R13 R0 K11 ["NumPromised"]
       72 MULK                             R12 R13 K18 [2]
       73 ADD                              R10 R11 R12
       74 GETIMPORT                        R12 K9 [os.clock]
       76 CALL                             R12 0 1
       77 SUB                              R11 R12 R10
       78 LOADN                            R12 2
       79 JUMPIFNOTLT                      R11 R12 ; [+5]
       81 GETIMPORT                        R12 K15 [task.wait]
       83 SUBRK                            R13 R18 K11 ["NumPromised"]
       84 CALL                             R12 1 0
       85 GETTABLEKS                       R12 R0 K11 ["NumPromised"]
       87 ADDK                             R12 R12 K17 [1]
       88 SETTABLEKS                       R12 R0 K11 ["NumPromised"]
       90 ADDK                             R4 R4 K17 [1]
       91 MOVE                             R12 R9
       92 MOVE                             R13 R2
       93 NAMECALL                         R10 R0 K19 ["promiseToPublishPackage"]
       95 CALL                             R10 3 1
       96 NEWCLOSURE                       R12 P0
       97 CAPTURE                          REF R4
       98 CAPTURE                          VAL R3
       99 NAMECALL                         R10 R10 K20 ["andThen"]
      101 CALL                             R10 2 1
      102 NEWCLOSURE                       R12 P1
      103 CAPTURE                          VAL R3
      104 NAMECALL                         R10 R10 K21 ["catch"]
      106 CALL                             R10 2 0
      107 FORGLOOP                         R5 2 ; [-92]
      109 LOADN                            R5 0
      110 JUMPIFNOTLT                      R5 R4 ; [+10]
      112 GETTABLEKS                       R5 R3 K5 ["Event"]
      114 NAMECALL                         R5 R5 K6 ["Wait"]
      116 CALL                             R5 1 1
      117 JUMPIF                           R5 ; [+2]
      118 CLOSEUPVALS                      R4
      119 RETURN                           R0 0
      120 JUMPBACK                         ; [-12]
      121 NAMECALL                         R5 R3 K22 ["Destroy"]
      123 CALL                             R5 1 0
      124 LOADB                            R5 1
      125 CLOSEUPVALS                      R4
      126 RETURN                           R5 1

PROTO_24:
        0 NEWTABLE                         R2 0 0
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 GETIMPORT                        R5 K2 [os.clock]
        6 CALL                             R5 0 1
        7 SETTABLEKS                       R5 R0 K3 ["PublishStartTime"]
        9 LOADN                            R5 0
       10 SETTABLEKS                       R5 R0 K4 ["NumPromised"]
       12 LOADN                            R7 1
       13 LENGTH                           R5 R1
       14 LOADN                            R6 1
       15 FORNPREP                         R5
       16 GETTABLE                         R8 R1 R7
       17 GETTABLEKS                       R9 R8 K5 ["Depth"]
       19 JUMPIFEQ                         R3 R9 ; [+12]
       21 MOVE                             R11 R4
       22 MOVE                             R12 R2
       23 NAMECALL                         R9 R0 K6 ["waitForPromises"]
       25 CALL                             R9 3 1
       26 JUMPIF                           R9 ; [+1]
       27 RETURN                           R0 0
       28 GETTABLEKS                       R3 R8 K5 ["Depth"]
       30 NEWTABLE                         R4 0 0
       32 FASTCALL2                        TABLE_INSERT R4 R8 ; [+5]
       34 MOVE                             R10 R4
       35 MOVE                             R11 R8
       36 GETIMPORT                        R9 K9 [table.insert]
       38 CALL                             R9 2 0
       39 FORNLOOP                         R5
       40 MOVE                             R7 R4
       41 MOVE                             R8 R2
       42 NAMECALL                         R5 R0 K6 ["waitForPromises"]
       44 CALL                             R5 3 0
       45 RETURN                           R0 0

PROTO_25:
        0 GETTABLEKS                       R2 R0 K0 ["state"]
        2 GETTABLEKS                       R1 R2 K1 ["canPublish"]
        4 JUMPIF                           R1 ; [+1]
        5 RETURN                           R0 0
        6 GETIMPORT                        R1 K4 [Instance.new]
        8 LOADK                            R2 K5 ["Folder"]
        9 CALL                             R1 1 1
       10 LOADB                            R2 0
       11 SETTABLEKS                       R2 R1 K6 ["Archivable"]
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R2 R3 K7 ["TempContainerName"]
       16 SETTABLEKS                       R2 R1 K8 ["Name"]
       18 GETIMPORT                        R2 K10 [game]
       20 LOADK                            R4 K11 ["ServerStorage"]
       21 NAMECALL                         R2 R2 K12 ["GetService"]
       23 CALL                             R2 2 1
       24 SETTABLEKS                       R2 R1 K13 ["Parent"]
       26 DUPTABLE                         R4 K18 [{"isPublishing", "canPublish", "isCancelling", "canCancel", "tempContainer"}]
       27 LOADB                            R5 1
       28 SETTABLEKS                       R5 R4 K14 ["isPublishing"]
       30 LOADB                            R5 0
       31 SETTABLEKS                       R5 R4 K1 ["canPublish"]
       33 LOADB                            R5 0
       34 SETTABLEKS                       R5 R4 K15 ["isCancelling"]
       36 LOADB                            R5 0
       37 SETTABLEKS                       R5 R4 K16 ["canCancel"]
       39 SETTABLEKS                       R1 R4 K17 ["tempContainer"]
       41 NAMECALL                         R2 R0 K19 ["setState"]
       43 CALL                             R2 2 0
       44 GETTABLEKS                       R5 R0 K0 ["state"]
       46 GETTABLEKS                       R4 R5 K20 ["packageLists"]
       48 NAMECALL                         R2 R0 K21 ["doPackagePublishing"]
       50 CALL                             R2 2 0
       51 GETTABLEKS                       R3 R0 K0 ["state"]
       53 GETTABLEKS                       R2 R3 K15 ["isCancelling"]
       55 JUMPIF                           R2 ; [+76]
       56 GETTABLEKS                       R3 R0 K0 ["state"]
       58 GETTABLEKS                       R2 R3 K22 ["selectedInstance"]
       60 GETIMPORT                        R3 K25 [table.find]
       62 GETUPVAL                         R4 1
       63 NAMECALL                         R4 R4 K26 ["Get"]
       65 CALL                             R4 1 1
       66 MOVE                             R5 R2
       67 CALL                             R3 2 1
       68 MOVE                             R5 R2
       69 JUMPIF                           R5 ; [+2]
       70 LOADNIL                          R4
       71 JUMP                             ; [+20]
       72 GETTABLEKS                       R6 R5 K13 ["Parent"]
       74 JUMPIF                           R6 ; [+2]
       75 LOADNIL                          R4
       76 JUMP                             ; [+15]
       77 JUMPIF                           R6 ; [+2]
       78 LOADNIL                          R7
       79 JUMP                             ; [+4]
       80 LOADK                            R9 K27 ["PackageLink"]
       81 NAMECALL                         R7 R6 K28 ["FindFirstChildOfClass"]
       83 CALL                             R7 2 1
       84 JUMPIFNOT                        R7 ; [+2]
       85 MOVE                             R4 R6
       86 JUMP                             ; [+5]
       87 GETUPVAL                         R8 2
       88 MOVE                             R9 R6
       89 CALL                             R8 1 1
       90 MOVE                             R4 R8
       91 JUMP                             ; [0]
       92 JUMPIFNOT                        R4 ; [+18]
       93 GETIMPORT                        R5 K30 [string.find]
       95 JUMPIF                           R4 ; [+2]
       96 LOADNIL                          R7
       97 JUMP                             ; [+4]
       98 LOADK                            R9 K27 ["PackageLink"]
       99 NAMECALL                         R7 R4 K28 ["FindFirstChildOfClass"]
      101 CALL                             R7 2 1
      102 GETTABLEKS                       R6 R7 K31 ["Status"]
      104 GETUPVAL                         R8 0
      105 GETTABLEKS                       R7 R8 K32 ["NewVersionString"]
      107 CALL                             R5 2 1
      108 JUMPIFNOT                        R5 ; [+2]
      109 MOVE                             R2 R4
      110 JUMPBACK                         ; [-43]
      111 GETUPVAL                         R4 3
      112 MOVE                             R5 R2
      113 LOADN                            R6 0
      114 CALL                             R4 2 1
      115 JUMPIFNOT                        R3 ; [+9]
      116 GETUPVAL                         R5 1
      117 NEWTABLE                         R7 0 1
      119 MOVE                             R8 R4
      120 SETLIST                          R7 R8 1 [1]
      122 NAMECALL                         R5 R5 K33 ["Add"]
      124 CALL                             R5 2 0
      125 GETIMPORT                        R5 K35 [warn]
      127 GETUPVAL                         R7 0
      128 GETTABLEKS                       R6 R7 K36 ["OperationEnded"]
      130 CALL                             R5 1 0
      131 JUMP                             ; [+6]
      132 GETIMPORT                        R2 K35 [warn]
      134 GETUPVAL                         R4 0
      135 GETTABLEKS                       R3 R4 K37 ["OperationCancelled"]
      137 CALL                             R2 1 0
      138 NAMECALL                         R2 R1 K38 ["Destroy"]
      140 CALL                             R2 1 0
      141 DUPTABLE                         R4 K39 [{"isPublishing", "isCancelling", "canCancel", "tempContainer"}]
      142 LOADB                            R5 0
      143 SETTABLEKS                       R5 R4 K14 ["isPublishing"]
      145 LOADB                            R5 0
      146 SETTABLEKS                       R5 R4 K15 ["isCancelling"]
      148 LOADB                            R5 0
      149 SETTABLEKS                       R5 R4 K16 ["canCancel"]
      151 GETUPVAL                         R6 4
      152 GETTABLEKS                       R5 R6 K40 ["None"]
      154 SETTABLEKS                       R5 R4 K17 ["tempContainer"]
      156 NAMECALL                         R2 R0 K19 ["setState"]
      158 CALL                             R2 2 0
      159 NAMECALL                         R2 R0 K41 ["onChangeSelection"]
      161 CALL                             R2 1 0
      162 RETURN                           R0 0

PROTO_26:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["Enabled"]
        4 JUMPIF                           R1 ; [+1]
        5 RETURN                           R0 0
        6 GETTABLEKS                       R2 R0 K2 ["state"]
        8 GETTABLEKS                       R1 R2 K3 ["isPublishing"]
       10 JUMPIFNOT                        R1 ; [+1]
       11 RETURN                           R0 0
       12 GETUPVAL                         R1 0
       13 NAMECALL                         R1 R1 K4 ["Get"]
       15 CALL                             R1 1 1
       16 LENGTH                           R2 R1
       17 JUMPIFEQKN                       R2 K5 [1] ; [+19]
       19 DUPTABLE                         R4 K9 [{"selectedInstance", "packageLists", "canPublish"}]
       20 GETUPVAL                         R6 1
       21 GETTABLEKS                       R5 R6 K10 ["None"]
       23 SETTABLEKS                       R5 R4 K6 ["selectedInstance"]
       25 GETUPVAL                         R6 1
       26 GETTABLEKS                       R5 R6 K10 ["None"]
       28 SETTABLEKS                       R5 R4 K7 ["packageLists"]
       30 LOADB                            R5 0
       31 SETTABLEKS                       R5 R4 K8 ["canPublish"]
       33 NAMECALL                         R2 R0 K11 ["setState"]
       35 CALL                             R2 2 0
       36 RETURN                           R0 0
       37 GETTABLEN                        R2 R1 1
       38 JUMPIF                           R2 ; [+2]
       39 LOADNIL                          R3
       40 JUMP                             ; [+4]
       41 LOADK                            R5 K12 ["PackageLink"]
       42 NAMECALL                         R3 R2 K13 ["FindFirstChildOfClass"]
       44 CALL                             R3 2 1
       45 JUMPIFNOT                        R3 ; [+7]
       46 GETTABLEKS                       R4 R3 K14 ["Status"]
       48 GETUPVAL                         R6 2
       49 GETTABLEKS                       R5 R6 K15 ["UpToDateString"]
       51 JUMPIFNOTEQ                      R4 R5 ; [+19]
       53 DUPTABLE                         R6 K9 [{"selectedInstance", "packageLists", "canPublish"}]
       54 GETUPVAL                         R8 1
       55 GETTABLEKS                       R7 R8 K10 ["None"]
       57 SETTABLEKS                       R7 R6 K6 ["selectedInstance"]
       59 GETUPVAL                         R8 1
       60 GETTABLEKS                       R7 R8 K10 ["None"]
       62 SETTABLEKS                       R7 R6 K7 ["packageLists"]
       64 LOADB                            R7 0
       65 SETTABLEKS                       R7 R6 K8 ["canPublish"]
       67 NAMECALL                         R4 R0 K11 ["setState"]
       69 CALL                             R4 2 0
       70 RETURN                           R0 0
       71 GETUPVAL                         R4 3
       72 MOVE                             R5 R2
       73 GETIMPORT                        R6 K17 [game]
       75 CALL                             R4 2 1
       76 GETIMPORT                        R5 K20 [table.sort]
       78 MOVE                             R6 R4
       79 GETUPVAL                         R7 4
       80 CALL                             R5 2 0
       81 GETIMPORT                        R5 K22 [ipairs]
       83 MOVE                             R6 R4
       84 CALL                             R5 1 3
       85 FORGPREP_INEXT                   R5
       86 GETUPVAL                         R11 5
       87 GETTABLEKS                       R10 R11 K23 ["Ready"]
       89 SETTABLEKS                       R10 R9 K24 ["PublishStatus"]
       91 FORGLOOP                         R5 2 [inext] ; [-6]
       93 DUPTABLE                         R7 K9 [{"selectedInstance", "packageLists", "canPublish"}]
       94 SETTABLEKS                       R2 R7 K6 ["selectedInstance"]
       96 SETTABLEKS                       R4 R7 K7 ["packageLists"]
       98 LOADB                            R8 1
       99 SETTABLEKS                       R8 R7 K8 ["canPublish"]
      101 NAMECALL                         R5 R0 K11 ["setState"]
      103 CALL                             R5 2 0
      104 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["onChangeSelection"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["SelectionChanged"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R0
        5 NAMECALL                         R1 R1 K1 ["Connect"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_29:
        0 GETTABLEKS                       R2 R1 K0 ["Enabled"]
        2 GETTABLEKS                       R4 R0 K1 ["props"]
        4 GETTABLEKS                       R3 R4 K0 ["Enabled"]
        6 JUMPIFNOTEQ                      R2 R3 ; [+2]
        8 RETURN                           R0 0
        9 GETTABLEKS                       R3 R0 K1 ["props"]
       11 GETTABLEKS                       R2 R3 K0 ["Enabled"]
       13 JUMPIFNOT                        R2 ; [+3]
       14 NAMECALL                         R2 R0 K2 ["onChangeSelection"]
       16 CALL                             R2 1 0
       17 RETURN                           R0 0

PROTO_30:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["publishStatus"]
        4 GETUPVAL                         R4 0
        5 GETTABLE                         R3 R4 R2
        6 GETUPVAL                         R5 1
        7 GETTABLE                         R4 R5 R2
        8 MOVE                             R5 R3
        9 JUMPIFNOT                        R5 ; [+117]
       10 GETUPVAL                         R6 2
       11 GETTABLEKS                       R5 R6 K2 ["createElement"]
       13 LOADK                            R6 K3 ["Frame"]
       14 DUPTABLE                         R7 K8 [{"AnchorPoint", "BackgroundColor3", "Size", "Position"}]
       15 GETIMPORT                        R8 K11 [Vector2.new]
       17 LOADK                            R9 K12 [0.5]
       18 LOADN                            R10 1
       19 CALL                             R8 2 1
       20 SETTABLEKS                       R8 R7 K4 ["AnchorPoint"]
       22 GETIMPORT                        R8 K14 [Color3.new]
       24 LOADN                            R9 0
       25 LOADN                            R10 0
       26 LOADN                            R11 0
       27 CALL                             R8 3 1
       28 SETTABLEKS                       R8 R7 K5 ["BackgroundColor3"]
       30 GETIMPORT                        R8 K16 [UDim2.new]
       32 LOADK                            R9 K17 [0.9]
       33 LOADN                            R10 0
       34 LOADK                            R11 K18 [0.1]
       35 LOADN                            R12 0
       36 CALL                             R8 4 1
       37 SETTABLEKS                       R8 R7 K6 ["Size"]
       39 GETIMPORT                        R8 K16 [UDim2.new]
       41 LOADK                            R9 K12 [0.5]
       42 LOADN                            R10 0
       43 LOADN                            R11 1
       44 LOADN                            R12 253
       45 CALL                             R8 4 1
       46 SETTABLEKS                       R8 R7 K7 ["Position"]
       48 DUPTABLE                         R8 K22 [{"uiCorner", "uiStroke", "progressBar"}]
       49 GETUPVAL                         R10 2
       50 GETTABLEKS                       R9 R10 K2 ["createElement"]
       52 LOADK                            R10 K23 ["UICorner"]
       53 DUPTABLE                         R11 K25 [{"CornerRadius"}]
       54 GETIMPORT                        R12 K27 [UDim.new]
       56 LOADK                            R13 K12 [0.5]
       57 LOADK                            R14 K12 [0.5]
       58 CALL                             R12 2 1
       59 SETTABLEKS                       R12 R11 K24 ["CornerRadius"]
       61 CALL                             R9 2 1
       62 SETTABLEKS                       R9 R8 K19 ["uiCorner"]
       64 GETUPVAL                         R10 2
       65 GETTABLEKS                       R9 R10 K2 ["createElement"]
       67 LOADK                            R10 K28 ["UIStroke"]
       68 DUPTABLE                         R11 K30 [{"Thickness"}]
       69 LOADN                            R12 2
       70 SETTABLEKS                       R12 R11 K29 ["Thickness"]
       72 CALL                             R9 2 1
       73 SETTABLEKS                       R9 R8 K20 ["uiStroke"]
       75 GETUPVAL                         R10 2
       76 GETTABLEKS                       R9 R10 K2 ["createElement"]
       78 LOADK                            R10 K3 ["Frame"]
       79 DUPTABLE                         R11 K8 [{"AnchorPoint", "BackgroundColor3", "Size", "Position"}]
       80 GETIMPORT                        R12 K11 [Vector2.new]
       82 LOADN                            R13 0
       83 LOADK                            R14 K12 [0.5]
       84 CALL                             R12 2 1
       85 SETTABLEKS                       R12 R11 K4 ["AnchorPoint"]
       87 SETTABLEKS                       R4 R11 K5 ["BackgroundColor3"]
       89 GETIMPORT                        R12 K16 [UDim2.new]
       91 MOVE                             R13 R3
       92 LOADN                            R14 0
       93 LOADN                            R15 1
       94 LOADN                            R16 0
       95 CALL                             R12 4 1
       96 SETTABLEKS                       R12 R11 K6 ["Size"]
       98 GETIMPORT                        R12 K16 [UDim2.new]
      100 LOADN                            R13 0
      101 LOADN                            R14 0
      102 LOADK                            R15 K12 [0.5]
      103 LOADN                            R16 0
      104 CALL                             R12 4 1
      105 SETTABLEKS                       R12 R11 K7 ["Position"]
      107 DUPTABLE                         R12 K31 [{"uiCorner"}]
      108 GETUPVAL                         R14 2
      109 GETTABLEKS                       R13 R14 K2 ["createElement"]
      111 LOADK                            R14 K23 ["UICorner"]
      112 DUPTABLE                         R15 K25 [{"CornerRadius"}]
      113 GETIMPORT                        R16 K27 [UDim.new]
      115 LOADK                            R17 K12 [0.5]
      116 LOADK                            R18 K12 [0.5]
      117 CALL                             R16 2 1
      118 SETTABLEKS                       R16 R15 K24 ["CornerRadius"]
      120 CALL                             R13 2 1
      121 SETTABLEKS                       R13 R12 K19 ["uiCorner"]
      123 CALL                             R9 3 1
      124 SETTABLEKS                       R9 R8 K21 ["progressBar"]
      126 CALL                             R5 3 1
      127 RETURN                           R5 1

PROTO_31:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["packageAssetName"]
        4 GETTABLEKS                       R3 R1 K2 ["publishStatus"]
        6 GETTABLEKS                       R4 R1 K3 ["hasEditPermission"]
        8 JUMPIFNOT                        R4 ; [+7]
        9 GETIMPORT                        R5 K6 [Color3.fromRGB]
       11 LOADN                            R6 200
       12 LOADN                            R7 200
       13 LOADN                            R8 200
       14 CALL                             R5 3 1
       15 JUMP                             ; [+6]
       16 GETIMPORT                        R5 K6 [Color3.fromRGB]
       18 LOADN                            R6 100
       19 LOADN                            R7 100
       20 LOADN                            R8 100
       21 CALL                             R5 3 1
       22 GETUPVAL                         R7 0
       23 GETTABLEKS                       R6 R7 K7 ["createElement"]
       25 LOADK                            R7 K8 ["Frame"]
       26 DUPTABLE                         R8 K12 [{"BackgroundColor3", "Size", "Position"}]
       27 SETTABLEKS                       R5 R8 K9 ["BackgroundColor3"]
       29 GETIMPORT                        R9 K15 [UDim2.new]
       31 LOADN                            R10 0
       32 LOADN                            R11 80
       33 LOADN                            R12 0
       34 LOADN                            R13 80
       35 CALL                             R9 4 1
       36 SETTABLEKS                       R9 R8 K10 ["Size"]
       38 GETIMPORT                        R9 K15 [UDim2.new]
       40 LOADN                            R10 0
       41 LOADN                            R12 84
       42 GETTABLEKS                       R13 R1 K16 ["row"]
       44 MUL                              R11 R12 R13
       45 LOADN                            R12 0
       46 LOADN                            R14 84
       47 GETTABLEKS                       R15 R1 K17 ["column"]
       49 MUL                              R13 R14 R15
       50 CALL                             R9 4 1
       51 SETTABLEKS                       R9 R8 K11 ["Position"]
       53 DUPTABLE                         R9 K20 [{"packageName", "progressBar"}]
       54 GETUPVAL                         R11 0
       55 GETTABLEKS                       R10 R11 K7 ["createElement"]
       57 LOADK                            R11 K21 ["TextLabel"]
       58 DUPTABLE                         R12 K27 [{"BackgroundTransparency", "Text", "TextWrapped", "TextSize", "AnchorPoint", "Size", "Position"}]
       59 LOADN                            R13 1
       60 SETTABLEKS                       R13 R12 K22 ["BackgroundTransparency"]
       62 SETTABLEKS                       R2 R12 K23 ["Text"]
       64 LOADB                            R13 1
       65 SETTABLEKS                       R13 R12 K24 ["TextWrapped"]
       67 LOADN                            R13 16
       68 SETTABLEKS                       R13 R12 K25 ["TextSize"]
       70 GETIMPORT                        R13 K29 [Vector2.new]
       72 LOADK                            R14 K30 [0.5]
       73 LOADK                            R15 K30 [0.5]
       74 CALL                             R13 2 1
       75 SETTABLEKS                       R13 R12 K26 ["AnchorPoint"]
       77 GETIMPORT                        R13 K15 [UDim2.new]
       79 LOADN                            R14 1
       80 LOADN                            R15 0
       81 LOADN                            R16 1
       82 LOADN                            R17 0
       83 CALL                             R13 4 1
       84 SETTABLEKS                       R13 R12 K10 ["Size"]
       86 GETIMPORT                        R13 K15 [UDim2.new]
       88 LOADK                            R14 K30 [0.5]
       89 LOADN                            R15 0
       90 LOADK                            R16 K30 [0.5]
       91 LOADN                            R17 0
       92 CALL                             R13 4 1
       93 SETTABLEKS                       R13 R12 K11 ["Position"]
       95 CALL                             R10 2 1
       96 SETTABLEKS                       R10 R9 K18 ["packageName"]
       98 GETUPVAL                         R11 0
       99 GETTABLEKS                       R10 R11 K7 ["createElement"]
      101 GETUPVAL                         R11 1
      102 DUPTABLE                         R12 K31 [{"publishStatus"}]
      103 SETTABLEKS                       R3 R12 K2 ["publishStatus"]
      105 CALL                             R10 2 1
      106 SETTABLEKS                       R10 R9 K19 ["progressBar"]
      108 CALL                             R6 3 -1
      109 RETURN                           R6 -1

PROTO_32:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{"canCancel", "isCancelling"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["canCancel"]
        5 LOADB                            R3 1
        6 SETTABLEKS                       R3 R2 K1 ["isCancelling"]
        8 NAMECALL                         R0 R0 K3 ["setState"]
       10 CALL                             R0 2 0
       11 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["publishSelectedPackageHierarchy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_34:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["Localization"]
        4 GETTABLEKS                       R3 R0 K0 ["props"]
        6 GETTABLEKS                       R2 R3 K2 ["Stylizer"]
        8 GETTABLEKS                       R3 R2 K3 ["mainWindow"]
       10 GETTABLEKS                       R5 R0 K4 ["state"]
       12 GETTABLEKS                       R4 R5 K5 ["canPublish"]
       14 GETTABLEKS                       R6 R0 K4 ["state"]
       16 GETTABLEKS                       R5 R6 K6 ["isPublishing"]
       18 GETTABLEKS                       R7 R0 K4 ["state"]
       20 GETTABLEKS                       R6 R7 K7 ["canCancel"]
       22 GETTABLEKS                       R8 R0 K4 ["state"]
       24 GETTABLEKS                       R7 R8 K8 ["isCancelling"]
       26 NEWTABLE                         R8 0 0
       28 LOADN                            R9 0
       29 LOADN                            R10 0
       30 JUMPIF                           R4 ; [+3]
       31 JUMPIF                           R5 ; [+2]
       32 JUMPIF                           R6 ; [+1]
       33 JUMPIFNOT                        R7 ; [+72]
       34 LOADNIL                          R11
       35 LOADN                            R12 255
       36 LOADN                            R13 0
       37 GETIMPORT                        R14 K10 [ipairs]
       39 GETTABLEKS                       R17 R0 K4 ["state"]
       41 GETTABLEKS                       R15 R17 K11 ["packageLists"]
       43 CALL                             R14 1 3
       44 FORGPREP_INEXT                   R14
       45 GETTABLEKS                       R19 R18 K12 ["Depth"]
       47 JUMPIFEQ                         R11 R19 ; [+14]
       49 GETTABLEKS                       R11 R18 K12 ["Depth"]
       51 ADDK                             R12 R12 K13 [1]
       52 ADDK                             R21 R13 K13 [1]
       53 FASTCALL2                        MATH_MAX R10 R21 ; [+4]
       55 MOVE                             R20 R10
       56 GETIMPORT                        R19 K16 [math.max]
       58 CALL                             R19 2 1
       59 MOVE                             R10 R19
       60 LOADN                            R13 0
       61 JUMP                             ; [+1]
       62 ADDK                             R13 R13 K13 [1]
       63 GETTABLEKS                       R19 R18 K17 ["PackageId"]
       65 GETUPVAL                         R21 0
       66 GETTABLEKS                       R20 R21 K18 ["createElement"]
       68 GETUPVAL                         R21 1
       69 DUPTABLE                         R22 K24 [{"row", "column", "packageAssetName", "publishStatus", "hasEditPermission"}]
       70 SETTABLEKS                       R12 R22 K19 ["row"]
       72 SETTABLEKS                       R13 R22 K20 ["column"]
       74 GETTABLEKS                       R23 R18 K25 ["PackageAssetName"]
       76 SETTABLEKS                       R23 R22 K21 ["packageAssetName"]
       78 GETTABLEKS                       R23 R18 K26 ["PublishStatus"]
       80 SETTABLEKS                       R23 R22 K22 ["publishStatus"]
       82 GETTABLEKS                       R23 R18 K27 ["HasEditPermission"]
       84 SETTABLEKS                       R23 R22 K23 ["hasEditPermission"]
       86 CALL                             R20 2 1
       87 SETTABLE                         R20 R8 R19
       88 FORGLOOP                         R14 2 [inext] ; [-44]
       90 LOADN                            R15 0
       91 ADDK                             R16 R12 K13 [1]
       92 FASTCALL2                        MATH_MAX R15 R16 ; [+3]
       94 GETIMPORT                        R14 K16 [math.max]
       96 CALL                             R14 2 1
       97 MOVE                             R9 R14
       98 ADDK                             R16 R13 K13 [1]
       99 FASTCALL2                        MATH_MAX R10 R16 ; [+4]
      101 MOVE                             R15 R10
      102 GETIMPORT                        R14 K16 [math.max]
      104 CALL                             R14 2 1
      105 MOVE                             R10 R14
      106 GETUPVAL                         R12 0
      107 GETTABLEKS                       R11 R12 K18 ["createElement"]
      109 GETUPVAL                         R12 2
      110 DUPTABLE                         R13 K29 [{"BackgroundColor"}]
      111 GETTABLEKS                       R14 R3 K30 ["backgroundColor"]
      113 SETTABLEKS                       R14 R13 K28 ["BackgroundColor"]
      115 DUPTABLE                         R14 K33 [{"mainDisplay", "bottomBar"}]
      116 GETUPVAL                         R16 0
      117 GETTABLEKS                       R15 R16 K18 ["createElement"]
      119 LOADK                            R16 K34 ["Frame"]
      120 DUPTABLE                         R17 K39 [{"BackgroundTransparency", "AnchorPoint", "Size", "Position"}]
      121 LOADN                            R18 1
      122 SETTABLEKS                       R18 R17 K35 ["BackgroundTransparency"]
      124 GETIMPORT                        R18 K42 [Vector2.new]
      126 LOADK                            R19 K43 [0.5]
      127 LOADN                            R20 0
      128 CALL                             R18 2 1
      129 SETTABLEKS                       R18 R17 K36 ["AnchorPoint"]
      131 GETIMPORT                        R18 K45 [UDim2.new]
      133 LOADN                            R19 1
      134 LOADN                            R20 0
      135 LOADN                            R21 1
      136 LOADN                            R22 156
      137 CALL                             R18 4 1
      138 SETTABLEKS                       R18 R17 K37 ["Size"]
      140 GETIMPORT                        R18 K45 [UDim2.new]
      142 LOADK                            R19 K43 [0.5]
      143 LOADN                            R20 0
      144 LOADN                            R21 0
      145 LOADN                            R22 0
      146 CALL                             R18 4 1
      147 SETTABLEKS                       R18 R17 K38 ["Position"]
      149 DUPTABLE                         R18 K47 [{"scrollFrame"}]
      150 GETUPVAL                         R20 0
      151 GETTABLEKS                       R19 R20 K18 ["createElement"]
      153 LOADK                            R20 K48 ["ScrollingFrame"]
      154 DUPTABLE                         R21 K51 [{"ScrollingDirection", "BackgroundTransparency", "AnchorPoint", "Size", "Position", "CanvasSize"}]
      155 GETIMPORT                        R22 K54 [Enum.ScrollingDirection.XY]
      157 SETTABLEKS                       R22 R21 K49 ["ScrollingDirection"]
      159 LOADN                            R22 1
      160 SETTABLEKS                       R22 R21 K35 ["BackgroundTransparency"]
      162 GETIMPORT                        R22 K42 [Vector2.new]
      164 LOADK                            R23 K43 [0.5]
      165 LOADK                            R24 K43 [0.5]
      166 CALL                             R22 2 1
      167 SETTABLEKS                       R22 R21 K36 ["AnchorPoint"]
      169 GETIMPORT                        R22 K45 [UDim2.new]
      171 LOADN                            R23 1
      172 LOADN                            R24 248
      173 LOADN                            R25 1
      174 LOADN                            R26 248
      175 CALL                             R22 4 1
      176 SETTABLEKS                       R22 R21 K37 ["Size"]
      178 GETIMPORT                        R22 K45 [UDim2.new]
      180 LOADK                            R23 K43 [0.5]
      181 LOADN                            R24 0
      182 LOADK                            R25 K43 [0.5]
      183 LOADN                            R26 0
      184 CALL                             R22 4 1
      185 SETTABLEKS                       R22 R21 K38 ["Position"]
      187 GETIMPORT                        R22 K45 [UDim2.new]
      189 LOADN                            R23 0
      190 MULK                             R25 R9 K55 [80]
      191 LOADN                            R28 0
      192 SUBK                             R29 R9 K13 [1]
      193 FASTCALL2                        MATH_MAX R28 R29 ; [+3]
      195 GETIMPORT                        R27 K16 [math.max]
      197 CALL                             R27 2 1
      198 MULK                             R26 R27 K56 [4]
      199 ADD                              R24 R25 R26
      200 LOADN                            R25 0
      201 MULK                             R27 R10 K55 [80]
      202 LOADN                            R30 0
      203 SUBK                             R31 R10 K13 [1]
      204 FASTCALL2                        MATH_MAX R30 R31 ; [+3]
      206 GETIMPORT                        R29 K16 [math.max]
      208 CALL                             R29 2 1
      209 MULK                             R28 R29 K56 [4]
      210 ADD                              R26 R27 R28
      211 CALL                             R22 4 1
      212 SETTABLEKS                       R22 R21 K50 ["CanvasSize"]
      214 MOVE                             R22 R8
      215 CALL                             R19 3 1
      216 SETTABLEKS                       R19 R18 K46 ["scrollFrame"]
      218 CALL                             R15 3 1
      219 SETTABLEKS                       R15 R14 K31 ["mainDisplay"]
      221 GETUPVAL                         R16 0
      222 GETTABLEKS                       R15 R16 K18 ["createElement"]
      224 LOADK                            R16 K34 ["Frame"]
      225 DUPTABLE                         R17 K39 [{"BackgroundTransparency", "AnchorPoint", "Size", "Position"}]
      226 LOADN                            R18 1
      227 SETTABLEKS                       R18 R17 K35 ["BackgroundTransparency"]
      229 GETIMPORT                        R18 K42 [Vector2.new]
      231 LOADK                            R19 K43 [0.5]
      232 LOADN                            R20 1
      233 CALL                             R18 2 1
      234 SETTABLEKS                       R18 R17 K36 ["AnchorPoint"]
      236 GETIMPORT                        R18 K45 [UDim2.new]
      238 LOADN                            R19 1
      239 LOADN                            R20 0
      240 LOADN                            R21 0
      241 LOADN                            R22 100
      242 CALL                             R18 4 1
      243 SETTABLEKS                       R18 R17 K37 ["Size"]
      245 GETIMPORT                        R18 K45 [UDim2.new]
      247 LOADK                            R19 K43 [0.5]
      248 LOADN                            R20 0
      249 LOADN                            R21 1
      250 LOADN                            R22 0
      251 CALL                             R18 4 1
      252 SETTABLEKS                       R18 R17 K38 ["Position"]
      254 DUPTABLE                         R18 K59 [{"cancelButton", "publishHierarchyButton"}]
      255 MOVE                             R19 R6
      256 JUMPIFNOT                        R19 ; [+42]
      257 GETUPVAL                         R20 0
      258 GETTABLEKS                       R19 R20 K18 ["createElement"]
      260 GETUPVAL                         R20 3
      261 DUPTABLE                         R21 K62 [{"Text", "AnchorPoint", "Size", "Position", "OnClick"}]
      262 LOADK                            R24 K63 ["Action"]
      263 LOADK                            R25 K64 ["Cancel"]
      264 NAMECALL                         R22 R1 K65 ["getText"]
      266 CALL                             R22 3 1
      267 SETTABLEKS                       R22 R21 K60 ["Text"]
      269 GETIMPORT                        R22 K42 [Vector2.new]
      271 LOADN                            R23 0
      272 LOADK                            R24 K43 [0.5]
      273 CALL                             R22 2 1
      274 SETTABLEKS                       R22 R21 K36 ["AnchorPoint"]
      276 GETIMPORT                        R22 K45 [UDim2.new]
      278 LOADK                            R23 K66 [0.3]
      279 LOADN                            R24 0
      280 LOADN                            R25 1
      281 LOADN                            R26 248
      282 CALL                             R22 4 1
      283 SETTABLEKS                       R22 R21 K37 ["Size"]
      285 GETIMPORT                        R22 K45 [UDim2.new]
      287 LOADN                            R23 0
      288 LOADN                            R24 4
      289 LOADK                            R25 K43 [0.5]
      290 LOADN                            R26 0
      291 CALL                             R22 4 1
      292 SETTABLEKS                       R22 R21 K38 ["Position"]
      294 NEWCLOSURE                       R22 P0
      295 CAPTURE                          VAL R0
      296 SETTABLEKS                       R22 R21 K61 ["OnClick"]
      298 CALL                             R19 2 1
      299 SETTABLEKS                       R19 R18 K57 ["cancelButton"]
      301 MOVE                             R19 R4
      302 JUMPIFNOT                        R19 ; [+42]
      303 GETUPVAL                         R20 0
      304 GETTABLEKS                       R19 R20 K18 ["createElement"]
      306 GETUPVAL                         R20 3
      307 DUPTABLE                         R21 K62 [{"Text", "AnchorPoint", "Size", "Position", "OnClick"}]
      308 LOADK                            R24 K63 ["Action"]
      309 LOADK                            R25 K67 ["Publish"]
      310 NAMECALL                         R22 R1 K65 ["getText"]
      312 CALL                             R22 3 1
      313 SETTABLEKS                       R22 R21 K60 ["Text"]
      315 GETIMPORT                        R22 K42 [Vector2.new]
      317 LOADN                            R23 1
      318 LOADK                            R24 K43 [0.5]
      319 CALL                             R22 2 1
      320 SETTABLEKS                       R22 R21 K36 ["AnchorPoint"]
      322 GETIMPORT                        R22 K45 [UDim2.new]
      324 LOADK                            R23 K66 [0.3]
      325 LOADN                            R24 0
      326 LOADN                            R25 1
      327 LOADN                            R26 248
      328 CALL                             R22 4 1
      329 SETTABLEKS                       R22 R21 K37 ["Size"]
      331 GETIMPORT                        R22 K45 [UDim2.new]
      333 LOADN                            R23 1
      334 LOADN                            R24 252
      335 LOADK                            R25 K43 [0.5]
      336 LOADN                            R26 0
      337 CALL                             R22 4 1
      338 SETTABLEKS                       R22 R21 K38 ["Position"]
      340 NEWCLOSURE                       R22 P1
      341 CAPTURE                          VAL R0
      342 SETTABLEKS                       R22 R21 K61 ["OnClick"]
      344 CALL                             R19 2 1
      345 SETTABLEKS                       R19 R18 K58 ["publishHierarchyButton"]
      347 CALL                             R15 3 1
      348 SETTABLEKS                       R15 R14 K32 ["bottomBar"]
      350 CALL                             R11 3 -1
      351 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["ContextServices"]
       25 GETTABLEKS                       R4 R3 K9 ["withContext"]
       27 GETTABLEKS                       R5 R3 K10 ["Analytics"]
       29 GETTABLEKS                       R6 R3 K11 ["Localization"]
       31 GETTABLEKS                       R8 R2 K12 ["Style"]
       33 GETTABLEKS                       R7 R8 K13 ["Stylizer"]
       35 GETTABLEKS                       R9 R2 K14 ["Util"]
       37 GETTABLEKS                       R8 R9 K15 ["Promise"]
       39 GETTABLEKS                       R9 R2 K16 ["UI"]
       41 GETTABLEKS                       R10 R9 K17 ["Pane"]
       43 GETTABLEKS                       R12 R2 K16 ["UI"]
       45 GETTABLEKS                       R11 R12 K18 ["Button"]
       47 GETIMPORT                        R12 K20 [game]
       49 LOADK                            R14 K21 ["TurnOffNPPThrottling"]
       50 LOADB                            R15 0
       51 NAMECALL                         R12 R12 K22 ["GetFastFlag"]
       53 CALL                             R12 3 1
       54 GETTABLEKS                       R13 R1 K23 ["PureComponent"]
       56 LOADK                            R15 K24 ["PublishFrame"]
       57 NAMECALL                         R13 R13 K25 ["extend"]
       59 CALL                             R13 2 1
       60 GETIMPORT                        R14 K27 [pcall]
       62 DUPCLOSURE                       R15 K28 [PROTO_0]
       63 CALL                             R14 1 2
       64 GETIMPORT                        R16 K20 [game]
       66 LOADK                            R18 K29 ["Selection"]
       67 NAMECALL                         R16 R16 K30 ["GetService"]
       69 CALL                             R16 2 1
       70 GETIMPORT                        R17 K20 [game]
       72 LOADK                            R19 K31 ["PackageUploadThrottleTimeMin"]
       73 LOADN                            R20 2
       74 NAMECALL                         R17 R17 K32 ["GetFastInt"]
       76 CALL                             R17 3 1
       77 GETIMPORT                        R18 K20 [game]
       79 LOADK                            R20 K33 ["PackageUploadThrottleAllowedPackages"]
       80 LOADN                            R21 180
       81 NAMECALL                         R18 R18 K32 ["GetFastInt"]
       83 CALL                             R18 3 1
       84 DUPTABLE                         R19 K43 [{"PackagePublishSuccess", "PackagePublishFailure", "PackagePublishSkipped", "TempContainerName", "UpToDateString", "NewVersionString", "OperationEnded", "OperationCancelled", "LatestVersionFailure"}]
       85 LOADK                            R20 K44 ["Package published! {%s, %s}"]
       86 SETTABLEKS                       R20 R19 K34 ["PackagePublishSuccess"]
       88 LOADK                            R20 K45 ["Failed to publish package. Retrying... {%s, %s}"]
       89 SETTABLEKS                       R20 R19 K35 ["PackagePublishFailure"]
       91 LOADK                            R20 K46 ["Package skipped due to no changes detected. {%s, %s}"]
       92 SETTABLEKS                       R20 R19 K36 ["PackagePublishSkipped"]
       94 LOADK                            R20 K47 ["NPP_Cloned_Instances"]
       95 SETTABLEKS                       R20 R19 K37 ["TempContainerName"]
       97 LOADK                            R20 K48 ["Up To Date"]
       98 SETTABLEKS                       R20 R19 K38 ["UpToDateString"]
      100 LOADK                            R20 K49 ["New Version Available"]
      101 SETTABLEKS                       R20 R19 K39 ["NewVersionString"]
      103 LOADK                            R20 K50 ["Hierarchical Publish Operation completed!"]
      104 SETTABLEKS                       R20 R19 K40 ["OperationEnded"]
      106 LOADK                            R20 K51 ["Hierarchal Publish Operation cancelled."]
      107 SETTABLEKS                       R20 R19 K41 ["OperationCancelled"]
      109 LOADK                            R20 K52 ["There was an issue getting the latest version of a package. Ending process."]
      110 SETTABLEKS                       R20 R19 K42 ["LatestVersionFailure"]
      112 DUPTABLE                         R20 K59 [{"Ready", "Pending", "Updating", "Failed", "Success", "Skipped"}]
      113 LOADN                            R21 0
      114 SETTABLEKS                       R21 R20 K53 ["Ready"]
      116 LOADN                            R21 1
      117 SETTABLEKS                       R21 R20 K54 ["Pending"]
      119 LOADN                            R21 2
      120 SETTABLEKS                       R21 R20 K55 ["Updating"]
      122 LOADN                            R21 3
      123 SETTABLEKS                       R21 R20 K56 ["Failed"]
      125 LOADN                            R21 4
      126 SETTABLEKS                       R21 R20 K57 ["Success"]
      128 LOADN                            R21 5
      129 SETTABLEKS                       R21 R20 K58 ["Skipped"]
      131 NEWTABLE                         R21 8 0
      133 GETTABLEKS                       R22 R20 K55 ["Updating"]
      135 LOADK                            R23 K60 [0.3]
      136 SETTABLE                         R23 R21 R22
      137 GETTABLEKS                       R22 R20 K54 ["Pending"]
      139 LOADK                            R23 K61 [0.7]
      140 SETTABLE                         R23 R21 R22
      141 GETTABLEKS                       R22 R20 K56 ["Failed"]
      143 LOADK                            R23 K61 [0.7]
      144 SETTABLE                         R23 R21 R22
      145 GETTABLEKS                       R22 R20 K57 ["Success"]
      147 LOADN                            R23 1
      148 SETTABLE                         R23 R21 R22
      149 GETTABLEKS                       R22 R20 K58 ["Skipped"]
      151 LOADN                            R23 1
      152 SETTABLE                         R23 R21 R22
      153 NEWTABLE                         R22 8 0
      155 GETTABLEKS                       R23 R20 K55 ["Updating"]
      157 GETIMPORT                        R24 K64 [Color3.fromRGB]
      159 LOADN                            R25 145
      160 LOADN                            R26 50
      161 LOADN                            R27 235
      162 CALL                             R24 3 1
      163 SETTABLE                         R24 R22 R23
      164 GETTABLEKS                       R23 R20 K54 ["Pending"]
      166 GETIMPORT                        R24 K64 [Color3.fromRGB]
      168 LOADN                            R25 255
      169 LOADN                            R26 185
      170 LOADN                            R27 0
      171 CALL                             R24 3 1
      172 SETTABLE                         R24 R22 R23
      173 GETTABLEKS                       R23 R20 K56 ["Failed"]
      175 GETIMPORT                        R24 K64 [Color3.fromRGB]
      177 LOADN                            R25 225
      178 LOADN                            R26 50
      179 LOADN                            R27 25
      180 CALL                             R24 3 1
      181 SETTABLE                         R24 R22 R23
      182 GETTABLEKS                       R23 R20 K57 ["Success"]
      184 GETIMPORT                        R24 K64 [Color3.fromRGB]
      186 LOADN                            R25 25
      187 LOADN                            R26 225
      188 LOADN                            R27 40
      189 CALL                             R24 3 1
      190 SETTABLE                         R24 R22 R23
      191 GETTABLEKS                       R23 R20 K58 ["Skipped"]
      193 GETIMPORT                        R24 K64 [Color3.fromRGB]
      195 LOADN                            R25 44
      196 LOADN                            R26 101
      197 LOADN                            R27 29
      198 CALL                             R24 3 1
      199 SETTABLE                         R24 R22 R23
      200 DUPCLOSURE                       R23 K65 [PROTO_1]
      201 DUPCLOSURE                       R24 K66 [PROTO_2]
      202 DUPCLOSURE                       R25 K67 [PROTO_3]
      203 CAPTURE                          VAL R24
      204 DUPCLOSURE                       R26 K68 [PROTO_4]
      205 CAPTURE                          VAL R24
      206 CAPTURE                          VAL R26
      207 DUPCLOSURE                       R27 K69 [PROTO_5]
      208 CAPTURE                          VAL R26
      209 DUPCLOSURE                       R28 K70 [PROTO_6]
      210 CAPTURE                          VAL R24
      211 CAPTURE                          VAL R28
      212 DUPCLOSURE                       R29 K71 [PROTO_7]
      213 CAPTURE                          VAL R28
      214 DUPCLOSURE                       R30 K72 [PROTO_9]
      215 CAPTURE                          VAL R15
      216 DUPCLOSURE                       R31 K73 [PROTO_10]
      217 CAPTURE                          VAL R31
      218 DUPCLOSURE                       R32 K74 [PROTO_11]
      219 DUPCLOSURE                       R33 K75 [PROTO_14]
      220 CAPTURE                          VAL R28
      221 CAPTURE                          VAL R15
      222 DUPCLOSURE                       R34 K76 [PROTO_15]
      223 CAPTURE                          VAL R26
      224 CAPTURE                          VAL R20
      225 CAPTURE                          VAL R30
      226 SETTABLEKS                       R34 R13 K77 ["runScopedMassUpdate"]
      228 DUPCLOSURE                       R34 K78 [PROTO_16]
      229 CAPTURE                          VAL R19
      230 CAPTURE                          VAL R30
      231 SETTABLEKS                       R34 R13 K79 ["getLatestVersionClone"]
      233 DUPCLOSURE                       R34 K80 [PROTO_20]
      234 CAPTURE                          VAL R8
      235 CAPTURE                          VAL R20
      236 CAPTURE                          VAL R19
      237 CAPTURE                          VAL R15
      238 SETTABLEKS                       R34 R13 K81 ["promiseToPublishPackage"]
      240 DUPCLOSURE                       R34 K82 [PROTO_23]
      241 CAPTURE                          VAL R12
      242 CAPTURE                          VAL R17
      243 CAPTURE                          VAL R18
      244 SETTABLEKS                       R34 R13 K83 ["waitForPromises"]
      246 DUPCLOSURE                       R34 K84 [PROTO_24]
      247 SETTABLEKS                       R34 R13 K85 ["doPackagePublishing"]
      249 DUPCLOSURE                       R34 K86 [PROTO_25]
      250 CAPTURE                          VAL R19
      251 CAPTURE                          VAL R16
      252 CAPTURE                          VAL R31
      253 CAPTURE                          VAL R30
      254 CAPTURE                          VAL R1
      255 SETTABLEKS                       R34 R13 K87 ["publishSelectedPackageHierarchy"]
      257 DUPCLOSURE                       R34 K88 [PROTO_26]
      258 CAPTURE                          VAL R16
      259 CAPTURE                          VAL R1
      260 CAPTURE                          VAL R19
      261 CAPTURE                          VAL R33
      262 CAPTURE                          VAL R32
      263 CAPTURE                          VAL R20
      264 SETTABLEKS                       R34 R13 K89 ["onChangeSelection"]
      266 DUPCLOSURE                       R34 K90 [PROTO_28]
      267 CAPTURE                          VAL R16
      268 SETTABLEKS                       R34 R13 K91 ["didMount"]
      270 DUPCLOSURE                       R34 K92 [PROTO_29]
      271 SETTABLEKS                       R34 R13 K93 ["didUpdate"]
      273 GETTABLEKS                       R34 R1 K23 ["PureComponent"]
      275 LOADK                            R36 K94 ["ProgressBar"]
      276 NAMECALL                         R34 R34 K25 ["extend"]
      278 CALL                             R34 2 1
      279 DUPCLOSURE                       R35 K95 [PROTO_30]
      280 CAPTURE                          VAL R21
      281 CAPTURE                          VAL R22
      282 CAPTURE                          VAL R1
      283 SETTABLEKS                       R35 R34 K96 ["render"]
      285 GETTABLEKS                       R35 R1 K23 ["PureComponent"]
      287 LOADK                            R37 K97 ["PackageBoxItem"]
      288 NAMECALL                         R35 R35 K25 ["extend"]
      290 CALL                             R35 2 1
      291 DUPCLOSURE                       R36 K98 [PROTO_31]
      292 CAPTURE                          VAL R1
      293 CAPTURE                          VAL R34
      294 SETTABLEKS                       R36 R35 K96 ["render"]
      296 DUPCLOSURE                       R36 K99 [PROTO_34]
      297 CAPTURE                          VAL R1
      298 CAPTURE                          VAL R35
      299 CAPTURE                          VAL R10
      300 CAPTURE                          VAL R11
      301 SETTABLEKS                       R36 R13 K96 ["render"]
      303 MOVE                             R36 R4
      304 DUPTABLE                         R37 K100 [{"Analytics", "Localization", "Stylizer"}]
      305 SETTABLEKS                       R5 R37 K10 ["Analytics"]
      307 SETTABLEKS                       R6 R37 K11 ["Localization"]
      309 SETTABLEKS                       R7 R37 K13 ["Stylizer"]
      311 CALL                             R36 1 1
      312 MOVE                             R37 R13
      313 CALL                             R36 1 1
      314 MOVE                             R13 R36
      315 RETURN                           R13 1
