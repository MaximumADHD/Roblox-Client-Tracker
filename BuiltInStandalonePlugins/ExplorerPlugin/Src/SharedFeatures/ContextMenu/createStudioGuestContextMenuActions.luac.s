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
        5 DUPTABLE                         R0 K3 [{[1] = False, ["selectingNonService"] = False}]
        6 GETUPVAL                         R4 1
        7 JUMPIFEQKNIL                     R4 ; [+5]
        9 GETUPVAL                         R1 1
       10 LOADNIL                          R2
       11 LOADNIL                          R3
       12 JUMP                             ; [+13]
       13 GETUPVAL                         R4 2
       14 NAMECALL                         R4 R4 K4 ["Get"]
       16 CALL                             R4 1 1
       17 SETUPVAL                         R4 1
       18 GETIMPORT                        R5 K7 [task.defer]
       20 NEWCLOSURE                       R6 P0
       21 CAPTURE                          UPVAL U1
       22 CALL                             R5 1 0
       23 MOVE                             R1 R4
       24 LOADNIL                          R2
       25 LOADNIL                          R3
       26 FORGPREP                         R1
       27 GETTABLEKS                       R6 R5 K8 ["Parent"]
       29 JUMPIFEQKNIL                     R6 ; [+15]
       31 GETTABLEKS                       R6 R5 K8 ["Parent"]
       33 LOADK                            R8 K9 ["DataModel"]
       34 NAMECALL                         R6 R6 K10 ["IsA"]
       36 CALL                             R6 2 1
       37 JUMPIFNOT                        R6 ; [+7]
       38 LOADB                            R6 1
       39 SETTABLEKS                       R6 R0 K0 ["selectingService"]
       41 GETTABLEKS                       R6 R0 K2 ["selectingNonService"]
       43 JUMPIF                           R6 ; [+9]
       44 JUMP                             ; [+6]
       45 LOADB                            R6 1
       46 SETTABLEKS                       R6 R0 K2 ["selectingNonService"]
       48 GETTABLEKS                       R6 R0 K0 ["selectingService"]
       50 JUMPIF                           R6 ; [+2]
       51 FORGLOOP                         R1 2 ; [-25]
       53 SETUPVAL                         R0 0
       54 GETIMPORT                        R1 K7 [task.defer]
       56 NEWCLOSURE                       R2 P1
       57 CAPTURE                          UPVAL U0
       58 CALL                             R1 1 0
       59 RETURN                           R0 1

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
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["source"]
        6 GETTABLEKS                       R2 R2 K1 ["expectation"]
        8 JUMPIFNOTEQKS                    R2 K2 ["All"] ; [+8]
       10 GETTABLEKS                       R2 R0 K3 ["selectingNonService"]
       12 JUMPIF                           R2 ; [+2]
       13 GETTABLEKS                       R2 R0 K4 ["selectingService"]
       15 MOVE                             R1 R2
       16 JUMP                             ; [+42]
       17 GETUPVAL                         R2 1
       18 GETTABLEKS                       R2 R2 K0 ["source"]
       20 GETTABLEKS                       R2 R2 K1 ["expectation"]
       22 JUMPIFNOTEQKS                    R2 K5 ["ServicesAndBlank"] ; [+9]
       24 GETTABLEKS                       R2 R0 K4 ["selectingService"]
       26 JUMPIF                           R2 ; [+3]
       27 GETTABLEKS                       R3 R0 K3 ["selectingNonService"]
       29 NOT                              R2 R3
       30 MOVE                             R1 R2
       31 JUMP                             ; [+27]
       32 GETUPVAL                         R2 1
       33 GETTABLEKS                       R2 R2 K0 ["source"]
       35 GETTABLEKS                       R2 R2 K1 ["expectation"]
       37 JUMPIFNOTEQKS                    R2 K6 ["Services"] ; [+4]
       39 GETTABLEKS                       R1 R0 K4 ["selectingService"]
       41 JUMP                             ; [+17]
       42 GETUPVAL                         R2 1
       43 GETTABLEKS                       R2 R2 K0 ["source"]
       45 GETTABLEKS                       R2 R2 K1 ["expectation"]
       47 JUMPIFNOTEQKS                    R2 K7 ["NonServices"] ; [+4]
       49 GETTABLEKS                       R1 R0 K3 ["selectingNonService"]
       51 JUMP                             ; [+7]
       52 GETUPVAL                         R2 2
       53 GETUPVAL                         R3 1
       54 GETTABLEKS                       R3 R3 K0 ["source"]
       56 GETTABLEKS                       R3 R3 K1 ["expectation"]
       58 CALL                             R2 1 0
       59 JUMPIF                           R1 ; [+2]
       60 DUPTABLE                         R2 K11 [{["enabled"] = False, ["visible"] = False}]
       61 RETURN                           R2 1
       62 GETUPVAL                         R2 1
       63 GETTABLEKS                       R2 R2 K0 ["source"]
       65 GETTABLEKS                       R2 R2 K12 ["shouldShow"]
       67 JUMPIFEQKNIL                     R2 ; [+11]
       69 GETUPVAL                         R2 3
       70 GETUPVAL                         R3 1
       71 GETTABLEKS                       R3 R3 K0 ["source"]
       73 GETTABLEKS                       R3 R3 K12 ["shouldShow"]
       75 CALL                             R2 1 1
       76 JUMPIF                           R2 ; [+2]
       77 DUPTABLE                         R2 K11 [{["enabled"] = False, ["visible"] = False}]
       78 RETURN                           R2 1
       79 DUPTABLE                         R2 K14 [{["enabled"] = True, ["visible"] = True}]
       80 RETURN                           R2 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Actions"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K2 ["source"]
        8 GETTABLEKS                       R3 R3 K3 ["uri"]
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
        0 GETTABLEKS                       R1 R0 K0 ["source"]
        2 GETTABLEKS                       R1 R1 K1 ["type"]
        4 JUMPIFNOTEQKS                    R1 K2 ["studioAction"] ; [+19]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U2
       11 GETUPVAL                         R2 3
       12 GETTABLEKS                       R3 R0 K3 ["key"]
       14 DUPTABLE                         R4 K6 [{"getActionState", "trigger"}]
       15 SETTABLEKS                       R1 R4 K4 ["getActionState"]
       17 NEWCLOSURE                       R5 P1
       18 CAPTURE                          UPVAL U4
       19 CAPTURE                          VAL R0
       20 SETTABLEKS                       R5 R4 K5 ["trigger"]
       22 SETTABLE                         R4 R2 R3
       23 RETURN                           R0 0
       24 GETTABLEKS                       R1 R0 K0 ["source"]
       26 GETTABLEKS                       R1 R1 K1 ["type"]
       28 JUMPIFNOTEQKS                    R1 K7 ["submenu"] ; [+19]
       30 GETTABLEKS                       R1 R0 K0 ["source"]
       32 GETTABLEKS                       R1 R1 K8 ["submenuCategories"]
       34 LOADNIL                          R2
       35 LOADNIL                          R3
       36 FORGPREP                         R1
       37 MOVE                             R6 R5
       38 LOADNIL                          R7
       39 LOADNIL                          R8
       40 FORGPREP                         R6
       41 GETUPVAL                         R11 5
       42 MOVE                             R12 R10
       43 CALL                             R11 1 0
       44 FORGLOOP                         R6 2 ; [-4]
       46 FORGLOOP                         R1 2 ; [-10]
       48 RETURN                           R0 0

