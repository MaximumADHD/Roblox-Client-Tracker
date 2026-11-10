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
       57 JUMPIFNOT                        R4 ; [+71]
       58 JUMPIFNOT                        R3 ; [+3]
       59 GETUPVAL                         R4 4
       60 CALL                             R4 0 1
       61 JUMPIFNOT                        R4 ; [+67]
       62 MOVE                             R5 R1
       63 GETIMPORT                        R6 K2 [table.freeze]
       65 DUPTABLE                         R7 K18 [{"items"}]
       66 GETIMPORT                        R8 K2 [table.freeze]
       68 NEWTABLE                         R9 0 2
       70 GETIMPORT                        R10 K2 [table.freeze]
       72 DUPTABLE                         R11 K19 [{["id"], ["text"], ["isDisabled"] = False}]
       73 GETUPVAL                         R12 5
       74 GETTABLEKS                       R12 R12 K20 ["PARAMETER_NODE_CLASSNAME"]
       76 SETTABLEKS                       R12 R11 K3 ["id"]
       78 GETUPVAL                         R13 6
       79 CALL                             R13 0 1
       80 JUMPIFNOT                        R13 ; [+9]
       81 GETUPVAL                         R12 7
       82 LOADK                            R14 K21 ["Common"]
       83 LOADK                            R15 K22 ["AnimationEditor"]
       84 LOADK                            R16 K23 ["Menu"]
       85 LOADK                            R17 K24 ["NewParameter"]
       86 NAMECALL                         R12 R12 K25 ["getExternalText"]
       88 CALL                             R12 5 1
       89 JUMP                             ; [+1]
       90 LOADK                            R12 K26 ["New Parameter"]
       91 SETTABLEKS                       R12 R11 K4 ["text"]
       93 CALL                             R10 1 1
       94 GETIMPORT                        R11 K2 [table.freeze]
       96 DUPTABLE                         R12 K19 [{["id"], ["text"], ["isDisabled"] = False}]
       97 GETUPVAL                         R13 5
       98 GETTABLEKS                       R13 R13 K27 ["EXPRESSION_NODE_CLASSNAME"]
      100 SETTABLEKS                       R13 R12 K3 ["id"]
      102 GETUPVAL                         R14 6
      103 CALL                             R14 0 1
      104 JUMPIFNOT                        R14 ; [+9]
      105 GETUPVAL                         R13 7
      106 LOADK                            R15 K21 ["Common"]
      107 LOADK                            R16 K22 ["AnimationEditor"]
      108 LOADK                            R17 K23 ["Menu"]
      109 LOADK                            R18 K28 ["NewExpression"]
      110 NAMECALL                         R13 R13 K25 ["getExternalText"]
      112 CALL                             R13 5 1
      113 JUMP                             ; [+1]
      114 LOADK                            R13 K29 ["New Expression"]
      115 SETTABLEKS                       R13 R12 K4 ["text"]
      117 CALL                             R11 1 -1
      118 SETLIST                          R9 R10 -1 [1]
      120 CALL                             R8 1 1
      121 SETTABLEKS                       R8 R7 K17 ["items"]
      123 CALL                             R6 1 -1
      124 FASTCALL                         TABLE_INSERT ; [+2]
      125 GETIMPORT                        R4 K11 [table.insert]
      127 CALL                             R4 -1 0
      128 JUMP                             ; [+42]
      129 MOVE                             R5 R1
      130 GETIMPORT                        R6 K2 [table.freeze]
      132 DUPTABLE                         R7 K18 [{"items"}]
      133 GETIMPORT                        R8 K2 [table.freeze]
      135 NEWTABLE                         R9 0 1
      137 GETIMPORT                        R10 K2 [table.freeze]
      139 DUPTABLE                         R11 K19 [{["id"], ["text"], ["isDisabled"] = False}]
      140 GETUPVAL                         R12 5
      141 GETTABLEKS                       R12 R12 K20 ["PARAMETER_NODE_CLASSNAME"]
      143 SETTABLEKS                       R12 R11 K3 ["id"]
      145 GETUPVAL                         R13 6
      146 CALL                             R13 0 1
      147 JUMPIFNOT                        R13 ; [+9]
      148 GETUPVAL                         R12 7
      149 LOADK                            R14 K21 ["Common"]
      150 LOADK                            R15 K22 ["AnimationEditor"]
      151 LOADK                            R16 K23 ["Menu"]
      152 LOADK                            R17 K24 ["NewParameter"]
      153 NAMECALL                         R12 R12 K25 ["getExternalText"]
      155 CALL                             R12 5 1
      156 JUMP                             ; [+1]
      157 LOADK                            R12 K26 ["New Parameter"]
      158 SETTABLEKS                       R12 R11 K4 ["text"]
      160 CALL                             R10 1 -1
      161 SETLIST                          R9 R10 -1 [1]
      163 CALL                             R8 1 1
      164 SETTABLEKS                       R8 R7 K17 ["items"]
      166 CALL                             R6 1 -1
      167 FASTCALL                         TABLE_INSERT ; [+2]
      168 GETIMPORT                        R4 K11 [table.insert]
      170 CALL                             R4 -1 0
      171 GETIMPORT                        R4 K31 [next]
      173 MOVE                             R5 R0
      174 CALL                             R4 1 1
      175 JUMPIFNOT                        R4 ; [+15]
      176 MOVE                             R5 R1
      177 GETIMPORT                        R6 K2 [table.freeze]
      179 DUPTABLE                         R7 K18 [{"items"}]
      180 GETIMPORT                        R8 K2 [table.freeze]
      182 MOVE                             R9 R0
      183 CALL                             R8 1 1
      184 SETTABLEKS                       R8 R7 K17 ["items"]
      186 CALL                             R6 1 -1
      187 FASTCALL                         TABLE_INSERT ; [+2]
      188 GETIMPORT                        R4 K11 [table.insert]
      190 CALL                             R4 -1 0
      191 GETIMPORT                        R4 K2 [table.freeze]
      193 MOVE                             R5 R1
      194 CALL                             R4 1 -1
      195 RETURN                           R4 -1

