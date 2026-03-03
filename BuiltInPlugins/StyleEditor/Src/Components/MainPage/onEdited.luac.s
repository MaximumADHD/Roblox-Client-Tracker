PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["dispatch"]
        3 GETUPVAL                         R1 1
        4 LOADB                            R2 1
        5 CALL                             R1 1 -1
        6 CALL                             R0 -1 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["Name"]
        4 GETIMPORT                        R0 K4 [Enum.FinishRecordingOperation.Commit]
        6 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 GETUPVAL                         R6 2
        4 GETTABLEKS                       R5 R6 K0 ["path"]
        6 LOADN                            R6 1
        7 NAMECALL                         R1 R1 K1 ["updateCell"]
        9 CALL                             R1 5 1
       10 MOVE                             R0 R1
       11 GETUPVAL                         R1 3
       12 GETTABLEKS                       R2 R0 K2 ["Items"]
       14 CALL                             R1 1 1
       15 SETTABLEKS                       R1 R0 K2 ["Items"]
       17 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["tableItems"]
        3 GETTABLEKS                       R4 R0 K1 ["path"]
        5 NAMECALL                         R1 R1 K2 ["getChild"]
        7 CALL                             R1 3 1
        8 GETTABLEKS                       R2 R1 K3 ["Instance"]
       10 JUMPIF                           R2 ; [+5]
       11 GETIMPORT                        R3 K5 [warn]
       13 LOADK                            R4 K6 ["Edited row does not have a valid Instance associated"]
       14 CALL                             R3 1 0
       15 RETURN                           R0 0
       16 JUMPIFNOT                        R2 ; [+129]
       17 GETTABLEKS                       R3 R0 K7 ["newValue"]
       19 GETTABLEKS                       R4 R2 K8 ["Name"]
       21 JUMPIFEQ                         R4 R3 ; [+102]
       23 LOADK                            R6 K9 ["StyleRule"]
       24 NAMECALL                         R4 R2 K10 ["IsA"]
       26 CALL                             R4 2 1
       27 JUMPIFNOT                        R4 ; [+81]
       28 GETUPVAL                         R4 1
       29 JUMPIFNOT                        R4 ; [+71]
       30 GETUPVAL                         R5 2
       31 GETTABLEKS                       R4 R5 K11 ["getQueryTypeFromSelector"]
       33 GETTABLEKS                       R5 R2 K12 ["Selector"]
       35 CALL                             R4 1 1
       36 LOADNIL                          R5
       37 JUMPIFNOT                        R4 ; [+8]
       38 GETUPVAL                         R7 2
       39 GETTABLEKS                       R6 R7 K13 ["getDataFromSelector"]
       41 GETTABLEKS                       R7 R2 K12 ["Selector"]
       43 MOVE                             R8 R4
       44 CALL                             R6 2 1
       45 MOVE                             R5 R6
       46 GETUPVAL                         R7 2
       47 GETTABLEKS                       R6 R7 K11 ["getQueryTypeFromSelector"]
       49 MOVE                             R7 R3
       50 CALL                             R6 1 1
       51 LOADNIL                          R7
       52 JUMPIFNOT                        R6 ; [+7]
       53 GETUPVAL                         R9 2
       54 GETTABLEKS                       R8 R9 K13 ["getDataFromSelector"]
       56 MOVE                             R9 R3
       57 MOVE                             R10 R6
       58 CALL                             R8 2 1
       59 MOVE                             R7 R8
       60 JUMPIFNOT                        R6 ; [+8]
       61 JUMPIFNOT                        R7 ; [+7]
       62 GETUPVAL                         R9 2
       63 GETTABLEKS                       R8 R9 K14 ["constructSelector"]
       65 MOVE                             R9 R6
       66 MOVE                             R10 R7
       67 CALL                             R8 2 1
       68 MOVE                             R3 R8
       69 GETTABLEKS                       R8 R0 K15 ["dispatch"]
       71 GETUPVAL                         R9 3
       72 MOVE                             R10 R2
       73 MOVE                             R11 R3
       74 CALL                             R9 2 -1
       75 CALL                             R8 -1 0
       76 JUMPIFEQ                         R4 R6 ; [+8]
       78 GETIMPORT                        R8 K18 [task.defer]
       80 NEWCLOSURE                       R9 P0
       81 CAPTURE                          VAL R0
       82 CAPTURE                          UPVAL U4
       83 CALL                             R8 1 0
       84 JUMP                             ; [+60]
       85 JUMPIFNOT                        R4 ; [+59]
       86 JUMPIFNOT                        R6 ; [+58]
       87 JUMPIFNOT                        R5 ; [+57]
       88 JUMPIFNOT                        R7 ; [+56]
       89 GETUPVAL                         R9 2
       90 GETTABLEKS                       R8 R9 K19 ["syncQueryRuleSelectors"]
       92 GETTABLEKS                       R9 R1 K3 ["Instance"]
       94 MOVE                             R10 R5
       95 GETTABLEKS                       R11 R7 K8 ["Name"]
       97 GETTABLEKS                       R12 R0 K15 ["dispatch"]
       99 CALL                             R8 4 0
      100 JUMP                             ; [+44]
      101 GETTABLEKS                       R4 R0 K15 ["dispatch"]
      103 GETUPVAL                         R5 3
      104 MOVE                             R6 R2
      105 MOVE                             R7 R3
      106 CALL                             R5 2 -1
      107 CALL                             R4 -1 0
      108 JUMP                             ; [+36]
      109 GETUPVAL                         R4 5
      110 DUPTABLE                         R5 K22 [{"Name", "DisplayName", "DoChange"}]
      111 LOADK                            R6 K23 ["StyleEditor.EditInstanceName"]
      112 SETTABLEKS                       R6 R5 K8 ["Name"]
      114 LOADK                            R6 K24 ["Style Editor - Edit Instance Name"]
      115 SETTABLEKS                       R6 R5 K20 ["DisplayName"]
      117 NEWCLOSURE                       R6 P1
      118 CAPTURE                          VAL R2
      119 CAPTURE                          REF R3
      120 SETTABLEKS                       R6 R5 K21 ["DoChange"]
      122 CALL                             R4 1 0
      123 JUMP                             ; [+21]
      124 DUPTABLE                         R4 K26 [{"Schema"}]
      125 GETUPVAL                         R5 6
      126 GETTABLEKS                       R7 R1 K8 ["Name"]
      128 GETTABLEKS                       R6 R7 K25 ["Schema"]
      130 DUPTABLE                         R7 K28 [{"Editing"}]
      131 LOADB                            R8 0
      132 SETTABLEKS                       R8 R7 K27 ["Editing"]
      134 CALL                             R5 2 1
      135 SETTABLEKS                       R5 R4 K25 ["Schema"]
      137 GETTABLEKS                       R5 R0 K29 ["setState"]
      139 NEWCLOSURE                       R6 P2
      140 CAPTURE                          UPVAL U0
      141 CAPTURE                          VAL R4
      142 CAPTURE                          VAL R0
      143 CAPTURE                          UPVAL U7
      144 CALL                             R5 1 0
      145 CLOSEUPVALS                      R3
      146 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ChangeHistoryService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R5 K5 [script]
        9 GETTABLEKS                       R4 R5 K6 ["Parent"]
       11 GETTABLEKS                       R3 R4 K6 ["Parent"]
       13 GETTABLEKS                       R2 R3 K6 ["Parent"]
       15 GETTABLEKS                       R1 R2 K6 ["Parent"]
       17 GETTABLEKS                       R3 R1 K7 ["Src"]
       19 GETTABLEKS                       R2 R3 K8 ["Thunks"]
       21 GETIMPORT                        R3 K10 [require]
       23 GETTABLEKS                       R5 R2 K11 ["Change"]
       25 GETTABLEKS                       R4 R5 K12 ["SetStyleRuleSelector"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R5 R1 K7 ["Src"]
       30 GETTABLEKS                       R4 R5 K13 ["Actions"]
       32 GETIMPORT                        R5 K10 [require]
       34 GETTABLEKS                       R7 R4 K14 ["Window"]
       36 GETTABLEKS                       R6 R7 K15 ["SetIsDirty"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K10 [require]
       41 GETTABLEKS                       R9 R1 K7 ["Src"]
       43 GETTABLEKS                       R8 R9 K16 ["Util"]
       45 GETTABLEKS                       R7 R8 K17 ["StyleSchema"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K10 [require]
       50 GETTABLEKS                       R10 R1 K7 ["Src"]
       52 GETTABLEKS                       R9 R10 K16 ["Util"]
       54 GETTABLEKS                       R8 R9 K18 ["recordChange"]
       56 CALL                             R7 1 1
       57 MOVE                             R8 R0
       58 CALL                             R7 1 1
       59 GETIMPORT                        R8 K10 [require]
       61 GETTABLEKS                       R11 R1 K7 ["Src"]
       63 GETTABLEKS                       R10 R11 K16 ["Util"]
       65 GETTABLEKS                       R9 R10 K19 ["StyleQueryHelpers"]
       67 CALL                             R8 1 1
       68 GETIMPORT                        R9 K10 [require]
       70 GETTABLEKS                       R11 R1 K20 ["Packages"]
       72 GETTABLEKS                       R10 R11 K21 ["Dash"]
       74 CALL                             R9 1 1
       75 GETTABLEKS                       R10 R9 K22 ["copy"]
       77 GETTABLEKS                       R11 R9 K23 ["join"]
       79 GETIMPORT                        R12 K10 [require]
       81 GETTABLEKS                       R15 R1 K7 ["Src"]
       83 GETTABLEKS                       R14 R15 K24 ["Flags"]
       85 GETTABLEKS                       R13 R14 K25 ["getFFlagStyleQuery"]
       87 CALL                             R12 1 1
       88 CALL                             R12 0 1
       89 GETIMPORT                        R13 K10 [require]
       91 GETIMPORT                        R16 K5 [script]
       93 GETTABLEKS                       R15 R16 K6 ["Parent"]
       95 GETTABLEKS                       R14 R15 K26 ["Tree"]
       97 CALL                             R13 1 1
       98 GETTABLEKS                       R14 R13 K27 ["EditTree"]
      100 DUPCLOSURE                       R15 K28 [PROTO_3]
      101 CAPTURE                          VAL R14
      102 CAPTURE                          VAL R12
      103 CAPTURE                          VAL R8
      104 CAPTURE                          VAL R3
      105 CAPTURE                          VAL R5
      106 CAPTURE                          VAL R7
      107 CAPTURE                          VAL R11
      108 CAPTURE                          VAL R10
      109 RETURN                           R15 1
