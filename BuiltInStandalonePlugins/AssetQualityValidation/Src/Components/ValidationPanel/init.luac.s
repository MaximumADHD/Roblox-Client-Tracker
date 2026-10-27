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
       64 GETUPVAL                         R5 1
       65 GETTABLEKS                       R5 R5 K21 ["getFFlagAQVFollowup"]
       67 CALL                             R5 0 1
       68 MOVE                             R6 R1
       69 LOADNIL                          R7
       70 LOADNIL                          R8
       71 FORGPREP                         R6
       72 DUPTABLE                         R11 K23 [{"Name", "ClassName", "IsLayered"}]
       73 GETTABLEKS                       R12 R10 K17 ["Name"]
       75 SETTABLEKS                       R12 R11 K17 ["Name"]
       77 GETTABLEKS                       R12 R10 K6 ["ClassName"]
       79 SETTABLEKS                       R12 R11 K6 ["ClassName"]
       81 GETTABLEKS                       R12 R10 K22 ["IsLayered"]
       83 SETTABLEKS                       R12 R11 K22 ["IsLayered"]
       85 SETTABLE                         R11 R3 R9
       86 JUMPIF                           R5 ; [+13]
       87 GETUPVAL                         R12 2
       88 GETUPVAL                         R13 0
       89 GETTABLEKS                       R13 R13 K0 ["props"]
       91 GETTABLEKS                       R13 R13 K24 ["bundleTypeItems"]
       93 GETTABLEKS                       R14 R10 K6 ["ClassName"]
       95 CALL                             R12 2 1
       96 GETTABLEN                        R11 R12 1
       97 GETTABLEKS                       R11 R11 K25 ["id"]
       99 SETTABLE                         R11 R4 R9
      100 FORGLOOP                         R6 2 ; [-29]
      102 GETUPVAL                         R6 0
      103 DUPTABLE                         R8 K30 [{["IsDialogOpen"] = True, ["DialogModels"], ["PendingAssetTypes"]}]
      104 SETTABLEKS                       R3 R8 K28 ["DialogModels"]
      106 SETTABLEKS                       R4 R8 K29 ["PendingAssetTypes"]
      108 NAMECALL                         R6 R6 K31 ["setState"]
      110 CALL                             R6 2 0
      111 RETURN                           R0 0

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
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIF                           R1 ; [+5]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 GETUPVAL                         R2 0
        7 SETTABLE                         R1 R2 R0
        8 RETURN                           R1 1

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
       18 GETUPVAL                         R8 0
       19 GETTABLEKS                       R8 R8 K3 ["state"]
       21 GETTABLEKS                       R8 R8 K5 ["PendingAssetTypes"]
       23 GETTABLE                         R7 R8 R5
       24 GETUPVAL                         R8 1
       25 GETTABLEKS                       R8 R8 K6 ["getFFlagAQVFollowup"]
       27 CALL                             R8 0 1
       28 JUMPIF                           R8 ; [+1]
       29 ORK                              R7 R7 K7 ["bundle:Body"]
       30 JUMPIFNOTEQKNIL                  R7 ; [+2]
       32 RETURN                           R0 0
       33 DUPTABLE                         R8 K11 [{"Name", "ClassName", "assetTypeId"}]
       34 GETTABLEKS                       R9 R6 K8 ["Name"]
       36 SETTABLEKS                       R9 R8 K8 ["Name"]
       38 GETTABLEKS                       R9 R6 K9 ["ClassName"]
       40 SETTABLEKS                       R9 R8 K9 ["ClassName"]
       42 SETTABLEKS                       R7 R8 K10 ["assetTypeId"]
       44 SETTABLE                         R8 R1 R5
       45 FORGLOOP                         R2 2 ; [-28]
       47 LOADK                            R4 K12 ["RunValidation"]
       48 DUPTABLE                         R5 K15 [{"models", "allowedBundleTypeSettings"}]
       49 SETTABLEKS                       R1 R5 K13 ["models"]
       51 GETUPVAL                         R6 0
       52 GETTABLEKS                       R6 R6 K0 ["props"]
       54 GETTABLEKS                       R6 R6 K14 ["allowedBundleTypeSettings"]
       56 SETTABLEKS                       R6 R5 K14 ["allowedBundleTypeSettings"]
       58 NAMECALL                         R2 R0 K16 ["Invoke"]
       60 CALL                             R2 3 0
       61 GETUPVAL                         R2 0
       62 DUPTABLE                         R4 K19 [{["IsDialogOpen"] = False}]
       63 NAMECALL                         R2 R2 K20 ["setState"]
       65 CALL                             R2 2 0
       66 RETURN                           R0 0

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
       44 CAPTURE                          UPVAL U2
       45 SETTABLEKS                       R2 R0 K15 ["openDialog"]
       47 NEWCLOSURE                       R2 P2
       48 CAPTURE                          VAL R0
       49 SETTABLEKS                       R2 R0 K16 ["closeDialog"]
       51 NEWCLOSURE                       R2 P3
       52 CAPTURE                          VAL R0
       53 SETTABLEKS                       R2 R0 K17 ["cancelValidation"]
       55 NEWTABLE                         R2 0 0
       57 NEWCLOSURE                       R3 P4
       58 CAPTURE                          VAL R2
       59 CAPTURE                          VAL R0
       60 SETTABLEKS                       R3 R0 K18 ["makeAssetTypeChangedHandler"]
       62 NEWCLOSURE                       R3 P5
       63 CAPTURE                          VAL R0
       64 CAPTURE                          UPVAL U1
       65 SETTABLEKS                       R3 R0 K19 ["submitValidation"]
       67 RETURN                           R0 0

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
       38 GETUPVAL                         R6 0
       39 GETTABLEKS                       R6 R6 K8 ["getFFlagAQVFollowup"]
       41 CALL                             R6 0 1
       42 JUMPIFNOT                        R6 ; [+4]
       43 GETUPVAL                         R7 1
       44 GETTABLEKS                       R7 R7 K9 ["XSmall"]
       46 JUMP                             ; [+3]
       47 GETUPVAL                         R7 1
       48 GETTABLEKS                       R7 R7 K10 ["Small"]
       50 JUMPIFNOT                        R6 ; [+2]
       51 LOADNIL                          R8
       52 JUMP                             ; [+5]
       53 GETIMPORT                        R8 K13 [UDim.new]
       55 LOADN                            R9 0
       56 LOADN                            R10 20
       57 CALL                             R8 2 1
       58 LOADNIL                          R9
       59 JUMPIFNOT                        R2 ; [+25]
       60 DUPTABLE                         R10 K15 [{"LoadingSpinner"}]
       61 GETUPVAL                         R11 2
       62 GETTABLEKS                       R11 R11 K16 ["createElement"]
       64 GETUPVAL                         R12 3
       65 DUPTABLE                         R13 K19 [{["tag"] = "col align-x-center align-y-center size-full-full"}]
       66 DUPTABLE                         R14 K21 [{"Spinner"}]
       67 GETUPVAL                         R15 2
       68 GETTABLEKS                       R15 R15 K16 ["createElement"]
       70 GETUPVAL                         R16 4
       71 DUPTABLE                         R17 K23 [{"size"}]
       72 GETUPVAL                         R18 5
       73 GETTABLEKS                       R18 R18 K24 ["Large"]
       75 SETTABLEKS                       R18 R17 K22 ["size"]
       77 CALL                             R15 2 1
       78 SETTABLEKS                       R15 R14 K20 ["Spinner"]
       80 CALL                             R11 3 1
       81 SETTABLEKS                       R11 R10 K14 ["LoadingSpinner"]
       83 MOVE                             R9 R10
       84 JUMP                             ; [+199]
       85 JUMPIFNOT                        R5 ; [+44]
       86 DUPTABLE                         R10 K26 [{"SuccessState"}]
       87 GETUPVAL                         R11 2
       88 GETTABLEKS                       R11 R11 K16 ["createElement"]
       90 GETUPVAL                         R12 3
       91 DUPTABLE                         R13 K28 [{["tag"] = "col align-x-center align-y-center gap-small size-full-full"}]
       92 DUPTABLE                         R14 K31 [{"SuccessIcon", "SuccessText"}]
       93 GETUPVAL                         R15 2
       94 GETTABLEKS                       R15 R15 K16 ["createElement"]
       96 GETUPVAL                         R16 6
       97 DUPTABLE                         R17 K35 [{["name"] = "circle-check", ["size"], ["LayoutOrder"] = 0}]
       98 GETUPVAL                         R18 5
       99 GETTABLEKS                       R18 R18 K24 ["Large"]
      101 SETTABLEKS                       R18 R17 K22 ["size"]
      103 CALL                             R15 2 1
      104 SETTABLEKS                       R15 R14 K29 ["SuccessIcon"]
      106 GETUPVAL                         R15 2
      107 GETTABLEKS                       R15 R15 K16 ["createElement"]
      109 GETUPVAL                         R16 7
      110 DUPTABLE                         R17 K39 [{["tag"] = "text-body-small content-default", ["Text"], ["LayoutOrder"] = 1}]
      111 GETTABLEKS                       R18 R0 K0 ["props"]
      113 GETTABLEKS                       R18 R18 K40 ["Localization"]
      115 LOADK                            R20 K37 ["Text"]
      116 LOADK                            R21 K41 ["NoIssuesFound"]
      117 NAMECALL                         R18 R18 K42 ["getText"]
      119 CALL                             R18 3 1
      120 SETTABLEKS                       R18 R17 K37 ["Text"]
      122 CALL                             R15 2 1
      123 SETTABLEKS                       R15 R14 K30 ["SuccessText"]
      125 CALL                             R11 3 1
      126 SETTABLEKS                       R11 R10 K25 ["SuccessState"]
      128 MOVE                             R9 R10
      129 JUMP                             ; [+154]
      130 NEWTABLE                         R10 0 0
      132 LOADN                            R11 0
      133 GETTABLEKS                       R12 R0 K5 ["state"]
      135 GETTABLEKS                       R12 R12 K6 ["Items"]
      137 LOADNIL                          R13
      138 LOADNIL                          R14
      139 FORGPREP                         R12
      140 ADDK                             R11 R11 K38 [1]
      141 GETTABLEKS                       R19 R0 K5 ["state"]
      143 GETTABLEKS                       R19 R19 K43 ["Expansion"]
      145 GETTABLE                         R18 R19 R16
      146 JUMPIFEQKB                       R18 TRUE ; [+2]
      148 LOADB                            R17 0 +1
      149 LOADB                            R17 1
      150 GETTABLEKS                       R20 R0 K5 ["state"]
      152 GETTABLEKS                       R20 R20 K44 ["Selection"]
      154 GETTABLE                         R19 R20 R16
      155 JUMPIFEQKB                       R19 TRUE ; [+2]
      157 LOADB                            R18 0 +1
      158 LOADB                            R18 1
      159 LOADK                            R19 K45 ["root_%*"]
      160 MOVE                             R21 R11
      161 NAMECALL                         R19 R19 K46 ["format"]
      163 CALL                             R19 2 1
      164 GETUPVAL                         R20 2
      165 GETTABLEKS                       R20 R20 K16 ["createElement"]
      167 GETUPVAL                         R21 8
      168 DUPTABLE                         R22 K58 [{["Item"], ["Depth"] = 0, ["Index"], ["Children"], ["Expanded"], ["Selected"], ["Position"], ["Size"], ["localization"], ["OnToggle"], ["OnPress"]}]
      169 SETTABLEKS                       R16 R22 K47 ["Item"]
      171 SETTABLEKS                       R11 R22 K49 ["Index"]
      173 GETTABLEKS                       R23 R16 K59 ["children"]
      175 SETTABLEKS                       R23 R22 K50 ["Children"]
      177 SETTABLEKS                       R17 R22 K51 ["Expanded"]
      179 SETTABLEKS                       R18 R22 K52 ["Selected"]
      181 GETIMPORT                        R23 K61 [UDim2.new]
      183 CALL                             R23 0 1
      184 SETTABLEKS                       R23 R22 K53 ["Position"]
      186 GETIMPORT                        R23 K61 [UDim2.new]
      188 LOADN                            R24 1
      189 LOADN                            R25 0
      190 LOADN                            R26 0
      191 LOADN                            R27 0
      192 CALL                             R23 4 1
      193 SETTABLEKS                       R23 R22 K54 ["Size"]
      195 GETTABLEKS                       R23 R0 K0 ["props"]
      197 GETTABLEKS                       R23 R23 K40 ["Localization"]
      199 SETTABLEKS                       R23 R22 K55 ["localization"]
      201 NEWCLOSURE                       R23 P0
      202 CAPTURE                          VAL R0
      203 CAPTURE                          UPVAL U9
      204 CAPTURE                          VAL R16
      205 SETTABLEKS                       R23 R22 K56 ["OnToggle"]
      207 NEWCLOSURE                       R23 P1
      208 CAPTURE                          VAL R0
      209 CAPTURE                          VAL R16
      210 SETTABLEKS                       R23 R22 K57 ["OnPress"]
      212 CALL                             R20 2 1
      213 SETTABLE                         R20 R10 R19
      214 JUMPIFNOT                        R17 ; [+66]
      215 GETTABLEKS                       R19 R16 K59 ["children"]
      217 JUMPIFNOT                        R19 ; [+63]
      218 GETTABLEKS                       R19 R16 K59 ["children"]
      220 LOADNIL                          R20
      221 LOADNIL                          R21
      222 FORGPREP                         R19
      223 ADDK                             R11 R11 K38 [1]
      224 GETTABLEKS                       R26 R0 K5 ["state"]
      226 GETTABLEKS                       R26 R26 K44 ["Selection"]
      228 GETTABLE                         R25 R26 R23
      229 JUMPIFEQKB                       R25 TRUE ; [+2]
      231 LOADB                            R24 0 +1
      232 LOADB                            R24 1
      233 LOADK                            R25 K62 ["child_%*"]
      234 MOVE                             R27 R11
      235 NAMECALL                         R25 R25 K46 ["format"]
      237 CALL                             R25 2 1
      238 GETUPVAL                         R26 2
      239 GETTABLEKS                       R26 R26 K16 ["createElement"]
      241 GETUPVAL                         R27 8
      242 DUPTABLE                         R28 K65 [{["Item"], ["Depth"] = 1, ["Index"], ["Children"] = , ["Expanded"] = False, ["Selected"], ["Position"], ["Size"], ["localization"], ["OnToggle"], ["OnPress"]}]
      243 SETTABLEKS                       R23 R28 K47 ["Item"]
      245 SETTABLEKS                       R11 R28 K49 ["Index"]
      247 SETTABLEKS                       R24 R28 K52 ["Selected"]
      249 GETIMPORT                        R29 K61 [UDim2.new]
      251 CALL                             R29 0 1
      252 SETTABLEKS                       R29 R28 K53 ["Position"]
      254 GETIMPORT                        R29 K61 [UDim2.new]
      256 LOADN                            R30 1
      257 LOADN                            R31 0
      258 LOADN                            R32 0
      259 LOADN                            R33 0
      260 CALL                             R29 4 1
      261 SETTABLEKS                       R29 R28 K54 ["Size"]
      263 GETTABLEKS                       R29 R0 K0 ["props"]
      265 GETTABLEKS                       R29 R29 K40 ["Localization"]
      267 SETTABLEKS                       R29 R28 K55 ["localization"]
      269 DUPCLOSURE                       R29 K66 [PROTO_17]
      270 SETTABLEKS                       R29 R28 K56 ["OnToggle"]
      272 NEWCLOSURE                       R29 P3
      273 CAPTURE                          VAL R0
      274 CAPTURE                          VAL R23
      275 SETTABLEKS                       R29 R28 K57 ["OnPress"]
      277 CALL                             R26 2 1
      278 SETTABLE                         R26 R10 R25
      279 FORGLOOP                         R19 2 ; [-57]
      281 FORGLOOP                         R12 2 ; [-142]
      283 MOVE                             R9 R10
      284 GETUPVAL                         R10 2
      285 GETTABLEKS                       R10 R10 K16 ["createElement"]
      287 GETUPVAL                         R11 3
      288 DUPTABLE                         R12 K68 [{["tag"] = "col align-x-center align-y-top size-full-full bg-surface-200"}]
      289 DUPTABLE                         R13 K76 [{"MainHeaderRow", "HeaderDivider", "MainScrollView", "FooterDivider", "FooterButtons", "AssetTypeDialog", "AssetTypeDialogWidget"}]
      290 GETUPVAL                         R14 2
      291 GETTABLEKS                       R14 R14 K16 ["createElement"]
      293 GETUPVAL                         R15 10
      294 DUPTABLE                         R16 K81 [{["instanceName"], ["instanceClassName"], ["sortDirection"], ["onToggleSort"], ["LayoutOrder"] = 0}]
      295 JUMPIFNOT                        R1 ; [+3]
      296 GETTABLEKS                       R17 R1 K82 ["Name"]
      298 JUMPIF                           R17 ; [+1]
      299 LOADNIL                          R17
      300 SETTABLEKS                       R17 R16 K77 ["instanceName"]
      302 JUMPIFNOT                        R1 ; [+3]
      303 GETTABLEKS                       R17 R1 K83 ["ClassName"]
      305 JUMPIF                           R17 ; [+1]
      306 LOADNIL                          R17
      307 SETTABLEKS                       R17 R16 K78 ["instanceClassName"]
      309 GETTABLEKS                       R17 R0 K5 ["state"]
      311 GETTABLEKS                       R17 R17 K84 ["SortDirection"]
      313 SETTABLEKS                       R17 R16 K79 ["sortDirection"]
      315 GETTABLEKS                       R17 R0 K85 ["toggleSortDirection"]
      317 SETTABLEKS                       R17 R16 K80 ["onToggleSort"]
      319 CALL                             R14 2 1
      320 SETTABLEKS                       R14 R13 K69 ["MainHeaderRow"]
      322 GETUPVAL                         R14 2
      323 GETTABLEKS                       R14 R14 K16 ["createElement"]
      325 GETUPVAL                         R15 11
      326 DUPTABLE                         R16 K88 [{["variant"], ["orientation"], ["LayoutOrder"] = 1}]
      327 GETUPVAL                         R17 12
      328 GETTABLEKS                       R17 R17 K89 ["Default"]
      330 SETTABLEKS                       R17 R16 K86 ["variant"]
      332 GETUPVAL                         R17 13
      333 GETTABLEKS                       R17 R17 K90 ["Horizontal"]
      335 SETTABLEKS                       R17 R16 K87 ["orientation"]
      337 CALL                             R14 2 1
      338 SETTABLEKS                       R14 R13 K70 ["HeaderDivider"]
      340 GETUPVAL                         R14 2
      341 GETTABLEKS                       R14 R14 K16 ["createElement"]
      343 GETUPVAL                         R15 14
      344 DUPTABLE                         R16 K97 [{["Size"], ["tag"] = "grow", ["fillBehavior"], ["layout"], ["selection"], ["scroll"], ["LayoutOrder"] = 2}]
      345 GETIMPORT                        R17 K61 [UDim2.new]
      347 LOADN                            R18 1
      348 LOADN                            R19 0
      349 LOADN                            R20 0
      350 LOADN                            R21 0
      351 CALL                             R17 4 1
      352 SETTABLEKS                       R17 R16 K54 ["Size"]
      354 GETUPVAL                         R17 15
      355 GETTABLEKS                       R17 R17 K98 ["Fill"]
      357 SETTABLEKS                       R17 R16 K92 ["fillBehavior"]
      359 DUPTABLE                         R17 K100 [{"FillDirection"}]
      360 GETIMPORT                        R18 K103 [Enum.FillDirection.Vertical]
      362 SETTABLEKS                       R18 R17 K99 ["FillDirection"]
      364 SETTABLEKS                       R17 R16 K93 ["layout"]
      366 DUPTABLE                         R17 K106 [{["Selectable"] = True}]
      367 SETTABLEKS                       R17 R16 K94 ["selection"]
      369 DUPTABLE                         R17 K111 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection", "scrollBarVisibility"}]
      370 GETIMPORT                        R18 K114 [Enum.AutomaticSize.Y]
      372 SETTABLEKS                       R18 R17 K107 ["AutomaticCanvasSize"]
      374 GETIMPORT                        R18 K116 [UDim2.fromOffset]
      376 LOADN                            R19 0
      377 LOADN                            R20 0
      378 CALL                             R18 2 1
      379 SETTABLEKS                       R18 R17 K108 ["CanvasSize"]
      381 GETIMPORT                        R18 K117 [Enum.ScrollingDirection.Y]
      383 SETTABLEKS                       R18 R17 K109 ["ScrollingDirection"]
      385 GETUPVAL                         R18 16
      386 GETTABLEKS                       R18 R18 K118 ["Auto"]
      388 SETTABLEKS                       R18 R17 K110 ["scrollBarVisibility"]
      390 SETTABLEKS                       R17 R16 K95 ["scroll"]
      392 MOVE                             R17 R9
      393 CALL                             R14 3 1
      394 SETTABLEKS                       R14 R13 K71 ["MainScrollView"]
      396 GETUPVAL                         R14 2
      397 GETTABLEKS                       R14 R14 K16 ["createElement"]
      399 GETUPVAL                         R15 11
      400 DUPTABLE                         R16 K120 [{["variant"], ["orientation"], ["LayoutOrder"] = 3}]
      401 GETUPVAL                         R17 12
      402 GETTABLEKS                       R17 R17 K89 ["Default"]
      404 SETTABLEKS                       R17 R16 K86 ["variant"]
      406 GETUPVAL                         R17 13
      407 GETTABLEKS                       R17 R17 K90 ["Horizontal"]
      409 SETTABLEKS                       R17 R16 K87 ["orientation"]
      411 CALL                             R14 2 1
      412 SETTABLEKS                       R14 R13 K72 ["FooterDivider"]
      414 GETUPVAL                         R14 2
      415 GETTABLEKS                       R14 R14 K16 ["createElement"]
      417 GETUPVAL                         R15 3
      418 DUPTABLE                         R16 K123 [{["tag"] = "row gap-small size-full-0 auto-y padding-x-medium padding-y-small", ["LayoutOrder"] = 4}]
      419 DUPTABLE                         R17 K126 [{"RunValidationButton", "CancelButton"}]
      420 GETUPVAL                         R18 2
      421 GETTABLEKS                       R18 R18 K16 ["createElement"]
      423 GETUPVAL                         R19 17
      424 DUPTABLE                         R20 K134 [{["text"], ["variant"], ["testId"] = "aqv-run-validation", ["onActivated"], ["isDisabled"], ["size"], ["height"], ["width"], ["fillBehavior"], ["LayoutOrder"] = 0}]
      425 GETTABLEKS                       R21 R0 K0 ["props"]
      427 GETTABLEKS                       R21 R21 K40 ["Localization"]
      429 LOADK                            R23 K37 ["Text"]
      430 LOADK                            R24 K135 ["RunValidation"]
      431 NAMECALL                         R21 R21 K42 ["getText"]
      433 CALL                             R21 3 1
      434 SETTABLEKS                       R21 R20 K127 ["text"]
      436 GETUPVAL                         R21 18
      437 GETTABLEKS                       R21 R21 K136 ["Emphasis"]
      439 SETTABLEKS                       R21 R20 K86 ["variant"]
      441 JUMPIFNOT                        R2 ; [+2]
      442 LOADNIL                          R21
      443 JUMP                             ; [+2]
      444 GETTABLEKS                       R21 R0 K137 ["openDialog"]
      446 SETTABLEKS                       R21 R20 K130 ["onActivated"]
      448 SETTABLEKS                       R2 R20 K131 ["isDisabled"]
      450 SETTABLEKS                       R7 R20 K22 ["size"]
      452 SETTABLEKS                       R8 R20 K132 ["height"]
      454 GETIMPORT                        R21 K13 [UDim.new]
      456 LOADN                            R22 1
      457 LOADN                            R23 0
      458 CALL                             R21 2 1
      459 SETTABLEKS                       R21 R20 K133 ["width"]
      461 GETUPVAL                         R21 15
      462 GETTABLEKS                       R21 R21 K138 ["Fit"]
      464 SETTABLEKS                       R21 R20 K92 ["fillBehavior"]
      466 CALL                             R18 2 1
      467 SETTABLEKS                       R18 R17 K124 ["RunValidationButton"]
      469 JUMPIFNOT                        R2 ; [+55]
      470 GETUPVAL                         R18 2
      471 GETTABLEKS                       R18 R18 K16 ["createElement"]
      473 GETUPVAL                         R19 17
      474 DUPTABLE                         R20 K140 [{["text"], ["variant"], ["testId"] = "aqv-cancel-validation", ["onActivated"], ["size"], ["height"], ["width"], ["fillBehavior"], ["LayoutOrder"] = 1}]
      475 JUMPIFNOT                        R6 ; [+11]
      476 GETTABLEKS                       R21 R0 K0 ["props"]
      478 GETTABLEKS                       R21 R21 K40 ["Localization"]
      480 LOADK                            R23 K141 ["Common"]
      481 LOADK                            R24 K142 ["Action"]
      482 LOADK                            R25 K143 ["Cancel"]
      483 NAMECALL                         R21 R21 K144 ["getProjectText"]
      485 CALL                             R21 4 1
      486 JUMP                             ; [+9]
      487 GETTABLEKS                       R21 R0 K0 ["props"]
      489 GETTABLEKS                       R21 R21 K40 ["Localization"]
      491 LOADK                            R23 K37 ["Text"]
      492 LOADK                            R24 K143 ["Cancel"]
      493 NAMECALL                         R21 R21 K42 ["getText"]
      495 CALL                             R21 3 1
      496 SETTABLEKS                       R21 R20 K127 ["text"]
      498 GETUPVAL                         R21 18
      499 GETTABLEKS                       R21 R21 K145 ["Standard"]
      501 SETTABLEKS                       R21 R20 K86 ["variant"]
      503 GETTABLEKS                       R21 R0 K146 ["cancelValidation"]
      505 SETTABLEKS                       R21 R20 K130 ["onActivated"]
      507 SETTABLEKS                       R7 R20 K22 ["size"]
      509 SETTABLEKS                       R8 R20 K132 ["height"]
      511 GETIMPORT                        R21 K13 [UDim.new]
      513 LOADN                            R22 0
      514 LOADN                            R23 80
      515 CALL                             R21 2 1
      516 SETTABLEKS                       R21 R20 K133 ["width"]
      518 GETUPVAL                         R21 15
      519 GETTABLEKS                       R21 R21 K138 ["Fit"]
      521 SETTABLEKS                       R21 R20 K92 ["fillBehavior"]
      523 CALL                             R18 2 1
      524 JUMP                             ; [+1]
      525 LOADNIL                          R18
      526 SETTABLEKS                       R18 R17 K125 ["CancelButton"]
      528 CALL                             R14 3 1
      529 SETTABLEKS                       R14 R13 K73 ["FooterButtons"]
      531 JUMPIFNOT                        R6 ; [+45]
      532 GETTABLEKS                       R15 R0 K5 ["state"]
      534 GETTABLEKS                       R15 R15 K147 ["IsDialogOpen"]
      536 JUMPIFNOT                        R15 ; [+40]
      537 GETUPVAL                         R14 2
      538 GETTABLEKS                       R14 R14 K16 ["createElement"]
      540 GETUPVAL                         R15 19
      541 DUPTABLE                         R16 K155 [{"models", "pendingAssetTypes", "bundleTypeItems", "buildDropdownItems", "onAssetTypeChanged", "onSubmit", "onCancel"}]
      542 GETTABLEKS                       R17 R0 K5 ["state"]
      544 GETTABLEKS                       R17 R17 K156 ["DialogModels"]
      546 SETTABLEKS                       R17 R16 K148 ["models"]
      548 GETTABLEKS                       R17 R0 K5 ["state"]
      550 GETTABLEKS                       R17 R17 K157 ["PendingAssetTypes"]
      552 SETTABLEKS                       R17 R16 K149 ["pendingAssetTypes"]
      554 GETTABLEKS                       R17 R0 K0 ["props"]
      556 GETTABLEKS                       R17 R17 K150 ["bundleTypeItems"]
      558 SETTABLEKS                       R17 R16 K150 ["bundleTypeItems"]
      560 GETUPVAL                         R17 20
      561 SETTABLEKS                       R17 R16 K151 ["buildDropdownItems"]
      563 GETTABLEKS                       R17 R0 K158 ["makeAssetTypeChangedHandler"]
      565 SETTABLEKS                       R17 R16 K152 ["onAssetTypeChanged"]
      567 GETTABLEKS                       R17 R0 K159 ["submitValidation"]
      569 SETTABLEKS                       R17 R16 K153 ["onSubmit"]
      571 GETTABLEKS                       R17 R0 K160 ["closeDialog"]
      573 SETTABLEKS                       R17 R16 K154 ["onCancel"]
      575 CALL                             R14 2 1
      576 JUMP                             ; [+1]
      577 LOADNIL                          R14
      578 SETTABLEKS                       R14 R13 K74 ["AssetTypeDialog"]
      580 JUMPIFNOT                        R6 ; [+2]
      581 LOADNIL                          R14
      582 JUMP                             ; [+51]
      583 GETUPVAL                         R14 2
      584 GETTABLEKS                       R14 R14 K16 ["createElement"]
      586 GETUPVAL                         R15 21
      587 DUPTABLE                         R16 K164 [{["visible"], ["models"], ["pendingAssetTypes"], ["bundleTypeItems"], ["buildDropdownItems"], ["onAssetTypeChanged"], ["onSubmit"], ["onCancel"], ["inline"], ["LayoutOrder"] = 5}]
      588 GETTABLEKS                       R17 R0 K5 ["state"]
      590 GETTABLEKS                       R17 R17 K147 ["IsDialogOpen"]
      592 SETTABLEKS                       R17 R16 K161 ["visible"]
      594 GETTABLEKS                       R17 R0 K5 ["state"]
      596 GETTABLEKS                       R17 R17 K156 ["DialogModels"]
      598 SETTABLEKS                       R17 R16 K148 ["models"]
      600 GETTABLEKS                       R17 R0 K5 ["state"]
      602 GETTABLEKS                       R17 R17 K157 ["PendingAssetTypes"]
      604 SETTABLEKS                       R17 R16 K149 ["pendingAssetTypes"]
      606 GETTABLEKS                       R17 R0 K0 ["props"]
      608 GETTABLEKS                       R17 R17 K150 ["bundleTypeItems"]
      610 SETTABLEKS                       R17 R16 K150 ["bundleTypeItems"]
      612 GETUPVAL                         R17 20
      613 SETTABLEKS                       R17 R16 K151 ["buildDropdownItems"]
      615 GETTABLEKS                       R17 R0 K158 ["makeAssetTypeChangedHandler"]
      617 SETTABLEKS                       R17 R16 K152 ["onAssetTypeChanged"]
      619 GETTABLEKS                       R17 R0 K159 ["submitValidation"]
      621 SETTABLEKS                       R17 R16 K153 ["onSubmit"]
      623 GETTABLEKS                       R17 R0 K160 ["closeDialog"]
      625 SETTABLEKS                       R17 R16 K154 ["onCancel"]
      627 GETTABLEKS                       R17 R0 K0 ["props"]
      629 GETTABLEKS                       R17 R17 K165 ["dialogInline"]
      631 SETTABLEKS                       R17 R16 K162 ["inline"]
      633 CALL                             R14 2 1
      634 SETTABLEKS                       R14 R13 K75 ["AssetTypeDialogWidget"]
      636 CALL                             R10 3 -1
      637 RETURN                           R10 -1

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
      123 GETTABLEKS                       R26 R26 K37 ["Components"]
      125 GETTABLEKS                       R26 R26 K40 ["DEPRECATED_AssetTypeDialog"]
      127 CALL                             R25 1 1
      128 GETIMPORT                        R26 K5 [require]
      130 GETTABLEKS                       R27 R0 K36 ["Src"]
      132 GETTABLEKS                       R27 R27 K41 ["Util"]
      134 GETTABLEKS                       R27 R27 K42 ["buildTreeItems"]
      136 CALL                             R26 1 1
      137 GETIMPORT                        R27 K5 [require]
      139 GETIMPORT                        R28 K1 [script]
      141 GETTABLEKS                       R28 R28 K43 ["ValidationRow"]
      143 CALL                             R27 1 1
      144 NEWTABLE                         R28 0 0
      146 NEWTABLE                         R29 0 0
      148 GETIMPORT                        R30 K46 [Enum.AssetType]
      150 NAMECALL                         R30 R30 K47 ["GetEnumItems"]
      152 CALL                             R30 1 3
      153 FORGPREP                         R30
      154 GETTABLEKS                       R35 R34 K48 ["Name"]
      156 JUMPIFEQKS                       R35 K49 ["Hat"] ; [+7]
      158 LOADN                            R38 -9
      159 NAMECALL                         R36 R35 K50 ["sub"]
      161 CALL                             R36 2 1
      162 JUMPIFNOTEQKS                    R36 K51 ["Accessory"] ; [+14]
      164 DUPTABLE                         R38 K54 [{"id", "text"}]
      165 GETTABLEKS                       R39 R34 K55 ["Value"]
      167 SETTABLEKS                       R39 R38 K52 ["id"]
      169 SETTABLEKS                       R35 R38 K53 ["text"]
      171 FASTCALL2                        TABLE_INSERT R29 R38 ; [+4]
      173 MOVE                             R37 R29
      174 GETIMPORT                        R36 K58 [table.insert]
      176 CALL                             R36 2 0
      177 FORGLOOP                         R30 2 ; [-24]
      179 GETIMPORT                        R30 K60 [table.sort]
      181 MOVE                             R31 R29
      182 DUPCLOSURE                       R32 K61 [PROTO_0]
      183 CALL                             R30 2 0
      184 MOVE                             R28 R29
      185 NEWTABLE                         R29 0 2
      187 DUPTABLE                         R30 K64 [{["id"] = "bundle:Body", ["text"] = "Body"}]
      188 DUPTABLE                         R31 K67 [{["id"] = "bundle:DynamicHead", ["text"] = "DynamicHead"}]
      189 SETLIST                          R29 R30 2 [1]
      191 NEWCLOSURE                       R30 P1
      192 CAPTURE                          VAL R29
      193 CAPTURE                          REF R28
      194 DUPCLOSURE                       R31 K68 [PROTO_3]
      195 GETTABLEKS                       R32 R2 K69 ["PureComponent"]
      197 LOADK                            R34 K70 ["ValidationPanel"]
      198 NAMECALL                         R32 R32 K71 ["extend"]
      200 CALL                             R32 2 1
      201 DUPCLOSURE                       R33 K72 [PROTO_12]
      202 CAPTURE                          VAL R26
      203 CAPTURE                          VAL R1
      204 CAPTURE                          VAL R30
      205 SETTABLEKS                       R33 R32 K73 ["init"]
      207 DUPCLOSURE                       R33 K74 [PROTO_13]
      208 CAPTURE                          VAL R26
      209 CAPTURE                          VAL R31
      210 SETTABLEKS                       R33 R32 K75 ["didUpdate"]
      212 DUPCLOSURE                       R33 K76 [PROTO_19]
      213 CAPTURE                          VAL R1
      214 CAPTURE                          VAL R16
      215 CAPTURE                          VAL R2
      216 CAPTURE                          VAL R9
      217 CAPTURE                          VAL R13
      218 CAPTURE                          VAL R17
      219 CAPTURE                          VAL R11
      220 CAPTURE                          VAL R10
      221 CAPTURE                          VAL R27
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
      232 CAPTURE                          VAL R24
      233 CAPTURE                          VAL R30
      234 CAPTURE                          VAL R25
      235 SETTABLEKS                       R33 R32 K77 ["render"]
      237 MOVE                             R33 R8
      238 DUPTABLE                         R34 K82 [{"Localization", "Stylizer", "Mouse", "Plugin"}]
      239 GETTABLEKS                       R35 R7 K78 ["Localization"]
      241 SETTABLEKS                       R35 R34 K78 ["Localization"]
      243 GETTABLEKS                       R35 R7 K79 ["Stylizer"]
      245 SETTABLEKS                       R35 R34 K79 ["Stylizer"]
      247 GETTABLEKS                       R35 R7 K80 ["Mouse"]
      249 SETTABLEKS                       R35 R34 K80 ["Mouse"]
      251 GETTABLEKS                       R35 R7 K81 ["Plugin"]
      253 SETTABLEKS                       R35 R34 K81 ["Plugin"]
      255 CALL                             R33 1 1
      256 MOVE                             R34 R32
      257 CALL                             R33 1 1
      258 MOVE                             R32 R33
      259 CLOSEUPVALS                      R28
      260 RETURN                           R32 1
