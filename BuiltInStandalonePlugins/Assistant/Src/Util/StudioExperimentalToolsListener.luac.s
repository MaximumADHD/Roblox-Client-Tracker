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
       45 JUMPIF                           R2 ; [+16]
       46 GETUPVAL                         R2 6
       47 GETTABLEKS                       R2 R2 K1 ["new"]
       49 CALL                             R2 0 1
       50 SETUPVAL                         R2 5
       51 GETUPVAL                         R2 7
       52 GETTABLEKS                       R2 R2 K2 ["get"]
       54 CALL                             R2 0 1
       55 GETTABLEKS                       R3 R2 K3 ["Destroying"]
       57 GETUPVAL                         R5 9
       58 NAMECALL                         R3 R3 K4 ["Once"]
       60 CALL                             R3 2 1
       61 SETUPVAL                         R3 8
       62 GETUPVAL                         R2 10
       63 GETTABLEKS                       R2 R2 K5 ["Tools"]
       65 GETTABLEKS                       R2 R2 K6 ["createTools"]
       67 DUPTABLE                         R3 K10 [{"tools", "net", "destroying"}]
       68 SETTABLEKS                       R1 R3 K7 ["tools"]
       70 GETUPVAL                         R4 11
       71 SETTABLEKS                       R4 R3 K8 ["net"]
       73 GETUPVAL                         R4 5
       74 SETTABLEKS                       R4 R3 K9 ["destroying"]
       76 CALL                             R2 1 1
       77 GETUPVAL                         R3 12
       78 JUMPIFNOT                        R3 ; [+7]
       79 GETUPVAL                         R3 10
       80 GETTABLEKS                       R3 R3 K5 ["Tools"]
       82 GETTABLEKS                       R3 R3 K11 ["registerTools"]
       84 MOVE                             R4 R2
       85 CALL                             R3 1 0
       86 MOVE                             R3 R2
       87 LOADNIL                          R4
       88 LOADNIL                          R5
       89 FORGPREP                         R3
       90 GETUPVAL                         R8 13
       91 GETTABLEKS                       R9 R7 K12 ["definition"]
       93 GETTABLEKS                       R9 R9 K12 ["definition"]
       95 GETTABLEKS                       R9 R9 K13 ["name"]
       97 LOADB                            R10 1
       98 SETTABLE                         R10 R8 R9
       99 FORGLOOP                         R3 2 ; [-10]
      101 RETURN                           R0 0

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
       17 CALL                             R1 1 0
       18 RETURN                           R0 0

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
       28 JUMPIFNOT                        R1 ; [+31]
       29 GETUPVAL                         R1 4
       30 NAMECALL                         R1 R1 K9 ["Fire"]
       32 CALL                             R1 1 0
       33 LOADNIL                          R1
       34 SETUPVAL                         R1 4
       35 RETURN                           R0 0
       36 GETIMPORT                        R1 K11 [Enum.IXPLoadingStatus.Initialized]
       38 JUMPIFNOTEQ                      R0 R1 ; [+21]
       40 GETIMPORT                        R1 K13 [plugin]
       42 GETIMPORT                        R2 K16 [task.spawn]
       44 NEWCLOSURE                       R3 P0
       45 CAPTURE                          UPVAL U5
       46 CAPTURE                          UPVAL U6
       47 CAPTURE                          UPVAL U2
       48 CAPTURE                          UPVAL U7
       49 CAPTURE                          UPVAL U8
       50 CAPTURE                          UPVAL U4
       51 CAPTURE                          UPVAL U9
       52 CAPTURE                          UPVAL U10
       53 CAPTURE                          UPVAL U3
       54 CAPTURE                          UPVAL U11
       55 CAPTURE                          UPVAL U12
       56 CAPTURE                          UPVAL U13
       57 CAPTURE                          UPVAL U14
       58 CAPTURE                          UPVAL U0
       59 CALL                             R2 1 0
       60 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+23]
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
       21 NAMECALL                         R0 R0 K1 ["Connect"]
       23 CALL                             R0 2 1
       24 SETUPVAL                         R0 0
       25 GETIMPORT                        R0 K3 [plugin]
       27 GETIMPORT                        R1 K6 [task.spawn]
       29 NEWCLOSURE                       R2 P1
       30 CAPTURE                          UPVAL U7
       31 CAPTURE                          UPVAL U8
       32 CAPTURE                          UPVAL U4
       33 CAPTURE                          UPVAL U9
       34 CAPTURE                          UPVAL U10
       35 CAPTURE                          UPVAL U6
       36 CAPTURE                          UPVAL U11
       37 CAPTURE                          UPVAL U12
       38 CAPTURE                          UPVAL U5
       39 CAPTURE                          UPVAL U13
       40 CAPTURE                          UPVAL U14
       41 CAPTURE                          UPVAL U15
       42 CAPTURE                          UPVAL U16
       43 CAPTURE                          UPVAL U2
       44 CALL                             R1 1 0
       45 RETURN                           R0 0

