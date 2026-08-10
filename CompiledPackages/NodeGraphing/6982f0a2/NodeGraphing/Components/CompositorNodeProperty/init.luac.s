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
        9 JUMPIFNOT                        R2 ; [+23]
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R2 R2 K2 ["ParameterName"]
       13 JUMPIFNOT                        R2 ; [+19]
       14 JUMPIFEQKNIL                     R0 ; [+10]
       16 GETUPVAL                         R2 3
       17 GETTABLEKS                       R2 R2 K3 ["setParameterOverrideValue"]
       19 GETUPVAL                         R3 2
       20 GETTABLEKS                       R3 R3 K2 ["ParameterName"]
       22 MOVE                             R4 R0
       23 CALL                             R2 2 0
       24 RETURN                           R0 0
       25 GETUPVAL                         R2 3
       26 GETTABLEKS                       R2 R2 K4 ["removeParameterOverride"]
       28 GETUPVAL                         R3 2
       29 GETTABLEKS                       R3 R3 K2 ["ParameterName"]
       31 CALL                             R2 1 0
       32 RETURN                           R0 0
       33 GETUPVAL                         R2 2
       34 GETTABLEKS                       R2 R2 K5 ["OnChanged"]
       36 JUMPIFNOT                        R2 ; [+9]
       37 GETUPVAL                         R2 2
       38 GETTABLEKS                       R2 R2 K5 ["OnChanged"]
       40 GETUPVAL                         R3 2
       41 GETTABLEKS                       R3 R3 K6 ["Name"]
       43 MOVE                             R4 R0
       44 MOVE                             R5 R1
       45 CALL                             R2 3 0
       46 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["IsParameterized"]
        3 JUMPIFNOT                        R2 ; [+23]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K1 ["ParameterName"]
        7 JUMPIFNOT                        R2 ; [+19]
        8 JUMPIFEQKNIL                     R0 ; [+10]
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K2 ["setParameterOverrideValue"]
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R3 R3 K1 ["ParameterName"]
       16 MOVE                             R4 R0
       17 CALL                             R2 2 0
       18 RETURN                           R0 0
       19 GETUPVAL                         R2 1
       20 GETTABLEKS                       R2 R2 K3 ["removeParameterOverride"]
       22 GETUPVAL                         R3 0
       23 GETTABLEKS                       R3 R3 K1 ["ParameterName"]
       25 CALL                             R2 1 0
       26 RETURN                           R0 0
       27 GETUPVAL                         R2 0
       28 GETTABLEKS                       R2 R2 K4 ["OnChanged"]
       30 JUMPIFNOT                        R2 ; [+9]
       31 GETUPVAL                         R2 0
       32 GETTABLEKS                       R2 R2 K4 ["OnChanged"]
       34 GETUPVAL                         R3 0
       35 GETTABLEKS                       R3 R3 K5 ["Name"]
       37 MOVE                             R4 R0
       38 MOVE                             R5 R1
       39 CALL                             R2 3 0
       40 RETURN                           R0 0

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
      156 JUMPIFNOT                        R13 ; [+10]
      157 GETUPVAL                         R12 3
      158 GETTABLEKS                       R12 R12 K12 ["useEventCallback"]
      160 NEWCLOSURE                       R13 P6
      161 CAPTURE                          UPVAL U5
      162 CAPTURE                          VAL R2
      163 CAPTURE                          VAL R0
      164 CAPTURE                          VAL R1
      165 CALL                             R12 1 1
      166 JUMP                             ; [+24]
      167 GETUPVAL                         R12 0
      168 GETTABLEKS                       R12 R12 K13 ["useCallback"]
      170 NEWCLOSURE                       R13 P7
      171 CAPTURE                          VAL R0
      172 CAPTURE                          VAL R1
      173 NEWTABLE                         R14 0 7
      175 GETTABLEKS                       R15 R0 K4 ["Name"]
      177 GETTABLEKS                       R16 R0 K14 ["OnChanged"]
      179 GETTABLEKS                       R17 R0 K5 ["IsParameterized"]
      181 GETTABLEKS                       R18 R0 K6 ["ParameterName"]
      183 GETTABLEKS                       R19 R1 K15 ["setParameterOverrideValue"]
      185 GETTABLEKS                       R20 R1 K11 ["incrementParameterOverrideCount"]
      187 MOVE                             R21 R5
      188 SETLIST                          R14 R15 7 [1]
      190 CALL                             R12 2 1
      191 GETUPVAL                         R14 4
      192 JUMPIFNOT                        R14 ; [+10]
      193 GETUPVAL                         R13 3
      194 GETTABLEKS                       R13 R13 K12 ["useEventCallback"]
      196 NEWCLOSURE                       R14 P8
      197 CAPTURE                          UPVAL U5
      198 CAPTURE                          VAL R2
      199 CAPTURE                          VAL R0
      200 CAPTURE                          VAL R1
      201 CALL                             R13 1 1
      202 JUMP                             ; [+15]
      203 GETUPVAL                         R13 0
      204 GETTABLEKS                       R13 R13 K13 ["useCallback"]
      206 NEWCLOSURE                       R14 P9
      207 CAPTURE                          VAL R1
      208 CAPTURE                          VAL R0
      209 NEWTABLE                         R15 0 2
      211 GETTABLEKS                       R16 R0 K6 ["ParameterName"]
      213 GETTABLEKS                       R17 R1 K16 ["removeParameterOverride"]
      215 SETLIST                          R15 R16 2 [1]
      217 CALL                             R13 2 1
      218 GETUPVAL                         R14 0
      219 GETTABLEKS                       R14 R14 K3 ["useMemo"]
      221 NEWCLOSURE                       R15 P10
      222 CAPTURE                          VAL R5
      223 CAPTURE                          VAL R0
      224 CAPTURE                          VAL R1
      225 NEWTABLE                         R16 0 4
      227 GETTABLEKS                       R17 R0 K17 ["Value"]
      229 MOVE                             R18 R5
      230 GETTABLEKS                       R19 R0 K6 ["ParameterName"]
      232 GETTABLEKS                       R20 R1 K7 ["parameterOverrides"]
      234 SETLIST                          R16 R17 4 [1]
      236 CALL                             R14 2 1
      237 GETUPVAL                         R15 6
      238 GETTABLEKS                       R15 R15 K18 ["join"]
      240 MOVE                             R16 R0
      241 DUPTABLE                         R17 K22 [{"Value", "Label", "IsParameterOverridden", "OnChanged", "OnParameterOverrideRevert"}]
      242 SETTABLEKS                       R14 R17 K17 ["Value"]
      244 GETTABLEKS                       R18 R0 K19 ["Label"]
      246 SETTABLEKS                       R18 R17 K19 ["Label"]
      248 SETTABLEKS                       R5 R17 K20 ["IsParameterOverridden"]
      250 SETTABLEKS                       R12 R17 K14 ["OnChanged"]
      252 SETTABLEKS                       R13 R17 K21 ["OnParameterOverrideRevert"]
      254 CALL                             R15 2 1
      255 GETTABLEKS                       R17 R0 K23 ["HidePin"]
      257 JUMPIF                           R17 ; [+42]
      258 DUPTABLE                         R16 K25 [{"RenderedCompositorPin"}]
      259 GETUPVAL                         R17 0
      260 GETTABLEKS                       R17 R17 K26 ["createElement"]
      262 GETUPVAL                         R18 7
      263 DUPTABLE                         R19 K36 [{["Position"], ["pinSide"] = "Input", ["pinDataType"] = "Parameter", ["pinNodeId"], ["pinName"], ["pinValue"], ["pinDynamicIndex"]}]
      264 GETUPVAL                         R21 8
      265 CALL                             R21 0 1
      266 JUMPIFNOT                        R21 ; [+6]
      267 GETIMPORT                        R20 K39 [UDim2.fromOffset]
      269 LOADN                            R21 -21
      270 LOADN                            R22 14
      271 CALL                             R20 2 1
      272 JUMP                             ; [+5]
      273 GETIMPORT                        R20 K39 [UDim2.fromOffset]
      275 LOADN                            R21 -9
      276 LOADN                            R22 14
      277 CALL                             R20 2 1
      278 SETTABLEKS                       R20 R19 K27 ["Position"]
      280 GETTABLEKS                       R20 R0 K40 ["NodeId"]
      282 SETTABLEKS                       R20 R19 K32 ["pinNodeId"]
      284 GETTABLEKS                       R20 R0 K4 ["Name"]
      286 SETTABLEKS                       R20 R19 K33 ["pinName"]
      288 GETTABLEKS                       R20 R0 K17 ["Value"]
      290 SETTABLEKS                       R20 R19 K34 ["pinValue"]
      292 GETTABLEKS                       R20 R0 K41 ["PinDynamicIndex"]
      294 SETTABLEKS                       R20 R19 K35 ["pinDynamicIndex"]
      296 CALL                             R17 2 1
      297 SETTABLEKS                       R17 R16 K24 ["RenderedCompositorPin"]
      299 JUMP                             ; [+1]
      300 LOADNIL                          R16
      301 GETUPVAL                         R17 0
      302 GETTABLEKS                       R17 R17 K26 ["createElement"]
      304 GETUPVAL                         R18 9
      305 MOVE                             R19 R15
      306 MOVE                             R20 R16
      307 CALL                             R17 3 1
      308 JUMPIFNOTEQKNIL                  R17 ; [+10]
      310 GETIMPORT                        R18 K43 [warn]
      312 LOADK                            R20 K44 ["Unsupported property type: "]
      313 GETTABLEKS                       R21 R0 K45 ["Type"]
      315 CONCAT                           R19 R20 R21
      316 CALL                             R18 1 0
      317 LOADNIL                          R18
      318 RETURN                           R18 1
      319 GETTABLEKS                       R18 R0 K4 ["Name"]
      321 LOADK                            R20 K46 ["%s"]
      322 LOADK                            R21 K47 ["_"]
      323 NAMECALL                         R18 R18 K48 ["gsub"]
      325 CALL                             R18 3 1
      326 GETUPVAL                         R19 0
      327 GETTABLEKS                       R19 R19 K26 ["createElement"]
      329 GETUPVAL                         R20 10
      330 GETTABLEKS                       R20 R20 K49 ["View"]
      332 DUPTABLE                         R21 K54 [{["tag"] = "flex-x-between auto-xy padding-x-small", ["LayoutOrder"], ["testId"]}]
      333 GETTABLEKS                       R22 R0 K52 ["LayoutOrder"]
      335 SETTABLEKS                       R22 R21 K52 ["LayoutOrder"]
      337 LOADK                            R23 K55 ["CompositorNodeProperty-%*"]
      338 MOVE                             R25 R18
      339 NAMECALL                         R23 R23 K56 ["format"]
      341 CALL                             R23 2 1
      342 MOVE                             R22 R23
      343 SETTABLEKS                       R22 R21 K53 ["testId"]
      345 MOVE                             R22 R17
      346 CALL                             R19 3 -1
      347 RETURN                           R19 -1

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
      104 GETTABLEKS                       R15 R15 K24 ["getFFlagAnimGraphUIPinOffset"]
      106 CALL                             R14 1 1
      107 DUPCLOSURE                       R15 K25 [PROTO_12]
      108 CAPTURE                          VAL R8
      109 CAPTURE                          VAL R6
      110 CAPTURE                          VAL R3
      111 CAPTURE                          VAL R9
      112 CAPTURE                          VAL R12
      113 CAPTURE                          VAL R11
      114 CAPTURE                          VAL R1
      115 CAPTURE                          VAL R10
      116 CAPTURE                          VAL R14
      117 CAPTURE                          VAL R7
      118 CAPTURE                          VAL R2
      119 JUMPIFNOT                        R13 ; [+5]
      120 GETTABLEKS                       R16 R8 K26 ["memo"]
      122 MOVE                             R17 R15
      123 CALL                             R16 1 1
      124 MOVE                             R15 R16
      125 RETURN                           R15 1
