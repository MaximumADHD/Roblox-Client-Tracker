PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+1]
        5 RETURN                           R0 0
        6 LOADNIL                          R1
        7 SETUPVAL                         R1 2
        8 SETUPVAL                         R0 1
        9 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+6]
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R1 R2 K0 ["selectedIdsArrayObservable"]
        5 GETTABLEKS                       R0 R1 K1 ["get"]
        7 CALL                             R0 0 1
        8 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+6]
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K0 ["selectedIdsArrayObservable"]
        5 GETTABLEKS                       R1 R2 K1 ["get"]
        7 CALL                             R1 0 1
        8 LENGTH                           R2 R1
        9 JUMPIFEQKN                       R2 K2 [0] ; [+7]
       11 LENGTH                           R2 R1
       12 JUMPIFNOTEQKN                    R2 K3 [1] ; [+19]
       14 GETTABLEN                        R2 R1 1
       15 JUMPIFNOTEQ                      R0 R2 ; [+16]
       17 GETIMPORT                        R2 K6 [table.freeze]
       19 NEWTABLE                         R3 0 1
       21 MOVE                             R4 R0
       22 SETLIST                          R3 R4 1 [1]
       24 CALL                             R2 1 1
       25 SETUPVAL                         R2 2
       26 GETUPVAL                         R4 1
       27 GETTABLEKS                       R3 R4 K7 ["selectIds"]
       29 MOVE                             R4 R2
       30 CALL                             R3 1 0
       31 RETURN                           R0 0
       32 GETUPVAL                         R2 0
       33 JUMPIFNOTEQKNIL                  R2 ; [+2]
       35 SETUPVAL                         R1 0
       36 LENGTH                           R3 R1
       37 GETTABLE                         R2 R1 R3
       38 JUMPIFNOTEQKNIL                  R2 ; [+2]
       40 LOADB                            R4 0 +1
       41 LOADB                            R4 1
       42 FASTCALL2K                       ASSERT R4 K8 ; [+4]
       44 LOADK                            R5 K8 ["Anchored selection is empty, but we checked that"]
       45 GETIMPORT                        R3 K10 [assert]
       47 CALL                             R3 2 0
       48 JUMPIFNOTEQ                      R0 R2 ; [+2]
       50 RETURN                           R0 0
       51 GETUPVAL                         R4 3
       52 GETTABLEKS                       R3 R4 K11 ["getFocusedRootState"]
       54 CALL                             R3 0 1
       55 GETIMPORT                        R4 K13 [table.clone]
       57 MOVE                             R5 R1
       58 CALL                             R4 1 1
       59 GETTABLEKS                       R6 R3 K14 ["instanceIdsToNodes"]
       61 GETTABLE                         R5 R6 R2
       62 JUMPIFNOTEQKNIL                  R5 ; [+2]
       64 LOADB                            R7 0 +1
       65 LOADB                            R7 1
       66 FASTCALL2K                       ASSERT R7 K15 ; [+4]
       68 LOADK                            R8 K15 ["Couldn't find anchor node"]
       69 GETIMPORT                        R6 K10 [assert]
       71 CALL                             R6 2 0
       72 GETUPVAL                         R6 4
       73 MOVE                             R7 R5
       74 CALL                             R6 1 1
       75 JUMPIF                           R6 ; [+51]
       76 FASTCALL2                        TABLE_INSERT R4 R0 ; [+5]
       78 MOVE                             R7 R4
       79 MOVE                             R8 R0
       80 GETIMPORT                        R6 K17 [table.insert]
       82 CALL                             R6 2 0
       83 GETIMPORT                        R6 K6 [table.freeze]
       85 MOVE                             R7 R4
       86 CALL                             R6 1 0
       87 SETUPVAL                         R4 2
       88 SETUPVAL                         R4 0
       89 GETUPVAL                         R7 1
       90 GETTABLEKS                       R6 R7 K7 ["selectIds"]
       92 MOVE                             R7 R4
       93 CALL                             R6 1 0
       94 GETUPVAL                         R8 3
       95 GETTABLEKS                       R7 R8 K18 ["analyticsInterface"]
       97 GETTABLEKS                       R6 R7 K19 ["logCounter"]
       99 DUPTABLE                         R7 K25 [{"eventName", "backends", "throttlingPercentage", "description", "lastUpdated"}]
      100 LOADK                            R8 K26 ["LuaExplorerShiftClickWithCollapsedAnchor"]
      101 SETTABLEKS                       R8 R7 K20 ["eventName"]
      103 NEWTABLE                         R8 0 1
      105 LOADK                            R9 K27 ["RobloxTelemetryCounter"]
      106 SETLIST                          R8 R9 1 [1]
      108 SETTABLEKS                       R8 R7 K21 ["backends"]
      110 GETIMPORT                        R8 K29 [game]
      112 LOADK                            R10 K30 ["LuaExplorerShiftClickWithCollapsedAnchorThrottlingHundredthsPercent"]
      113 LOADN                            R11 16
      114 NAMECALL                         R8 R8 K31 ["DefineFastInt"]
      116 CALL                             R8 3 1
      117 SETTABLEKS                       R8 R7 K22 ["throttlingPercentage"]
      119 LOADK                            R8 K32 ["Fired when shift-clicking with a collapsed anchor"]
      120 SETTABLEKS                       R8 R7 K23 ["description"]
      122 LOADK                            R8 K33 ["2025-04-25"]
      123 SETTABLEKS                       R8 R7 K24 ["lastUpdated"]
      125 CALL                             R6 1 0
      126 RETURN                           R0 0
      127 GETTABLEKS                       R7 R3 K14 ["instanceIdsToNodes"]
      129 GETUPVAL                         R9 5
      130 GETTABLEKS                       R8 R9 K34 ["rootId"]
      132 GETTABLE                         R6 R7 R8
      133 JUMPIFNOTEQKNIL                  R6 ; [+2]
      135 LOADB                            R8 0 +1
      136 LOADB                            R8 1
      137 FASTCALL2K                       ASSERT R8 K35 ; [+4]
      139 LOADK                            R9 K35 ["Couldn't find root node"]
      140 GETIMPORT                        R7 K10 [assert]
      142 CALL                             R7 2 0
      143 GETTABLEKS                       R8 R3 K14 ["instanceIdsToNodes"]
      145 GETTABLE                         R7 R8 R0
      146 JUMPIFNOTEQKNIL                  R7 ; [+2]
      148 LOADB                            R9 0 +1
      149 LOADB                            R9 1
      150 FASTCALL2K                       ASSERT R9 K36 ; [+4]
      152 LOADK                            R10 K36 ["Couldn't find target node"]
      153 GETIMPORT                        R8 K10 [assert]
      155 CALL                             R8 2 0
      156 GETUPVAL                         R8 6
      157 MOVE                             R9 R5
      158 CALL                             R8 1 1
      159 GETUPVAL                         R9 6
      160 MOVE                             R10 R7
      161 CALL                             R9 1 1
      162 SUB                              R11 R9 R8
      163 FASTCALL1                        MATH_SIGN R11 ; [+2]
      164 GETIMPORT                        R10 K39 [math.sign]
      166 CALL                             R10 1 1
      167 JUMPIFNOTEQKN                    R10 K2 [0] ; [+2]
      169 LOADB                            R12 0 +1
      170 LOADB                            R12 1
      171 FASTCALL2K                       ASSERT R12 K40 ; [+4]
      173 LOADK                            R13 K40 ["direction == 0, which would imply target == anchor"]
      174 GETIMPORT                        R11 K10 [assert]
      176 CALL                             R11 2 0
      177 GETUPVAL                         R11 7
      178 MOVE                             R12 R5
      179 CALL                             R11 1 1
      180 GETUPVAL                         R13 8
      181 GETTABLEKS                       R12 R13 K41 ["isInstanceIdSearched"]
      183 MOVE                             R13 R0
      184 CALL                             R12 1 1
      185 JUMPIFNOT                        R12 ; [+5]
      186 GETUPVAL                         R13 8
      187 GETTABLEKS                       R12 R13 K41 ["isInstanceIdSearched"]
      189 MOVE                             R13 R2
      190 CALL                             R12 1 1
      191 NOT                              R13 R12
      192 JUMPIFNOT                        R13 ; [+7]
      193 GETUPVAL                         R14 7
      194 MOVE                             R15 R7
      195 CALL                             R14 1 1
      196 JUMPIFEQ                         R14 R11 ; [+2]
      198 LOADB                            R13 0 +1
      199 LOADB                            R13 1
      200 JUMPIFNOT                        R13 ; [+8]
      201 GETUPVAL                         R16 3
      202 GETTABLEKS                       R15 R16 K18 ["analyticsInterface"]
      204 GETTABLEKS                       R14 R15 K19 ["logCounter"]
      206 GETUPVAL                         R15 9
      207 CALL                             R14 1 0
      208 JUMP                             ; [+8]
      209 JUMPIF                           R12 ; [+7]
      210 GETUPVAL                         R16 3
      211 GETTABLEKS                       R15 R16 K18 ["analyticsInterface"]
      213 GETTABLEKS                       R14 R15 K19 ["logCounter"]
      215 GETUPVAL                         R15 10
      216 CALL                             R14 1 0
      217 ADD                              R16 R8 R10
      218 MOVE                             R14 R9
      219 MOVE                             R15 R10
      220 FORNPREP                         R14
      221 GETUPVAL                         R18 11
      222 GETTABLEKS                       R17 R18 K42 ["getNthDescendant"]
      224 GETTABLEKS                       R18 R6 K43 ["children"]
      226 MOVE                             R19 R16
      227 CALL                             R17 2 1
      228 JUMPIFNOTEQKNIL                  R17 ; [+2]
      230 LOADB                            R19 0 +1
      231 LOADB                            R19 1
      232 FASTCALL2K                       ASSERT R19 K44 ; [+4]
      234 LOADK                            R20 K44 ["Could not find node in between items"]
      235 GETIMPORT                        R18 K10 [assert]
      237 CALL                             R18 2 0
      238 JUMPIFNOT                        R12 ; [+10]
      239 GETUPVAL                         R19 8
      240 GETTABLEKS                       R18 R19 K41 ["isInstanceIdSearched"]
      242 GETTABLEKS                       R20 R17 K45 ["datum"]
      244 GETTABLEKS                       R19 R20 K46 ["id"]
      246 CALL                             R18 1 1
      247 JUMPIFNOT                        R18 ; [+17]
      248 JUMP                             ; [+6]
      249 JUMPIFNOT                        R13 ; [+5]
      250 GETUPVAL                         R18 7
      251 MOVE                             R19 R17
      252 CALL                             R18 1 1
      253 JUMPIFNOTEQ                      R18 R11 ; [+11]
      255 GETTABLEKS                       R21 R17 K45 ["datum"]
      257 GETTABLEKS                       R20 R21 K46 ["id"]
      259 FASTCALL2                        TABLE_INSERT R4 R20 ; [+4]
      261 MOVE                             R19 R4
      262 GETIMPORT                        R18 K17 [table.insert]
      264 CALL                             R18 2 0
      265 FORNLOOP                         R14
      266 GETIMPORT                        R14 K6 [table.freeze]
      268 MOVE                             R15 R4
      269 CALL                             R14 1 0
      270 SETUPVAL                         R4 2
      271 GETUPVAL                         R15 1
      272 GETTABLEKS                       R14 R15 K7 ["selectIds"]
      274 MOVE                             R15 R4
      275 CALL                             R14 1 0
      276 RETURN                           R0 0

