PROTO_0:
        0 LOADN                            R4 1
        1 LOADN                            R5 5
        2 FASTCALL3                        STRING_SUB R0 R4 R5
        4 MOVE                             R3 R0
        5 GETIMPORT                        R2 K2 [string.sub]
        7 CALL                             R2 3 1
        8 JUMPIFEQKS                       R2 K3 ["Enum."] ; [+2]
       10 LOADB                            R1 0 +1
       11 LOADB                            R1 1
       12 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIFNOTEQKNIL                  R2 ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["Label"]
        3 JUMPIF                           R0 ; [+7]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K1 ["formatPropertyName"]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R1 R2 K2 ["Name"]
       10 CALL                             R0 1 1
       11 RETURN                           R0 1

PROTO_3:
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

PROTO_4:
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

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K0 ["current"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_6:
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

PROTO_7:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 RETURN                           R0 1

PROTO_8:
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

PROTO_9:
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

PROTO_10:
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

PROTO_11:
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

PROTO_12:
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

PROTO_13:
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

PROTO_14:
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

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["removeParameterOverrideAsync"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["ParameterName"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_16:
        0 GETIMPORT                        R0 K2 [task.spawn]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_17:
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

PROTO_18:
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
      225 DUPTABLE                         R17 K21 [{"Value", "Label", "IsParameterized", "IsParameterOverridden", "OnChanged", "OnParameterOverrideRevert"}]
      226 SETTABLEKS                       R14 R17 K17 ["Value"]
      228 SETTABLEKS                       R4 R17 K4 ["Label"]
      230 GETTABLEKS                       R18 R0 K6 ["IsParameterized"]
      232 SETTABLEKS                       R18 R17 K6 ["IsParameterized"]
      234 SETTABLEKS                       R5 R17 K19 ["IsParameterOverridden"]
      236 SETTABLEKS                       R12 R17 K14 ["OnChanged"]
      238 SETTABLEKS                       R13 R17 K20 ["OnParameterOverrideRevert"]
      240 CALL                             R15 2 1
      241 DUPTABLE                         R16 K23 [{"RenderedCompositorPin"}]
      242 GETUPVAL                         R18 0
      243 GETTABLEKS                       R17 R18 K24 ["createElement"]
      245 GETUPVAL                         R18 5
      246 DUPTABLE                         R19 K30 [{"Position", "pinSide", "pinDataType", "pinNodeId", "pinName"}]
      247 GETIMPORT                        R20 K33 [UDim2.new]
      249 LOADN                            R21 0
      250 LOADN                            R22 247
      251 LOADK                            R23 K34 [0.5]
      252 LOADN                            R24 0
      253 CALL                             R20 4 1
      254 SETTABLEKS                       R20 R19 K25 ["Position"]
      256 LOADK                            R20 K35 ["Input"]
      257 SETTABLEKS                       R20 R19 K26 ["pinSide"]
      259 LOADK                            R20 K36 ["Parameter"]
      260 SETTABLEKS                       R20 R19 K27 ["pinDataType"]
      262 GETTABLEKS                       R20 R0 K37 ["NodeId"]
      264 SETTABLEKS                       R20 R19 K28 ["pinNodeId"]
      266 GETTABLEKS                       R20 R0 K5 ["Name"]
      268 SETTABLEKS                       R20 R19 K29 ["pinName"]
      270 CALL                             R17 2 1
      271 SETTABLEKS                       R17 R16 K22 ["RenderedCompositorPin"]
      273 LOADNIL                          R17
      274 GETTABLEKS                       R19 R0 K38 ["Type"]
      276 LOADN                            R22 1
      277 LOADN                            R23 5
      278 FASTCALL3                        STRING_SUB R19 R22 R23
      280 MOVE                             R21 R19
      281 GETIMPORT                        R20 K41 [string.sub]
      283 CALL                             R20 3 1
      284 JUMPIFEQKS                       R20 K42 ["Enum."] ; [+2]
      286 LOADB                            R18 0 +1
      287 LOADB                            R18 1
      288 JUMPIFNOT                        R18 ; [+11]
      289 GETUPVAL                         R19 0
      290 GETTABLEKS                       R18 R19 K24 ["createElement"]
      292 GETUPVAL                         R20 6
      293 GETTABLEKS                       R19 R20 K43 ["Enum"]
      295 MOVE                             R20 R15
      296 MOVE                             R21 R16
      297 CALL                             R18 3 1
      298 MOVE                             R17 R18
      299 JUMP                             ; [+36]
      300 GETTABLEKS                       R19 R0 K38 ["Type"]
      302 GETUPVAL                         R21 7
      303 GETTABLE                         R20 R21 R19
      304 JUMPIFNOTEQKNIL                  R20 ; [+2]
      306 LOADB                            R18 0 +1
      307 LOADB                            R18 1
      308 JUMPIFNOT                        R18 ; [+11]
      309 GETUPVAL                         R19 0
      310 GETTABLEKS                       R18 R19 K24 ["createElement"]
      312 GETUPVAL                         R20 6
      313 GETTABLEKS                       R19 R20 K44 ["Asset"]
      315 MOVE                             R20 R15
      316 MOVE                             R21 R16
      317 CALL                             R18 3 1
      318 MOVE                             R17 R18
      319 JUMP                             ; [+16]
      320 GETUPVAL                         R19 6
      321 GETTABLEKS                       R20 R0 K38 ["Type"]
      323 GETTABLE                         R18 R19 R20
      324 JUMPIFNOT                        R18 ; [+11]
      325 GETUPVAL                         R19 0
      326 GETTABLEKS                       R18 R19 K24 ["createElement"]
      328 GETUPVAL                         R20 6
      329 GETTABLEKS                       R21 R0 K38 ["Type"]
      331 GETTABLE                         R19 R20 R21
      332 MOVE                             R20 R15
      333 MOVE                             R21 R16
      334 CALL                             R18 3 1
      335 MOVE                             R17 R18
      336 JUMPIFNOTEQKNIL                  R17 ; [+10]
      338 GETIMPORT                        R18 K46 [warn]
      340 LOADK                            R20 K47 ["Unsupported property type: "]
      341 GETTABLEKS                       R21 R0 K38 ["Type"]
      343 CONCAT                           R19 R20 R21
      344 CALL                             R18 1 0
      345 LOADNIL                          R18
      346 RETURN                           R18 1
      347 GETUPVAL                         R19 0
      348 GETTABLEKS                       R18 R19 K24 ["createElement"]
      350 GETUPVAL                         R20 8
      351 GETTABLEKS                       R19 R20 K48 ["View"]
      353 DUPTABLE                         R20 K51 [{"tag", "LayoutOrder"}]
      354 LOADK                            R21 K52 ["auto-xy flex-x-between CompositorNodeProperty"]
      355 SETTABLEKS                       R21 R20 K49 ["tag"]
      357 GETTABLEKS                       R21 R0 K50 ["LayoutOrder"]
      359 SETTABLEKS                       R21 R20 K50 ["LayoutOrder"]
      361 MOVE                             R21 R17
      362 CALL                             R18 3 -1
      363 RETURN                           R18 -1

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
       44 GETTABLEKS                       R8 R0 K6 ["Parent"]
       46 GETTABLEKS                       R7 R8 K15 ["React"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R9 R0 K6 ["Parent"]
       53 GETTABLEKS                       R8 R9 K16 ["ReactUtils"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R12 R0 K17 ["Components"]
       60 GETTABLEKS                       R11 R12 K18 ["NodeView"]
       62 GETTABLEKS                       R10 R11 K19 ["CompositorNodes"]
       64 GETTABLEKS                       R9 R10 K20 ["RenderedCompositorPin"]
       66 CALL                             R8 1 1
       67 DUPTABLE                         R9 K22 [{"Animation"}]
       68 LOADB                            R10 1
       69 SETTABLEKS                       R10 R9 K21 ["Animation"]
       71 DUPTABLE                         R10 K34 [{"Angle", "Asset", "Boolean", "ClampedWeight", "Enum", "Number", "String", "Timestamp", "TimeProgress", "Transition", "Mask"}]
       72 GETIMPORT                        R11 K5 [require]
       74 GETIMPORT                        R13 K1 [script]
       76 GETTABLEKS                       R12 R13 K35 ["AngleProperty"]
       78 CALL                             R11 1 1
       79 SETTABLEKS                       R11 R10 K23 ["Angle"]
       81 GETIMPORT                        R11 K5 [require]
       83 GETIMPORT                        R13 K1 [script]
       85 GETTABLEKS                       R12 R13 K36 ["AssetProperty"]
       87 CALL                             R11 1 1
       88 SETTABLEKS                       R11 R10 K24 ["Asset"]
       90 GETIMPORT                        R11 K5 [require]
       92 GETIMPORT                        R13 K1 [script]
       94 GETTABLEKS                       R12 R13 K37 ["BoolProperty"]
       96 CALL                             R11 1 1
       97 SETTABLEKS                       R11 R10 K25 ["Boolean"]
       99 GETIMPORT                        R11 K5 [require]
      101 GETIMPORT                        R13 K1 [script]
      103 GETTABLEKS                       R12 R13 K38 ["ClampedWeightProperty"]
      105 CALL                             R11 1 1
      106 SETTABLEKS                       R11 R10 K26 ["ClampedWeight"]
      108 GETIMPORT                        R11 K5 [require]
      110 GETIMPORT                        R13 K1 [script]
      112 GETTABLEKS                       R12 R13 K39 ["EnumProperty"]
      114 CALL                             R11 1 1
      115 SETTABLEKS                       R11 R10 K27 ["Enum"]
      117 GETIMPORT                        R11 K5 [require]
      119 GETIMPORT                        R13 K1 [script]
      121 GETTABLEKS                       R12 R13 K40 ["NumberProperty"]
      123 CALL                             R11 1 1
      124 SETTABLEKS                       R11 R10 K28 ["Number"]
      126 GETIMPORT                        R11 K5 [require]
      128 GETIMPORT                        R13 K1 [script]
      130 GETTABLEKS                       R12 R13 K41 ["StringProperty"]
      132 CALL                             R11 1 1
      133 SETTABLEKS                       R11 R10 K29 ["String"]
      135 GETIMPORT                        R11 K5 [require]
      137 GETIMPORT                        R13 K1 [script]
      139 GETTABLEKS                       R12 R13 K42 ["TimestampProperty"]
      141 CALL                             R11 1 1
      142 SETTABLEKS                       R11 R10 K30 ["Timestamp"]
      144 GETIMPORT                        R11 K5 [require]
      146 GETIMPORT                        R13 K1 [script]
      148 GETTABLEKS                       R12 R13 K43 ["TimeProgressProperty"]
      150 CALL                             R11 1 1
      151 SETTABLEKS                       R11 R10 K31 ["TimeProgress"]
      153 GETIMPORT                        R11 K5 [require]
      155 GETIMPORT                        R13 K1 [script]
      157 GETTABLEKS                       R12 R13 K44 ["TransitionProperty"]
      159 CALL                             R11 1 1
      160 SETTABLEKS                       R11 R10 K32 ["Transition"]
      162 GETIMPORT                        R11 K5 [require]
      164 GETIMPORT                        R13 K1 [script]
      166 GETTABLEKS                       R12 R13 K45 ["MaskProperty"]
      168 CALL                             R11 1 1
      169 SETTABLEKS                       R11 R10 K33 ["Mask"]
      171 DUPCLOSURE                       R11 K46 [PROTO_0]
      172 DUPCLOSURE                       R12 K47 [PROTO_1]
      173 CAPTURE                          VAL R9
      174 DUPCLOSURE                       R13 K48 [PROTO_18]
      175 CAPTURE                          VAL R6
      176 CAPTURE                          VAL R5
      177 CAPTURE                          VAL R3
      178 CAPTURE                          VAL R7
      179 CAPTURE                          VAL R1
      180 CAPTURE                          VAL R8
      181 CAPTURE                          VAL R10
      182 CAPTURE                          VAL R9
      183 CAPTURE                          VAL R2
      184 RETURN                           R13 1
