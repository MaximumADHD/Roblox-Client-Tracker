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
       17 JUMPIFNOT                        R1 ; [+91]
       18 GETUPVAL                         R1 1
       19 GETTABLEKS                       R1 R1 K5 ["EXPRESSION_NODE_CLASSNAME"]
       21 JUMPIFNOTEQ                      R0 R1 ; [+87]
       23 GETUPVAL                         R3 0
       24 GETTABLEKS                       R3 R3 K0 ["visibleMenuState"]
       26 GETTABLEKS                       R3 R3 K6 ["sourcePinInfo"]
       28 JUMPIFNOTEQKNIL                  R3 ; [+2]
       30 LOADB                            R2 0 +1
       31 LOADB                            R2 1
       32 FASTCALL2K                       ASSERT R2 K7 ; [+4]
       34 LOADK                            R3 K7 ["Expected sourcePinInfo"]
       35 GETIMPORT                        R1 K9 [assert]
       37 CALL                             R1 2 0
       38 GETUPVAL                         R1 2
       39 CALL                             R1 0 1
       40 JUMPIFNOT                        R1 ; [+15]
       41 FASTCALL1                        TYPE R0 ; [+3]
       42 MOVE                             R4 R0
       43 GETIMPORT                        R3 K11 [type]
       45 CALL                             R3 1 1
       46 JUMPIFEQKS                       R3 K12 ["string"] ; [+2]
       48 LOADB                            R2 0 +1
       49 LOADB                            R2 1
       50 FASTCALL2K                       ASSERT R2 K13 ; [+4]
       52 LOADK                            R3 K13 ["id for parameter type nodes should be a string"]
       53 GETIMPORT                        R1 K9 [assert]
       55 CALL                             R1 2 0
       56 GETUPVAL                         R1 3
       57 GETTABLEKS                       R1 R1 K14 ["createConnectedParameterAsync"]
       59 DUPTABLE                         R2 K19 [{"sourcePinInfo", "pinPosition", "parameterName", "existingValue", "parameterClass"}]
       60 GETUPVAL                         R3 0
       61 GETTABLEKS                       R3 R3 K0 ["visibleMenuState"]
       63 GETTABLEKS                       R3 R3 K6 ["sourcePinInfo"]
       65 SETTABLEKS                       R3 R2 K6 ["sourcePinInfo"]
       67 GETUPVAL                         R3 0
       68 GETTABLEKS                       R3 R3 K0 ["visibleMenuState"]
       70 GETTABLEKS                       R3 R3 K20 ["targetPinPosition"]
       72 SETTABLEKS                       R3 R2 K15 ["pinPosition"]
       74 GETUPVAL                         R3 0
       75 GETTABLEKS                       R3 R3 K0 ["visibleMenuState"]
       77 GETTABLEKS                       R3 R3 K6 ["sourcePinInfo"]
       79 GETTABLEKS                       R3 R3 K21 ["sourcePinName"]
       81 SETTABLEKS                       R3 R2 K16 ["parameterName"]
       83 GETUPVAL                         R3 0
       84 GETTABLEKS                       R3 R3 K0 ["visibleMenuState"]
       86 GETTABLEKS                       R3 R3 K6 ["sourcePinInfo"]
       88 GETTABLEKS                       R3 R3 K22 ["sourcePinValue"]
       90 SETTABLEKS                       R3 R2 K17 ["existingValue"]
       92 GETUPVAL                         R4 2
       93 CALL                             R4 0 1
       94 JUMPIFNOT                        R4 ; [+9]
       95 FASTCALL1                        TYPE R0 ; [+3]
       96 MOVE                             R5 R0
       97 GETIMPORT                        R4 K11 [type]
       99 CALL                             R4 1 1
      100 JUMPIFNOTEQKS                    R4 K12 ["string"] ; [+3]
      102 MOVE                             R3 R0
      103 JUMP                             ; [+1]
      104 LOADNIL                          R3
      105 SETTABLEKS                       R3 R2 K18 ["parameterClass"]
      107 CALL                             R1 1 0
      108 JUMP                             ; [+27]
      109 FASTCALL1                        TYPE R0 ; [+3]
      110 MOVE                             R2 R0
      111 GETIMPORT                        R1 K11 [type]
      113 CALL                             R1 1 1
      114 JUMPIFNOTEQKS                    R1 K23 ["number"] ; [+6]
      116 GETIMPORT                        R1 K25 [error]
      118 LOADK                            R2 K26 ["Unexpected node ID type of number"]
      119 CALL                             R1 1 0
      120 JUMP                             ; [+15]
      121 GETUPVAL                         R1 3
      122 GETTABLEKS                       R1 R1 K27 ["createNode"]
      124 MOVE                             R2 R0
      125 GETUPVAL                         R3 0
      126 GETTABLEKS                       R3 R3 K0 ["visibleMenuState"]
      128 GETTABLEKS                       R3 R3 K20 ["targetPinPosition"]
      130 GETUPVAL                         R4 0
      131 GETTABLEKS                       R4 R4 K0 ["visibleMenuState"]
      133 GETTABLEKS                       R4 R4 K6 ["sourcePinInfo"]
      135 CALL                             R1 3 0
      136 GETUPVAL                         R1 4
      137 CALL                             R1 0 0
      138 RETURN                           R0 0

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
