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
       33 JUMPIFNOT                        R2 ; [+3]
       34 GETUPVAL                         R2 2
       35 GETTABLEKS                       R2 R2 K12 ["sourcePinInfo"]
       37 MOVE                             R3 R2
       38 JUMPIFNOT                        R3 ; [+16]
       39 LOADB                            R3 0
       40 GETTABLEKS                       R4 R2 K13 ["sourcePinSide"]
       42 JUMPIFNOTEQKS                    R4 K14 ["Input"] ; [+12]
       44 LOADB                            R3 1
       45 GETTABLEKS                       R4 R2 K15 ["sourcePinDynamicIndex"]
       47 JUMPIFNOTEQKNIL                  R4 ; [+7]
       49 GETTABLEKS                       R4 R2 K16 ["sourcePinInputId"]
       51 JUMPIFNOTEQKNIL                  R4 ; [+2]
       53 LOADB                            R3 0 +1
       54 LOADB                            R3 1
       55 GETUPVAL                         R4 3
       56 CALL                             R4 0 1
       57 JUMPIFNOT                        R4 ; [+41]
       58 JUMPIFNOT                        R3 ; [+3]
       59 GETUPVAL                         R4 4
       60 CALL                             R4 0 1
       61 JUMPIFNOT                        R4 ; [+37]
       62 MOVE                             R5 R1
       63 GETIMPORT                        R6 K2 [table.freeze]
       65 DUPTABLE                         R7 K18 [{"items"}]
       66 GETIMPORT                        R8 K2 [table.freeze]
       68 NEWTABLE                         R9 0 2
       70 GETIMPORT                        R10 K2 [table.freeze]
       72 DUPTABLE                         R11 K20 [{["id"], ["text"] = "New Parameter", ["isDisabled"] = False}]
       73 GETUPVAL                         R12 5
       74 GETTABLEKS                       R12 R12 K21 ["PARAMETER_NODE_CLASSNAME"]
       76 SETTABLEKS                       R12 R11 K3 ["id"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K2 [table.freeze]
       81 DUPTABLE                         R12 K23 [{["id"], ["text"] = "New Expression", ["isDisabled"] = False}]
       82 GETUPVAL                         R13 5
       83 GETTABLEKS                       R13 R13 K24 ["EXPRESSION_NODE_CLASSNAME"]
       85 SETTABLEKS                       R13 R12 K3 ["id"]
       87 CALL                             R11 1 -1
       88 SETLIST                          R9 R10 -1 [1]
       90 CALL                             R8 1 1
       91 SETTABLEKS                       R8 R7 K17 ["items"]
       93 CALL                             R6 1 -1
       94 FASTCALL                         TABLE_INSERT ; [+2]
       95 GETIMPORT                        R4 K11 [table.insert]
       97 CALL                             R4 -1 0
       98 JUMP                             ; [+27]
       99 MOVE                             R5 R1
      100 GETIMPORT                        R6 K2 [table.freeze]
      102 DUPTABLE                         R7 K18 [{"items"}]
      103 GETIMPORT                        R8 K2 [table.freeze]
      105 NEWTABLE                         R9 0 1
      107 GETIMPORT                        R10 K2 [table.freeze]
      109 DUPTABLE                         R11 K20 [{["id"], ["text"] = "New Parameter", ["isDisabled"] = False}]
      110 GETUPVAL                         R12 5
      111 GETTABLEKS                       R12 R12 K21 ["PARAMETER_NODE_CLASSNAME"]
      113 SETTABLEKS                       R12 R11 K3 ["id"]
      115 CALL                             R10 1 -1
      116 SETLIST                          R9 R10 -1 [1]
      118 CALL                             R8 1 1
      119 SETTABLEKS                       R8 R7 K17 ["items"]
      121 CALL                             R6 1 -1
      122 FASTCALL                         TABLE_INSERT ; [+2]
      123 GETIMPORT                        R4 K11 [table.insert]
      125 CALL                             R4 -1 0
      126 GETIMPORT                        R4 K26 [next]
      128 MOVE                             R5 R0
      129 CALL                             R4 1 1
      130 JUMPIFNOT                        R4 ; [+15]
      131 MOVE                             R5 R1
      132 GETIMPORT                        R6 K2 [table.freeze]
      134 DUPTABLE                         R7 K18 [{"items"}]
      135 GETIMPORT                        R8 K2 [table.freeze]
      137 MOVE                             R9 R0
      138 CALL                             R8 1 1
      139 SETTABLEKS                       R8 R7 K17 ["items"]
      141 CALL                             R6 1 -1
      142 FASTCALL                         TABLE_INSERT ; [+2]
      143 GETIMPORT                        R4 K11 [table.insert]
      145 CALL                             R4 -1 0
      146 GETIMPORT                        R4 K2 [table.freeze]
      148 MOVE                             R5 R1
      149 CALL                             R4 1 -1
      150 RETURN                           R4 -1

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
       14 GETTABLEKS                       R3 R1 K2 ["visibleMenuState"]
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R4 R4 K3 ["useCallback"]
       19 NEWCLOSURE                       R5 P0
       20 CAPTURE                          VAL R1
       21 CAPTURE                          VAL R0
       22 CAPTURE                          VAL R2
       23 NEWTABLE                         R6 0 3
       25 MOVE                             R7 R0
       26 GETTABLEKS                       R8 R1 K2 ["visibleMenuState"]
       28 GETTABLEKS                       R9 R2 K4 ["createConnectedParameterAsync"]
       30 SETLIST                          R6 R7 3 [1]
       32 CALL                             R4 2 1
       33 LOADNIL                          R5
       34 GETUPVAL                         R6 3
       35 CALL                             R6 0 1
       36 JUMPIFNOT                        R6 ; [+4]
       37 GETUPVAL                         R6 4
       38 CALL                             R6 0 1
       39 MOVE                             R5 R6
       40 JUMP                             ; [+46]
       41 GETUPVAL                         R6 0
       42 GETTABLEKS                       R6 R6 K0 ["useContext"]
       44 GETUPVAL                         R7 5
       45 GETTABLEKS                       R7 R7 K1 ["Context"]
       47 CALL                             R6 1 1
       48 GETUPVAL                         R7 6
       49 GETTABLEKS                       R7 R7 K5 ["useSignalState"]
       51 GETTABLEKS                       R8 R2 K6 ["nodePayloadDispatcher"]
       53 GETTABLEKS                       R8 R8 K7 ["observeMap"]
       55 CALL                             R7 1 1
       56 GETUPVAL                         R8 0
       57 GETTABLEKS                       R8 R8 K8 ["useMemo"]
       59 NEWCLOSURE                       R9 P1
       60 CAPTURE                          VAL R7
       61 NEWTABLE                         R10 0 1
       63 MOVE                             R11 R7
       64 SETLIST                          R10 R11 1 [1]
       66 CALL                             R8 2 1
       67 GETUPVAL                         R9 6
       68 GETTABLEKS                       R9 R9 K5 ["useSignalState"]
       70 GETTABLEKS                       R10 R6 K9 ["observeParameters"]
       72 CALL                             R9 1 1
       73 GETUPVAL                         R10 0
       74 GETTABLEKS                       R10 R10 K8 ["useMemo"]
       76 NEWCLOSURE                       R11 P2
       77 CAPTURE                          VAL R8
       78 CAPTURE                          VAL R9
       79 NEWTABLE                         R12 0 2
       81 MOVE                             R13 R8
       82 MOVE                             R14 R9
       83 SETLIST                          R12 R13 2 [1]
       85 CALL                             R10 2 1
       86 MOVE                             R5 R10
       87 GETUPVAL                         R6 0
       88 GETTABLEKS                       R6 R6 K8 ["useMemo"]
       90 NEWCLOSURE                       R7 P3
       91 CAPTURE                          REF R5
       92 CAPTURE                          VAL R4
       93 CAPTURE                          VAL R3
       94 CAPTURE                          UPVAL U7
       95 CAPTURE                          UPVAL U8
       96 CAPTURE                          UPVAL U9
       97 NEWTABLE                         R8 0 3
       99 MOVE                             R9 R5
      100 MOVE                             R10 R4
      101 MOVE                             R11 R3
      102 SETLIST                          R8 R9 3 [1]
      104 CALL                             R6 2 -1
      105 CLOSEUPVALS                      R5
      106 RETURN                           R6 -1

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
       75 GETIMPORT                        R11 K5 [require]
       77 GETTABLEKS                       R12 R0 K17 ["Flags"]
       79 GETTABLEKS                       R12 R12 K20 ["getFFlagAnimGraphUI_ValueNodeInputProperties"]
       81 CALL                             R11 1 1
       82 DUPCLOSURE                       R12 K21 [PROTO_0]
       83 DUPCLOSURE                       R13 K22 [PROTO_1]
       84 DUPCLOSURE                       R14 K23 [PROTO_7]
       85 CAPTURE                          VAL R6
       86 CAPTURE                          VAL R4
       87 CAPTURE                          VAL R3
       88 CAPTURE                          VAL R9
       89 CAPTURE                          VAL R8
       90 CAPTURE                          VAL R5
       91 CAPTURE                          VAL R7
       92 CAPTURE                          VAL R10
       93 CAPTURE                          VAL R11
       94 CAPTURE                          VAL R1
       95 RETURN                           R14 1
