PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["getWhenReady"]
        3 CALL                             R0 1 1
        4 JUMPIFNOTEQKNIL                  R0 ; [+4]
        6 NEWTABLE                         R1 0 0
        8 RETURN                           R1 1
        9 GETUPVAL                         R2 1
       10 GETTABLE                         R1 R0 R2
       11 JUMPIFEQKNIL                     R1 ; [+8]
       13 FASTCALL1                        TYPEOF R1 ; [+3]
       14 MOVE                             R3 R1
       15 GETIMPORT                        R2 K2 [typeof]
       17 CALL                             R2 1 1
       18 JUMPIFEQKS                       R2 K3 ["string"] ; [+4]
       20 NEWTABLE                         R2 0 0
       22 RETURN                           R2 1
       23 GETUPVAL                         R3 2
       24 GETTABLEKS                       R2 R3 K4 ["parseCommaDelimitedList"]
       26 MOVE                             R3 R1
       27 CALL                             R2 1 -1
       28 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 GETUPVAL                         R6 1
        5 GETTABLEKS                       R5 R6 K0 ["unregisterTool"]
        7 MOVE                             R6 R3
        8 CALL                             R5 1 0
        9 FORGLOOP                         R0 2 ; [-6]
       11 GETIMPORT                        R0 K3 [table.clear]
       13 GETUPVAL                         R1 2
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 NEWTABLE                         R1 0 0
        4 GETUPVAL                         R2 1
        5 LOADNIL                          R3
        6 LOADNIL                          R4
        7 FORGPREP                         R2
        8 GETTABLE                         R7 R0 R5
        9 JUMPIF                           R7 ; [+7]
       10 GETUPVAL                         R8 2
       11 GETTABLE                         R7 R8 R5
       12 JUMPIF                           R7 ; [+4]
       13 SETTABLE                         R6 R1 R5
       14 GETUPVAL                         R7 2
       15 LOADB                            R8 1
       16 SETTABLE                         R8 R7 R5
       17 FORGLOOP                         R2 2 ; [-10]
       19 GETUPVAL                         R2 3
       20 CALL                             R2 0 1
       21 JUMPIFNOT                        R2 ; [+25]
       22 GETUPVAL                         R2 4
       23 LOADNIL                          R3
       24 LOADNIL                          R4
       25 FORGPREP                         R2
       26 GETUPVAL                         R8 5
       27 GETTABLEKS                       R7 R8 K0 ["getExperimentFeatureEnabled"]
       29 MOVE                             R8 R5
       30 CALL                             R7 1 1
       31 JUMPIFNOT                        R7 ; [+13]
       32 MOVE                             R8 R6
       33 LOADNIL                          R9
       34 LOADNIL                          R10
       35 FORGPREP                         R8
       36 GETUPVAL                         R14 2
       37 GETTABLE                         R13 R14 R11
       38 JUMPIF                           R13 ; [+4]
       39 SETTABLE                         R12 R1 R11
       40 GETUPVAL                         R13 2
       41 LOADB                            R14 1
       42 SETTABLE                         R14 R13 R11
       43 FORGLOOP                         R8 2 ; [-8]
       45 FORGLOOP                         R2 2 ; [-20]
       47 GETUPVAL                         R4 6
       48 GETTABLEKS                       R3 R4 K1 ["Tools"]
       50 GETTABLEKS                       R2 R3 K2 ["createTools"]
       52 GETUPVAL                         R3 7
       53 MOVE                             R4 R1
       54 CALL                             R2 2 1
       55 GETUPVAL                         R3 7
       56 NAMECALL                         R3 R3 K3 ["IsGuest"]
       58 CALL                             R3 1 1
       59 JUMPIFNOT                        R3 ; [+7]
       60 GETUPVAL                         R5 6
       61 GETTABLEKS                       R4 R5 K1 ["Tools"]
       63 GETTABLEKS                       R3 R4 K4 ["registerTools"]
       65 MOVE                             R4 R2
       66 CALL                             R3 1 0
       67 MOVE                             R3 R2
       68 LOADNIL                          R4
       69 LOADNIL                          R5
       70 FORGPREP                         R3
       71 GETUPVAL                         R8 8
       72 GETTABLEKS                       R11 R7 K5 ["definition"]
       74 GETTABLEKS                       R10 R11 K5 ["definition"]
       76 GETTABLEKS                       R9 R10 K6 ["name"]
       78 LOADB                            R10 1
       79 SETTABLE                         R10 R8 R9
       80 FORGLOOP                         R3 2 ; [-10]
       82 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R1 K2 [task.spawn]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CAPTURE                          UPVAL U6
       10 CAPTURE                          UPVAL U7
       11 CAPTURE                          UPVAL U8
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R1 K3 [Enum.IXPLoadingStatus.None]
        2 JUMPIFNOTEQ                      R0 R1 ; [+17]
        4 GETUPVAL                         R1 0
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 GETUPVAL                         R7 1
        9 GETTABLEKS                       R6 R7 K4 ["unregisterTool"]
       11 MOVE                             R7 R4
       12 CALL                             R6 1 0
       13 FORGLOOP                         R1 2 ; [-6]
       15 GETIMPORT                        R1 K7 [table.clear]
       17 GETUPVAL                         R2 2
       18 CALL                             R1 1 0
       19 RETURN                           R0 0
       20 GETIMPORT                        R1 K9 [Enum.IXPLoadingStatus.Initialized]
       22 JUMPIFNOTEQ                      R0 R1 ; [+16]
       24 GETIMPORT                        R1 K11 [plugin]
       26 GETIMPORT                        R2 K14 [task.spawn]
       28 NEWCLOSURE                       R3 P0
       29 CAPTURE                          UPVAL U3
       30 CAPTURE                          UPVAL U4
       31 CAPTURE                          UPVAL U2
       32 CAPTURE                          UPVAL U5
       33 CAPTURE                          UPVAL U6
       34 CAPTURE                          UPVAL U7
       35 CAPTURE                          UPVAL U8
       36 CAPTURE                          UPVAL U9
       37 CAPTURE                          UPVAL U0
       38 CALL                             R2 1 0
       39 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+18]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R0 R1 K0 ["OnCreatorLayerLoadingStatusChanged"]
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          UPVAL U5
       10 CAPTURE                          UPVAL U6
       11 CAPTURE                          UPVAL U7
       12 CAPTURE                          UPVAL U8
       13 CAPTURE                          UPVAL U9
       14 CAPTURE                          UPVAL U10
       15 CAPTURE                          UPVAL U11
       16 NAMECALL                         R0 R0 K1 ["Connect"]
       18 CALL                             R0 2 1
       19 SETUPVAL                         R0 0
       20 GETIMPORT                        R0 K3 [plugin]
       22 GETIMPORT                        R1 K6 [task.spawn]
       24 NEWCLOSURE                       R2 P1
       25 CAPTURE                          UPVAL U5
       26 CAPTURE                          UPVAL U6
       27 CAPTURE                          UPVAL U4
       28 CAPTURE                          UPVAL U7
       29 CAPTURE                          UPVAL U8
       30 CAPTURE                          UPVAL U9
       31 CAPTURE                          UPVAL U10
       32 CAPTURE                          UPVAL U11
       33 CAPTURE                          UPVAL U2
       34 CALL                             R1 1 0
       35 RETURN                           R0 0

