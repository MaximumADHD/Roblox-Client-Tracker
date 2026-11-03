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
       25 LOADK                            R3 K8 ["%*Parameter"]
       26 MOVE                             R5 R0
       27 NAMECALL                         R3 R3 K9 ["format"]
       29 CALL                             R3 2 1
       30 MOVE                             R4 R3
       31 GETUPVAL                         R5 2
       32 GETTABLEKS                       R5 R5 K10 ["observeParameters"]
       34 LOADB                            R6 0
       35 CALL                             R5 1 1
       36 JUMPIF                           R5 ; [+2]
       37 NEWTABLE                         R5 0 0
       39 LOADN                            R6 0
       40 GETTABLE                         R7 R5 R4
       41 JUMPIFEQKNIL                     R7 ; [+10]
       43 ADDK                             R6 R6 K11 [1]
       44 LOADK                            R7 K12 ["%*%*"]
       45 MOVE                             R9 R3
       46 MOVE                             R10 R6
       47 NAMECALL                         R7 R7 K9 ["format"]
       49 CALL                             R7 3 1
       50 MOVE                             R4 R7
       51 JUMPBACK                         ; [-12]
       52 GETUPVAL                         R7 3
       53 GETTABLEKS                       R7 R7 K13 ["createParameter"]
       55 DUPTABLE                         R8 K18 [{"parameterType", "parameterName", "pinPosition", "initializeWithValue"}]
       56 SETTABLEKS                       R0 R8 K14 ["parameterType"]
       58 SETTABLEKS                       R4 R8 K15 ["parameterName"]
       60 SETTABLEKS                       R2 R8 K16 ["pinPosition"]
       62 GETUPVAL                         R9 2
       63 GETTABLEKS                       R9 R9 K19 ["getDefaultValue"]
       65 JUMPIFNOT                        R9 ; [+5]
       66 GETUPVAL                         R9 2
       67 GETTABLEKS                       R9 R9 K19 ["getDefaultValue"]
       69 MOVE                             R10 R0
       70 CALL                             R9 1 1
       71 SETTABLEKS                       R9 R8 K17 ["initializeWithValue"]
       73 CALL                             R7 1 0
       74 GETUPVAL                         R7 4
       75 JUMPIFEQKNIL                     R7 ; [+3]
       77 GETUPVAL                         R7 4
       78 CALL                             R7 0 0
       79 RETURN                           R0 0

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
       33 GETUPVAL                         R5 5
       34 CALL                             R5 0 1
       35 JUMPIFNOT                        R5 ; [+9]
       36 GETUPVAL                         R4 6
       37 LOADK                            R6 K9 ["Common"]
       38 LOADK                            R7 K10 ["AnimationEditor"]
       39 LOADK                            R8 K11 ["Menu"]
       40 LOADK                            R9 K12 ["NewParameterHeader"]
       41 NAMECALL                         R4 R4 K13 ["getExternalText"]
       43 CALL                             R4 5 1
       44 JUMP                             ; [+1]
       45 LOADK                            R4 K14 ["New Parameter"]
       46 SETTABLEKS                       R4 R3 K6 ["title"]
       48 SETTABLEKS                       R0 R3 K7 ["items"]
       50 SETLIST                          R2 R3 1 [1]
       52 GETUPVAL                         R4 7
       53 LENGTH                           R3 R4
       54 LOADN                            R4 0
       55 JUMPIFNOTLT                      R4 R3 ; [+47]
       57 NEWTABLE                         R3 0 0
       59 GETUPVAL                         R4 7
       60 LOADNIL                          R5
       61 LOADNIL                          R6
       62 FORGPREP                         R4
       63 DUPTABLE                         R11 K17 [{"id", "text", "onActivated"}]
       64 SETTABLEKS                       R8 R11 K15 ["id"]
       66 SETTABLEKS                       R8 R11 K16 ["text"]
       68 GETUPVAL                         R12 8
       69 SETTABLEKS                       R12 R11 K5 ["onActivated"]
       71 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       73 MOVE                             R10 R3
       74 GETIMPORT                        R9 K19 [table.insert]
       76 CALL                             R9 2 0
       77 FORGLOOP                         R4 2 ; [-15]
       79 DUPTABLE                         R6 K8 [{"title", "items"}]
       80 GETUPVAL                         R8 5
       81 CALL                             R8 0 1
       82 JUMPIFNOT                        R8 ; [+9]
       83 GETUPVAL                         R7 6
       84 LOADK                            R9 K9 ["Common"]
       85 LOADK                            R10 K10 ["AnimationEditor"]
       86 LOADK                            R11 K11 ["Menu"]
       87 LOADK                            R12 K20 ["ExistingParametersHeader"]
       88 NAMECALL                         R7 R7 K13 ["getExternalText"]
       90 CALL                             R7 5 1
       91 JUMP                             ; [+1]
       92 LOADK                            R7 K21 ["Existing Parameters"]
       93 SETTABLEKS                       R7 R6 K6 ["title"]
       95 SETTABLEKS                       R3 R6 K7 ["items"]
       97 FASTCALL2                        TABLE_INSERT R2 R6 ; [+4]
       99 MOVE                             R5 R2
      100 GETIMPORT                        R4 K19 [table.insert]
      102 CALL                             R4 2 0
      103 RETURN                           R2 1

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
       22 GETTABLEKS                       R5 R5 K2 ["ContextServices"]
       24 GETTABLEKS                       R5 R5 K3 ["Localization"]
       26 NAMECALL                         R5 R5 K4 ["use"]
       28 CALL                             R5 1 1
       29 GETUPVAL                         R6 5
       30 CALL                             R6 0 1
       31 GETUPVAL                         R7 6
       32 GETTABLEKS                       R7 R7 K5 ["useEventCallback"]
       34 NEWCLOSURE                       R8 P0
       35 CAPTURE                          VAL R4
       36 CAPTURE                          UPVAL U7
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R2
       39 CAPTURE                          VAL R0
       40 CALL                             R7 1 1
       41 GETUPVAL                         R8 6
       42 GETTABLEKS                       R8 R8 K5 ["useEventCallback"]
       44 NEWCLOSURE                       R9 P1
       45 CAPTURE                          VAL R4
       46 CAPTURE                          UPVAL U7
       47 CAPTURE                          VAL R2
       48 CAPTURE                          VAL R6
       49 CAPTURE                          VAL R0
       50 CALL                             R8 1 1
       51 GETUPVAL                         R9 0
       52 GETTABLEKS                       R9 R9 K6 ["useMemo"]
       54 NEWCLOSURE                       R10 P2
       55 CAPTURE                          VAL R6
       56 NEWTABLE                         R11 0 1
       58 MOVE                             R12 R6
       59 SETLIST                          R11 R12 1 [1]
       61 CALL                             R9 2 1
       62 GETUPVAL                         R10 0
       63 GETTABLEKS                       R10 R10 K6 ["useMemo"]
       65 NEWCLOSURE                       R11 P3
       66 CAPTURE                          VAL R3
       67 CAPTURE                          UPVAL U8
       68 CAPTURE                          VAL R7
       69 CAPTURE                          UPVAL U9
       70 CAPTURE                          VAL R1
       71 CAPTURE                          UPVAL U10
       72 CAPTURE                          VAL R5
       73 CAPTURE                          VAL R9
       74 CAPTURE                          VAL R8
       75 NEWTABLE                         R12 0 3
       77 GETTABLEKS                       R13 R3 K7 ["parameterMenuItems"]
       79 MOVE                             R14 R9
       80 MOVE                             R15 R5
       81 SETLIST                          R12 R13 3 [1]
       83 CALL                             R10 2 -1
       84 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Components"]
       25 GETTABLEKS                       R4 R4 K10 ["GraphContext"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K9 ["Components"]
       32 GETTABLEKS                       R5 R5 K11 ["ParameterContext"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K9 ["Components"]
       39 GETTABLEKS                       R6 R6 K12 ["ParameterPane"]
       41 GETTABLEKS                       R6 R6 K13 ["Constants"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K9 ["Components"]
       48 GETTABLEKS                       R7 R7 K12 ["ParameterPane"]
       50 GETTABLEKS                       R7 R7 K14 ["ParameterPaneUtils"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K6 ["Parent"]
       57 GETTABLEKS                       R8 R8 K15 ["React"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R9 R0 K6 ["Parent"]
       64 GETTABLEKS                       R9 R9 K16 ["ReactUtils"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETTABLEKS                       R10 R0 K9 ["Components"]
       71 GETTABLEKS                       R10 R10 K17 ["ViewportRectContext"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K5 [require]
       76 GETTABLEKS                       R11 R0 K18 ["Hooks"]
       78 GETTABLEKS                       R11 R11 K19 ["useExistingParameters"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K5 [require]
       83 GETTABLEKS                       R12 R0 K20 ["Flags"]
       85 GETTABLEKS                       R12 R12 K21 ["getFFlagAnimGraphUIAddInsertExistingParameters"]
       87 CALL                             R11 1 1
       88 GETIMPORT                        R12 K5 [require]
       90 GETTABLEKS                       R13 R0 K20 ["Flags"]
       92 GETTABLEKS                       R13 R13 K22 ["getFFlagAnimGraphUI_Localization2"]
       94 CALL                             R12 1 1
       95 DUPCLOSURE                       R13 K23 [PROTO_4]
       96 CAPTURE                          VAL R7
       97 CAPTURE                          VAL R3
       98 CAPTURE                          VAL R4
       99 CAPTURE                          VAL R9
      100 CAPTURE                          VAL R2
      101 CAPTURE                          VAL R10
      102 CAPTURE                          VAL R8
      103 CAPTURE                          VAL R6
      104 CAPTURE                          VAL R5
      105 CAPTURE                          VAL R11
      106 CAPTURE                          VAL R12
      107 RETURN                           R13 1
