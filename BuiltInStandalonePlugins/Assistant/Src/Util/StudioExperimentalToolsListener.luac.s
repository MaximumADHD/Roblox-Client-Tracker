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
       23 GETUPVAL                         R2 2
       24 GETTABLEKS                       R2 R2 K4 ["parseCommaDelimitedList"]
       26 MOVE                             R3 R1
       27 CALL                             R2 1 -1
       28 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 GETUPVAL                         R5 1
        5 GETTABLEKS                       R5 R5 K0 ["unregisterTool"]
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
       20 LOADNIL                          R3
       21 LOADNIL                          R4
       22 FORGPREP                         R2
       23 GETUPVAL                         R7 4
       24 GETTABLEKS                       R7 R7 K0 ["getExperimentFeatureEnabled"]
       26 MOVE                             R8 R5
       27 CALL                             R7 1 1
       28 JUMPIFNOT                        R7 ; [+13]
       29 MOVE                             R8 R6
       30 LOADNIL                          R9
       31 LOADNIL                          R10
       32 FORGPREP                         R8
       33 GETUPVAL                         R14 2
       34 GETTABLE                         R13 R14 R11
       35 JUMPIF                           R13 ; [+4]
       36 SETTABLE                         R12 R1 R11
       37 GETUPVAL                         R13 2
       38 LOADB                            R14 1
       39 SETTABLE                         R14 R13 R11
       40 FORGLOOP                         R8 2 ; [-8]
       42 FORGLOOP                         R2 2 ; [-20]
       44 GETUPVAL                         R2 5
       45 GETTABLEKS                       R2 R2 K1 ["Tools"]
       47 GETTABLEKS                       R2 R2 K2 ["createTools"]
       49 GETUPVAL                         R3 6
       50 MOVE                             R4 R1
       51 CALL                             R2 2 1
       52 GETUPVAL                         R3 6
       53 NAMECALL                         R3 R3 K3 ["IsGuest"]
       55 CALL                             R3 1 1
       56 JUMPIFNOT                        R3 ; [+7]
       57 GETUPVAL                         R3 5
       58 GETTABLEKS                       R3 R3 K1 ["Tools"]
       60 GETTABLEKS                       R3 R3 K4 ["registerTools"]
       62 MOVE                             R4 R2
       63 CALL                             R3 1 0
       64 MOVE                             R3 R2
       65 LOADNIL                          R4
       66 LOADNIL                          R5
       67 FORGPREP                         R3
       68 GETUPVAL                         R8 7
       69 GETTABLEKS                       R9 R7 K5 ["definition"]
       71 GETTABLEKS                       R9 R9 K5 ["definition"]
       73 GETTABLEKS                       R9 R9 K6 ["name"]
       75 LOADB                            R10 1
       76 SETTABLE                         R10 R8 R9
       77 FORGLOOP                         R3 2 ; [-10]
       79 RETURN                           R0 0

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
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R1 K3 [Enum.IXPLoadingStatus.None]
        2 JUMPIFNOTEQ                      R0 R1 ; [+17]
        4 GETUPVAL                         R1 0
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 GETUPVAL                         R6 1
        9 GETTABLEKS                       R6 R6 K4 ["unregisterTool"]
       11 MOVE                             R7 R4
       12 CALL                             R6 1 0
       13 FORGLOOP                         R1 2 ; [-6]
       15 GETIMPORT                        R1 K7 [table.clear]
       17 GETUPVAL                         R2 2
       18 CALL                             R1 1 0
       19 RETURN                           R0 0
       20 GETIMPORT                        R1 K9 [Enum.IXPLoadingStatus.Initialized]
       22 JUMPIFNOTEQ                      R0 R1 ; [+15]
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
       36 CAPTURE                          UPVAL U0
       37 CALL                             R2 1 0
       38 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+17]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["OnCreatorLayerLoadingStatusChanged"]
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
       15 NAMECALL                         R0 R0 K1 ["Connect"]
       17 CALL                             R0 2 1
       18 SETUPVAL                         R0 0
       19 GETIMPORT                        R0 K3 [plugin]
       21 GETIMPORT                        R1 K6 [task.spawn]
       23 NEWCLOSURE                       R2 P1
       24 CAPTURE                          UPVAL U5
       25 CAPTURE                          UPVAL U6
       26 CAPTURE                          UPVAL U4
       27 CAPTURE                          UPVAL U7
       28 CAPTURE                          UPVAL U8
       29 CAPTURE                          UPVAL U9
       30 CAPTURE                          UPVAL U10
       31 CAPTURE                          UPVAL U2
       32 CALL                             R1 1 0
       33 RETURN                           R0 0

