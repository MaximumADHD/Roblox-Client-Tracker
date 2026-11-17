PROTO_0:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["DestroyDialog"]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_1:
        0 SETUPVAL                         R0 0
        1 SETUPVAL                         R3 1
        2 SETUPVAL                         R1 2
        3 GETTABLEKS                       R4 R1 K0 ["SecondaryButton"]
        5 GETTABLEKS                       R4 R4 K1 ["Uri"]
        7 SETUPVAL                         R4 3
        8 GETUPVAL                         R4 4
        9 NAMECALL                         R4 R4 K2 ["Fire"]
       11 CALL                             R4 1 0
       12 RETURN                           R0 0

PROTO_2:
        0 LOADNIL                          R0
        1 SETUPVAL                         R0 0
        2 LOADNIL                          R0
        3 SETUPVAL                         R0 1
        4 LOADNIL                          R0
        5 SETUPVAL                         R0 2
        6 GETUPVAL                         R0 3
        7 LOADK                            R2 K0 ["DialogManagerUIBridge"]
        8 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
       10 CALL                             R0 2 1
       11 GETTABLEKS                       R1 R0 K2 ["DestroyDialog"]
       13 DUPCLOSURE                       R3 K3 [PROTO_0]
       14 NAMECALL                         R1 R1 K4 ["Connect"]
       16 CALL                             R1 2 1
       17 SETUPVAL                         R1 4
       18 GETTABLEKS                       R1 R0 K5 ["ShowDialog"]
       20 NEWCLOSURE                       R3 P1
       21 CAPTURE                          UPVAL U0
       22 CAPTURE                          UPVAL U1
       23 CAPTURE                          UPVAL U5
       24 CAPTURE                          UPVAL U2
       25 CAPTURE                          UPVAL U6
       26 NAMECALL                         R1 R1 K4 ["Connect"]
       28 CALL                             R1 2 -1
       29 RETURN                           R1 -1

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
       19 DUPTABLE                         R4 K11 [{"SelectedButtonUri", "WasSuppressionRequested"}]
       20 GETUPVAL                         R5 1
       21 SETTABLEKS                       R5 R4 K9 ["SelectedButtonUri"]
       23 GETUPVAL                         R6 3
       24 GETTABLEKS                       R6 R6 K12 ["FFlagStudioDialogManagerSuppression"]
       26 JUMPIFNOT                        R6 ; [+2]
       27 LOADB                            R5 0
       28 JUMP                             ; [+1]
       29 LOADNIL                          R5
       30 SETTABLEKS                       R5 R4 K10 ["WasSuppressionRequested"]
       32 GETUPVAL                         R5 4
       33 NAMECALL                         R1 R0 K13 ["UserInteractedAsync"]
       35 CALL                             R1 4 0
       36 GETUPVAL                         R1 2
       37 LOADK                            R3 K14 ["DialogManager"]
       38 NAMECALL                         R1 R1 K8 ["GetPluginComponent"]
       40 CALL                             R1 2 1
       41 GETIMPORT                        R2 K2 [task.wait]
       43 LOADK                            R3 K3 [0.1]
       44 CALL                             R2 1 0
       45 LOADB                            R2 0
       46 GETUPVAL                         R3 5
       47 GETTABLEKS                       R3 R3 K15 ["new"]
       49 CALL                             R3 0 1
       50 GETIMPORT                        R4 K17 [task.spawn]
       52 NEWCLOSURE                       R5 P0
       53 CAPTURE                          REF R2
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R1
       56 CAPTURE                          UPVAL U0
       57 CAPTURE                          UPVAL U6
       58 CALL                             R4 1 0
       59 JUMPIF                           R2 ; [+3]
       60 NAMECALL                         R4 R3 K18 ["Wait"]
       62 CALL                             R4 1 0
       63 GETIMPORT                        R4 K2 [task.wait]
       65 LOADK                            R5 K3 [0.1]
       66 CALL                             R4 1 0
       67 GETUPVAL                         R6 0
       68 NAMECALL                         R4 R1 K19 ["DestroyPersistentDialogAsync"]
       70 CALL                             R4 2 0
       71 LOADNIL                          R4
       72 SETUPVAL                         R4 6
       73 LOADNIL                          R4
       74 SETUPVAL                         R4 0
       75 LOADNIL                          R4
       76 SETUPVAL                         R4 4
       77 LOADNIL                          R4
       78 SETUPVAL                         R4 1
       79 CLOSEUPVALS                      R2
       80 RETURN                           R0 0

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
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 NEWCLOSURE                       R2 P1
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U3
        7 GETUPVAL                         R3 5
        8 GETTABLEKS                       R3 R3 K0 ["new"]
       10 CALL                             R3 0 1
       11 SETUPVAL                         R3 4
       12 GETUPVAL                         R3 6
       13 GETTABLEKS                       R3 R3 K1 ["event"]
       15 MOVE                             R4 R0
       16 LOADK                            R5 K2 ["EditDataModelEnded"]
       17 CALL                             R3 2 1
       18 GETUPVAL                         R4 6
       19 GETTABLEKS                       R4 R4 K1 ["event"]
       21 MOVE                             R5 R0
       22 LOADK                            R6 K3 ["EditDataModelStarted"]
       23 CALL                             R4 2 1
       24 GETUPVAL                         R5 6
       25 GETTABLEKS                       R5 R5 K1 ["event"]
       27 MOVE                             R6 R0
       28 LOADK                            R7 K4 ["CheckEditDataModelStarted"]
       29 CALL                             R5 2 1
       30 GETUPVAL                         R6 4
       31 MOVE                             R10 R1
       32 NAMECALL                         R8 R3 K5 ["Connect"]
       34 CALL                             R8 2 -1
       35 NAMECALL                         R6 R6 K6 ["Add"]
       37 CALL                             R6 -1 0
       38 GETUPVAL                         R6 4
       39 MOVE                             R10 R2
       40 NAMECALL                         R8 R4 K5 ["Connect"]
       42 CALL                             R8 2 -1
       43 NAMECALL                         R6 R6 K6 ["Add"]
       45 CALL                             R6 -1 0
       46 GETUPVAL                         R8 7
       47 GETTABLEKS                       R8 R8 K7 ["Identity"]
       49 GETTABLEKS                       R8 R8 K8 ["Edit"]
       51 NAMECALL                         R6 R5 K9 ["Fire"]
       53 CALL                             R6 2 0
       54 GETUPVAL                         R6 8
       55 GETTABLEKS                       R6 R6 K10 ["registerFunction"]
       57 LOADK                            R7 K11 ["waitForEditDataModelStarted"]
       58 NEWCLOSURE                       R8 P2
       59 CAPTURE                          UPVAL U1
       60 CAPTURE                          UPVAL U3
       61 CALL                             R6 2 0
       62 RETURN                           R0 0

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
       12 GETUPVAL                         R0 1
       13 NAMECALL                         R0 R0 K1 ["Destroy"]
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_13:
        0 SETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R1
        3 CALL                             R2 1 0
        4 GETTABLEKS                       R2 R0 K0 ["Unloading"]
        6 DUPCLOSURE                       R4 K1 [PROTO_12]
        7 CAPTURE                          UPVAL U2
        8 NAMECALL                         R2 R2 K2 ["Connect"]
       10 CALL                             R2 2 0
       11 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["AssistantUI"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Bin"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["DMNetworking"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R1 K10 ["Signal"]
       28 CALL                             R5 1 1
       29 GETIMPORT                        R6 K6 [require]
       31 GETTABLEKS                       R7 R1 K11 ["StudioFoundation"]
       33 CALL                             R6 1 1
       34 GETIMPORT                        R7 K6 [require]
       36 GETTABLEKS                       R8 R0 K12 ["Src"]
       38 GETTABLEKS                       R8 R8 K13 ["Flags"]
       40 CALL                             R7 1 1
       41 GETTABLEKS                       R8 R2 K14 ["Utils"]
       43 GETTABLEKS                       R8 R8 K15 ["EvalFunctionRegistry"]
       45 GETTABLEKS                       R9 R6 K16 ["Util"]
       47 GETTABLEKS                       R9 R9 K17 ["StudioUri"]
       49 GETTABLEKS                       R10 R4 K18 ["Remote"]
       51 LOADNIL                          R11
       52 NEWTABLE                         R12 0 0
       54 LOADNIL                          R13
       55 LOADB                            R14 0
       56 GETTABLEKS                       R15 R5 K19 ["new"]
       58 CALL                             R15 0 1
       59 LOADB                            R16 0
       60 GETTABLEKS                       R17 R5 K19 ["new"]
       62 CALL                             R17 0 1
       63 LOADNIL                          R18
       64 LOADNIL                          R19
       65 LOADNIL                          R20
       66 GETTABLEKS                       R21 R5 K19 ["new"]
       68 CALL                             R21 0 1
       69 LOADNIL                          R22
       70 LOADNIL                          R23
       71 NEWCLOSURE                       R24 P0
       72 CAPTURE                          REF R18
       73 CAPTURE                          REF R19
       74 CAPTURE                          REF R20
       75 CAPTURE                          REF R11
       76 CAPTURE                          REF R22
       77 CAPTURE                          REF R23
       78 CAPTURE                          VAL R21
       79 NEWCLOSURE                       R25 P1
       80 CAPTURE                          REF R18
       81 CAPTURE                          REF R20
       82 CAPTURE                          REF R11
       83 CAPTURE                          VAL R7
       84 CAPTURE                          REF R19
       85 CAPTURE                          VAL R5
       86 CAPTURE                          REF R23
       87 NEWCLOSURE                       R26 P2
       88 CAPTURE                          VAL R9
       89 CAPTURE                          REF R11
       90 NEWCLOSURE                       R27 P3
       91 CAPTURE                          REF R16
       92 CAPTURE                          VAL R24
       93 CAPTURE                          VAL R9
       94 CAPTURE                          REF R11
       95 CAPTURE                          VAL R25
       96 CAPTURE                          REF R22
       97 CAPTURE                          VAL R17
       98 NEWCLOSURE                       R28 P4
       99 CAPTURE                          REF R16
      100 CAPTURE                          REF R14
      101 CAPTURE                          VAL R17
      102 CAPTURE                          VAL R15
      103 CAPTURE                          REF R13
      104 CAPTURE                          VAL R3
      105 CAPTURE                          VAL R10
      106 CAPTURE                          VAL R4
      107 CAPTURE                          VAL R8
      108 NEWCLOSURE                       R29 P5
      109 CAPTURE                          REF R12
      110 CAPTURE                          REF R13
      111 NEWCLOSURE                       R30 P6
      112 CAPTURE                          REF R11
      113 CAPTURE                          VAL R28
      114 CAPTURE                          VAL R29
      115 DUPTABLE                         R31 K22 [{"init", "closePlace"}]
      116 SETTABLEKS                       R30 R31 K20 ["init"]
      118 SETTABLEKS                       R27 R31 K21 ["closePlace"]
      120 CLOSEUPVALS                      R11
      121 RETURN                           R31 1
