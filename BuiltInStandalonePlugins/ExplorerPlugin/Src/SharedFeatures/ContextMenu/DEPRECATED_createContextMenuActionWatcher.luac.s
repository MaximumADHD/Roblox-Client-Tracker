PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["source"]
        4 GETTABLEKS                       R2 R2 K1 ["uri"]
        6 SETTABLE                         R0 R1 R2
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R4 2
        3 GETTABLEKS                       R4 R4 K0 ["source"]
        5 GETTABLEKS                       R4 R4 K1 ["uri"]
        7 NAMECALL                         R2 R2 K2 ["BindToChangedAsync"]
        9 CALL                             R2 2 1
       10 NEWCLOSURE                       R4 P0
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          UPVAL U2
       13 NAMECALL                         R2 R2 K3 ["Connect"]
       15 CALL                             R2 2 -1
       16 FASTCALL                         TABLE_INSERT ; [+2]
       17 GETIMPORT                        R0 K6 [table.insert]
       19 CALL                             R0 -1 0
       20 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["source"]
        2 GETTABLEKS                       R1 R1 K1 ["type"]
        4 JUMPIFNOTEQKS                    R1 K2 ["studioAction"] ; [+20]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R3 R0 K0 ["source"]
        9 GETTABLEKS                       R3 R3 K3 ["uri"]
       11 FASTCALL2                        TABLE_INSERT R2 R3 ; [+3]
       13 GETIMPORT                        R1 K6 [table.insert]
       15 CALL                             R1 2 0
       16 GETIMPORT                        R1 K9 [task.spawn]
       18 NEWCLOSURE                       R2 P0
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          UPVAL U2
       21 CAPTURE                          VAL R0
       22 CAPTURE                          UPVAL U3
       23 CALL                             R1 1 0
       24 RETURN                           R0 0
       25 GETTABLEKS                       R1 R0 K0 ["source"]
       27 GETTABLEKS                       R1 R1 K1 ["type"]
       29 JUMPIFNOTEQKS                    R1 K10 ["submenu"] ; [+20]
       31 GETTABLEKS                       R1 R0 K0 ["source"]
       33 GETTABLEKS                       R1 R1 K11 ["submenuCategories"]
       35 LOADNIL                          R2
       36 LOADNIL                          R3
       37 FORGPREP                         R1
       38 MOVE                             R6 R5
       39 LOADNIL                          R7
       40 LOADNIL                          R8
       41 FORGPREP                         R6
       42 GETUPVAL                         R11 4
       43 MOVE                             R12 R10
       44 CALL                             R11 1 0
       45 FORGLOOP                         R6 2 ; [-4]
       47 FORGLOOP                         R1 2 ; [-10]
       49 RETURN                           R0 0
       50 GETUPVAL                         R1 5
       51 GETTABLEKS                       R2 R0 K0 ["source"]
       53 GETTABLEKS                       R2 R2 K1 ["type"]
       55 CALL                             R1 1 0
       56 RETURN                           R0 0

PROTO_3:
        0 NEWTABLE                         R0 0 0
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          VAL R1
        8 CAPTURE                          UPVAL U3
        9 GETUPVAL                         R2 4
       10 LOADNIL                          R3
       11 LOADNIL                          R4
       12 FORGPREP                         R2
       13 MOVE                             R7 R6
       14 LOADNIL                          R8
       15 LOADNIL                          R9
       16 FORGPREP                         R7
       17 MOVE                             R12 R1
       18 MOVE                             R13 R11
       19 CALL                             R12 1 0
       20 FORGLOOP                         R7 2 ; [-4]
       22 FORGLOOP                         R2 2 ; [-10]
       24 GETUPVAL                         R2 1
       25 MOVE                             R4 R0
       26 NAMECALL                         R2 R2 K0 ["GetAsync"]
       28 CALL                             R2 2 1
       29 MOVE                             R3 R0
       30 LOADNIL                          R4
       31 LOADNIL                          R5
       32 FORGPREP                         R3
       33 GETUPVAL                         R9 2
       34 GETTABLE                         R8 R9 R7
       35 JUMPIFNOTEQKNIL                  R8 ; [+4]
       37 GETUPVAL                         R8 2
       38 GETTABLE                         R9 R2 R6
       39 SETTABLE                         R9 R8 R7
       40 FORGLOOP                         R3 2 ; [-8]
       42 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOTEQKNIL                  R1 ; [+2]
        4 LOADB                            R3 0 +1
        5 LOADB                            R3 1
        6 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        8 LOADK                            R4 K0 ["state is nil. Either GetAsync is remarkably slow, or you are not passing in the same StudioUri that is in ContextMenuActionList."]
        9 GETIMPORT                        R2 K2 [assert]
       11 CALL                             R2 2 0
       12 RETURN                           R1 1

PROTO_5:
        0 GETIMPORT                        R0 K2 [task.cancel]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 LOADNIL                          R1
        6 LOADNIL                          R2
        7 FORGPREP                         R0
        8 NAMECALL                         R5 R4 K3 ["Disconnect"]
       10 CALL                             R5 1 0
       11 FORGLOOP                         R0 2 ; [-4]
       13 RETURN                           R0 0

PROTO_6:
        0 LOADK                            R3 K0 ["Actions"]
        1 NAMECALL                         R1 R0 K1 ["GetPluginComponent"]
        3 CALL                             R1 2 1
        4 NEWTABLE                         R2 0 0
        6 NEWTABLE                         R3 0 0
        8 GETIMPORT                        R4 K4 [task.spawn]
       10 NEWCLOSURE                       R5 P0
       11 CAPTURE                          VAL R3
       12 CAPTURE                          VAL R1
       13 CAPTURE                          VAL R2
       14 CAPTURE                          UPVAL U0
       15 CAPTURE                          UPVAL U1
       16 CALL                             R4 1 1
       17 NEWCLOSURE                       R5 P1
       18 CAPTURE                          VAL R2
       19 NEWCLOSURE                       R6 P2
       20 CAPTURE                          VAL R4
       21 CAPTURE                          VAL R3
       22 DUPTABLE                         R7 K7 [{"getStudioActionState", "destroy"}]
       23 SETTABLEKS                       R5 R7 K5 ["getStudioActionState"]
       25 SETTABLEKS                       R6 R7 K6 ["destroy"]
       27 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ExplorerPlugin"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["SharedFeatures"]
       13 GETTABLEKS                       R2 R2 K8 ["ContextMenu"]
       15 GETTABLEKS                       R2 R2 K9 ["ContextMenuActionList"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K6 ["Src"]
       22 GETTABLEKS                       R3 R3 K7 ["SharedFeatures"]
       24 GETTABLEKS                       R3 R3 K8 ["ContextMenu"]
       26 GETTABLEKS                       R3 R3 K10 ["ContextMenuTypes"]
       28 CALL                             R2 1 1
       29 GETIMPORT                        R3 K5 [require]
       31 GETTABLEKS                       R4 R0 K6 ["Src"]
       33 GETTABLEKS                       R4 R4 K11 ["Util"]
       35 GETTABLEKS                       R4 R4 K12 ["exhaustiveMatch"]
       37 CALL                             R3 1 1
       38 DUPCLOSURE                       R4 K13 [PROTO_6]
       39 CAPTURE                          VAL R3
       40 CAPTURE                          VAL R1
       41 RETURN                           R4 1
