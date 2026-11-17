PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["IsParameterized"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["ParameterName"]
        7 JUMPIF                           R0 ; [+2]
        8 LOADB                            R0 0
        9 RETURN                           R0 1
       10 GETUPVAL                         R0 1
       11 JUMPIFNOT                        R0 ; [+19]
       12 GETUPVAL                         R1 2
       13 GETTABLEKS                       R1 R1 K2 ["getNodeOverride"]
       15 GETUPVAL                         R2 3
       16 GETTABLEKS                       R2 R2 K3 ["nodeOverrides"]
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R3 R3 K4 ["NodeId"]
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R4 R4 K5 ["Name"]
       24 GETUPVAL                         R5 4
       25 CALL                             R1 4 1
       26 JUMPIFNOTEQKNIL                  R1 ; [+2]
       28 LOADB                            R0 0 +1
       29 LOADB                            R0 1
       30 RETURN                           R0 1
       31 GETUPVAL                         R2 5
       32 GETTABLEKS                       R2 R2 K6 ["parameterOverrides"]
       34 GETUPVAL                         R3 0
       35 GETTABLEKS                       R3 R3 K1 ["ParameterName"]
       37 GETTABLE                         R1 R2 R3
       38 JUMPIFNOTEQKNIL                  R1 ; [+2]
       40 LOADB                            R0 0 +1
       41 LOADB                            R0 1
       42 RETURN                           R0 1

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
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 NEWCLOSURE                       R0 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["ParameterName"]
        6 JUMPIF                           R0 ; [+1]
        7 RETURN                           R0 0
        8 GETUPVAL                         R0 2
        9 GETUPVAL                         R1 3
       10 JUMPIFEQ                         R0 R1 ; [+21]
       12 GETUPVAL                         R0 2
       13 JUMPIFNOT                        R0 ; [+8]
       14 GETUPVAL                         R0 4
       15 GETTABLEKS                       R0 R0 K1 ["incrementParameterOverrideCount"]
       17 GETUPVAL                         R1 1
       18 GETTABLEKS                       R1 R1 K0 ["ParameterName"]
       20 CALL                             R0 1 0
       21 JUMP                             ; [+7]
       22 GETUPVAL                         R0 4
       23 GETTABLEKS                       R0 R0 K2 ["decrementParameterOverrideCount"]
       25 GETUPVAL                         R1 1
       26 GETTABLEKS                       R1 R1 K0 ["ParameterName"]
       28 CALL                             R0 1 0
       29 GETUPVAL                         R0 5
       30 GETUPVAL                         R1 2
       31 CALL                             R0 1 0
       32 RETURN                           R0 0

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
        4 JUMPIFEQ                         R0 R1 ; [+32]
        6 GETUPVAL                         R0 2
        7 JUMPIF                           R0 ; [+24]
        8 GETUPVAL                         R0 3
        9 JUMPIFNOT                        R0 ; [+8]
       10 GETUPVAL                         R0 1
       11 JUMPIFEQKNIL                     R0 ; [+6]
       13 GETUPVAL                         R0 4
       14 GETTABLEKS                       R0 R0 K1 ["decrementParameterOverrideCount"]
       16 GETUPVAL                         R1 1
       17 CALL                             R0 1 0
       18 GETUPVAL                         R0 5
       19 JUMPIFNOT                        R0 ; [+12]
       20 GETUPVAL                         R0 0
       21 GETTABLEKS                       R0 R0 K0 ["ParameterName"]
       23 JUMPIFEQKNIL                     R0 ; [+8]
       25 GETUPVAL                         R0 4
       26 GETTABLEKS                       R0 R0 K2 ["incrementParameterOverrideCount"]
       28 GETUPVAL                         R1 0
       29 GETTABLEKS                       R1 R1 K0 ["ParameterName"]
       31 CALL                             R0 1 0
       32 GETUPVAL                         R0 6
       33 GETUPVAL                         R1 0
       34 GETTABLEKS                       R1 R1 K0 ["ParameterName"]
       36 CALL                             R0 1 0
       37 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 GETTABLEKS                       R4 R4 K0 ["NodeId"]
        5 CALL                             R2 2 0
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K1 ["IsParameterized"]
        9 JUMPIFNOT                        R2 ; [+55]
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R2 R2 K2 ["ParameterName"]
       13 JUMPIFNOT                        R2 ; [+51]
       14 GETUPVAL                         R2 3
       15 JUMPIFNOT                        R2 ; [+30]
       16 JUMPIFEQKNIL                     R0 ; [+17]
       18 GETUPVAL                         R2 4
       19 GETTABLEKS                       R2 R2 K3 ["setNodeOverride"]
       21 GETUPVAL                         R3 2
       22 GETTABLEKS                       R3 R3 K0 ["NodeId"]
       24 GETUPVAL                         R4 2
       25 GETTABLEKS                       R4 R4 K4 ["Name"]
       27 GETUPVAL                         R5 5
       28 MOVE                             R6 R0
       29 GETUPVAL                         R7 2
       30 GETTABLEKS                       R7 R7 K2 ["ParameterName"]
       32 CALL                             R2 5 0
       33 RETURN                           R0 0
       34 GETUPVAL                         R2 4
       35 GETTABLEKS                       R2 R2 K5 ["removeNodeOverride"]
       37 GETUPVAL                         R3 2
       38 GETTABLEKS                       R3 R3 K0 ["NodeId"]
       40 GETUPVAL                         R4 2
       41 GETTABLEKS                       R4 R4 K4 ["Name"]
       43 GETUPVAL                         R5 5
       44 CALL                             R2 3 0
       45 RETURN                           R0 0
       46 JUMPIFEQKNIL                     R0 ; [+10]
       48 GETUPVAL                         R2 6
       49 GETTABLEKS                       R2 R2 K6 ["setParameterOverrideValue"]
       51 GETUPVAL                         R3 2
       52 GETTABLEKS                       R3 R3 K2 ["ParameterName"]
       54 MOVE                             R4 R0
       55 CALL                             R2 2 0
       56 RETURN                           R0 0
       57 GETUPVAL                         R2 6
       58 GETTABLEKS                       R2 R2 K7 ["removeParameterOverride"]
       60 GETUPVAL                         R3 2
       61 GETTABLEKS                       R3 R3 K2 ["ParameterName"]
       63 CALL                             R2 1 0
       64 RETURN                           R0 0
       65 GETUPVAL                         R2 2
       66 GETTABLEKS                       R2 R2 K8 ["OnChanged"]
       68 JUMPIFNOT                        R2 ; [+9]
       69 GETUPVAL                         R2 2
       70 GETTABLEKS                       R2 R2 K8 ["OnChanged"]
       72 GETUPVAL                         R3 2
       73 GETTABLEKS                       R3 R3 K4 ["Name"]
       75 MOVE                             R4 R0
       76 MOVE                             R5 R1
       77 CALL                             R2 3 0
       78 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETTABLEKS                       R2 R2 K0 ["NodeId"]
        5 CALL                             R0 2 0
        6 GETUPVAL                         R0 3
        7 JUMPIFNOT                        R0 ; [+12]
        8 GETUPVAL                         R0 4
        9 GETTABLEKS                       R0 R0 K1 ["removeNodeOverride"]
       11 GETUPVAL                         R1 2
       12 GETTABLEKS                       R1 R1 K0 ["NodeId"]
       14 GETUPVAL                         R2 2
       15 GETTABLEKS                       R2 R2 K2 ["Name"]
       17 GETUPVAL                         R3 5
       18 CALL                             R0 3 0
       19 RETURN                           R0 0
       20 GETUPVAL                         R0 6
       21 GETTABLEKS                       R0 R0 K3 ["removeParameterOverride"]
       23 GETUPVAL                         R1 2
       24 GETTABLEKS                       R1 R1 K4 ["ParameterName"]
       26 CALL                             R0 1 0
       27 RETURN                           R0 0

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
       11 LOADNIL                          R0
       12 GETUPVAL                         R1 2
       13 JUMPIFNOT                        R1 ; [+36]
       14 GETUPVAL                         R1 1
       15 GETTABLEKS                       R1 R1 K2 ["ParameterName"]
       17 JUMPIFNOT                        R1 ; [+32]
       18 GETUPVAL                         R1 3
       19 JUMPIFNOT                        R1 ; [+22]
       20 GETUPVAL                         R1 4
       21 GETTABLEKS                       R1 R1 K3 ["getNodeOverride"]
       23 GETUPVAL                         R2 5
       24 GETTABLEKS                       R2 R2 K4 ["nodeOverrides"]
       26 GETUPVAL                         R3 1
       27 GETTABLEKS                       R3 R3 K5 ["NodeId"]
       29 GETUPVAL                         R4 1
       30 GETTABLEKS                       R4 R4 K6 ["Name"]
       32 GETUPVAL                         R5 6
       33 CALL                             R1 4 1
       34 JUMPIFNOT                        R1 ; [+3]
       35 GETTABLEKS                       R0 R1 K7 ["value"]
       37 JUMP                             ; [+15]
       38 GETUPVAL                         R2 1
       39 GETTABLEKS                       R0 R2 K1 ["Value"]
       41 JUMP                             ; [+11]
       42 GETUPVAL                         R1 7
       43 GETTABLEKS                       R1 R1 K8 ["parameterOverrides"]
       45 GETUPVAL                         R2 1
       46 GETTABLEKS                       R2 R2 K2 ["ParameterName"]
       48 GETTABLE                         R0 R1 R2
       49 JUMP                             ; [+3]
       50 GETUPVAL                         R1 1
       51 GETTABLEKS                       R0 R1 K1 ["Value"]
       53 MOVE                             R1 R0
       54 GETUPVAL                         R2 0
       55 CALL                             R2 0 1
       56 JUMPIF                           R2 ; [+1]
       57 RETURN                           R1 1
       58 GETUPVAL                         R2 8
       59 GETTABLEKS                       R2 R2 K9 ["castPropertyValue"]
       61 MOVE                             R3 R1
       62 GETUPVAL                         R4 1
       63 GETTABLEKS                       R4 R4 K10 ["Type"]
       65 CALL                             R2 2 1
       66 JUMPIFEQKNIL                     R2 ; [+3]
       68 MOVE                             R3 R2
       69 RETURN                           R3 1
       70 GETUPVAL                         R3 8
       71 GETTABLEKS                       R3 R3 K9 ["castPropertyValue"]
       73 GETUPVAL                         R4 1
       74 GETTABLEKS                       R4 R4 K11 ["DefaultValue"]
       76 GETUPVAL                         R5 1
       77 GETTABLEKS                       R5 R5 K10 ["Type"]
       79 CALL                             R3 2 1
       80 RETURN                           R3 1

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
       15 GETTABLEKS                       R3 R3 K0 ["useContext"]
       17 GETUPVAL                         R4 3
       18 GETTABLEKS                       R4 R4 K1 ["Context"]
       20 CALL                             R3 1 1
       21 GETUPVAL                         R4 4
       22 CALL                             R4 0 1
       23 GETTABLEKS                       R6 R0 K3 ["InputPinName"]
       25 ORK                              R5 R6 K2 [""]
       26 GETUPVAL                         R6 0
       27 GETTABLEKS                       R6 R6 K4 ["useState"]
       29 LOADNIL                          R7
       30 CALL                             R6 1 2
       31 GETUPVAL                         R8 0
       32 GETTABLEKS                       R8 R8 K5 ["useMemo"]
       34 NEWCLOSURE                       R9 P0
       35 CAPTURE                          VAL R0
       36 CAPTURE                          VAL R4
       37 CAPTURE                          UPVAL U2
       38 CAPTURE                          VAL R2
       39 CAPTURE                          VAL R5
       40 CAPTURE                          VAL R1
       41 NEWTABLE                         R10 0 9
       43 GETTABLEKS                       R11 R0 K6 ["Name"]
       45 GETTABLEKS                       R12 R0 K7 ["NodeId"]
       47 GETTABLEKS                       R13 R0 K8 ["IsParameterized"]
       49 GETTABLEKS                       R14 R0 K9 ["ParameterName"]
       51 MOVE                             R15 R5
       52 MOVE                             R16 R4
       53 MOVE                             R17 R6
       54 GETTABLEKS                       R18 R1 K10 ["parameterOverrides"]
       56 GETTABLEKS                       R19 R2 K11 ["nodeOverrides"]
       58 SETLIST                          R10 R11 9 [1]
       60 CALL                             R8 2 1
       61 GETUPVAL                         R9 5
       62 GETTABLEKS                       R9 R9 K12 ["useRefToState"]
       64 MOVE                             R10 R8
       65 CALL                             R9 1 1
       66 GETUPVAL                         R10 5
       67 GETTABLEKS                       R10 R10 K12 ["useRefToState"]
       69 GETTABLEKS                       R11 R0 K9 ["ParameterName"]
       71 CALL                             R10 1 1
       72 GETUPVAL                         R11 5
       73 GETTABLEKS                       R11 R11 K12 ["useRefToState"]
       75 GETTABLEKS                       R12 R1 K13 ["decrementParameterOverrideCount"]
       77 CALL                             R11 1 1
       78 GETUPVAL                         R12 0
       79 GETTABLEKS                       R12 R12 K14 ["useEffect"]
       81 NEWCLOSURE                       R13 P1
       82 CAPTURE                          VAL R9
       83 CAPTURE                          VAL R8
       84 CAPTURE                          VAL R10
       85 CAPTURE                          VAL R0
       86 CAPTURE                          VAL R11
       87 CAPTURE                          VAL R1
       88 NEWTABLE                         R14 0 3
       90 MOVE                             R15 R8
       91 GETTABLEKS                       R16 R0 K9 ["ParameterName"]
       93 GETTABLEKS                       R17 R1 K13 ["decrementParameterOverrideCount"]
       95 SETLIST                          R14 R15 3 [1]
       97 CALL                             R12 2 0
       98 GETUPVAL                         R12 0
       99 GETTABLEKS                       R12 R12 K14 ["useEffect"]
      101 NEWCLOSURE                       R13 P2
      102 CAPTURE                          VAL R4
      103 CAPTURE                          VAL R10
      104 CAPTURE                          VAL R9
      105 CAPTURE                          VAL R11
      106 NEWTABLE                         R14 0 4
      108 MOVE                             R15 R4
      109 MOVE                             R16 R9
      110 MOVE                             R17 R10
      111 MOVE                             R18 R11
      112 SETLIST                          R14 R15 4 [1]
      114 CALL                             R12 2 0
      115 GETUPVAL                         R12 0
      116 GETTABLEKS                       R12 R12 K4 ["useState"]
      118 MOVE                             R13 R8
      119 CALL                             R12 1 2
      120 GETUPVAL                         R14 0
      121 GETTABLEKS                       R14 R14 K14 ["useEffect"]
      123 NEWCLOSURE                       R15 P3
      124 CAPTURE                          VAL R4
      125 CAPTURE                          VAL R0
      126 CAPTURE                          VAL R8
      127 CAPTURE                          VAL R12
      128 CAPTURE                          VAL R1
      129 CAPTURE                          VAL R13
      130 NEWTABLE                         R16 0 7
      132 MOVE                             R17 R4
      133 MOVE                             R18 R8
      134 GETTABLEKS                       R19 R0 K9 ["ParameterName"]
      136 MOVE                             R20 R12
      137 MOVE                             R21 R13
      138 GETTABLEKS                       R22 R1 K15 ["incrementParameterOverrideCount"]
      140 GETTABLEKS                       R23 R1 K13 ["decrementParameterOverrideCount"]
      142 SETLIST                          R16 R17 7 [1]
      144 CALL                             R14 2 0
      145 GETUPVAL                         R14 0
      146 GETTABLEKS                       R14 R14 K5 ["useMemo"]
      148 NEWCLOSURE                       R15 P4
      149 CAPTURE                          VAL R6
      150 CAPTURE                          VAL R1
      151 NEWTABLE                         R16 0 2
      153 MOVE                             R17 R6
      154 GETTABLEKS                       R18 R1 K10 ["parameterOverrides"]
      156 SETLIST                          R16 R17 2 [1]
      158 CALL                             R14 2 1
      159 GETUPVAL                         R15 0
      160 GETTABLEKS                       R15 R15 K14 ["useEffect"]
      162 NEWCLOSURE                       R16 P5
      163 CAPTURE                          VAL R0
      164 CAPTURE                          VAL R6
      165 CAPTURE                          VAL R4
      166 CAPTURE                          VAL R14
      167 CAPTURE                          VAL R1
      168 CAPTURE                          VAL R8
      169 CAPTURE                          VAL R7
      170 NEWTABLE                         R17 0 6
      172 MOVE                             R18 R4
      173 MOVE                             R19 R14
      174 MOVE                             R20 R8
      175 GETTABLEKS                       R21 R0 K9 ["ParameterName"]
      177 GETTABLEKS                       R22 R1 K13 ["decrementParameterOverrideCount"]
      179 MOVE                             R23 R6
      180 SETLIST                          R17 R18 6 [1]
      182 CALL                             R15 2 0
      183 GETUPVAL                         R15 5
      184 GETTABLEKS                       R15 R15 K16 ["useEventCallback"]
      186 NEWCLOSURE                       R16 P6
      187 CAPTURE                          UPVAL U6
      188 CAPTURE                          VAL R3
      189 CAPTURE                          VAL R0
      190 CAPTURE                          VAL R4
      191 CAPTURE                          VAL R2
      192 CAPTURE                          VAL R5
      193 CAPTURE                          VAL R1
      194 CALL                             R15 1 1
      195 GETUPVAL                         R16 5
      196 GETTABLEKS                       R16 R16 K16 ["useEventCallback"]
      198 NEWCLOSURE                       R17 P7
      199 CAPTURE                          UPVAL U6
      200 CAPTURE                          VAL R3
      201 CAPTURE                          VAL R0
      202 CAPTURE                          VAL R4
      203 CAPTURE                          VAL R2
      204 CAPTURE                          VAL R5
      205 CAPTURE                          VAL R1
      206 CALL                             R16 1 1
      207 GETUPVAL                         R17 0
      208 GETTABLEKS                       R17 R17 K5 ["useMemo"]
      210 NEWCLOSURE                       R18 P8
      211 CAPTURE                          UPVAL U7
      212 CAPTURE                          VAL R0
      213 CAPTURE                          VAL R8
      214 CAPTURE                          VAL R4
      215 CAPTURE                          UPVAL U2
      216 CAPTURE                          VAL R2
      217 CAPTURE                          VAL R5
      218 CAPTURE                          VAL R1
      219 CAPTURE                          UPVAL U8
      220 NEWTABLE                         R19 0 12
      222 GETTABLEKS                       R20 R0 K17 ["Value"]
      224 GETTABLEKS                       R21 R0 K18 ["Type"]
      226 GETTABLEKS                       R22 R0 K19 ["DefaultValue"]
      228 GETTABLEKS                       R23 R0 K20 ["IsValueResolved"]
      230 MOVE                             R24 R8
      231 GETTABLEKS                       R25 R0 K9 ["ParameterName"]
      233 GETTABLEKS                       R26 R0 K7 ["NodeId"]
      235 GETTABLEKS                       R27 R0 K6 ["Name"]
      237 MOVE                             R28 R5
      238 MOVE                             R29 R4
      239 GETTABLEKS                       R30 R1 K10 ["parameterOverrides"]
      241 GETTABLEKS                       R31 R2 K11 ["nodeOverrides"]
      243 SETLIST                          R19 R20 12 [1]
      245 CALL                             R17 2 1
      246 GETUPVAL                         R18 9
      247 GETTABLEKS                       R18 R18 K21 ["join"]
      249 MOVE                             R19 R0
      250 DUPTABLE                         R20 K26 [{"Value", "Label", "IsParameterOverridden", "OnChanged", "OnParameterOverrideRevert"}]
      251 SETTABLEKS                       R17 R20 K17 ["Value"]
      253 GETTABLEKS                       R21 R0 K22 ["Label"]
      255 SETTABLEKS                       R21 R20 K22 ["Label"]
      257 SETTABLEKS                       R8 R20 K23 ["IsParameterOverridden"]
      259 SETTABLEKS                       R15 R20 K24 ["OnChanged"]
      261 SETTABLEKS                       R16 R20 K25 ["OnParameterOverrideRevert"]
      263 CALL                             R18 2 1
      264 GETUPVAL                         R19 7
      265 CALL                             R19 0 1
      266 JUMPIFNOT                        R19 ; [+2]
      267 SETTABLEKS                       R17 R18 K17 ["Value"]
      269 GETTABLEKS                       R20 R0 K27 ["HidePin"]
      271 JUMPIF                           R20 ; [+33]
      272 DUPTABLE                         R19 K29 [{"RenderedCompositorPin"}]
      273 GETUPVAL                         R20 0
      274 GETTABLEKS                       R20 R20 K30 ["createElement"]
      276 GETUPVAL                         R21 10
      277 DUPTABLE                         R22 K40 [{["Position"], ["pinSide"] = "Input", ["pinDataType"] = "Parameter", ["pinNodeId"], ["pinName"], ["pinValue"], ["pinDynamicIndex"]}]
      278 GETIMPORT                        R23 K43 [UDim2.fromOffset]
      280 LOADN                            R24 -21
      281 LOADN                            R25 14
      282 CALL                             R23 2 1
      283 SETTABLEKS                       R23 R22 K31 ["Position"]
      285 GETTABLEKS                       R23 R0 K7 ["NodeId"]
      287 SETTABLEKS                       R23 R22 K36 ["pinNodeId"]
      289 GETTABLEKS                       R23 R0 K6 ["Name"]
      291 SETTABLEKS                       R23 R22 K37 ["pinName"]
      293 GETTABLEKS                       R23 R0 K17 ["Value"]
      295 SETTABLEKS                       R23 R22 K38 ["pinValue"]
      297 GETTABLEKS                       R23 R0 K44 ["PinDynamicIndex"]
      299 SETTABLEKS                       R23 R22 K39 ["pinDynamicIndex"]
      301 CALL                             R20 2 1
      302 SETTABLEKS                       R20 R19 K28 ["RenderedCompositorPin"]
      304 JUMP                             ; [+1]
      305 LOADNIL                          R19
      306 GETUPVAL                         R20 0
      307 GETTABLEKS                       R20 R20 K30 ["createElement"]
      309 GETUPVAL                         R21 11
      310 MOVE                             R22 R18
      311 MOVE                             R23 R19
      312 CALL                             R20 3 1
      313 JUMPIFNOTEQKNIL                  R20 ; [+10]
      315 GETIMPORT                        R21 K46 [warn]
      317 LOADK                            R23 K47 ["Unsupported property type: "]
      318 GETTABLEKS                       R24 R0 K18 ["Type"]
      320 CONCAT                           R22 R23 R24
      321 CALL                             R21 1 0
      322 LOADNIL                          R21
      323 RETURN                           R21 1
      324 GETTABLEKS                       R21 R0 K6 ["Name"]
      326 LOADK                            R23 K48 ["%s"]
      327 LOADK                            R24 K49 ["_"]
      328 NAMECALL                         R21 R21 K50 ["gsub"]
      330 CALL                             R21 3 1
      331 GETUPVAL                         R22 0
      332 GETTABLEKS                       R22 R22 K30 ["createElement"]
      334 GETUPVAL                         R23 12
      335 GETTABLEKS                       R23 R23 K51 ["View"]
      337 DUPTABLE                         R24 K56 [{["tag"] = "flex-x-between auto-xy padding-x-small", ["LayoutOrder"], ["testId"]}]
      338 GETTABLEKS                       R25 R0 K54 ["LayoutOrder"]
      340 SETTABLEKS                       R25 R24 K54 ["LayoutOrder"]
      342 LOADK                            R25 K57 ["CompositorNodeProperty-%*"]
      343 MOVE                             R27 R21
      344 NAMECALL                         R25 R25 K58 ["format"]
      346 CALL                             R25 2 1
      347 SETTABLEKS                       R25 R24 K55 ["testId"]
      349 MOVE                             R25 R20
      350 CALL                             R22 3 -1
      351 RETURN                           R22 -1

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
       39 GETTABLEKS                       R6 R0 K9 ["Components"]
       41 GETTABLEKS                       R6 R6 K12 ["NodePropertyOverrideContext"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K13 ["NodeViewTypes"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K9 ["Components"]
       53 GETTABLEKS                       R8 R8 K14 ["ParameterOverrideContext"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETIMPORT                        R9 K1 [script]
       60 GETTABLEKS                       R9 R9 K15 ["PropertyComponent"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETIMPORT                        R10 K1 [script]
       67 GETTABLEKS                       R10 R10 K16 ["PropertyUtils"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K5 [require]
       72 GETTABLEKS                       R11 R0 K6 ["Parent"]
       74 GETTABLEKS                       R11 R11 K17 ["React"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K5 [require]
       79 GETTABLEKS                       R12 R0 K6 ["Parent"]
       81 GETTABLEKS                       R12 R12 K18 ["ReactUtils"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K5 [require]
       86 GETTABLEKS                       R13 R0 K9 ["Components"]
       88 GETTABLEKS                       R13 R13 K19 ["CompositorNodes"]
       90 GETTABLEKS                       R13 R13 K20 ["RenderedCompositorPin"]
       92 CALL                             R12 1 1
       93 GETIMPORT                        R13 K5 [require]
       95 GETTABLEKS                       R14 R0 K21 ["Util"]
       97 GETTABLEKS                       R14 R14 K22 ["bumpNodeZIndex"]
       99 CALL                             R13 1 1
      100 GETIMPORT                        R14 K5 [require]
      102 GETTABLEKS                       R15 R0 K23 ["Flags"]
      104 GETTABLEKS                       R15 R15 K24 ["getFFlagAnimGraphUIPerNodeParameterOverride"]
      106 CALL                             R14 1 1
      107 GETIMPORT                        R15 K5 [require]
      109 GETTABLEKS                       R16 R0 K23 ["Flags"]
      111 GETTABLEKS                       R16 R16 K25 ["getFFlagAnimGraphUI_ValueNodeDebugOutputs"]
      113 CALL                             R15 1 1
      114 DUPCLOSURE                       R16 K26 [PROTO_10]
      115 CAPTURE                          VAL R10
      116 CAPTURE                          VAL R7
      117 CAPTURE                          VAL R5
      118 CAPTURE                          VAL R3
      119 CAPTURE                          VAL R14
      120 CAPTURE                          VAL R11
      121 CAPTURE                          VAL R13
      122 CAPTURE                          VAL R15
      123 CAPTURE                          VAL R9
      124 CAPTURE                          VAL R1
      125 CAPTURE                          VAL R12
      126 CAPTURE                          VAL R8
      127 CAPTURE                          VAL R2
      128 GETTABLEKS                       R17 R10 K27 ["memo"]
      130 MOVE                             R18 R16
      131 CALL                             R17 1 1
      132 MOVE                             R16 R17
      133 RETURN                           R16 1
