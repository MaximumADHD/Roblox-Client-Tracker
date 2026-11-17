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
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 FASTPCALL                        pcall 2 ; [+2]
        3 GETIMPORT                        R2 K1 [pcall]
        5 CALL                             R2 2 1
        6 NOT                              R1 R2
        7 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R5 0
        1 MOVE                             R6 R1
        2 FASTPCALL                        pcall 2 ; [+2]
        3 GETIMPORT                        R4 K1 [pcall]
        5 CALL                             R4 2 1
        6 NOT                              R3 R4
        7 JUMPIFNOT                        R3 ; [+1]
        8 RETURN                           R0 0
        9 JUMPIF                           R1 ; [+2]
       10 LOADNIL                          R3
       11 JUMP                             ; [+4]
       12 LOADK                            R5 K2 ["PackageLink"]
       13 NAMECALL                         R3 R1 K3 ["FindFirstChildOfClass"]
       15 CALL                             R3 2 1
       16 JUMPIFNOT                        R3 ; [+18]
       17 GETTABLEKS                       R5 R3 K4 ["PackageId"]
       19 GETTABLE                         R4 R2 R5
       20 JUMPIFNOT                        R4 ; [+14]
       21 GETTABLEKS                       R5 R4 K5 ["oldVersionId"]
       23 GETTABLEKS                       R6 R3 K6 ["VersionNumber"]
       25 JUMPIFNOTEQ                      R5 R6 ; [+9]
       27 FASTCALL2                        TABLE_INSERT R0 R1 ; [+5]
       29 MOVE                             R6 R0
       30 MOVE                             R7 R1
       31 GETIMPORT                        R5 K9 [table.insert]
       33 CALL                             R5 2 0
       34 RETURN                           R0 0
       35 NAMECALL                         R4 R1 K10 ["GetChildren"]
       37 CALL                             R4 1 3
       38 FORGPREP                         R4
       39 GETUPVAL                         R9 1
       40 MOVE                             R10 R0
       41 MOVE                             R11 R8
       42 MOVE                             R12 R2
       43 CALL                             R9 3 0
       44 FORGLOOP                         R4 2 ; [-6]
       46 RETURN                           R0 0

PROTO_5:
        0 NEWTABLE                         R2 0 0
        2 GETUPVAL                         R3 0
        3 MOVE                             R4 R2
        4 MOVE                             R5 R0
        5 MOVE                             R6 R1
        6 CALL                             R3 3 0
        7 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R5 0
        1 MOVE                             R6 R1
        2 FASTPCALL                        pcall 2 ; [+2]
        3 GETIMPORT                        R4 K1 [pcall]
        5 CALL                             R4 2 1
        6 NOT                              R3 R4
        7 JUMPIFNOT                        R3 ; [+1]
        8 RETURN                           R0 0
        9 JUMPIF                           R1 ; [+2]
       10 LOADNIL                          R3
       11 JUMP                             ; [+4]
       12 LOADK                            R5 K2 ["PackageLink"]
       13 NAMECALL                         R3 R1 K3 ["FindFirstChildOfClass"]
       15 CALL                             R3 2 1
       16 JUMPIFNOT                        R3 ; [+24]
       17 GETTABLEKS                       R5 R3 K4 ["PackageId"]
       19 GETTABLE                         R4 R0 R5
       20 JUMPIF                           R4 ; [+10]
       21 GETTABLEKS                       R4 R3 K4 ["PackageId"]
       23 DUPTABLE                         R5 K7 [{"instance", "parents"}]
       24 SETTABLEKS                       R1 R5 K5 ["instance"]
       26 NEWTABLE                         R6 0 0
       28 SETTABLEKS                       R6 R5 K6 ["parents"]
       30 SETTABLE                         R5 R0 R4
       31 JUMPIFNOT                        R2 ; [+7]
       32 GETTABLEKS                       R5 R3 K4 ["PackageId"]
       34 GETTABLE                         R4 R0 R5
       35 GETTABLEKS                       R4 R4 K6 ["parents"]
       37 GETTABLE                         R5 R0 R2
       38 SETTABLE                         R5 R4 R2
       39 GETTABLEKS                       R2 R3 K4 ["PackageId"]
       41 NAMECALL                         R4 R1 K8 ["GetChildren"]
       43 CALL                             R4 1 3
       44 FORGPREP                         R4
       45 GETUPVAL                         R9 1
       46 MOVE                             R10 R0
       47 MOVE                             R11 R8
       48 MOVE                             R12 R2
       49 CALL                             R9 3 0
       50 FORGLOOP                         R4 2 ; [-6]
       52 RETURN                           R0 0

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
       17 NEWCLOSURE                       R3 P0
       18 CAPTURE                          UPVAL U0
       19 CAPTURE                          VAL R0
       20 CAPTURE                          VAL R1
       21 FASTPCALL                        pcall 1 ; [+2]
       22 GETIMPORT                        R2 K6 [pcall]
       24 CALL                             R2 1 2
       25 JUMPIFNOT                        R2 ; [+1]
       26 JUMPIF                           R3 ; [+5]
       27 GETIMPORT                        R4 K8 [warn]
       29 MOVE                             R5 R3
       30 CALL                             R4 1 0
       31 RETURN                           R0 0
       32 RETURN                           R3 1

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
       28 GETUPVAL                         R7 2
       29 GETTABLE                         R6 R7 R0
       30 GETTABLEKS                       R6 R6 K7 ["Depth"]
       32 FASTCALL2                        MATH_MAX R6 R1 ; [+4]
       34 MOVE                             R7 R1
       35 GETIMPORT                        R5 K10 [math.max]
       37 CALL                             R5 2 1
       38 SETTABLEKS                       R5 R4 K7 ["Depth"]
       40 RETURN                           R0 0
       41 NEWCLOSURE                       R5 P0
       42 CAPTURE                          VAL R0
       43 CAPTURE                          UPVAL U3
       44 FASTPCALL                        pcall 1 ; [+2]
       45 GETIMPORT                        R4 K12 [pcall]
       47 CALL                             R4 1 2
       48 JUMPIF                           R4 ; [+4]
       49 GETIMPORT                        R6 K14 [error]
       51 MOVE                             R7 R5
       52 CALL                             R6 1 0
       53 JUMPIFEQKN                       R1 K15 [0] ; [+2]
       55 LOADB                            R6 0 +1
       56 LOADB                            R6 1
       57 DUPTABLE                         R7 K23 [{"PackageId", "FoundInstance", "Depth", "Changed", "IsSelected", "LatestVersionNumber", "PackageAssetName", "HasEditPermission"}]
       58 SETTABLEKS                       R0 R7 K16 ["PackageId"]
       60 JUMPIFNOT                        R6 ; [+2]
       61 GETUPVAL                         R8 4
       62 JUMP                             ; [+2]
       63 GETTABLEKS                       R8 R3 K24 ["instance"]
       65 SETTABLEKS                       R8 R7 K17 ["FoundInstance"]
       67 SETTABLEKS                       R1 R7 K7 ["Depth"]
       69 SETTABLEKS                       R6 R7 K18 ["Changed"]
       71 SETTABLEKS                       R6 R7 K19 ["IsSelected"]
       73 GETTABLEKS                       R8 R5 K20 ["LatestVersionNumber"]
       75 SETTABLEKS                       R8 R7 K20 ["LatestVersionNumber"]
       77 GETTABLEKS                       R8 R5 K21 ["PackageAssetName"]
       79 SETTABLEKS                       R8 R7 K21 ["PackageAssetName"]
       81 GETTABLEKS                       R9 R5 K25 ["PermissionLevel"]
       83 GETTABLEKS                       R9 R9 K26 ["Value"]
       85 GETIMPORT                        R10 K30 [Enum.PackagePermission.Edit]
       87 GETTABLEKS                       R10 R10 K26 ["Value"]
       89 JUMPIFLE                         R10 R9 ; [+2]
       91 LOADB                            R8 0 +1
       92 LOADB                            R8 1
       93 SETTABLEKS                       R8 R7 K22 ["HasEditPermission"]
       95 GETUPVAL                         R8 2
       96 SETTABLE                         R7 R8 R0
       97 GETUPVAL                         R9 5
       98 FASTCALL2                        TABLE_INSERT R9 R7 ; [+4]
      100 MOVE                             R10 R7
      101 GETIMPORT                        R8 K32 [table.insert]
      103 CALL                             R8 2 0
      104 RETURN                           R0 0

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
       22 NEWTABLE                         R3 0 0
       24 GETUPVAL                         R4 0
       25 MOVE                             R5 R3
       26 MOVE                             R6 R1
       27 LOADNIL                          R7
       28 CALL                             R4 3 0
       29 NEWTABLE                         R4 0 0
       31 NEWTABLE                         R5 0 0
       33 NEWCLOSURE                       R6 P0
       34 CAPTURE                          VAL R3
       35 CAPTURE                          VAL R6
       36 CAPTURE                          VAL R4
       37 CAPTURE                          UPVAL U1
       38 CAPTURE                          VAL R0
       39 CAPTURE                          VAL R5
       40 MOVE                             R7 R6
       41 GETTABLEKS                       R8 R2 K4 ["PackageId"]
       43 LOADN                            R9 0
       44 NEWTABLE                         R10 0 0
       46 CALL                             R7 3 0
       47 RETURN                           R5 1

