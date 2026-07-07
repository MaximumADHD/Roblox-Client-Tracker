PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["IsParameterized"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["ParameterName"]
        7 JUMPIF                           R0 ; [+2]
        8 LOADB                            R0 0
        9 RETURN                           R0 1
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K2 ["parameterOverrides"]
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R3 R3 K1 ["ParameterName"]
       16 GETTABLE                         R1 R2 R3
       17 JUMPIFNOTEQKNIL                  R1 ; [+2]
       19 LOADB                            R0 0 +1
       20 LOADB                            R0 1
       21 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 GETUPVAL                         R0 2
        5 GETUPVAL                         R1 3
        6 GETTABLEKS                       R1 R1 K1 ["ParameterName"]
        8 SETTABLEKS                       R1 R0 K0 ["current"]
       10 GETUPVAL                         R0 4
       11 GETUPVAL                         R1 5
       12 GETTABLEKS                       R1 R1 K2 ["decrementParameterOverrideCount"]
       14 SETTABLEKS                       R1 R0 K0 ["current"]
       16 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+11]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K0 ["current"]
        7 JUMPIFNOT                        R0 ; [+7]
        8 GETUPVAL                         R0 2
        9 GETTABLEKS                       R0 R0 K0 ["current"]
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R1 R1 K0 ["current"]
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["ParameterName"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 1
        6 GETUPVAL                         R1 2
        7 JUMPIFEQ                         R0 R1 ; [+21]
        9 GETUPVAL                         R0 1
       10 JUMPIFNOT                        R0 ; [+8]
       11 GETUPVAL                         R0 3
       12 GETTABLEKS                       R0 R0 K1 ["incrementParameterOverrideCount"]
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R1 R1 K0 ["ParameterName"]
       17 CALL                             R0 1 0
       18 JUMP                             ; [+7]
       19 GETUPVAL                         R0 3
       20 GETTABLEKS                       R0 R0 K2 ["decrementParameterOverrideCount"]
       22 GETUPVAL                         R1 0
       23 GETTABLEKS                       R1 R1 K0 ["ParameterName"]
       25 CALL                             R0 1 0
       26 GETUPVAL                         R0 4
       27 GETUPVAL                         R1 1
       28 CALL                             R0 1 0
       29 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+2]
        2 LOADB                            R0 0
        3 RETURN                           R0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["parameterOverrides"]
        7 GETUPVAL                         R3 0
        8 GETTABLE                         R1 R2 R3
        9 JUMPIFNOTEQKNIL                  R1 ; [+2]
       11 LOADB                            R0 0 +1
       12 LOADB                            R0 1
       13 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["ParameterName"]
        3 GETUPVAL                         R1 1
        4 JUMPIFEQ                         R0 R1 ; [+30]
        6 GETUPVAL                         R0 2
        7 JUMPIFNOT                        R0 ; [+8]
        8 GETUPVAL                         R0 1
        9 JUMPIFEQKNIL                     R0 ; [+6]
       11 GETUPVAL                         R0 3
       12 GETTABLEKS                       R0 R0 K1 ["decrementParameterOverrideCount"]
       14 GETUPVAL                         R1 1
       15 CALL                             R0 1 0
       16 GETUPVAL                         R0 4
       17 JUMPIFNOT                        R0 ; [+12]
       18 GETUPVAL                         R0 0
       19 GETTABLEKS                       R0 R0 K0 ["ParameterName"]
       21 JUMPIFEQKNIL                     R0 ; [+8]
       23 GETUPVAL                         R0 3
       24 GETTABLEKS                       R0 R0 K2 ["incrementParameterOverrideCount"]
       26 GETUPVAL                         R1 0
       27 GETTABLEKS                       R1 R1 K0 ["ParameterName"]
       29 CALL                             R0 1 0
       30 GETUPVAL                         R0 5
       31 GETUPVAL                         R1 0
       32 GETTABLEKS                       R1 R1 K0 ["ParameterName"]
       34 CALL                             R0 1 0
       35 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 GETTABLEKS                       R4 R4 K0 ["NodeId"]
        5 CALL                             R2 2 0
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K1 ["IsParameterized"]
        9 JUMPIFNOT                        R2 ; [+31]
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R2 R2 K2 ["ParameterName"]
       13 JUMPIFNOT                        R2 ; [+27]
       14 GETUPVAL                         R3 3
       15 CALL                             R3 0 1
       16 JUMPIFNOT                        R3 ; [+5]
       17 JUMPIFNOTEQKNIL                  R0 ; [+2]
       19 LOADB                            R2 0 +1
       20 LOADB                            R2 1
       21 JUMP                             ; [+1]
       22 MOVE                             R2 R0
       23 JUMPIFNOT                        R2 ; [+9]
       24 GETUPVAL                         R3 4
       25 GETTABLEKS                       R3 R3 K3 ["setParameterOverrideValue"]
       27 GETUPVAL                         R4 2
       28 GETTABLEKS                       R4 R4 K2 ["ParameterName"]
       30 MOVE                             R5 R0
       31 CALL                             R3 2 0
       32 RETURN                           R0 0
       33 GETUPVAL                         R3 4
       34 GETTABLEKS                       R3 R3 K4 ["removeParameterOverride"]
       36 GETUPVAL                         R4 2
       37 GETTABLEKS                       R4 R4 K2 ["ParameterName"]
       39 CALL                             R3 1 0
       40 RETURN                           R0 0
       41 GETUPVAL                         R2 2
       42 GETTABLEKS                       R2 R2 K5 ["OnChanged"]
       44 JUMPIFNOT                        R2 ; [+9]
       45 GETUPVAL                         R2 2
       46 GETTABLEKS                       R2 R2 K5 ["OnChanged"]
       48 GETUPVAL                         R3 2
       49 GETTABLEKS                       R3 R3 K6 ["Name"]
       51 MOVE                             R4 R0
       52 MOVE                             R5 R1
       53 CALL                             R2 3 0
       54 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["IsParameterized"]
        3 JUMPIFNOT                        R2 ; [+31]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K1 ["ParameterName"]
        7 JUMPIFNOT                        R2 ; [+27]
        8 GETUPVAL                         R3 1
        9 CALL                             R3 0 1
       10 JUMPIFNOT                        R3 ; [+5]
       11 JUMPIFNOTEQKNIL                  R0 ; [+2]
       13 LOADB                            R2 0 +1
       14 LOADB                            R2 1
       15 JUMP                             ; [+1]
       16 MOVE                             R2 R0
       17 JUMPIFNOT                        R2 ; [+9]
       18 GETUPVAL                         R3 2
       19 GETTABLEKS                       R3 R3 K2 ["setParameterOverrideValue"]
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R4 R4 K1 ["ParameterName"]
       24 MOVE                             R5 R0
       25 CALL                             R3 2 0
       26 RETURN                           R0 0
       27 GETUPVAL                         R3 2
       28 GETTABLEKS                       R3 R3 K3 ["removeParameterOverride"]
       30 GETUPVAL                         R4 0
       31 GETTABLEKS                       R4 R4 K1 ["ParameterName"]
       33 CALL                             R3 1 0
       34 RETURN                           R0 0
       35 GETUPVAL                         R2 0
       36 GETTABLEKS                       R2 R2 K4 ["OnChanged"]
       38 JUMPIFNOT                        R2 ; [+9]
       39 GETUPVAL                         R2 0
       40 GETTABLEKS                       R2 R2 K4 ["OnChanged"]
       42 GETUPVAL                         R3 0
       43 GETTABLEKS                       R3 R3 K5 ["Name"]
       45 MOVE                             R4 R0
       46 MOVE                             R5 R1
       47 CALL                             R2 3 0
       48 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETTABLEKS                       R2 R2 K0 ["NodeId"]
        5 CALL                             R0 2 0
        6 GETUPVAL                         R0 3
        7 GETTABLEKS                       R0 R0 K1 ["removeParameterOverride"]
        9 GETUPVAL                         R1 2
       10 GETTABLEKS                       R1 R1 K2 ["ParameterName"]
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["removeParameterOverride"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["ParameterName"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["ParameterName"]
        5 JUMPIF                           R0 ; [+4]
        6 GETUPVAL                         R0 1
        7 GETTABLEKS                       R0 R0 K1 ["Value"]
        9 RETURN                           R0 1
       10 GETUPVAL                         R1 2
       11 GETTABLEKS                       R1 R1 K2 ["parameterOverrides"]
       13 GETUPVAL                         R2 1
       14 GETTABLEKS                       R2 R2 K0 ["ParameterName"]
       16 GETTABLE                         R0 R1 R2
       17 RETURN                           R0 1

PROTO_12:
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
       15 GETTABLEKS                       R3 R3 K2 ["useState"]
       17 LOADNIL                          R4
       18 CALL                             R3 1 2
       19 GETUPVAL                         R5 0
       20 GETTABLEKS                       R5 R5 K3 ["useMemo"]
       22 NEWCLOSURE                       R6 P0
       23 CAPTURE                          VAL R0
       24 CAPTURE                          VAL R1
       25 NEWTABLE                         R7 0 5
       27 GETTABLEKS                       R8 R0 K4 ["Name"]
       29 GETTABLEKS                       R9 R0 K5 ["IsParameterized"]
       31 GETTABLEKS                       R10 R0 K6 ["ParameterName"]
       33 MOVE                             R11 R3
       34 GETTABLEKS                       R12 R1 K7 ["parameterOverrides"]
       36 SETLIST                          R7 R8 5 [1]
       38 CALL                             R5 2 1
       39 GETUPVAL                         R6 3
       40 GETTABLEKS                       R6 R6 K8 ["useRefToState"]
       42 MOVE                             R7 R5
       43 CALL                             R6 1 1
       44 GETUPVAL                         R7 3
       45 GETTABLEKS                       R7 R7 K8 ["useRefToState"]
       47 GETTABLEKS                       R8 R0 K6 ["ParameterName"]
       49 CALL                             R7 1 1
       50 GETUPVAL                         R8 3
       51 GETTABLEKS                       R8 R8 K8 ["useRefToState"]
       53 GETTABLEKS                       R9 R1 K9 ["decrementParameterOverrideCount"]
       55 CALL                             R8 1 1
       56 GETUPVAL                         R9 0
       57 GETTABLEKS                       R9 R9 K10 ["useEffect"]
       59 NEWCLOSURE                       R10 P1
       60 CAPTURE                          VAL R6
       61 CAPTURE                          VAL R5
       62 CAPTURE                          VAL R7
       63 CAPTURE                          VAL R0
       64 CAPTURE                          VAL R8
       65 CAPTURE                          VAL R1
       66 NEWTABLE                         R11 0 3
       68 MOVE                             R12 R5
       69 GETTABLEKS                       R13 R0 K6 ["ParameterName"]
       71 GETTABLEKS                       R14 R1 K9 ["decrementParameterOverrideCount"]
       73 SETLIST                          R11 R12 3 [1]
       75 CALL                             R9 2 0
       76 GETUPVAL                         R9 0
       77 GETTABLEKS                       R9 R9 K10 ["useEffect"]
       79 NEWCLOSURE                       R10 P2
       80 CAPTURE                          VAL R7
       81 CAPTURE                          VAL R6
       82 CAPTURE                          VAL R8
       83 NEWTABLE                         R11 0 3
       85 MOVE                             R12 R6
       86 MOVE                             R13 R7
       87 MOVE                             R14 R8
       88 SETLIST                          R11 R12 3 [1]
       90 CALL                             R9 2 0
       91 GETUPVAL                         R9 0
       92 GETTABLEKS                       R9 R9 K2 ["useState"]
       94 MOVE                             R10 R5
       95 CALL                             R9 1 2
       96 GETUPVAL                         R11 0
       97 GETTABLEKS                       R11 R11 K10 ["useEffect"]
       99 NEWCLOSURE                       R12 P3
      100 CAPTURE                          VAL R0
      101 CAPTURE                          VAL R5
      102 CAPTURE                          VAL R9
      103 CAPTURE                          VAL R1
      104 CAPTURE                          VAL R10
      105 NEWTABLE                         R13 0 6
      107 MOVE                             R14 R5
      108 GETTABLEKS                       R15 R0 K6 ["ParameterName"]
      110 MOVE                             R16 R9
      111 MOVE                             R17 R10
      112 GETTABLEKS                       R18 R1 K11 ["incrementParameterOverrideCount"]
      114 GETTABLEKS                       R19 R1 K9 ["decrementParameterOverrideCount"]
      116 SETLIST                          R13 R14 6 [1]
      118 CALL                             R11 2 0
      119 GETUPVAL                         R11 0
      120 GETTABLEKS                       R11 R11 K3 ["useMemo"]
      122 NEWCLOSURE                       R12 P4
      123 CAPTURE                          VAL R3
      124 CAPTURE                          VAL R1
      125 NEWTABLE                         R13 0 2
      127 MOVE                             R14 R3
      128 GETTABLEKS                       R15 R1 K7 ["parameterOverrides"]
      130 SETLIST                          R13 R14 2 [1]
      132 CALL                             R11 2 1
      133 GETUPVAL                         R12 0
      134 GETTABLEKS                       R12 R12 K10 ["useEffect"]
      136 NEWCLOSURE                       R13 P5
      137 CAPTURE                          VAL R0
      138 CAPTURE                          VAL R3
      139 CAPTURE                          VAL R11
      140 CAPTURE                          VAL R1
      141 CAPTURE                          VAL R5
      142 CAPTURE                          VAL R4
      143 NEWTABLE                         R14 0 5
      145 MOVE                             R15 R11
      146 MOVE                             R16 R5
      147 GETTABLEKS                       R17 R0 K6 ["ParameterName"]
      149 GETTABLEKS                       R18 R1 K9 ["decrementParameterOverrideCount"]
      151 MOVE                             R19 R3
      152 SETLIST                          R14 R15 5 [1]
      154 CALL                             R12 2 0
      155 GETUPVAL                         R13 4
      156 JUMPIFNOT                        R13 ; [+11]
      157 GETUPVAL                         R12 3
      158 GETTABLEKS                       R12 R12 K12 ["useEventCallback"]
      160 NEWCLOSURE                       R13 P6
      161 CAPTURE                          UPVAL U5
      162 CAPTURE                          VAL R2
      163 CAPTURE                          VAL R0
      164 CAPTURE                          UPVAL U6
      165 CAPTURE                          VAL R1
      166 CALL                             R12 1 1
      167 JUMP                             ; [+25]
      168 GETUPVAL                         R12 0
      169 GETTABLEKS                       R12 R12 K13 ["useCallback"]
      171 NEWCLOSURE                       R13 P7
      172 CAPTURE                          VAL R0
      173 CAPTURE                          UPVAL U6
      174 CAPTURE                          VAL R1
      175 NEWTABLE                         R14 0 7
      177 GETTABLEKS                       R15 R0 K4 ["Name"]
      179 GETTABLEKS                       R16 R0 K14 ["OnChanged"]
      181 GETTABLEKS                       R17 R0 K5 ["IsParameterized"]
      183 GETTABLEKS                       R18 R0 K6 ["ParameterName"]
      185 GETTABLEKS                       R19 R1 K15 ["setParameterOverrideValue"]
      187 GETTABLEKS                       R20 R1 K11 ["incrementParameterOverrideCount"]
      189 MOVE                             R21 R5
      190 SETLIST                          R14 R15 7 [1]
      192 CALL                             R12 2 1
      193 GETUPVAL                         R14 4
      194 JUMPIFNOT                        R14 ; [+10]
      195 GETUPVAL                         R13 3
      196 GETTABLEKS                       R13 R13 K12 ["useEventCallback"]
      198 NEWCLOSURE                       R14 P8
      199 CAPTURE                          UPVAL U5
      200 CAPTURE                          VAL R2
      201 CAPTURE                          VAL R0
      202 CAPTURE                          VAL R1
      203 CALL                             R13 1 1
      204 JUMP                             ; [+15]
      205 GETUPVAL                         R13 0
      206 GETTABLEKS                       R13 R13 K13 ["useCallback"]
      208 NEWCLOSURE                       R14 P9
      209 CAPTURE                          VAL R1
      210 CAPTURE                          VAL R0
      211 NEWTABLE                         R15 0 2
      213 GETTABLEKS                       R16 R0 K6 ["ParameterName"]
      215 GETTABLEKS                       R17 R1 K16 ["removeParameterOverride"]
      217 SETLIST                          R15 R16 2 [1]
      219 CALL                             R13 2 1
      220 GETUPVAL                         R14 0
      221 GETTABLEKS                       R14 R14 K3 ["useMemo"]
      223 NEWCLOSURE                       R15 P10
      224 CAPTURE                          VAL R5
      225 CAPTURE                          VAL R0
      226 CAPTURE                          VAL R1
      227 NEWTABLE                         R16 0 4
      229 GETTABLEKS                       R17 R0 K17 ["Value"]
      231 MOVE                             R18 R5
      232 GETTABLEKS                       R19 R0 K6 ["ParameterName"]
      234 GETTABLEKS                       R20 R1 K7 ["parameterOverrides"]
      236 SETLIST                          R16 R17 4 [1]
      238 CALL                             R14 2 1
      239 GETUPVAL                         R15 7
      240 GETTABLEKS                       R15 R15 K18 ["join"]
      242 MOVE                             R16 R0
      243 DUPTABLE                         R17 K22 [{"Value", "Label", "IsParameterOverridden", "OnChanged", "OnParameterOverrideRevert"}]
      244 SETTABLEKS                       R14 R17 K17 ["Value"]
      246 GETTABLEKS                       R18 R0 K19 ["Label"]
      248 SETTABLEKS                       R18 R17 K19 ["Label"]
      250 SETTABLEKS                       R5 R17 K20 ["IsParameterOverridden"]
      252 SETTABLEKS                       R12 R17 K14 ["OnChanged"]
      254 SETTABLEKS                       R13 R17 K21 ["OnParameterOverrideRevert"]
      256 CALL                             R15 2 1
      257 GETTABLEKS                       R17 R0 K23 ["HidePin"]
      259 JUMPIF                           R17 ; [+46]
      260 DUPTABLE                         R16 K25 [{"RenderedCompositorPin"}]
      261 GETUPVAL                         R17 0
      262 GETTABLEKS                       R17 R17 K26 ["createElement"]
      264 GETUPVAL                         R18 8
      265 DUPTABLE                         R19 K36 [{["Position"], ["pinSide"] = "Input", ["pinDataType"] = "Parameter", ["pinNodeId"], ["pinName"], ["pinValue"], ["pinDynamicIndex"]}]
      266 GETUPVAL                         R21 9
      267 JUMPIFNOT                        R21 ; [+6]
      268 GETIMPORT                        R20 K39 [UDim2.fromOffset]
      270 LOADN                            R21 -21
      271 LOADN                            R22 14
      272 CALL                             R20 2 1
      273 JUMP                             ; [+5]
      274 GETIMPORT                        R20 K39 [UDim2.fromOffset]
      276 LOADN                            R21 -9
      277 LOADN                            R22 14
      278 CALL                             R20 2 1
      279 SETTABLEKS                       R20 R19 K27 ["Position"]
      281 GETTABLEKS                       R20 R0 K40 ["NodeId"]
      283 SETTABLEKS                       R20 R19 K32 ["pinNodeId"]
      285 GETTABLEKS                       R20 R0 K4 ["Name"]
      287 SETTABLEKS                       R20 R19 K33 ["pinName"]
      289 GETTABLEKS                       R20 R0 K17 ["Value"]
      291 SETTABLEKS                       R20 R19 K34 ["pinValue"]
      293 GETUPVAL                         R21 10
      294 CALL                             R21 0 1
      295 JUMPIFNOT                        R21 ; [+3]
      296 GETTABLEKS                       R20 R0 K41 ["PinDynamicIndex"]
      298 JUMP                             ; [+1]
      299 LOADNIL                          R20
      300 SETTABLEKS                       R20 R19 K35 ["pinDynamicIndex"]
      302 CALL                             R17 2 1
      303 SETTABLEKS                       R17 R16 K24 ["RenderedCompositorPin"]
      305 JUMP                             ; [+1]
      306 LOADNIL                          R16
      307 GETUPVAL                         R17 0
      308 GETTABLEKS                       R17 R17 K26 ["createElement"]
      310 GETUPVAL                         R18 11
      311 MOVE                             R19 R15
      312 MOVE                             R20 R16
      313 CALL                             R17 3 1
      314 JUMPIFNOTEQKNIL                  R17 ; [+10]
      316 GETIMPORT                        R18 K43 [warn]
      318 LOADK                            R20 K44 ["Unsupported property type: "]
      319 GETTABLEKS                       R21 R0 K45 ["Type"]
      321 CONCAT                           R19 R20 R21
      322 CALL                             R18 1 0
      323 LOADNIL                          R18
      324 RETURN                           R18 1
      325 GETTABLEKS                       R18 R0 K4 ["Name"]
      327 LOADK                            R20 K46 ["%s"]
      328 LOADK                            R21 K47 ["_"]
      329 NAMECALL                         R18 R18 K48 ["gsub"]
      331 CALL                             R18 3 1
      332 GETUPVAL                         R19 0
      333 GETTABLEKS                       R19 R19 K26 ["createElement"]
      335 GETUPVAL                         R20 12
      336 GETTABLEKS                       R20 R20 K49 ["View"]
      338 DUPTABLE                         R21 K54 [{["tag"] = "flex-x-between auto-xy padding-x-small", ["LayoutOrder"], ["testId"]}]
      339 GETTABLEKS                       R22 R0 K52 ["LayoutOrder"]
      341 SETTABLEKS                       R22 R21 K52 ["LayoutOrder"]
      343 LOADK                            R23 K55 ["CompositorNodeProperty-%*"]
      344 MOVE                             R25 R18
      345 NAMECALL                         R23 R23 K56 ["format"]
      347 CALL                             R23 2 1
      348 MOVE                             R22 R23
      349 SETTABLEKS                       R22 R21 K53 ["testId"]
      351 MOVE                             R22 R17
      352 CALL                             R19 3 -1
      353 RETURN                           R19 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Components"]
       25 GETTABLEKS                       R4 R4 K10 ["GraphContext"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K9 ["Components"]
       32 GETTABLEKS                       R5 R5 K10 ["GraphContext"]
       34 GETTABLEKS                       R5 R5 K11 ["GraphContextTypes"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K12 ["NodeViewTypes"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K9 ["Components"]
       46 GETTABLEKS                       R7 R7 K13 ["ParameterOverrideContext"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETIMPORT                        R8 K1 [script]
       53 GETTABLEKS                       R8 R8 K14 ["PropertyComponent"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K6 ["Parent"]
       60 GETTABLEKS                       R9 R9 K15 ["React"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R10 R0 K6 ["Parent"]
       67 GETTABLEKS                       R10 R10 K16 ["ReactUtils"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K5 [require]
       72 GETTABLEKS                       R11 R0 K9 ["Components"]
       74 GETTABLEKS                       R11 R11 K17 ["CompositorNodes"]
       76 GETTABLEKS                       R11 R11 K18 ["RenderedCompositorPin"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K5 [require]
       81 GETTABLEKS                       R12 R0 K19 ["Util"]
       83 GETTABLEKS                       R12 R12 K20 ["bumpNodeZIndex"]
       85 CALL                             R11 1 1
       86 GETIMPORT                        R12 K5 [require]
       88 GETTABLEKS                       R13 R0 K21 ["Flags"]
       90 GETTABLEKS                       R13 R13 K22 ["FFlagAnimGraphUI_DynamicZIndex"]
       92 CALL                             R12 1 1
       93 GETIMPORT                        R13 K5 [require]
       95 GETTABLEKS                       R14 R0 K21 ["Flags"]
       97 GETTABLEKS                       R14 R14 K23 ["FFlagAnimGraphUI_PerfFixes_7123"]
       99 CALL                             R13 1 1
      100 GETIMPORT                        R14 K5 [require]
      102 GETTABLEKS                       R15 R0 K21 ["Flags"]
      104 GETTABLEKS                       R15 R15 K24 ["FFlagAnimGraphUI_StyleTouches"]
      106 CALL                             R14 1 1
      107 GETIMPORT                        R15 K5 [require]
      109 GETTABLEKS                       R16 R0 K21 ["Flags"]
      111 GETTABLEKS                       R16 R16 K25 ["getFFlagAnimGraphUILetAllParametersOverridable"]
      113 CALL                             R15 1 1
      114 GETIMPORT                        R16 K5 [require]
      116 GETTABLEKS                       R17 R0 K21 ["Flags"]
      118 GETTABLEKS                       R17 R17 K26 ["getFFlagAnimGraphUI_FixInputPanelParameters"]
      120 CALL                             R16 1 1
      121 DUPCLOSURE                       R17 K27 [PROTO_12]
      122 CAPTURE                          VAL R8
      123 CAPTURE                          VAL R6
      124 CAPTURE                          VAL R3
      125 CAPTURE                          VAL R9
      126 CAPTURE                          VAL R12
      127 CAPTURE                          VAL R11
      128 CAPTURE                          VAL R15
      129 CAPTURE                          VAL R1
      130 CAPTURE                          VAL R10
      131 CAPTURE                          VAL R14
      132 CAPTURE                          VAL R16
      133 CAPTURE                          VAL R7
      134 CAPTURE                          VAL R2
      135 JUMPIFNOT                        R13 ; [+5]
      136 GETTABLEKS                       R18 R8 K28 ["memo"]
      138 MOVE                             R19 R17
      139 CALL                             R18 1 1
      140 MOVE                             R17 R18
      141 RETURN                           R17 1
