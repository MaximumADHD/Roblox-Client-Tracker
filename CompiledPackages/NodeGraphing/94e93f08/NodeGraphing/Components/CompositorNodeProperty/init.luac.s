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

PROTO_9:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+8]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["IsValueResolved"]
        6 JUMPIFNOT                        R0 ; [+4]
        7 GETUPVAL                         R0 1
        8 GETTABLEKS                       R0 R0 K1 ["Value"]
       10 RETURN                           R0 1
       11 GETUPVAL                         R1 2
       12 JUMPIFNOT                        R1 ; [+12]
       13 GETUPVAL                         R1 1
       14 GETTABLEKS                       R1 R1 K2 ["ParameterName"]
       16 JUMPIFNOT                        R1 ; [+8]
       17 GETUPVAL                         R1 3
       18 GETTABLEKS                       R1 R1 K3 ["parameterOverrides"]
       20 GETUPVAL                         R2 1
       21 GETTABLEKS                       R2 R2 K2 ["ParameterName"]
       23 GETTABLE                         R0 R1 R2
       24 JUMP                             ; [+3]
       25 GETUPVAL                         R0 1
       26 GETTABLEKS                       R0 R0 K1 ["Value"]
       28 GETUPVAL                         R1 0
       29 CALL                             R1 0 1
       30 JUMPIF                           R1 ; [+1]
       31 RETURN                           R0 1
       32 GETUPVAL                         R1 4
       33 GETTABLEKS                       R1 R1 K4 ["castPropertyValue"]
       35 MOVE                             R2 R0
       36 GETUPVAL                         R3 1
       37 GETTABLEKS                       R3 R3 K5 ["Type"]
       39 CALL                             R1 2 1
       40 JUMPIFEQKNIL                     R1 ; [+3]
       42 MOVE                             R2 R1
       43 RETURN                           R2 1
       44 GETUPVAL                         R2 4
       45 GETTABLEKS                       R2 R2 K4 ["castPropertyValue"]
       47 GETUPVAL                         R3 1
       48 GETTABLEKS                       R3 R3 K6 ["DefaultValue"]
       50 GETUPVAL                         R4 1
       51 GETTABLEKS                       R4 R4 K5 ["Type"]
       53 CALL                             R2 2 1
       54 RETURN                           R2 1