PROTO_6:
        0 LOADNIL                          R4
        1 NEWTABLE                         R5 0 0
        3 NEWTABLE                         R6 0 0
        5 GETUPVAL                         R7 0
        6 CALL                             R7 0 1
        7 GETUPVAL                         R9 1
        8 GETTABLEKS                       R8 R9 K0 ["new"]
       10 MOVE                             R9 R0
       11 GETUPVAL                         R10 2
       12 CALL                             R10 0 -1
       13 CALL                             R8 -1 1
       14 NEWCLOSURE                       R9 P0
       15 CAPTURE                          VAL R8
       16 CAPTURE                          VAL R7
       17 CAPTURE                          UPVAL U1
       18 NEWCLOSURE                       R10 P1
       19 CAPTURE                          VAL R6
       20 CAPTURE                          UPVAL U3
       21 CAPTURE                          VAL R5
       22 NEWCLOSURE                       R11 P2
       23 CAPTURE                          VAL R9
       24 CAPTURE                          VAL R2
       25 CAPTURE                          VAL R5
       26 CAPTURE                          UPVAL U4
       27 CAPTURE                          VAL R3
       28 CAPTURE                          UPVAL U5
       29 CAPTURE                          UPVAL U6
       30 CAPTURE                          VAL R1
       31 CAPTURE                          VAL R6
       32 NEWCLOSURE                       R12 P3
       33 CAPTURE                          REF R4
       34 CAPTURE                          VAL R0
       35 CAPTURE                          VAL R6
       36 CAPTURE                          UPVAL U3
       37 CAPTURE                          VAL R5
       38 CAPTURE                          VAL R9
       39 CAPTURE                          VAL R2
       40 CAPTURE                          UPVAL U4
       41 CAPTURE                          VAL R3
       42 CAPTURE                          UPVAL U5
       43 CAPTURE                          UPVAL U6
       44 CAPTURE                          VAL R1
       45 DUPTABLE                         R13 K2 [{"trackUserLoggedIn"}]
       46 SETTABLEKS                       R12 R13 K1 ["trackUserLoggedIn"]
       48 CLOSEUPVALS                      R4
       49 RETURN                           R13 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 1 0
        3 GETIMPORT                        R1 K1 [script]
        5 LOADK                            R3 K2 ["Assistant"]
        6 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        8 CALL                             R1 2 1
        9 GETIMPORT                        R2 K5 [require]
       11 GETTABLEKS                       R4 R1 K6 ["Packages"]
       13 GETTABLEKS                       R3 R4 K7 ["AssistantUI"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R5 R1 K6 ["Packages"]
       20 GETTABLEKS                       R4 R5 K8 ["DMNetworking"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R7 R1 K9 ["Src"]
       27 GETTABLEKS                       R6 R7 K10 ["Util"]
       29 GETTABLEKS                       R5 R6 K11 ["ExperimentCache"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K5 [require]
       34 GETTABLEKS                       R8 R1 K9 ["Src"]
       36 GETTABLEKS                       R7 R8 K10 ["Util"]
       38 GETTABLEKS                       R6 R7 K12 ["ExperimentFeature"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K5 [require]
       43 GETTABLEKS                       R9 R1 K9 ["Src"]
       45 GETTABLEKS                       R8 R9 K13 ["Flags"]
       47 GETTABLEKS                       R7 R8 K14 ["FStringAssistantDisabledToolsKey"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K5 [require]
       52 GETTABLEKS                       R10 R1 K9 ["Src"]
       54 GETTABLEKS                       R9 R10 K13 ["Flags"]
       56 GETTABLEKS                       R8 R9 K15 ["FStringNewAssistantExperimentLayer"]
       58 CALL                             R7 1 1
       59 GETTABLEKS                       R10 R2 K13 ["Flags"]
       61 GETTABLEKS                       R9 R10 K16 ["Shared"]
       63 GETTABLEKS                       R8 R9 K17 ["FFlagAssistantTestAutomation"]
       65 GETTABLEKS                       R9 R2 K18 ["UIToolRegistry"]
       67 DUPCLOSURE                       R10 K19 [PROTO_6]
       68 CAPTURE                          VAL R6
       69 CAPTURE                          VAL R4
       70 CAPTURE                          VAL R7
       71 CAPTURE                          VAL R9
       72 CAPTURE                          VAL R8
       73 CAPTURE                          VAL R5
       74 CAPTURE                          VAL R2
       75 SETTABLEKS                       R10 R0 K20 ["new"]
       77 RETURN                           R0 1
