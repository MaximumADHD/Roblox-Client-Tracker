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
       31 JUMPIFEQKS                       R8 K7 ["Model"] ; [+26]
       33 JUMPIFEQKS                       R8 K8 ["Accessory"] ; [+24]
       35 LOADK                            R11 K9 ["SetStateAndRefresh"]
       36 NEWTABLE                         R12 1 0
       38 NEWTABLE                         R13 0 1
       40 DUPTABLE                         R14 K15 [{["entryIndex"] = 1, ["groupKey"] = "Error", ["validationEnum"], ["severity"] = "Error"}]
       41 LOADK                            R15 K16 ["No asset types available for instance \"%*\" (%*)."]
       42 GETTABLEKS                       R17 R7 K17 ["Name"]
       44 MOVE                             R18 R8
       45 NAMECALL                         R15 R15 K18 ["format"]
       47 CALL                             R15 3 1
       48 SETTABLEKS                       R15 R14 K13 ["validationEnum"]
       50 SETLIST                          R13 R14 1 [1]
       52 SETTABLEKS                       R13 R12 K19 ["validationEntries"]
       54 NAMECALL                         R9 R2 K20 ["Invoke"]
       56 CALL                             R9 3 0
       57 RETURN                           R0 0
       58 FORGLOOP                         R3 2 ; [-30]
       60 NEWTABLE                         R3 0 0
       62 NEWTABLE                         R4 0 0
       64 GETUPVAL                         R5 0
       65 GETTABLEKS                       R5 R5 K0 ["props"]
       67 GETTABLEKS                       R5 R5 K21 ["bundleTypeItems"]
       69 MOVE                             R6 R1
       70 LOADNIL                          R7
       71 LOADNIL                          R8
       72 FORGPREP                         R6
       73 GETUPVAL                         R11 1
       74 MOVE                             R12 R5
       75 GETTABLEKS                       R13 R10 K6 ["ClassName"]
       77 CALL                             R11 2 1
       78 DUPTABLE                         R12 K22 [{"Name", "ClassName"}]
       79 GETTABLEKS                       R13 R10 K17 ["Name"]
       81 SETTABLEKS                       R13 R12 K17 ["Name"]
       83 GETTABLEKS                       R13 R10 K6 ["ClassName"]
       85 SETTABLEKS                       R13 R12 K6 ["ClassName"]
       87 SETTABLE                         R12 R3 R9
       88 GETTABLEN                        R12 R11 1
       89 GETTABLEKS                       R12 R12 K23 ["id"]
       91 SETTABLE                         R12 R4 R9
       92 FORGLOOP                         R6 2 ; [-20]
       94 GETUPVAL                         R6 0
       95 DUPTABLE                         R8 K28 [{["IsDialogOpen"] = True, ["DialogModels"], ["PendingAssetTypes"]}]
       96 SETTABLEKS                       R3 R8 K26 ["DialogModels"]
       98 SETTABLEKS                       R4 R8 K27 ["PendingAssetTypes"]
      100 NAMECALL                         R6 R6 K29 ["setState"]
      102 CALL                             R6 2 0
      103 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

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
       54 DUPTABLE                         R4 K18 [{["IsDialogOpen"] = False}]
       55 NAMECALL                         R2 R2 K19 ["setState"]
       57 CALL                             R2 2 0
       58 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["assetDMData"]
        4 JUMPIFNOT                        R1 ; [+6]
        5 GETTABLEKS                       R1 R0 K0 ["props"]
        7 GETTABLEKS                       R1 R1 K1 ["assetDMData"]
        9 GETTABLEKS                       R1 R1 K2 ["validationEntries"]
       11 DUPTABLE                         R2 K12 [{["Selection"], ["Expansion"], ["SortDirection"] = "descending", ["Items"], ["IsDialogOpen"] = False, ["DialogModels"], ["PendingAssetTypes"]}]
       12 NEWTABLE                         R3 0 0
       14 SETTABLEKS                       R3 R2 K3 ["Selection"]
       16 NEWTABLE                         R3 0 0
       18 SETTABLEKS                       R3 R2 K4 ["Expansion"]
       20 GETUPVAL                         R3 0
       21 MOVE                             R4 R1
       22 LOADK                            R5 K6 ["descending"]
       23 CALL                             R3 2 1
       24 SETTABLEKS                       R3 R2 K7 ["Items"]
       26 NEWTABLE                         R3 0 0
       28 SETTABLEKS                       R3 R2 K10 ["DialogModels"]
       30 NEWTABLE                         R3 0 0
       32 SETTABLEKS                       R3 R2 K11 ["PendingAssetTypes"]
       34 SETTABLEKS                       R2 R0 K13 ["state"]
       36 NEWCLOSURE                       R2 P0
       37 CAPTURE                          VAL R0
       38 CAPTURE                          UPVAL U0
       39 SETTABLEKS                       R2 R0 K14 ["toggleSortDirection"]
       41 NEWCLOSURE                       R2 P1
       42 CAPTURE                          VAL R0
       43 CAPTURE                          UPVAL U1
       44 SETTABLEKS                       R2 R0 K15 ["openDialog"]
       46 NEWCLOSURE                       R2 P2
       47 CAPTURE                          VAL R0
       48 SETTABLEKS                       R2 R0 K16 ["closeDialog"]
       50 NEWCLOSURE                       R2 P3
       51 CAPTURE                          VAL R0
       52 SETTABLEKS                       R2 R0 K17 ["cancelValidation"]
       54 NEWCLOSURE                       R2 P4
       55 CAPTURE                          VAL R0
       56 SETTABLEKS                       R2 R0 K18 ["makeAssetTypeChangedHandler"]
       58 NEWCLOSURE                       R2 P5
       59 CAPTURE                          VAL R0
       60 SETTABLEKS                       R2 R0 K19 ["submitValidation"]
       62 RETURN                           R0 0

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
       45 JUMPIFNOT                        R4 ; [+23]
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
       64 JUMPIF                           R5 ; [+4]
       65 DUPTABLE                         R7 K14 [{["IsDialogOpen"] = False}]
       66 NAMECALL                         R5 R0 K9 ["setState"]
       68 CALL                             R5 2 0
       69 RETURN                           R0 0

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
       39 JUMPIFNOT                        R2 ; [+25]
       40 DUPTABLE                         R7 K9 [{"LoadingSpinner"}]
       41 GETUPVAL                         R8 0
       42 GETTABLEKS                       R8 R8 K10 ["createElement"]
       44 GETUPVAL                         R9 1
       45 DUPTABLE                         R10 K13 [{["tag"] = "col align-x-center align-y-center size-full-full"}]
       46 DUPTABLE                         R11 K15 [{"Spinner"}]
       47 GETUPVAL                         R12 0
       48 GETTABLEKS                       R12 R12 K10 ["createElement"]
       50 GETUPVAL                         R13 2
       51 DUPTABLE                         R14 K17 [{"size"}]
       52 GETUPVAL                         R15 3
       53 GETTABLEKS                       R15 R15 K18 ["Large"]
       55 SETTABLEKS                       R15 R14 K16 ["size"]
       57 CALL                             R12 2 1
       58 SETTABLEKS                       R12 R11 K14 ["Spinner"]
       60 CALL                             R8 3 1
       61 SETTABLEKS                       R8 R7 K8 ["LoadingSpinner"]
       63 MOVE                             R6 R7
       64 JUMP                             ; [+199]
       65 JUMPIFNOT                        R5 ; [+44]
       66 DUPTABLE                         R7 K20 [{"SuccessState"}]
       67 GETUPVAL                         R8 0
       68 GETTABLEKS                       R8 R8 K10 ["createElement"]
       70 GETUPVAL                         R9 1
       71 DUPTABLE                         R10 K22 [{["tag"] = "col align-x-center align-y-center gap-small size-full-full"}]
       72 DUPTABLE                         R11 K25 [{"SuccessIcon", "SuccessText"}]
       73 GETUPVAL                         R12 0
       74 GETTABLEKS                       R12 R12 K10 ["createElement"]
       76 GETUPVAL                         R13 4
       77 DUPTABLE                         R14 K29 [{["name"] = "circle-check", ["size"], ["LayoutOrder"] = 0}]
       78 GETUPVAL                         R15 3
       79 GETTABLEKS                       R15 R15 K18 ["Large"]
       81 SETTABLEKS                       R15 R14 K16 ["size"]
       83 CALL                             R12 2 1
       84 SETTABLEKS                       R12 R11 K23 ["SuccessIcon"]
       86 GETUPVAL                         R12 0
       87 GETTABLEKS                       R12 R12 K10 ["createElement"]
       89 GETUPVAL                         R13 5
       90 DUPTABLE                         R14 K33 [{["tag"] = "text-body-small content-default", ["Text"], ["LayoutOrder"] = 1}]
       91 GETTABLEKS                       R15 R0 K0 ["props"]
       93 GETTABLEKS                       R15 R15 K34 ["Localization"]
       95 LOADK                            R17 K31 ["Text"]
       96 LOADK                            R18 K35 ["NoIssuesFound"]
       97 NAMECALL                         R15 R15 K36 ["getText"]
       99 CALL                             R15 3 1
      100 SETTABLEKS                       R15 R14 K31 ["Text"]
      102 CALL                             R12 2 1
      103 SETTABLEKS                       R12 R11 K24 ["SuccessText"]
      105 CALL                             R8 3 1
      106 SETTABLEKS                       R8 R7 K19 ["SuccessState"]
      108 MOVE                             R6 R7
      109 JUMP                             ; [+154]
      110 NEWTABLE                         R7 0 0
      112 LOADN                            R8 0
      113 GETTABLEKS                       R9 R0 K5 ["state"]
      115 GETTABLEKS                       R9 R9 K6 ["Items"]
      117 LOADNIL                          R10
      118 LOADNIL                          R11
      119 FORGPREP                         R9
      120 ADDK                             R8 R8 K32 [1]
      121 GETTABLEKS                       R16 R0 K5 ["state"]
      123 GETTABLEKS                       R16 R16 K37 ["Expansion"]
      125 GETTABLE                         R15 R16 R13
      126 JUMPIFEQKB                       R15 TRUE ; [+2]
      128 LOADB                            R14 0 +1
      129 LOADB                            R14 1
      130 GETTABLEKS                       R17 R0 K5 ["state"]
      132 GETTABLEKS                       R17 R17 K38 ["Selection"]
      134 GETTABLE                         R16 R17 R13
      135 JUMPIFEQKB                       R16 TRUE ; [+2]
      137 LOADB                            R15 0 +1
      138 LOADB                            R15 1
      139 LOADK                            R16 K39 ["root_%*"]
      140 MOVE                             R18 R8
      141 NAMECALL                         R16 R16 K40 ["format"]
      143 CALL                             R16 2 1
      144 GETUPVAL                         R17 0
      145 GETTABLEKS                       R17 R17 K10 ["createElement"]
      147 GETUPVAL                         R18 6
      148 DUPTABLE                         R19 K52 [{["Item"], ["Depth"] = 0, ["Index"], ["Children"], ["Expanded"], ["Selected"], ["Position"], ["Size"], ["localization"], ["OnToggle"], ["OnPress"]}]
      149 SETTABLEKS                       R13 R19 K41 ["Item"]
      151 SETTABLEKS                       R8 R19 K43 ["Index"]
      153 GETTABLEKS                       R20 R13 K53 ["children"]
      155 SETTABLEKS                       R20 R19 K44 ["Children"]
      157 SETTABLEKS                       R14 R19 K45 ["Expanded"]
      159 SETTABLEKS                       R15 R19 K46 ["Selected"]
      161 GETIMPORT                        R20 K56 [UDim2.new]
      163 CALL                             R20 0 1
      164 SETTABLEKS                       R20 R19 K47 ["Position"]
      166 GETIMPORT                        R20 K56 [UDim2.new]
      168 LOADN                            R21 1
      169 LOADN                            R22 0
      170 LOADN                            R23 0
      171 LOADN                            R24 0
      172 CALL                             R20 4 1
      173 SETTABLEKS                       R20 R19 K48 ["Size"]
      175 GETTABLEKS                       R20 R0 K0 ["props"]
      177 GETTABLEKS                       R20 R20 K34 ["Localization"]
      179 SETTABLEKS                       R20 R19 K49 ["localization"]
      181 NEWCLOSURE                       R20 P0
      182 CAPTURE                          VAL R0
      183 CAPTURE                          UPVAL U7
      184 CAPTURE                          VAL R13
      185 SETTABLEKS                       R20 R19 K50 ["OnToggle"]
      187 NEWCLOSURE                       R20 P1
      188 CAPTURE                          VAL R0
      189 CAPTURE                          VAL R13
      190 SETTABLEKS                       R20 R19 K51 ["OnPress"]
      192 CALL                             R17 2 1
      193 SETTABLE                         R17 R7 R16
      194 JUMPIFNOT                        R14 ; [+66]
      195 GETTABLEKS                       R16 R13 K53 ["children"]
      197 JUMPIFNOT                        R16 ; [+63]
      198 GETTABLEKS                       R16 R13 K53 ["children"]
      200 LOADNIL                          R17
      201 LOADNIL                          R18
      202 FORGPREP                         R16
      203 ADDK                             R8 R8 K32 [1]
      204 GETTABLEKS                       R23 R0 K5 ["state"]
      206 GETTABLEKS                       R23 R23 K38 ["Selection"]
      208 GETTABLE                         R22 R23 R20
      209 JUMPIFEQKB                       R22 TRUE ; [+2]
      211 LOADB                            R21 0 +1
      212 LOADB                            R21 1
      213 LOADK                            R22 K57 ["child_%*"]
      214 MOVE                             R24 R8
      215 NAMECALL                         R22 R22 K40 ["format"]
      217 CALL                             R22 2 1
      218 GETUPVAL                         R23 0
      219 GETTABLEKS                       R23 R23 K10 ["createElement"]
      221 GETUPVAL                         R24 6
      222 DUPTABLE                         R25 K60 [{["Item"], ["Depth"] = 1, ["Index"], ["Children"] = , ["Expanded"] = False, ["Selected"], ["Position"], ["Size"], ["localization"], ["OnToggle"], ["OnPress"]}]
      223 SETTABLEKS                       R20 R25 K41 ["Item"]
      225 SETTABLEKS                       R8 R25 K43 ["Index"]
      227 SETTABLEKS                       R21 R25 K46 ["Selected"]
      229 GETIMPORT                        R26 K56 [UDim2.new]
      231 CALL                             R26 0 1
      232 SETTABLEKS                       R26 R25 K47 ["Position"]
      234 GETIMPORT                        R26 K56 [UDim2.new]
      236 LOADN                            R27 1
      237 LOADN                            R28 0
      238 LOADN                            R29 0
      239 LOADN                            R30 0
      240 CALL                             R26 4 1
      241 SETTABLEKS                       R26 R25 K48 ["Size"]
      243 GETTABLEKS                       R26 R0 K0 ["props"]
      245 GETTABLEKS                       R26 R26 K34 ["Localization"]
      247 SETTABLEKS                       R26 R25 K49 ["localization"]
      249 DUPCLOSURE                       R26 K61 [PROTO_17]
      250 SETTABLEKS                       R26 R25 K50 ["OnToggle"]
      252 NEWCLOSURE                       R26 P3
      253 CAPTURE                          VAL R0
      254 CAPTURE                          VAL R20
      255 SETTABLEKS                       R26 R25 K51 ["OnPress"]
      257 CALL                             R23 2 1
      258 SETTABLE                         R23 R7 R22
      259 FORGLOOP                         R16 2 ; [-57]
      261 FORGLOOP                         R9 2 ; [-142]
      263 MOVE                             R6 R7
      264 GETUPVAL                         R7 0
      265 GETTABLEKS                       R7 R7 K10 ["createElement"]
      267 GETUPVAL                         R8 1
      268 DUPTABLE                         R9 K63 [{["tag"] = "col align-x-center align-y-top size-full-full bg-surface-200"}]
      269 DUPTABLE                         R10 K70 [{"MainHeaderRow", "HeaderDivider", "MainScrollView", "FooterDivider", "FooterButtons", "AssetTypeDialogWidget"}]
      270 GETUPVAL                         R11 0
      271 GETTABLEKS                       R11 R11 K10 ["createElement"]
      273 GETUPVAL                         R12 8
      274 DUPTABLE                         R13 K75 [{["instanceName"], ["instanceClassName"], ["sortDirection"], ["onToggleSort"], ["LayoutOrder"] = 0}]
      275 JUMPIFNOT                        R1 ; [+3]
      276 GETTABLEKS                       R14 R1 K76 ["Name"]
      278 JUMPIF                           R14 ; [+1]
      279 LOADNIL                          R14
      280 SETTABLEKS                       R14 R13 K71 ["instanceName"]
      282 JUMPIFNOT                        R1 ; [+3]
      283 GETTABLEKS                       R14 R1 K77 ["ClassName"]
      285 JUMPIF                           R14 ; [+1]
      286 LOADNIL                          R14
      287 SETTABLEKS                       R14 R13 K72 ["instanceClassName"]
      289 GETTABLEKS                       R14 R0 K5 ["state"]
      291 GETTABLEKS                       R14 R14 K78 ["SortDirection"]
      293 SETTABLEKS                       R14 R13 K73 ["sortDirection"]
      295 GETTABLEKS                       R14 R0 K79 ["toggleSortDirection"]
      297 SETTABLEKS                       R14 R13 K74 ["onToggleSort"]
      299 CALL                             R11 2 1
      300 SETTABLEKS                       R11 R10 K64 ["MainHeaderRow"]
      302 GETUPVAL                         R11 0
      303 GETTABLEKS                       R11 R11 K10 ["createElement"]
      305 GETUPVAL                         R12 9
      306 DUPTABLE                         R13 K82 [{["variant"], ["orientation"], ["LayoutOrder"] = 1}]
      307 GETUPVAL                         R14 10
      308 GETTABLEKS                       R14 R14 K83 ["Default"]
      310 SETTABLEKS                       R14 R13 K80 ["variant"]
      312 GETUPVAL                         R14 11
      313 GETTABLEKS                       R14 R14 K84 ["Horizontal"]
      315 SETTABLEKS                       R14 R13 K81 ["orientation"]
      317 CALL                             R11 2 1
      318 SETTABLEKS                       R11 R10 K65 ["HeaderDivider"]
      320 GETUPVAL                         R11 0
      321 GETTABLEKS                       R11 R11 K10 ["createElement"]
      323 GETUPVAL                         R12 12
      324 DUPTABLE                         R13 K91 [{["Size"], ["tag"] = "grow", ["fillBehavior"], ["layout"], ["selection"], ["scroll"], ["LayoutOrder"] = 2}]
      325 GETIMPORT                        R14 K56 [UDim2.new]
      327 LOADN                            R15 1
      328 LOADN                            R16 0
      329 LOADN                            R17 0
      330 LOADN                            R18 0
      331 CALL                             R14 4 1
      332 SETTABLEKS                       R14 R13 K48 ["Size"]
      334 GETUPVAL                         R14 13
      335 GETTABLEKS                       R14 R14 K92 ["Fill"]
      337 SETTABLEKS                       R14 R13 K86 ["fillBehavior"]
      339 DUPTABLE                         R14 K94 [{"FillDirection"}]
      340 GETIMPORT                        R15 K97 [Enum.FillDirection.Vertical]
      342 SETTABLEKS                       R15 R14 K93 ["FillDirection"]
      344 SETTABLEKS                       R14 R13 K87 ["layout"]
      346 DUPTABLE                         R14 K100 [{["Selectable"] = True}]
      347 SETTABLEKS                       R14 R13 K88 ["selection"]
      349 DUPTABLE                         R14 K105 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection", "scrollBarVisibility"}]
      350 GETIMPORT                        R15 K108 [Enum.AutomaticSize.Y]
      352 SETTABLEKS                       R15 R14 K101 ["AutomaticCanvasSize"]
      354 GETIMPORT                        R15 K110 [UDim2.fromOffset]
      356 LOADN                            R16 0
      357 LOADN                            R17 0
      358 CALL                             R15 2 1
      359 SETTABLEKS                       R15 R14 K102 ["CanvasSize"]
      361 GETIMPORT                        R15 K111 [Enum.ScrollingDirection.Y]
      363 SETTABLEKS                       R15 R14 K103 ["ScrollingDirection"]
      365 GETUPVAL                         R15 14
      366 GETTABLEKS                       R15 R15 K112 ["Auto"]
      368 SETTABLEKS                       R15 R14 K104 ["scrollBarVisibility"]
      370 SETTABLEKS                       R14 R13 K89 ["scroll"]
      372 MOVE                             R14 R6
      373 CALL                             R11 3 1
      374 SETTABLEKS                       R11 R10 K66 ["MainScrollView"]
      376 GETUPVAL                         R11 0
      377 GETTABLEKS                       R11 R11 K10 ["createElement"]
      379 GETUPVAL                         R12 9
      380 DUPTABLE                         R13 K114 [{["variant"], ["orientation"], ["LayoutOrder"] = 3}]
      381 GETUPVAL                         R14 10
      382 GETTABLEKS                       R14 R14 K83 ["Default"]
      384 SETTABLEKS                       R14 R13 K80 ["variant"]
      386 GETUPVAL                         R14 11
      387 GETTABLEKS                       R14 R14 K84 ["Horizontal"]
      389 SETTABLEKS                       R14 R13 K81 ["orientation"]
      391 CALL                             R11 2 1
      392 SETTABLEKS                       R11 R10 K67 ["FooterDivider"]
      394 GETUPVAL                         R11 0
      395 GETTABLEKS                       R11 R11 K10 ["createElement"]
      397 GETUPVAL                         R12 1
      398 DUPTABLE                         R13 K117 [{["tag"] = "row gap-small size-full-0 auto-y padding-x-medium padding-y-small", ["LayoutOrder"] = 4}]
      399 DUPTABLE                         R14 K120 [{"RunValidationButton", "CancelButton"}]
      400 GETUPVAL                         R15 0
      401 GETTABLEKS                       R15 R15 K10 ["createElement"]
      403 GETUPVAL                         R16 15
      404 DUPTABLE                         R17 K128 [{["text"], ["variant"], ["testId"] = "aqv-run-validation", ["onActivated"], ["isDisabled"], ["size"], ["height"], ["width"], ["fillBehavior"], ["LayoutOrder"] = 0}]
      405 GETTABLEKS                       R18 R0 K0 ["props"]
      407 GETTABLEKS                       R18 R18 K34 ["Localization"]
      409 LOADK                            R20 K31 ["Text"]
      410 LOADK                            R21 K129 ["RunValidation"]
      411 NAMECALL                         R18 R18 K36 ["getText"]
      413 CALL                             R18 3 1
      414 SETTABLEKS                       R18 R17 K121 ["text"]
      416 GETUPVAL                         R18 16
      417 GETTABLEKS                       R18 R18 K130 ["Emphasis"]
      419 SETTABLEKS                       R18 R17 K80 ["variant"]
      421 JUMPIFNOT                        R2 ; [+2]
      422 LOADNIL                          R18
      423 JUMP                             ; [+2]
      424 GETTABLEKS                       R18 R0 K131 ["openDialog"]
      426 SETTABLEKS                       R18 R17 K124 ["onActivated"]
      428 SETTABLEKS                       R2 R17 K125 ["isDisabled"]
      430 GETUPVAL                         R18 17
      431 GETTABLEKS                       R18 R18 K132 ["Small"]
      433 SETTABLEKS                       R18 R17 K16 ["size"]
      435 GETIMPORT                        R18 K134 [UDim.new]
      437 LOADN                            R19 0
      438 LOADN                            R20 20
      439 CALL                             R18 2 1
      440 SETTABLEKS                       R18 R17 K126 ["height"]
      442 GETIMPORT                        R18 K134 [UDim.new]
      444 LOADN                            R19 1
      445 LOADN                            R20 0
      446 CALL                             R18 2 1
      447 SETTABLEKS                       R18 R17 K127 ["width"]
      449 GETUPVAL                         R18 13
      450 GETTABLEKS                       R18 R18 K135 ["Fit"]
      452 SETTABLEKS                       R18 R17 K86 ["fillBehavior"]
      454 CALL                             R15 2 1
      455 SETTABLEKS                       R15 R14 K118 ["RunValidationButton"]
      457 JUMPIFNOT                        R2 ; [+51]
      458 GETUPVAL                         R15 0
      459 GETTABLEKS                       R15 R15 K10 ["createElement"]
      461 GETUPVAL                         R16 15
      462 DUPTABLE                         R17 K137 [{["text"], ["variant"], ["testId"] = "aqv-cancel-validation", ["onActivated"], ["size"], ["height"], ["width"], ["fillBehavior"], ["LayoutOrder"] = 1}]
      463 GETTABLEKS                       R18 R0 K0 ["props"]
      465 GETTABLEKS                       R18 R18 K34 ["Localization"]
      467 LOADK                            R20 K31 ["Text"]
      468 LOADK                            R21 K138 ["Cancel"]
      469 NAMECALL                         R18 R18 K36 ["getText"]
      471 CALL                             R18 3 1
      472 SETTABLEKS                       R18 R17 K121 ["text"]
      474 GETUPVAL                         R18 16
      475 GETTABLEKS                       R18 R18 K139 ["Standard"]
      477 SETTABLEKS                       R18 R17 K80 ["variant"]
      479 GETTABLEKS                       R18 R0 K140 ["cancelValidation"]
      481 SETTABLEKS                       R18 R17 K124 ["onActivated"]
      483 GETUPVAL                         R18 17
      484 GETTABLEKS                       R18 R18 K132 ["Small"]
      486 SETTABLEKS                       R18 R17 K16 ["size"]
      488 GETIMPORT                        R18 K134 [UDim.new]
      490 LOADN                            R19 0
      491 LOADN                            R20 20
      492 CALL                             R18 2 1
      493 SETTABLEKS                       R18 R17 K126 ["height"]
      495 GETIMPORT                        R18 K134 [UDim.new]
      497 LOADN                            R19 0
      498 LOADN                            R20 80
      499 CALL                             R18 2 1
      500 SETTABLEKS                       R18 R17 K127 ["width"]
      502 GETUPVAL                         R18 13
      503 GETTABLEKS                       R18 R18 K135 ["Fit"]
      505 SETTABLEKS                       R18 R17 K86 ["fillBehavior"]
      507 CALL                             R15 2 1
      508 JUMP                             ; [+1]
      509 LOADNIL                          R15
      510 SETTABLEKS                       R15 R14 K119 ["CancelButton"]
      512 CALL                             R11 3 1
      513 SETTABLEKS                       R11 R10 K68 ["FooterButtons"]
      515 GETUPVAL                         R11 0
      516 GETTABLEKS                       R11 R11 K10 ["createElement"]
      518 GETUPVAL                         R12 18
      519 DUPTABLE                         R13 K151 [{["visible"], ["models"], ["pendingAssetTypes"], ["bundleTypeItems"], ["buildDropdownItems"], ["onAssetTypeChanged"], ["onSubmit"], ["onCancel"], ["inline"], ["LayoutOrder"] = 5}]
      520 GETTABLEKS                       R14 R0 K5 ["state"]
      522 GETTABLEKS                       R14 R14 K152 ["IsDialogOpen"]
      524 SETTABLEKS                       R14 R13 K141 ["visible"]
      526 GETTABLEKS                       R14 R0 K5 ["state"]
      528 GETTABLEKS                       R14 R14 K153 ["DialogModels"]
      530 SETTABLEKS                       R14 R13 K142 ["models"]
      532 GETTABLEKS                       R14 R0 K5 ["state"]
      534 GETTABLEKS                       R14 R14 K154 ["PendingAssetTypes"]
      536 SETTABLEKS                       R14 R13 K143 ["pendingAssetTypes"]
      538 GETTABLEKS                       R14 R0 K0 ["props"]
      540 GETTABLEKS                       R14 R14 K144 ["bundleTypeItems"]
      542 SETTABLEKS                       R14 R13 K144 ["bundleTypeItems"]
      544 GETUPVAL                         R14 19
      545 SETTABLEKS                       R14 R13 K145 ["buildDropdownItems"]
      547 GETTABLEKS                       R14 R0 K155 ["makeAssetTypeChangedHandler"]
      549 SETTABLEKS                       R14 R13 K146 ["onAssetTypeChanged"]
      551 GETTABLEKS                       R14 R0 K156 ["submitValidation"]
      553 SETTABLEKS                       R14 R13 K147 ["onSubmit"]
      555 GETTABLEKS                       R14 R0 K157 ["closeDialog"]
      557 SETTABLEKS                       R14 R13 K148 ["onCancel"]
      559 GETTABLEKS                       R14 R0 K0 ["props"]
      561 GETTABLEKS                       R14 R14 K158 ["dialogInline"]
      563 SETTABLEKS                       R14 R13 K149 ["inline"]
      565 CALL                             R11 2 1
      566 SETTABLEKS                       R11 R10 K69 ["AssetTypeDialogWidget"]
      568 CALL                             R7 3 -1
      569 RETURN                           R7 -1

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
      149 LOADN                            R37 -9
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
      178 DUPTABLE                         R29 K63 [{["id"] = "bundle:Body", ["text"] = "Body"}]
      179 DUPTABLE                         R30 K66 [{["id"] = "bundle:DynamicHead", ["text"] = "DynamicHead"}]
      180 SETLIST                          R28 R29 2 [1]
      182 NEWCLOSURE                       R29 P1
      183 CAPTURE                          VAL R28
      184 CAPTURE                          REF R27
      185 DUPCLOSURE                       R30 K67 [PROTO_3]
      186 GETTABLEKS                       R31 R2 K68 ["PureComponent"]
      188 LOADK                            R33 K69 ["ValidationPanel"]
      189 NAMECALL                         R31 R31 K70 ["extend"]
      191 CALL                             R31 2 1
      192 DUPCLOSURE                       R32 K71 [PROTO_12]
      193 CAPTURE                          VAL R25
      194 CAPTURE                          VAL R29
      195 SETTABLEKS                       R32 R31 K72 ["init"]
      197 DUPCLOSURE                       R32 K73 [PROTO_13]
      198 CAPTURE                          VAL R25
      199 CAPTURE                          VAL R30
      200 SETTABLEKS                       R32 R31 K74 ["didUpdate"]
      202 DUPCLOSURE                       R32 K75 [PROTO_19]
      203 CAPTURE                          VAL R2
      204 CAPTURE                          VAL R9
      205 CAPTURE                          VAL R13
      206 CAPTURE                          VAL R17
      207 CAPTURE                          VAL R11
      208 CAPTURE                          VAL R10
      209 CAPTURE                          VAL R26
      210 CAPTURE                          VAL R6
      211 CAPTURE                          VAL R23
      212 CAPTURE                          VAL R20
      213 CAPTURE                          VAL R21
      214 CAPTURE                          VAL R22
      215 CAPTURE                          VAL R14
      216 CAPTURE                          VAL R18
      217 CAPTURE                          VAL R19
      218 CAPTURE                          VAL R12
      219 CAPTURE                          VAL R15
      220 CAPTURE                          VAL R16
      221 CAPTURE                          VAL R24
      222 CAPTURE                          VAL R29
      223 SETTABLEKS                       R32 R31 K76 ["render"]
      225 MOVE                             R32 R8
      226 DUPTABLE                         R33 K81 [{"Localization", "Stylizer", "Mouse", "Plugin"}]
      227 GETTABLEKS                       R34 R7 K77 ["Localization"]
      229 SETTABLEKS                       R34 R33 K77 ["Localization"]
      231 GETTABLEKS                       R34 R7 K78 ["Stylizer"]
      233 SETTABLEKS                       R34 R33 K78 ["Stylizer"]
      235 GETTABLEKS                       R34 R7 K79 ["Mouse"]
      237 SETTABLEKS                       R34 R33 K79 ["Mouse"]
      239 GETTABLEKS                       R34 R7 K80 ["Plugin"]
      241 SETTABLEKS                       R34 R33 K80 ["Plugin"]
      243 CALL                             R32 1 1
      244 MOVE                             R33 R31
      245 CALL                             R32 1 1
      246 MOVE                             R31 R32
      247 CLOSEUPVALS                      R27
      248 RETURN                           R31 1
