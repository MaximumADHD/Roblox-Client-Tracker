PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createParameterAsync"]
        3 DUPTABLE                         R1 K4 [{"parameterType", "allowDuplication", "pinPosition"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["parameterType"]
        7 LOADB                            R2 0
        8 SETTABLEKS                       R2 R1 K2 ["allowDuplication"]
       10 GETUPVAL                         R2 2
       11 SETTABLEKS                       R2 R1 K3 ["pinPosition"]
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_1:
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
       25 GETIMPORT                        R3 K10 [task.spawn]
       27 NEWCLOSURE                       R4 P0
       28 CAPTURE                          UPVAL U2
       29 CAPTURE                          VAL R0
       30 CAPTURE                          VAL R2
       31 CALL                             R3 1 0
       32 GETUPVAL                         R3 3
       33 JUMPIFEQKNIL                     R3 ; [+3]
       35 GETUPVAL                         R3 3
       36 CALL                             R3 0 0
       37 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["PARAMETER_MENUITEM_TABLE"]
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 GETIMPORT                        R6 K3 [table.clone]
       10 MOVE                             R7 R5
       11 CALL                             R6 1 1
       12 MOVE                             R5 R6
       13 GETUPVAL                         R6 1
       14 SETTABLEKS                       R6 R5 K4 ["onActivated"]
       16 SETTABLE                         R5 R0 R4
       17 FORGLOOP                         R1 2 ; [-10]
       19 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["FFlagAnimGraphInsertParameterContextMenu not enabled"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K3 ["useContext"]
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R2 R2 K4 ["Context"]
       14 CALL                             R1 1 1
       15 GETUPVAL                         R2 1
       16 GETTABLEKS                       R2 R2 K3 ["useContext"]
       18 GETUPVAL                         R3 3
       19 GETTABLEKS                       R3 R3 K4 ["Context"]
       21 CALL                             R2 1 1
       22 GETUPVAL                         R3 4
       23 GETTABLEKS                       R3 R3 K5 ["useEventCallback"]
       25 NEWCLOSURE                       R4 P0
       26 CAPTURE                          VAL R2
       27 CAPTURE                          UPVAL U5
       28 CAPTURE                          VAL R1
       29 CAPTURE                          VAL R0
       30 CALL                             R3 1 1
       31 GETUPVAL                         R4 1
       32 GETTABLEKS                       R4 R4 K6 ["useMemo"]
       34 NEWCLOSURE                       R5 P1
       35 CAPTURE                          UPVAL U6
       36 CAPTURE                          VAL R3
       37 NEWTABLE                         R6 0 0
       39 CALL                             R4 2 -1
       40 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["NodeView"]
       13 GETTABLEKS                       R2 R2 K8 ["ParameterPane"]
       15 GETTABLEKS                       R2 R2 K9 ["Constants"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K10 ["Parent"]
       22 GETTABLEKS                       R3 R3 K11 ["Foundation"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K12 ["Contexts"]
       29 GETTABLEKS                       R4 R4 K13 ["NativeGraphContext"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K6 ["Components"]
       36 GETTABLEKS                       R5 R5 K7 ["NodeView"]
       38 GETTABLEKS                       R5 R5 K8 ["ParameterPane"]
       40 GETTABLEKS                       R5 R5 K14 ["ParameterPaneUtils"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K10 ["Parent"]
       47 GETTABLEKS                       R6 R6 K15 ["React"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R7 R0 K10 ["Parent"]
       54 GETTABLEKS                       R7 R7 K16 ["ReactUtils"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETTABLEKS                       R8 R0 K12 ["Contexts"]
       61 GETTABLEKS                       R8 R8 K17 ["ViewportRectContext"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K5 [require]
       66 GETTABLEKS                       R9 R0 K18 ["Flags"]
       68 GETTABLEKS                       R9 R9 K19 ["getFFlagAnimGraphInsertParameterContextMenu"]
       70 CALL                             R8 1 1
       71 DUPCLOSURE                       R9 K20 [PROTO_3]
       72 CAPTURE                          VAL R8
       73 CAPTURE                          VAL R5
       74 CAPTURE                          VAL R3
       75 CAPTURE                          VAL R7
       76 CAPTURE                          VAL R6
       77 CAPTURE                          VAL R4
       78 CAPTURE                          VAL R1
       79 RETURN                           R9 1
