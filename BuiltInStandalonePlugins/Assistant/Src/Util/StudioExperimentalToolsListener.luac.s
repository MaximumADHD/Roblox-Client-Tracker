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
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 0
        8 GETUPVAL                         R0 1
        9 JUMPIFNOT                        R0 ; [+6]
       10 GETUPVAL                         R0 1
       11 NAMECALL                         R0 R0 K1 ["Fire"]
       13 CALL                             R0 1 0
       14 LOADNIL                          R0
       15 SETUPVAL                         R0 1
       16 RETURN                           R0 0

PROTO_2:
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
       15 GETUPVAL                         R0 3
       16 JUMPIFNOT                        R0 ; [+6]
       17 GETUPVAL                         R0 3
       18 NAMECALL                         R0 R0 K4 ["Disconnect"]
       20 CALL                             R0 1 0
       21 LOADNIL                          R0
       22 SETUPVAL                         R0 3
       23 GETUPVAL                         R0 4
       24 JUMPIFNOT                        R0 ; [+6]
       25 GETUPVAL                         R0 4
       26 NAMECALL                         R0 R0 K5 ["Fire"]
       28 CALL                             R0 1 0
       29 LOADNIL                          R0
       30 SETUPVAL                         R0 4
       31 RETURN                           R0 0

PROTO_3:
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
       45 GETTABLEKS                       R2 R2 K1 ["FFlagAssistantUseNewDMNetworking"]
       47 JUMPIFNOT                        R2 ; [+18]
       48 GETUPVAL                         R2 6
       49 JUMPIF                           R2 ; [+16]
       50 GETUPVAL                         R2 7
       51 GETTABLEKS                       R2 R2 K2 ["new"]
       53 CALL                             R2 0 1
       54 SETUPVAL                         R2 6
       55 GETUPVAL                         R2 8
       56 GETTABLEKS                       R2 R2 K3 ["get"]
       58 CALL                             R2 0 1
       59 GETTABLEKS                       R3 R2 K4 ["Destroying"]
       61 GETUPVAL                         R5 10
       62 NAMECALL                         R3 R3 K5 ["Once"]
       64 CALL                             R3 2 1
       65 SETUPVAL                         R3 9
       66 GETUPVAL                         R2 11
       67 GETTABLEKS                       R2 R2 K6 ["Tools"]
       69 GETTABLEKS                       R2 R2 K7 ["createTools"]
       71 DUPTABLE                         R3 K13 [{"tools", "networkingOLD", "net", "bridges", "destroying"}]
       72 SETTABLEKS                       R1 R3 K8 ["tools"]
       74 GETUPVAL                         R4 12
       75 SETTABLEKS                       R4 R3 K9 ["networkingOLD"]
       77 GETUPVAL                         R4 13
       78 SETTABLEKS                       R4 R3 K10 ["net"]
       80 GETUPVAL                         R4 14
       81 SETTABLEKS                       R4 R3 K11 ["bridges"]
       83 GETUPVAL                         R4 6
       84 SETTABLEKS                       R4 R3 K12 ["destroying"]
       86 CALL                             R2 1 1
       87 GETUPVAL                         R3 15
       88 JUMPIFNOT                        R3 ; [+7]
       89 GETUPVAL                         R3 11
       90 GETTABLEKS                       R3 R3 K6 ["Tools"]
       92 GETTABLEKS                       R3 R3 K14 ["registerTools"]
       94 MOVE                             R4 R2
       95 CALL                             R3 1 0
       96 MOVE                             R3 R2
       97 LOADNIL                          R4
       98 LOADNIL                          R5
       99 FORGPREP                         R3
      100 GETUPVAL                         R8 16
      101 GETTABLEKS                       R9 R7 K15 ["definition"]
      103 GETTABLEKS                       R9 R9 K15 ["definition"]
      105 GETTABLEKS                       R9 R9 K16 ["name"]
      107 LOADB                            R10 1
      108 SETTABLE                         R10 R8 R9
      109 FORGLOOP                         R3 2 ; [-10]
      111 RETURN                           R0 0

