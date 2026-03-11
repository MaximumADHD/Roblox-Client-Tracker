PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["Label"]
        3 JUMPIF                           R0 ; [+7]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K1 ["formatPropertyName"]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R1 R2 K2 ["Name"]
       10 CALL                             R0 1 1
       11 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["IsParameterized"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K1 ["ParameterName"]
        7 JUMPIF                           R0 ; [+2]
        8 LOADB                            R0 0
        9 RETURN                           R0 1
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R2 R3 K2 ["parameterOverrides"]
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R3 R4 K1 ["ParameterName"]
       16 GETTABLE                         R1 R2 R3
       17 JUMPIFNOTEQKNIL                  R1 ; [+2]
       19 LOADB                            R0 0 +1
       20 LOADB                            R0 1
       21 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 GETUPVAL                         R0 2
        5 GETUPVAL                         R2 3
        6 GETTABLEKS                       R1 R2 K1 ["ParameterName"]
        8 SETTABLEKS                       R1 R0 K0 ["current"]
       10 GETUPVAL                         R0 4
       11 GETUPVAL                         R2 5
       12 GETTABLEKS                       R1 R2 K2 ["decrementParameterOverrideCountAsync"]
       14 SETTABLEKS                       R1 R0 K0 ["current"]
       16 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K0 ["current"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+10]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K0 ["current"]
        7 JUMPIFNOT                        R0 ; [+6]
        8 GETIMPORT                        R0 K3 [task.spawn]
       10 NEWCLOSURE                       R1 P0
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          UPVAL U0
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_5:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+8]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R0 R1 K0 ["incrementParameterOverrideCountAsync"]
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R1 R2 K1 ["ParameterName"]
        8 CALL                             R0 1 0
        9 JUMP                             ; [+7]
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R0 R1 K2 ["decrementParameterOverrideCountAsync"]
       13 GETUPVAL                         R2 2
       14 GETTABLEKS                       R1 R2 K1 ["ParameterName"]
       16 CALL                             R0 1 0
       17 GETUPVAL                         R0 3
       18 GETUPVAL                         R1 0
       19 CALL                             R0 1 0
       20 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["ParameterName"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 1
        6 GETUPVAL                         R1 2
        7 JUMPIFEQ                         R0 R1 ; [+9]
        9 GETIMPORT                        R0 K3 [task.spawn]
       11 NEWCLOSURE                       R1 P0
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          UPVAL U0
       15 CAPTURE                          UPVAL U4
       16 CALL                             R0 1 0
       17 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+2]
        2 LOADB                            R0 0
        3 RETURN                           R0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K0 ["parameterOverrides"]
        7 GETUPVAL                         R3 0
        8 GETTABLE                         R1 R2 R3
        9 JUMPIFNOTEQKNIL                  R1 ; [+2]
       11 LOADB                            R0 0 +1
       12 LOADB                            R0 1
       13 RETURN                           R0 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+8]
        2 GETUPVAL                         R0 1
        3 JUMPIFEQKNIL                     R0 ; [+6]
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R0 R1 K0 ["decrementParameterOverrideCountAsync"]
        8 GETUPVAL                         R1 1
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 3
       11 JUMPIFNOT                        R0 ; [+12]
       12 GETUPVAL                         R1 4
       13 GETTABLEKS                       R0 R1 K1 ["ParameterName"]
       15 JUMPIFEQKNIL                     R0 ; [+8]
       17 GETUPVAL                         R1 2
       18 GETTABLEKS                       R0 R1 K2 ["incrementParameterOverrideCountAsync"]
       20 GETUPVAL                         R2 4
       21 GETTABLEKS                       R1 R2 K1 ["ParameterName"]
       23 CALL                             R0 1 0
       24 GETUPVAL                         R0 5
       25 GETUPVAL                         R2 4
       26 GETTABLEKS                       R1 R2 K1 ["ParameterName"]
       28 CALL                             R0 1 0
       29 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["ParameterName"]
        3 GETUPVAL                         R1 1
        4 JUMPIFEQ                         R0 R1 ; [+11]
        6 GETIMPORT                        R0 K3 [task.spawn]
        8 NEWCLOSURE                       R1 P0
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          UPVAL U4
       13 CAPTURE                          UPVAL U0
       14 CAPTURE                          UPVAL U5
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+9]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R0 R1 K0 ["setParameterOverrideValueAsync"]
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R1 R2 K1 ["ParameterName"]
        8 GETUPVAL                         R2 0
        9 CALL                             R0 2 0
       10 RETURN                           R0 0
       11 GETUPVAL                         R1 1
       12 GETTABLEKS                       R0 R1 K2 ["removeParameterOverrideAsync"]
       14 GETUPVAL                         R2 2
       15 GETTABLEKS                       R1 R2 K1 ["ParameterName"]
       17 CALL                             R0 1 0
       18 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["IsParameterized"]
        3 JUMPIFNOT                        R1 ; [+12]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K1 ["ParameterName"]
        7 JUMPIFNOT                        R1 ; [+8]
        8 GETIMPORT                        R1 K4 [task.spawn]
       10 NEWCLOSURE                       R2 P0
       11 CAPTURE                          VAL R0
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          UPVAL U0
       14 CALL                             R1 1 0
       15 RETURN                           R0 0
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R1 R2 K5 ["OnChanged"]
       19 JUMPIFNOT                        R1 ; [+8]
       20 GETUPVAL                         R2 0
       21 GETTABLEKS                       R1 R2 K5 ["OnChanged"]
       23 GETUPVAL                         R3 0
       24 GETTABLEKS                       R2 R3 K6 ["Name"]
       26 MOVE                             R3 R0
       27 CALL                             R1 2 0
       28 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["removeParameterOverrideAsync"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["ParameterName"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_14:
        0 GETIMPORT                        R0 K2 [task.spawn]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R0 R1 K0 ["ParameterName"]
        5 JUMPIF                           R0 ; [+4]
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R0 R1 K1 ["Value"]
        9 RETURN                           R0 1
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R1 R2 K2 ["parameterOverrides"]
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R2 R3 K0 ["ParameterName"]
       16 GETTABLE                         R0 R1 R2
       17 RETURN                           R0 1

PROTO_16:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K2 ["useState"]
       10 LOADNIL                          R3
       11 CALL                             R2 1 2
       12 GETUPVAL                         R5 2
       13 GETTABLEKS                       R4 R5 K3 ["useSignalState"]
       15 GETUPVAL                         R6 3
       16 GETTABLEKS                       R5 R6 K4 ["useObserveIsDisabled"]
       18 GETTABLEKS                       R6 R0 K5 ["NodeId"]
       20 CALL                             R5 1 -1
       21 CALL                             R4 -1 1
       22 GETUPVAL                         R6 0
       23 GETTABLEKS                       R5 R6 K6 ["useMemo"]
       25 NEWCLOSURE                       R6 P0
       26 CAPTURE                          VAL R0
       27 CAPTURE                          UPVAL U4
       28 NEWTABLE                         R7 0 2
       30 GETTABLEKS                       R8 R0 K7 ["Label"]
       32 GETTABLEKS                       R9 R0 K8 ["Name"]
       34 SETLIST                          R7 R8 2 [1]
       36 CALL                             R5 2 1
       37 GETUPVAL                         R7 0
       38 GETTABLEKS                       R6 R7 K6 ["useMemo"]
       40 NEWCLOSURE                       R7 P1
       41 CAPTURE                          VAL R0
       42 CAPTURE                          VAL R1
       43 NEWTABLE                         R8 0 5
       45 GETTABLEKS                       R9 R0 K8 ["Name"]
       47 GETTABLEKS                       R10 R0 K9 ["IsParameterized"]
       49 GETTABLEKS                       R11 R0 K10 ["ParameterName"]
       51 MOVE                             R12 R2
       52 GETTABLEKS                       R13 R1 K11 ["parameterOverrides"]
       54 SETLIST                          R8 R9 5 [1]
       56 CALL                             R6 2 1
       57 GETUPVAL                         R8 5
       58 GETTABLEKS                       R7 R8 K12 ["useRefToState"]
       60 MOVE                             R8 R6
       61 CALL                             R7 1 1
       62 GETUPVAL                         R9 5
       63 GETTABLEKS                       R8 R9 K12 ["useRefToState"]
       65 GETTABLEKS                       R9 R0 K10 ["ParameterName"]
       67 CALL                             R8 1 1
       68 GETUPVAL                         R10 5
       69 GETTABLEKS                       R9 R10 K12 ["useRefToState"]
       71 GETTABLEKS                       R10 R1 K13 ["decrementParameterOverrideCountAsync"]
       73 CALL                             R9 1 1
       74 GETUPVAL                         R11 0
       75 GETTABLEKS                       R10 R11 K14 ["useEffect"]
       77 NEWCLOSURE                       R11 P2
       78 CAPTURE                          VAL R7
       79 CAPTURE                          VAL R6
       80 CAPTURE                          VAL R8
       81 CAPTURE                          VAL R0
       82 CAPTURE                          VAL R9
       83 CAPTURE                          VAL R1
       84 NEWTABLE                         R12 0 3
       86 MOVE                             R13 R6
       87 GETTABLEKS                       R14 R0 K10 ["ParameterName"]
       89 GETTABLEKS                       R15 R1 K13 ["decrementParameterOverrideCountAsync"]
       91 SETLIST                          R12 R13 3 [1]
       93 CALL                             R10 2 0
       94 GETUPVAL                         R11 0
       95 GETTABLEKS                       R10 R11 K14 ["useEffect"]
       97 NEWCLOSURE                       R11 P3
       98 CAPTURE                          VAL R8
       99 CAPTURE                          VAL R7
      100 CAPTURE                          VAL R9
      101 NEWTABLE                         R12 0 3
      103 MOVE                             R13 R7
      104 MOVE                             R14 R8
      105 MOVE                             R15 R9
      106 SETLIST                          R12 R13 3 [1]
      108 CALL                             R10 2 0
      109 GETUPVAL                         R11 0
      110 GETTABLEKS                       R10 R11 K2 ["useState"]
      112 MOVE                             R11 R6
      113 CALL                             R10 1 2
      114 GETUPVAL                         R13 0
      115 GETTABLEKS                       R12 R13 K14 ["useEffect"]
      117 NEWCLOSURE                       R13 P4
      118 CAPTURE                          VAL R0
      119 CAPTURE                          VAL R6
      120 CAPTURE                          VAL R10
      121 CAPTURE                          VAL R1
      122 CAPTURE                          VAL R11
      123 NEWTABLE                         R14 0 6
      125 MOVE                             R15 R6
      126 GETTABLEKS                       R16 R0 K10 ["ParameterName"]
      128 MOVE                             R17 R10
      129 MOVE                             R18 R11
      130 GETTABLEKS                       R19 R1 K15 ["incrementParameterOverrideCountAsync"]
      132 GETTABLEKS                       R20 R1 K13 ["decrementParameterOverrideCountAsync"]
      134 SETLIST                          R14 R15 6 [1]
      136 CALL                             R12 2 0
      137 GETUPVAL                         R13 0
      138 GETTABLEKS                       R12 R13 K6 ["useMemo"]
      140 NEWCLOSURE                       R13 P5
      141 CAPTURE                          VAL R2
      142 CAPTURE                          VAL R1
      143 NEWTABLE                         R14 0 2
      145 MOVE                             R15 R2
      146 GETTABLEKS                       R16 R1 K11 ["parameterOverrides"]
      148 SETLIST                          R14 R15 2 [1]
      150 CALL                             R12 2 1
      151 GETUPVAL                         R14 0
      152 GETTABLEKS                       R13 R14 K14 ["useEffect"]
      154 NEWCLOSURE                       R14 P6
      155 CAPTURE                          VAL R0
      156 CAPTURE                          VAL R2
      157 CAPTURE                          VAL R12
      158 CAPTURE                          VAL R1
      159 CAPTURE                          VAL R6
      160 CAPTURE                          VAL R3
      161 NEWTABLE                         R15 0 5
      163 MOVE                             R16 R12
      164 MOVE                             R17 R6
      165 GETTABLEKS                       R18 R0 K10 ["ParameterName"]
      167 GETTABLEKS                       R19 R1 K13 ["decrementParameterOverrideCountAsync"]
      169 MOVE                             R20 R2
      170 SETLIST                          R15 R16 5 [1]
      172 CALL                             R13 2 0
      173 GETUPVAL                         R14 0
      174 GETTABLEKS                       R13 R14 K16 ["useCallback"]
      176 NEWCLOSURE                       R14 P7
      177 CAPTURE                          VAL R0
      178 CAPTURE                          VAL R1
      179 NEWTABLE                         R15 0 7
      181 GETTABLEKS                       R16 R0 K8 ["Name"]
      183 GETTABLEKS                       R17 R0 K17 ["OnChanged"]
      185 GETTABLEKS                       R18 R0 K9 ["IsParameterized"]
      187 GETTABLEKS                       R19 R0 K10 ["ParameterName"]
      189 GETTABLEKS                       R20 R1 K18 ["setParameterOverrideValueAsync"]
      191 GETTABLEKS                       R21 R1 K15 ["incrementParameterOverrideCountAsync"]
      193 MOVE                             R22 R6
      194 SETLIST                          R15 R16 7 [1]
      196 CALL                             R13 2 1
      197 GETUPVAL                         R15 0
      198 GETTABLEKS                       R14 R15 K16 ["useCallback"]
      200 NEWCLOSURE                       R15 P8
      201 CAPTURE                          VAL R1
      202 CAPTURE                          VAL R0
      203 NEWTABLE                         R16 0 2
      205 GETTABLEKS                       R17 R0 K10 ["ParameterName"]
      207 GETTABLEKS                       R18 R1 K19 ["removeParameterOverrideAsync"]
      209 SETLIST                          R16 R17 2 [1]
      211 CALL                             R14 2 1
      212 GETUPVAL                         R16 0
      213 GETTABLEKS                       R15 R16 K6 ["useMemo"]
      215 NEWCLOSURE                       R16 P9
      216 CAPTURE                          VAL R6
      217 CAPTURE                          VAL R0
      218 CAPTURE                          VAL R1
      219 NEWTABLE                         R17 0 4
      221 GETTABLEKS                       R18 R0 K20 ["Value"]
      223 MOVE                             R19 R6
      224 GETTABLEKS                       R20 R0 K10 ["ParameterName"]
      226 GETTABLEKS                       R21 R1 K11 ["parameterOverrides"]
      228 SETLIST                          R17 R18 4 [1]
      230 CALL                             R15 2 1
      231 GETUPVAL                         R17 6
      232 GETTABLEKS                       R16 R17 K21 ["join"]
      234 MOVE                             R17 R0
      235 DUPTABLE                         R18 K25 [{"Value", "Label", "IsParameterOverridden", "IsDisabled", "OnChanged", "OnParameterOverrideRevert"}]
      236 SETTABLEKS                       R15 R18 K20 ["Value"]
      238 SETTABLEKS                       R5 R18 K7 ["Label"]
      240 SETTABLEKS                       R6 R18 K22 ["IsParameterOverridden"]
      242 SETTABLEKS                       R4 R18 K23 ["IsDisabled"]
      244 SETTABLEKS                       R13 R18 K17 ["OnChanged"]
      246 SETTABLEKS                       R14 R18 K24 ["OnParameterOverrideRevert"]
      248 CALL                             R16 2 1
      249 DUPTABLE                         R17 K27 [{"RenderedCompositorPin"}]
      250 GETUPVAL                         R19 0
      251 GETTABLEKS                       R18 R19 K28 ["createElement"]
      253 GETUPVAL                         R19 7
      254 DUPTABLE                         R20 K34 [{"Position", "pinSide", "pinDataType", "pinNodeId", "pinName"}]
      255 GETIMPORT                        R21 K37 [UDim2.new]
      257 LOADN                            R22 0
      258 LOADN                            R23 247
      259 LOADK                            R24 K38 [0.5]
      260 LOADN                            R25 0
      261 CALL                             R21 4 1
      262 SETTABLEKS                       R21 R20 K29 ["Position"]
      264 LOADK                            R21 K39 ["Input"]
      265 SETTABLEKS                       R21 R20 K30 ["pinSide"]
      267 LOADK                            R21 K40 ["Parameter"]
      268 SETTABLEKS                       R21 R20 K31 ["pinDataType"]
      270 GETTABLEKS                       R21 R0 K5 ["NodeId"]
      272 SETTABLEKS                       R21 R20 K32 ["pinNodeId"]
      274 GETTABLEKS                       R21 R0 K8 ["Name"]
      276 SETTABLEKS                       R21 R20 K33 ["pinName"]
      278 CALL                             R18 2 1
      279 SETTABLEKS                       R18 R17 K26 ["RenderedCompositorPin"]
      281 GETUPVAL                         R19 0
      282 GETTABLEKS                       R18 R19 K28 ["createElement"]
      284 GETUPVAL                         R19 8
      285 MOVE                             R20 R16
      286 MOVE                             R21 R17
      287 CALL                             R18 3 1
      288 JUMPIFNOTEQKNIL                  R18 ; [+10]
      290 GETIMPORT                        R19 K42 [warn]
      292 LOADK                            R21 K43 ["Unsupported property type: "]
      293 GETTABLEKS                       R22 R0 K44 ["Type"]
      295 CONCAT                           R20 R21 R22
      296 CALL                             R19 1 0
      297 LOADNIL                          R19
      298 RETURN                           R19 1
      299 GETUPVAL                         R20 0
      300 GETTABLEKS                       R19 R20 K28 ["createElement"]
      302 GETUPVAL                         R21 9
      303 GETTABLEKS                       R20 R21 K45 ["View"]
      305 DUPTABLE                         R21 K48 [{"tag", "LayoutOrder"}]
      306 LOADK                            R22 K49 ["auto-xy flex-x-between CompositorNodeProperty"]
      307 SETTABLEKS                       R22 R21 K46 ["tag"]
      309 GETTABLEKS                       R22 R0 K47 ["LayoutOrder"]
      311 SETTABLEKS                       R22 R21 K47 ["LayoutOrder"]
      313 MOVE                             R22 R18
      314 CALL                             R19 3 -1
      315 RETURN                           R19 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R5 R0 K6 ["Components"]
       11 GETTABLEKS                       R4 R5 K7 ["NodeView"]
       13 GETTABLEKS                       R3 R4 K8 ["CompositorNodes"]
       15 GETTABLEKS                       R2 R3 K9 ["CompositorStateUtils"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R4 R0 K10 ["Parent"]
       22 GETTABLEKS                       R3 R4 K11 ["Dash"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R5 R0 K10 ["Parent"]
       29 GETTABLEKS                       R4 R5 K12 ["Foundation"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R7 R0 K13 ["Util"]
       36 GETTABLEKS                       R6 R7 K14 ["Nodes"]
       38 GETTABLEKS                       R5 R6 K15 ["NodeNameFormattingUtils"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K16 ["NodeViewTypes"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R8 R0 K17 ["Contexts"]
       50 GETTABLEKS                       R7 R8 K18 ["ParameterOverrideContext"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R11 R0 K6 ["Components"]
       57 GETTABLEKS                       R10 R11 K7 ["NodeView"]
       59 GETTABLEKS                       R9 R10 K19 ["CompositorNodeProperty"]
       61 GETTABLEKS                       R8 R9 K20 ["PropertyComponent"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K5 [require]
       66 GETTABLEKS                       R10 R0 K10 ["Parent"]
       68 GETTABLEKS                       R9 R10 K21 ["React"]
       70 CALL                             R8 1 1
       71 GETIMPORT                        R9 K5 [require]
       73 GETTABLEKS                       R11 R0 K10 ["Parent"]
       75 GETTABLEKS                       R10 R11 K22 ["ReactUtils"]
       77 CALL                             R9 1 1
       78 GETIMPORT                        R10 K5 [require]
       80 GETTABLEKS                       R14 R0 K6 ["Components"]
       82 GETTABLEKS                       R13 R14 K7 ["NodeView"]
       84 GETTABLEKS                       R12 R13 K8 ["CompositorNodes"]
       86 GETTABLEKS                       R11 R12 K23 ["RenderedCompositorPin"]
       88 CALL                             R10 1 1
       89 GETIMPORT                        R11 K5 [require]
       91 GETTABLEKS                       R13 R0 K10 ["Parent"]
       93 GETTABLEKS                       R12 R13 K24 ["SignalsReact"]
       95 CALL                             R11 1 1
       96 DUPCLOSURE                       R12 K25 [PROTO_16]
       97 CAPTURE                          VAL R8
       98 CAPTURE                          VAL R6
       99 CAPTURE                          VAL R11
      100 CAPTURE                          VAL R1
      101 CAPTURE                          VAL R4
      102 CAPTURE                          VAL R9
      103 CAPTURE                          VAL R2
      104 CAPTURE                          VAL R10
      105 CAPTURE                          VAL R7
      106 CAPTURE                          VAL R3
      107 RETURN                           R12 1