PROTO_10:
        0 NEWTABLE                         R1 0 0
        2 LOADNIL                          R2
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 NEWCLOSURE                       R5 P0
        6 CAPTURE                          REF R4
        7 CAPTURE                          UPVAL U0
        8 NEWCLOSURE                       R6 P1
        9 CAPTURE                          REF R2
       10 CAPTURE                          REF R4
       11 CAPTURE                          UPVAL U0
       12 NEWCLOSURE                       R7 P2
       13 CAPTURE                          REF R3
       14 CAPTURE                          REF R4
       15 CAPTURE                          UPVAL U0
       16 NEWCLOSURE                       R8 P3
       17 CAPTURE                          VAL R6
       18 CAPTURE                          UPVAL U1
       19 CAPTURE                          VAL R7
       20 CAPTURE                          VAL R1
       21 CAPTURE                          VAL R0
       22 CAPTURE                          VAL R8
       23 GETUPVAL                         R9 2
       24 LOADNIL                          R10
       25 LOADNIL                          R11
       26 FORGPREP                         R9
       27 MOVE                             R14 R13
       28 LOADNIL                          R15
       29 LOADNIL                          R16
       30 FORGPREP                         R14
       31 MOVE                             R19 R8
       32 MOVE                             R20 R18
       33 CALL                             R19 1 0
       34 FORGLOOP                         R14 2 ; [-4]
       36 FORGLOOP                         R9 2 ; [-10]
       38 CLOSEUPVALS                      R2
       39 RETURN                           R1 1

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
       15 GETTABLEKS                       R3 R1 K10 ["Src"]
       17 GETTABLEKS                       R3 R3 K11 ["SharedFeatures"]
       19 GETTABLEKS                       R3 R3 K12 ["ContextMenu"]
       21 GETTABLEKS                       R3 R3 K13 ["ContextMenuActionList"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K9 [require]
       26 GETTABLEKS                       R4 R1 K14 ["Packages"]
       28 GETTABLEKS                       R4 R4 K15 ["Explorer"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K9 [require]
       33 GETTABLEKS                       R5 R1 K10 ["Src"]
       35 GETTABLEKS                       R5 R5 K16 ["Util"]
       37 GETTABLEKS                       R5 R5 K17 ["exhaustiveMatch"]
       39 CALL                             R4 1 1
       40 DUPCLOSURE                       R5 K18 [PROTO_10]
       41 CAPTURE                          VAL R0
       42 CAPTURE                          VAL R4
       43 CAPTURE                          VAL R2
       44 RETURN                           R5 1