PROTO_6:
        0 LOADNIL                          R4
        1 NEWTABLE                         R5 0 0
        3 NEWTABLE                         R6 0 0
        5 GETUPVAL                         R7 0
        6 CALL                             R7 0 1
        7 GETUPVAL                         R8 1
        8 GETTABLEKS                       R8 R8 K0 ["new"]
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
       26 CAPTURE                          VAL R3
       27 CAPTURE                          UPVAL U4
       28 CAPTURE                          UPVAL U5
       29 CAPTURE                          VAL R1
       30 CAPTURE                          VAL R6
       31 NEWCLOSURE                       R12 P3
       32 CAPTURE                          REF R4
       33 CAPTURE                          VAL R0
       34 CAPTURE                          VAL R6
       35 CAPTURE                          UPVAL U3
       36 CAPTURE                          VAL R5
       37 CAPTURE                          VAL R9
       38 CAPTURE                          VAL R2
       39 CAPTURE                          VAL R3
       40 CAPTURE                          UPVAL U4
       41 CAPTURE                          UPVAL U5
       42 CAPTURE                          VAL R1
       43 DUPTABLE                         R13 K2 [{"trackUserLoggedIn"}]
       44 SETTABLEKS                       R12 R13 K1 ["trackUserLoggedIn"]
       46 CLOSEUPVALS                      R4
       47 RETURN                           R13 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 1 0
        3 GETIMPORT                        R1 K1 [script]
        5 LOADK                            R3 K2 ["Assistant"]
        6 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        8 CALL                             R1 2 1
        9 GETIMPORT                        R2 K5 [require]
       11 GETTABLEKS                       R3 R1 K6 ["Packages"]
       13 GETTABLEKS                       R3 R3 K7 ["AssistantUI"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R1 K6 ["Packages"]
       20 GETTABLEKS                       R4 R4 K8 ["DMNetworking"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R5 R1 K9 ["Src"]
       27 GETTABLEKS                       R5 R5 K10 ["Util"]
       29 GETTABLEKS                       R5 R5 K11 ["ExperimentCache"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K5 [require]
       34 GETTABLEKS                       R6 R1 K9 ["Src"]
       36 GETTABLEKS                       R6 R6 K10 ["Util"]
       38 GETTABLEKS                       R6 R6 K12 ["ExperimentFeature"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K5 [require]
       43 GETTABLEKS                       R7 R1 K9 ["Src"]
       45 GETTABLEKS                       R7 R7 K13 ["Flags"]
       47 GETTABLEKS                       R7 R7 K14 ["FStringAssistantDisabledToolsKey"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K5 [require]
       52 GETTABLEKS                       R8 R1 K9 ["Src"]
       54 GETTABLEKS                       R8 R8 K13 ["Flags"]
       56 GETTABLEKS                       R8 R8 K15 ["FStringNewAssistantExperimentLayer"]
       58 CALL                             R7 1 1
       59 GETTABLEKS                       R8 R2 K16 ["UIToolRegistry"]
       61 DUPCLOSURE                       R9 K17 [PROTO_6]
       62 CAPTURE                          VAL R6
       63 CAPTURE                          VAL R4
       64 CAPTURE                          VAL R7
       65 CAPTURE                          VAL R8
       66 CAPTURE                          VAL R5
       67 CAPTURE                          VAL R2
       68 SETTABLEKS                       R9 R0 K18 ["new"]
       70 RETURN                           R0 1
