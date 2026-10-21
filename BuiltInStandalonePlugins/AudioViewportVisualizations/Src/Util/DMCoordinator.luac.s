PROTO_0:
        0 GETUPVAL                         R1 0
        1 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        3 LOADK                            R2 K0 ["plugin was nil"]
        4 GETIMPORT                        R0 K2 [assert]
        6 CALL                             R0 2 0
        7 GETUPVAL                         R0 0
        8 GETTABLEKS                       R0 R0 K3 ["MultipleDocumentInterfaceInstance"]
       10 GETTABLEKS                       R1 R0 K4 ["FocusedDataModelSession"]
       12 JUMPIFNOT                        R1 ; [+3]
       13 GETTABLEKS                       R3 R1 K5 ["CurrentDataModelType"]
       15 JUMP                             ; [+2]
       16 GETIMPORT                        R3 K9 [Enum.StudioDataModelType.None]
       18 FASTCALL1                        TOSTRING R3 ; [+2]
       19 GETIMPORT                        R2 K11 [tostring]
       21 CALL                             R2 1 1
       22 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        3 LOADK                            R2 K0 ["plugin was nil"]
        4 GETIMPORT                        R0 K2 [assert]
        6 CALL                             R0 2 0
        7 GETUPVAL                         R0 1
        8 JUMPIF                           R0 ; [+1]
        9 RETURN                           R0 0
       10 GETUPVAL                         R0 1
       11 LOADNIL                          R1
       12 SETUPVAL                         R1 1
       13 GETUPVAL                         R1 0
       14 LOADK                            R4 K3 ["OnViewClosed"]
       15 MOVE                             R5 R0
       16 CONCAT                           R3 R4 R5
       17 NAMECALL                         R1 R1 K4 ["Invoke"]
       19 CALL                             R1 2 0
       20 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        3 LOADK                            R2 K0 ["plugin was nil"]
        4 GETIMPORT                        R0 K2 [assert]
        6 CALL                             R0 2 0
        7 GETUPVAL                         R2 0
        8 FASTCALL2K                       ASSERT R2 K0 ; [+4]
       10 LOADK                            R3 K0 ["plugin was nil"]
       11 GETIMPORT                        R1 K2 [assert]
       13 CALL                             R1 2 0
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R1 R1 K3 ["MultipleDocumentInterfaceInstance"]
       17 GETTABLEKS                       R2 R1 K4 ["FocusedDataModelSession"]
       19 JUMPIFNOT                        R2 ; [+3]
       20 GETTABLEKS                       R4 R2 K5 ["CurrentDataModelType"]
       22 JUMP                             ; [+2]
       23 GETIMPORT                        R4 K9 [Enum.StudioDataModelType.None]
       25 FASTCALL1                        TOSTRING R4 ; [+2]
       26 GETIMPORT                        R3 K11 [tostring]
       28 CALL                             R3 1 1
       29 MOVE                             R0 R3
       30 GETUPVAL                         R1 1
       31 JUMPIFNOT                        R1 ; [+8]
       32 GETIMPORT                        R2 K9 [Enum.StudioDataModelType.None]
       34 FASTCALL1                        TOSTRING R2 ; [+2]
       35 GETIMPORT                        R1 K11 [tostring]
       37 CALL                             R1 1 1
       38 JUMPIFNOTEQ                      R0 R1 ; [+22]
       40 GETUPVAL                         R2 0
       41 FASTCALL2K                       ASSERT R2 K0 ; [+4]
       43 LOADK                            R3 K0 ["plugin was nil"]
       44 GETIMPORT                        R1 K2 [assert]
       46 CALL                             R1 2 0
       47 GETUPVAL                         R1 2
       48 JUMPIF                           R1 ; [+1]
       49 RETURN                           R0 0
       50 GETUPVAL                         R1 2
       51 LOADNIL                          R2
       52 SETUPVAL                         R2 2
       53 GETUPVAL                         R2 0
       54 LOADK                            R5 K12 ["OnViewClosed"]
       55 MOVE                             R6 R1
       56 CONCAT                           R4 R5 R6
       57 NAMECALL                         R2 R2 K13 ["Invoke"]
       59 CALL                             R2 2 0
       60 RETURN                           R0 0
       61 GETUPVAL                         R1 2
       62 JUMPIFEQ                         R1 R0 ; [+29]
       64 GETUPVAL                         R2 0
       65 FASTCALL2K                       ASSERT R2 K0 ; [+4]
       67 LOADK                            R3 K0 ["plugin was nil"]
       68 GETIMPORT                        R1 K2 [assert]
       70 CALL                             R1 2 0
       71 GETUPVAL                         R1 2
       72 JUMPIF                           R1 ; [+1]
       73 JUMP                             ; [+10]
       74 GETUPVAL                         R1 2
       75 LOADNIL                          R2
       76 SETUPVAL                         R2 2
       77 GETUPVAL                         R2 0
       78 LOADK                            R5 K12 ["OnViewClosed"]
       79 MOVE                             R6 R1
       80 CONCAT                           R4 R5 R6
       81 NAMECALL                         R2 R2 K13 ["Invoke"]
       83 CALL                             R2 2 0
       84 GETUPVAL                         R1 0
       85 LOADK                            R4 K14 ["OnViewOpened"]
       86 MOVE                             R5 R0
       87 CONCAT                           R3 R4 R5
       88 NAMECALL                         R1 R1 K13 ["Invoke"]
       90 CALL                             R1 2 0
       91 SETUPVAL                         R0 2
       92 GETUPVAL                         R1 0
       93 LOADK                            R4 K15 ["OnToggleShowInactive"]
       94 MOVE                             R5 R0
       95 CONCAT                           R3 R4 R5
       96 GETUPVAL                         R4 3
       97 NAMECALL                         R1 R1 K13 ["Invoke"]
       99 CALL                             R1 3 0
      100 RETURN                           R0 0