PROTO_3:
        0 LOADNIL                          R3
        1 LOADNIL                          R4
        2 GETTABLEKS                       R6 R1 K0 ["selectedIdsArrayObservable"]
        4 GETTABLEKS                       R5 R6 K1 ["changedSignal"]
        6 NEWCLOSURE                       R7 P0
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          REF R4
        9 CAPTURE                          REF R3
       10 NAMECALL                         R5 R5 K2 ["Connect"]
       12 CALL                             R5 2 0
       13 NEWCLOSURE                       R5 P1
       14 CAPTURE                          REF R3
       15 CAPTURE                          VAL R1
       16 NEWCLOSURE                       R6 P2
       17 CAPTURE                          REF R3
       18 CAPTURE                          VAL R1
       19 CAPTURE                          REF R4
       20 CAPTURE                          VAL R0
       21 CAPTURE                          UPVAL U1
       22 CAPTURE                          UPVAL U2
       23 CAPTURE                          UPVAL U3
       24 CAPTURE                          UPVAL U4
       25 CAPTURE                          VAL R2
       26 CAPTURE                          UPVAL U5
       27 CAPTURE                          UPVAL U6
       28 CAPTURE                          UPVAL U7
       29 CLOSEUPVALS                      R3
       30 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["Analytics"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Util"]
       18 GETTABLEKS                       R3 R4 K9 ["Constants"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Util"]
       25 GETTABLEKS                       R4 R5 K10 ["ExplorerNodeChildrenMutable"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["RpcTypes"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R8 R0 K12 ["Networking"]
       37 GETTABLEKS                       R7 R8 K13 ["createSession"]
       39 GETTABLEKS                       R6 R7 K14 ["createSessionSearching"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R9 R0 K12 ["Networking"]
       46 GETTABLEKS                       R8 R9 K13 ["createSession"]
       48 GETTABLEKS                       R7 R8 K15 ["createSessionSelection"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R10 R0 K12 ["Networking"]
       55 GETTABLEKS                       R9 R10 K13 ["createSession"]
       57 GETTABLEKS                       R8 R9 K16 ["createSessionTypes"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R10 R0 K8 ["Util"]
       64 GETTABLEKS                       R9 R10 K17 ["getExplorerNodeDepth"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETTABLEKS                       R11 R0 K8 ["Util"]
       71 GETTABLEKS                       R10 R11 K18 ["getExplorerNodeIndex"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K5 [require]
       76 GETTABLEKS                       R12 R0 K8 ["Util"]
       78 GETTABLEKS                       R11 R12 K19 ["isNodeVisible"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K5 [require]
       83 GETTABLEKS                       R13 R0 K8 ["Util"]
       85 GETTABLEKS                       R12 R13 K20 ["shallowEqual"]
       87 CALL                             R11 1 1
       88 DUPTABLE                         R12 K26 [{"eventName", "backends", "throttlingPercentage", "description", "lastUpdated"}]
       89 LOADK                            R13 K27 ["LuaExplorerShiftClickSameDepth"]
       90 SETTABLEKS                       R13 R12 K21 ["eventName"]
       92 NEWTABLE                         R13 0 1
       94 LOADK                            R14 K28 ["RobloxTelemetryCounter"]
       95 SETLIST                          R13 R14 1 [1]
       97 SETTABLEKS                       R13 R12 K22 ["backends"]
       99 GETIMPORT                        R13 K30 [game]
      101 LOADK                            R15 K31 ["LuaExplorerShiftClickSameDepthThrottlingHundredthsPercent"]
      102 LOADN                            R16 16
      103 NAMECALL                         R13 R13 K32 ["DefineFastInt"]
      105 CALL                             R13 3 1
      106 SETTABLEKS                       R13 R12 K23 ["throttlingPercentage"]
      108 LOADK                            R13 K33 ["Fired when shift-clicking within the same depth level"]
      109 SETTABLEKS                       R13 R12 K24 ["description"]
      111 LOADK                            R13 K34 ["2025-04-25"]
      112 SETTABLEKS                       R13 R12 K25 ["lastUpdated"]
      114 DUPTABLE                         R13 K26 [{"eventName", "backends", "throttlingPercentage", "description", "lastUpdated"}]
      115 LOADK                            R14 K35 ["LuaExplorerShiftClickDifferentDepth"]
      116 SETTABLEKS                       R14 R13 K21 ["eventName"]
      118 NEWTABLE                         R14 0 1
      120 LOADK                            R15 K28 ["RobloxTelemetryCounter"]
      121 SETLIST                          R14 R15 1 [1]
      123 SETTABLEKS                       R14 R13 K22 ["backends"]
      125 GETIMPORT                        R14 K30 [game]
      127 LOADK                            R16 K36 ["LuaExplorerShiftClickDifferentDepthThrottlingHundredthsPercent"]
      128 LOADN                            R17 16
      129 NAMECALL                         R14 R14 K32 ["DefineFastInt"]
      131 CALL                             R14 3 1
      132 SETTABLEKS                       R14 R13 K23 ["throttlingPercentage"]
      134 LOADK                            R14 K37 ["Fired when shift-clicking within different depth levels"]
      135 SETTABLEKS                       R14 R13 K24 ["description"]
      137 LOADK                            R14 K34 ["2025-04-25"]
      138 SETTABLEKS                       R14 R13 K25 ["lastUpdated"]
      140 DUPCLOSURE                       R14 K38 [PROTO_3]
      141 CAPTURE                          VAL R11
      142 CAPTURE                          VAL R10
      143 CAPTURE                          VAL R2
      144 CAPTURE                          VAL R9
      145 CAPTURE                          VAL R8
      146 CAPTURE                          VAL R12
      147 CAPTURE                          VAL R13
      148 CAPTURE                          VAL R3
      149 RETURN                           R14 1