PROTO_4:
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
       12 CAPTURE                          UPVAL U9
       13 CAPTURE                          UPVAL U10
       14 CAPTURE                          UPVAL U11
       15 CAPTURE                          UPVAL U12
       16 CAPTURE                          UPVAL U13
       17 CAPTURE                          UPVAL U14
       18 CAPTURE                          UPVAL U15
       19 CAPTURE                          UPVAL U16
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R1 K3 [Enum.IXPLoadingStatus.None]
        2 JUMPIFNOTEQ                      R0 R1 ; [+33]
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
       19 GETUPVAL                         R1 3
       20 JUMPIFNOT                        R1 ; [+6]
       21 GETUPVAL                         R1 3
       22 NAMECALL                         R1 R1 K8 ["Disconnect"]
       24 CALL                             R1 1 0
       25 LOADNIL                          R1
       26 SETUPVAL                         R1 3
       27 GETUPVAL                         R1 4
       28 JUMPIFNOT                        R1 ; [+34]
       29 GETUPVAL                         R1 4
       30 NAMECALL                         R1 R1 K9 ["Fire"]
       32 CALL                             R1 1 0
       33 LOADNIL                          R1
       34 SETUPVAL                         R1 4
       35 RETURN                           R0 0
       36 GETIMPORT                        R1 K11 [Enum.IXPLoadingStatus.Initialized]
       38 JUMPIFNOTEQ                      R0 R1 ; [+24]
       40 GETIMPORT                        R1 K13 [plugin]
       42 GETIMPORT                        R2 K16 [task.spawn]
       44 NEWCLOSURE                       R3 P0
       45 CAPTURE                          UPVAL U5
       46 CAPTURE                          UPVAL U6
       47 CAPTURE                          UPVAL U2
       48 CAPTURE                          UPVAL U7
       49 CAPTURE                          UPVAL U8
       50 CAPTURE                          UPVAL U9
       51 CAPTURE                          UPVAL U4
       52 CAPTURE                          UPVAL U10
       53 CAPTURE                          UPVAL U11
       54 CAPTURE                          UPVAL U3
       55 CAPTURE                          UPVAL U12
       56 CAPTURE                          UPVAL U13
       57 CAPTURE                          UPVAL U14
       58 CAPTURE                          UPVAL U15
       59 CAPTURE                          UPVAL U16
       60 CAPTURE                          UPVAL U17
       61 CAPTURE                          UPVAL U0
       62 CALL                             R2 1 0
       63 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+26]
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
       15 CAPTURE                          UPVAL U11
       16 CAPTURE                          UPVAL U12
       17 CAPTURE                          UPVAL U13
       18 CAPTURE                          UPVAL U14
       19 CAPTURE                          UPVAL U15
       20 CAPTURE                          UPVAL U16
       21 CAPTURE                          UPVAL U17
       22 CAPTURE                          UPVAL U18
       23 CAPTURE                          UPVAL U19
       24 NAMECALL                         R0 R0 K1 ["Connect"]
       26 CALL                             R0 2 1
       27 SETUPVAL                         R0 0
       28 GETIMPORT                        R0 K3 [plugin]
       30 GETIMPORT                        R1 K6 [task.spawn]
       32 NEWCLOSURE                       R2 P1
       33 CAPTURE                          UPVAL U7
       34 CAPTURE                          UPVAL U8
       35 CAPTURE                          UPVAL U4
       36 CAPTURE                          UPVAL U9
       37 CAPTURE                          UPVAL U10
       38 CAPTURE                          UPVAL U11
       39 CAPTURE                          UPVAL U6
       40 CAPTURE                          UPVAL U12
       41 CAPTURE                          UPVAL U13
       42 CAPTURE                          UPVAL U5
       43 CAPTURE                          UPVAL U14
       44 CAPTURE                          UPVAL U15
       45 CAPTURE                          UPVAL U16
       46 CAPTURE                          UPVAL U17
       47 CAPTURE                          UPVAL U18
       48 CAPTURE                          UPVAL U19
       49 CAPTURE                          UPVAL U2
       50 CALL                             R1 1 0
       51 RETURN                           R0 0

