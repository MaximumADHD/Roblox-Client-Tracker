PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        5 GETIMPORT                        R0 K1 [setmetatable]
        7 CALL                             R0 2 1
        8 LOADN                            R1 0
        9 SETTABLEKS                       R1 R0 K2 ["any_blank_count"]
       11 LOADN                            R1 0
       12 SETTABLEKS                       R1 R0 K3 ["any_blank_ms"]
       14 LOADN                            R1 0
       15 SETTABLEKS                       R1 R0 K4 ["any_blank_speed_sum"]
       17 LOADN                            R1 0
       18 SETTABLEKS                       R1 R0 K5 ["mostly_blank_count"]
       20 LOADN                            R1 0
       21 SETTABLEKS                       R1 R0 K6 ["mostly_blank_ms"]
       23 LOADN                            R1 0
       24 SETTABLEKS                       R1 R0 K7 ["pixels_blank"]
       26 LOADN                            R1 0
       27 SETTABLEKS                       R1 R0 K8 ["pixels_sampled"]
       29 LOADN                            R1 0
       30 SETTABLEKS                       R1 R0 K9 ["pixels_scrolled"]
       32 LOADN                            R1 0
       33 SETTABLEKS                       R1 R0 K10 ["total_time_spent"]
       35 LOADN                            R1 0
       36 SETTABLEKS                       R1 R0 K11 ["sample_count"]
       38 RETURN                           R0 1

PROTO_1:
        0 NEWTABLE                         R2 0 0
        2 GETUPVAL                         R3 0
        3 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
        5 GETIMPORT                        R1 K1 [setmetatable]
        7 CALL                             R1 2 1
        8 LOADNIL                          R2
        9 SETTABLEKS                       R2 R1 K2 ["_anyBlankStartTime"]
       11 LOADB                            R2 0
       12 SETTABLEKS                       R2 R1 K3 ["_enabled"]
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R2 R3 K4 ["new"]
       17 CALL                             R2 0 1
       18 SETTABLEKS                       R2 R1 K5 ["_info"]
       20 LOADNIL                          R2
       21 SETTABLEKS                       R2 R1 K6 ["_mostlyBlankStartTime"]
       23 LOADNIL                          R2
       24 SETTABLEKS                       R2 R1 K7 ["_samplesStartTime"]
       26 SETTABLEKS                       R0 R1 K8 ["_getFrameMetrics"]
       28 GETUPVAL                         R2 2
       29 JUMPIFNOT                        R2 ; [+11]
       30 GETUPVAL                         R3 2
       31 GETIMPORT                        R4 K11 [math.random]
       33 CALL                             R4 0 1
       34 JUMPIFLT                         R4 R3 ; [+2]
       36 LOADB                            R2 0 +1
       37 LOADB                            R2 1
       38 SETTABLEKS                       R2 R1 K3 ["_enabled"]
       40 JUMP                             ; [+10]
       41 LOADN                            R3 0
       42 GETIMPORT                        R4 K11 [math.random]
       44 CALL                             R4 0 1
       45 JUMPIFLT                         R4 R3 ; [+2]
       47 LOADB                            R2 0 +1
       48 LOADB                            R2 1
       49 SETTABLEKS                       R2 R1 K3 ["_enabled"]
       51 NAMECALL                         R2 R1 K12 ["_resetData"]
       53 CALL                             R2 1 0
       54 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOTEQ                      R2 R0 ; [+2]
        3 LOADB                            R1 0 +1
        4 LOADB                            R1 1
        5 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 1
        1 GETTABLEKS                       R0 R1 K0 ["filter"]
        3 GETUPVAL                         R1 0
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 2 1
        7 SETUPVAL                         R0 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQKNIL                  R1 ; [+6]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K0 ["warn"]
        6 LOADK                            R2 K1 ["Call `FillRateHelper.setSampleRate` before `addListener`."]
        7 CALL                             R1 1 0
        8 GETUPVAL                         R2 2
        9 FASTCALL2                        TABLE_INSERT R2 R0 ; [+4]
       11 MOVE                             R3 R0
       12 GETIMPORT                        R1 K4 [table.insert]
       14 CALL                             R1 2 0
       15 DUPTABLE                         R1 K6 [{"remove"}]
       16 NEWCLOSURE                       R2 P0
       17 CAPTURE                          UPVAL U2
       18 CAPTURE                          UPVAL U3
       19 CAPTURE                          VAL R0
       20 SETTABLEKS                       R2 R1 K5 ["remove"]
       22 RETURN                           R1 1