PROTO_15:
        0 NEWTABLE                         R4 0 0
        2 GETUPVAL                         R5 0
        3 MOVE                             R6 R4
        4 MOVE                             R7 R2
        5 MOVE                             R8 R3
        6 CALL                             R5 3 0
        7 LENGTH                           R5 R4
        8 LOADN                            R6 0
        9 JUMPIFNOTLT                      R6 R5 ; [+60]
       11 LOADN                            R5 2
       12 SETTABLEKS                       R5 R1 K0 ["PublishStatus"]
       14 NEWTABLE                         R7 0 0
       16 NAMECALL                         R5 R0 K1 ["setState"]
       18 CALL                             R5 2 0
       19 GETIMPORT                        R5 K3 [ipairs]
       21 MOVE                             R6 R4
       22 CALL                             R5 1 3
       23 FORGPREP_INEXT                   R5
       24 JUMPIF                           R9 ; [+2]
       25 LOADNIL                          R11
       26 JUMP                             ; [+4]
       27 LOADK                            R13 K4 ["PackageLink"]
       28 NAMECALL                         R11 R9 K5 ["FindFirstChildOfClass"]
       30 CALL                             R11 2 1
       31 GETTABLEKS                       R11 R11 K6 ["PackageId"]
       33 GETTABLE                         R10 R3 R11
       34 LOADN                            R11 0
       35 GETTABLEKS                       R12 R0 K7 ["state"]
       37 GETTABLEKS                       R12 R12 K8 ["isCancelling"]
       39 JUMPIFNOT                        R12 ; [+1]
       40 RETURN                           R0 0
       41 GETUPVAL                         R12 1
       42 MOVE                             R13 R9
       43 GETTABLEKS                       R14 R10 K9 ["newVersionId"]
       45 CALL                             R12 2 1
       46 JUMPIFNOT                        R12 ; [+4]
       47 LOADB                            R12 1
       48 SETTABLEKS                       R12 R1 K10 ["Changed"]
       50 JUMP                             ; [+17]
       51 DUPTABLE                         R14 K12 [{"canCancel"}]
       52 LOADN                            R16 3
       53 JUMPIFLE                         R16 R11 ; [+2]
       55 LOADB                            R15 0 +1
       56 LOADB                            R15 1
       57 SETTABLEKS                       R15 R14 K11 ["canCancel"]
       59 NAMECALL                         R12 R0 K1 ["setState"]
       61 CALL                             R12 2 0
       62 ADDK                             R11 R11 K13 [1]
       63 GETIMPORT                        R12 K16 [task.wait]
       65 LOADK                            R13 K17 [0.5]
       66 CALL                             R12 1 0
       67 JUMPBACK                         ; [-33]
       68 FORGLOOP                         R5 2 [inext] ; [-45]
       70 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R2 R1 K0 ["FoundInstance"]
        2 JUMPIF                           R2 ; [+5]
        3 GETIMPORT                        R3 K2 [warn]
        5 LOADK                            R4 K3 ["There was an issue getting the latest version of a package. Ending process."]
        6 CALL                             R3 1 0
        7 RETURN                           R0 0
        8 NAMECALL                         R3 R2 K4 ["Clone"]
       10 CALL                             R3 1 1
       11 MOVE                             R2 R3
       12 GETTABLEKS                       R3 R0 K5 ["state"]
       14 GETTABLEKS                       R3 R3 K6 ["tempContainer"]
       16 SETTABLEKS                       R3 R2 K7 ["Parent"]
       18 GETTABLEKS                       R3 R1 K8 ["IsSelected"]
       20 JUMPIFNOT                        R3 ; [+1]
       21 RETURN                           R2 1
       22 LOADN                            R3 0
       23 LOADNIL                          R4
       24 GETTABLEKS                       R5 R0 K5 ["state"]
       26 GETTABLEKS                       R5 R5 K9 ["isCancelling"]
       28 JUMPIFNOT                        R5 ; [+1]
       29 RETURN                           R0 0
       30 GETUPVAL                         R5 0
       31 MOVE                             R6 R2
       32 GETTABLEKS                       R7 R1 K10 ["LatestVersionNumber"]
       34 CALL                             R5 2 1
       35 MOVE                             R4 R5
       36 JUMPIF                           R4 ; [+41]
       37 LOADN                            R6 3
       38 JUMPIFLE                         R6 R3 ; [+2]
       40 LOADB                            R5 0 +1
       41 LOADB                            R5 1
       42 GETTABLEKS                       R6 R0 K5 ["state"]
       44 GETTABLEKS                       R6 R6 K11 ["canCancel"]
       46 JUMPIFEQ                         R6 R5 ; [+7]
       48 DUPTABLE                         R8 K12 [{"canCancel"}]
       49 SETTABLEKS                       R5 R8 K11 ["canCancel"]
       51 NAMECALL                         R6 R0 K13 ["setState"]
       53 CALL                             R6 2 0
       54 GETIMPORT                        R6 K2 [warn]
       56 GETIMPORT                        R7 K16 [string.format]
       58 LOADK                            R8 K17 ["Failed to publish package. Retrying... {%s, %s}"]
       59 GETTABLEKS                       R9 R1 K18 ["PackageAssetName"]
       61 GETTABLEKS                       R10 R1 K19 ["PackageId"]
       63 CALL                             R7 3 -1
       64 CALL                             R6 -1 0
       65 GETIMPORT                        R6 K22 [task.wait]
       67 LOADN                            R8 2
       68 FASTCALL2K                       MATH_MIN R3 K23 ; [+5]
       70 MOVE                             R10 R3
       71 LOADK                            R11 K23 [2]
       72 GETIMPORT                        R9 K26 [math.min]
       74 CALL                             R9 2 1
       75 POW                              R7 R8 R9
       76 CALL                             R6 1 0
       77 ADDK                             R3 R3 K27 [1]
       78 JUMPIF                           R4 ; [+1]
       79 JUMPBACK                         ; [-56]
       80 RETURN                           R4 1

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 LOADB                            R3 0
        3 NAMECALL                         R0 R0 K0 ["PublishPackage"]
        5 CALL                             R0 3 0
        6 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["state"]
        3 GETTABLEKS                       R0 R0 K1 ["isCancelling"]
        5 JUMPIFNOT                        R0 ; [+3]
        6 GETUPVAL                         R0 1
        7 CALL                             R0 0 -1
        8 RETURN                           R0 -1
        9 GETUPVAL                         R0 0
       10 DUPTABLE                         R2 K4 [{["canCancel"] = False}]
       11 NAMECALL                         R0 R0 K5 ["setState"]
       13 CALL                             R0 2 0
       14 GETUPVAL                         R0 0
       15 GETUPVAL                         R2 2
       16 NAMECALL                         R0 R0 K6 ["getLatestVersionClone"]
       18 CALL                             R0 2 1
       19 JUMPIF                           R0 ; [+3]
       20 GETUPVAL                         R1 1
       21 CALL                             R1 0 -1
       22 RETURN                           R1 -1
       23 GETUPVAL                         R1 2
       24 GETTABLEKS                       R1 R1 K7 ["IsSelected"]
       26 JUMPIF                           R1 ; [+7]
       27 GETUPVAL                         R1 0
       28 GETUPVAL                         R3 2
       29 MOVE                             R4 R0
       30 GETUPVAL                         R5 3
       31 NAMECALL                         R1 R1 K8 ["runScopedMassUpdate"]
       33 CALL                             R1 4 0
       34 GETUPVAL                         R1 2
       35 GETTABLEKS                       R1 R1 K9 ["Changed"]
       37 JUMPIF                           R1 ; [+26]
       38 GETUPVAL                         R1 2
       39 LOADN                            R2 5
       40 SETTABLEKS                       R2 R1 K10 ["PublishStatus"]
       42 GETUPVAL                         R1 0
       43 NEWTABLE                         R3 0 0
       45 NAMECALL                         R1 R1 K5 ["setState"]
       47 CALL                             R1 2 0
       48 GETIMPORT                        R1 K12 [warn]
       50 GETIMPORT                        R2 K15 [string.format]
       52 LOADK                            R3 K16 ["Package skipped due to no changes detected. {%s, %s}"]
       53 GETUPVAL                         R4 2
       54 GETTABLEKS                       R4 R4 K17 ["PackageAssetName"]
       56 GETUPVAL                         R5 2
       57 GETTABLEKS                       R5 R5 K18 ["PackageId"]
       59 CALL                             R2 3 -1
       60 CALL                             R1 -1 0
       61 GETUPVAL                         R1 4
       62 CALL                             R1 0 -1
       63 RETURN                           R1 -1
       64 NAMECALL                         R1 R0 K19 ["Clone"]
       66 CALL                             R1 1 1
       67 LOADB                            R2 0
       68 SETTABLEKS                       R2 R1 K20 ["Archivable"]
       70 GETTABLEKS                       R2 R0 K21 ["Parent"]
       72 SETTABLEKS                       R2 R1 K21 ["Parent"]
       74 JUMPIF                           R1 ; [+2]
       75 LOADNIL                          R2
       76 JUMP                             ; [+4]
       77 LOADK                            R4 K22 ["PackageLink"]
       78 NAMECALL                         R2 R1 K23 ["FindFirstChildOfClass"]
       80 CALL                             R2 2 1
       81 JUMPIF                           R0 ; [+2]
       82 LOADNIL                          R3
       83 JUMP                             ; [+4]
       84 LOADK                            R5 K22 ["PackageLink"]
       85 NAMECALL                         R3 R0 K23 ["FindFirstChildOfClass"]
       87 CALL                             R3 2 1
       88 GETTABLEKS                       R4 R3 K24 ["Status"]
       90 JUMPIFNOTEQKS                    R4 K25 ["Up To Date"] ; [+8]
       92 LOADK                            R6 K24 ["Status"]
       93 NAMECALL                         R4 R3 K26 ["GetPropertyChangedSignal"]
       95 CALL                             R4 2 1
       96 NAMECALL                         R4 R4 K27 ["Wait"]
       98 CALL                             R4 1 0
       99 GETUPVAL                         R4 2
      100 LOADN                            R5 1
      101 SETTABLEKS                       R5 R4 K10 ["PublishStatus"]
      103 GETUPVAL                         R4 0
      104 NEWTABLE                         R6 0 0
      106 NAMECALL                         R4 R4 K5 ["setState"]
      108 CALL                             R4 2 0
      109 LOADN                            R4 0
      110 LOADNIL                          R5
      111 LOADNIL                          R6
      112 GETUPVAL                         R7 0
      113 GETTABLEKS                       R7 R7 K0 ["state"]
      115 GETTABLEKS                       R7 R7 K1 ["isCancelling"]
      117 JUMPIFNOT                        R7 ; [+3]
      118 GETUPVAL                         R7 1
      119 CALL                             R7 0 -1
      120 RETURN                           R7 -1
      121 NEWCLOSURE                       R8 P0
      122 CAPTURE                          UPVAL U5
      123 CAPTURE                          VAL R0
      124 FASTPCALL                        pcall 1 ; [+2]
      125 GETIMPORT                        R7 K29 [pcall]
      127 CALL                             R7 1 2
      128 MOVE                             R5 R7
      129 MOVE                             R6 R8
      130 JUMPIFNOT                        R5 ; [+60]
      131 GETIMPORT                        R7 K12 [warn]
      133 GETIMPORT                        R8 K15 [string.format]
      135 LOADK                            R9 K30 ["Package published! {%s, %s}"]
      136 GETUPVAL                         R10 2
      137 GETTABLEKS                       R10 R10 K17 ["PackageAssetName"]
      139 GETUPVAL                         R11 2
      140 GETTABLEKS                       R11 R11 K18 ["PackageId"]
      142 CALL                             R8 3 -1
      143 CALL                             R7 -1 0
      144 GETIMPORT                        R7 K32 [string.find]
      146 GETTABLEKS                       R8 R2 K24 ["Status"]
      148 LOADK                            R9 K33 ["New Version Available"]
      149 CALL                             R7 2 1
      150 JUMPIF                           R7 ; [+7]
      151 LOADK                            R9 K24 ["Status"]
      152 NAMECALL                         R7 R2 K26 ["GetPropertyChangedSignal"]
      154 CALL                             R7 2 1
      155 NAMECALL                         R7 R7 K27 ["Wait"]
      157 CALL                             R7 1 0
      158 JUMPIF                           R0 ; [+2]
      159 LOADNIL                          R7
      160 JUMP                             ; [+4]
      161 LOADK                            R9 K22 ["PackageLink"]
      162 NAMECALL                         R7 R0 K23 ["FindFirstChildOfClass"]
      164 CALL                             R7 2 1
      165 GETTABLEKS                       R7 R7 K34 ["VersionNumber"]
      167 GETUPVAL                         R8 3
      168 GETUPVAL                         R9 2
      169 GETTABLEKS                       R9 R9 K18 ["PackageId"]
      171 DUPTABLE                         R10 K37 [{"oldVersionId", "newVersionId"}]
      172 GETUPVAL                         R11 2
      173 GETTABLEKS                       R11 R11 K38 ["LatestVersionNumber"]
      175 SETTABLEKS                       R11 R10 K35 ["oldVersionId"]
      177 SETTABLEKS                       R7 R10 K36 ["newVersionId"]
      179 SETTABLE                         R10 R8 R9
      180 GETUPVAL                         R8 2
      181 LOADN                            R9 4
      182 SETTABLEKS                       R9 R8 K10 ["PublishStatus"]
      184 GETUPVAL                         R8 0
      185 NEWTABLE                         R10 0 0
      187 NAMECALL                         R8 R8 K5 ["setState"]
      189 CALL                             R8 2 0
      190 JUMP                             ; [+56]
      191 GETIMPORT                        R7 K12 [warn]
      193 MOVE                             R8 R6
      194 CALL                             R7 1 0
      195 GETUPVAL                         R7 2
      196 LOADN                            R8 3
      197 SETTABLEKS                       R8 R7 K10 ["PublishStatus"]
      199 GETUPVAL                         R7 0
      200 DUPTABLE                         R9 K39 [{"canCancel"}]
      201 LOADN                            R11 3
      202 JUMPIFLE                         R11 R4 ; [+2]
      204 LOADB                            R10 0 +1
      205 LOADB                            R10 1
      206 SETTABLEKS                       R10 R9 K2 ["canCancel"]
      208 NAMECALL                         R7 R7 K5 ["setState"]
      210 CALL                             R7 2 0
      211 GETIMPORT                        R7 K12 [warn]
      213 GETIMPORT                        R8 K15 [string.format]
      215 LOADK                            R9 K40 ["Failed to publish package. Retrying... {%s, %s}"]
      216 GETUPVAL                         R10 2
      217 GETTABLEKS                       R10 R10 K17 ["PackageAssetName"]
      219 GETUPVAL                         R11 2
      220 GETTABLEKS                       R11 R11 K18 ["PackageId"]
      222 CALL                             R8 3 -1
      223 CALL                             R7 -1 0
      224 GETIMPORT                        R7 K43 [task.wait]
      226 LOADN                            R9 2
      227 FASTCALL2K                       MATH_MIN R4 K44 ; [+5]
      229 MOVE                             R11 R4
      230 LOADK                            R12 K44 [2]
      231 GETIMPORT                        R10 K47 [math.min]
      233 CALL                             R10 2 1
      234 POW                              R8 R9 R10
      235 CALL                             R7 1 0
      236 ADDK                             R4 R4 K48 [1]
      237 GETUPVAL                         R7 2
      238 LOADN                            R8 1
      239 SETTABLEKS                       R8 R7 K10 ["PublishStatus"]
      241 GETUPVAL                         R7 0
      242 NEWTABLE                         R9 0 0
      244 NAMECALL                         R7 R7 K5 ["setState"]
      246 CALL                             R7 2 0
      247 JUMPIF                           R5 ; [+1]
      248 JUMPBACK                         ; [-137]
      249 NAMECALL                         R7 R0 K49 ["Destroy"]
      251 CALL                             R7 1 0
      252 NAMECALL                         R7 R1 K49 ["Destroy"]
      254 CALL                             R7 1 0
      255 GETUPVAL                         R7 4
      256 CALL                             R7 0 -1
      257 RETURN                           R7 -1

