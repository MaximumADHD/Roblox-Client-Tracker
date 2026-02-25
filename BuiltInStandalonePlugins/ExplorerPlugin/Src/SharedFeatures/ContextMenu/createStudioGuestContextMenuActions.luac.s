PROTO_0:
        0 LOADNIL                          R0
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+3]
        3 GETUPVAL                         R0 0
        4 RETURN                           R0 1
        5 GETUPVAL                         R0 1
        6 NAMECALL                         R0 R0 K0 ["Get"]
        8 CALL                             R0 1 1
        9 SETUPVAL                         R0 0
       10 GETIMPORT                        R1 K3 [task.defer]
       12 NEWCLOSURE                       R2 P0
       13 CAPTURE                          UPVAL U0
       14 CALL                             R1 1 0
       15 RETURN                           R0 1

PROTO_2:
        0 LOADNIL                          R0
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+3]
        3 GETUPVAL                         R0 0
        4 RETURN                           R0 1
        5 DUPTABLE                         R0 K2 [{"selectingService", "selectingNonService"}]
        6 LOADB                            R1 0
        7 SETTABLEKS                       R1 R0 K0 ["selectingService"]
        9 LOADB                            R1 0
       10 SETTABLEKS                       R1 R0 K1 ["selectingNonService"]
       12 GETUPVAL                         R4 1
       13 JUMPIFEQKNIL                     R4 ; [+5]
       15 GETUPVAL                         R1 1
       16 LOADNIL                          R2
       17 LOADNIL                          R3
       18 JUMP                             ; [+13]
       19 GETUPVAL                         R4 2
       20 NAMECALL                         R4 R4 K3 ["Get"]
       22 CALL                             R4 1 1
       23 SETUPVAL                         R4 1
       24 GETIMPORT                        R5 K6 [task.defer]
       26 NEWCLOSURE                       R6 P0
       27 CAPTURE                          UPVAL U1
       28 CALL                             R5 1 0
       29 MOVE                             R1 R4
       30 LOADNIL                          R2
       31 LOADNIL                          R3
       32 FORGPREP                         R1
       33 GETTABLEKS                       R6 R5 K7 ["Parent"]
       35 JUMPIFEQKNIL                     R6 ; [+15]
       37 GETTABLEKS                       R6 R5 K7 ["Parent"]
       39 LOADK                            R8 K8 ["DataModel"]
       40 NAMECALL                         R6 R6 K9 ["IsA"]
       42 CALL                             R6 2 1
       43 JUMPIFNOT                        R6 ; [+7]
       44 LOADB                            R6 1
       45 SETTABLEKS                       R6 R0 K0 ["selectingService"]
       47 GETTABLEKS                       R6 R0 K1 ["selectingNonService"]
       49 JUMPIF                           R6 ; [+9]
       50 JUMP                             ; [+6]
       51 LOADB                            R6 1
       52 SETTABLEKS                       R6 R0 K1 ["selectingNonService"]
       54 GETTABLEKS                       R6 R0 K0 ["selectingService"]
       56 JUMPIF                           R6 ; [+2]
       57 FORGLOOP                         R1 2 ; [-25]
       59 SETUPVAL                         R0 0
       60 GETIMPORT                        R1 K6 [task.defer]
       62 NEWCLOSURE                       R2 P1
       63 CAPTURE                          UPVAL U0
       64 CALL                             R1 1 0
       65 RETURN                           R0 1

