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
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CALL                             R0 1 2
        5 JUMPIFNOT                        R0 ; [+1]
        6 JUMPIF                           R1 ; [+1]
        7 RETURN                           R0 0
        8 DUPTABLE                         R2 K7 [{["PluginId"] = "AssetImporter", ["Category"] = "Snackbar", ["ItemId"]}]
        9 GETUPVAL                         R3 1
       10 SETTABLEKS                       R3 R2 K6 ["ItemId"]
       12 GETUPVAL                         R4 2
       13 JUMPIFNOT                        R4 ; [+5]
       14 DUPTABLE                         R3 K9 [{"Message"}]
       15 GETUPVAL                         R4 3
       16 SETTABLEKS                       R4 R3 K8 ["Message"]
       18 JUMP                             ; [+4]
       19 DUPTABLE                         R3 K12 [{["Message"], ["Type"] = "Error"}]
       20 GETUPVAL                         R4 3
       21 SETTABLEKS                       R4 R3 K8 ["Message"]
       23 GETIMPORT                        R4 K1 [pcall]
       25 NEWCLOSURE                       R5 P1
       26 CAPTURE                          VAL R1
       27 CAPTURE                          VAL R2
       28 CAPTURE                          VAL R3
       29 CALL                             R4 1 0
       30 RETURN                           R0 0

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