PROTO_19:
        0 GETIMPORT                        R2 K2 [task.spawn]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U3
        9 CALL                             R2 1 0
       10 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["new"]
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 CAPTURE                          VAL R2
        7 CAPTURE                          UPVAL U1
        8 CALL                             R3 1 -1
        9 RETURN                           R3 -1

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
       83 SUBRK                            R13 K18 [2] R11
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
        0 GETTABLEKS                       R1 R0 K0 ["state"]
        2 GETTABLEKS                       R1 R1 K1 ["canPublish"]
        4 JUMPIF                           R1 ; [+1]
        5 RETURN                           R0 0
        6 GETIMPORT                        R1 K4 [Instance.new]
        8 LOADK                            R2 K5 ["Folder"]
        9 CALL                             R1 1 1
       10 LOADB                            R2 0
       11 SETTABLEKS                       R2 R1 K6 ["Archivable"]
       13 LOADK                            R2 K7 ["NPP_Cloned_Instances"]
       14 SETTABLEKS                       R2 R1 K8 ["Name"]
       16 GETIMPORT                        R2 K10 [game]
       18 LOADK                            R4 K11 ["ServerStorage"]
       19 NAMECALL                         R2 R2 K12 ["GetService"]
       21 CALL                             R2 2 1
       22 SETTABLEKS                       R2 R1 K13 ["Parent"]
       24 DUPTABLE                         R4 K20 [{["isPublishing"] = True, ["canPublish"] = False, ["isCancelling"] = False, ["canCancel"] = False, ["tempContainer"]}]
       25 SETTABLEKS                       R1 R4 K19 ["tempContainer"]
       27 NAMECALL                         R2 R0 K21 ["setState"]
       29 CALL                             R2 2 0
       30 GETTABLEKS                       R4 R0 K0 ["state"]
       32 GETTABLEKS                       R4 R4 K22 ["packageLists"]
       34 NAMECALL                         R2 R0 K23 ["doPackagePublishing"]
       36 CALL                             R2 2 0
       37 GETTABLEKS                       R2 R0 K0 ["state"]
       39 GETTABLEKS                       R2 R2 K17 ["isCancelling"]
       41 JUMPIF                           R2 ; [+94]
       42 GETTABLEKS                       R2 R0 K0 ["state"]
       44 GETTABLEKS                       R2 R2 K24 ["selectedInstance"]
       46 GETIMPORT                        R3 K27 [table.find]
       48 GETUPVAL                         R4 0
       49 NAMECALL                         R4 R4 K28 ["Get"]
       51 CALL                             R4 1 1
       52 MOVE                             R5 R2
       53 CALL                             R3 2 1
       54 JUMPIF                           R2 ; [+2]
       55 LOADNIL                          R4
       56 JUMP                             ; [+19]
       57 GETTABLEKS                       R6 R2 K13 ["Parent"]
       59 JUMPIF                           R6 ; [+2]
       60 LOADNIL                          R4
       61 JUMP                             ; [+14]
       62 JUMPIF                           R6 ; [+2]
       63 LOADNIL                          R7
       64 JUMP                             ; [+4]
       65 LOADK                            R9 K29 ["PackageLink"]
       66 NAMECALL                         R7 R6 K30 ["FindFirstChildOfClass"]
       68 CALL                             R7 2 1
       69 JUMPIFNOT                        R7 ; [+2]
       70 MOVE                             R4 R6
       71 JUMP                             ; [+4]
       72 GETUPVAL                         R8 1
       73 MOVE                             R9 R6
       74 CALL                             R8 1 1
       75 MOVE                             R4 R8
       76 JUMPIFNOT                        R4 ; [+16]
       77 GETIMPORT                        R5 K32 [string.find]
       79 JUMPIF                           R4 ; [+2]
       80 LOADNIL                          R6
       81 JUMP                             ; [+4]
       82 LOADK                            R8 K29 ["PackageLink"]
       83 NAMECALL                         R6 R4 K30 ["FindFirstChildOfClass"]
       85 CALL                             R6 2 1
       86 GETTABLEKS                       R6 R6 K33 ["Status"]
       88 LOADK                            R7 K34 ["New Version Available"]
       89 CALL                             R5 2 1
       90 JUMPIFNOT                        R5 ; [+2]
       91 MOVE                             R2 R4
       92 JUMPBACK                         ; [-39]
       93 JUMPIF                           R2 ; [+2]
       94 LOADNIL                          R6
       95 JUMP                             ; [+4]
       96 LOADK                            R8 K29 ["PackageLink"]
       97 NAMECALL                         R6 R2 K30 ["FindFirstChildOfClass"]
       99 CALL                             R6 2 1
      100 JUMPIF                           R6 ; [+2]
      101 LOADNIL                          R4
      102 JUMP                             ; [+18]
      103 LOADN                            R8 0
      104 NEWCLOSURE                       R7 P0
      105 CAPTURE                          UPVAL U2
      106 CAPTURE                          VAL R2
      107 CAPTURE                          VAL R8
      108 FASTPCALL                        pcall 1 ; [+2]
      109 GETIMPORT                        R6 K36 [pcall]
      111 CALL                             R6 1 2
      112 JUMPIFNOT                        R6 ; [+1]
      113 JUMPIF                           R7 ; [+6]
      114 GETIMPORT                        R8 K38 [warn]
      116 MOVE                             R9 R7
      117 CALL                             R8 1 0
      118 LOADNIL                          R4
      119 JUMP                             ; [+1]
      120 MOVE                             R4 R7
      121 JUMPIFNOT                        R3 ; [+9]
      122 GETUPVAL                         R5 0
      123 NEWTABLE                         R7 0 1
      125 MOVE                             R8 R4
      126 SETLIST                          R7 R8 1 [1]
      128 NAMECALL                         R5 R5 K39 ["Add"]
      130 CALL                             R5 2 0
      131 GETIMPORT                        R5 K38 [warn]
      133 LOADK                            R6 K40 ["Hierarchical Publish Operation completed!"]
      134 CALL                             R5 1 0
      135 JUMP                             ; [+4]
      136 GETIMPORT                        R2 K38 [warn]
      138 LOADK                            R3 K41 ["Hierarchal Publish Operation cancelled."]
      139 CALL                             R2 1 0
      140 NAMECALL                         R2 R1 K42 ["Destroy"]
      142 CALL                             R2 1 0
      143 DUPTABLE                         R4 K43 [{["isPublishing"] = False, ["isCancelling"] = False, ["canCancel"] = False, ["tempContainer"]}]
      144 GETUPVAL                         R5 3
      145 GETTABLEKS                       R5 R5 K44 ["None"]
      147 SETTABLEKS                       R5 R4 K19 ["tempContainer"]
      149 NAMECALL                         R2 R0 K21 ["setState"]
      151 CALL                             R2 2 0
      152 LOADB                            R4 1
      153 NAMECALL                         R2 R0 K45 ["onChangeSelection"]
      155 CALL                             R2 2 0
      156 RETURN                           R0 0

