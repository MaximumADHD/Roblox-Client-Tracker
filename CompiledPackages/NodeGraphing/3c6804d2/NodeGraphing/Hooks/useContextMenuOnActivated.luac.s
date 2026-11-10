PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["visibleMenuState"]
        3 JUMPIFNOTEQKNIL                  R1 ; [+6]
        5 GETIMPORT                        R1 K2 [warn]
        7 LOADK                            R2 K3 ["No insertNodeContext.visibleMenuState"]
        8 CALL                             R1 1 0
        9 RETURN                           R0 0
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R1 R1 K4 ["PARAMETER_NODE_CLASSNAME"]
       13 JUMPIFEQ                         R0 R1 ; [+9]
       15 GETUPVAL                         R1 2
       16 CALL                             R1 0 1
       17 JUMPIFNOT                        R1 ; [+135]
       18 GETUPVAL                         R1 1
       19 GETTABLEKS                       R1 R1 K5 ["EXPRESSION_NODE_CLASSNAME"]
       21 JUMPIFNOTEQ                      R0 R1 ; [+131]
       23 GETUPVAL                         R1 0
       24 GETTABLEKS                       R1 R1 K0 ["visibleMenuState"]
       26 GETTABLEKS                       R1 R1 K6 ["sourcePinInfo"]
       28 GETUPVAL                         R2 2
       29 CALL                             R2 0 1
       30 JUMPIFNOT                        R2 ; [+36]
       31 GETUPVAL                         R2 1
       32 GETTABLEKS                       R2 R2 K5 ["EXPRESSION_NODE_CLASSNAME"]
       34 JUMPIFNOTEQ                      R0 R2 ; [+32]
       36 JUMPIFEQKNIL                     R1 ; [+5]
       38 GETTABLEKS                       R2 R1 K7 ["sourcePinDataType"]
       40 JUMPIFEQKS                       R2 K8 ["Parameter"] ; [+26]
       42 GETUPVAL                         R2 3
       43 GETTABLEKS                       R2 R2 K9 ["createParameter"]
       45 DUPTABLE                         R3 K15 [{["parameterType"], ["parameterClass"], ["parameterName"] = "", ["pinPosition"]}]
       46 GETUPVAL                         R4 1
       47 GETTABLEKS                       R4 R4 K5 ["EXPRESSION_NODE_CLASSNAME"]
       49 SETTABLEKS                       R4 R3 K10 ["parameterType"]
       51 GETUPVAL                         R4 1
       52 GETTABLEKS                       R4 R4 K5 ["EXPRESSION_NODE_CLASSNAME"]
       54 SETTABLEKS                       R4 R3 K11 ["parameterClass"]
       56 GETUPVAL                         R4 0
       57 GETTABLEKS                       R4 R4 K0 ["visibleMenuState"]
       59 GETTABLEKS                       R4 R4 K16 ["targetPinPosition"]
       61 SETTABLEKS                       R4 R3 K14 ["pinPosition"]
       63 CALL                             R2 1 0
       64 GETUPVAL                         R2 4
       65 CALL                             R2 0 0
       66 RETURN                           R0 0
       67 GETUPVAL                         R4 0
       68 GETTABLEKS                       R4 R4 K0 ["visibleMenuState"]
       70 GETTABLEKS                       R4 R4 K6 ["sourcePinInfo"]
       72 JUMPIFNOTEQKNIL                  R4 ; [+2]
       74 LOADB                            R3 0 +1
       75 LOADB                            R3 1
       76 FASTCALL2K                       ASSERT R3 K17 ; [+4]
       78 LOADK                            R4 K17 ["Expected sourcePinInfo"]
       79 GETIMPORT                        R2 K19 [assert]
       81 CALL                             R2 2 0
       82 GETUPVAL                         R2 2
       83 CALL                             R2 0 1
       84 JUMPIFNOT                        R2 ; [+15]
       85 FASTCALL1                        TYPE R0 ; [+3]
       86 MOVE                             R5 R0
       87 GETIMPORT                        R4 K21 [type]
       89 CALL                             R4 1 1
       90 JUMPIFEQKS                       R4 K22 ["string"] ; [+2]
       92 LOADB                            R3 0 +1
       93 LOADB                            R3 1
       94 FASTCALL2K                       ASSERT R3 K23 ; [+4]
       96 LOADK                            R4 K23 ["id for parameter type nodes should be a string"]
       97 GETIMPORT                        R2 K19 [assert]
       99 CALL                             R2 2 0
      100 GETUPVAL                         R2 3
      101 GETTABLEKS                       R2 R2 K24 ["createConnectedParameterAsync"]
      103 DUPTABLE                         R3 K26 [{"sourcePinInfo", "pinPosition", "parameterName", "existingValue", "parameterClass"}]
      104 GETUPVAL                         R4 0
      105 GETTABLEKS                       R4 R4 K0 ["visibleMenuState"]
      107 GETTABLEKS                       R4 R4 K6 ["sourcePinInfo"]
      109 SETTABLEKS                       R4 R3 K6 ["sourcePinInfo"]
      111 GETUPVAL                         R4 0
      112 GETTABLEKS                       R4 R4 K0 ["visibleMenuState"]
      114 GETTABLEKS                       R4 R4 K16 ["targetPinPosition"]
      116 SETTABLEKS                       R4 R3 K14 ["pinPosition"]
      118 GETUPVAL                         R4 0
      119 GETTABLEKS                       R4 R4 K0 ["visibleMenuState"]
      121 GETTABLEKS                       R4 R4 K6 ["sourcePinInfo"]
      123 GETTABLEKS                       R4 R4 K27 ["sourcePinName"]
      125 SETTABLEKS                       R4 R3 K12 ["parameterName"]
      127 GETUPVAL                         R4 0
      128 GETTABLEKS                       R4 R4 K0 ["visibleMenuState"]
      130 GETTABLEKS                       R4 R4 K6 ["sourcePinInfo"]
      132 GETTABLEKS                       R4 R4 K28 ["sourcePinValue"]
      134 SETTABLEKS                       R4 R3 K25 ["existingValue"]
      136 GETUPVAL                         R5 2
      137 CALL                             R5 0 1
      138 JUMPIFNOT                        R5 ; [+9]
      139 FASTCALL1                        TYPE R0 ; [+3]
      140 MOVE                             R6 R0
      141 GETIMPORT                        R5 K21 [type]
      143 CALL                             R5 1 1
      144 JUMPIFNOTEQKS                    R5 K22 ["string"] ; [+3]
      146 MOVE                             R4 R0
      147 JUMP                             ; [+1]
      148 LOADNIL                          R4
      149 SETTABLEKS                       R4 R3 K11 ["parameterClass"]
      151 CALL                             R2 1 0
      152 JUMP                             ; [+27]
      153 FASTCALL1                        TYPE R0 ; [+3]
      154 MOVE                             R2 R0
      155 GETIMPORT                        R1 K21 [type]
      157 CALL                             R1 1 1
      158 JUMPIFNOTEQKS                    R1 K29 ["number"] ; [+6]
      160 GETIMPORT                        R1 K31 [error]
      162 LOADK                            R2 K32 ["Unexpected node ID type of number"]
      163 CALL                             R1 1 0
      164 JUMP                             ; [+15]
      165 GETUPVAL                         R1 3
      166 GETTABLEKS                       R1 R1 K33 ["createNode"]
      168 MOVE                             R2 R0
      169 GETUPVAL                         R3 0
      170 GETTABLEKS                       R3 R3 K0 ["visibleMenuState"]
      172 GETTABLEKS                       R3 R3 K16 ["targetPinPosition"]
      174 GETUPVAL                         R4 0
      175 GETTABLEKS                       R4 R4 K0 ["visibleMenuState"]
      177 GETTABLEKS                       R4 R4 K6 ["sourcePinInfo"]
      179 CALL                             R1 3 0
      180 GETUPVAL                         R1 4
      181 CALL                             R1 0 0
      182 RETURN                           R0 0

