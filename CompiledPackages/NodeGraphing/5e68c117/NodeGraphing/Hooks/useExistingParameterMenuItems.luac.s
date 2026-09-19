PROTO_0:
        0 LOADK                            R2 K0 ["existing_parameter_"]
        1 MOVE                             R3 R0
        2 CONCAT                           R1 R2 R3
        3 RETURN                           R1 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [string.match]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["^existing_parameter_(.+)$"]
        4 CALL                             R1 2 1
        5 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["visibleMenuState"]
        3 JUMPIFNOTEQKNIL                  R1 ; [+6]
        5 GETIMPORT                        R1 K2 [warn]
        7 LOADK                            R2 K3 ["No insertNodeContext.visibleMenuState"]
        8 CALL                             R1 1 0
        9 RETURN                           R0 0
       10 GETUPVAL                         R1 1
       11 CALL                             R1 0 0
       12 FASTCALL1                        TYPE R0 ; [+3]
       13 MOVE                             R2 R0
       14 GETIMPORT                        R1 K5 [type]
       16 CALL                             R1 1 1
       17 JUMPIFEQKS                       R1 K6 ["number"] ; [+8]
       19 GETIMPORT                        R2 K9 [string.match]
       21 MOVE                             R3 R0
       22 LOADK                            R4 K10 ["^existing_parameter_(.+)$"]
       23 CALL                             R2 2 1
       24 MOVE                             R1 R2
       25 JUMPIF                           R1 ; [+11]
       26 GETIMPORT                        R1 K2 [warn]
       28 LOADK                            R3 K11 ["Unexpected menu item id: "]
       29 FASTCALL1                        TOSTRING R0 ; [+3]
       30 MOVE                             R5 R0
       31 GETIMPORT                        R4 K13 [tostring]
       33 CALL                             R4 1 1
       34 CONCAT                           R2 R3 R4
       35 CALL                             R1 1 0
       36 RETURN                           R0 0
       37 GETUPVAL                         R3 0
       38 GETTABLEKS                       R3 R3 K0 ["visibleMenuState"]
       40 GETTABLEKS                       R3 R3 K14 ["sourcePinInfo"]
       42 JUMPIFNOTEQKNIL                  R3 ; [+2]
       44 LOADB                            R2 0 +1
       45 LOADB                            R2 1
       46 FASTCALL2K                       ASSERT R2 K15 ; [+4]
       48 LOADK                            R3 K15 ["Expected sourcePinInfo"]
       49 GETIMPORT                        R1 K17 [assert]
       51 CALL                             R1 2 0
       52 GETUPVAL                         R1 2
       53 GETTABLEKS                       R1 R1 K18 ["createConnectedParameterAsync"]
       55 DUPTABLE                         R2 K22 [{"sourcePinInfo", "pinPosition", "parameterName", "existingValue"}]
       56 GETUPVAL                         R3 0
       57 GETTABLEKS                       R3 R3 K0 ["visibleMenuState"]
       59 GETTABLEKS                       R3 R3 K14 ["sourcePinInfo"]
       61 SETTABLEKS                       R3 R2 K14 ["sourcePinInfo"]
       63 GETUPVAL                         R3 0
       64 GETTABLEKS                       R3 R3 K0 ["visibleMenuState"]
       66 GETTABLEKS                       R3 R3 K23 ["targetPinPosition"]
       68 SETTABLEKS                       R3 R2 K19 ["pinPosition"]
       70 GETUPVAL                         R3 3
       71 SETTABLEKS                       R3 R2 K20 ["parameterName"]
       73 GETUPVAL                         R3 4
       74 SETTABLEKS                       R3 R2 K21 ["existingValue"]
       76 CALL                             R1 1 0
       77 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+3]
        2 NEWTABLE                         R0 0 0
        4 RETURN                           R0 1
        5 NEWTABLE                         R0 0 0
        7 GETUPVAL                         R1 0
        8 LOADNIL                          R2
        9 LOADNIL                          R3
       10 FORGPREP                         R1
       11 GETTABLEKS                       R6 R5 K0 ["name"]
       13 JUMPIFNOT                        R6 ; [+12]
       14 GETTABLE                         R7 R0 R6
       15 JUMPIF                           R7 ; [+10]
       16 GETTABLEKS                       R8 R5 K1 ["nodeType"]
       18 FASTCALL1                        TYPE R8 ; [+2]
       19 GETIMPORT                        R7 K3 [type]
       21 CALL                             R7 1 1
       22 JUMPIFNOTEQKS                    R7 K4 ["string"] ; [+3]
       24 LOADB                            R7 1
       25 SETTABLE                         R7 R0 R6
       26 FORGLOOP                         R1 2 ; [-16]
       28 RETURN                           R0 1

PROTO_5:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 GETUPVAL                         R6 1
        7 JUMPIFEQKNIL                     R6 ; [+7]
        9 GETUPVAL                         R7 1
       10 GETTABLE                         R6 R7 R4
       11 JUMPIFNOT                        R6 ; [+3]
       12 GETUPVAL                         R7 1
       13 GETTABLE                         R6 R7 R4
       14 SETTABLE                         R6 R0 R4
       15 FORGLOOP                         R1 1 ; [-10]
       17 RETURN                           R0 1