PROTO_26:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R2 K1 ["Enabled"]
        4 JUMPIF                           R2 ; [+1]
        5 RETURN                           R0 0
        6 JUMPIF                           R1 ; [+6]
        7 GETTABLEKS                       R2 R0 K2 ["state"]
        9 GETTABLEKS                       R2 R2 K3 ["isPublishing"]
       11 JUMPIFNOT                        R2 ; [+1]
       12 RETURN                           R0 0
       13 GETUPVAL                         R2 0
       14 NAMECALL                         R2 R2 K4 ["Get"]
       16 CALL                             R2 1 1
       17 LENGTH                           R3 R2
       18 JUMPIFEQKN                       R3 K5 [1] ; [+16]
       20 DUPTABLE                         R5 K10 [{["selectedInstance"], ["packageLists"], ["canPublish"] = False}]
       21 GETUPVAL                         R6 1
       22 GETTABLEKS                       R6 R6 K11 ["None"]
       24 SETTABLEKS                       R6 R5 K6 ["selectedInstance"]
       26 GETUPVAL                         R6 1
       27 GETTABLEKS                       R6 R6 K11 ["None"]
       29 SETTABLEKS                       R6 R5 K7 ["packageLists"]
       31 NAMECALL                         R3 R0 K12 ["setState"]
       33 CALL                             R3 2 0
       34 RETURN                           R0 0
       35 GETTABLEN                        R3 R2 1
       36 JUMPIF                           R3 ; [+2]
       37 LOADNIL                          R4
       38 JUMP                             ; [+4]
       39 LOADK                            R6 K13 ["PackageLink"]
       40 NAMECALL                         R4 R3 K14 ["FindFirstChildOfClass"]
       42 CALL                             R4 2 1
       43 JUMPIFNOT                        R4 ; [+4]
       44 GETTABLEKS                       R5 R4 K15 ["Status"]
       46 JUMPIFNOTEQKS                    R5 K16 ["Up To Date"] ; [+16]
       48 DUPTABLE                         R7 K10 [{["selectedInstance"], ["packageLists"], ["canPublish"] = False}]
       49 GETUPVAL                         R8 1
       50 GETTABLEKS                       R8 R8 K11 ["None"]
       52 SETTABLEKS                       R8 R7 K6 ["selectedInstance"]
       54 GETUPVAL                         R8 1
       55 GETTABLEKS                       R8 R8 K11 ["None"]
       57 SETTABLEKS                       R8 R7 K7 ["packageLists"]
       59 NAMECALL                         R5 R0 K12 ["setState"]
       61 CALL                             R5 2 0
       62 RETURN                           R0 0
       63 GETUPVAL                         R5 2
       64 MOVE                             R6 R3
       65 GETIMPORT                        R7 K18 [game]
       67 CALL                             R5 2 1
       68 GETIMPORT                        R6 K21 [table.sort]
       70 MOVE                             R7 R5
       71 GETUPVAL                         R8 3
       72 CALL                             R6 2 0
       73 GETIMPORT                        R6 K23 [ipairs]
       75 MOVE                             R7 R5
       76 CALL                             R6 1 3
       77 FORGPREP_INEXT                   R6
       78 LOADN                            R11 0
       79 SETTABLEKS                       R11 R10 K24 ["PublishStatus"]
       81 FORGLOOP                         R6 2 [inext] ; [-4]
       83 DUPTABLE                         R8 K26 [{["selectedInstance"], ["packageLists"], ["canPublish"] = True}]
       84 SETTABLEKS                       R3 R8 K6 ["selectedInstance"]
       86 SETTABLEKS                       R5 R8 K7 ["packageLists"]
       88 NAMECALL                         R6 R0 K12 ["setState"]
       90 CALL                             R6 2 0
       91 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["onChangeSelection"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["SelectionChanged"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R0
        5 NAMECALL                         R1 R1 K1 ["Connect"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_29:
        0 GETTABLEKS                       R2 R1 K0 ["Enabled"]
        2 GETTABLEKS                       R3 R0 K1 ["props"]
        4 GETTABLEKS                       R3 R3 K0 ["Enabled"]
        6 JUMPIFNOTEQ                      R2 R3 ; [+2]
        8 RETURN                           R0 0
        9 GETTABLEKS                       R2 R0 K1 ["props"]
       11 GETTABLEKS                       R2 R2 K0 ["Enabled"]
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
        9 JUMPIFNOT                        R5 ; [+114]
       10 GETUPVAL                         R5 2
       11 GETTABLEKS                       R5 R5 K2 ["createElement"]
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
       44 LOADN                            R12 -3
       45 CALL                             R8 4 1
       46 SETTABLEKS                       R8 R7 K7 ["Position"]
       48 DUPTABLE                         R8 K22 [{"uiCorner", "uiStroke", "progressBar"}]
       49 GETUPVAL                         R9 2
       50 GETTABLEKS                       R9 R9 K2 ["createElement"]
       52 LOADK                            R10 K23 ["UICorner"]
       53 DUPTABLE                         R11 K25 [{"CornerRadius"}]
       54 GETIMPORT                        R12 K27 [UDim.new]
       56 LOADK                            R13 K12 [0.5]
       57 LOADK                            R14 K12 [0.5]
       58 CALL                             R12 2 1
       59 SETTABLEKS                       R12 R11 K24 ["CornerRadius"]
       61 CALL                             R9 2 1
       62 SETTABLEKS                       R9 R8 K19 ["uiCorner"]
       64 GETUPVAL                         R9 2
       65 GETTABLEKS                       R9 R9 K2 ["createElement"]
       67 LOADK                            R10 K28 ["UIStroke"]
       68 DUPTABLE                         R11 K31 [{["Thickness"] = 2}]
       69 CALL                             R9 2 1
       70 SETTABLEKS                       R9 R8 K20 ["uiStroke"]
       72 GETUPVAL                         R9 2
       73 GETTABLEKS                       R9 R9 K2 ["createElement"]
       75 LOADK                            R10 K3 ["Frame"]
       76 DUPTABLE                         R11 K8 [{"AnchorPoint", "BackgroundColor3", "Size", "Position"}]
       77 GETIMPORT                        R12 K11 [Vector2.new]
       79 LOADN                            R13 0
       80 LOADK                            R14 K12 [0.5]
       81 CALL                             R12 2 1
       82 SETTABLEKS                       R12 R11 K4 ["AnchorPoint"]
       84 SETTABLEKS                       R4 R11 K5 ["BackgroundColor3"]
       86 GETIMPORT                        R12 K16 [UDim2.new]
       88 MOVE                             R13 R3
       89 LOADN                            R14 0
       90 LOADN                            R15 1
       91 LOADN                            R16 0
       92 CALL                             R12 4 1
       93 SETTABLEKS                       R12 R11 K6 ["Size"]
       95 GETIMPORT                        R12 K16 [UDim2.new]
       97 LOADN                            R13 0
       98 LOADN                            R14 0
       99 LOADK                            R15 K12 [0.5]
      100 LOADN                            R16 0
      101 CALL                             R12 4 1
      102 SETTABLEKS                       R12 R11 K7 ["Position"]
      104 DUPTABLE                         R12 K32 [{"uiCorner"}]
      105 GETUPVAL                         R13 2
      106 GETTABLEKS                       R13 R13 K2 ["createElement"]
      108 LOADK                            R14 K23 ["UICorner"]
      109 DUPTABLE                         R15 K25 [{"CornerRadius"}]
      110 GETIMPORT                        R16 K27 [UDim.new]
      112 LOADK                            R17 K12 [0.5]
      113 LOADK                            R18 K12 [0.5]
      114 CALL                             R16 2 1
      115 SETTABLEKS                       R16 R15 K24 ["CornerRadius"]
      117 CALL                             R13 2 1
      118 SETTABLEKS                       R13 R12 K19 ["uiCorner"]
      120 CALL                             R9 3 1
      121 SETTABLEKS                       R9 R8 K21 ["progressBar"]
      123 CALL                             R5 3 1
      124 RETURN                           R5 1

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
       22 GETUPVAL                         R6 0
       23 GETTABLEKS                       R6 R6 K7 ["createElement"]
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
       54 GETUPVAL                         R10 0
       55 GETTABLEKS                       R10 R10 K7 ["createElement"]
       57 LOADK                            R11 K21 ["TextLabel"]
       58 DUPTABLE                         R12 K30 [{["BackgroundTransparency"] = 1, ["Text"], ["TextWrapped"] = True, ["TextSize"] = 16, ["AnchorPoint"], ["Size"], ["Position"]}]
       59 SETTABLEKS                       R2 R12 K24 ["Text"]
       61 GETIMPORT                        R13 K32 [Vector2.new]
       63 LOADK                            R14 K33 [0.5]
       64 LOADK                            R15 K33 [0.5]
       65 CALL                             R13 2 1
       66 SETTABLEKS                       R13 R12 K29 ["AnchorPoint"]
       68 GETIMPORT                        R13 K15 [UDim2.new]
       70 LOADN                            R14 1
       71 LOADN                            R15 0
       72 LOADN                            R16 1
       73 LOADN                            R17 0
       74 CALL                             R13 4 1
       75 SETTABLEKS                       R13 R12 K10 ["Size"]
       77 GETIMPORT                        R13 K15 [UDim2.new]
       79 LOADK                            R14 K33 [0.5]
       80 LOADN                            R15 0
       81 LOADK                            R16 K33 [0.5]
       82 LOADN                            R17 0
       83 CALL                             R13 4 1
       84 SETTABLEKS                       R13 R12 K11 ["Position"]
       86 CALL                             R10 2 1
       87 SETTABLEKS                       R10 R9 K18 ["packageName"]
       89 GETUPVAL                         R10 0
       90 GETTABLEKS                       R10 R10 K7 ["createElement"]
       92 GETUPVAL                         R11 1
       93 DUPTABLE                         R12 K34 [{"publishStatus"}]
       94 SETTABLEKS                       R3 R12 K2 ["publishStatus"]
       96 CALL                             R10 2 1
       97 SETTABLEKS                       R10 R9 K19 ["progressBar"]
       99 CALL                             R6 3 -1
      100 RETURN                           R6 -1

PROTO_32:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K4 [{[1] = False, ["isCancelling"] = True}]
        2 NAMECALL                         R0 R0 K5 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["publishSelectedPackageHierarchy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_34:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Localization"]
        4 GETTABLEKS                       R2 R0 K0 ["props"]
        6 GETTABLEKS                       R2 R2 K2 ["Stylizer"]
        8 GETTABLEKS                       R3 R2 K3 ["mainWindow"]
       10 GETTABLEKS                       R4 R0 K4 ["state"]
       12 GETTABLEKS                       R4 R4 K5 ["canPublish"]
       14 GETTABLEKS                       R5 R0 K4 ["state"]
       16 GETTABLEKS                       R5 R5 K6 ["isPublishing"]
       18 GETTABLEKS                       R6 R0 K4 ["state"]
       20 GETTABLEKS                       R6 R6 K7 ["canCancel"]
       22 GETTABLEKS                       R7 R0 K4 ["state"]
       24 GETTABLEKS                       R7 R7 K8 ["isCancelling"]
       26 NEWTABLE                         R8 0 0
       28 LOADN                            R9 0
       29 LOADN                            R10 0
       30 JUMPIF                           R4 ; [+3]
       31 JUMPIF                           R5 ; [+2]
       32 JUMPIF                           R6 ; [+1]
       33 JUMPIFNOT                        R7 ; [+72]
       34 LOADNIL                          R11
       35 LOADN                            R12 -1
       36 LOADN                            R13 0
       37 GETIMPORT                        R14 K10 [ipairs]
       39 GETTABLEKS                       R15 R0 K4 ["state"]
       41 GETTABLEKS                       R15 R15 K11 ["packageLists"]
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
       65 GETUPVAL                         R20 0
       66 GETTABLEKS                       R20 R20 K18 ["createElement"]
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
      106 GETUPVAL                         R11 0
      107 GETTABLEKS                       R11 R11 K18 ["createElement"]
      109 GETUPVAL                         R12 2
      110 DUPTABLE                         R13 K29 [{"BackgroundColor"}]
      111 GETTABLEKS                       R14 R3 K30 ["backgroundColor"]
      113 SETTABLEKS                       R14 R13 K28 ["BackgroundColor"]
      115 DUPTABLE                         R14 K33 [{"mainDisplay", "bottomBar"}]
      116 GETUPVAL                         R15 0
      117 GETTABLEKS                       R15 R15 K18 ["createElement"]
      119 LOADK                            R16 K34 ["Frame"]
      120 DUPTABLE                         R17 K39 [{["BackgroundTransparency"] = 1, ["AnchorPoint"], ["Size"], ["Position"]}]
      121 GETIMPORT                        R18 K42 [Vector2.new]
      123 LOADK                            R19 K43 [0.5]
      124 LOADN                            R20 0
      125 CALL                             R18 2 1
      126 SETTABLEKS                       R18 R17 K36 ["AnchorPoint"]
      128 GETIMPORT                        R18 K45 [UDim2.new]
      130 LOADN                            R19 1
      131 LOADN                            R20 0
      132 LOADN                            R21 1
      133 LOADN                            R22 -100
      134 CALL                             R18 4 1
      135 SETTABLEKS                       R18 R17 K37 ["Size"]
      137 GETIMPORT                        R18 K45 [UDim2.new]
      139 LOADK                            R19 K43 [0.5]
      140 LOADN                            R20 0
      141 LOADN                            R21 0
      142 LOADN                            R22 0
      143 CALL                             R18 4 1
      144 SETTABLEKS                       R18 R17 K38 ["Position"]
      146 DUPTABLE                         R18 K47 [{"scrollFrame"}]
      147 GETUPVAL                         R19 0
      148 GETTABLEKS                       R19 R19 K18 ["createElement"]
      150 LOADK                            R20 K48 ["ScrollingFrame"]
      151 DUPTABLE                         R21 K51 [{["ScrollingDirection"], ["BackgroundTransparency"] = 1, ["AnchorPoint"], ["Size"], ["Position"], ["CanvasSize"]}]
      152 GETIMPORT                        R22 K54 [Enum.ScrollingDirection.XY]
      154 SETTABLEKS                       R22 R21 K49 ["ScrollingDirection"]
      156 GETIMPORT                        R22 K42 [Vector2.new]
      158 LOADK                            R23 K43 [0.5]
      159 LOADK                            R24 K43 [0.5]
      160 CALL                             R22 2 1
      161 SETTABLEKS                       R22 R21 K36 ["AnchorPoint"]
      163 GETIMPORT                        R22 K45 [UDim2.new]
      165 LOADN                            R23 1
      166 LOADN                            R24 -8
      167 LOADN                            R25 1
      168 LOADN                            R26 -8
      169 CALL                             R22 4 1
      170 SETTABLEKS                       R22 R21 K37 ["Size"]
      172 GETIMPORT                        R22 K45 [UDim2.new]
      174 LOADK                            R23 K43 [0.5]
      175 LOADN                            R24 0
      176 LOADK                            R25 K43 [0.5]
      177 LOADN                            R26 0
      178 CALL                             R22 4 1
      179 SETTABLEKS                       R22 R21 K38 ["Position"]
      181 GETIMPORT                        R22 K45 [UDim2.new]
      183 LOADN                            R23 0
      184 MULK                             R25 R9 K55 [80]
      185 LOADN                            R28 0
      186 SUBK                             R29 R9 K13 [1]
      187 FASTCALL2                        MATH_MAX R28 R29 ; [+3]
      189 GETIMPORT                        R27 K16 [math.max]
      191 CALL                             R27 2 1
      192 MULK                             R26 R27 K56 [4]
      193 ADD                              R24 R25 R26
      194 LOADN                            R25 0
      195 MULK                             R27 R10 K55 [80]
      196 LOADN                            R30 0
      197 SUBK                             R31 R10 K13 [1]
      198 FASTCALL2                        MATH_MAX R30 R31 ; [+3]
      200 GETIMPORT                        R29 K16 [math.max]
      202 CALL                             R29 2 1
      203 MULK                             R28 R29 K56 [4]
      204 ADD                              R26 R27 R28
      205 CALL                             R22 4 1
      206 SETTABLEKS                       R22 R21 K50 ["CanvasSize"]
      208 MOVE                             R22 R8
      209 CALL                             R19 3 1
      210 SETTABLEKS                       R19 R18 K46 ["scrollFrame"]
      212 CALL                             R15 3 1
      213 SETTABLEKS                       R15 R14 K31 ["mainDisplay"]
      215 GETUPVAL                         R15 0
      216 GETTABLEKS                       R15 R15 K18 ["createElement"]
      218 LOADK                            R16 K34 ["Frame"]
      219 DUPTABLE                         R17 K39 [{["BackgroundTransparency"] = 1, ["AnchorPoint"], ["Size"], ["Position"]}]
      220 GETIMPORT                        R18 K42 [Vector2.new]
      222 LOADK                            R19 K43 [0.5]
      223 LOADN                            R20 1
      224 CALL                             R18 2 1
      225 SETTABLEKS                       R18 R17 K36 ["AnchorPoint"]
      227 GETIMPORT                        R18 K45 [UDim2.new]
      229 LOADN                            R19 1
      230 LOADN                            R20 0
      231 LOADN                            R21 0
      232 LOADN                            R22 100
      233 CALL                             R18 4 1
      234 SETTABLEKS                       R18 R17 K37 ["Size"]
      236 GETIMPORT                        R18 K45 [UDim2.new]
      238 LOADK                            R19 K43 [0.5]
      239 LOADN                            R20 0
      240 LOADN                            R21 1
      241 LOADN                            R22 0
      242 CALL                             R18 4 1
      243 SETTABLEKS                       R18 R17 K38 ["Position"]
      245 DUPTABLE                         R18 K59 [{"cancelButton", "publishHierarchyButton"}]
      246 MOVE                             R19 R6
      247 JUMPIFNOT                        R19 ; [+42]
      248 GETUPVAL                         R19 0
      249 GETTABLEKS                       R19 R19 K18 ["createElement"]
      251 GETUPVAL                         R20 3
      252 DUPTABLE                         R21 K62 [{"Text", "AnchorPoint", "Size", "Position", "OnClick"}]
      253 LOADK                            R24 K63 ["Action"]
      254 LOADK                            R25 K64 ["Cancel"]
      255 NAMECALL                         R22 R1 K65 ["getText"]
      257 CALL                             R22 3 1
      258 SETTABLEKS                       R22 R21 K60 ["Text"]
      260 GETIMPORT                        R22 K42 [Vector2.new]
      262 LOADN                            R23 0
      263 LOADK                            R24 K43 [0.5]
      264 CALL                             R22 2 1
      265 SETTABLEKS                       R22 R21 K36 ["AnchorPoint"]
      267 GETIMPORT                        R22 K45 [UDim2.new]
      269 LOADK                            R23 K66 [0.3]
      270 LOADN                            R24 0
      271 LOADN                            R25 1
      272 LOADN                            R26 -8
      273 CALL                             R22 4 1
      274 SETTABLEKS                       R22 R21 K37 ["Size"]
      276 GETIMPORT                        R22 K45 [UDim2.new]
      278 LOADN                            R23 0
      279 LOADN                            R24 4
      280 LOADK                            R25 K43 [0.5]
      281 LOADN                            R26 0
      282 CALL                             R22 4 1
      283 SETTABLEKS                       R22 R21 K38 ["Position"]
      285 NEWCLOSURE                       R22 P0
      286 CAPTURE                          VAL R0
      287 SETTABLEKS                       R22 R21 K61 ["OnClick"]
      289 CALL                             R19 2 1
      290 SETTABLEKS                       R19 R18 K57 ["cancelButton"]
      292 MOVE                             R19 R4
      293 JUMPIFNOT                        R19 ; [+42]
      294 GETUPVAL                         R19 0
      295 GETTABLEKS                       R19 R19 K18 ["createElement"]
      297 GETUPVAL                         R20 3
      298 DUPTABLE                         R21 K62 [{"Text", "AnchorPoint", "Size", "Position", "OnClick"}]
      299 LOADK                            R24 K63 ["Action"]
      300 LOADK                            R25 K67 ["Publish"]
      301 NAMECALL                         R22 R1 K65 ["getText"]
      303 CALL                             R22 3 1
      304 SETTABLEKS                       R22 R21 K60 ["Text"]
      306 GETIMPORT                        R22 K42 [Vector2.new]
      308 LOADN                            R23 1
      309 LOADK                            R24 K43 [0.5]
      310 CALL                             R22 2 1
      311 SETTABLEKS                       R22 R21 K36 ["AnchorPoint"]
      313 GETIMPORT                        R22 K45 [UDim2.new]
      315 LOADK                            R23 K66 [0.3]
      316 LOADN                            R24 0
      317 LOADN                            R25 1
      318 LOADN                            R26 -8
      319 CALL                             R22 4 1
      320 SETTABLEKS                       R22 R21 K37 ["Size"]
      322 GETIMPORT                        R22 K45 [UDim2.new]
      324 LOADN                            R23 1
      325 LOADN                            R24 -4
      326 LOADK                            R25 K43 [0.5]
      327 LOADN                            R26 0
      328 CALL                             R22 4 1
      329 SETTABLEKS                       R22 R21 K38 ["Position"]
      331 NEWCLOSURE                       R22 P1
      332 CAPTURE                          VAL R0
      333 SETTABLEKS                       R22 R21 K61 ["OnClick"]
      335 CALL                             R19 2 1
      336 SETTABLEKS                       R19 R18 K58 ["publishHierarchyButton"]
      338 CALL                             R15 3 1
      339 SETTABLEKS                       R15 R14 K32 ["bottomBar"]
      341 CALL                             R11 3 -1
      342 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["ContextServices"]
       25 GETTABLEKS                       R4 R3 K9 ["withContext"]
       27 GETTABLEKS                       R5 R3 K10 ["Analytics"]
       29 GETTABLEKS                       R6 R3 K11 ["Localization"]
       31 GETTABLEKS                       R7 R2 K12 ["Style"]
       33 GETTABLEKS                       R7 R7 K13 ["Stylizer"]
       35 GETTABLEKS                       R8 R2 K14 ["Util"]
       37 GETTABLEKS                       R8 R8 K15 ["Promise"]
       39 GETTABLEKS                       R9 R2 K16 ["UI"]
       41 GETTABLEKS                       R10 R9 K17 ["Pane"]
       43 GETTABLEKS                       R11 R2 K16 ["UI"]
       45 GETTABLEKS                       R11 R11 K18 ["Button"]
       47 GETIMPORT                        R12 K20 [game]
       49 LOADK                            R14 K21 ["TurnOffNPPThrottling"]
       50 LOADB                            R15 0
       51 NAMECALL                         R12 R12 K22 ["GetFastFlag"]
       53 CALL                             R12 3 1
       54 GETTABLEKS                       R13 R1 K23 ["PureComponent"]
       56 LOADK                            R15 K24 ["PublishFrame"]
       57 NAMECALL                         R13 R13 K25 ["extend"]
       59 CALL                             R13 2 1
       60 DUPCLOSURE                       R15 K26 [PROTO_0]
       61 FASTPCALL                        pcall 1 ; [+2]
       62 GETIMPORT                        R14 K28 [pcall]
       64 CALL                             R14 1 2
       65 GETIMPORT                        R16 K20 [game]
       67 LOADK                            R18 K29 ["Selection"]
       68 NAMECALL                         R16 R16 K30 ["GetService"]
       70 CALL                             R16 2 1
       71 GETIMPORT                        R17 K20 [game]
       73 LOADK                            R19 K31 ["PackageUploadThrottleTimeMin"]
       74 LOADN                            R20 2
       75 NAMECALL                         R17 R17 K32 ["GetFastInt"]
       77 CALL                             R17 3 1
       78 GETIMPORT                        R18 K20 [game]
       80 LOADK                            R20 K33 ["PackageUploadThrottleAllowedPackages"]
       81 LOADN                            R21 180
       82 NAMECALL                         R18 R18 K32 ["GetFastInt"]
       84 CALL                             R18 3 1
       85 DUPTABLE                         R19 K52 [{["PackagePublishSuccess"] = "Package published! {%s, %s}", ["PackagePublishFailure"] = "Failed to publish package. Retrying... {%s, %s}", ["PackagePublishSkipped"] = "Package skipped due to no changes detected. {%s, %s}", ["TempContainerName"] = "NPP_Cloned_Instances", ["UpToDateString"] = "Up To Date", ["NewVersionString"] = "New Version Available", ["OperationEnded"] = "Hierarchical Publish Operation completed!", ["OperationCancelled"] = "Hierarchal Publish Operation cancelled.", ["LatestVersionFailure"] = "There was an issue getting the latest version of a package. Ending process."}]
       86 DUPTABLE                         R20 K65 [{["Ready"] = 0, ["Pending"] = 1, ["Updating"] = 2, ["Failed"] = 3, ["Success"] = 4, ["Skipped"] = 5}]
       87 NEWTABLE                         R21 8 0
       89 LOADK                            R22 K66 [0.3]
       90 SETTABLEN                        R22 R21 2
       91 LOADK                            R22 K67 [0.7]
       92 SETTABLEN                        R22 R21 1
       93 LOADK                            R22 K67 [0.7]
       94 SETTABLEN                        R22 R21 3
       95 LOADN                            R22 1
       96 SETTABLEN                        R22 R21 4
       97 LOADN                            R22 1
       98 SETTABLEN                        R22 R21 5
       99 NEWTABLE                         R22 8 0
      101 GETIMPORT                        R23 K70 [Color3.fromRGB]
      103 LOADN                            R24 145
      104 LOADN                            R25 50
      105 LOADN                            R26 235
      106 CALL                             R23 3 1
      107 SETTABLEN                        R23 R22 2
      108 GETIMPORT                        R23 K70 [Color3.fromRGB]
      110 LOADN                            R24 255
      111 LOADN                            R25 185
      112 LOADN                            R26 0
      113 CALL                             R23 3 1
      114 SETTABLEN                        R23 R22 1
      115 GETIMPORT                        R23 K70 [Color3.fromRGB]
      117 LOADN                            R24 225
      118 LOADN                            R25 50
      119 LOADN                            R26 25
      120 CALL                             R23 3 1
      121 SETTABLEN                        R23 R22 3
      122 GETIMPORT                        R23 K70 [Color3.fromRGB]
      124 LOADN                            R24 25
      125 LOADN                            R25 225
      126 LOADN                            R26 40
      127 CALL                             R23 3 1
      128 SETTABLEN                        R23 R22 4
      129 GETIMPORT                        R23 K70 [Color3.fromRGB]
      131 LOADN                            R24 44
      132 LOADN                            R25 101
      133 LOADN                            R26 29
      134 CALL                             R23 3 1
      135 SETTABLEN                        R23 R22 5
      136 DUPCLOSURE                       R23 K71 [PROTO_1]
      137 DUPCLOSURE                       R24 K72 [PROTO_2]
      138 DUPCLOSURE                       R25 K73 [PROTO_3]
      139 CAPTURE                          VAL R24
      140 DUPCLOSURE                       R26 K74 [PROTO_4]
      141 CAPTURE                          VAL R24
      142 CAPTURE                          VAL R26
      143 DUPCLOSURE                       R27 K75 [PROTO_5]
      144 CAPTURE                          VAL R26
      145 DUPCLOSURE                       R28 K76 [PROTO_6]
      146 CAPTURE                          VAL R24
      147 CAPTURE                          VAL R28
      148 DUPCLOSURE                       R29 K77 [PROTO_7]
      149 CAPTURE                          VAL R28
      150 DUPCLOSURE                       R30 K78 [PROTO_9]
      151 CAPTURE                          VAL R15
      152 DUPCLOSURE                       R31 K79 [PROTO_10]
      153 CAPTURE                          VAL R31
      154 DUPCLOSURE                       R32 K80 [PROTO_11]
      155 DUPCLOSURE                       R33 K81 [PROTO_14]
      156 CAPTURE                          VAL R28
      157 CAPTURE                          VAL R15
      158 DUPCLOSURE                       R34 K82 [PROTO_15]
      159 CAPTURE                          VAL R26
      160 CAPTURE                          VAL R30
      161 SETTABLEKS                       R34 R13 K83 ["runScopedMassUpdate"]
      163 DUPCLOSURE                       R34 K84 [PROTO_16]
      164 CAPTURE                          VAL R30
      165 SETTABLEKS                       R34 R13 K85 ["getLatestVersionClone"]
      167 DUPCLOSURE                       R34 K86 [PROTO_20]
      168 CAPTURE                          VAL R8
      169 CAPTURE                          VAL R15
      170 SETTABLEKS                       R34 R13 K87 ["promiseToPublishPackage"]
      172 DUPCLOSURE                       R34 K88 [PROTO_23]
      173 CAPTURE                          VAL R12
      174 CAPTURE                          VAL R17
      175 CAPTURE                          VAL R18
      176 SETTABLEKS                       R34 R13 K89 ["waitForPromises"]
      178 DUPCLOSURE                       R34 K90 [PROTO_24]
      179 SETTABLEKS                       R34 R13 K91 ["doPackagePublishing"]
      181 DUPCLOSURE                       R34 K92 [PROTO_25]
      182 CAPTURE                          VAL R16
      183 CAPTURE                          VAL R31
      184 CAPTURE                          VAL R15
      185 CAPTURE                          VAL R1
      186 SETTABLEKS                       R34 R13 K93 ["publishSelectedPackageHierarchy"]
      188 DUPCLOSURE                       R34 K94 [PROTO_26]
      189 CAPTURE                          VAL R16
      190 CAPTURE                          VAL R1
      191 CAPTURE                          VAL R33
      192 CAPTURE                          VAL R32
      193 SETTABLEKS                       R34 R13 K95 ["onChangeSelection"]
      195 DUPCLOSURE                       R34 K96 [PROTO_28]
      196 CAPTURE                          VAL R16
      197 SETTABLEKS                       R34 R13 K97 ["didMount"]
      199 DUPCLOSURE                       R34 K98 [PROTO_29]
      200 SETTABLEKS                       R34 R13 K99 ["didUpdate"]
      202 GETTABLEKS                       R34 R1 K23 ["PureComponent"]
      204 LOADK                            R36 K100 ["ProgressBar"]
      205 NAMECALL                         R34 R34 K25 ["extend"]
      207 CALL                             R34 2 1
      208 DUPCLOSURE                       R35 K101 [PROTO_30]
      209 CAPTURE                          VAL R21
      210 CAPTURE                          VAL R22
      211 CAPTURE                          VAL R1
      212 SETTABLEKS                       R35 R34 K102 ["render"]
      214 GETTABLEKS                       R35 R1 K23 ["PureComponent"]
      216 LOADK                            R37 K103 ["PackageBoxItem"]
      217 NAMECALL                         R35 R35 K25 ["extend"]
      219 CALL                             R35 2 1
      220 DUPCLOSURE                       R36 K104 [PROTO_31]
      221 CAPTURE                          VAL R1
      222 CAPTURE                          VAL R34
      223 SETTABLEKS                       R36 R35 K102 ["render"]
      225 DUPCLOSURE                       R36 K105 [PROTO_34]
      226 CAPTURE                          VAL R1
      227 CAPTURE                          VAL R35
      228 CAPTURE                          VAL R10
      229 CAPTURE                          VAL R11
      230 SETTABLEKS                       R36 R13 K102 ["render"]
      232 MOVE                             R36 R4
      233 DUPTABLE                         R37 K106 [{"Analytics", "Localization", "Stylizer"}]
      234 SETTABLEKS                       R5 R37 K10 ["Analytics"]
      236 SETTABLEKS                       R6 R37 K11 ["Localization"]
      238 SETTABLEKS                       R7 R37 K13 ["Stylizer"]
      240 CALL                             R36 1 1
      241 MOVE                             R37 R13
      242 CALL                             R36 1 1
      243 MOVE                             R13 R36
      244 RETURN                           R13 1
