PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["text"]
        2 GETTABLEKS                       R4 R1 K0 ["text"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["text"]
        2 GETTABLEKS                       R4 R1 K0 ["text"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_2:
        0 JUMPIFEQKS                       R1 K0 ["Model"] ; [+2]
        2 LOADB                            R2 0 +1
        3 LOADB                            R2 1
        4 JUMPIFNOT                        R2 ; [+40]
        5 JUMPIFNOT                        R0 ; [+37]
        6 LENGTH                           R3 R0
        7 LOADN                            R4 0
        8 JUMPIFNOTLT                      R4 R3 ; [+34]
       10 NEWTABLE                         R3 0 0
       12 MOVE                             R4 R0
       13 LOADNIL                          R5
       14 LOADNIL                          R6
       15 FORGPREP                         R4
       16 GETTABLEKS                       R9 R8 K1 ["text"]
       18 JUMPIFEQKS                       R9 K2 ["Body"] ; [+5]
       20 GETTABLEKS                       R9 R8 K1 ["text"]
       22 JUMPIFNOTEQKS                    R9 K3 ["DynamicHead"] ; [+8]
       24 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
       26 MOVE                             R10 R3
       27 MOVE                             R11 R8
       28 GETIMPORT                        R9 K6 [table.insert]
       30 CALL                             R9 2 0
       31 FORGLOOP                         R4 2 ; [-16]
       33 LENGTH                           R4 R3
       34 LOADN                            R5 0
       35 JUMPIFNOTLT                      R5 R4 ; [+7]
       37 GETIMPORT                        R4 K8 [table.sort]
       39 MOVE                             R5 R3
       40 DUPCLOSURE                       R6 K9 [PROTO_1]
       41 CALL                             R4 2 0
       42 RETURN                           R3 1
       43 GETUPVAL                         R3 0
       44 RETURN                           R3 1
       45 GETUPVAL                         R3 1
       46 RETURN                           R3 1

PROTO_3:
        0 MOVE                             R2 R0
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 LENGTH                           R3 R2
        5 LENGTH                           R4 R1
        6 JUMPIFEQ                         R3 R4 ; [+3]
        8 LOADB                            R3 0
        9 RETURN                           R3 1
       10 MOVE                             R3 R1
       11 LOADNIL                          R4
       12 LOADNIL                          R5
       13 FORGPREP                         R3
       14 GETTABLE                         R8 R2 R6
       15 JUMPIFNOT                        R8 ; [+12]
       16 GETTABLEKS                       R9 R8 K0 ["Name"]
       18 GETTABLEKS                       R10 R7 K0 ["Name"]
       20 JUMPIFNOTEQ                      R9 R10 ; [+7]
       22 GETTABLEKS                       R9 R8 K1 ["ClassName"]
       24 GETTABLEKS                       R10 R7 K1 ["ClassName"]
       26 JUMPIFEQ                         R9 R10 ; [+3]
       28 LOADB                            R9 0
       29 RETURN                           R9 1
       30 FORGLOOP                         R3 2 ; [-17]
       32 LOADB                            R3 1
       33 RETURN                           R3 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["state"]
        3 GETTABLEKS                       R1 R1 K1 ["SortDirection"]
        5 JUMPIFNOTEQKS                    R1 K2 ["descending"] ; [+3]
        7 LOADK                            R0 K3 ["ascending"]
        8 JUMP                             ; [+1]
        9 LOADK                            R0 K2 ["descending"]
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K4 ["props"]
       13 GETTABLEKS                       R1 R1 K5 ["assetDMData"]
       15 JUMPIFNOT                        R1 ; [+7]
       16 GETUPVAL                         R1 0
       17 GETTABLEKS                       R1 R1 K4 ["props"]
       19 GETTABLEKS                       R1 R1 K5 ["assetDMData"]
       21 GETTABLEKS                       R1 R1 K6 ["validationEntries"]
       23 GETUPVAL                         R2 0
       24 DUPTABLE                         R4 K8 [{"SortDirection", "Items"}]
       25 SETTABLEKS                       R0 R4 K1 ["SortDirection"]
       27 GETUPVAL                         R5 1
       28 MOVE                             R6 R1
       29 MOVE                             R7 R0
       30 CALL                             R5 2 1
       31 SETTABLEKS                       R5 R4 K7 ["Items"]
       33 NAMECALL                         R2 R2 K9 ["setState"]
       35 CALL                             R2 2 0
       36 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["assetDMData"]
        5 JUMPIF                           R0 ; [+2]
        6 NEWTABLE                         R0 0 0
        8 GETTABLEKS                       R1 R0 K2 ["selectedModels"]
       10 JUMPIF                           R1 ; [+2]
       11 NEWTABLE                         R1 0 0
       13 LENGTH                           R2 R1
       14 JUMPIFEQKN                       R2 K3 [1] ; [+2]
       16 RETURN                           R0 0
       17 GETUPVAL                         R2 0
       18 GETTABLEKS                       R2 R2 K0 ["props"]
       20 GETTABLEKS                       R2 R2 K4 ["Plugin"]
       22 NAMECALL                         R2 R2 K5 ["get"]
       24 CALL                             R2 1 1
       25 MOVE                             R3 R1
       26 LOADNIL                          R4
       27 LOADNIL                          R5
       28 FORGPREP                         R3
       29 GETTABLEKS                       R8 R7 K6 ["ClassName"]
       31 JUMPIFEQKS                       R8 K7 ["Model"] ; [+36]
       33 JUMPIFEQKS                       R8 K8 ["Accessory"] ; [+34]
       35 LOADK                            R11 K9 ["SetStateAndRefresh"]
       36 NEWTABLE                         R12 1 0
       38 NEWTABLE                         R13 0 1
       40 DUPTABLE                         R14 K14 [{"entryIndex", "groupKey", "validationEnum", "severity"}]
       41 LOADN                            R15 1
       42 SETTABLEKS                       R15 R14 K10 ["entryIndex"]
       44 LOADK                            R15 K15 ["Error"]
       45 SETTABLEKS                       R15 R14 K11 ["groupKey"]
       47 LOADK                            R16 K16 ["No asset types available for instance \"%*\" (%*)."]
       48 GETTABLEKS                       R18 R7 K17 ["Name"]
       50 MOVE                             R19 R8
       51 NAMECALL                         R16 R16 K18 ["format"]
       53 CALL                             R16 3 1
       54 MOVE                             R15 R16
       55 SETTABLEKS                       R15 R14 K12 ["validationEnum"]
       57 LOADK                            R15 K15 ["Error"]
       58 SETTABLEKS                       R15 R14 K13 ["severity"]
       60 SETLIST                          R13 R14 1 [1]
       62 SETTABLEKS                       R13 R12 K19 ["validationEntries"]
       64 NAMECALL                         R9 R2 K20 ["Invoke"]
       66 CALL                             R9 3 0
       67 RETURN                           R0 0
       68 FORGLOOP                         R3 2 ; [-40]
       70 NEWTABLE                         R3 0 0
       72 NEWTABLE                         R4 0 0
       74 GETUPVAL                         R5 0
       75 GETTABLEKS                       R5 R5 K0 ["props"]
       77 GETTABLEKS                       R5 R5 K21 ["bundleTypeItems"]
       79 MOVE                             R6 R1
       80 LOADNIL                          R7
       81 LOADNIL                          R8
       82 FORGPREP                         R6
       83 GETUPVAL                         R11 1
       84 MOVE                             R12 R5
       85 GETTABLEKS                       R13 R10 K6 ["ClassName"]
       87 CALL                             R11 2 1
       88 DUPTABLE                         R12 K22 [{"Name", "ClassName"}]
       89 GETTABLEKS                       R13 R10 K17 ["Name"]
       91 SETTABLEKS                       R13 R12 K17 ["Name"]
       93 GETTABLEKS                       R13 R10 K6 ["ClassName"]
       95 SETTABLEKS                       R13 R12 K6 ["ClassName"]
       97 SETTABLE                         R12 R3 R9
       98 GETTABLEN                        R12 R11 1
       99 GETTABLEKS                       R12 R12 K23 ["id"]
      101 SETTABLE                         R12 R4 R9
      102 FORGLOOP                         R6 2 ; [-20]
      104 GETUPVAL                         R6 0
      105 DUPTABLE                         R8 K27 [{"IsDialogOpen", "DialogModels", "PendingAssetTypes"}]
      106 LOADB                            R9 1
      107 SETTABLEKS                       R9 R8 K24 ["IsDialogOpen"]
      109 SETTABLEKS                       R3 R8 K25 ["DialogModels"]
      111 SETTABLEKS                       R4 R8 K26 ["PendingAssetTypes"]
      113 NAMECALL                         R6 R6 K28 ["setState"]
      115 CALL                             R6 2 0
      116 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"IsDialogOpen"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["IsDialogOpen"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["Plugin"]
        5 NAMECALL                         R0 R0 K2 ["get"]
        7 CALL                             R0 1 1
        8 LOADK                            R3 K3 ["CancelValidation"]
        9 NEWTABLE                         R4 0 0
       11 NAMECALL                         R1 R0 K4 ["Invoke"]
       13 CALL                             R1 3 0
       14 RETURN                           R0 0

PROTO_8:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 GETTABLEKS                       R2 R0 K3 ["PendingAssetTypes"]
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 0
        6 GETUPVAL                         R3 1
        7 SETTABLE                         R3 R1 R2
        8 DUPTABLE                         R2 K4 [{"PendingAssetTypes"}]
        9 SETTABLEKS                       R1 R2 K3 ["PendingAssetTypes"]
       11 RETURN                           R2 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 NAMECALL                         R1 R1 K0 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_10:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 RETURN                           R1 1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["Plugin"]
        5 NAMECALL                         R0 R0 K2 ["get"]
        7 CALL                             R0 1 1
        8 NEWTABLE                         R1 0 0
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K3 ["state"]
       13 GETTABLEKS                       R2 R2 K4 ["DialogModels"]
       15 LOADNIL                          R3
       16 LOADNIL                          R4
       17 FORGPREP                         R2
       18 DUPTABLE                         R7 K8 [{"Name", "ClassName", "assetTypeId"}]
       19 GETTABLEKS                       R8 R6 K5 ["Name"]
       21 SETTABLEKS                       R8 R7 K5 ["Name"]
       23 GETTABLEKS                       R8 R6 K6 ["ClassName"]
       25 SETTABLEKS                       R8 R7 K6 ["ClassName"]
       27 GETUPVAL                         R10 0
       28 GETTABLEKS                       R10 R10 K3 ["state"]
       30 GETTABLEKS                       R10 R10 K10 ["PendingAssetTypes"]
       32 GETTABLE                         R9 R10 R5
       33 ORK                              R8 R9 K9 ["bundle:Body"]
       34 SETTABLEKS                       R8 R7 K7 ["assetTypeId"]
       36 SETTABLE                         R7 R1 R5
       37 FORGLOOP                         R2 2 ; [-20]
       39 LOADK                            R4 K11 ["RunValidation"]
       40 DUPTABLE                         R5 K14 [{"models", "allowedBundleTypeSettings"}]
       41 SETTABLEKS                       R1 R5 K12 ["models"]
       43 GETUPVAL                         R6 0
       44 GETTABLEKS                       R6 R6 K0 ["props"]
       46 GETTABLEKS                       R6 R6 K13 ["allowedBundleTypeSettings"]
       48 SETTABLEKS                       R6 R5 K13 ["allowedBundleTypeSettings"]
       50 NAMECALL                         R2 R0 K15 ["Invoke"]
       52 CALL                             R2 3 0
       53 GETUPVAL                         R2 0
       54 DUPTABLE                         R4 K17 [{"IsDialogOpen"}]
       55 LOADB                            R5 0
       56 SETTABLEKS                       R5 R4 K16 ["IsDialogOpen"]
       58 NAMECALL                         R2 R2 K18 ["setState"]
       60 CALL                             R2 2 0
       61 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["assetDMData"]
        4 JUMPIFNOT                        R1 ; [+6]
        5 GETTABLEKS                       R1 R0 K0 ["props"]
        7 GETTABLEKS                       R1 R1 K1 ["assetDMData"]
        9 GETTABLEKS                       R1 R1 K2 ["validationEntries"]
       11 DUPTABLE                         R2 K10 [{"Selection", "Expansion", "SortDirection", "Items", "IsDialogOpen", "DialogModels", "PendingAssetTypes"}]
       12 NEWTABLE                         R3 0 0
       14 SETTABLEKS                       R3 R2 K3 ["Selection"]
       16 NEWTABLE                         R3 0 0
       18 SETTABLEKS                       R3 R2 K4 ["Expansion"]
       20 LOADK                            R3 K11 ["descending"]
       21 SETTABLEKS                       R3 R2 K5 ["SortDirection"]
       23 GETUPVAL                         R3 0
       24 MOVE                             R4 R1
       25 LOADK                            R5 K11 ["descending"]
       26 CALL                             R3 2 1
       27 SETTABLEKS                       R3 R2 K6 ["Items"]
       29 LOADB                            R3 0
       30 SETTABLEKS                       R3 R2 K7 ["IsDialogOpen"]
       32 NEWTABLE                         R3 0 0
       34 SETTABLEKS                       R3 R2 K8 ["DialogModels"]
       36 NEWTABLE                         R3 0 0
       38 SETTABLEKS                       R3 R2 K9 ["PendingAssetTypes"]
       40 SETTABLEKS                       R2 R0 K12 ["state"]
       42 NEWCLOSURE                       R2 P0
       43 CAPTURE                          VAL R0
       44 CAPTURE                          UPVAL U0
       45 SETTABLEKS                       R2 R0 K13 ["toggleSortDirection"]
       47 NEWCLOSURE                       R2 P1
       48 CAPTURE                          VAL R0
       49 CAPTURE                          UPVAL U1
       50 SETTABLEKS                       R2 R0 K14 ["openDialog"]
       52 NEWCLOSURE                       R2 P2
       53 CAPTURE                          VAL R0
       54 SETTABLEKS                       R2 R0 K15 ["closeDialog"]
       56 NEWCLOSURE                       R2 P3
       57 CAPTURE                          VAL R0
       58 SETTABLEKS                       R2 R0 K16 ["cancelValidation"]
       60 NEWCLOSURE                       R2 P4
       61 CAPTURE                          VAL R0
       62 SETTABLEKS                       R2 R0 K17 ["makeAssetTypeChangedHandler"]
       64 NEWCLOSURE                       R2 P5
       65 CAPTURE                          VAL R0
       66 SETTABLEKS                       R2 R0 K18 ["submitValidation"]
       68 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R2 R1 K0 ["assetDMData"]
        2 JUMPIFNOT                        R2 ; [+4]
        3 GETTABLEKS                       R2 R1 K0 ["assetDMData"]
        5 GETTABLEKS                       R2 R2 K1 ["validationEntries"]
        7 GETTABLEKS                       R3 R0 K2 ["props"]
        9 GETTABLEKS                       R3 R3 K0 ["assetDMData"]
       11 JUMPIFNOT                        R3 ; [+6]
       12 GETTABLEKS                       R3 R0 K2 ["props"]
       14 GETTABLEKS                       R3 R3 K0 ["assetDMData"]
       16 GETTABLEKS                       R3 R3 K1 ["validationEntries"]
       18 JUMPIFEQ                         R3 R2 ; [+22]
       20 DUPTABLE                         R6 K6 [{"Items", "Selection", "Expansion"}]
       21 GETUPVAL                         R7 0
       22 MOVE                             R8 R3
       23 GETTABLEKS                       R9 R0 K7 ["state"]
       25 GETTABLEKS                       R9 R9 K8 ["SortDirection"]
       27 CALL                             R7 2 1
       28 SETTABLEKS                       R7 R6 K3 ["Items"]
       30 NEWTABLE                         R7 0 0
       32 SETTABLEKS                       R7 R6 K4 ["Selection"]
       34 NEWTABLE                         R7 0 0
       36 SETTABLEKS                       R7 R6 K5 ["Expansion"]
       38 NAMECALL                         R4 R0 K9 ["setState"]
       40 CALL                             R4 2 0
       41 GETTABLEKS                       R4 R0 K7 ["state"]
       43 GETTABLEKS                       R4 R4 K10 ["IsDialogOpen"]
       45 JUMPIFNOT                        R4 ; [+26]
       46 GETTABLEKS                       R4 R0 K2 ["props"]
       48 GETTABLEKS                       R4 R4 K0 ["assetDMData"]
       50 JUMPIFNOT                        R4 ; [+6]
       51 GETTABLEKS                       R4 R0 K2 ["props"]
       53 GETTABLEKS                       R4 R4 K0 ["assetDMData"]
       55 GETTABLEKS                       R4 R4 K11 ["selectedModels"]
       57 GETUPVAL                         R5 1
       58 MOVE                             R6 R4
       59 GETTABLEKS                       R7 R0 K7 ["state"]
       61 GETTABLEKS                       R7 R7 K12 ["DialogModels"]
       63 CALL                             R5 2 1
       64 JUMPIF                           R5 ; [+7]
       65 DUPTABLE                         R7 K13 [{"IsDialogOpen"}]
       66 LOADB                            R8 0
       67 SETTABLEKS                       R8 R7 K10 ["IsDialogOpen"]
       69 NAMECALL                         R5 R0 K9 ["setState"]
       71 CALL                             R5 2 0
       72 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Expansion"]
        3 NEWTABLE                         R3 1 0
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R7 R0 K0 ["Expansion"]
        8 GETUPVAL                         R8 1
        9 GETTABLE                         R6 R7 R8
       10 NOT                              R5 R6
       11 SETTABLE                         R5 R3 R4
       12 CALL                             R1 2 1
       13 DUPTABLE                         R2 K1 [{"Expansion"}]
       14 SETTABLEKS                       R1 R2 K0 ["Expansion"]
       16 RETURN                           R2 1

PROTO_15:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 NAMECALL                         R0 R0 K0 ["setState"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["Plugin"]
        5 NAMECALL                         R0 R0 K2 ["get"]
        7 CALL                             R0 1 1
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K3 ["state"]
       11 GETTABLEKS                       R2 R2 K4 ["Selection"]
       13 GETUPVAL                         R3 1
       14 GETTABLE                         R1 R2 R3
       15 JUMPIFNOT                        R1 ; [+16]
       16 GETUPVAL                         R1 0
       17 DUPTABLE                         R3 K5 [{"Selection"}]
       18 NEWTABLE                         R4 0 0
       20 SETTABLEKS                       R4 R3 K4 ["Selection"]
       22 NAMECALL                         R1 R1 K6 ["setState"]
       24 CALL                             R1 2 0
       25 LOADK                            R3 K7 ["HideMesh"]
       26 NEWTABLE                         R4 0 0
       28 NAMECALL                         R1 R0 K8 ["Invoke"]
       30 CALL                             R1 3 0
       31 RETURN                           R0 0
       32 GETUPVAL                         R1 0
       33 DUPTABLE                         R3 K5 [{"Selection"}]
       34 NEWTABLE                         R4 1 0
       36 GETUPVAL                         R5 1
       37 LOADB                            R6 1
       38 SETTABLE                         R6 R4 R5
       39 SETTABLEKS                       R4 R3 K4 ["Selection"]
       41 NAMECALL                         R1 R1 K6 ["setState"]
       43 CALL                             R1 2 0
       44 LOADK                            R3 K9 ["ExplorerSelect"]
       45 DUPTABLE                         R4 K11 [{"groupKey"}]
       46 GETUPVAL                         R5 1
       47 GETTABLEKS                       R5 R5 K12 ["text"]
       49 SETTABLEKS                       R5 R4 K10 ["groupKey"]
       51 NAMECALL                         R1 R0 K8 ["Invoke"]
       53 CALL                             R1 3 0
       54 RETURN                           R0 0

PROTO_17:
        0 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["Plugin"]
        5 NAMECALL                         R0 R0 K2 ["get"]
        7 CALL                             R0 1 1
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K3 ["state"]
       11 GETTABLEKS                       R2 R2 K4 ["Selection"]
       13 GETUPVAL                         R3 1
       14 GETTABLE                         R1 R2 R3
       15 JUMPIFNOT                        R1 ; [+16]
       16 GETUPVAL                         R1 0
       17 DUPTABLE                         R3 K5 [{"Selection"}]
       18 NEWTABLE                         R4 0 0
       20 SETTABLEKS                       R4 R3 K4 ["Selection"]
       22 NAMECALL                         R1 R1 K6 ["setState"]
       24 CALL                             R1 2 0
       25 LOADK                            R3 K7 ["HideMesh"]
       26 NEWTABLE                         R4 0 0
       28 NAMECALL                         R1 R0 K8 ["Invoke"]
       30 CALL                             R1 3 0
       31 RETURN                           R0 0
       32 GETUPVAL                         R1 0
       33 DUPTABLE                         R3 K5 [{"Selection"}]
       34 NEWTABLE                         R4 1 0
       36 GETUPVAL                         R5 1
       37 LOADB                            R6 1
       38 SETTABLE                         R6 R4 R5
       39 SETTABLEKS                       R4 R3 K4 ["Selection"]
       41 NAMECALL                         R1 R1 K6 ["setState"]
       43 CALL                             R1 2 0
       44 GETUPVAL                         R1 1
       45 GETTABLEKS                       R1 R1 K9 ["entryIndex"]
       47 JUMPIFNOT                        R1 ; [+10]
       48 LOADK                            R3 K10 ["ShowMesh"]
       49 DUPTABLE                         R4 K11 [{"entryIndex"}]
       50 GETUPVAL                         R5 1
       51 GETTABLEKS                       R5 R5 K9 ["entryIndex"]
       53 SETTABLEKS                       R5 R4 K9 ["entryIndex"]
       55 NAMECALL                         R1 R0 K8 ["Invoke"]
       57 CALL                             R1 3 0
       58 RETURN                           R0 0

PROTO_19:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["assetDMData"]
        4 JUMPIF                           R1 ; [+2]
        5 NEWTABLE                         R1 0 0
        7 GETTABLEKS                       R3 R1 K2 ["isValidationRunning"]
        9 JUMPIFEQKB                       R3 TRUE ; [+2]
       11 LOADB                            R2 0 +1
       12 LOADB                            R2 1
       13 GETTABLEKS                       R4 R1 K3 ["validationEntries"]
       15 JUMPIFNOTEQKNIL                  R4 ; [+2]
       17 LOADB                            R3 0 +1
       18 LOADB                            R3 1
       19 GETTABLEKS                       R5 R1 K4 ["validationCompleted"]
       21 JUMPIFEQKB                       R5 TRUE ; [+2]
       23 LOADB                            R4 0 +1
       24 LOADB                            R4 1
       25 MOVE                             R5 R4
       26 JUMPIFNOT                        R5 ; [+11]
       27 MOVE                             R5 R3
       28 JUMPIFNOT                        R5 ; [+9]
       29 LOADB                            R5 0
       30 GETTABLEKS                       R7 R0 K5 ["state"]
       32 GETTABLEKS                       R7 R7 K6 ["Items"]
       34 LENGTH                           R6 R7
       35 JUMPIFNOTEQKN                    R6 K7 [0] ; [+2]
       37 NOT                              R5 R2
       38 LOADNIL                          R6
       39 JUMPIFNOT                        R2 ; [+28]
       40 DUPTABLE                         R7 K9 [{"LoadingSpinner"}]
       41 GETUPVAL                         R8 0
       42 GETTABLEKS                       R8 R8 K10 ["createElement"]
       44 GETUPVAL                         R9 1
       45 DUPTABLE                         R10 K12 [{"tag"}]
       46 LOADK                            R11 K13 ["col align-x-center align-y-center size-full-full"]
       47 SETTABLEKS                       R11 R10 K11 ["tag"]
       49 DUPTABLE                         R11 K15 [{"Spinner"}]
       50 GETUPVAL                         R12 0
       51 GETTABLEKS                       R12 R12 K10 ["createElement"]
       53 GETUPVAL                         R13 2
       54 DUPTABLE                         R14 K17 [{"size"}]
       55 GETUPVAL                         R15 3
       56 GETTABLEKS                       R15 R15 K18 ["Large"]
       58 SETTABLEKS                       R15 R14 K16 ["size"]
       60 CALL                             R12 2 1
       61 SETTABLEKS                       R12 R11 K14 ["Spinner"]
       63 CALL                             R8 3 1
       64 SETTABLEKS                       R8 R7 K8 ["LoadingSpinner"]
       66 MOVE                             R6 R7
       67 JUMP                             ; [+228]
       68 JUMPIFNOT                        R5 ; [+59]
       69 DUPTABLE                         R7 K20 [{"SuccessState"}]
       70 GETUPVAL                         R8 0
       71 GETTABLEKS                       R8 R8 K10 ["createElement"]
       73 GETUPVAL                         R9 1
       74 DUPTABLE                         R10 K12 [{"tag"}]
       75 LOADK                            R11 K21 ["col align-x-center align-y-center gap-small size-full-full"]
       76 SETTABLEKS                       R11 R10 K11 ["tag"]
       78 DUPTABLE                         R11 K24 [{"SuccessIcon", "SuccessText"}]
       79 GETUPVAL                         R12 0
       80 GETTABLEKS                       R12 R12 K10 ["createElement"]
       82 GETUPVAL                         R13 4
       83 DUPTABLE                         R14 K27 [{"name", "size", "LayoutOrder"}]
       84 LOADK                            R15 K28 ["circle-check"]
       85 SETTABLEKS                       R15 R14 K25 ["name"]
       87 GETUPVAL                         R15 3
       88 GETTABLEKS                       R15 R15 K18 ["Large"]
       90 SETTABLEKS                       R15 R14 K16 ["size"]
       92 LOADN                            R15 0
       93 SETTABLEKS                       R15 R14 K26 ["LayoutOrder"]
       95 CALL                             R12 2 1
       96 SETTABLEKS                       R12 R11 K22 ["SuccessIcon"]
       98 GETUPVAL                         R12 0
       99 GETTABLEKS                       R12 R12 K10 ["createElement"]
      101 GETUPVAL                         R13 5
      102 DUPTABLE                         R14 K30 [{"tag", "Text", "LayoutOrder"}]
      103 LOADK                            R15 K31 ["text-body-small content-default"]
      104 SETTABLEKS                       R15 R14 K11 ["tag"]
      106 GETTABLEKS                       R15 R0 K0 ["props"]
      108 GETTABLEKS                       R15 R15 K32 ["Localization"]
      110 LOADK                            R17 K29 ["Text"]
      111 LOADK                            R18 K33 ["NoIssuesFound"]
      112 NAMECALL                         R15 R15 K34 ["getText"]
      114 CALL                             R15 3 1
      115 SETTABLEKS                       R15 R14 K29 ["Text"]
      117 LOADN                            R15 1
      118 SETTABLEKS                       R15 R14 K26 ["LayoutOrder"]
      120 CALL                             R12 2 1
      121 SETTABLEKS                       R12 R11 K23 ["SuccessText"]
      123 CALL                             R8 3 1
      124 SETTABLEKS                       R8 R7 K19 ["SuccessState"]
      126 MOVE                             R6 R7
      127 JUMP                             ; [+168]
      128 NEWTABLE                         R7 0 0
      130 LOADN                            R8 0
      131 GETTABLEKS                       R9 R0 K5 ["state"]
      133 GETTABLEKS                       R9 R9 K6 ["Items"]
      135 LOADNIL                          R10
      136 LOADNIL                          R11
      137 FORGPREP                         R9
      138 ADDK                             R8 R8 K35 [1]
      139 GETTABLEKS                       R16 R0 K5 ["state"]
      141 GETTABLEKS                       R16 R16 K36 ["Expansion"]
      143 GETTABLE                         R15 R16 R13
      144 JUMPIFEQKB                       R15 TRUE ; [+2]
      146 LOADB                            R14 0 +1
      147 LOADB                            R14 1
      148 GETTABLEKS                       R17 R0 K5 ["state"]
      150 GETTABLEKS                       R17 R17 K37 ["Selection"]
      152 GETTABLE                         R16 R17 R13
      153 JUMPIFEQKB                       R16 TRUE ; [+2]
      155 LOADB                            R15 0 +1
      156 LOADB                            R15 1
      157 LOADK                            R17 K38 ["root_%*"]
      158 MOVE                             R19 R8
      159 NAMECALL                         R17 R17 K39 ["format"]
      161 CALL                             R17 2 1
      162 MOVE                             R16 R17
      163 GETUPVAL                         R17 0
      164 GETTABLEKS                       R17 R17 K10 ["createElement"]
      166 GETUPVAL                         R18 6
      167 DUPTABLE                         R19 K51 [{"Item", "Depth", "Index", "Children", "Expanded", "Selected", "Position", "Size", "localization", "OnToggle", "OnPress"}]
      168 SETTABLEKS                       R13 R19 K40 ["Item"]
      170 LOADN                            R20 0
      171 SETTABLEKS                       R20 R19 K41 ["Depth"]
      173 SETTABLEKS                       R8 R19 K42 ["Index"]
      175 GETTABLEKS                       R20 R13 K52 ["children"]
      177 SETTABLEKS                       R20 R19 K43 ["Children"]
      179 SETTABLEKS                       R14 R19 K44 ["Expanded"]
      181 SETTABLEKS                       R15 R19 K45 ["Selected"]
      183 GETIMPORT                        R20 K55 [UDim2.new]
      185 CALL                             R20 0 1
      186 SETTABLEKS                       R20 R19 K46 ["Position"]
      188 GETIMPORT                        R20 K55 [UDim2.new]
      190 LOADN                            R21 1
      191 LOADN                            R22 0
      192 LOADN                            R23 0
      193 LOADN                            R24 0
      194 CALL                             R20 4 1
      195 SETTABLEKS                       R20 R19 K47 ["Size"]
      197 GETTABLEKS                       R20 R0 K0 ["props"]
      199 GETTABLEKS                       R20 R20 K32 ["Localization"]
      201 SETTABLEKS                       R20 R19 K48 ["localization"]
      203 NEWCLOSURE                       R20 P0
      204 CAPTURE                          VAL R0
      205 CAPTURE                          UPVAL U7
      206 CAPTURE                          VAL R13
      207 SETTABLEKS                       R20 R19 K49 ["OnToggle"]
      209 NEWCLOSURE                       R20 P1
      210 CAPTURE                          VAL R0
      211 CAPTURE                          VAL R13
      212 SETTABLEKS                       R20 R19 K50 ["OnPress"]
      214 CALL                             R17 2 1
      215 SETTABLE                         R17 R7 R16
      216 JUMPIFNOT                        R14 ; [+76]
      217 GETTABLEKS                       R16 R13 K52 ["children"]
      219 JUMPIFNOT                        R16 ; [+73]
      220 GETTABLEKS                       R16 R13 K52 ["children"]
      222 LOADNIL                          R17
      223 LOADNIL                          R18
      224 FORGPREP                         R16
      225 ADDK                             R8 R8 K35 [1]
      226 GETTABLEKS                       R23 R0 K5 ["state"]
      228 GETTABLEKS                       R23 R23 K37 ["Selection"]
      230 GETTABLE                         R22 R23 R20
      231 JUMPIFEQKB                       R22 TRUE ; [+2]
      233 LOADB                            R21 0 +1
      234 LOADB                            R21 1
      235 LOADK                            R23 K56 ["child_%*"]
      236 MOVE                             R25 R8
      237 NAMECALL                         R23 R23 K39 ["format"]
      239 CALL                             R23 2 1
      240 MOVE                             R22 R23
      241 GETUPVAL                         R23 0
      242 GETTABLEKS                       R23 R23 K10 ["createElement"]
      244 GETUPVAL                         R24 6
      245 DUPTABLE                         R25 K51 [{"Item", "Depth", "Index", "Children", "Expanded", "Selected", "Position", "Size", "localization", "OnToggle", "OnPress"}]
      246 SETTABLEKS                       R20 R25 K40 ["Item"]
      248 LOADN                            R26 1
      249 SETTABLEKS                       R26 R25 K41 ["Depth"]
      251 SETTABLEKS                       R8 R25 K42 ["Index"]
      253 LOADNIL                          R26
      254 SETTABLEKS                       R26 R25 K43 ["Children"]
      256 LOADB                            R26 0
      257 SETTABLEKS                       R26 R25 K44 ["Expanded"]
      259 SETTABLEKS                       R21 R25 K45 ["Selected"]
      261 GETIMPORT                        R26 K55 [UDim2.new]
      263 CALL                             R26 0 1
      264 SETTABLEKS                       R26 R25 K46 ["Position"]
      266 GETIMPORT                        R26 K55 [UDim2.new]
      268 LOADN                            R27 1
      269 LOADN                            R28 0
      270 LOADN                            R29 0
      271 LOADN                            R30 0
      272 CALL                             R26 4 1
      273 SETTABLEKS                       R26 R25 K47 ["Size"]
      275 GETTABLEKS                       R26 R0 K0 ["props"]
      277 GETTABLEKS                       R26 R26 K32 ["Localization"]
      279 SETTABLEKS                       R26 R25 K48 ["localization"]
      281 DUPCLOSURE                       R26 K57 [PROTO_17]
      282 SETTABLEKS                       R26 R25 K49 ["OnToggle"]
      284 NEWCLOSURE                       R26 P3
      285 CAPTURE                          VAL R0
      286 CAPTURE                          VAL R20
      287 SETTABLEKS                       R26 R25 K50 ["OnPress"]
      289 CALL                             R23 2 1
      290 SETTABLE                         R23 R7 R22
      291 FORGLOOP                         R16 2 ; [-67]
      293 FORGLOOP                         R9 2 ; [-156]
      295 MOVE                             R6 R7
      296 GETUPVAL                         R7 0
      297 GETTABLEKS                       R7 R7 K10 ["createElement"]
      299 GETUPVAL                         R8 1
      300 DUPTABLE                         R9 K12 [{"tag"}]
      301 LOADK                            R10 K58 ["col align-y-top align-x-center size-full-full bg-surface-200"]
      302 SETTABLEKS                       R10 R9 K11 ["tag"]
      304 DUPTABLE                         R10 K65 [{"MainHeaderRow", "HeaderDivider", "MainScrollView", "FooterDivider", "FooterButtons", "AssetTypeDialogWidget"}]
      305 GETUPVAL                         R11 0
      306 GETTABLEKS                       R11 R11 K10 ["createElement"]
      308 GETUPVAL                         R12 8
      309 DUPTABLE                         R13 K70 [{"instanceName", "instanceClassName", "sortDirection", "onToggleSort", "LayoutOrder"}]
      310 JUMPIFNOT                        R1 ; [+3]
      311 GETTABLEKS                       R14 R1 K71 ["Name"]
      313 JUMPIF                           R14 ; [+1]
      314 LOADNIL                          R14
      315 SETTABLEKS                       R14 R13 K66 ["instanceName"]
      317 JUMPIFNOT                        R1 ; [+3]
      318 GETTABLEKS                       R14 R1 K72 ["ClassName"]
      320 JUMPIF                           R14 ; [+1]
      321 LOADNIL                          R14
      322 SETTABLEKS                       R14 R13 K67 ["instanceClassName"]
      324 GETTABLEKS                       R14 R0 K5 ["state"]
      326 GETTABLEKS                       R14 R14 K73 ["SortDirection"]
      328 SETTABLEKS                       R14 R13 K68 ["sortDirection"]
      330 GETTABLEKS                       R14 R0 K74 ["toggleSortDirection"]
      332 SETTABLEKS                       R14 R13 K69 ["onToggleSort"]
      334 LOADN                            R14 0
      335 SETTABLEKS                       R14 R13 K26 ["LayoutOrder"]
      337 CALL                             R11 2 1
      338 SETTABLEKS                       R11 R10 K59 ["MainHeaderRow"]
      340 GETUPVAL                         R11 0
      341 GETTABLEKS                       R11 R11 K10 ["createElement"]
      343 GETUPVAL                         R12 9
      344 DUPTABLE                         R13 K77 [{"variant", "orientation", "LayoutOrder"}]
      345 GETUPVAL                         R14 10
      346 GETTABLEKS                       R14 R14 K78 ["Default"]
      348 SETTABLEKS                       R14 R13 K75 ["variant"]
      350 GETUPVAL                         R14 11
      351 GETTABLEKS                       R14 R14 K79 ["Horizontal"]
      353 SETTABLEKS                       R14 R13 K76 ["orientation"]
      355 LOADN                            R14 1
      356 SETTABLEKS                       R14 R13 K26 ["LayoutOrder"]
      358 CALL                             R11 2 1
      359 SETTABLEKS                       R11 R10 K60 ["HeaderDivider"]
      361 GETUPVAL                         R11 0
      362 GETTABLEKS                       R11 R11 K10 ["createElement"]
      364 GETUPVAL                         R12 12
      365 DUPTABLE                         R13 K84 [{"Size", "tag", "fillBehavior", "layout", "selection", "scroll", "LayoutOrder"}]
      366 GETIMPORT                        R14 K55 [UDim2.new]
      368 LOADN                            R15 1
      369 LOADN                            R16 0
      370 LOADN                            R17 0
      371 LOADN                            R18 0
      372 CALL                             R14 4 1
      373 SETTABLEKS                       R14 R13 K47 ["Size"]
      375 LOADK                            R14 K85 ["grow"]
      376 SETTABLEKS                       R14 R13 K11 ["tag"]
      378 GETUPVAL                         R14 13
      379 GETTABLEKS                       R14 R14 K86 ["Fill"]
      381 SETTABLEKS                       R14 R13 K80 ["fillBehavior"]
      383 DUPTABLE                         R14 K88 [{"FillDirection"}]
      384 GETIMPORT                        R15 K91 [Enum.FillDirection.Vertical]
      386 SETTABLEKS                       R15 R14 K87 ["FillDirection"]
      388 SETTABLEKS                       R14 R13 K81 ["layout"]
      390 DUPTABLE                         R14 K93 [{"Selectable"}]
      391 LOADB                            R15 1
      392 SETTABLEKS                       R15 R14 K92 ["Selectable"]
      394 SETTABLEKS                       R14 R13 K82 ["selection"]
      396 DUPTABLE                         R14 K98 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection", "scrollBarVisibility"}]
      397 GETIMPORT                        R15 K101 [Enum.AutomaticSize.Y]
      399 SETTABLEKS                       R15 R14 K94 ["AutomaticCanvasSize"]
      401 GETIMPORT                        R15 K103 [UDim2.fromOffset]
      403 LOADN                            R16 0
      404 LOADN                            R17 0
      405 CALL                             R15 2 1
      406 SETTABLEKS                       R15 R14 K95 ["CanvasSize"]
      408 GETIMPORT                        R15 K104 [Enum.ScrollingDirection.Y]
      410 SETTABLEKS                       R15 R14 K96 ["ScrollingDirection"]
      412 GETUPVAL                         R15 14
      413 GETTABLEKS                       R15 R15 K105 ["Auto"]
      415 SETTABLEKS                       R15 R14 K97 ["scrollBarVisibility"]
      417 SETTABLEKS                       R14 R13 K83 ["scroll"]
      419 LOADN                            R14 2
      420 SETTABLEKS                       R14 R13 K26 ["LayoutOrder"]
      422 MOVE                             R14 R6
      423 CALL                             R11 3 1
      424 SETTABLEKS                       R11 R10 K61 ["MainScrollView"]
      426 GETUPVAL                         R11 0
      427 GETTABLEKS                       R11 R11 K10 ["createElement"]
      429 GETUPVAL                         R12 9
      430 DUPTABLE                         R13 K77 [{"variant", "orientation", "LayoutOrder"}]
      431 GETUPVAL                         R14 10
      432 GETTABLEKS                       R14 R14 K78 ["Default"]
      434 SETTABLEKS                       R14 R13 K75 ["variant"]
      436 GETUPVAL                         R14 11
      437 GETTABLEKS                       R14 R14 K79 ["Horizontal"]
      439 SETTABLEKS                       R14 R13 K76 ["orientation"]
      441 LOADN                            R14 3
      442 SETTABLEKS                       R14 R13 K26 ["LayoutOrder"]
      444 CALL                             R11 2 1
      445 SETTABLEKS                       R11 R10 K62 ["FooterDivider"]
      447 GETUPVAL                         R11 0
      448 GETTABLEKS                       R11 R11 K10 ["createElement"]
      450 GETUPVAL                         R12 1
      451 DUPTABLE                         R13 K106 [{"tag", "LayoutOrder"}]
      452 LOADK                            R14 K107 ["row padding-x-medium padding-y-small gap-small size-full-0 auto-y"]
      453 SETTABLEKS                       R14 R13 K11 ["tag"]
      455 LOADN                            R14 4
      456 SETTABLEKS                       R14 R13 K26 ["LayoutOrder"]
      458 DUPTABLE                         R14 K110 [{"RunValidationButton", "CancelButton"}]
      459 GETUPVAL                         R15 0
      460 GETTABLEKS                       R15 R15 K10 ["createElement"]
      462 GETUPVAL                         R16 15
      463 DUPTABLE                         R17 K117 [{"text", "variant", "testId", "onActivated", "isDisabled", "size", "height", "width", "fillBehavior", "LayoutOrder"}]
      464 GETTABLEKS                       R18 R0 K0 ["props"]
      466 GETTABLEKS                       R18 R18 K32 ["Localization"]
      468 LOADK                            R20 K29 ["Text"]
      469 LOADK                            R21 K118 ["RunValidation"]
      470 NAMECALL                         R18 R18 K34 ["getText"]
      472 CALL                             R18 3 1
      473 SETTABLEKS                       R18 R17 K111 ["text"]
      475 GETUPVAL                         R18 16
      476 GETTABLEKS                       R18 R18 K119 ["Emphasis"]
      478 SETTABLEKS                       R18 R17 K75 ["variant"]
      480 LOADK                            R18 K120 ["aqv-run-validation"]
      481 SETTABLEKS                       R18 R17 K112 ["testId"]
      483 JUMPIFNOT                        R2 ; [+2]
      484 LOADNIL                          R18
      485 JUMP                             ; [+2]
      486 GETTABLEKS                       R18 R0 K121 ["openDialog"]
      488 SETTABLEKS                       R18 R17 K113 ["onActivated"]
      490 SETTABLEKS                       R2 R17 K114 ["isDisabled"]
      492 GETUPVAL                         R18 17
      493 GETTABLEKS                       R18 R18 K122 ["Small"]
      495 SETTABLEKS                       R18 R17 K16 ["size"]
      497 GETIMPORT                        R18 K124 [UDim.new]
      499 LOADN                            R19 0
      500 LOADN                            R20 20
      501 CALL                             R18 2 1
      502 SETTABLEKS                       R18 R17 K115 ["height"]
      504 GETIMPORT                        R18 K124 [UDim.new]
      506 LOADN                            R19 1
      507 LOADN                            R20 0
      508 CALL                             R18 2 1
      509 SETTABLEKS                       R18 R17 K116 ["width"]
      511 GETUPVAL                         R18 13
      512 GETTABLEKS                       R18 R18 K125 ["Fit"]
      514 SETTABLEKS                       R18 R17 K80 ["fillBehavior"]
      516 LOADN                            R18 0
      517 SETTABLEKS                       R18 R17 K26 ["LayoutOrder"]
      519 CALL                             R15 2 1
      520 SETTABLEKS                       R15 R14 K108 ["RunValidationButton"]
      522 JUMPIFNOT                        R2 ; [+57]
      523 GETUPVAL                         R15 0
      524 GETTABLEKS                       R15 R15 K10 ["createElement"]
      526 GETUPVAL                         R16 15
      527 DUPTABLE                         R17 K126 [{"text", "variant", "testId", "onActivated", "size", "height", "width", "fillBehavior", "LayoutOrder"}]
      528 GETTABLEKS                       R18 R0 K0 ["props"]
      530 GETTABLEKS                       R18 R18 K32 ["Localization"]
      532 LOADK                            R20 K29 ["Text"]
      533 LOADK                            R21 K127 ["Cancel"]
      534 NAMECALL                         R18 R18 K34 ["getText"]
      536 CALL                             R18 3 1
      537 SETTABLEKS                       R18 R17 K111 ["text"]
      539 GETUPVAL                         R18 16
      540 GETTABLEKS                       R18 R18 K128 ["Standard"]
      542 SETTABLEKS                       R18 R17 K75 ["variant"]
      544 LOADK                            R18 K129 ["aqv-cancel-validation"]
      545 SETTABLEKS                       R18 R17 K112 ["testId"]
      547 GETTABLEKS                       R18 R0 K130 ["cancelValidation"]
      549 SETTABLEKS                       R18 R17 K113 ["onActivated"]
      551 GETUPVAL                         R18 17
      552 GETTABLEKS                       R18 R18 K122 ["Small"]
      554 SETTABLEKS                       R18 R17 K16 ["size"]
      556 GETIMPORT                        R18 K124 [UDim.new]
      558 LOADN                            R19 0
      559 LOADN                            R20 20
      560 CALL                             R18 2 1
      561 SETTABLEKS                       R18 R17 K115 ["height"]
      563 GETIMPORT                        R18 K124 [UDim.new]
      565 LOADN                            R19 0
      566 LOADN                            R20 80
      567 CALL                             R18 2 1
      568 SETTABLEKS                       R18 R17 K116 ["width"]
      570 GETUPVAL                         R18 13
      571 GETTABLEKS                       R18 R18 K125 ["Fit"]
      573 SETTABLEKS                       R18 R17 K80 ["fillBehavior"]
      575 LOADN                            R18 1
      576 SETTABLEKS                       R18 R17 K26 ["LayoutOrder"]
      578 CALL                             R15 2 1
      579 JUMP                             ; [+1]
      580 LOADNIL                          R15
      581 SETTABLEKS                       R15 R14 K109 ["CancelButton"]
      583 CALL                             R11 3 1
      584 SETTABLEKS                       R11 R10 K63 ["FooterButtons"]
      586 GETUPVAL                         R11 0
      587 GETTABLEKS                       R11 R11 K10 ["createElement"]
      589 GETUPVAL                         R12 18
      590 DUPTABLE                         R13 K140 [{"visible", "models", "pendingAssetTypes", "bundleTypeItems", "buildDropdownItems", "onAssetTypeChanged", "onSubmit", "onCancel", "inline", "LayoutOrder"}]
      591 GETTABLEKS                       R14 R0 K5 ["state"]
      593 GETTABLEKS                       R14 R14 K141 ["IsDialogOpen"]
      595 SETTABLEKS                       R14 R13 K131 ["visible"]
      597 GETTABLEKS                       R14 R0 K5 ["state"]
      599 GETTABLEKS                       R14 R14 K142 ["DialogModels"]
      601 SETTABLEKS                       R14 R13 K132 ["models"]
      603 GETTABLEKS                       R14 R0 K5 ["state"]
      605 GETTABLEKS                       R14 R14 K143 ["PendingAssetTypes"]
      607 SETTABLEKS                       R14 R13 K133 ["pendingAssetTypes"]
      609 GETTABLEKS                       R14 R0 K0 ["props"]
      611 GETTABLEKS                       R14 R14 K134 ["bundleTypeItems"]
      613 SETTABLEKS                       R14 R13 K134 ["bundleTypeItems"]
      615 GETUPVAL                         R14 19
      616 SETTABLEKS                       R14 R13 K135 ["buildDropdownItems"]
      618 GETTABLEKS                       R14 R0 K144 ["makeAssetTypeChangedHandler"]
      620 SETTABLEKS                       R14 R13 K136 ["onAssetTypeChanged"]
      622 GETTABLEKS                       R14 R0 K145 ["submitValidation"]
      624 SETTABLEKS                       R14 R13 K137 ["onSubmit"]
      626 GETTABLEKS                       R14 R0 K146 ["closeDialog"]
      628 SETTABLEKS                       R14 R13 K138 ["onCancel"]
      630 GETTABLEKS                       R14 R0 K0 ["props"]
      632 GETTABLEKS                       R14 R14 K147 ["dialogInline"]
      634 SETTABLEKS                       R14 R13 K139 ["inline"]
      636 LOADN                            R14 5
      637 SETTABLEKS                       R14 R13 K26 ["LayoutOrder"]
      639 CALL                             R11 2 1
      640 SETTABLEKS                       R11 R10 K64 ["AssetTypeDialogWidget"]
      642 CALL                             R7 3 -1
      643 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetQualityValidation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Bin"]
       11 GETTABLEKS                       R2 R2 K7 ["Common"]
       13 GETTABLEKS                       R2 R2 K8 ["defineLuaFlags"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R3 R1 K9 ["getFFlagEnableAssetQualityValidation"]
       18 CALL                             R3 0 1
       19 FASTCALL2K                       ASSERT R3 K10 ; [+4]
       21 LOADK                            R4 K10 ["ValidationPanel requires FFlagEnableAssetQualityValidation"]
       22 GETIMPORT                        R2 K12 [assert]
       24 CALL                             R2 2 0
       25 GETIMPORT                        R2 K5 [require]
       27 GETTABLEKS                       R3 R0 K13 ["Packages"]
       29 GETTABLEKS                       R3 R3 K14 ["React"]
       31 CALL                             R2 1 1
       32 GETIMPORT                        R3 K5 [require]
       34 GETTABLEKS                       R4 R0 K13 ["Packages"]
       36 GETTABLEKS                       R4 R4 K15 ["Framework"]
       38 CALL                             R3 1 1
       39 GETIMPORT                        R4 K5 [require]
       41 GETTABLEKS                       R5 R0 K13 ["Packages"]
       43 GETTABLEKS                       R5 R5 K16 ["Foundation"]
       45 CALL                             R4 1 1
       46 GETIMPORT                        R5 K5 [require]
       48 GETTABLEKS                       R6 R0 K13 ["Packages"]
       50 GETTABLEKS                       R6 R6 K17 ["Dash"]
       52 CALL                             R5 1 1
       53 GETTABLEKS                       R6 R5 K18 ["join"]
       55 GETTABLEKS                       R7 R3 K19 ["ContextServices"]
       57 GETTABLEKS                       R8 R7 K20 ["withContext"]
       59 GETTABLEKS                       R9 R4 K21 ["View"]
       61 GETTABLEKS                       R10 R4 K22 ["Text"]
       63 GETTABLEKS                       R11 R4 K23 ["Icon"]
       65 GETTABLEKS                       R12 R4 K24 ["Button"]
       67 GETTABLEKS                       R13 R4 K25 ["Loading"]
       69 GETTABLEKS                       R14 R4 K26 ["ScrollView"]
       71 GETTABLEKS                       R15 R4 K27 ["Enums"]
       73 GETTABLEKS                       R15 R15 K28 ["ButtonVariant"]
       75 GETTABLEKS                       R16 R4 K27 ["Enums"]
       77 GETTABLEKS                       R16 R16 K29 ["InputSize"]
       79 GETTABLEKS                       R17 R4 K27 ["Enums"]
       81 GETTABLEKS                       R17 R17 K30 ["IconSize"]
       83 GETTABLEKS                       R18 R4 K27 ["Enums"]
       85 GETTABLEKS                       R18 R18 K31 ["FillBehavior"]
       87 GETTABLEKS                       R19 R4 K27 ["Enums"]
       89 GETTABLEKS                       R19 R19 K32 ["ScrollBarVisibility"]
       91 GETTABLEKS                       R20 R4 K33 ["Divider"]
       93 GETTABLEKS                       R21 R4 K27 ["Enums"]
       95 GETTABLEKS                       R21 R21 K34 ["DividerVariant"]
       97 GETTABLEKS                       R22 R4 K27 ["Enums"]
       99 GETTABLEKS                       R22 R22 K35 ["Orientation"]
      101 GETIMPORT                        R23 K5 [require]
      103 GETTABLEKS                       R24 R0 K36 ["Src"]
      105 GETTABLEKS                       R24 R24 K37 ["Components"]
      107 GETTABLEKS                       R24 R24 K38 ["HeaderRow"]
      109 CALL                             R23 1 1
      110 GETIMPORT                        R24 K5 [require]
      112 GETTABLEKS                       R25 R0 K36 ["Src"]
      114 GETTABLEKS                       R25 R25 K37 ["Components"]
      116 GETTABLEKS                       R25 R25 K39 ["AssetTypeDialog"]
      118 CALL                             R24 1 1
      119 GETIMPORT                        R25 K5 [require]
      121 GETTABLEKS                       R26 R0 K36 ["Src"]
      123 GETTABLEKS                       R26 R26 K40 ["Util"]
      125 GETTABLEKS                       R26 R26 K41 ["buildTreeItems"]
      127 CALL                             R25 1 1
      128 GETIMPORT                        R26 K5 [require]
      130 GETIMPORT                        R27 K1 [script]
      132 GETTABLEKS                       R27 R27 K42 ["ValidationRow"]
      134 CALL                             R26 1 1
      135 NEWTABLE                         R27 0 0
      137 NEWTABLE                         R28 0 0
      139 GETIMPORT                        R29 K45 [Enum.AssetType]
      141 NAMECALL                         R29 R29 K46 ["GetEnumItems"]
      143 CALL                             R29 1 3
      144 FORGPREP                         R29
      145 GETTABLEKS                       R34 R33 K47 ["Name"]
      147 JUMPIFEQKS                       R34 K48 ["Hat"] ; [+7]
      149 LOADN                            R37 247
      150 NAMECALL                         R35 R34 K49 ["sub"]
      152 CALL                             R35 2 1
      153 JUMPIFNOTEQKS                    R35 K50 ["Accessory"] ; [+14]
      155 DUPTABLE                         R37 K53 [{"id", "text"}]
      156 GETTABLEKS                       R38 R33 K54 ["Value"]
      158 SETTABLEKS                       R38 R37 K51 ["id"]
      160 SETTABLEKS                       R34 R37 K52 ["text"]
      162 FASTCALL2                        TABLE_INSERT R28 R37 ; [+4]
      164 MOVE                             R36 R28
      165 GETIMPORT                        R35 K57 [table.insert]
      167 CALL                             R35 2 0
      168 FORGLOOP                         R29 2 ; [-24]
      170 GETIMPORT                        R29 K59 [table.sort]
      172 MOVE                             R30 R28
      173 DUPCLOSURE                       R31 K60 [PROTO_0]
      174 CALL                             R29 2 0
      175 MOVE                             R27 R28
      176 NEWTABLE                         R28 0 2
      178 DUPTABLE                         R29 K53 [{"id", "text"}]
      179 LOADK                            R30 K61 ["bundle:Body"]
      180 SETTABLEKS                       R30 R29 K51 ["id"]
      182 LOADK                            R30 K62 ["Body"]
      183 SETTABLEKS                       R30 R29 K52 ["text"]
      185 DUPTABLE                         R30 K53 [{"id", "text"}]
      186 LOADK                            R31 K63 ["bundle:DynamicHead"]
      187 SETTABLEKS                       R31 R30 K51 ["id"]
      189 LOADK                            R31 K64 ["DynamicHead"]
      190 SETTABLEKS                       R31 R30 K52 ["text"]
      192 SETLIST                          R28 R29 2 [1]
      194 NEWCLOSURE                       R29 P1
      195 CAPTURE                          VAL R28
      196 CAPTURE                          REF R27
      197 DUPCLOSURE                       R30 K65 [PROTO_3]
      198 GETTABLEKS                       R31 R2 K66 ["PureComponent"]
      200 LOADK                            R33 K67 ["ValidationPanel"]
      201 NAMECALL                         R31 R31 K68 ["extend"]
      203 CALL                             R31 2 1
      204 DUPCLOSURE                       R32 K69 [PROTO_12]
      205 CAPTURE                          VAL R25
      206 CAPTURE                          VAL R29
      207 SETTABLEKS                       R32 R31 K70 ["init"]
      209 DUPCLOSURE                       R32 K71 [PROTO_13]
      210 CAPTURE                          VAL R25
      211 CAPTURE                          VAL R30
      212 SETTABLEKS                       R32 R31 K72 ["didUpdate"]
      214 DUPCLOSURE                       R32 K73 [PROTO_19]
      215 CAPTURE                          VAL R2
      216 CAPTURE                          VAL R9
      217 CAPTURE                          VAL R13
      218 CAPTURE                          VAL R17
      219 CAPTURE                          VAL R11
      220 CAPTURE                          VAL R10
      221 CAPTURE                          VAL R26
      222 CAPTURE                          VAL R6
      223 CAPTURE                          VAL R23
      224 CAPTURE                          VAL R20
      225 CAPTURE                          VAL R21
      226 CAPTURE                          VAL R22
      227 CAPTURE                          VAL R14
      228 CAPTURE                          VAL R18
      229 CAPTURE                          VAL R19
      230 CAPTURE                          VAL R12
      231 CAPTURE                          VAL R15
      232 CAPTURE                          VAL R16
      233 CAPTURE                          VAL R24
      234 CAPTURE                          VAL R29
      235 SETTABLEKS                       R32 R31 K74 ["render"]
      237 MOVE                             R32 R8
      238 DUPTABLE                         R33 K79 [{"Localization", "Stylizer", "Mouse", "Plugin"}]
      239 GETTABLEKS                       R34 R7 K75 ["Localization"]
      241 SETTABLEKS                       R34 R33 K75 ["Localization"]
      243 GETTABLEKS                       R34 R7 K76 ["Stylizer"]
      245 SETTABLEKS                       R34 R33 K76 ["Stylizer"]
      247 GETTABLEKS                       R34 R7 K77 ["Mouse"]
      249 SETTABLEKS                       R34 R33 K77 ["Mouse"]
      251 GETTABLEKS                       R34 R7 K78 ["Plugin"]
      253 SETTABLEKS                       R34 R33 K78 ["Plugin"]
      255 CALL                             R32 1 1
      256 MOVE                             R33 R31
      257 CALL                             R32 1 1
      258 MOVE                             R31 R32
      259 CLOSEUPVALS                      R27
      260 RETURN                           R31 1