PROTO_5:
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
       14 GETUPVAL                         R3 3
       15 GETTABLEKS                       R3 R3 K2 ["ContextServices"]
       17 GETTABLEKS                       R3 R3 K3 ["Localization"]
       19 NAMECALL                         R3 R3 K4 ["use"]
       21 CALL                             R3 1 1
       22 GETTABLEKS                       R4 R1 K5 ["visibleMenuState"]
       24 GETUPVAL                         R5 0
       25 GETTABLEKS                       R5 R5 K6 ["useCallback"]
       27 NEWCLOSURE                       R6 P0
       28 CAPTURE                          VAL R1
       29 CAPTURE                          VAL R0
       30 CAPTURE                          VAL R2
       31 NEWTABLE                         R7 0 3
       33 MOVE                             R8 R0
       34 GETTABLEKS                       R9 R1 K5 ["visibleMenuState"]
       36 GETTABLEKS                       R10 R2 K7 ["createConnectedParameterAsync"]
       38 SETLIST                          R7 R8 3 [1]
       40 CALL                             R5 2 1
       41 GETUPVAL                         R6 4
       42 CALL                             R6 0 1
       43 GETUPVAL                         R7 0
       44 GETTABLEKS                       R7 R7 K8 ["useMemo"]
       46 NEWCLOSURE                       R8 P1
       47 CAPTURE                          VAL R6
       48 CAPTURE                          VAL R5
       49 CAPTURE                          VAL R4
       50 CAPTURE                          UPVAL U5
       51 CAPTURE                          UPVAL U6
       52 CAPTURE                          UPVAL U7
       53 CAPTURE                          UPVAL U8
       54 CAPTURE                          VAL R3
       55 NEWTABLE                         R9 0 4
       57 MOVE                             R10 R6
       58 MOVE                             R11 R5
       59 MOVE                             R12 R4
       60 MOVE                             R13 R3
       61 SETLIST                          R9 R10 4 [1]
       63 CALL                             R7 2 -1
       64 RETURN                           R7 -1

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
       21 GETTABLEKS                       R4 R0 K7 ["Parent"]
       23 GETTABLEKS                       R4 R4 K9 ["Framework"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K10 ["Components"]
       30 GETTABLEKS                       R5 R5 K11 ["GraphContext"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K10 ["Components"]
       37 GETTABLEKS                       R6 R6 K12 ["InsertNodeContext"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K7 ["Parent"]
       44 GETTABLEKS                       R7 R7 K13 ["React"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R8 R0 K14 ["Hooks"]
       51 GETTABLEKS                       R8 R8 K15 ["useExistingParameters"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R9 R0 K16 ["Flags"]
       58 GETTABLEKS                       R9 R9 K17 ["getFFlagAnimGraphUIEnableExpressionNodes"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K5 [require]
       63 GETTABLEKS                       R10 R0 K16 ["Flags"]
       65 GETTABLEKS                       R10 R10 K18 ["getFFlagAnimGraphUI_Localization2"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K5 [require]
       70 GETTABLEKS                       R11 R0 K16 ["Flags"]
       72 GETTABLEKS                       R11 R11 K19 ["getFFlagAnimGraphUI_ValueNodeInputProperties"]
       74 CALL                             R10 1 1
       75 DUPCLOSURE                       R11 K20 [PROTO_0]
       76 DUPCLOSURE                       R12 K21 [PROTO_1]
       77 DUPCLOSURE                       R13 K22 [PROTO_5]
       78 CAPTURE                          VAL R6
       79 CAPTURE                          VAL R5
       80 CAPTURE                          VAL R4
       81 CAPTURE                          VAL R3
       82 CAPTURE                          VAL R7
       83 CAPTURE                          VAL R8
       84 CAPTURE                          VAL R10
       85 CAPTURE                          VAL R1
       86 CAPTURE                          VAL R9
       87 RETURN                           R13 1