PROTO_4:
        0 LOADNIL                          R0
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQKNIL                  R1 ; [+9]
        3 NEWTABLE                         R1 0 0
        5 SETUPVAL                         R1 0
        6 GETIMPORT                        R1 K2 [task.defer]
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          UPVAL U0
       10 CALL                             R1 1 0
       11 GETUPVAL                         R3 0
       12 JUMPIFNOTEQKNIL                  R3 ; [+2]
       14 LOADB                            R2 0 +1
       15 LOADB                            R2 1
       16 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       18 LOADK                            R3 K3 ["Luau"]
       19 GETIMPORT                        R1 K5 [assert]
       21 CALL                             R1 2 0
       22 GETUPVAL                         R2 0
       23 GETTABLE                         R1 R2 R0
       24 JUMPIFEQKNIL                     R1 ; [+2]
       26 RETURN                           R1 1
       27 GETUPVAL                         R5 1
       28 JUMPIFEQKNIL                     R5 ; [+5]
       30 GETUPVAL                         R2 1
       31 LOADNIL                          R3
       32 LOADNIL                          R4
       33 JUMP                             ; [+13]
       34 GETUPVAL                         R5 2
       35 NAMECALL                         R5 R5 K6 ["Get"]
       37 CALL                             R5 1 1
       38 SETUPVAL                         R5 1
       39 GETIMPORT                        R6 K2 [task.defer]
       41 NEWCLOSURE                       R7 P1
       42 CAPTURE                          UPVAL U1
       43 CALL                             R6 1 0
       44 MOVE                             R2 R5
       45 LOADNIL                          R3
       46 LOADNIL                          R4
       47 FORGPREP                         R2
       48 MOVE                             R7 R0
       49 MOVE                             R8 R6
       50 CALL                             R7 1 1
       51 JUMPIFNOT                        R7 ; [+5]
       52 GETUPVAL                         R7 0
       53 LOADB                            R8 1
       54 SETTABLE                         R8 R7 R0
       55 LOADB                            R7 1
       56 RETURN                           R7 1
       57 FORGLOOP                         R2 2 ; [-10]
       59 GETUPVAL                         R2 0
       60 LOADB                            R3 0
       61 SETTABLE                         R3 R2 R0
       62 LOADB                            R2 0
       63 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 LOADB                            R1 0
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K0 ["source"]
        6 GETTABLEKS                       R2 R3 K1 ["expectation"]
        8 JUMPIFNOTEQKS                    R2 K2 ["All"] ; [+8]
       10 GETTABLEKS                       R2 R0 K3 ["selectingNonService"]
       12 JUMPIF                           R2 ; [+2]
       13 GETTABLEKS                       R2 R0 K4 ["selectingService"]
       15 MOVE                             R1 R2
       16 JUMP                             ; [+42]
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R3 R4 K0 ["source"]
       20 GETTABLEKS                       R2 R3 K1 ["expectation"]
       22 JUMPIFNOTEQKS                    R2 K5 ["ServicesAndBlank"] ; [+9]
       24 GETTABLEKS                       R2 R0 K4 ["selectingService"]
       26 JUMPIF                           R2 ; [+3]
       27 GETTABLEKS                       R3 R0 K3 ["selectingNonService"]
       29 NOT                              R2 R3
       30 MOVE                             R1 R2
       31 JUMP                             ; [+27]
       32 GETUPVAL                         R4 1
       33 GETTABLEKS                       R3 R4 K0 ["source"]
       35 GETTABLEKS                       R2 R3 K1 ["expectation"]
       37 JUMPIFNOTEQKS                    R2 K6 ["Services"] ; [+4]
       39 GETTABLEKS                       R1 R0 K4 ["selectingService"]
       41 JUMP                             ; [+17]
       42 GETUPVAL                         R4 1
       43 GETTABLEKS                       R3 R4 K0 ["source"]
       45 GETTABLEKS                       R2 R3 K1 ["expectation"]
       47 JUMPIFNOTEQKS                    R2 K7 ["NonServices"] ; [+4]
       49 GETTABLEKS                       R1 R0 K3 ["selectingNonService"]
       51 JUMP                             ; [+7]
       52 GETUPVAL                         R2 2
       53 GETUPVAL                         R5 1
       54 GETTABLEKS                       R4 R5 K0 ["source"]
       56 GETTABLEKS                       R3 R4 K1 ["expectation"]
       58 CALL                             R2 1 0
       59 JUMPIF                           R1 ; [+8]
       60 DUPTABLE                         R2 K10 [{"enabled", "visible"}]
       61 LOADB                            R3 0
       62 SETTABLEKS                       R3 R2 K8 ["enabled"]
       64 LOADB                            R3 0
       65 SETTABLEKS                       R3 R2 K9 ["visible"]
       67 RETURN                           R2 1
       68 GETUPVAL                         R4 1
       69 GETTABLEKS                       R3 R4 K0 ["source"]
       71 GETTABLEKS                       R2 R3 K11 ["shouldShow"]
       73 JUMPIFEQKNIL                     R2 ; [+17]
       75 GETUPVAL                         R2 3
       76 GETUPVAL                         R5 1
       77 GETTABLEKS                       R4 R5 K0 ["source"]
       79 GETTABLEKS                       R3 R4 K11 ["shouldShow"]
       81 CALL                             R2 1 1
       82 JUMPIF                           R2 ; [+8]
       83 DUPTABLE                         R2 K10 [{"enabled", "visible"}]
       84 LOADB                            R3 0
       85 SETTABLEKS                       R3 R2 K8 ["enabled"]
       87 LOADB                            R3 0
       88 SETTABLEKS                       R3 R2 K9 ["visible"]
       90 RETURN                           R2 1
       91 GETUPVAL                         R3 4
       92 GETTABLEKS                       R2 R3 K12 ["getStudioActionState"]
       94 GETUPVAL                         R5 1
       95 GETTABLEKS                       R4 R5 K0 ["source"]
       97 GETTABLEKS                       R3 R4 K13 ["uri"]
       99 CALL                             R2 1 1
      100 DUPTABLE                         R3 K10 [{"enabled", "visible"}]
      101 GETTABLEKS                       R4 R2 K14 ["Enabled"]
      103 SETTABLEKS                       R4 R3 K8 ["enabled"]
      105 GETTABLEKS                       R4 R2 K15 ["Visible"]
      107 SETTABLEKS                       R4 R3 K9 ["visible"]
      109 RETURN                           R3 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Actions"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 1
        5 GETUPVAL                         R5 1
        6 GETTABLEKS                       R4 R5 K2 ["source"]
        8 GETTABLEKS                       R3 R4 K3 ["uri"]
       10 NAMECALL                         R1 R0 K4 ["ActivateAsync"]
       12 CALL                             R1 2 0
       13 RETURN                           R0 0

