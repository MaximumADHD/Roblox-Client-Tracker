PROTO_0:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["DestroyDialog"]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_1:
        0 SETUPVAL                         R0 0
        1 SETUPVAL                         R1 1
        2 GETTABLEKS                       R3 R1 K0 ["SecondaryButton"]
        4 GETTABLEKS                       R3 R3 K1 ["Uri"]
        6 SETUPVAL                         R3 2
        7 GETUPVAL                         R3 3
        8 NAMECALL                         R3 R3 K2 ["Fire"]
       10 CALL                             R3 1 0
       11 RETURN                           R0 0

PROTO_2:
        0 LOADNIL                          R0
        1 SETUPVAL                         R0 0
        2 LOADNIL                          R0
        3 SETUPVAL                         R0 1
        4 GETUPVAL                         R0 2
        5 LOADK                            R2 K0 ["DialogManagerUIBridge"]
        6 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        8 CALL                             R0 2 1
        9 GETTABLEKS                       R1 R0 K2 ["DestroyDialog"]
       11 DUPCLOSURE                       R3 K3 [PROTO_0]
       12 NAMECALL                         R1 R1 K4 ["Connect"]
       14 CALL                             R1 2 1
       15 SETUPVAL                         R1 3
       16 GETTABLEKS                       R1 R0 K5 ["ShowDialog"]
       18 NEWCLOSURE                       R3 P1
       19 CAPTURE                          UPVAL U0
       20 CAPTURE                          UPVAL U4
       21 CAPTURE                          UPVAL U1
       22 CAPTURE                          UPVAL U5
       23 NAMECALL                         R1 R1 K4 ["Connect"]
       25 CALL                             R1 2 -1
       26 RETURN                           R1 -1

PROTO_3:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 NAMECALL                         R0 R0 K0 ["Fire"]
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 2
        7 GETUPVAL                         R2 3
        8 GETUPVAL                         R3 4
        9 NAMECALL                         R0 R0 K1 ["ShowDialogAsync"]
       11 CALL                             R0 3 0
       12 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R0 K2 [task.wait]
        2 LOADK                            R1 K3 [0.1]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 0
        5 JUMPIFNOT                        R0 ; [+2]
        6 GETUPVAL                         R0 1
        7 JUMPIF                           R0 ; [+5]
        8 GETIMPORT                        R0 K5 [print]
       10 LOADK                            R1 K6 ["No confirmation dialog shown"]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0
       13 GETUPVAL                         R0 2
       14 LOADK                            R2 K7 ["DialogManagerUIBridge"]
       15 NAMECALL                         R0 R0 K8 ["GetPluginComponent"]
       17 CALL                             R0 2 1
       18 GETUPVAL                         R3 0
       19 DUPTABLE                         R4 K10 [{"SelectedButtonUri"}]
       20 GETUPVAL                         R5 1
       21 SETTABLEKS                       R5 R4 K9 ["SelectedButtonUri"]
       23 NAMECALL                         R1 R0 K11 ["UserInteractedAsync"]
       25 CALL                             R1 3 0
       26 GETUPVAL                         R1 2
       27 LOADK                            R3 K12 ["DialogManager"]
       28 NAMECALL                         R1 R1 K8 ["GetPluginComponent"]
       30 CALL                             R1 2 1
       31 GETIMPORT                        R2 K2 [task.wait]
       33 LOADK                            R3 K3 [0.1]
       34 CALL                             R2 1 0
       35 LOADB                            R2 0
       36 GETUPVAL                         R3 3
       37 GETTABLEKS                       R3 R3 K13 ["new"]
       39 CALL                             R3 0 1
       40 GETIMPORT                        R4 K15 [task.spawn]
       42 NEWCLOSURE                       R5 P0
       43 CAPTURE                          REF R2
       44 CAPTURE                          VAL R3
       45 CAPTURE                          VAL R1
       46 CAPTURE                          UPVAL U0
       47 CAPTURE                          UPVAL U4
       48 CALL                             R4 1 0
       49 JUMPIF                           R2 ; [+3]
       50 NAMECALL                         R4 R3 K16 ["Wait"]
       52 CALL                             R4 1 0
       53 GETIMPORT                        R4 K2 [task.wait]
       55 LOADK                            R5 K3 [0.1]
       56 CALL                             R4 1 0
       57 GETUPVAL                         R6 0
       58 NAMECALL                         R4 R1 K17 ["DestroyPersistentDialogAsync"]
       60 CALL                             R4 2 0
       61 LOADNIL                          R4
       62 SETUPVAL                         R4 4
       63 LOADNIL                          R4
       64 SETUPVAL                         R4 0
       65 LOADNIL                          R4
       66 SETUPVAL                         R4 1
       67 CLOSEUPVALS                      R2
       68 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["fromAction"]
        3 LOADK                            R1 K1 ["PlaceManagement"]
        4 LOADK                            R2 K2 ["Close"]
        5 CALL                             R0 2 1
        6 GETUPVAL                         R1 1
        7 LOADK                            R3 K3 ["Actions"]
        8 NAMECALL                         R1 R1 K4 ["GetPluginComponent"]
       10 CALL                             R1 2 1
       11 MOVE                             R4 R0
       12 NAMECALL                         R2 R1 K5 ["ActivateAsync"]
       14 CALL                             R2 2 0
       15 RETURN                           R0 0

