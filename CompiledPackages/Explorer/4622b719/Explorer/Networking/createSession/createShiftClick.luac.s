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
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["selectedIdsArrayObservable"]
        5 GETTABLEKS                       R0 R0 K1 ["get"]
        7 CALL                             R0 0 1
        8 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+6]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["selectedIdsArrayObservable"]
        5 GETTABLEKS                       R1 R1 K1 ["get"]
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
       26 GETUPVAL                         R3 1
       27 GETTABLEKS                       R3 R3 K7 ["selectIds"]
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
       51 GETUPVAL                         R3 3
       52 GETTABLEKS                       R3 R3 K11 ["getFocusedRootState"]
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
       75 JUMPIF                           R6 ; [+42]
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
       89 GETUPVAL                         R6 1
       90 GETTABLEKS                       R6 R6 K7 ["selectIds"]
       92 MOVE                             R7 R4
       93 CALL                             R6 1 0
       94 GETUPVAL                         R6 3
       95 GETTABLEKS                       R6 R6 K18 ["analyticsInterface"]
       97 GETTABLEKS                       R6 R6 K19 ["logCounter"]
       99 DUPTABLE                         R7 K28 [{["eventName"] = "LuaExplorerShiftClickWithCollapsedAnchor", ["backends"], ["throttlingPercentage"], ["description"] = "Fired when shift-clicking with a collapsed anchor", ["lastUpdated"] = "2025-04-25"}]
      100 NEWTABLE                         R8 0 1
      102 LOADK                            R9 K29 ["RobloxTelemetryCounter"]
      103 SETLIST                          R8 R9 1 [1]
      105 SETTABLEKS                       R8 R7 K22 ["backends"]
      107 GETIMPORT                        R8 K31 [game]
      109 LOADK                            R10 K32 ["LuaExplorerShiftClickWithCollapsedAnchorThrottlingHundredthsPercent"]
      110 LOADN                            R11 10000
      111 NAMECALL                         R8 R8 K33 ["DefineFastInt"]
      113 CALL                             R8 3 1
      114 SETTABLEKS                       R8 R7 K23 ["throttlingPercentage"]
      116 CALL                             R6 1 0
      117 RETURN                           R0 0
      118 GETTABLEKS                       R7 R3 K14 ["instanceIdsToNodes"]
      120 GETUPVAL                         R8 5
      121 GETTABLEKS                       R8 R8 K34 ["rootId"]
      123 GETTABLE                         R6 R7 R8
      124 JUMPIFNOTEQKNIL                  R6 ; [+2]
      126 LOADB                            R8 0 +1
      127 LOADB                            R8 1
      128 FASTCALL2K                       ASSERT R8 K35 ; [+4]
      130 LOADK                            R9 K35 ["Couldn't find root node"]
      131 GETIMPORT                        R7 K10 [assert]
      133 CALL                             R7 2 0
      134 GETTABLEKS                       R8 R3 K14 ["instanceIdsToNodes"]
      136 GETTABLE                         R7 R8 R0
      137 JUMPIFNOTEQKNIL                  R7 ; [+2]
      139 LOADB                            R9 0 +1
      140 LOADB                            R9 1
      141 FASTCALL2K                       ASSERT R9 K36 ; [+4]
      143 LOADK                            R10 K36 ["Couldn't find target node"]
      144 GETIMPORT                        R8 K10 [assert]
      146 CALL                             R8 2 0
      147 GETUPVAL                         R8 6
      148 MOVE                             R9 R5
      149 CALL                             R8 1 1
      150 GETUPVAL                         R9 6
      151 MOVE                             R10 R7
      152 CALL                             R9 1 1
      153 SUB                              R11 R9 R8
      154 FASTCALL1                        MATH_SIGN R11 ; [+2]
      155 GETIMPORT                        R10 K39 [math.sign]
      157 CALL                             R10 1 1
      158 JUMPIFNOTEQKN                    R10 K2 [0] ; [+2]
      160 LOADB                            R12 0 +1
      161 LOADB                            R12 1
      162 FASTCALL2K                       ASSERT R12 K40 ; [+4]
      164 LOADK                            R13 K40 ["direction == 0, which would imply target == anchor"]
      165 GETIMPORT                        R11 K10 [assert]
      167 CALL                             R11 2 0
      168 GETUPVAL                         R11 7
      169 MOVE                             R12 R5
      170 CALL                             R11 1 1
      171 GETUPVAL                         R12 8
      172 GETTABLEKS                       R12 R12 K41 ["isInstanceIdSearched"]
      174 MOVE                             R13 R0
      175 CALL                             R12 1 1
      176 JUMPIFNOT                        R12 ; [+5]
      177 GETUPVAL                         R12 8
      178 GETTABLEKS                       R12 R12 K41 ["isInstanceIdSearched"]
      180 MOVE                             R13 R2
      181 CALL                             R12 1 1
      182 NOT                              R13 R12
      183 JUMPIFNOT                        R13 ; [+7]
      184 GETUPVAL                         R14 7
      185 MOVE                             R15 R7
      186 CALL                             R14 1 1
      187 JUMPIFEQ                         R14 R11 ; [+2]
      189 LOADB                            R13 0 +1
      190 LOADB                            R13 1
      191 JUMPIFNOT                        R13 ; [+8]
      192 GETUPVAL                         R14 3
      193 GETTABLEKS                       R14 R14 K18 ["analyticsInterface"]
      195 GETTABLEKS                       R14 R14 K19 ["logCounter"]
      197 GETUPVAL                         R15 9
      198 CALL                             R14 1 0
      199 JUMP                             ; [+8]
      200 JUMPIF                           R12 ; [+7]
      201 GETUPVAL                         R14 3
      202 GETTABLEKS                       R14 R14 K18 ["analyticsInterface"]
      204 GETTABLEKS                       R14 R14 K19 ["logCounter"]
      206 GETUPVAL                         R15 10
      207 CALL                             R14 1 0
      208 ADD                              R16 R8 R10
      209 MOVE                             R14 R9
      210 MOVE                             R15 R10
      211 FORNPREP                         R14
      212 GETUPVAL                         R17 11
      213 GETTABLEKS                       R17 R17 K42 ["getNthDescendant"]
      215 GETTABLEKS                       R18 R6 K43 ["children"]
      217 MOVE                             R19 R16
      218 CALL                             R17 2 1
      219 JUMPIFNOTEQKNIL                  R17 ; [+2]
      221 LOADB                            R19 0 +1
      222 LOADB                            R19 1
      223 FASTCALL2K                       ASSERT R19 K44 ; [+4]
      225 LOADK                            R20 K44 ["Could not find node in between items"]
      226 GETIMPORT                        R18 K10 [assert]
      228 CALL                             R18 2 0
      229 JUMPIFNOT                        R12 ; [+10]
      230 GETUPVAL                         R18 8
      231 GETTABLEKS                       R18 R18 K41 ["isInstanceIdSearched"]
      233 GETTABLEKS                       R19 R17 K45 ["datum"]
      235 GETTABLEKS                       R19 R19 K46 ["id"]
      237 CALL                             R18 1 1
      238 JUMPIFNOT                        R18 ; [+17]
      239 JUMP                             ; [+6]
      240 JUMPIFNOT                        R13 ; [+5]
      241 GETUPVAL                         R18 7
      242 MOVE                             R19 R17
      243 CALL                             R18 1 1
      244 JUMPIFNOTEQ                      R18 R11 ; [+11]
      246 GETTABLEKS                       R20 R17 K45 ["datum"]
      248 GETTABLEKS                       R20 R20 K46 ["id"]
      250 FASTCALL2                        TABLE_INSERT R4 R20 ; [+4]
      252 MOVE                             R19 R4
      253 GETIMPORT                        R18 K17 [table.insert]
      255 CALL                             R18 2 0
      256 FORNLOOP                         R14
      257 GETIMPORT                        R14 K6 [table.freeze]
      259 MOVE                             R15 R4
      260 CALL                             R14 1 0
      261 SETUPVAL                         R4 2
      262 GETUPVAL                         R14 1
      263 GETTABLEKS                       R14 R14 K7 ["selectIds"]
      265 MOVE                             R15 R4
      266 CALL                             R14 1 0
      267 RETURN                           R0 0

