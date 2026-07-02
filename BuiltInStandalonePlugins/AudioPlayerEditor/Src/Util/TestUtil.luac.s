PROTO_0:
        0 GETUPVAL                         R3 0
        1 FASTCALL1                        TYPEOF R2 ; [+3]
        2 MOVE                             R6 R2
        3 GETIMPORT                        R5 K1 [typeof]
        5 CALL                             R5 1 1
        6 JUMPIFNOTEQKS                    R5 K2 ["table"] ; [+6]
        8 GETIMPORT                        R4 K4 [table.clone]
       10 MOVE                             R5 R2
       11 CALL                             R4 1 1
       12 JUMP                             ; [+1]
       13 MOVE                             R4 R2
       14 SETTABLE                         R4 R3 R1
       15 GETUPVAL                         R4 1
       16 GETTABLE                         R3 R4 R1
       17 JUMPIFNOT                        R3 ; [+15]
       18 MOVE                             R4 R3
       19 FASTCALL1                        TYPEOF R2 ; [+3]
       20 MOVE                             R7 R2
       21 GETIMPORT                        R6 K1 [typeof]
       23 CALL                             R6 1 1
       24 JUMPIFNOTEQKS                    R6 K2 ["table"] ; [+6]
       26 GETIMPORT                        R5 K4 [table.clone]
       28 MOVE                             R6 R2
       29 CALL                             R5 1 1
       30 JUMP                             ; [+1]
       31 MOVE                             R5 R2
       32 CALL                             R4 1 0
       33 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R1
        2 FASTCALL1                        TYPEOF R2 ; [+3]
        3 MOVE                             R5 R2
        4 GETIMPORT                        R4 K1 [typeof]
        6 CALL                             R4 1 1
        7 JUMPIFNOTEQKS                    R4 K2 ["table"] ; [+6]
        9 GETIMPORT                        R3 K4 [table.clone]
       11 MOVE                             R4 R2
       12 CALL                             R3 1 1
       13 RETURN                           R3 1
       14 MOVE                             R3 R2
       15 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADNIL                          R2
        3 SETTABLE                         R2 R0 R1
        4 GETUPVAL                         R0 2
        5 GETTABLEKS                       R0 R0 K0 ["MockOnSetItemDisconnect"]
        7 GETUPVAL                         R1 1
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 SETTABLE                         R2 R3 R1
        2 DUPTABLE                         R3 K1 [{"Disconnect"}]
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          VAL R1
        6 CAPTURE                          UPVAL U1
        7 SETTABLEKS                       R4 R3 K0 ["Disconnect"]
        9 RETURN                           R3 1

PROTO_4:
        0 PREPVARARGS                      2
        1 GETUPVAL                         R3 0
        2 GETTABLE                         R2 R3 R1
        3 JUMPIFNOT                        R2 ; [+29]
        4 GETIMPORT                        R3 K2 [table.pack]
        6 GETVARARGS                       R4 -1
        7 CALL                             R3 -1 1
        8 MOVE                             R4 R3
        9 LOADNIL                          R5
       10 LOADNIL                          R6
       11 FORGPREP                         R4
       12 FASTCALL1                        TYPEOF R8 ; [+3]
       13 MOVE                             R10 R8
       14 GETIMPORT                        R9 K4 [typeof]
       16 CALL                             R9 1 1
       17 JUMPIFNOTEQKS                    R9 K0 ["table"] ; [+6]
       19 GETIMPORT                        R9 K6 [table.clone]
       21 MOVE                             R10 R8
       22 CALL                             R9 1 1
       23 SETTABLE                         R9 R3 R7
       24 FORGLOOP                         R4 2 ; [-13]
       26 MOVE                             R4 R2
       27 FASTCALL1                        TABLE_UNPACK R3 ; [+3]
       28 MOVE                             R6 R3
       29 GETIMPORT                        R5 K8 [table.unpack]
       31 CALL                             R5 1 -1
       32 CALL                             R4 -1 0
       33 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADNIL                          R2
        3 SETTABLE                         R2 R0 R1
        4 GETUPVAL                         R0 2
        5 GETTABLEKS                       R0 R0 K0 ["MockOnInvokeDisconnect"]
        7 GETUPVAL                         R1 1
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R3 0
        1 SETTABLE                         R2 R3 R1
        2 DUPTABLE                         R3 K2 [{"Disconnect", "Destroy"}]
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          VAL R1
        6 CAPTURE                          UPVAL U1
        7 SETTABLEKS                       R4 R3 K0 ["Disconnect"]
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R4 R4 K3 ["fn"]
       12 CALL                             R4 0 1
       13 SETTABLEKS                       R4 R3 K1 ["Destroy"]
       15 RETURN                           R3 1