PROTO_5:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_6:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["_enabled"]
        2 JUMPIFNOT                        R1 ; [+9]
        3 GETTABLEKS                       R1 R0 K1 ["_samplesStartTime"]
        5 JUMPIFNOTEQKNIL                  R1 ; [+6]
        7 GETIMPORT                        R1 K4 [os.clock]
        9 CALL                             R1 0 1
       10 SETTABLEKS                       R1 R0 K1 ["_samplesStartTime"]
       12 RETURN                           R0 0

PROTO_8:
        0 MOVE                             R1 R0
        1 GETUPVAL                         R2 0
        2 CALL                             R1 1 -1
        3 RETURN                           R1 -1

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["_enabled"]
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 GETTABLEKS                       R1 R0 K1 ["_samplesStartTime"]
        6 JUMPIFNOTEQKNIL                  R1 ; [+2]
        8 RETURN                           R0 0
        9 GETTABLEKS                       R3 R0 K2 ["_info"]
       11 GETTABLEKS                       R2 R3 K3 ["sample_count"]
       13 GETUPVAL                         R3 0
       14 JUMPIFNOTLT                      R2 R3 ; [+5]
       16 NAMECALL                         R2 R0 K4 ["_resetData"]
       18 CALL                             R2 1 0
       19 RETURN                           R0 0
       20 GETIMPORT                        R3 K7 [os.clock]
       22 CALL                             R3 0 1
       23 SUB                              R2 R3 R1
       24 GETUPVAL                         R4 1
       25 GETTABLEKS                       R3 R4 K8 ["assign"]
       27 NEWTABLE                         R4 0 0
       29 GETTABLEKS                       R5 R0 K2 ["_info"]
       31 DUPTABLE                         R6 K10 [{"total_time_spent"}]
       32 SETTABLEKS                       R2 R6 K9 ["total_time_spent"]
       34 CALL                             R3 3 1
       35 GETUPVAL                         R5 2
       36 GETTABLEKS                       R4 R5 K11 ["forEach"]
       38 GETUPVAL                         R5 3
       39 NEWCLOSURE                       R6 P0
       40 CAPTURE                          VAL R3
       41 CALL                             R4 2 0
       42 NAMECALL                         R4 R0 K4 ["_resetData"]
       44 CALL                             R4 1 0
       45 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R4 R0 K0 ["_enabled"]
        2 JUMPIFNOT                        R4 ; [+11]
        3 GETTABLEKS                       R4 R1 K1 ["getItemCount"]
        5 GETTABLEKS                       R5 R1 K2 ["data"]
        7 CALL                             R4 1 1
        8 JUMPIFEQKN                       R4 K3 [0] ; [+5]
       10 GETTABLEKS                       R4 R0 K4 ["_samplesStartTime"]
       12 JUMPIFNOTEQKNIL                  R4 ; [+3]
       14 LOADN                            R4 0
       15 RETURN                           R4 1
       16 GETTABLEKS                       R4 R3 K5 ["dOffset"]
       18 GETTABLEKS                       R5 R3 K6 ["offset"]
       20 GETTABLEKS                       R6 R3 K7 ["velocity"]
       22 GETTABLEKS                       R7 R3 K8 ["visibleLength"]
       24 GETTABLEKS                       R8 R0 K9 ["_info"]
       26 GETTABLEKS                       R9 R8 K10 ["sample_count"]
       28 ADDK                             R9 R9 K11 [1]
       29 SETTABLEKS                       R9 R8 K10 ["sample_count"]
       31 GETTABLEKS                       R8 R0 K9 ["_info"]
       33 GETTABLEKS                       R9 R8 K12 ["pixels_sampled"]
       35 FASTCALL1                        MATH_ROUND R7 ; [+3]
       36 MOVE                             R11 R7
       37 GETIMPORT                        R10 K15 [math.round]
       39 CALL                             R10 1 1
       40 ADD                              R9 R9 R10
       41 SETTABLEKS                       R9 R8 K12 ["pixels_sampled"]
       43 GETTABLEKS                       R8 R0 K9 ["_info"]
       45 GETTABLEKS                       R9 R8 K16 ["pixels_scrolled"]
       47 ORK                              R12 R4 K3 [0]
       48 FASTCALL1                        MATH_ABS R12 ; [+2]
       49 GETIMPORT                        R11 K18 [math.abs]
       51 CALL                             R11 1 1
       52 FASTCALL1                        MATH_ROUND R11 ; [+2]
       53 GETIMPORT                        R10 K15 [math.round]
       55 CALL                             R10 1 1
       56 ADD                              R9 R9 R10
       57 SETTABLEKS                       R9 R8 K16 ["pixels_scrolled"]
       59 ORK                              R11 R6 K3 [0]
       60 FASTCALL1                        MATH_ABS R11 ; [+2]
       61 GETIMPORT                        R10 K18 [math.abs]
       63 CALL                             R10 1 1
       64 MULK                             R9 R10 K19 [1000]
       65 FASTCALL1                        MATH_ROUND R9 ; [+2]
       66 GETIMPORT                        R8 K15 [math.round]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R10 K22 [os.clock]
       71 CALL                             R10 0 1
       72 MULK                             R9 R10 K19 [1000]
       73 GETTABLEKS                       R10 R0 K23 ["_anyBlankStartTime"]
       75 JUMPIFEQKNIL                     R10 ; [+11]
       77 GETTABLEKS                       R10 R0 K9 ["_info"]
       79 GETTABLEKS                       R11 R10 K24 ["any_blank_ms"]
       81 GETTABLEKS                       R13 R0 K23 ["_anyBlankStartTime"]
       83 SUB                              R12 R9 R13
       84 ADD                              R11 R11 R12
       85 SETTABLEKS                       R11 R10 K24 ["any_blank_ms"]
       87 LOADNIL                          R10
       88 SETTABLEKS                       R10 R0 K23 ["_anyBlankStartTime"]
       90 GETTABLEKS                       R10 R0 K25 ["_mostlyBlankStartTime"]
       92 JUMPIFEQKNIL                     R10 ; [+11]
       94 GETTABLEKS                       R10 R0 K9 ["_info"]
       96 GETTABLEKS                       R11 R10 K26 ["mostly_blank_ms"]
       98 GETTABLEKS                       R13 R0 K25 ["_mostlyBlankStartTime"]
      100 SUB                              R12 R9 R13
      101 ADD                              R11 R11 R12
      102 SETTABLEKS                       R11 R10 K26 ["mostly_blank_ms"]
      104 LOADNIL                          R10
      105 SETTABLEKS                       R10 R0 K25 ["_mostlyBlankStartTime"]
      107 LOADN                            R10 0
      108 GETTABLEKS                       R11 R2 K27 ["first"]
      110 GETTABLEKS                       R12 R0 K28 ["_getFrameMetrics"]
      112 MOVE                             R13 R11
      113 CALL                             R12 1 1
      114 GETTABLEKS                       R13 R2 K29 ["last"]
      116 JUMPIFNOTLE                      R11 R13 ; [+12]
      118 JUMPIFNOT                        R12 ; [+3]
      119 GETTABLEKS                       R13 R12 K30 ["inLayout"]
      121 JUMPIF                           R13 ; [+7]
      122 GETTABLEKS                       R13 R0 K28 ["_getFrameMetrics"]
      124 MOVE                             R14 R11
      125 CALL                             R13 1 1
      126 MOVE                             R12 R13
      127 ADDK                             R11 R11 K11 [1]
      128 JUMPBACK                         ; [-15]
      129 JUMPIFNOT                        R12 ; [+19]
      130 LOADN                            R13 1
      131 JUMPIFNOTLT                      R13 R11 ; [+17]
      133 LOADN                            R16 0
      134 GETTABLEKS                       R18 R12 K6 ["offset"]
      136 SUB                              R17 R18 R5
      137 FASTCALL2                        MATH_MAX R16 R17 ; [+3]
      139 GETIMPORT                        R15 K32 [math.max]
      141 CALL                             R15 2 1
      142 FASTCALL2                        MATH_MIN R7 R15 ; [+4]
      144 MOVE                             R14 R7
      145 GETIMPORT                        R13 K34 [math.min]
      147 CALL                             R13 2 1
      148 MOVE                             R10 R13
      149 LOADN                            R13 0
      150 GETTABLEKS                       R14 R2 K29 ["last"]
      152 GETTABLEKS                       R15 R0 K28 ["_getFrameMetrics"]
      154 MOVE                             R16 R14
      155 CALL                             R15 1 1
      156 GETTABLEKS                       R16 R2 K27 ["first"]
      158 JUMPIFNOTLE                      R16 R14 ; [+12]
      160 JUMPIFNOT                        R15 ; [+3]
      161 GETTABLEKS                       R16 R15 K30 ["inLayout"]
      163 JUMPIF                           R16 ; [+7]
      164 GETTABLEKS                       R16 R0 K28 ["_getFrameMetrics"]
      166 MOVE                             R17 R14
      167 CALL                             R16 1 1
      168 MOVE                             R15 R16
      169 SUBK                             R14 R14 K11 [1]
      170 JUMPBACK                         ; [-15]
      171 JUMPIFNOT                        R15 ; [+27]
      172 GETTABLEKS                       R16 R1 K1 ["getItemCount"]
      174 GETTABLEKS                       R17 R1 K2 ["data"]
      176 CALL                             R16 1 1
      177 JUMPIFNOTLT                      R14 R16 ; [+21]
      179 GETTABLEKS                       R17 R15 K6 ["offset"]
      181 GETTABLEKS                       R18 R15 K35 ["length"]
      183 ADD                              R16 R17 R18
      184 LOADN                            R20 0
      185 ADD                              R22 R5 R7
      186 SUB                              R21 R22 R16
      187 FASTCALL2                        MATH_MAX R20 R21 ; [+3]
      189 GETIMPORT                        R19 K32 [math.max]
      191 CALL                             R19 2 1
      192 FASTCALL2                        MATH_MIN R7 R19 ; [+4]
      194 MOVE                             R18 R7
      195 GETIMPORT                        R17 K34 [math.min]
      197 CALL                             R17 2 1
      198 MOVE                             R13 R17
      199 ADD                              R17 R10 R13
      200 FASTCALL1                        MATH_ROUND R17 ; [+2]
      201 GETIMPORT                        R16 K15 [math.round]
      203 CALL                             R16 1 1
      204 DIV                              R17 R16 R7
      205 LOADN                            R18 0
      206 JUMPIFNOTLT                      R18 R17 ; [+37]
      208 SETTABLEKS                       R9 R0 K23 ["_anyBlankStartTime"]
      210 GETTABLEKS                       R18 R0 K9 ["_info"]
      212 GETTABLEKS                       R19 R18 K36 ["any_blank_speed_sum"]
      214 ADD                              R19 R19 R8
      215 SETTABLEKS                       R19 R18 K36 ["any_blank_speed_sum"]
      217 GETTABLEKS                       R18 R0 K9 ["_info"]
      219 GETTABLEKS                       R19 R18 K37 ["any_blank_count"]
      221 ADDK                             R19 R19 K11 [1]
      222 SETTABLEKS                       R19 R18 K37 ["any_blank_count"]
      224 GETTABLEKS                       R18 R0 K9 ["_info"]
      226 GETTABLEKS                       R19 R18 K38 ["pixels_blank"]
      228 ADD                              R19 R19 R16
      229 SETTABLEKS                       R19 R18 K38 ["pixels_blank"]
      231 LOADK                            R18 K39 [0.5]
      232 JUMPIFNOTLT                      R18 R17 ; [+25]
      234 SETTABLEKS                       R9 R0 K25 ["_mostlyBlankStartTime"]
      236 GETTABLEKS                       R18 R0 K9 ["_info"]
      238 GETTABLEKS                       R19 R18 K40 ["mostly_blank_count"]
      240 ADDK                             R19 R19 K11 [1]
      241 SETTABLEKS                       R19 R18 K40 ["mostly_blank_count"]
      243 RETURN                           R17 1
      244 LOADK                            R18 K41 [0.01]
      245 JUMPIFLT                         R8 R18 ; [+9]
      247 ORK                              R19 R4 K3 [0]
      248 FASTCALL1                        MATH_ABS R19 ; [+2]
      249 GETIMPORT                        R18 K18 [math.abs]
      251 CALL                             R18 1 1
      252 LOADN                            R19 1
      253 JUMPIFNOTLT                      R18 R19 ; [+4]
      255 NAMECALL                         R18 R0 K42 ["deactivateAndFlush"]
      257 CALL                             R18 1 0
      258 RETURN                           R17 1

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["_enabled"]
        2 RETURN                           R1 1