PROTO_7:
        0 LOADNIL                          R7
        1 NEWTABLE                         R8 0 0
        3 NEWTABLE                         R9 0 0
        5 LOADNIL                          R10
        6 LOADNIL                          R11
        7 GETUPVAL                         R12 0
        8 GETTABLEKS                       R12 R12 K0 ["FStringAssistantDisabledToolsKey"]
       10 GETUPVAL                         R13 1
       11 GETTABLEKS                       R13 R13 K1 ["new"]
       13 MOVE                             R14 R0
       14 GETUPVAL                         R15 0
       15 GETTABLEKS                       R15 R15 K2 ["FStringNewAssistantExperimentLayer"]
       17 CALL                             R13 2 1
       18 NEWCLOSURE                       R14 P0
       19 CAPTURE                          VAL R13
       20 CAPTURE                          VAL R12
       21 CAPTURE                          UPVAL U1
       22 NEWCLOSURE                       R15 P1
       23 CAPTURE                          REF R11
       24 CAPTURE                          REF R10
       25 NEWCLOSURE                       R16 P2
       26 CAPTURE                          VAL R9
       27 CAPTURE                          UPVAL U2
       28 CAPTURE                          VAL R8
       29 CAPTURE                          REF R11
       30 CAPTURE                          REF R10
       31 NEWCLOSURE                       R17 P3
       32 CAPTURE                          VAL R14
       33 CAPTURE                          VAL R3
       34 CAPTURE                          VAL R8
       35 CAPTURE                          VAL R4
       36 CAPTURE                          UPVAL U3
       37 CAPTURE                          UPVAL U0
       38 CAPTURE                          REF R10
       39 CAPTURE                          UPVAL U4
       40 CAPTURE                          UPVAL U5
       41 CAPTURE                          REF R11
       42 CAPTURE                          VAL R15
       43 CAPTURE                          UPVAL U6
       44 CAPTURE                          VAL R1
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R5
       47 CAPTURE                          VAL R6
       48 CAPTURE                          VAL R9
       49 NEWCLOSURE                       R18 P4
       50 CAPTURE                          REF R7
       51 CAPTURE                          VAL R0
       52 CAPTURE                          VAL R9
       53 CAPTURE                          UPVAL U2
       54 CAPTURE                          VAL R8
       55 CAPTURE                          REF R11
       56 CAPTURE                          REF R10
       57 CAPTURE                          VAL R14
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R4
       60 CAPTURE                          UPVAL U3
       61 CAPTURE                          UPVAL U0
       62 CAPTURE                          UPVAL U4
       63 CAPTURE                          UPVAL U5
       64 CAPTURE                          VAL R15
       65 CAPTURE                          UPVAL U6
       66 CAPTURE                          VAL R1
       67 CAPTURE                          VAL R2
       68 CAPTURE                          VAL R5
       69 CAPTURE                          VAL R6
       70 DUPTABLE                         R19 K4 [{"trackUserLoggedIn"}]
       71 SETTABLEKS                       R18 R19 K3 ["trackUserLoggedIn"]
       73 CLOSEUPVALS                      R7
       74 RETURN                           R19 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 1 0
        3 GETIMPORT                        R1 K1 [script]
        5 LOADK                            R3 K2 ["Assistant"]
        6 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        8 CALL                             R1 2 1
        9 GETTABLEKS                       R2 R1 K4 ["Packages"]
       11 GETIMPORT                        R3 K6 [require]
       13 GETTABLEKS                       R4 R2 K7 ["AssistantUI"]
       15 CALL                             R3 1 1
       16 GETIMPORT                        R4 K6 [require]
       18 GETTABLEKS                       R5 R2 K8 ["DMNetworking"]
       20 CALL                             R4 1 1
       21 GETIMPORT                        R5 K6 [require]
       23 GETTABLEKS                       R6 R2 K9 ["DMNetworkingOLD"]
       25 CALL                             R5 1 1
       26 GETIMPORT                        R6 K6 [require]
       28 GETTABLEKS                       R7 R2 K10 ["Signal"]
       30 CALL                             R6 1 1
       31 GETIMPORT                        R7 K6 [require]
       33 GETTABLEKS                       R8 R1 K11 ["Src"]
       35 GETTABLEKS                       R8 R8 K12 ["Util"]
       37 GETTABLEKS                       R8 R8 K13 ["ExperimentCache"]
       39 CALL                             R7 1 1
       40 GETIMPORT                        R8 K6 [require]
       42 GETTABLEKS                       R9 R1 K11 ["Src"]
       44 GETTABLEKS                       R9 R9 K12 ["Util"]
       46 GETTABLEKS                       R9 R9 K14 ["ExperimentFeature"]
       48 CALL                             R8 1 1
       49 GETIMPORT                        R9 K6 [require]
       51 GETTABLEKS                       R10 R1 K11 ["Src"]
       53 GETTABLEKS                       R10 R10 K15 ["Flags"]
       55 CALL                             R9 1 1
       56 GETTABLEKS                       R10 R3 K16 ["Guest"]
       58 GETTABLEKS                       R10 R10 K17 ["Environment"]
       60 GETTABLEKS                       R11 R3 K18 ["UIToolRegistry"]
       62 DUPCLOSURE                       R12 K19 [PROTO_7]
       63 CAPTURE                          VAL R9
       64 CAPTURE                          VAL R7
       65 CAPTURE                          VAL R11
       66 CAPTURE                          VAL R8
       67 CAPTURE                          VAL R6
       68 CAPTURE                          VAL R10
       69 CAPTURE                          VAL R3
       70 SETTABLEKS                       R12 R0 K20 ["new"]
       72 RETURN                           R0 1
