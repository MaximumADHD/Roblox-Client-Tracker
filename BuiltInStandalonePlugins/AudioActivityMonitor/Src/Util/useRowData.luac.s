PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["loadMeteringMode"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["MeteringMode"]
        6 GETTABLEKS                       R1 R1 K2 ["Source"]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 JUMPIFNOT                        R2 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R2 1
        6 SETTABLEKS                       R0 R2 K0 ["current"]
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R2 R2 K0 ["current"]
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R4 R4 K0 ["current"]
       14 MOVE                             R5 R1
       15 NAMECALL                         R2 R2 K1 ["recordFrame"]
       17 CALL                             R2 3 0
       18 GETUPVAL                         R2 3
       19 NEWTABLE                         R3 0 0
       21 CALL                             R2 1 0
       22 RETURN                           R0 0

PROTO_3:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 LOADB                            R7 1
        7 SETTABLE                         R7 R1 R6
        8 FORGLOOP                         R2 2 ; [-3]
       10 GETUPVAL                         R2 0
       11 MOVE                             R3 R1
       12 CALL                             R2 1 0
       13 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R1 0 0
        3 SETTABLEKS                       R1 R0 K0 ["current"]
        5 GETUPVAL                         R0 1
        6 LOADB                            R1 0
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 2
        9 LOADN                            R1 1
       10 CALL                             R0 1 0
       11 GETUPVAL                         R0 3
       12 NEWTABLE                         R1 0 0
       14 CALL                             R0 1 0
       15 GETUPVAL                         R0 4
       16 NEWTABLE                         R1 0 0
       18 CALL                             R0 1 0
       19 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 NAMECALL                         R0 R0 K1 ["reset"]
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 1
        7 NEWTABLE                         R1 0 0
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Standalone"]
        3 GETTABLEKS                       R0 R0 K1 ["onViewMount"]
        5 GETUPVAL                         R1 1
        6 DUPTABLE                         R2 K6 [{"onInstancesUpdated", "onSelectedIdsChanged", "onDMClosing", "onDMChanged"}]
        7 GETUPVAL                         R3 2
        8 SETTABLEKS                       R3 R2 K2 ["onInstancesUpdated"]
       10 GETUPVAL                         R3 3
       11 SETTABLEKS                       R3 R2 K3 ["onSelectedIdsChanged"]
       13 GETUPVAL                         R3 4
       14 SETTABLEKS                       R3 R2 K4 ["onDMClosing"]
       16 GETUPVAL                         R3 5
       17 SETTABLEKS                       R3 R2 K5 ["onDMChanged"]
       19 CALL                             R0 2 0
       20 GETUPVAL                         R0 0
       21 GETTABLEKS                       R0 R0 K0 ["Standalone"]
       23 GETTABLEKS                       R0 R0 K7 ["onViewUnmount"]
       25 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Standalone"]
        3 GETTABLEKS                       R0 R0 K1 ["setMeteringEnabled"]
        5 GETUPVAL                         R2 1
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R3 R3 K2 ["MeteringMode"]
        9 GETTABLEKS                       R3 R3 K3 ["Disabled"]
       11 JUMPIFNOTEQ                      R2 R3 ; [+2]
       13 LOADB                            R1 0 +1
       14 LOADB                            R1 1
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

PROTO_8:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 GETUPVAL                         R2 0
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R2 R1 K3 ["Column"]
        6 JUMPIFNOTEQ                      R2 R0 ; [+15]
        8 GETTABLEKS                       R2 R1 K4 ["Ascending"]
       10 JUMPIFNOT                        R2 ; [+4]
       11 LOADB                            R2 0
       12 SETTABLEKS                       R2 R1 K4 ["Ascending"]
       14 JUMP                             ; [+12]
       15 LOADNIL                          R2
       16 SETTABLEKS                       R2 R1 K3 ["Column"]
       18 LOADB                            R2 1
       19 SETTABLEKS                       R2 R1 K4 ["Ascending"]
       21 JUMP                             ; [+5]
       22 SETTABLEKS                       R0 R1 K3 ["Column"]
       24 LOADB                            R2 1
       25 SETTABLEKS                       R2 R1 K4 ["Ascending"]
       27 GETUPVAL                         R2 1
       28 MOVE                             R3 R1
       29 CALL                             R2 1 0
       30 GETTABLEKS                       R2 R1 K3 ["Column"]
       32 JUMPIFEQKNIL                     R2 ; [+11]
       34 GETUPVAL                         R2 2
       35 GETTABLEKS                       R2 R2 K5 ["reportColumnSorted"]
       37 GETTABLEKS                       R3 R1 K3 ["Column"]
       39 GETTABLEKS                       R3 R3 K6 ["name"]
       41 GETTABLEKS                       R4 R1 K4 ["Ascending"]
       43 CALL                             R2 2 0
       44 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["current"]
        3 GETUPVAL                         R1 1
        4 MOVE                             R2 R0
        5 CALL                             R1 1 0
        6 GETUPVAL                         R1 2
        7 LOADN                            R2 1
        8 CALL                             R1 1 0
        9 JUMPIFNOT                        R0 ; [+6]
       10 GETUPVAL                         R1 3
       11 GETTABLEKS                       R1 R1 K0 ["current"]
       13 NAMECALL                         R1 R1 K1 ["markCurrentFramePaused"]
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 NOT                              R0 R1
        2 GETUPVAL                         R1 1
        3 SETTABLEKS                       R0 R1 K0 ["current"]
        5 GETUPVAL                         R1 2
        6 MOVE                             R2 R0
        7 CALL                             R1 1 0
        8 GETUPVAL                         R1 3
        9 LOADN                            R2 1
       10 CALL                             R1 1 0
       11 JUMPIFNOT                        R0 ; [+6]
       12 GETUPVAL                         R1 4
       13 GETTABLEKS                       R1 R1 K0 ["current"]
       15 NAMECALL                         R1 R1 K1 ["markCurrentFramePaused"]
       17 CALL                             R1 1 0
       18 GETUPVAL                         R1 5
       19 GETTABLEKS                       R1 R1 K2 ["reportLookbackChanged"]
       21 MOVE                             R2 R0
       22 LOADN                            R3 1
       23 CALL                             R1 2 0
       24 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+16]
        2 GETUPVAL                         R1 1
        3 LOADB                            R2 1
        4 SETTABLEKS                       R2 R1 K0 ["current"]
        6 GETUPVAL                         R1 2
        7 LOADB                            R2 1
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 3
       10 LOADN                            R2 1
       11 CALL                             R1 1 0
       12 GETUPVAL                         R1 4
       13 GETTABLEKS                       R1 R1 K0 ["current"]
       15 NAMECALL                         R1 R1 K1 ["markCurrentFramePaused"]
       17 CALL                             R1 1 0
       18 GETUPVAL                         R1 3
       19 MOVE                             R2 R0
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["reportLookbackChanged"]
        3 LOADB                            R2 1
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 NEWTABLE                         R2 1 0
        3 LOADB                            R3 1
        4 SETTABLE                         R3 R2 R0
        5 CALL                             R1 1 0
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K0 ["Standalone"]
        9 GETTABLEKS                       R1 R1 K1 ["selectInstanceWithId"]
       11 MOVE                             R2 R0
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R1 0 0
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K0 ["Standalone"]
        7 GETTABLEKS                       R0 R0 K1 ["selectInstanceWithId"]
        9 LOADK                            R1 K2 [""]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["storeMeteringMode"]
        6 MOVE                             R2 R0
        7 CALL                             R1 1 0
        8 GETUPVAL                         R1 2
        9 GETTABLEKS                       R1 R1 K1 ["reportMeteringModeSelected"]
       11 MOVE                             R2 R0
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["loadMeteringMode"]
        4 GETUPVAL                         R2 2
        5 GETTABLEKS                       R2 R2 K1 ["MeteringMode"]
        7 GETTABLEKS                       R2 R2 K2 ["Source"]
        9 CALL                             R1 1 -1
       10 CALL                             R0 -1 0
       11 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["useRef"]
       10 NEWTABLE                         R3 0 0
       12 CALL                             R2 1 1
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R3 R3 K2 ["useRef"]
       16 GETUPVAL                         R4 2
       17 GETTABLEKS                       R4 R4 K3 ["new"]
       19 LOADN                            R5 180
       20 CALL                             R4 1 -1
       21 CALL                             R3 -1 1
       22 GETUPVAL                         R4 0
       23 GETTABLEKS                       R4 R4 K4 ["useState"]
       25 NEWTABLE                         R5 0 0
       27 CALL                             R4 1 2
       28 GETUPVAL                         R6 0
       29 GETTABLEKS                       R6 R6 K4 ["useState"]
       31 DUPTABLE                         R7 K9 [{["Column"] = , ["Ascending"] = True}]
       32 CALL                             R6 1 2
       33 GETUPVAL                         R8 0
       34 GETTABLEKS                       R8 R8 K4 ["useState"]
       36 LOADN                            R9 1
       37 CALL                             R8 1 2
       38 GETUPVAL                         R10 0
       39 GETTABLEKS                       R10 R10 K4 ["useState"]
       41 LOADB                            R11 0
       42 CALL                             R10 1 2
       43 GETUPVAL                         R12 0
       44 GETTABLEKS                       R12 R12 K2 ["useRef"]
       46 LOADB                            R13 0
       47 CALL                             R12 1 1
       48 SETTABLEKS                       R10 R12 K10 ["current"]
       50 GETUPVAL                         R13 0
       51 GETTABLEKS                       R13 R13 K4 ["useState"]
       53 NEWTABLE                         R14 0 0
       55 CALL                             R13 1 2
       56 GETUPVAL                         R15 0
       57 GETTABLEKS                       R15 R15 K4 ["useState"]
       59 DUPCLOSURE                       R16 K11 [PROTO_0]
       60 CAPTURE                          UPVAL U3
       61 CAPTURE                          UPVAL U4
       62 CALL                             R15 1 2
       63 GETUPVAL                         R17 0
       64 GETTABLEKS                       R17 R17 K2 ["useRef"]
       66 MOVE                             R18 R15
       67 CALL                             R17 1 1
       68 SETTABLEKS                       R15 R17 K10 ["current"]
       70 GETUPVAL                         R18 0
       71 GETTABLEKS                       R18 R18 K2 ["useRef"]
       73 LOADN                            R19 0
       74 CALL                             R18 1 1
       75 GETUPVAL                         R19 0
       76 GETTABLEKS                       R19 R19 K12 ["useMemo"]
       78 NEWCLOSURE                       R20 P1
       79 CAPTURE                          UPVAL U5
       80 CAPTURE                          VAL R18
       81 CAPTURE                          VAL R17
       82 NEWTABLE                         R21 0 2
       84 MOVE                             R22 R18
       85 MOVE                             R23 R17
       86 SETLIST                          R21 R22 2 [1]
       88 CALL                             R19 2 1
       89 NEWCLOSURE                       R20 P2
       90 CAPTURE                          VAL R12
       91 CAPTURE                          VAL R2
       92 CAPTURE                          VAL R3
       93 CAPTURE                          VAL R5
       94 NEWCLOSURE                       R21 P3
       95 CAPTURE                          VAL R14
       96 NEWCLOSURE                       R22 P4
       97 CAPTURE                          VAL R2
       98 CAPTURE                          VAL R11
       99 CAPTURE                          VAL R9
      100 CAPTURE                          VAL R14
      101 CAPTURE                          VAL R5
      102 NEWCLOSURE                       R23 P5
      103 CAPTURE                          VAL R3
      104 CAPTURE                          VAL R5
      105 GETUPVAL                         R24 0
      106 GETTABLEKS                       R24 R24 K13 ["useEffect"]
      108 NEWCLOSURE                       R25 P6
      109 CAPTURE                          UPVAL U6
      110 CAPTURE                          VAL R0
      111 CAPTURE                          VAL R20
      112 CAPTURE                          VAL R21
      113 CAPTURE                          VAL R22
      114 CAPTURE                          VAL R23
      115 NEWTABLE                         R26 0 0
      117 CALL                             R24 2 0
      118 GETUPVAL                         R24 0
      119 GETTABLEKS                       R24 R24 K13 ["useEffect"]
      121 NEWCLOSURE                       R25 P7
      122 CAPTURE                          UPVAL U6
      123 CAPTURE                          VAL R15
      124 CAPTURE                          UPVAL U4
      125 NEWTABLE                         R26 0 1
      127 MOVE                             R27 R15
      128 SETLIST                          R26 R27 1 [1]
      130 CALL                             R24 2 0
      131 JUMPIFNOT                        R10 ; [+7]
      132 GETTABLEKS                       R24 R3 K10 ["current"]
      134 MOVE                             R26 R8
      135 NAMECALL                         R24 R24 K14 ["getPastFrame"]
      137 CALL                             R24 2 1
      138 JUMP                             ; [+2]
      139 GETTABLEKS                       R24 R2 K10 ["current"]
      141 JUMPIFNOT                        R10 ; [+7]
      142 GETTABLEKS                       R25 R3 K10 ["current"]
      144 MOVE                             R27 R8
      145 NAMECALL                         R25 R25 K15 ["getTimestamp"]
      147 CALL                             R25 2 1
      148 JUMP                             ; [+3]
      149 GETIMPORT                        R25 K18 [os.clock]
      151 CALL                             R25 0 1
      152 JUMPIFNOT                        R10 ; [+8]
      153 GETTABLEKS                       R27 R3 K10 ["current"]
      155 LOADN                            R29 1
      156 NAMECALL                         R27 R27 K15 ["getTimestamp"]
      158 CALL                             R27 2 1
      159 SUB                              R26 R25 R27
      160 JUMP                             ; [+1]
      161 LOADN                            R26 0
      162 SETTABLEKS                       R25 R18 K10 ["current"]
      164 GETUPVAL                         R27 7
      165 GETTABLEKS                       R27 R27 K19 ["countVoices"]
      167 MOVE                             R28 R24
      168 CALL                             R27 1 2
      169 GETUPVAL                         R29 7
      170 GETTABLEKS                       R29 R29 K20 ["makeRows"]
      172 MOVE                             R30 R24
      173 MOVE                             R31 R13
      174 MOVE                             R32 R6
      175 MOVE                             R33 R1
      176 CALL                             R29 4 1
      177 NEWCLOSURE                       R30 P8
      178 CAPTURE                          VAL R6
      179 CAPTURE                          VAL R7
      180 CAPTURE                          UPVAL U8
      181 NEWCLOSURE                       R31 P9
      182 CAPTURE                          VAL R12
      183 CAPTURE                          VAL R11
      184 CAPTURE                          VAL R9
      185 CAPTURE                          VAL R3
      186 NEWCLOSURE                       R32 P10
      187 CAPTURE                          VAL R10
      188 CAPTURE                          VAL R12
      189 CAPTURE                          VAL R11
      190 CAPTURE                          VAL R9
      191 CAPTURE                          VAL R3
      192 CAPTURE                          UPVAL U8
      193 NEWCLOSURE                       R33 P11
      194 CAPTURE                          VAL R10
      195 CAPTURE                          VAL R12
      196 CAPTURE                          VAL R11
      197 CAPTURE                          VAL R9
      198 CAPTURE                          VAL R3
      199 DUPCLOSURE                       R34 K21 [PROTO_12]
      200 CAPTURE                          UPVAL U8
      201 NEWCLOSURE                       R35 P13
      202 CAPTURE                          VAL R14
      203 CAPTURE                          UPVAL U6
      204 NEWCLOSURE                       R36 P14
      205 CAPTURE                          VAL R14
      206 CAPTURE                          UPVAL U6
      207 NEWCLOSURE                       R37 P15
      208 CAPTURE                          VAL R16
      209 CAPTURE                          UPVAL U3
      210 CAPTURE                          UPVAL U8
      211 NEWCLOSURE                       R38 P16
      212 CAPTURE                          VAL R16
      213 CAPTURE                          UPVAL U3
      214 CAPTURE                          UPVAL U4
      215 DUPTABLE                         R39 K44 [{["columnDefinitions"], ["rows"], ["numVoices"], ["numPlayingVoices"], ["activityValues"], ["currentFrameTimestamp"], ["sortMethod"], ["toggleSortColumn"], ["lookbackAmount"], ["maxLookbackAmount"] = 180, ["setLookbackAmount"], ["onLookbackScrubFinished"], ["isPaused"], ["togglePaused"], ["pausedFrames"], ["selectedIds"], ["selectId"], ["clearSelection"], ["meteringMode"], ["setMeteringMode"], ["reloadMeteringModeFromSettings"]}]
      216 SETTABLEKS                       R19 R39 K22 ["columnDefinitions"]
      218 SETTABLEKS                       R29 R39 K23 ["rows"]
      220 SETTABLEKS                       R27 R39 K24 ["numVoices"]
      222 SETTABLEKS                       R28 R39 K25 ["numPlayingVoices"]
      224 GETTABLEKS                       R40 R3 K10 ["current"]
      226 NAMECALL                         R40 R40 K45 ["getActivityValues"]
      228 CALL                             R40 1 1
      229 SETTABLEKS                       R40 R39 K26 ["activityValues"]
      231 SETTABLEKS                       R26 R39 K27 ["currentFrameTimestamp"]
      233 SETTABLEKS                       R6 R39 K28 ["sortMethod"]
      235 SETTABLEKS                       R30 R39 K29 ["toggleSortColumn"]
      237 SETTABLEKS                       R8 R39 K30 ["lookbackAmount"]
      239 SETTABLEKS                       R33 R39 K33 ["setLookbackAmount"]
      241 SETTABLEKS                       R34 R39 K34 ["onLookbackScrubFinished"]
      243 SETTABLEKS                       R10 R39 K35 ["isPaused"]
      245 SETTABLEKS                       R32 R39 K36 ["togglePaused"]
      247 GETTABLEKS                       R40 R3 K10 ["current"]
      249 NAMECALL                         R40 R40 K46 ["getAllPausedLookbackAmounts"]
      251 CALL                             R40 1 1
      252 SETTABLEKS                       R40 R39 K37 ["pausedFrames"]
      254 SETTABLEKS                       R13 R39 K38 ["selectedIds"]
      256 SETTABLEKS                       R35 R39 K39 ["selectId"]
      258 SETTABLEKS                       R36 R39 K40 ["clearSelection"]
      260 SETTABLEKS                       R15 R39 K41 ["meteringMode"]
      262 SETTABLEKS                       R37 R39 K42 ["setMeteringMode"]
      264 SETTABLEKS                       R38 R39 K43 ["reloadMeteringModeFromSettings"]
      266 RETURN                           R39 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AudioActivityMonitor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Types"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K10 ["StudioFoundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K11 ["Contexts"]
       30 GETTABLEKS                       R4 R4 K12 ["Localization"]
       32 GETIMPORT                        R5 K5 [require]
       34 GETTABLEKS                       R6 R0 K8 ["Src"]
       36 GETTABLEKS                       R6 R6 K13 ["Util"]
       38 GETTABLEKS                       R6 R6 K14 ["ActivityHistory"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K5 [require]
       43 GETTABLEKS                       R7 R0 K8 ["Src"]
       45 GETTABLEKS                       R7 R7 K13 ["Util"]
       47 GETTABLEKS                       R7 R7 K15 ["ColumnDefinitions"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K5 [require]
       52 GETTABLEKS                       R8 R0 K8 ["Src"]
       54 GETTABLEKS                       R8 R8 K13 ["Util"]
       56 GETTABLEKS                       R8 R8 K16 ["DMCoordinator"]
       58 CALL                             R7 1 1
       59 GETIMPORT                        R8 K5 [require]
       61 GETTABLEKS                       R9 R0 K8 ["Src"]
       63 GETTABLEKS                       R9 R9 K13 ["Util"]
       65 GETTABLEKS                       R9 R9 K17 ["RowDataBuilder"]
       67 CALL                             R8 1 1
       68 GETIMPORT                        R9 K5 [require]
       70 GETTABLEKS                       R10 R0 K8 ["Src"]
       72 GETTABLEKS                       R10 R10 K13 ["Util"]
       74 GETTABLEKS                       R10 R10 K18 ["SettingsUtil"]
       76 CALL                             R9 1 1
       77 GETIMPORT                        R10 K5 [require]
       79 GETTABLEKS                       R11 R0 K8 ["Src"]
       81 GETTABLEKS                       R11 R11 K13 ["Util"]
       83 GETTABLEKS                       R11 R11 K19 ["TelemetryUtil"]
       85 CALL                             R10 1 1
       86 DUPCLOSURE                       R11 K20 [PROTO_17]
       87 CAPTURE                          VAL R1
       88 CAPTURE                          VAL R4
       89 CAPTURE                          VAL R5
       90 CAPTURE                          VAL R9
       91 CAPTURE                          VAL R2
       92 CAPTURE                          VAL R6
       93 CAPTURE                          VAL R7
       94 CAPTURE                          VAL R8
       95 CAPTURE                          VAL R10
       96 RETURN                           R11 1