PROTO_3:
        0 SETUPVAL                         R0 0
        1 GETUPVAL                         R2 0
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["plugin was nil"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K3 ["init"]
       11 GETUPVAL                         R2 0
       12 CALL                             R1 1 0
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R2 R2 K4 ["HostDataModelType"]
       16 FASTCALL1                        TOSTRING R2 ; [+2]
       17 GETIMPORT                        R1 K6 [tostring]
       19 CALL                             R1 1 1
       20 GETUPVAL                         R2 0
       21 LOADK                            R5 K7 ["OnViewOpened"]
       22 MOVE                             R6 R1
       23 CONCAT                           R4 R5 R6
       24 GETUPVAL                         R5 1
       25 GETTABLEKS                       R5 R5 K8 ["onOpenView"]
       27 NAMECALL                         R2 R2 K9 ["OnInvoke"]
       29 CALL                             R2 3 0
       30 GETUPVAL                         R2 0
       31 LOADK                            R5 K10 ["OnViewClosed"]
       32 MOVE                             R6 R1
       33 CONCAT                           R4 R5 R6
       34 GETUPVAL                         R5 1
       35 GETTABLEKS                       R5 R5 K11 ["onCloseView"]
       37 NAMECALL                         R2 R2 K9 ["OnInvoke"]
       39 CALL                             R2 3 0
       40 GETUPVAL                         R2 0
       41 LOADK                            R5 K12 ["OnToggleShowInactive"]
       42 MOVE                             R6 R1
       43 CONCAT                           R4 R5 R6
       44 GETUPVAL                         R5 1
       45 GETTABLEKS                       R5 R5 K13 ["setShowInactiveEnabled"]
       47 NAMECALL                         R2 R2 K9 ["OnInvoke"]
       49 CALL                             R2 3 0
       50 GETUPVAL                         R2 0
       51 GETTABLEKS                       R2 R2 K14 ["Unloading"]
       53 GETUPVAL                         R4 1
       54 GETTABLEKS                       R4 R4 K11 ["onCloseView"]
       56 NAMECALL                         R2 R2 K15 ["Connect"]
       58 CALL                             R2 2 0
       59 GETUPVAL                         R2 0
       60 LOADK                            R5 K16 ["OnDMJoined"]
       61 MOVE                             R6 R1
       62 CONCAT                           R4 R5 R6
       63 NAMECALL                         R2 R2 K17 ["Invoke"]
       65 CALL                             R2 2 0
       66 RETURN                           R0 0

PROTO_4:
        0 SETUPVAL                         R0 0
        1 GETUPVAL                         R2 0
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["plugin was nil"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K3 ["HostDataModelType"]
       11 GETIMPORT                        R4 K7 [Enum.StudioDataModelType.Standalone]
       13 JUMPIFEQ                         R3 R4 ; [+2]
       15 LOADB                            R2 0 +1
       16 LOADB                            R2 1
       17 LOADK                            R4 K8 ["initStandalone called on the DM "]
       18 GETUPVAL                         R6 0
       19 GETTABLEKS                       R6 R6 K3 ["HostDataModelType"]
       21 FASTCALL1                        TOSTRING R6 ; [+2]
       22 GETIMPORT                        R5 K10 [tostring]
       24 CALL                             R5 1 1
       25 CONCAT                           R3 R4 R5
       26 FASTCALL2                        ASSERT R2 R3 ; [+3]
       28 GETIMPORT                        R1 K2 [assert]
       30 CALL                             R1 2 0
       31 GETUPVAL                         R1 1
       32 GETTABLEKS                       R1 R1 K11 ["init"]
       34 GETUPVAL                         R2 0
       35 CALL                             R1 1 0
       36 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        3 LOADK                            R3 K0 ["plugin was nil"]
        4 GETIMPORT                        R1 K2 [assert]
        6 CALL                             R1 2 0
        7 SETUPVAL                         R0 1
        8 GETUPVAL                         R1 2
        9 CALL                             R1 0 0
       10 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        3 LOADK                            R3 K0 ["plugin was nil"]
        4 GETIMPORT                        R1 K2 [assert]
        6 CALL                             R1 2 0
        7 SETUPVAL                         R0 1
        8 GETUPVAL                         R1 2
        9 CALL                             R1 0 0
       10 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 JUMPIFNOTEQ                      R0 R1 ; [+3]
        4 LOADNIL                          R0
        5 SETUPVAL                         R0 0
        6 GETUPVAL                         R0 2
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 0
        8 GETUPVAL                         R2 1
        9 FASTCALL2K                       ASSERT R2 K1 ; [+4]
       11 LOADK                            R3 K1 ["plugin was nil"]
       12 GETIMPORT                        R1 K3 [assert]
       14 CALL                             R1 2 0
       15 GETUPVAL                         R1 1
       16 GETTABLEKS                       R1 R1 K4 ["MultipleDocumentInterfaceInstance"]
       18 GETTABLEKS                       R2 R1 K5 ["FocusedDataModelSession"]
       20 JUMPIFNOT                        R2 ; [+3]
       21 GETTABLEKS                       R4 R2 K6 ["CurrentDataModelType"]
       23 JUMP                             ; [+2]
       24 GETIMPORT                        R4 K10 [Enum.StudioDataModelType.None]
       26 FASTCALL1                        TOSTRING R4 ; [+2]
       27 GETIMPORT                        R3 K12 [tostring]
       29 CALL                             R3 1 1
       30 MOVE                             R0 R3
       31 GETIMPORT                        R2 K10 [Enum.StudioDataModelType.None]
       33 FASTCALL1                        TOSTRING R2 ; [+2]
       34 GETIMPORT                        R1 K12 [tostring]
       36 CALL                             R1 1 1
       37 JUMPIFEQ                         R0 R1 ; [+13]
       39 GETUPVAL                         R1 1
       40 LOADK                            R4 K13 ["OnDMJoined"]
       41 MOVE                             R5 R0
       42 CONCAT                           R3 R4 R5
       43 NEWCLOSURE                       R4 P0
       44 CAPTURE                          UPVAL U2
       45 CAPTURE                          VAL R0
       46 CAPTURE                          UPVAL U3
       47 NAMECALL                         R1 R1 K14 ["OnInvoke"]
       49 CALL                             R1 3 1
       50 SETUPVAL                         R1 0
       51 GETUPVAL                         R1 3
       52 CALL                             R1 0 0
       53 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 NAMECALL                         R5 R4 K0 ["Disconnect"]
        6 CALL                             R5 1 0
        7 FORGLOOP                         R0 2 ; [-4]
        9 GETIMPORT                        R0 K3 [table.clear]
       11 GETUPVAL                         R1 0
       12 CALL                             R0 1 0
       13 GETUPVAL                         R1 1
       14 FASTCALL2K                       ASSERT R1 K4 ; [+4]
       16 LOADK                            R2 K4 ["plugin was nil"]
       17 GETIMPORT                        R0 K6 [assert]
       19 CALL                             R0 2 0
       20 GETUPVAL                         R0 2
       21 JUMPIF                           R0 ; [+1]
       22 JUMP                             ; [+10]
       23 GETUPVAL                         R0 2
       24 LOADNIL                          R1
       25 SETUPVAL                         R1 2
       26 GETUPVAL                         R1 1
       27 LOADK                            R4 K7 ["OnViewClosed"]
       28 MOVE                             R5 R0
       29 CONCAT                           R3 R4 R5
       30 NAMECALL                         R1 R1 K8 ["Invoke"]
       32 CALL                             R1 2 0
       33 GETUPVAL                         R0 3
       34 GETTABLEKS                       R0 R0 K9 ["FocusedDataModelSession"]
       36 JUMPIFNOT                        R0 ; [+22]
       37 GETUPVAL                         R2 0
       38 GETTABLEKS                       R3 R0 K10 ["CurrentDataModelTypeAboutToChange"]
       40 GETUPVAL                         R5 4
       41 NAMECALL                         R3 R3 K11 ["Connect"]
       43 CALL                             R3 2 -1
       44 FASTCALL                         TABLE_INSERT ; [+2]
       45 GETIMPORT                        R1 K13 [table.insert]
       47 CALL                             R1 -1 0
       48 GETUPVAL                         R2 0
       49 GETTABLEKS                       R3 R0 K14 ["CurrentDataModelTypeChanged"]
       51 GETUPVAL                         R5 5
       52 NAMECALL                         R3 R3 K11 ["Connect"]
       54 CALL                             R3 2 -1
       55 FASTCALL                         TABLE_INSERT ; [+2]
       56 GETIMPORT                        R1 K13 [table.insert]
       58 CALL                             R1 -1 0
       59 GETUPVAL                         R1 5
       60 CALL                             R1 0 0
       61 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 NAMECALL                         R5 R4 K0 ["Disconnect"]
        6 CALL                             R5 1 0
        7 FORGLOOP                         R0 2 ; [-4]
        9 GETUPVAL                         R0 1
       10 LOADNIL                          R1
       11 LOADNIL                          R2
       12 FORGPREP                         R0
       13 NAMECALL                         R5 R4 K0 ["Disconnect"]
       15 CALL                             R5 1 0
       16 FORGLOOP                         R0 2 ; [-4]
       18 GETUPVAL                         R0 2
       19 JUMPIFNOT                        R0 ; [+4]
       20 GETUPVAL                         R0 2
       21 NAMECALL                         R0 R0 K0 ["Disconnect"]
       23 CALL                             R0 1 0
       24 GETUPVAL                         R1 3
       25 FASTCALL2K                       ASSERT R1 K1 ; [+4]
       27 LOADK                            R2 K1 ["plugin was nil"]
       28 GETIMPORT                        R0 K3 [assert]
       30 CALL                             R0 2 0
       31 GETUPVAL                         R0 4
       32 JUMPIF                           R0 ; [+1]
       33 RETURN                           R0 0
       34 GETUPVAL                         R0 4
       35 LOADNIL                          R1
       36 SETUPVAL                         R1 4
       37 GETUPVAL                         R1 3
       38 LOADK                            R4 K4 ["OnViewClosed"]
       39 MOVE                             R5 R0
       40 CONCAT                           R3 R4 R5
       41 NAMECALL                         R1 R1 K5 ["Invoke"]
       43 CALL                             R1 2 0
       44 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        3 LOADK                            R2 K0 ["plugin was nil"]
        4 GETIMPORT                        R0 K2 [assert]
        6 CALL                             R0 2 0
        7 GETUPVAL                         R0 0
        8 GETTABLEKS                       R0 R0 K3 ["MultipleDocumentInterfaceInstance"]
       10 LOADNIL                          R1
       11 NEWTABLE                         R2 0 0
       13 NEWCLOSURE                       R3 P0
       14 CAPTURE                          REF R1
       15 CAPTURE                          UPVAL U0
       16 CAPTURE                          UPVAL U1
       17 CAPTURE                          UPVAL U2
       18 NEWCLOSURE                       R4 P1
       19 CAPTURE                          VAL R2
       20 CAPTURE                          UPVAL U0
       21 CAPTURE                          UPVAL U1
       22 CAPTURE                          VAL R0
       23 CAPTURE                          UPVAL U3
       24 CAPTURE                          VAL R3
       25 NEWTABLE                         R5 0 2
       27 GETTABLEKS                       R6 R0 K4 ["DataModelSessionStarted"]
       29 MOVE                             R8 R4
       30 NAMECALL                         R6 R6 K5 ["Connect"]
       32 CALL                             R6 2 1
       33 GETTABLEKS                       R7 R0 K6 ["DataModelSessionEnded"]
       35 MOVE                             R9 R4
       36 NAMECALL                         R7 R7 K5 ["Connect"]
       38 CALL                             R7 2 -1
       39 SETLIST                          R5 R6 -1 [1]
       41 MOVE                             R6 R4
       42 CALL                             R6 0 0
       43 NEWCLOSURE                       R6 P2
       44 CAPTURE                          VAL R5
       45 CAPTURE                          VAL R2
       46 CAPTURE                          REF R1
       47 CAPTURE                          UPVAL U0
       48 CAPTURE                          UPVAL U1
       49 CLOSEUPVALS                      R1
       50 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AudioViewportVisualizations"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["AudioSourceTracker"]
       15 CALL                             R1 1 1
       16 DUPTABLE                         R2 K11 [{"Asset", "Standalone"}]
       17 NEWTABLE                         R3 0 0
       19 SETTABLEKS                       R3 R2 K9 ["Asset"]
       21 NEWTABLE                         R3 0 0
       23 SETTABLEKS                       R3 R2 K10 ["Standalone"]
       25 LOADNIL                          R3
       26 LOADNIL                          R4
       27 LOADB                            R5 0
       28 LOADB                            R6 1
       29 NEWCLOSURE                       R7 P0
       30 CAPTURE                          REF R3
       31 NEWCLOSURE                       R8 P1
       32 CAPTURE                          REF R3
       33 CAPTURE                          REF R4
       34 NEWCLOSURE                       R9 P2
       35 CAPTURE                          REF R3
       36 CAPTURE                          REF R5
       37 CAPTURE                          REF R4
       38 CAPTURE                          REF R6
       39 NEWCLOSURE                       R10 P3
       40 CAPTURE                          REF R3
       41 CAPTURE                          VAL R1
       42 GETTABLEKS                       R11 R2 K9 ["Asset"]
       44 SETTABLEKS                       R10 R11 K12 ["init"]
       46 NEWCLOSURE                       R10 P4
       47 CAPTURE                          REF R3
       48 CAPTURE                          VAL R1
       49 GETTABLEKS                       R11 R2 K10 ["Standalone"]
       51 SETTABLEKS                       R10 R11 K12 ["init"]
       53 NEWCLOSURE                       R10 P5
       54 CAPTURE                          REF R5
       55 GETTABLEKS                       R11 R2 K10 ["Standalone"]
       57 SETTABLEKS                       R10 R11 K13 ["isShowSourcesEnabled"]
       59 NEWCLOSURE                       R10 P6
       60 CAPTURE                          REF R6
       61 GETTABLEKS                       R11 R2 K10 ["Standalone"]
       63 SETTABLEKS                       R10 R11 K14 ["isShowInactiveEnabled"]
       65 NEWCLOSURE                       R10 P7
       66 CAPTURE                          REF R3
       67 CAPTURE                          REF R5
       68 CAPTURE                          VAL R9
       69 GETTABLEKS                       R11 R2 K10 ["Standalone"]
       71 SETTABLEKS                       R10 R11 K15 ["setShowSourcesEnabled"]
       73 NEWCLOSURE                       R10 P8
       74 CAPTURE                          REF R3
       75 CAPTURE                          REF R6
       76 CAPTURE                          VAL R9
       77 GETTABLEKS                       R11 R2 K10 ["Standalone"]
       79 SETTABLEKS                       R10 R11 K16 ["setShowInactiveEnabled"]
       81 NEWCLOSURE                       R10 P9
       82 CAPTURE                          REF R3
       83 CAPTURE                          REF R4
       84 CAPTURE                          VAL R9
       85 CAPTURE                          VAL R8
       86 GETTABLEKS                       R11 R2 K10 ["Standalone"]
       88 SETTABLEKS                       R10 R11 K17 ["setUpMainView"]
       90 CLOSEUPVALS                      R3
       91 RETURN                           R2 1
