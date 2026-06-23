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

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["removeParameterOverride"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["ParameterName"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_9:
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

PROTO_10:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R0 0
        5 LOADK                            R2 K0 ["PropertyName"]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K1 ["Name"]
        9 NAMECALL                         R0 R0 K2 ["SetAttribute"]
       11 CALL                             R0 3 0
       12 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["useState"]
       10 LOADNIL                          R3
       11 CALL                             R2 1 2
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R4 R4 K3 ["useMemo"]
       15 NEWCLOSURE                       R5 P0
       16 CAPTURE                          VAL R0
       17 CAPTURE                          VAL R1
       18 NEWTABLE                         R6 0 5
       20 GETTABLEKS                       R7 R0 K4 ["Name"]
       22 GETTABLEKS                       R8 R0 K5 ["IsParameterized"]
       24 GETTABLEKS                       R9 R0 K6 ["ParameterName"]
       26 MOVE                             R10 R2
       27 GETTABLEKS                       R11 R1 K7 ["parameterOverrides"]
       29 SETLIST                          R6 R7 5 [1]
       31 CALL                             R4 2 1
       32 GETUPVAL                         R5 2
       33 GETTABLEKS                       R5 R5 K8 ["useRefToState"]
       35 MOVE                             R6 R4
       36 CALL                             R5 1 1
       37 GETUPVAL                         R6 2
       38 GETTABLEKS                       R6 R6 K8 ["useRefToState"]
       40 GETTABLEKS                       R7 R0 K6 ["ParameterName"]
       42 CALL                             R6 1 1
       43 GETUPVAL                         R7 2
       44 GETTABLEKS                       R7 R7 K8 ["useRefToState"]
       46 GETTABLEKS                       R8 R1 K9 ["decrementParameterOverrideCount"]
       48 CALL                             R7 1 1
       49 GETUPVAL                         R8 0
       50 GETTABLEKS                       R8 R8 K10 ["useEffect"]
       52 NEWCLOSURE                       R9 P1
       53 CAPTURE                          VAL R5
       54 CAPTURE                          VAL R4
       55 CAPTURE                          VAL R6
       56 CAPTURE                          VAL R0
       57 CAPTURE                          VAL R7
       58 CAPTURE                          VAL R1
       59 NEWTABLE                         R10 0 3
       61 MOVE                             R11 R4
       62 GETTABLEKS                       R12 R0 K6 ["ParameterName"]
       64 GETTABLEKS                       R13 R1 K9 ["decrementParameterOverrideCount"]
       66 SETLIST                          R10 R11 3 [1]
       68 CALL                             R8 2 0
       69 GETUPVAL                         R8 0
       70 GETTABLEKS                       R8 R8 K10 ["useEffect"]
       72 NEWCLOSURE                       R9 P2
       73 CAPTURE                          VAL R6
       74 CAPTURE                          VAL R5
       75 CAPTURE                          VAL R7
       76 NEWTABLE                         R10 0 3
       78 MOVE                             R11 R5
       79 MOVE                             R12 R6
       80 MOVE                             R13 R7
       81 SETLIST                          R10 R11 3 [1]
       83 CALL                             R8 2 0
       84 GETUPVAL                         R8 0
       85 GETTABLEKS                       R8 R8 K2 ["useState"]
       87 MOVE                             R9 R4
       88 CALL                             R8 1 2
       89 GETUPVAL                         R10 0
       90 GETTABLEKS                       R10 R10 K10 ["useEffect"]
       92 NEWCLOSURE                       R11 P3
       93 CAPTURE                          VAL R0
       94 CAPTURE                          VAL R4
       95 CAPTURE                          VAL R8
       96 CAPTURE                          VAL R1
       97 CAPTURE                          VAL R9
       98 NEWTABLE                         R12 0 6
      100 MOVE                             R13 R4
      101 GETTABLEKS                       R14 R0 K6 ["ParameterName"]
      103 MOVE                             R15 R8
      104 MOVE                             R16 R9
      105 GETTABLEKS                       R17 R1 K11 ["incrementParameterOverrideCount"]
      107 GETTABLEKS                       R18 R1 K9 ["decrementParameterOverrideCount"]
      109 SETLIST                          R12 R13 6 [1]
      111 CALL                             R10 2 0
      112 GETUPVAL                         R10 0
      113 GETTABLEKS                       R10 R10 K3 ["useMemo"]
      115 NEWCLOSURE                       R11 P4
      116 CAPTURE                          VAL R2
      117 CAPTURE                          VAL R1
      118 NEWTABLE                         R12 0 2
      120 MOVE                             R13 R2
      121 GETTABLEKS                       R14 R1 K7 ["parameterOverrides"]
      123 SETLIST                          R12 R13 2 [1]
      125 CALL                             R10 2 1
      126 GETUPVAL                         R11 0
      127 GETTABLEKS                       R11 R11 K10 ["useEffect"]
      129 NEWCLOSURE                       R12 P5
      130 CAPTURE                          VAL R0
      131 CAPTURE                          VAL R2
      132 CAPTURE                          VAL R10
      133 CAPTURE                          VAL R1
      134 CAPTURE                          VAL R4
      135 CAPTURE                          VAL R3
      136 NEWTABLE                         R13 0 5
      138 MOVE                             R14 R10
      139 MOVE                             R15 R4
      140 GETTABLEKS                       R16 R0 K6 ["ParameterName"]
      142 GETTABLEKS                       R17 R1 K9 ["decrementParameterOverrideCount"]
      144 MOVE                             R18 R2
      145 SETLIST                          R13 R14 5 [1]
      147 CALL                             R11 2 0
      148 GETUPVAL                         R11 0
      149 GETTABLEKS                       R11 R11 K12 ["useCallback"]
      151 NEWCLOSURE                       R12 P6
      152 CAPTURE                          VAL R0
      153 CAPTURE                          UPVAL U3
      154 CAPTURE                          VAL R1
      155 NEWTABLE                         R13 0 7
      157 GETTABLEKS                       R14 R0 K4 ["Name"]
      159 GETTABLEKS                       R15 R0 K13 ["OnChanged"]
      161 GETTABLEKS                       R16 R0 K5 ["IsParameterized"]
      163 GETTABLEKS                       R17 R0 K6 ["ParameterName"]
      165 GETTABLEKS                       R18 R1 K14 ["setParameterOverrideValue"]
      167 GETTABLEKS                       R19 R1 K11 ["incrementParameterOverrideCount"]
      169 MOVE                             R20 R4
      170 SETLIST                          R13 R14 7 [1]
      172 CALL                             R11 2 1
      173 GETUPVAL                         R12 0
      174 GETTABLEKS                       R12 R12 K12 ["useCallback"]
      176 NEWCLOSURE                       R13 P7
      177 CAPTURE                          VAL R1
      178 CAPTURE                          VAL R0
      179 NEWTABLE                         R14 0 2
      181 GETTABLEKS                       R15 R0 K6 ["ParameterName"]
      183 GETTABLEKS                       R16 R1 K15 ["removeParameterOverride"]
      185 SETLIST                          R14 R15 2 [1]
      187 CALL                             R12 2 1
      188 GETUPVAL                         R13 0
      189 GETTABLEKS                       R13 R13 K3 ["useMemo"]
      191 NEWCLOSURE                       R14 P8
      192 CAPTURE                          VAL R4
      193 CAPTURE                          VAL R0
      194 CAPTURE                          VAL R1
      195 NEWTABLE                         R15 0 4
      197 GETTABLEKS                       R16 R0 K16 ["Value"]
      199 MOVE                             R17 R4
      200 GETTABLEKS                       R18 R0 K6 ["ParameterName"]
      202 GETTABLEKS                       R19 R1 K7 ["parameterOverrides"]
      204 SETLIST                          R15 R16 4 [1]
      206 CALL                             R13 2 1
      207 GETUPVAL                         R14 4
      208 GETTABLEKS                       R14 R14 K17 ["join"]
      210 MOVE                             R15 R0
      211 DUPTABLE                         R16 K21 [{"Value", "Label", "IsParameterOverridden", "OnChanged", "OnParameterOverrideRevert"}]
      212 SETTABLEKS                       R13 R16 K16 ["Value"]
      214 GETTABLEKS                       R17 R0 K18 ["Label"]
      216 SETTABLEKS                       R17 R16 K18 ["Label"]
      218 SETTABLEKS                       R4 R16 K19 ["IsParameterOverridden"]
      220 SETTABLEKS                       R11 R16 K13 ["OnChanged"]
      222 SETTABLEKS                       R12 R16 K20 ["OnParameterOverrideRevert"]
      224 CALL                             R14 2 1
      225 GETTABLEKS                       R16 R0 K22 ["HidePin"]
      227 JUMPIF                           R16 ; [+44]
      228 DUPTABLE                         R15 K24 [{"RenderedCompositorPin"}]
      229 GETUPVAL                         R16 0
      230 GETTABLEKS                       R16 R16 K25 ["createElement"]
      232 GETUPVAL                         R17 5
      233 DUPTABLE                         R18 K33 [{"Position", "pinSide", "pinDataType", "pinNodeId", "pinName", "pinValue", "pinDynamicIndex"}]
      234 GETIMPORT                        R19 K36 [UDim2.fromOffset]
      236 LOADN                            R20 247
      237 LOADN                            R21 14
      238 CALL                             R19 2 1
      239 SETTABLEKS                       R19 R18 K26 ["Position"]
      241 LOADK                            R19 K37 ["Input"]
      242 SETTABLEKS                       R19 R18 K27 ["pinSide"]
      244 LOADK                            R19 K38 ["Parameter"]
      245 SETTABLEKS                       R19 R18 K28 ["pinDataType"]
      247 GETTABLEKS                       R19 R0 K39 ["NodeId"]
      249 SETTABLEKS                       R19 R18 K29 ["pinNodeId"]
      251 GETTABLEKS                       R19 R0 K4 ["Name"]
      253 SETTABLEKS                       R19 R18 K30 ["pinName"]
      255 GETTABLEKS                       R19 R0 K16 ["Value"]
      257 SETTABLEKS                       R19 R18 K31 ["pinValue"]
      259 GETUPVAL                         R20 6
      260 CALL                             R20 0 1
      261 JUMPIFNOT                        R20 ; [+3]
      262 GETTABLEKS                       R19 R0 K40 ["PinDynamicIndex"]
      264 JUMP                             ; [+1]
      265 LOADNIL                          R19
      266 SETTABLEKS                       R19 R18 K32 ["pinDynamicIndex"]
      268 CALL                             R16 2 1
      269 SETTABLEKS                       R16 R15 K23 ["RenderedCompositorPin"]
      271 JUMP                             ; [+1]
      272 LOADNIL                          R15
      273 GETUPVAL                         R16 0
      274 GETTABLEKS                       R16 R16 K2 ["useState"]
      276 LOADNIL                          R17
      277 CALL                             R16 1 2
      278 GETUPVAL                         R18 0
      279 GETTABLEKS                       R18 R18 K10 ["useEffect"]
      281 NEWCLOSURE                       R19 P9
      282 CAPTURE                          VAL R16
      283 CAPTURE                          VAL R0
      284 NEWTABLE                         R20 0 2
      286 MOVE                             R21 R16
      287 GETTABLEKS                       R22 R0 K4 ["Name"]
      289 SETLIST                          R20 R21 2 [1]
      291 CALL                             R18 2 0
      292 GETUPVAL                         R18 0
      293 GETTABLEKS                       R18 R18 K25 ["createElement"]
      295 GETUPVAL                         R19 7
      296 MOVE                             R20 R14
      297 MOVE                             R21 R15
      298 CALL                             R18 3 1
      299 JUMPIFNOTEQKNIL                  R18 ; [+10]
      301 GETIMPORT                        R19 K42 [warn]
      303 LOADK                            R21 K43 ["Unsupported property type: "]
      304 GETTABLEKS                       R22 R0 K44 ["Type"]
      306 CONCAT                           R20 R21 R22
      307 CALL                             R19 1 0
      308 LOADNIL                          R19
      309 RETURN                           R19 1
      310 GETUPVAL                         R19 0
      311 GETTABLEKS                       R19 R19 K25 ["createElement"]
      313 GETUPVAL                         R20 8
      314 GETTABLEKS                       R20 R20 K45 ["View"]
      316 DUPTABLE                         R21 K49 [{"tag", "LayoutOrder", "ref"}]
      317 LOADK                            R22 K50 ["auto-xy flex-x-between CompositorNodeProperty padding-x-small"]
      318 SETTABLEKS                       R22 R21 K46 ["tag"]
      320 GETTABLEKS                       R22 R0 K47 ["LayoutOrder"]
      322 SETTABLEKS                       R22 R21 K47 ["LayoutOrder"]
      324 SETTABLEKS                       R17 R21 K48 ["ref"]
      326 MOVE                             R22 R18
      327 CALL                             R19 3 -1
      328 RETURN                           R19 -1

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
       27 GETTABLEKS                       R4 R4 K11 ["GraphContextTypes"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K12 ["NodeViewTypes"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K9 ["Components"]
       39 GETTABLEKS                       R6 R6 K13 ["ParameterOverrideContext"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETIMPORT                        R7 K1 [script]
       46 GETTABLEKS                       R7 R7 K14 ["PropertyComponent"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K6 ["Parent"]
       53 GETTABLEKS                       R8 R8 K15 ["React"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K6 ["Parent"]
       60 GETTABLEKS                       R9 R9 K16 ["ReactUtils"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R10 R0 K9 ["Components"]
       67 GETTABLEKS                       R10 R10 K17 ["CompositorNodes"]
       69 GETTABLEKS                       R10 R10 K18 ["RenderedCompositorPin"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R11 R0 K19 ["Flags"]
       76 GETTABLEKS                       R11 R11 K20 ["FFlagAnimGraphUI_PerfFixes_7123"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K5 [require]
       81 GETTABLEKS                       R12 R0 K19 ["Flags"]
       83 GETTABLEKS                       R12 R12 K21 ["getFFlagAnimGraphUILetAllParametersOverridable"]
       85 CALL                             R11 1 1
       86 GETIMPORT                        R12 K5 [require]
       88 GETTABLEKS                       R13 R0 K19 ["Flags"]
       90 GETTABLEKS                       R13 R13 K22 ["getFFlagAnimGraphUI_FixInputPanelParameters"]
       92 CALL                             R12 1 1
       93 DUPCLOSURE                       R13 K23 [PROTO_11]
       94 CAPTURE                          VAL R7
       95 CAPTURE                          VAL R5
       96 CAPTURE                          VAL R8
       97 CAPTURE                          VAL R11
       98 CAPTURE                          VAL R1
       99 CAPTURE                          VAL R9
      100 CAPTURE                          VAL R12
      101 CAPTURE                          VAL R6
      102 CAPTURE                          VAL R2
      103 JUMPIFNOT                        R10 ; [+5]
      104 GETTABLEKS                       R14 R7 K24 ["memo"]
      106 MOVE                             R15 R13
      107 CALL                             R14 1 1
      108 MOVE                             R13 R14
      109 RETURN                           R13 1
