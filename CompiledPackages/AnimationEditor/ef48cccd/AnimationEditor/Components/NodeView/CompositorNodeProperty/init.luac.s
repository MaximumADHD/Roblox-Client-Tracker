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
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R4 R5 K3 ["useMemo"]
       15 NEWCLOSURE                       R5 P0
       16 CAPTURE                          VAL R0
       17 CAPTURE                          UPVAL U2
       18 NEWTABLE                         R6 0 2
       20 GETTABLEKS                       R7 R0 K4 ["Label"]
       22 GETTABLEKS                       R8 R0 K5 ["Name"]
       24 SETLIST                          R6 R7 2 [1]
       26 CALL                             R4 2 1
       27 GETUPVAL                         R6 0
       28 GETTABLEKS                       R5 R6 K3 ["useMemo"]
       30 NEWCLOSURE                       R6 P1
       31 CAPTURE                          VAL R0
       32 CAPTURE                          VAL R1
       33 NEWTABLE                         R7 0 5
       35 GETTABLEKS                       R8 R0 K5 ["Name"]
       37 GETTABLEKS                       R9 R0 K6 ["IsParameterized"]
       39 GETTABLEKS                       R10 R0 K7 ["ParameterName"]
       41 MOVE                             R11 R2
       42 GETTABLEKS                       R12 R1 K8 ["parameterOverrides"]
       44 SETLIST                          R7 R8 5 [1]
       46 CALL                             R5 2 1
       47 GETUPVAL                         R7 3
       48 GETTABLEKS                       R6 R7 K9 ["useRefToState"]
       50 MOVE                             R7 R5
       51 CALL                             R6 1 1
       52 GETUPVAL                         R8 3
       53 GETTABLEKS                       R7 R8 K9 ["useRefToState"]
       55 GETTABLEKS                       R8 R0 K7 ["ParameterName"]
       57 CALL                             R7 1 1
       58 GETUPVAL                         R9 3
       59 GETTABLEKS                       R8 R9 K9 ["useRefToState"]
       61 GETTABLEKS                       R9 R1 K10 ["decrementParameterOverrideCountAsync"]
       63 CALL                             R8 1 1
       64 GETUPVAL                         R10 0
       65 GETTABLEKS                       R9 R10 K11 ["useEffect"]
       67 NEWCLOSURE                       R10 P2
       68 CAPTURE                          VAL R6
       69 CAPTURE                          VAL R5
       70 CAPTURE                          VAL R7
       71 CAPTURE                          VAL R0
       72 CAPTURE                          VAL R8
       73 CAPTURE                          VAL R1
       74 NEWTABLE                         R11 0 3
       76 MOVE                             R12 R5
       77 GETTABLEKS                       R13 R0 K7 ["ParameterName"]
       79 GETTABLEKS                       R14 R1 K10 ["decrementParameterOverrideCountAsync"]
       81 SETLIST                          R11 R12 3 [1]
       83 CALL                             R9 2 0
       84 GETUPVAL                         R10 0
       85 GETTABLEKS                       R9 R10 K11 ["useEffect"]
       87 NEWCLOSURE                       R10 P3
       88 CAPTURE                          VAL R7
       89 CAPTURE                          VAL R6
       90 CAPTURE                          VAL R8
       91 NEWTABLE                         R11 0 3
       93 MOVE                             R12 R6
       94 MOVE                             R13 R7
       95 MOVE                             R14 R8
       96 SETLIST                          R11 R12 3 [1]
       98 CALL                             R9 2 0
       99 GETUPVAL                         R10 0
      100 GETTABLEKS                       R9 R10 K2 ["useState"]
      102 MOVE                             R10 R5
      103 CALL                             R9 1 2
      104 GETUPVAL                         R12 0
      105 GETTABLEKS                       R11 R12 K11 ["useEffect"]
      107 NEWCLOSURE                       R12 P4
      108 CAPTURE                          VAL R0
      109 CAPTURE                          VAL R5
      110 CAPTURE                          VAL R9
      111 CAPTURE                          VAL R1
      112 CAPTURE                          VAL R10
      113 NEWTABLE                         R13 0 6
      115 MOVE                             R14 R5
      116 GETTABLEKS                       R15 R0 K7 ["ParameterName"]
      118 MOVE                             R16 R9
      119 MOVE                             R17 R10
      120 GETTABLEKS                       R18 R1 K12 ["incrementParameterOverrideCountAsync"]
      122 GETTABLEKS                       R19 R1 K10 ["decrementParameterOverrideCountAsync"]
      124 SETLIST                          R13 R14 6 [1]
      126 CALL                             R11 2 0
      127 GETUPVAL                         R12 0
      128 GETTABLEKS                       R11 R12 K3 ["useMemo"]
      130 NEWCLOSURE                       R12 P5
      131 CAPTURE                          VAL R2
      132 CAPTURE                          VAL R1
      133 NEWTABLE                         R13 0 2
      135 MOVE                             R14 R2
      136 GETTABLEKS                       R15 R1 K8 ["parameterOverrides"]
      138 SETLIST                          R13 R14 2 [1]
      140 CALL                             R11 2 1
      141 GETUPVAL                         R13 0
      142 GETTABLEKS                       R12 R13 K11 ["useEffect"]
      144 NEWCLOSURE                       R13 P6
      145 CAPTURE                          VAL R0
      146 CAPTURE                          VAL R2
      147 CAPTURE                          VAL R11
      148 CAPTURE                          VAL R1
      149 CAPTURE                          VAL R5
      150 CAPTURE                          VAL R3
      151 NEWTABLE                         R14 0 5
      153 MOVE                             R15 R11
      154 MOVE                             R16 R5
      155 GETTABLEKS                       R17 R0 K7 ["ParameterName"]
      157 GETTABLEKS                       R18 R1 K10 ["decrementParameterOverrideCountAsync"]
      159 MOVE                             R19 R2
      160 SETLIST                          R14 R15 5 [1]
      162 CALL                             R12 2 0
      163 GETUPVAL                         R13 0
      164 GETTABLEKS                       R12 R13 K13 ["useCallback"]
      166 NEWCLOSURE                       R13 P7
      167 CAPTURE                          VAL R0
      168 CAPTURE                          VAL R1
      169 NEWTABLE                         R14 0 7
      171 GETTABLEKS                       R15 R0 K5 ["Name"]
      173 GETTABLEKS                       R16 R0 K14 ["OnChanged"]
      175 GETTABLEKS                       R17 R0 K6 ["IsParameterized"]
      177 GETTABLEKS                       R18 R0 K7 ["ParameterName"]
      179 GETTABLEKS                       R19 R1 K15 ["setParameterOverrideValueAsync"]
      181 GETTABLEKS                       R20 R1 K12 ["incrementParameterOverrideCountAsync"]
      183 MOVE                             R21 R5
      184 SETLIST                          R14 R15 7 [1]
      186 CALL                             R12 2 1
      187 GETUPVAL                         R14 0
      188 GETTABLEKS                       R13 R14 K13 ["useCallback"]
      190 NEWCLOSURE                       R14 P8
      191 CAPTURE                          VAL R1
      192 CAPTURE                          VAL R0
      193 NEWTABLE                         R15 0 2
      195 GETTABLEKS                       R16 R0 K7 ["ParameterName"]
      197 GETTABLEKS                       R17 R1 K16 ["removeParameterOverrideAsync"]
      199 SETLIST                          R15 R16 2 [1]
      201 CALL                             R13 2 1
      202 GETUPVAL                         R15 0
      203 GETTABLEKS                       R14 R15 K3 ["useMemo"]
      205 NEWCLOSURE                       R15 P9
      206 CAPTURE                          VAL R5
      207 CAPTURE                          VAL R0
      208 CAPTURE                          VAL R1
      209 NEWTABLE                         R16 0 4
      211 GETTABLEKS                       R17 R0 K17 ["Value"]
      213 MOVE                             R18 R5
      214 GETTABLEKS                       R19 R0 K7 ["ParameterName"]
      216 GETTABLEKS                       R20 R1 K8 ["parameterOverrides"]
      218 SETLIST                          R16 R17 4 [1]
      220 CALL                             R14 2 1
      221 GETUPVAL                         R16 4
      222 GETTABLEKS                       R15 R16 K18 ["join"]
      224 MOVE                             R16 R0
      225 DUPTABLE                         R17 K21 [{"Value", "Label", "IsParameterOverridden", "OnChanged", "OnParameterOverrideRevert"}]
      226 SETTABLEKS                       R14 R17 K17 ["Value"]
      228 SETTABLEKS                       R4 R17 K4 ["Label"]
      230 SETTABLEKS                       R5 R17 K19 ["IsParameterOverridden"]
      232 SETTABLEKS                       R12 R17 K14 ["OnChanged"]
      234 SETTABLEKS                       R13 R17 K20 ["OnParameterOverrideRevert"]
      236 CALL                             R15 2 1
      237 GETTABLEKS                       R17 R0 K22 ["HidePin"]
      239 JUMPIF                           R17 ; [+35]
      240 DUPTABLE                         R16 K24 [{"RenderedCompositorPin"}]
      241 GETUPVAL                         R18 0
      242 GETTABLEKS                       R17 R18 K25 ["createElement"]
      244 GETUPVAL                         R18 5
      245 DUPTABLE                         R19 K32 [{"Position", "pinSide", "pinDataType", "pinNodeId", "pinName", "pinValue"}]
      246 GETIMPORT                        R20 K35 [UDim2.fromOffset]
      248 LOADN                            R21 247
      249 LOADN                            R22 14
      250 CALL                             R20 2 1
      251 SETTABLEKS                       R20 R19 K26 ["Position"]
      253 LOADK                            R20 K36 ["Input"]
      254 SETTABLEKS                       R20 R19 K27 ["pinSide"]
      256 LOADK                            R20 K37 ["Parameter"]
      257 SETTABLEKS                       R20 R19 K28 ["pinDataType"]
      259 GETTABLEKS                       R20 R0 K38 ["NodeId"]
      261 SETTABLEKS                       R20 R19 K29 ["pinNodeId"]
      263 GETTABLEKS                       R20 R0 K5 ["Name"]
      265 SETTABLEKS                       R20 R19 K30 ["pinName"]
      267 GETTABLEKS                       R20 R0 K17 ["Value"]
      269 SETTABLEKS                       R20 R19 K31 ["pinValue"]
      271 CALL                             R17 2 1
      272 SETTABLEKS                       R17 R16 K23 ["RenderedCompositorPin"]
      274 JUMP                             ; [+1]
      275 LOADNIL                          R16
      276 GETUPVAL                         R18 0
      277 GETTABLEKS                       R17 R18 K25 ["createElement"]
      279 GETUPVAL                         R18 6
      280 MOVE                             R19 R15
      281 MOVE                             R20 R16
      282 CALL                             R17 3 1
      283 JUMPIFNOTEQKNIL                  R17 ; [+10]
      285 GETIMPORT                        R18 K40 [warn]
      287 LOADK                            R20 K41 ["Unsupported property type: "]
      288 GETTABLEKS                       R21 R0 K42 ["Type"]
      290 CONCAT                           R19 R20 R21
      291 CALL                             R18 1 0
      292 LOADNIL                          R18
      293 RETURN                           R18 1
      294 GETUPVAL                         R19 0
      295 GETTABLEKS                       R18 R19 K25 ["createElement"]
      297 GETUPVAL                         R20 7
      298 GETTABLEKS                       R19 R20 K43 ["View"]
      300 DUPTABLE                         R20 K46 [{"tag", "LayoutOrder"}]
      301 LOADK                            R21 K47 ["auto-xy flex-x-between CompositorNodeProperty padding-x-small"]
      302 SETTABLEKS                       R21 R20 K44 ["tag"]
      304 GETTABLEKS                       R21 R0 K45 ["LayoutOrder"]
      306 SETTABLEKS                       R21 R20 K45 ["LayoutOrder"]
      308 MOVE                             R21 R17
      309 CALL                             R18 3 -1
      310 RETURN                           R18 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R4 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R6 R0 K9 ["Util"]
       25 GETTABLEKS                       R5 R6 K10 ["Nodes"]
       27 GETTABLEKS                       R4 R5 K11 ["NodeNameFormattingUtils"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K12 ["NodeViewTypes"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R7 R0 K13 ["Contexts"]
       39 GETTABLEKS                       R6 R7 K14 ["ParameterOverrideContext"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R10 R0 K15 ["Components"]
       46 GETTABLEKS                       R9 R10 K16 ["NodeView"]
       48 GETTABLEKS                       R8 R9 K17 ["CompositorNodeProperty"]
       50 GETTABLEKS                       R7 R8 K18 ["PropertyComponent"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R9 R0 K6 ["Parent"]
       57 GETTABLEKS                       R8 R9 K19 ["React"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R10 R0 K6 ["Parent"]
       64 GETTABLEKS                       R9 R10 K20 ["ReactUtils"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETTABLEKS                       R13 R0 K15 ["Components"]
       71 GETTABLEKS                       R12 R13 K16 ["NodeView"]
       73 GETTABLEKS                       R11 R12 K21 ["CompositorNodes"]
       75 GETTABLEKS                       R10 R11 K22 ["RenderedCompositorPin"]
       77 CALL                             R9 1 1
       78 DUPCLOSURE                       R10 K23 [PROTO_16]
       79 CAPTURE                          VAL R7
       80 CAPTURE                          VAL R5
       81 CAPTURE                          VAL R3
       82 CAPTURE                          VAL R8
       83 CAPTURE                          VAL R1
       84 CAPTURE                          VAL R9
       85 CAPTURE                          VAL R6
       86 CAPTURE                          VAL R2
       87 RETURN                           R10 1