PROTO_10:
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
      155 GETUPVAL                         R12 3
      156 GETTABLEKS                       R12 R12 K12 ["useEventCallback"]
      158 NEWCLOSURE                       R13 P6
      159 CAPTURE                          UPVAL U4
      160 CAPTURE                          VAL R2
      161 CAPTURE                          VAL R0
      162 CAPTURE                          VAL R1
      163 CALL                             R12 1 1
      164 GETUPVAL                         R13 3
      165 GETTABLEKS                       R13 R13 K12 ["useEventCallback"]
      167 NEWCLOSURE                       R14 P7
      168 CAPTURE                          UPVAL U4
      169 CAPTURE                          VAL R2
      170 CAPTURE                          VAL R0
      171 CAPTURE                          VAL R1
      172 CALL                             R13 1 1
      173 GETUPVAL                         R14 0
      174 GETTABLEKS                       R14 R14 K3 ["useMemo"]
      176 NEWCLOSURE                       R15 P8
      177 CAPTURE                          UPVAL U5
      178 CAPTURE                          VAL R0
      179 CAPTURE                          VAL R5
      180 CAPTURE                          VAL R1
      181 CAPTURE                          UPVAL U6
      182 NEWTABLE                         R16 0 7
      184 GETTABLEKS                       R17 R0 K13 ["Value"]
      186 GETTABLEKS                       R18 R0 K14 ["Type"]
      188 GETTABLEKS                       R19 R0 K15 ["DefaultValue"]
      190 GETTABLEKS                       R20 R0 K16 ["IsValueResolved"]
      192 MOVE                             R21 R5
      193 GETTABLEKS                       R22 R0 K6 ["ParameterName"]
      195 GETTABLEKS                       R23 R1 K7 ["parameterOverrides"]
      197 SETLIST                          R16 R17 7 [1]
      199 CALL                             R14 2 1
      200 GETUPVAL                         R15 7
      201 GETTABLEKS                       R15 R15 K17 ["join"]
      203 MOVE                             R16 R0
      204 DUPTABLE                         R17 K22 [{"Value", "Label", "IsParameterOverridden", "OnChanged", "OnParameterOverrideRevert"}]
      205 SETTABLEKS                       R14 R17 K13 ["Value"]
      207 GETTABLEKS                       R18 R0 K18 ["Label"]
      209 SETTABLEKS                       R18 R17 K18 ["Label"]
      211 SETTABLEKS                       R5 R17 K19 ["IsParameterOverridden"]
      213 SETTABLEKS                       R12 R17 K20 ["OnChanged"]
      215 SETTABLEKS                       R13 R17 K21 ["OnParameterOverrideRevert"]
      217 CALL                             R15 2 1
      218 GETUPVAL                         R16 5
      219 CALL                             R16 0 1
      220 JUMPIFNOT                        R16 ; [+2]
      221 SETTABLEKS                       R14 R15 K13 ["Value"]
      223 GETTABLEKS                       R17 R0 K23 ["HidePin"]
      225 JUMPIF                           R17 ; [+33]
      226 DUPTABLE                         R16 K25 [{"RenderedCompositorPin"}]
      227 GETUPVAL                         R17 0
      228 GETTABLEKS                       R17 R17 K26 ["createElement"]
      230 GETUPVAL                         R18 8
      231 DUPTABLE                         R19 K36 [{["Position"], ["pinSide"] = "Input", ["pinDataType"] = "Parameter", ["pinNodeId"], ["pinName"], ["pinValue"], ["pinDynamicIndex"]}]
      232 GETIMPORT                        R20 K39 [UDim2.fromOffset]
      234 LOADN                            R21 -21
      235 LOADN                            R22 14
      236 CALL                             R20 2 1
      237 SETTABLEKS                       R20 R19 K27 ["Position"]
      239 GETTABLEKS                       R20 R0 K40 ["NodeId"]
      241 SETTABLEKS                       R20 R19 K32 ["pinNodeId"]
      243 GETTABLEKS                       R20 R0 K4 ["Name"]
      245 SETTABLEKS                       R20 R19 K33 ["pinName"]
      247 GETTABLEKS                       R20 R0 K13 ["Value"]
      249 SETTABLEKS                       R20 R19 K34 ["pinValue"]
      251 GETTABLEKS                       R20 R0 K41 ["PinDynamicIndex"]
      253 SETTABLEKS                       R20 R19 K35 ["pinDynamicIndex"]
      255 CALL                             R17 2 1
      256 SETTABLEKS                       R17 R16 K24 ["RenderedCompositorPin"]
      258 JUMP                             ; [+1]
      259 LOADNIL                          R16
      260 GETUPVAL                         R17 0
      261 GETTABLEKS                       R17 R17 K26 ["createElement"]
      263 GETUPVAL                         R18 9
      264 MOVE                             R19 R15
      265 MOVE                             R20 R16
      266 CALL                             R17 3 1
      267 JUMPIFNOTEQKNIL                  R17 ; [+10]
      269 GETIMPORT                        R18 K43 [warn]
      271 LOADK                            R20 K44 ["Unsupported property type: "]
      272 GETTABLEKS                       R21 R0 K14 ["Type"]
      274 CONCAT                           R19 R20 R21
      275 CALL                             R18 1 0
      276 LOADNIL                          R18
      277 RETURN                           R18 1
      278 GETTABLEKS                       R18 R0 K4 ["Name"]
      280 LOADK                            R20 K45 ["%s"]
      281 LOADK                            R21 K46 ["_"]
      282 NAMECALL                         R18 R18 K47 ["gsub"]
      284 CALL                             R18 3 1
      285 GETUPVAL                         R19 0
      286 GETTABLEKS                       R19 R19 K26 ["createElement"]
      288 GETUPVAL                         R20 10
      289 GETTABLEKS                       R20 R20 K48 ["View"]
      291 DUPTABLE                         R21 K53 [{["tag"] = "flex-x-between auto-xy padding-x-small", ["LayoutOrder"], ["testId"]}]
      292 GETTABLEKS                       R22 R0 K51 ["LayoutOrder"]
      294 SETTABLEKS                       R22 R21 K51 ["LayoutOrder"]
      296 LOADK                            R22 K54 ["CompositorNodeProperty-%*"]
      297 MOVE                             R24 R18
      298 NAMECALL                         R22 R22 K55 ["format"]
      300 CALL                             R22 2 1
      301 SETTABLEKS                       R22 R21 K52 ["testId"]
      303 MOVE                             R22 R17
      304 CALL                             R19 3 -1
      305 RETURN                           R19 -1

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
       58 GETIMPORT                        R9 K1 [script]
       60 GETTABLEKS                       R9 R9 K15 ["PropertyUtils"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R10 R0 K6 ["Parent"]
       67 GETTABLEKS                       R10 R10 K16 ["React"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K5 [require]
       72 GETTABLEKS                       R11 R0 K6 ["Parent"]
       74 GETTABLEKS                       R11 R11 K17 ["ReactUtils"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K5 [require]
       79 GETTABLEKS                       R12 R0 K9 ["Components"]
       81 GETTABLEKS                       R12 R12 K18 ["CompositorNodes"]
       83 GETTABLEKS                       R12 R12 K19 ["RenderedCompositorPin"]
       85 CALL                             R11 1 1
       86 GETIMPORT                        R12 K5 [require]
       88 GETTABLEKS                       R13 R0 K20 ["Util"]
       90 GETTABLEKS                       R13 R13 K21 ["bumpNodeZIndex"]
       92 CALL                             R12 1 1
       93 GETIMPORT                        R13 K5 [require]
       95 GETTABLEKS                       R14 R0 K22 ["Flags"]
       97 GETTABLEKS                       R14 R14 K23 ["getFFlagAnimGraphUI_ValueNodeDebugOutputs"]
       99 CALL                             R13 1 1
      100 DUPCLOSURE                       R14 K24 [PROTO_10]
      101 CAPTURE                          VAL R9
      102 CAPTURE                          VAL R6
      103 CAPTURE                          VAL R3
      104 CAPTURE                          VAL R10
      105 CAPTURE                          VAL R12
      106 CAPTURE                          VAL R13
      107 CAPTURE                          VAL R8
      108 CAPTURE                          VAL R1
      109 CAPTURE                          VAL R11
      110 CAPTURE                          VAL R7
      111 CAPTURE                          VAL R2
      112 GETTABLEKS                       R15 R9 K25 ["memo"]
      114 MOVE                             R16 R14
      115 CALL                             R15 1 1
      116 MOVE                             R14 R15
      117 RETURN                           R14 1