PROTO_6:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 MOVE                             R7 R0
        7 GETIMPORT                        R8 K2 [table.freeze]
        9 DUPTABLE                         R9 K8 [{["id"], ["text"], ["isDisabled"] = False, ["onActivated"]}]
       10 LOADK                            R11 K9 ["existing_parameter_"]
       11 MOVE                             R12 R4
       12 CONCAT                           R10 R11 R12
       13 SETTABLEKS                       R10 R9 K3 ["id"]
       15 SETTABLEKS                       R4 R9 K4 ["text"]
       17 GETUPVAL                         R10 1
       18 MOVE                             R11 R4
       19 MOVE                             R12 R5
       20 CALL                             R10 2 1
       21 SETTABLEKS                       R10 R9 K7 ["onActivated"]
       23 CALL                             R8 1 -1
       24 FASTCALL                         TABLE_INSERT ; [+2]
       25 GETIMPORT                        R6 K11 [table.insert]
       27 CALL                             R6 -1 0
       28 FORGLOOP                         R1 2 ; [-23]
       30 NEWTABLE                         R1 0 0
       32 GETUPVAL                         R2 2
       33 CALL                             R2 0 1
       34 JUMPIFNOT                        R2 ; [+37]
       35 MOVE                             R3 R1
       36 GETIMPORT                        R4 K2 [table.freeze]
       38 DUPTABLE                         R5 K13 [{"items"}]
       39 GETIMPORT                        R6 K2 [table.freeze]
       41 NEWTABLE                         R7 0 2
       43 GETIMPORT                        R8 K2 [table.freeze]
       45 DUPTABLE                         R9 K15 [{["id"], ["text"] = "New Parameter", ["isDisabled"] = False}]
       46 GETUPVAL                         R10 3
       47 GETTABLEKS                       R10 R10 K16 ["PARAMETER_NODE_CLASSNAME"]
       49 SETTABLEKS                       R10 R9 K3 ["id"]
       51 CALL                             R8 1 1
       52 GETIMPORT                        R9 K2 [table.freeze]
       54 DUPTABLE                         R10 K18 [{["id"], ["text"] = "New Expression", ["isDisabled"] = False}]
       55 GETUPVAL                         R11 3
       56 GETTABLEKS                       R11 R11 K19 ["EXPRESSION_NODE_CLASSNAME"]
       58 SETTABLEKS                       R11 R10 K3 ["id"]
       60 CALL                             R9 1 -1
       61 SETLIST                          R7 R8 -1 [1]
       63 CALL                             R6 1 1
       64 SETTABLEKS                       R6 R5 K12 ["items"]
       66 CALL                             R4 1 -1
       67 FASTCALL                         TABLE_INSERT ; [+2]
       68 GETIMPORT                        R2 K11 [table.insert]
       70 CALL                             R2 -1 0
       71 JUMP                             ; [+27]
       72 MOVE                             R3 R1
       73 GETIMPORT                        R4 K2 [table.freeze]
       75 DUPTABLE                         R5 K13 [{"items"}]
       76 GETIMPORT                        R6 K2 [table.freeze]
       78 NEWTABLE                         R7 0 1
       80 GETIMPORT                        R8 K2 [table.freeze]
       82 DUPTABLE                         R9 K15 [{["id"], ["text"] = "New Parameter", ["isDisabled"] = False}]
       83 GETUPVAL                         R10 3
       84 GETTABLEKS                       R10 R10 K16 ["PARAMETER_NODE_CLASSNAME"]
       86 SETTABLEKS                       R10 R9 K3 ["id"]
       88 CALL                             R8 1 -1
       89 SETLIST                          R7 R8 -1 [1]
       91 CALL                             R6 1 1
       92 SETTABLEKS                       R6 R5 K12 ["items"]
       94 CALL                             R4 1 -1
       95 FASTCALL                         TABLE_INSERT ; [+2]
       96 GETIMPORT                        R2 K11 [table.insert]
       98 CALL                             R2 -1 0
       99 GETIMPORT                        R2 K21 [next]
      101 MOVE                             R3 R0
      102 CALL                             R2 1 1
      103 JUMPIFNOT                        R2 ; [+15]
      104 MOVE                             R3 R1
      105 GETIMPORT                        R4 K2 [table.freeze]
      107 DUPTABLE                         R5 K13 [{"items"}]
      108 GETIMPORT                        R6 K2 [table.freeze]
      110 MOVE                             R7 R0
      111 CALL                             R6 1 1
      112 SETTABLEKS                       R6 R5 K12 ["items"]
      114 CALL                             R4 1 -1
      115 FASTCALL                         TABLE_INSERT ; [+2]
      116 GETIMPORT                        R2 K11 [table.insert]
      118 CALL                             R2 -1 0
      119 GETIMPORT                        R2 K2 [table.freeze]
      121 MOVE                             R3 R1
      122 CALL                             R2 1 -1
      123 RETURN                           R2 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["useContext"]
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K1 ["Context"]
       13 CALL                             R2 1 1
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K2 ["useCallback"]
       17 NEWCLOSURE                       R4 P0
       18 CAPTURE                          VAL R1
       19 CAPTURE                          VAL R0
       20 CAPTURE                          VAL R2
       21 NEWTABLE                         R5 0 3
       23 MOVE                             R6 R0
       24 GETTABLEKS                       R7 R1 K3 ["visibleMenuState"]
       26 GETTABLEKS                       R8 R2 K4 ["createConnectedParameterAsync"]
       28 SETLIST                          R5 R6 3 [1]
       30 CALL                             R3 2 1
       31 LOADNIL                          R4
       32 GETUPVAL                         R5 3
       33 CALL                             R5 0 1
       34 JUMPIFNOT                        R5 ; [+4]
       35 GETUPVAL                         R5 4
       36 CALL                             R5 0 1
       37 MOVE                             R4 R5
       38 JUMP                             ; [+46]
       39 GETUPVAL                         R5 0
       40 GETTABLEKS                       R5 R5 K0 ["useContext"]
       42 GETUPVAL                         R6 5
       43 GETTABLEKS                       R6 R6 K1 ["Context"]
       45 CALL                             R5 1 1
       46 GETUPVAL                         R6 6
       47 GETTABLEKS                       R6 R6 K5 ["useSignalState"]
       49 GETTABLEKS                       R7 R2 K6 ["nodePayloadDispatcher"]
       51 GETTABLEKS                       R7 R7 K7 ["observeMap"]
       53 CALL                             R6 1 1
       54 GETUPVAL                         R7 0
       55 GETTABLEKS                       R7 R7 K8 ["useMemo"]
       57 NEWCLOSURE                       R8 P1
       58 CAPTURE                          VAL R6
       59 NEWTABLE                         R9 0 1
       61 MOVE                             R10 R6
       62 SETLIST                          R9 R10 1 [1]
       64 CALL                             R7 2 1
       65 GETUPVAL                         R8 6
       66 GETTABLEKS                       R8 R8 K5 ["useSignalState"]
       68 GETTABLEKS                       R9 R5 K9 ["observeParameters"]
       70 CALL                             R8 1 1
       71 GETUPVAL                         R9 0
       72 GETTABLEKS                       R9 R9 K8 ["useMemo"]
       74 NEWCLOSURE                       R10 P2
       75 CAPTURE                          VAL R7
       76 CAPTURE                          VAL R8
       77 NEWTABLE                         R11 0 2
       79 MOVE                             R12 R7
       80 MOVE                             R13 R8
       81 SETLIST                          R11 R12 2 [1]
       83 CALL                             R9 2 1
       84 MOVE                             R4 R9
       85 GETUPVAL                         R5 0
       86 GETTABLEKS                       R5 R5 K8 ["useMemo"]
       88 NEWCLOSURE                       R6 P3
       89 CAPTURE                          REF R4
       90 CAPTURE                          VAL R3
       91 CAPTURE                          UPVAL U7
       92 CAPTURE                          UPVAL U8
       93 NEWTABLE                         R7 0 2
       95 MOVE                             R8 R4
       96 MOVE                             R9 R3
       97 SETLIST                          R7 R8 2 [1]
       99 CALL                             R5 2 -1
      100 CLOSEUPVALS                      R4
      101 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Constants"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Parent"]
       16 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Components"]
       23 GETTABLEKS                       R4 R4 K10 ["GraphContext"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K9 ["Components"]
       30 GETTABLEKS                       R5 R5 K11 ["InsertNodeContext"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K9 ["Components"]
       37 GETTABLEKS                       R6 R6 K12 ["ParameterContext"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K7 ["Parent"]
       44 GETTABLEKS                       R7 R7 K13 ["React"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R8 R0 K7 ["Parent"]
       51 GETTABLEKS                       R8 R8 K14 ["SignalsReact"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R9 R0 K15 ["Hooks"]
       58 GETTABLEKS                       R9 R9 K16 ["useExistingParameters"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K5 [require]
       63 GETTABLEKS                       R10 R0 K17 ["Flags"]
       65 GETTABLEKS                       R10 R10 K18 ["getFFlagAnimGraphUIAddInsertExistingParameters"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K5 [require]
       70 GETTABLEKS                       R11 R0 K17 ["Flags"]
       72 GETTABLEKS                       R11 R11 K19 ["getFFlagAnimGraphUIEnableExpressionNodes"]
       74 CALL                             R10 1 1
       75 DUPCLOSURE                       R11 K20 [PROTO_0]
       76 DUPCLOSURE                       R12 K21 [PROTO_1]
       77 DUPCLOSURE                       R13 K22 [PROTO_7]
       78 CAPTURE                          VAL R6
       79 CAPTURE                          VAL R4
       80 CAPTURE                          VAL R3
       81 CAPTURE                          VAL R9
       82 CAPTURE                          VAL R8
       83 CAPTURE                          VAL R5
       84 CAPTURE                          VAL R7
       85 CAPTURE                          VAL R10
       86 CAPTURE                          VAL R1
       87 RETURN                           R13 1