PROTO_3:
        0 LOADNIL                          R3
        1 LOADNIL                          R4
        2 GETTABLEKS                       R5 R1 K0 ["selectedIdsArrayObservable"]
        4 GETTABLEKS                       R5 R5 K1 ["changedSignal"]
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
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Analytics"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Util"]
       18 GETTABLEKS                       R3 R3 K9 ["Constants"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Util"]
       25 GETTABLEKS                       R4 R4 K10 ["ExplorerNodeChildrenMutable"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["RpcTypes"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K12 ["Networking"]
       37 GETTABLEKS                       R6 R6 K13 ["createSession"]
       39 GETTABLEKS                       R6 R6 K14 ["createSessionSearching"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K12 ["Networking"]
       46 GETTABLEKS                       R7 R7 K13 ["createSession"]
       48 GETTABLEKS                       R7 R7 K15 ["createSessionSelection"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K12 ["Networking"]
       55 GETTABLEKS                       R8 R8 K13 ["createSession"]
       57 GETTABLEKS                       R8 R8 K16 ["createSessionTypes"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R9 R0 K8 ["Util"]
       64 GETTABLEKS                       R9 R9 K17 ["getExplorerNodeDepth"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETTABLEKS                       R10 R0 K8 ["Util"]
       71 GETTABLEKS                       R10 R10 K18 ["getExplorerNodeIndex"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K5 [require]
       76 GETTABLEKS                       R11 R0 K8 ["Util"]
       78 GETTABLEKS                       R11 R11 K19 ["isNodeVisible"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K5 [require]
       83 GETTABLEKS                       R12 R0 K8 ["Util"]
       85 GETTABLEKS                       R12 R12 K20 ["shallowEqual"]
       87 CALL                             R11 1 1
       88 DUPTABLE                         R12 K29 [{["eventName"] = "LuaExplorerShiftClickSameDepth", ["backends"], ["throttlingPercentage"], ["description"] = "Fired when shift-clicking within the same depth level", ["lastUpdated"] = "2025-04-25"}]
       89 NEWTABLE                         R13 0 1
       91 LOADK                            R14 K30 ["RobloxTelemetryCounter"]
       92 SETLIST                          R13 R14 1 [1]
       94 SETTABLEKS                       R13 R12 K23 ["backends"]
       96 GETIMPORT                        R13 K32 [game]
       98 LOADK                            R15 K33 ["LuaExplorerShiftClickSameDepthThrottlingHundredthsPercent"]
       99 LOADN                            R16 10000
      100 NAMECALL                         R13 R13 K34 ["DefineFastInt"]
      102 CALL                             R13 3 1
      103 SETTABLEKS                       R13 R12 K24 ["throttlingPercentage"]
      105 DUPTABLE                         R13 K37 [{["eventName"] = "LuaExplorerShiftClickDifferentDepth", ["backends"], ["throttlingPercentage"], ["description"] = "Fired when shift-clicking within different depth levels", ["lastUpdated"] = "2025-04-25"}]
      106 NEWTABLE                         R14 0 1
      108 LOADK                            R15 K30 ["RobloxTelemetryCounter"]
      109 SETLIST                          R14 R15 1 [1]
      111 SETTABLEKS                       R14 R13 K23 ["backends"]
      113 GETIMPORT                        R14 K32 [game]
      115 LOADK                            R16 K38 ["LuaExplorerShiftClickDifferentDepthThrottlingHundredthsPercent"]
      116 LOADN                            R17 10000
      117 NAMECALL                         R14 R14 K34 ["DefineFastInt"]
      119 CALL                             R14 3 1
      120 SETTABLEKS                       R14 R13 K24 ["throttlingPercentage"]
      122 DUPCLOSURE                       R14 K39 [PROTO_3]
      123 CAPTURE                          VAL R11
      124 CAPTURE                          VAL R10
      125 CAPTURE                          VAL R2
      126 CAPTURE                          VAL R9
      127 CAPTURE                          VAL R8
      128 CAPTURE                          VAL R12
      129 CAPTURE                          VAL R13
      130 CAPTURE                          VAL R3
      131 RETURN                           R14 1