PROTO_7:
        0 LOADNIL                          R5
        1 NEWTABLE                         R6 0 0
        3 NEWTABLE                         R7 0 0
        5 LOADNIL                          R8
        6 LOADNIL                          R9
        7 GETUPVAL                         R10 0
        8 GETTABLEKS                       R10 R10 K0 ["FStringAssistantDisabledToolsKey"]
       10 GETUPVAL                         R11 1
       11 GETTABLEKS                       R11 R11 K1 ["new"]
       13 MOVE                             R12 R0
       14 GETUPVAL                         R13 0
       15 GETTABLEKS                       R13 R13 K2 ["FStringNewAssistantExperimentLayer"]
       17 CALL                             R11 2 1
       18 NEWCLOSURE                       R12 P0
       19 CAPTURE                          VAL R11
       20 CAPTURE                          VAL R10
       21 CAPTURE                          UPVAL U1
       22 NEWCLOSURE                       R13 P1
       23 CAPTURE                          REF R9
       24 CAPTURE                          REF R8
       25 NEWCLOSURE                       R14 P2
       26 CAPTURE                          VAL R7
       27 CAPTURE                          UPVAL U2
       28 CAPTURE                          VAL R6
       29 CAPTURE                          REF R9
       30 CAPTURE                          REF R8
       31 NEWCLOSURE                       R15 P3
       32 CAPTURE                          VAL R12
       33 CAPTURE                          VAL R2
       34 CAPTURE                          VAL R6
       35 CAPTURE                          VAL R3
       36 CAPTURE                          UPVAL U3
       37 CAPTURE                          REF R8
       38 CAPTURE                          UPVAL U4
       39 CAPTURE                          UPVAL U5
       40 CAPTURE                          REF R9
       41 CAPTURE                          VAL R13
       42 CAPTURE                          UPVAL U6
       43 CAPTURE                          VAL R1
       44 CAPTURE                          VAL R4
       45 CAPTURE                          VAL R7
       46 NEWCLOSURE                       R16 P4
       47 CAPTURE                          REF R5
       48 CAPTURE                          VAL R0
       49 CAPTURE                          VAL R7
       50 CAPTURE                          UPVAL U2
       51 CAPTURE                          VAL R6
       52 CAPTURE                          REF R9
       53 CAPTURE                          REF R8
       54 CAPTURE                          VAL R12
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R3
       57 CAPTURE                          UPVAL U3
       58 CAPTURE                          UPVAL U4
       59 CAPTURE                          UPVAL U5
       60 CAPTURE                          VAL R13
       61 CAPTURE                          UPVAL U6
       62 CAPTURE                          VAL R1
       63 CAPTURE                          VAL R4
       64 DUPTABLE                         R17 K4 [{"trackUserLoggedIn"}]
       65 SETTABLEKS                       R16 R17 K3 ["trackUserLoggedIn"]
       67 CLOSEUPVALS                      R5
       68 RETURN                           R17 1

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
       23 GETTABLEKS                       R6 R2 K9 ["Signal"]
       25 CALL                             R5 1 1
       26 GETIMPORT                        R6 K6 [require]
       28 GETTABLEKS                       R7 R1 K10 ["Src"]
       30 GETTABLEKS                       R7 R7 K11 ["Util"]
       32 GETTABLEKS                       R7 R7 K12 ["ExperimentCache"]
       34 CALL                             R6 1 1
       35 GETIMPORT                        R7 K6 [require]
       37 GETTABLEKS                       R8 R1 K10 ["Src"]
       39 GETTABLEKS                       R8 R8 K11 ["Util"]
       41 GETTABLEKS                       R8 R8 K13 ["ExperimentFeature"]
       43 CALL                             R7 1 1
       44 GETIMPORT                        R8 K6 [require]
       46 GETTABLEKS                       R9 R1 K10 ["Src"]
       48 GETTABLEKS                       R9 R9 K14 ["Flags"]
       50 CALL                             R8 1 1
       51 GETTABLEKS                       R9 R3 K15 ["Guest"]
       53 GETTABLEKS                       R9 R9 K16 ["Environment"]
       55 GETTABLEKS                       R10 R3 K17 ["UIToolRegistry"]
       57 DUPCLOSURE                       R11 K18 [PROTO_7]
       58 CAPTURE                          VAL R8
       59 CAPTURE                          VAL R6
       60 CAPTURE                          VAL R10
       61 CAPTURE                          VAL R7
       62 CAPTURE                          VAL R5
       63 CAPTURE                          VAL R9
       64 CAPTURE                          VAL R3
       65 SETTABLEKS                       R11 R0 K19 ["new"]
       67 RETURN                           R0 1
