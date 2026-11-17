PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["DialogManager"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 NAMECALL                         R0 R0 K0 ["ShowSnackbarAsync"]
        5 CALL                             R0 3 0
        6 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 FASTPCALL                        pcall 1 ; [+2]
        3 GETIMPORT                        R0 K1 [pcall]
        5 CALL                             R0 1 2
        6 JUMPIFNOT                        R0 ; [+1]
        7 JUMPIF                           R1 ; [+1]
        8 RETURN                           R0 0
        9 DUPTABLE                         R2 K7 [{["PluginId"] = "AssetImporter", ["Category"] = "Snackbar", ["ItemId"]}]
       10 GETUPVAL                         R3 1
       11 SETTABLEKS                       R3 R2 K6 ["ItemId"]
       13 GETUPVAL                         R4 2
       14 JUMPIFNOT                        R4 ; [+5]
       15 DUPTABLE                         R3 K9 [{"Message"}]
       16 GETUPVAL                         R4 3
       17 SETTABLEKS                       R4 R3 K8 ["Message"]
       19 JUMP                             ; [+4]
       20 DUPTABLE                         R3 K12 [{["Message"], ["Type"] = "Error"}]
       21 GETUPVAL                         R4 3
       22 SETTABLEKS                       R4 R3 K8 ["Message"]
       24 NEWCLOSURE                       R5 P1
       25 CAPTURE                          VAL R1
       26 CAPTURE                          VAL R2
       27 CAPTURE                          VAL R3
       28 FASTPCALL                        pcall 1 ; [+2]
       29 GETIMPORT                        R4 K1 [pcall]
       31 CALL                             R4 1 0
       32 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R4 0
        1 CALL                             R4 0 1
        2 JUMPIF                           R4 ; [+1]
        3 RETURN                           R0 0
        4 GETIMPORT                        R4 K2 [task.spawn]
        6 NEWCLOSURE                       R5 P0
        7 CAPTURE                          VAL R0
        8 CAPTURE                          VAL R1
        9 CAPTURE                          VAL R2
       10 CAPTURE                          VAL R3
       11 CALL                             R4 1 0
       12 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Flags"]
       13 GETTABLEKS                       R2 R2 K8 ["getFFlagStudioDialogManagerSnackbarQueue"]
       15 CALL                             R1 1 1
       16 DUPCLOSURE                       R2 K9 [PROTO_3]
       17 CAPTURE                          VAL R1
       18 RETURN                           R2 1