PROTO_6:
        0 LOADB                            R1 0
        1 SETUPVAL                         R1 0
        2 JUMPIFNOT                        R0 ; [+27]
        3 GETUPVAL                         R1 1
        4 CALL                             R1 0 1
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R2 R2 K0 ["fromAction"]
        8 LOADK                            R3 K1 ["PlaceManagement"]
        9 LOADK                            R4 K2 ["Close"]
       10 CALL                             R2 2 1
       11 GETUPVAL                         R3 3
       12 LOADK                            R5 K3 ["Actions"]
       13 NAMECALL                         R3 R3 K4 ["GetPluginComponent"]
       15 CALL                             R3 2 1
       16 MOVE                             R6 R2
       17 NAMECALL                         R4 R3 K5 ["ActivateAsync"]
       19 CALL                             R4 2 0
       20 GETUPVAL                         R2 4
       21 CALL                             R2 0 0
       22 NAMECALL                         R2 R1 K6 ["Disconnect"]
       24 CALL                             R2 1 0
       25 GETUPVAL                         R2 5
       26 NAMECALL                         R2 R2 K6 ["Disconnect"]
       28 CALL                             R2 1 0
       29 JUMP                             ; [+15]
       30 GETUPVAL                         R1 2
       31 GETTABLEKS                       R1 R1 K0 ["fromAction"]
       33 LOADK                            R2 K1 ["PlaceManagement"]
       34 LOADK                            R3 K2 ["Close"]
       35 CALL                             R1 2 1
       36 GETUPVAL                         R2 3
       37 LOADK                            R4 K3 ["Actions"]
       38 NAMECALL                         R2 R2 K4 ["GetPluginComponent"]
       40 CALL                             R2 2 1
       41 MOVE                             R5 R1
       42 NAMECALL                         R3 R2 K5 ["ActivateAsync"]
       44 CALL                             R3 2 0
       45 GETUPVAL                         R1 0
       46 JUMPIF                           R1 ; [+4]
       47 GETUPVAL                         R1 6
       48 NAMECALL                         R1 R1 K7 ["Wait"]
       50 CALL                             R1 1 0
       51 GETIMPORT                        R1 K10 [task.wait]
       53 LOADN                            R2 1
       54 CALL                             R1 1 0
       55 RETURN                           R0 0