PROTO_7:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_8:
        0 JUMPIFNOTEQKS                    R1 K0 ["Actions"] ; [+5]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["MockActions"]
        5 RETURN                           R2 1
        6 GETIMPORT                        R2 K3 [error]
        8 LOADK                            R4 K4 ["Plugin component "]
        9 MOVE                             R5 R1
       10 LOADK                            R6 K5 [" not supported"]
       11 CONCAT                           R3 R4 R6
       12 CALL                             R2 1 0
       13 RETURN                           R0 0

PROTO_9:
        0 NEWTABLE                         R1 16 0
        2 GETIMPORT                        R2 K3 [Enum.StudioDataModelType.Edit]
        4 JUMPIFNOT                        R0 ; [+2]
        5 GETTABLEKS                       R2 R0 K4 ["hostDataModelType"]
        7 SETTABLEKS                       R2 R1 K5 ["HostDataModelType"]
        9 DUPTABLE                         R3 K7 [{"FocusedDataModelSession"}]
       10 DUPTABLE                         R4 K9 [{"CurrentDataModelType"}]
       11 SETTABLEKS                       R2 R4 K8 ["CurrentDataModelType"]
       13 SETTABLEKS                       R4 R3 K6 ["FocusedDataModelSession"]
       15 SETTABLEKS                       R3 R1 K10 ["MultipleDocumentInterfaceInstance"]
       17 NEWTABLE                         R3 0 0
       19 NEWTABLE                         R4 0 0
       21 GETUPVAL                         R5 0
       22 GETTABLEKS                       R5 R5 K11 ["fn"]
       24 NEWCLOSURE                       R6 P0
       25 CAPTURE                          VAL R3
       26 CAPTURE                          VAL R4
       27 CALL                             R5 1 1
       28 SETTABLEKS                       R5 R1 K12 ["SetItem"]
       30 GETUPVAL                         R5 0
       31 GETTABLEKS                       R5 R5 K11 ["fn"]
       33 NEWCLOSURE                       R6 P1
       34 CAPTURE                          VAL R3
       35 CALL                             R5 1 1
       36 SETTABLEKS                       R5 R1 K13 ["GetItem"]
       38 GETUPVAL                         R5 0
       39 GETTABLEKS                       R5 R5 K11 ["fn"]
       41 CALL                             R5 0 1
       42 SETTABLEKS                       R5 R1 K14 ["MockOnSetItemDisconnect"]
       44 GETUPVAL                         R5 0
       45 GETTABLEKS                       R5 R5 K11 ["fn"]
       47 NEWCLOSURE                       R6 P2
       48 CAPTURE                          VAL R4
       49 CAPTURE                          VAL R1
       50 CALL                             R5 1 1
       51 SETTABLEKS                       R5 R1 K15 ["OnSetItem"]
       53 NEWTABLE                         R5 0 0
       55 GETUPVAL                         R6 0
       56 GETTABLEKS                       R6 R6 K11 ["fn"]
       58 NEWCLOSURE                       R7 P3
       59 CAPTURE                          VAL R5
       60 CALL                             R6 1 1
       61 SETTABLEKS                       R6 R1 K16 ["Invoke"]
       63 GETUPVAL                         R6 0
       64 GETTABLEKS                       R6 R6 K11 ["fn"]
       66 CALL                             R6 0 1
       67 SETTABLEKS                       R6 R1 K17 ["MockOnInvokeDisconnect"]
       69 GETUPVAL                         R6 0
       70 GETTABLEKS                       R6 R6 K11 ["fn"]
       72 NEWCLOSURE                       R7 P4
       73 CAPTURE                          VAL R5
       74 CAPTURE                          VAL R1
       75 CAPTURE                          UPVAL U0
       76 CALL                             R6 1 1
       77 SETTABLEKS                       R6 R1 K18 ["OnInvoke"]
       79 GETUPVAL                         R6 0
       80 GETTABLEKS                       R6 R6 K11 ["fn"]
       82 DUPCLOSURE                       R7 K19 [PROTO_7]
       83 CALL                             R6 1 1
       84 SETTABLEKS                       R6 R1 K20 ["GetUri"]
       86 GETUPVAL                         R6 1
       87 GETTABLEKS                       R6 R6 K21 ["createMockActions"]
       89 CALL                             R6 0 1
       90 SETTABLEKS                       R6 R1 K22 ["MockActions"]
       92 GETUPVAL                         R6 0
       93 GETTABLEKS                       R6 R6 K11 ["fn"]
       95 NEWCLOSURE                       R7 P6
       96 CAPTURE                          VAL R1
       97 CALL                             R6 1 1
       98 SETTABLEKS                       R6 R1 K23 ["GetPluginComponent"]
      100 RETURN                           R1 1

