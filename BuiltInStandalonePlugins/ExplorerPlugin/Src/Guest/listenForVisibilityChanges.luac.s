PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_1:
        0 LOADB                            R0 0
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 LOADB                            R0 1
        4 SETUPVAL                         R0 0
        5 GETUPVAL                         R0 1
        6 CALL                             R0 0 0
        7 GETIMPORT                        R0 K2 [task.defer]
        9 NEWCLOSURE                       R1 P0
       10 CAPTURE                          UPVAL U0
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 NAMECALL                         R5 R4 K0 ["Disconnect"]
        6 CALL                             R5 1 0
        7 FORGLOOP                         R0 2 ; [-4]
        9 GETUPVAL                         R0 1
       10 NAMECALL                         R0 R0 K0 ["Disconnect"]
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_4:
        0 NEWTABLE                         R1 0 5
        2 LOADK                            R2 K0 ["Show Hidden Objects in Explorer"]
        3 LOADK                            R3 K1 ["Show Core GUI in Explorer while Playing"]
        4 LOADK                            R4 K2 ["Show Plugin GUI Service in Explorer"]
        5 LOADK                            R5 K3 ["ShowCorePackagesInExplorer"]
        6 LOADK                            R6 K4 ["Show FileSyncService"]
        7 SETLIST                          R1 R2 5 [1]
        9 NEWTABLE                         R2 0 0
       11 MOVE                             R3 R1
       12 LOADNIL                          R4
       13 LOADNIL                          R5
       14 FORGPREP                         R3
       15 GETUPVAL                         R8 0
       16 MOVE                             R10 R7
       17 NAMECALL                         R8 R8 K5 ["GetPropertyChangedSignal"]
       19 CALL                             R8 2 1
       20 NEWCLOSURE                       R10 P0
       21 CAPTURE                          VAL R0
       22 NAMECALL                         R8 R8 K6 ["Connect"]
       24 CALL                             R8 2 1
       25 FASTCALL2                        TABLE_INSERT R2 R8 ; [+5]
       27 MOVE                             R10 R2
       28 MOVE                             R11 R8
       29 GETIMPORT                        R9 K9 [table.insert]
       31 CALL                             R9 2 0
       32 FORGLOOP                         R3 2 ; [-18]
       34 LOADB                            R3 0
       35 NEWCLOSURE                       R4 P1
       36 CAPTURE                          REF R3
       37 CAPTURE                          VAL R0
       38 GETUPVAL                         R6 1
       39 CALL                             R6 0 1
       40 JUMPIFNOT                        R6 ; [+8]
       41 GETUPVAL                         R5 2
       42 GETTABLEKS                       R5 R5 K10 ["ServiceVisibilityChanged"]
       44 MOVE                             R7 R4
       45 NAMECALL                         R5 R5 K6 ["Connect"]
       47 CALL                             R5 2 1
       48 JUMP                             ; [+7]
       49 GETUPVAL                         R5 2
       50 GETTABLEKS                       R5 R5 K11 ["Changed"]
       52 MOVE                             R7 R4
       53 NAMECALL                         R5 R5 K6 ["Connect"]
       55 CALL                             R5 2 1
       56 NEWCLOSURE                       R6 P2
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R5
       59 CLOSEUPVALS                      R3
       60 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ExplorerPlugin"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [settings]
        9 CALL                             R1 0 1
       10 GETTABLEKS                       R1 R1 K6 ["Studio"]
       12 GETIMPORT                        R2 K8 [game]
       14 LOADK                            R4 K9 ["ServiceVisibilityService"]
       15 NAMECALL                         R2 R2 K10 ["GetService"]
       17 CALL                             R2 2 1
       18 GETIMPORT                        R3 K12 [require]
       20 GETTABLEKS                       R4 R0 K13 ["Src"]
       22 GETTABLEKS                       R4 R4 K14 ["Flags"]
       24 GETTABLEKS                       R4 R4 K15 ["getFFlagServiceVisibilityServiceLuauSignal"]
       26 CALL                             R3 1 1
       27 DUPCLOSURE                       R4 K16 [PROTO_4]
       28 CAPTURE                          VAL R1
       29 CAPTURE                          VAL R3
       30 CAPTURE                          VAL R2
       31 RETURN                           R4 1
