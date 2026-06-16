PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFNOTEQKS                    R3 K2 ["number"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       11 LOADK                            R3 K3 ["attempted to insert with invalid parameter id type"]
       12 GETIMPORT                        R1 K5 [assert]
       14 CALL                             R1 2 0
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R1 R1 K6 ["observeViewportRect"]
       18 LOADB                            R2 0
       19 CALL                             R1 1 1
       20 GETUPVAL                         R2 1
       21 GETTABLEKS                       R2 R2 K7 ["getNodeInsertPosition"]
       23 MOVE                             R3 R1
       24 CALL                             R2 1 1
       25 LOADK                            R4 K8 ["%*Parameter"]
       26 MOVE                             R6 R0
       27 NAMECALL                         R4 R4 K9 ["format"]
       29 CALL                             R4 2 1
       30 MOVE                             R3 R4
       31 MOVE                             R4 R3
       32 GETUPVAL                         R5 2
       33 GETTABLEKS                       R5 R5 K10 ["observeParameters"]
       35 LOADB                            R6 0
       36 CALL                             R5 1 1
       37 JUMPIF                           R5 ; [+2]
       38 NEWTABLE                         R5 0 0
       40 LOADN                            R6 0
       41 GETTABLE                         R7 R5 R4
       42 JUMPIFEQKNIL                     R7 ; [+10]
       44 ADDK                             R6 R6 K11 [1]
       45 LOADK                            R7 K12 ["%*%*"]
       46 MOVE                             R9 R3
       47 MOVE                             R10 R6
       48 NAMECALL                         R7 R7 K9 ["format"]
       50 CALL                             R7 3 1
       51 MOVE                             R4 R7
       52 JUMPBACK                         ; [-12]
       53 GETUPVAL                         R7 3
       54 GETTABLEKS                       R7 R7 K13 ["createParameter"]
       56 DUPTABLE                         R8 K18 [{"parameterType", "parameterName", "pinPosition", "initializeWithValue"}]
       57 SETTABLEKS                       R0 R8 K14 ["parameterType"]
       59 SETTABLEKS                       R4 R8 K15 ["parameterName"]
       61 SETTABLEKS                       R2 R8 K16 ["pinPosition"]
       63 GETUPVAL                         R9 2
       64 GETTABLEKS                       R9 R9 K19 ["getDefaultValue"]
       66 JUMPIFNOT                        R9 ; [+5]
       67 GETUPVAL                         R9 2
       68 GETTABLEKS                       R9 R9 K19 ["getDefaultValue"]
       70 MOVE                             R10 R0
       71 CALL                             R9 1 1
       72 SETTABLEKS                       R9 R8 K17 ["initializeWithValue"]
       74 CALL                             R7 1 0
       75 GETUPVAL                         R7 4
       76 JUMPIFEQKNIL                     R7 ; [+3]
       78 GETUPVAL                         R7 4
       79 CALL                             R7 0 0
       80 RETURN                           R0 0

PROTO_1:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["string"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       11 LOADK                            R3 K3 ["existing parameter name must be a string"]
       12 GETIMPORT                        R1 K5 [assert]
       14 CALL                             R1 2 0
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R1 R1 K6 ["observeViewportRect"]
       18 LOADB                            R2 0
       19 CALL                             R1 1 1
       20 GETUPVAL                         R2 1
       21 GETTABLEKS                       R2 R2 K7 ["getNodeInsertPosition"]
       23 MOVE                             R3 R1
       24 CALL                             R2 1 1
       25 GETUPVAL                         R3 2
       26 GETTABLEKS                       R3 R3 K8 ["createExistingParameterAsync"]
       28 DUPTABLE                         R4 K12 [{"parameterName", "pinPosition", "initializeWithValue"}]
       29 SETTABLEKS                       R0 R4 K9 ["parameterName"]
       31 SETTABLEKS                       R2 R4 K10 ["pinPosition"]
       33 GETUPVAL                         R6 3
       34 GETTABLE                         R5 R6 R0
       35 SETTABLEKS                       R5 R4 K11 ["initializeWithValue"]
       37 CALL                             R3 1 0
       38 GETUPVAL                         R3 4
       39 JUMPIFEQKNIL                     R3 ; [+3]
       41 GETUPVAL                         R3 4
       42 CALL                             R3 0 0
       43 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 FASTCALL2                        TABLE_INSERT R0 R4 ; [+5]
        8 MOVE                             R7 R0
        9 MOVE                             R8 R4
       10 GETIMPORT                        R6 K2 [table.insert]
       12 CALL                             R6 2 0
       13 FORGLOOP                         R1 1 ; [-8]
       15 GETIMPORT                        R1 K4 [table.sort]
       17 MOVE                             R2 R0
       18 CALL                             R1 1 0
       19 RETURN                           R0 1

PROTO_3:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["parameterMenuItems"]
        5 JUMPIF                           R1 ; [+3]
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K1 ["PARAMETER_MENUITEM_TABLE"]
        9 MOVE                             R2 R1
       10 LOADNIL                          R3
       11 LOADNIL                          R4
       12 FORGPREP                         R2
       13 GETIMPORT                        R7 K4 [table.clone]
       15 MOVE                             R8 R6
       16 CALL                             R7 1 1
       17 MOVE                             R6 R7
       18 GETUPVAL                         R7 2
       19 SETTABLEKS                       R7 R6 K5 ["onActivated"]
       21 SETTABLE                         R6 R0 R5
       22 FORGLOOP                         R2 2 ; [-10]
       24 GETUPVAL                         R2 3
       25 CALL                             R2 0 1
       26 JUMPIFNOT                        R2 ; [+2]
       27 GETUPVAL                         R2 4
       28 JUMPIF                           R2 ; [+1]
       29 RETURN                           R0 1
       30 NEWTABLE                         R2 0 1
       32 DUPTABLE                         R3 K8 [{"title", "items"}]
       33 LOADK                            R4 K9 ["New Parameter"]
       34 SETTABLEKS                       R4 R3 K6 ["title"]
       36 SETTABLEKS                       R0 R3 K7 ["items"]
       38 SETLIST                          R2 R3 1 [1]
       40 GETUPVAL                         R4 5
       41 LENGTH                           R3 R4
       42 LOADN                            R4 0
       43 JUMPIFNOTLT                      R4 R3 ; [+35]
       45 NEWTABLE                         R3 0 0
       47 GETUPVAL                         R4 5
       48 LOADNIL                          R5
       49 LOADNIL                          R6
       50 FORGPREP                         R4
       51 DUPTABLE                         R11 K12 [{"id", "text", "onActivated"}]
       52 SETTABLEKS                       R8 R11 K10 ["id"]
       54 SETTABLEKS                       R8 R11 K11 ["text"]
       56 GETUPVAL                         R12 6
       57 SETTABLEKS                       R12 R11 K5 ["onActivated"]
       59 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       61 MOVE                             R10 R3
       62 GETIMPORT                        R9 K14 [table.insert]
       64 CALL                             R9 2 0
       65 FORGLOOP                         R4 2 ; [-15]
       67 DUPTABLE                         R6 K8 [{"title", "items"}]
       68 LOADK                            R7 K15 ["Existing Parameters"]
       69 SETTABLEKS                       R7 R6 K6 ["title"]
       71 SETTABLEKS                       R3 R6 K7 ["items"]
       73 FASTCALL2                        TABLE_INSERT R2 R6 ; [+4]
       75 MOVE                             R5 R2
       76 GETIMPORT                        R4 K14 [table.insert]
       78 CALL                             R4 2 0
       79 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["Context"]
        6 CALL                             R2 1 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K0 ["useContext"]
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R4 R4 K1 ["Context"]
       13 CALL                             R3 1 1
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R4 R4 K0 ["useContext"]
       17 GETUPVAL                         R5 3
       18 GETTABLEKS                       R5 R5 K1 ["Context"]
       20 CALL                             R4 1 1
       21 GETUPVAL                         R5 4
       22 CALL                             R5 0 1
       23 GETUPVAL                         R6 5
       24 GETTABLEKS                       R6 R6 K2 ["useEventCallback"]
       26 NEWCLOSURE                       R7 P0
       27 CAPTURE                          VAL R4
       28 CAPTURE                          UPVAL U6
       29 CAPTURE                          VAL R3
       30 CAPTURE                          VAL R2
       31 CAPTURE                          VAL R0
       32 CALL                             R6 1 1
       33 GETUPVAL                         R7 5
       34 GETTABLEKS                       R7 R7 K2 ["useEventCallback"]
       36 NEWCLOSURE                       R8 P1
       37 CAPTURE                          VAL R4
       38 CAPTURE                          UPVAL U6
       39 CAPTURE                          VAL R2
       40 CAPTURE                          VAL R5
       41 CAPTURE                          VAL R0
       42 CALL                             R7 1 1
       43 GETUPVAL                         R8 0
       44 GETTABLEKS                       R8 R8 K3 ["useMemo"]
       46 NEWCLOSURE                       R9 P2
       47 CAPTURE                          VAL R5
       48 NEWTABLE                         R10 0 1
       50 MOVE                             R11 R5
       51 SETLIST                          R10 R11 1 [1]
       53 CALL                             R8 2 1
       54 GETUPVAL                         R9 0
       55 GETTABLEKS                       R9 R9 K3 ["useMemo"]
       57 NEWCLOSURE                       R10 P3
       58 CAPTURE                          VAL R3
       59 CAPTURE                          UPVAL U7
       60 CAPTURE                          VAL R6
       61 CAPTURE                          UPVAL U8
       62 CAPTURE                          VAL R1
       63 CAPTURE                          VAL R8
       64 CAPTURE                          VAL R7
       65 NEWTABLE                         R11 0 2
       67 GETTABLEKS                       R12 R3 K4 ["parameterMenuItems"]
       69 MOVE                             R13 R8
       70 SETLIST                          R11 R12 2 [1]
       72 CALL                             R9 2 -1
       73 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["ParameterPane"]
       13 GETTABLEKS                       R2 R2 K8 ["Constants"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Parent"]
       20 GETTABLEKS                       R3 R3 K10 ["Foundation"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Components"]
       27 GETTABLEKS                       R4 R4 K11 ["GraphContext"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K6 ["Components"]
       34 GETTABLEKS                       R5 R5 K12 ["ParameterContext"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K6 ["Components"]
       41 GETTABLEKS                       R6 R6 K7 ["ParameterPane"]
       43 GETTABLEKS                       R6 R6 K13 ["ParameterPaneUtils"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K9 ["Parent"]
       50 GETTABLEKS                       R7 R7 K14 ["React"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K9 ["Parent"]
       57 GETTABLEKS                       R8 R8 K15 ["ReactUtils"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R9 R0 K6 ["Components"]
       64 GETTABLEKS                       R9 R9 K16 ["ViewportRectContext"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETTABLEKS                       R10 R0 K17 ["Hooks"]
       71 GETTABLEKS                       R10 R10 K18 ["useExistingParameters"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K5 [require]
       76 GETTABLEKS                       R11 R0 K19 ["Flags"]
       78 GETTABLEKS                       R11 R11 K20 ["getFFlagAnimGraphUIAddInsertExistingParameters"]
       80 CALL                             R10 1 1
       81 DUPCLOSURE                       R11 K21 [PROTO_4]
       82 CAPTURE                          VAL R6
       83 CAPTURE                          VAL R3
       84 CAPTURE                          VAL R4
       85 CAPTURE                          VAL R8
       86 CAPTURE                          VAL R9
       87 CAPTURE                          VAL R7
       88 CAPTURE                          VAL R5
       89 CAPTURE                          VAL R1
       90 CAPTURE                          VAL R10
       91 RETURN                           R11 1
