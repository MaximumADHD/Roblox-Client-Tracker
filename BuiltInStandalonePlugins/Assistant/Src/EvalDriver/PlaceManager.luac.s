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
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 NEWCLOSURE                       R3 P1
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U3
        7 GETUPVAL                         R4 4
        8 GETTABLEKS                       R4 R4 K0 ["FFlagAssistantUseNewDMNetworking"]
       10 JUMPIFNOT                        R4 ; [+55]
       11 FASTCALL2K                       ASSERT R1 K1 ; [+5]
       13 MOVE                             R5 R1
       14 LOADK                            R6 K1 ["PlaceManager requires the new networking when FFlagAssistantUseNewDMNetworking is on"]
       15 GETIMPORT                        R4 K3 [assert]
       17 CALL                             R4 2 0
       18 GETUPVAL                         R4 6
       19 GETTABLEKS                       R4 R4 K4 ["new"]
       21 CALL                             R4 0 1
       22 SETUPVAL                         R4 5
       23 GETUPVAL                         R4 7
       24 GETTABLEKS                       R4 R4 K5 ["event"]
       26 MOVE                             R5 R1
       27 LOADK                            R6 K6 ["PlaceManager.EditDataModelEnded"]
       28 CALL                             R4 2 1
       29 GETUPVAL                         R5 7
       30 GETTABLEKS                       R5 R5 K5 ["event"]
       32 MOVE                             R6 R1
       33 LOADK                            R7 K7 ["PlaceManager.EditDataModelStarted"]
       34 CALL                             R5 2 1
       35 GETUPVAL                         R6 7
       36 GETTABLEKS                       R6 R6 K5 ["event"]
       38 MOVE                             R7 R1
       39 LOADK                            R8 K8 ["PlaceManager.CheckEditDataModelStarted"]
       40 CALL                             R6 2 1
       41 GETUPVAL                         R7 5
       42 MOVE                             R11 R2
       43 NAMECALL                         R9 R4 K9 ["Connect"]
       45 CALL                             R9 2 -1
       46 NAMECALL                         R7 R7 K10 ["Add"]
       48 CALL                             R7 -1 0
       49 GETUPVAL                         R7 5
       50 MOVE                             R11 R3
       51 NAMECALL                         R9 R5 K9 ["Connect"]
       53 CALL                             R9 2 -1
       54 NAMECALL                         R7 R7 K10 ["Add"]
       56 CALL                             R7 -1 0
       57 GETUPVAL                         R9 8
       58 GETTABLEKS                       R9 R9 K11 ["Identity"]
       60 GETTABLEKS                       R9 R9 K12 ["Edit"]
       62 NAMECALL                         R7 R6 K13 ["Fire"]
       64 CALL                             R7 2 0
       65 JUMP                             ; [+21]
       66 FASTCALL2K                       ASSERT R0 K14 ; [+5]
       68 MOVE                             R5 R0
       69 LOADK                            R6 K14 ["PlaceManager requires networking"]
       70 GETIMPORT                        R4 K3 [assert]
       72 CALL                             R4 2 0
       73 LOADK                            R6 K15 ["EditDataModelEnded"]
       74 MOVE                             R7 R2
       75 NAMECALL                         R4 R0 K16 ["OnGuestEvent"]
       77 CALL                             R4 3 0
       78 LOADK                            R6 K17 ["EditDataModelStarted"]
       79 MOVE                             R7 R3
       80 NAMECALL                         R4 R0 K16 ["OnGuestEvent"]
       82 CALL                             R4 3 0
       83 LOADK                            R6 K18 ["CheckEditDataModelStarted"]
       84 NAMECALL                         R4 R0 K19 ["FireHost"]
       86 CALL                             R4 2 0
       87 GETUPVAL                         R4 9
       88 GETTABLEKS                       R4 R4 K20 ["registerFunction"]
       90 LOADK                            R5 K21 ["waitForEditDataModelStarted"]
       91 NEWCLOSURE                       R6 P2
       92 CAPTURE                          UPVAL U1
       93 CAPTURE                          UPVAL U3
       94 CALL                             R4 2 0
       95 RETURN                           R0 0

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
       13 GETTABLEKS                       R0 R0 K1 ["FFlagAssistantUseNewDMNetworking"]
       15 JUMPIFNOT                        R0 ; [+4]
       16 GETUPVAL                         R0 2
       17 NAMECALL                         R0 R0 K2 ["Destroy"]
       19 CALL                             R0 1 0
       20 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_13:
        0 SETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R1
        3 MOVE                             R5 R2
        4 CALL                             R3 2 0
        5 GETTABLEKS                       R3 R0 K0 ["Unloading"]
        7 DUPCLOSURE                       R5 K1 [PROTO_12]
        8 CAPTURE                          UPVAL U2
        9 NAMECALL                         R3 R3 K2 ["Connect"]
       11 CALL                             R3 2 0
       12 RETURN                           R0 0

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
       26 GETTABLEKS                       R6 R1 K10 ["DMNetworkingOLD"]
       28 CALL                             R5 1 1
       29 GETIMPORT                        R6 K6 [require]
       31 GETTABLEKS                       R7 R1 K11 ["Signal"]
       33 CALL                             R6 1 1
       34 GETIMPORT                        R7 K6 [require]
       36 GETTABLEKS                       R8 R1 K12 ["StudioFoundation"]
       38 CALL                             R7 1 1
       39 GETIMPORT                        R8 K6 [require]
       41 GETTABLEKS                       R9 R0 K13 ["Src"]
       43 GETTABLEKS                       R9 R9 K14 ["Flags"]
       45 CALL                             R8 1 1
       46 GETTABLEKS                       R9 R2 K15 ["Utils"]
       48 GETTABLEKS                       R9 R9 K16 ["EvalFunctionRegistry"]
       50 GETTABLEKS                       R10 R7 K17 ["Util"]
       52 GETTABLEKS                       R10 R10 K18 ["StudioUri"]
       54 GETTABLEKS                       R11 R4 K19 ["Remote"]
       56 LOADNIL                          R12
       57 NEWTABLE                         R13 0 0
       59 LOADNIL                          R14
       60 LOADB                            R15 0
       61 GETTABLEKS                       R16 R6 K20 ["new"]
       63 CALL                             R16 0 1
       64 LOADB                            R17 0
       65 GETTABLEKS                       R18 R6 K20 ["new"]
       67 CALL                             R18 0 1
       68 LOADNIL                          R19
       69 LOADNIL                          R20
       70 LOADNIL                          R21
       71 GETTABLEKS                       R22 R6 K20 ["new"]
       73 CALL                             R22 0 1
       74 LOADNIL                          R23
       75 LOADNIL                          R24
       76 NEWCLOSURE                       R25 P0
       77 CAPTURE                          REF R19
       78 CAPTURE                          REF R20
       79 CAPTURE                          REF R21
       80 CAPTURE                          REF R12
       81 CAPTURE                          REF R23
       82 CAPTURE                          REF R24
       83 CAPTURE                          VAL R22
       84 NEWCLOSURE                       R26 P1
       85 CAPTURE                          REF R19
       86 CAPTURE                          REF R21
       87 CAPTURE                          REF R12
       88 CAPTURE                          VAL R8
       89 CAPTURE                          REF R20
       90 CAPTURE                          VAL R6
       91 CAPTURE                          REF R24
       92 NEWCLOSURE                       R27 P2
       93 CAPTURE                          VAL R10
       94 CAPTURE                          REF R12
       95 NEWCLOSURE                       R28 P3
       96 CAPTURE                          REF R17
       97 CAPTURE                          VAL R25
       98 CAPTURE                          VAL R10
       99 CAPTURE                          REF R12
      100 CAPTURE                          VAL R26
      101 CAPTURE                          REF R23
      102 CAPTURE                          VAL R18
      103 NEWCLOSURE                       R29 P4
      104 CAPTURE                          REF R17
      105 CAPTURE                          REF R15
      106 CAPTURE                          VAL R18
      107 CAPTURE                          VAL R16
      108 CAPTURE                          VAL R8
      109 CAPTURE                          REF R14
      110 CAPTURE                          VAL R3
      111 CAPTURE                          VAL R11
      112 CAPTURE                          VAL R4
      113 CAPTURE                          VAL R9
      114 NEWCLOSURE                       R30 P5
      115 CAPTURE                          REF R13
      116 CAPTURE                          VAL R8
      117 CAPTURE                          REF R14
      118 NEWCLOSURE                       R31 P6
      119 CAPTURE                          REF R12
      120 CAPTURE                          VAL R29
      121 CAPTURE                          VAL R30
      122 DUPTABLE                         R32 K23 [{"init", "closePlace"}]
      123 SETTABLEKS                       R31 R32 K21 ["init"]
      125 SETTABLEKS                       R28 R32 K22 ["closePlace"]
      127 CLOSEUPVALS                      R12
      128 RETURN                           R32 1