PROTO_10:
        0 SETUPVAL                         R1 0
        1 RETURN                           R0 0

PROTO_11:
        0 RETURN                           R0 0

PROTO_12:
        0 NEWTABLE                         R3 0 2
        2 DUPTABLE                         R4 K1 [{"Connect"}]
        3 NEWCLOSURE                       R5 P0
        4 CAPTURE                          UPVAL U0
        5 SETTABLEKS                       R5 R4 K0 ["Connect"]
        7 DUPTABLE                         R5 K1 [{"Connect"}]
        8 DUPCLOSURE                       R6 K2 [PROTO_11]
        9 SETTABLEKS                       R6 R5 K0 ["Connect"]
       11 SETLIST                          R3 R4 2 [1]
       13 RETURN                           R3 1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+2]
        2 GETUPVAL                         R1 0
        3 CALL                             R1 0 0
        4 RETURN                           R0 0

PROTO_14:
        0 LOADNIL                          R0
        1 DUPTABLE                         R1 K2 [{"CreateAsync", "MockActivateAsync"}]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K3 ["fn"]
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          REF R0
        7 CALL                             R2 1 1
        8 SETTABLEKS                       R2 R1 K0 ["CreateAsync"]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K3 ["fn"]
       13 NEWCLOSURE                       R3 P1
       14 CAPTURE                          REF R0
       15 CALL                             R2 1 1
       16 SETTABLEKS                       R2 R1 K1 ["MockActivateAsync"]
       18 CLOSEUPVALS                      R0
       19 RETURN                           R1 1