PROTO_8:
        0 GETIMPORT                        R0 K2 [task.spawn]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R2 R0 K0 ["source"]
        2 GETTABLEKS                       R1 R2 K1 ["type"]
        4 JUMPIFNOTEQKS                    R1 K2 ["studioAction"] ; [+20]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R2 R0 K3 ["key"]
        9 DUPTABLE                         R3 K6 [{"getActionStateAsync", "trigger"}]
       10 NEWCLOSURE                       R4 P0
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          UPVAL U4
       16 SETTABLEKS                       R4 R3 K4 ["getActionStateAsync"]
       18 NEWCLOSURE                       R4 P1
       19 CAPTURE                          UPVAL U5
       20 CAPTURE                          VAL R0
       21 SETTABLEKS                       R4 R3 K5 ["trigger"]
       23 SETTABLE                         R3 R1 R2
       24 RETURN                           R0 0
       25 GETTABLEKS                       R2 R0 K0 ["source"]
       27 GETTABLEKS                       R1 R2 K1 ["type"]
       29 JUMPIFNOTEQKS                    R1 K7 ["submenu"] ; [+19]
       31 GETTABLEKS                       R4 R0 K0 ["source"]
       33 GETTABLEKS                       R1 R4 K8 ["submenuCategories"]
       35 LOADNIL                          R2
       36 LOADNIL                          R3
       37 FORGPREP                         R1
       38 MOVE                             R6 R5
       39 LOADNIL                          R7
       40 LOADNIL                          R8
       41 FORGPREP                         R6
       42 GETUPVAL                         R11 6
       43 MOVE                             R12 R10
       44 CALL                             R11 1 0
       45 FORGLOOP                         R6 2 ; [-4]
       47 FORGLOOP                         R1 2 ; [-10]
       49 RETURN                           R0 0

PROTO_10:
        0 NEWTABLE                         R2 0 0
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 NEWCLOSURE                       R6 P0
        6 CAPTURE                          REF R5
        7 CAPTURE                          UPVAL U0
        8 NEWCLOSURE                       R7 P1
        9 CAPTURE                          REF R3
       10 CAPTURE                          REF R5
       11 CAPTURE                          UPVAL U0
       12 NEWCLOSURE                       R8 P2
       13 CAPTURE                          REF R4
       14 CAPTURE                          REF R5
       15 CAPTURE                          UPVAL U0
       16 NEWCLOSURE                       R9 P3
       17 CAPTURE                          VAL R2
       18 CAPTURE                          VAL R7
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          VAL R8
       21 CAPTURE                          VAL R1
       22 CAPTURE                          VAL R0
       23 CAPTURE                          VAL R9
       24 GETUPVAL                         R10 2
       25 LOADNIL                          R11
       26 LOADNIL                          R12
       27 FORGPREP                         R10
       28 MOVE                             R15 R14
       29 LOADNIL                          R16
       30 LOADNIL                          R17
       31 FORGPREP                         R15
       32 MOVE                             R20 R9
       33 MOVE                             R21 R19
       34 CALL                             R20 1 0
       35 FORGLOOP                         R15 2 ; [-4]
       37 FORGLOOP                         R10 2 ; [-10]
       39 CLOSEUPVALS                      R3
       40 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Selection"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["ExplorerPlugin"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R6 R1 K10 ["Src"]
       17 GETTABLEKS                       R5 R6 K11 ["SharedFeatures"]
       19 GETTABLEKS                       R4 R5 K12 ["ContextMenu"]
       21 GETTABLEKS                       R3 R4 K13 ["ContextMenuActionList"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K9 [require]
       26 GETTABLEKS                       R5 R1 K14 ["Packages"]
       28 GETTABLEKS                       R4 R5 K15 ["Explorer"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K9 [require]
       33 GETTABLEKS                       R8 R1 K10 ["Src"]
       35 GETTABLEKS                       R7 R8 K11 ["SharedFeatures"]
       37 GETTABLEKS                       R6 R7 K12 ["ContextMenu"]
       39 GETTABLEKS                       R5 R6 K16 ["createContextMenuActionWatcher"]
       41 CALL                             R4 1 1
       42 GETIMPORT                        R5 K9 [require]
       44 GETTABLEKS                       R8 R1 K10 ["Src"]
       46 GETTABLEKS                       R7 R8 K17 ["Util"]
       48 GETTABLEKS                       R6 R7 K18 ["exhaustiveMatch"]
       50 CALL                             R5 1 1
       51 DUPCLOSURE                       R6 K19 [PROTO_10]
       52 CAPTURE                          VAL R0
       53 CAPTURE                          VAL R5
       54 CAPTURE                          VAL R2
       55 RETURN                           R6 1