PROTO_7:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 LOADB                            R0 0
        3 SETUPVAL                         R0 1
        4 GETUPVAL                         R0 2
        5 NAMECALL                         R0 R0 K0 ["Fire"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_8:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 NAMECALL                         R0 R0 K0 ["Fire"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+4]
        2 GETUPVAL                         R0 1
        3 NAMECALL                         R0 R0 K0 ["Wait"]
        5 CALL                             R0 1 0
        6 LOADB                            R0 1
        7 RETURN                           R0 1

PROTO_10:
        0 LOADK                            R3 K0 ["EditDataModelEnded"]
        1 NEWCLOSURE                       R4 P0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 NAMECALL                         R1 R0 K1 ["OnGuestEvent"]
        7 CALL                             R1 3 0
        8 LOADK                            R3 K2 ["EditDataModelStarted"]
        9 NEWCLOSURE                       R4 P1
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          UPVAL U3
       12 NAMECALL                         R1 R0 K1 ["OnGuestEvent"]
       14 CALL                             R1 3 0
       15 LOADK                            R3 K3 ["CheckEditDataModelStarted"]
       16 NAMECALL                         R1 R0 K4 ["FireHost"]
       18 CALL                             R1 2 0
       19 GETUPVAL                         R1 4
       20 GETTABLEKS                       R1 R1 K5 ["registerFunction"]
       22 LOADK                            R2 K6 ["waitForEditDataModelStarted"]
       23 NEWCLOSURE                       R3 P2
       24 CAPTURE                          UPVAL U1
       25 CAPTURE                          UPVAL U3
       26 CALL                             R1 2 0
       27 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 NAMECALL                         R5 R4 K0 ["Disconnect"]
        6 CALL                             R5 1 0
        7 FORGLOOP                         R0 2 ; [-4]
        9 NEWTABLE                         R0 0 0
       11 SETUPVAL                         R0 0
       12 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 NAMECALL                         R5 R4 K0 ["Disconnect"]
        6 CALL                             R5 1 0
        7 FORGLOOP                         R0 2 ; [-4]
        9 NEWTABLE                         R0 0 0
       11 SETUPVAL                         R0 0
       12 RETURN                           R0 0

PROTO_13:
        0 SETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R1
        3 CALL                             R2 1 0
        4 GETTABLEKS                       R2 R0 K0 ["Unloading"]
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          UPVAL U2
        8 NAMECALL                         R2 R2 K1 ["Connect"]
       10 CALL                             R2 2 0
       11 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["AssistantUI"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["StudioFoundation"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["Util"]
       23 GETTABLEKS                       R3 R3 K10 ["StudioUri"]
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R5 R0 K6 ["Packages"]
       29 GETTABLEKS                       R5 R5 K11 ["DMNetworking"]
       31 CALL                             R4 1 1
       32 GETTABLEKS                       R5 R1 K12 ["Utils"]
       34 GETTABLEKS                       R5 R5 K13 ["EvalFunctionRegistry"]
       36 GETIMPORT                        R6 K5 [require]
       38 GETTABLEKS                       R7 R0 K6 ["Packages"]
       40 GETTABLEKS                       R7 R7 K14 ["Signal"]
       42 CALL                             R6 1 1
       43 LOADNIL                          R7
       44 NEWTABLE                         R8 0 0
       46 LOADB                            R9 0
       47 GETTABLEKS                       R10 R6 K15 ["new"]
       49 CALL                             R10 0 1
       50 LOADB                            R11 0
       51 GETTABLEKS                       R12 R6 K15 ["new"]
       53 CALL                             R12 0 1
       54 LOADNIL                          R13
       55 LOADNIL                          R14
       56 GETTABLEKS                       R15 R6 K15 ["new"]
       58 CALL                             R15 0 1
       59 LOADNIL                          R16
       60 LOADNIL                          R17
       61 NEWCLOSURE                       R18 P0
       62 CAPTURE                          REF R13
       63 CAPTURE                          REF R14
       64 CAPTURE                          REF R7
       65 CAPTURE                          REF R16
       66 CAPTURE                          REF R17
       67 CAPTURE                          VAL R15
       68 NEWCLOSURE                       R19 P1
       69 CAPTURE                          REF R13
       70 CAPTURE                          REF R14
       71 CAPTURE                          REF R7
       72 CAPTURE                          VAL R6
       73 CAPTURE                          REF R17
       74 NEWCLOSURE                       R20 P2
       75 CAPTURE                          VAL R3
       76 CAPTURE                          REF R7
       77 NEWCLOSURE                       R21 P3
       78 CAPTURE                          REF R11
       79 CAPTURE                          VAL R18
       80 CAPTURE                          VAL R3
       81 CAPTURE                          REF R7
       82 CAPTURE                          VAL R19
       83 CAPTURE                          REF R16
       84 CAPTURE                          VAL R12
       85 NEWCLOSURE                       R22 P4
       86 CAPTURE                          REF R11
       87 CAPTURE                          REF R9
       88 CAPTURE                          VAL R12
       89 CAPTURE                          VAL R10
       90 CAPTURE                          VAL R5
       91 NEWCLOSURE                       R23 P5
       92 CAPTURE                          REF R8
       93 NEWCLOSURE                       R24 P6
       94 CAPTURE                          REF R7
       95 CAPTURE                          VAL R22
       96 CAPTURE                          REF R8
       97 DUPTABLE                         R25 K18 [{"init", "closePlace"}]
       98 SETTABLEKS                       R24 R25 K16 ["init"]
      100 SETTABLEKS                       R21 R25 K17 ["closePlace"]
      102 CLOSEUPVALS                      R7
      103 RETURN                           R25 1