PROTO_15:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [type]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["table"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       11 LOADK                            R3 K3 ["Expected children to be a table"]
       12 GETIMPORT                        R1 K5 [assert]
       14 CALL                             R1 2 0
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R1 R1 K6 ["provideMockContext"]
       18 GETUPVAL                         R2 1
       19 DUPTABLE                         R3 K8 [{"ContextStack"}]
       20 GETUPVAL                         R4 2
       21 GETTABLEKS                       R4 R4 K9 ["createElement"]
       23 GETUPVAL                         R5 3
       24 GETTABLEKS                       R5 R5 K7 ["ContextStack"]
       26 DUPTABLE                         R6 K11 [{"providers"}]
       27 NEWTABLE                         R7 0 2
       29 GETUPVAL                         R8 2
       30 GETTABLEKS                       R8 R8 K9 ["createElement"]
       32 GETUPVAL                         R9 4
       33 DUPTABLE                         R10 K16 [{["theme"] = "Dark", ["device"] = "Desktop"}]
       34 CALL                             R8 2 1
       35 GETUPVAL                         R9 2
       36 GETTABLEKS                       R9 R9 K9 ["createElement"]
       38 GETUPVAL                         R10 5
       39 GETTABLEKS                       R10 R10 K17 ["MockProvider"]
       41 CALL                             R9 1 -1
       42 SETLIST                          R7 R8 -1 [1]
       44 SETTABLEKS                       R7 R6 K10 ["providers"]
       46 DUPTABLE                         R7 K19 [{"Window"}]
       47 GETUPVAL                         R8 2
       48 GETTABLEKS                       R8 R8 K9 ["createElement"]
       50 LOADK                            R9 K20 ["Frame"]
       51 DUPTABLE                         R10 K22 [{"Size"}]
       52 GETIMPORT                        R11 K25 [UDim2.fromOffset]
       54 LOADN                            R12 1000
       55 LOADN                            R13 1000
       56 CALL                             R11 2 1
       57 SETTABLEKS                       R11 R10 K21 ["Size"]
       59 MOVE                             R11 R0
       60 CALL                             R8 3 1
       61 SETTABLEKS                       R8 R7 K18 ["Window"]
       63 CALL                             R4 3 1
       64 SETTABLEKS                       R4 R3 K7 ["ContextStack"]
       66 CALL                             R1 2 -1
       67 RETURN                           R1 -1

PROTO_16:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["mockContext"]
        3 DUPTABLE                         R4 K2 [{"Element"}]
        4 JUMPIFEQKNIL                     R2 ; [+9]
        6 GETUPVAL                         R5 1
        7 GETTABLEKS                       R5 R5 K3 ["createElement"]
        9 MOVE                             R6 R0
       10 MOVE                             R7 R1
       11 MOVE                             R8 R2
       12 CALL                             R5 3 1
       13 JUMP                             ; [+6]
       14 GETUPVAL                         R5 1
       15 GETTABLEKS                       R5 R5 K3 ["createElement"]
       17 MOVE                             R6 R0
       18 MOVE                             R7 R1
       19 CALL                             R5 2 1
       20 SETTABLEKS                       R5 R4 K1 ["Element"]
       22 CALL                             R3 1 -1
       23 RETURN                           R3 -1

PROTO_17:
        0 ORK                              R1 R1 K0 [""]
        1 FASTCALL2K                       ASSERT R1 K1 ; [+5]
        3 MOVE                             R3 R1
        4 LOADK                            R4 K1 ["prefix was nil"]
        5 GETIMPORT                        R2 K3 [assert]
        7 CALL                             R2 2 0
        8 GETIMPORT                        R2 K5 [print]
       10 MOVE                             R3 R1
       11 GETTABLEKS                       R4 R0 K6 ["ClassName"]
       13 GETTABLEKS                       R5 R0 K7 ["Name"]
       15 CALL                             R2 3 0
       16 NAMECALL                         R2 R0 K8 ["GetChildren"]
       18 CALL                             R2 1 3
       19 FORGPREP                         R2
       20 GETUPVAL                         R7 0
       21 GETTABLEKS                       R7 R7 K9 ["printTree"]
       23 MOVE                             R8 R6
       24 MOVE                             R10 R1
       25 LOADK                            R11 K10 ["|  "]
       26 CONCAT                           R9 R10 R11
       27 CALL                             R7 2 0
       28 FORGLOOP                         R2 2 ; [-9]
       30 RETURN                           R0 0

PROTO_18:
        0 NAMECALL                         R2 R0 K0 ["GetDescendants"]
        2 CALL                             R2 1 3
        3 FORGPREP                         R2
        4 MOVE                             R7 R1
        5 MOVE                             R8 R6
        6 CALL                             R7 1 1
        7 JUMPIFNOT                        R7 ; [+1]
        8 RETURN                           R6 1
        9 FORGLOOP                         R2 2 ; [-6]
       11 LOADNIL                          R2
       12 RETURN                           R2 1

PROTO_19:
        0 NEWTABLE                         R2 0 0
        2 NAMECALL                         R3 R0 K0 ["GetDescendants"]
        4 CALL                             R3 1 3
        5 FORGPREP                         R3
        6 MOVE                             R8 R1
        7 MOVE                             R9 R7
        8 CALL                             R8 1 1
        9 JUMPIFNOT                        R8 ; [+7]
       10 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       12 MOVE                             R9 R2
       13 MOVE                             R10 R7
       14 GETIMPORT                        R8 K3 [table.insert]
       16 CALL                             R8 2 0
       17 FORGLOOP                         R3 2 ; [-12]
       19 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AudioPlayerEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["TestHelpers"]
       30 GETTABLEKS                       R5 R3 K11 ["ContextServices"]
       32 GETIMPORT                        R6 K5 [require]
       34 GETTABLEKS                       R7 R0 K6 ["Packages"]
       36 GETTABLEKS                       R7 R7 K12 ["Foundation"]
       38 CALL                             R6 1 1
       39 GETTABLEKS                       R7 R6 K13 ["FoundationProvider"]
       41 GETIMPORT                        R8 K5 [require]
       43 GETTABLEKS                       R9 R0 K6 ["Packages"]
       45 GETTABLEKS                       R9 R9 K14 ["StudioFoundation"]
       47 CALL                             R8 1 1
       48 GETTABLEKS                       R9 R8 K15 ["Contexts"]
       50 GETTABLEKS                       R9 R9 K16 ["Localization"]
       52 GETIMPORT                        R10 K5 [require]
       54 GETTABLEKS                       R11 R0 K6 ["Packages"]
       56 GETTABLEKS                       R11 R11 K17 ["Dev"]
       58 GETTABLEKS                       R11 R11 K18 ["JestGlobals"]
       60 CALL                             R10 1 1
       61 GETTABLEKS                       R11 R10 K19 ["jest"]
       63 NEWTABLE                         R12 0 2
       65 GETTABLEKS                       R13 R5 K20 ["Analytics"]
       67 GETTABLEKS                       R13 R13 K21 ["mock"]
       69 CALL                             R13 0 1
       70 GETTABLEKS                       R14 R5 K22 ["Design"]
       72 GETTABLEKS                       R14 R14 K21 ["mock"]
       74 GETIMPORT                        R15 K25 [Instance.new]
       76 LOADK                            R16 K26 ["StyleSheet"]
       77 CALL                             R15 1 -1
       78 CALL                             R14 -1 -1
       79 SETLIST                          R12 R13 -1 [1]
       81 NEWTABLE                         R13 8 0
       83 DUPCLOSURE                       R14 K27 [PROTO_9]
       84 CAPTURE                          VAL R11
       85 CAPTURE                          VAL R13
       86 SETTABLEKS                       R14 R13 K28 ["createMockPlugin"]
       88 DUPCLOSURE                       R14 K29 [PROTO_14]
       89 CAPTURE                          VAL R11
       90 SETTABLEKS                       R14 R13 K30 ["createMockActions"]
       92 DUPCLOSURE                       R14 K31 [PROTO_15]
       93 CAPTURE                          VAL R4
       94 CAPTURE                          VAL R12
       95 CAPTURE                          VAL R1
       96 CAPTURE                          VAL R2
       97 CAPTURE                          VAL R7
       98 CAPTURE                          VAL R9
       99 SETTABLEKS                       R14 R13 K32 ["mockContext"]
      101 DUPCLOSURE                       R14 K33 [PROTO_16]
      102 CAPTURE                          VAL R13
      103 CAPTURE                          VAL R1
      104 SETTABLEKS                       R14 R13 K34 ["createTestElement"]
      106 DUPCLOSURE                       R14 K35 [PROTO_17]
      107 CAPTURE                          VAL R13
      108 SETTABLEKS                       R14 R13 K36 ["printTree"]
      110 DUPCLOSURE                       R14 K37 [PROTO_18]
      111 SETTABLEKS                       R14 R13 K38 ["findDescendant"]
      113 DUPCLOSURE                       R14 K39 [PROTO_19]
      114 SETTABLEKS                       R14 R13 K40 ["findDescendants"]
      116 RETURN                           R13 1