PROTO_12:
        0 LOADNIL                          R1
        1 SETTABLEKS                       R1 R0 K0 ["_anyBlankStartTime"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R1 R2 K1 ["new"]
        6 CALL                             R1 0 1
        7 SETTABLEKS                       R1 R0 K2 ["_info"]
        9 LOADNIL                          R1
       10 SETTABLEKS                       R1 R0 K3 ["_mostlyBlankStartTime"]
       12 LOADNIL                          R1
       13 SETTABLEKS                       R1 R0 K4 ["_samplesStartTime"]
       15 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K6 ["console"]
       16 GETTABLEKS                       R3 R1 K7 ["Array"]
       18 GETTABLEKS                       R4 R1 K8 ["Object"]
       20 NEWTABLE                         R5 2 0
       22 SETTABLEKS                       R5 R5 K9 ["__index"]
       24 DUPCLOSURE                       R6 K10 [PROTO_0]
       25 CAPTURE                          VAL R5
       26 SETTABLEKS                       R6 R5 K11 ["new"]
       28 NEWTABLE                         R6 0 0
       30 LOADN                            R7 10
       31 LOADNIL                          R8
       32 NEWTABLE                         R9 16 0
       34 SETTABLEKS                       R9 R9 K9 ["__index"]
       36 NEWCLOSURE                       R10 P1
       37 CAPTURE                          VAL R9
       38 CAPTURE                          VAL R5
       39 CAPTURE                          REF R8
       40 SETTABLEKS                       R10 R9 K11 ["new"]
       42 NEWCLOSURE                       R10 P2
       43 CAPTURE                          REF R8
       44 CAPTURE                          VAL R2
       45 CAPTURE                          REF R6
       46 CAPTURE                          VAL R3
       47 SETTABLEKS                       R10 R9 K12 ["addListener"]
       49 NEWCLOSURE                       R10 P3
       50 CAPTURE                          REF R8
       51 SETTABLEKS                       R10 R9 K13 ["setSampleRate"]
       53 NEWCLOSURE                       R10 P4
       54 CAPTURE                          REF R7
       55 SETTABLEKS                       R10 R9 K14 ["setMinSampleCount"]
       57 DUPCLOSURE                       R10 K15 [PROTO_7]
       58 SETTABLEKS                       R10 R9 K16 ["activate"]
       60 NEWCLOSURE                       R10 P6
       61 CAPTURE                          REF R7
       62 CAPTURE                          VAL R4
       63 CAPTURE                          VAL R3
       64 CAPTURE                          REF R6
       65 SETTABLEKS                       R10 R9 K17 ["deactivateAndFlush"]
       67 DUPCLOSURE                       R10 K18 [PROTO_10]
       68 SETTABLEKS                       R10 R9 K19 ["computeBlankness"]
       70 DUPCLOSURE                       R10 K20 [PROTO_11]
       71 SETTABLEKS                       R10 R9 K21 ["enabled"]
       73 DUPCLOSURE                       R10 K22 [PROTO_12]
       74 CAPTURE                          VAL R5
       75 SETTABLEKS                       R10 R9 K23 ["_resetData"]
       77 CLOSEUPVALS                      R6
       78 RETURN                           R9 1