PROTO_1:
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
       15 GETTABLEKS                       R3 R3 K2 ["useEventCallback"]
       17 NEWCLOSURE                       R4 P0
       18 CAPTURE                          VAL R1
       19 CAPTURE                          UPVAL U4
       20 CAPTURE                          UPVAL U5
       21 CAPTURE                          VAL R2
       22 CAPTURE                          VAL R0
       23 CALL                             R3 1 -1
       24 RETURN                           R3 -1

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
       14 GETTABLEKS                       R3 R0 K7 ["Components"]
       16 GETTABLEKS                       R3 R3 K8 ["GraphContext"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K7 ["Components"]
       23 GETTABLEKS                       R4 R4 K9 ["InsertNodeContext"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K10 ["Parent"]
       30 GETTABLEKS                       R5 R5 K11 ["React"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K10 ["Parent"]
       37 GETTABLEKS                       R6 R6 K12 ["ReactUtils"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K13 ["Flags"]
       44 GETTABLEKS                       R7 R7 K14 ["getFFlagAnimGraphUIEnableExpressionNodes"]
       46 CALL                             R6 1 1
       47 DUPCLOSURE                       R7 K15 [PROTO_1]
       48 CAPTURE                          VAL R4
       49 CAPTURE                          VAL R3
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R5
       52 CAPTURE                          VAL R1
       53 CAPTURE                          VAL R6
       54 RETURN                           R7 1
