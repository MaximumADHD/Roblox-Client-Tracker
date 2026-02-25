PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R4 2
        3 GETTABLEKS                       R3 R4 K0 ["streamingInterface"]
        5 MOVE                             R4 R0
        6 CALL                             R1 3 -1
        7 RETURN                           R1 -1

PROTO_1:
        0 GETIMPORT                        R0 K2 [table.clear]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K3 ["instancesToInstanceId"]
        5 CALL                             R0 1 0
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R0 R3 K4 ["watchingInstanceConnections"]
        9 LOADNIL                          R1
       10 LOADNIL                          R2
       11 FORGPREP                         R0
       12 JUMPIFNOTEQKNIL                  R4 ; [+2]
       14 LOADB                            R6 0 +1
       15 LOADB                            R6 1
       16 FASTCALL2K                       ASSERT R6 K5 ; [+4]
       18 LOADK                            R7 K5 ["Luau"]
       19 GETIMPORT                        R5 K7 [assert]
       21 CALL                             R5 2 0
       22 MOVE                             R5 R4
       23 LOADNIL                          R6
       24 LOADNIL                          R7
       25 FORGPREP                         R5
       26 NAMECALL                         R10 R9 K8 ["Disconnect"]
       28 CALL                             R10 1 0
       29 FORGLOOP                         R5 2 ; [-4]
       31 FORGLOOP                         R0 2 ; [-20]
       33 GETUPVAL                         R1 1
       34 GETTABLEKS                       R0 R1 K9 ["destroy"]
       36 CALL                             R0 0 0
       37 GETUPVAL                         R1 2
       38 GETTABLEKS                       R0 R1 K9 ["destroy"]
       40 CALL                             R0 0 0
       41 GETUPVAL                         R1 3
       42 GETTABLEKS                       R0 R1 K9 ["destroy"]
       44 CALL                             R0 0 0
       45 GETUPVAL                         R0 4
       46 JUMPIFEQKNIL                     R0 ; [+5]
       48 GETUPVAL                         R1 4
       49 GETTABLEKS                       R0 R1 K9 ["destroy"]
       51 CALL                             R0 0 0
       52 GETUPVAL                         R1 5
       53 GETTABLEKS                       R0 R1 K9 ["destroy"]
       55 CALL                             R0 0 0
       56 GETUPVAL                         R1 6
       57 GETTABLEKS                       R0 R1 K9 ["destroy"]
       59 CALL                             R0 0 0
       60 GETUPVAL                         R0 7
       61 JUMPIFNOT                        R0 ; [+4]
       62 GETUPVAL                         R1 7
       63 GETTABLEKS                       R0 R1 K9 ["destroy"]
       65 CALL                             R0 0 0
       66 GETUPVAL                         R0 8
       67 CALL                             R0 0 1
       68 JUMPIFNOT                        R0 ; [+7]
       69 GETUPVAL                         R0 9
       70 JUMPIFEQKNIL                     R0 ; [+5]
       72 GETUPVAL                         R1 9
       73 GETTABLEKS                       R0 R1 K9 ["destroy"]
       75 CALL                             R0 0 0
       76 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_3:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETUPVAL                         R1 1
        3 GETVARARGS                       R2 -1
        4 CALL                             R0 -1 -1
        5 RETURN                           R0 -1

PROTO_4:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETUPVAL                         R1 1
        3 GETVARARGS                       R2 -1
        4 CALL                             R0 -1 -1
        5 RETURN                           R0 -1

PROTO_5:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETUPVAL                         R1 1
        3 GETVARARGS                       R2 -1
        4 CALL                             R0 -1 -1
        5 RETURN                           R0 -1

PROTO_6:
        0 GETIMPORT                        R0 K1 [error]
        2 LOADK                            R1 K2 ["instancePickerSubmitInstance called with no instancePicker in config"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETIMPORT                        R0 K1 [error]
        2 LOADK                            R1 K2 ["requestStreamIn called with no streaming interface"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_8:
        0 MOVE                             R4 R3
        1 JUMPIF                           R4 ; [+2]
        2 NEWTABLE                         R4 0 0
        4 NEWTABLE                         R5 1 0
        6 GETUPVAL                         R7 0
        7 GETTABLEKS                       R6 R7 K0 ["rootId"]
        9 SETTABLE                         R0 R5 R6
       10 NEWTABLE                         R6 1 0
       12 GETUPVAL                         R8 0
       13 GETTABLEKS                       R7 R8 K0 ["rootId"]
       15 SETTABLE                         R7 R6 R0
       16 DUPTABLE                         R7 K14 [{"root", "hostRpcInterface", "instanceIdsToInstance", "instancesToInstanceId", "getInstanceId", "expandedInstances", "watchingInstanceConnections", "instancesInView", "trackingFields", "streamingInterface", "analytics", "isServiceVisible", "recordChanges"}]
       17 SETTABLEKS                       R0 R7 K1 ["root"]
       19 SETTABLEKS                       R1 R7 K2 ["hostRpcInterface"]
       21 SETTABLEKS                       R5 R7 K3 ["instanceIdsToInstance"]
       23 SETTABLEKS                       R6 R7 K4 ["instancesToInstanceId"]
       25 GETUPVAL                         R8 1
       26 GETTABLEKS                       R9 R4 K5 ["getInstanceId"]
       28 JUMPIF                           R9 ; [+2]
       29 GETUPVAL                         R9 2
       30 CALL                             R9 0 1
       31 MOVE                             R10 R5
       32 MOVE                             R11 R6
       33 CALL                             R8 3 1
       34 SETTABLEKS                       R8 R7 K5 ["getInstanceId"]
       36 NEWTABLE                         R8 0 0
       38 SETTABLEKS                       R8 R7 K6 ["expandedInstances"]
       40 NEWTABLE                         R8 0 0
       42 SETTABLEKS                       R8 R7 K7 ["watchingInstanceConnections"]
       44 NEWTABLE                         R8 0 0
       46 SETTABLEKS                       R8 R7 K8 ["instancesInView"]
       48 NEWTABLE                         R8 0 0
       50 SETTABLEKS                       R8 R7 K9 ["trackingFields"]
       52 GETTABLEKS                       R8 R4 K10 ["streamingInterface"]
       54 SETTABLEKS                       R8 R7 K10 ["streamingInterface"]
       56 GETTABLEKS                       R8 R4 K11 ["analytics"]
       58 JUMPIF                           R8 ; [+3]
       59 GETUPVAL                         R9 3
       60 GETTABLEKS                       R8 R9 K15 ["TelemetryServiceInterface"]
       62 SETTABLEKS                       R8 R7 K11 ["analytics"]
       64 GETTABLEKS                       R8 R4 K12 ["isServiceVisible"]
       66 SETTABLEKS                       R8 R7 K12 ["isServiceVisible"]
       68 GETTABLEKS                       R8 R4 K13 ["recordChanges"]
       70 JUMPIF                           R8 ; [+1]
       71 GETUPVAL                         R8 4
       72 SETTABLEKS                       R8 R7 K13 ["recordChanges"]
       74 DUPTABLE                         R8 K19 [{"insertObjectButton", "scriptOpening", "respondsToScriptClicks"}]
       75 GETTABLEKS                       R10 R4 K20 ["openInsertObjectMenuAsync"]
       77 JUMPIFNOTEQKNIL                  R10 ; [+2]
       79 LOADB                            R9 0 +1
       80 LOADB                            R9 1
       81 SETTABLEKS                       R9 R8 K16 ["insertObjectButton"]
       83 GETTABLEKS                       R10 R4 K21 ["openScript"]
       85 JUMPIFNOTEQKNIL                  R10 ; [+2]
       87 LOADB                            R9 0 +1
       88 LOADB                            R9 1
       89 SETTABLEKS                       R9 R8 K17 ["scriptOpening"]
       91 GETTABLEKS                       R10 R4 K22 ["clickScript"]
       93 JUMPIFNOTEQKNIL                  R10 ; [+2]
       95 LOADB                            R9 0 +1
       96 LOADB                            R9 1
       97 SETTABLEKS                       R9 R8 K18 ["respondsToScriptClicks"]
       99 GETUPVAL                         R9 5
      100 MOVE                             R10 R7
      101 MOVE                             R11 R2
      102 GETTABLEKS                       R13 R4 K24 ["enableOpenContextMenuDelayHack"]
      104 ORK                              R12 R13 K23 [False]
      105 CALL                             R9 3 1
      106 GETTABLEKS                       R11 R4 K12 ["isServiceVisible"]
      108 JUMPIFNOT                        R11 ; [+8]
      109 GETUPVAL                         R10 6
      110 MOVE                             R11 R7
      111 GETTABLEKS                       R12 R4 K12 ["isServiceVisible"]
      113 GETTABLEKS                       R13 R4 K25 ["listenForVisibilityChanges"]
      115 CALL                             R10 3 1
      116 JUMP                             ; [+1]
      117 LOADNIL                          R10
      118 GETUPVAL                         R11 7
      119 MOVE                             R12 R7
      120 GETTABLEKS                       R13 R4 K26 ["fieldsConfig"]
      122 CALL                             R11 2 1
      123 GETUPVAL                         R12 8
      124 MOVE                             R13 R7
      125 CALL                             R12 1 1
      126 JUMPIFNOT                        R4 ; [+9]
      127 GETTABLEKS                       R14 R4 K27 ["instancePicker"]
      129 JUMPIFNOT                        R14 ; [+6]
      130 GETUPVAL                         R13 9
      131 MOVE                             R14 R7
      132 GETTABLEKS                       R15 R4 K27 ["instancePicker"]
      134 CALL                             R13 2 1
      135 JUMP                             ; [+1]
      136 LOADNIL                          R13
      137 GETUPVAL                         R14 10
      138 MOVE                             R15 R7
      139 GETTABLEKS                       R16 R4 K20 ["openInsertObjectMenuAsync"]
      141 CALL                             R14 2 1
      142 GETUPVAL                         R15 11
      143 MOVE                             R16 R7
      144 MOVE                             R17 R4
      145 JUMPIFNOT                        R17 ; [+2]
      146 GETTABLEKS                       R17 R4 K21 ["openScript"]
      148 MOVE                             R18 R4
      149 JUMPIFNOT                        R18 ; [+2]
      150 GETTABLEKS                       R18 R4 K22 ["clickScript"]
      152 CALL                             R15 3 1
      153 NEWCLOSURE                       R16 P0
      154 CAPTURE                          UPVAL U12
      155 CAPTURE                          VAL R7
      156 CAPTURE                          VAL R4
      157 GETUPVAL                         R17 13
      158 MOVE                             R18 R7
      159 MOVE                             R19 R4
      160 JUMPIFNOT                        R19 ; [+2]
      161 GETTABLEKS                       R19 R4 K28 ["flushSelectionChangedThisFrameSignal"]
      163 MOVE                             R20 R16
      164 MOVE                             R21 R4
      165 JUMPIFNOT                        R21 ; [+2]
      166 GETTABLEKS                       R21 R4 K29 ["DEBUG_dataModelType"]
      168 MOVE                             R22 R4
      169 JUMPIFNOT                        R22 ; [+2]
      170 GETTABLEKS                       R22 R4 K30 ["DEBUG_startTime"]
      172 CALL                             R17 5 1
      173 GETUPVAL                         R18 14
      174 MOVE                             R19 R7
      175 MOVE                             R20 R4
      176 JUMPIFNOT                        R20 ; [+2]
      177 GETTABLEKS                       R20 R4 K31 ["createSearchThrottler"]
      179 CALL                             R18 2 1
      180 GETUPVAL                         R20 15
      181 CALL                             R20 0 1
      182 JUMPIFNOT                        R20 ; [+9]
      183 GETTABLEKS                       R20 R4 K10 ["streamingInterface"]
      185 JUMPIFNOT                        R20 ; [+6]
      186 GETUPVAL                         R19 16
      187 MOVE                             R20 R7
      188 GETTABLEKS                       R21 R4 K10 ["streamingInterface"]
      190 CALL                             R19 2 1
      191 JUMP                             ; [+1]
      192 LOADNIL                          R19
      193 NEWCLOSURE                       R20 P1
      194 CAPTURE                          VAL R7
      195 CAPTURE                          VAL R9
      196 CAPTURE                          VAL R11
      197 CAPTURE                          VAL R12
      198 CAPTURE                          VAL R13
      199 CAPTURE                          VAL R17
      200 CAPTURE                          VAL R18
      201 CAPTURE                          VAL R10
      202 CAPTURE                          UPVAL U15
      203 CAPTURE                          VAL R19
      204 DUPTABLE                         R21 K54 [{"getCapabilitiesAsync", "expandAsync", "stopListening", "setSelection", "requestCurrentSelection", "renameInstance", "hostHovered", "openContextMenuAsync", "performContextMenuAction", "createFieldAsync", "deleteField", "viewInstancesAsync", "stopViewingInstances", "performFieldAction", "dropSelectionOntoAsync", "startSearchAsync", "continueSearchAsync", "stopSearching", "openInsertObjectMenuAsync", "openScript", "clickScript", "instancePickerSubmitInstance", "requestStreamIn", "getPlaceIdAsync", "getClockAsync"}]
      205 NEWCLOSURE                       R22 P2
      206 CAPTURE                          VAL R8
      207 SETTABLEKS                       R22 R21 K32 ["getCapabilitiesAsync"]
      209 SETTABLEKS                       R16 R21 K33 ["expandAsync"]
      211 NEWCLOSURE                       R22 P3
      212 CAPTURE                          UPVAL U17
      213 CAPTURE                          VAL R7
      214 SETTABLEKS                       R22 R21 K34 ["stopListening"]
      216 GETTABLEKS                       R22 R17 K35 ["setSelection"]
      218 SETTABLEKS                       R22 R21 K35 ["setSelection"]
      220 GETTABLEKS                       R22 R17 K55 ["sendCurrentSelection"]
      222 SETTABLEKS                       R22 R21 K36 ["requestCurrentSelection"]
      224 NEWCLOSURE                       R22 P4
      225 CAPTURE                          UPVAL U18
      226 CAPTURE                          VAL R7
      227 SETTABLEKS                       R22 R21 K37 ["renameInstance"]
      229 GETTABLEKS                       R22 R12 K38 ["hostHovered"]
      231 SETTABLEKS                       R22 R21 K38 ["hostHovered"]
      233 GETTABLEKS                       R22 R9 K39 ["openContextMenuAsync"]
      235 SETTABLEKS                       R22 R21 K39 ["openContextMenuAsync"]
      237 GETTABLEKS                       R22 R9 K40 ["performContextMenuAction"]
      239 SETTABLEKS                       R22 R21 K40 ["performContextMenuAction"]
      241 GETTABLEKS                       R22 R11 K41 ["createFieldAsync"]
      243 SETTABLEKS                       R22 R21 K41 ["createFieldAsync"]
      245 GETTABLEKS                       R22 R11 K42 ["deleteField"]
      247 SETTABLEKS                       R22 R21 K42 ["deleteField"]
      249 GETTABLEKS                       R22 R11 K43 ["viewInstancesAsync"]
      251 SETTABLEKS                       R22 R21 K43 ["viewInstancesAsync"]
      253 GETTABLEKS                       R22 R11 K44 ["stopViewingInstances"]
      255 SETTABLEKS                       R22 R21 K44 ["stopViewingInstances"]
      257 GETTABLEKS                       R22 R11 K45 ["performFieldAction"]
      259 SETTABLEKS                       R22 R21 K45 ["performFieldAction"]
      261 NEWCLOSURE                       R22 P5
      262 CAPTURE                          UPVAL U19
      263 CAPTURE                          VAL R7
      264 SETTABLEKS                       R22 R21 K46 ["dropSelectionOntoAsync"]
      266 GETTABLEKS                       R22 R18 K47 ["startSearchAsync"]
      268 SETTABLEKS                       R22 R21 K47 ["startSearchAsync"]
      270 GETTABLEKS                       R22 R18 K48 ["continueSearchAsync"]
      272 SETTABLEKS                       R22 R21 K48 ["continueSearchAsync"]
      274 GETTABLEKS                       R22 R18 K49 ["stopSearching"]
      276 SETTABLEKS                       R22 R21 K49 ["stopSearching"]
      278 SETTABLEKS                       R14 R21 K20 ["openInsertObjectMenuAsync"]
      280 GETTABLEKS                       R22 R15 K21 ["openScript"]
      282 SETTABLEKS                       R22 R21 K21 ["openScript"]
      284 GETTABLEKS                       R22 R15 K22 ["clickScript"]
      286 SETTABLEKS                       R22 R21 K22 ["clickScript"]
      288 JUMPIFNOT                        R13 ; [+3]
      289 GETTABLEKS                       R22 R13 K50 ["instancePickerSubmitInstance"]
      291 JUMP                             ; [+1]
      292 DUPCLOSURE                       R22 K56 [PROTO_6]
      293 SETTABLEKS                       R22 R21 K50 ["instancePickerSubmitInstance"]
      295 GETTABLEKS                       R23 R4 K10 ["streamingInterface"]
      297 JUMPIFNOT                        R23 ; [+5]
      298 GETTABLEKS                       R23 R4 K10 ["streamingInterface"]
      300 GETTABLEKS                       R22 R23 K51 ["requestStreamIn"]
      302 JUMP                             ; [+1]
      303 DUPCLOSURE                       R22 K57 [PROTO_7]
      304 SETTABLEKS                       R22 R21 K51 ["requestStreamIn"]
      306 GETUPVAL                         R22 20
      307 SETTABLEKS                       R22 R21 K52 ["getPlaceIdAsync"]
      309 GETIMPORT                        R22 K60 [os.clock]
      311 SETTABLEKS                       R22 R21 K53 ["getClockAsync"]
      313 MOVE                             R22 R20
      314 RETURN                           R21 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Analytics"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R4 R0 K7 ["Util"]
       16 GETTABLEKS                       R3 R4 K8 ["Constants"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Fields"]
       23 GETTABLEKS                       R4 R5 K10 ["FieldTypes"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R7 R0 K11 ["Guest"]
       30 GETTABLEKS                       R6 R7 K12 ["InstanceGuestRPCInterface"]
       32 GETTABLEKS                       R5 R6 K13 ["InstanceGuestRPCInterfaceTypes"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K14 ["RpcTypes"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R8 R0 K15 ["Parent"]
       44 GETTABLEKS                       R7 R8 K16 ["Signal"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R11 R0 K11 ["Guest"]
       51 GETTABLEKS                       R10 R11 K12 ["InstanceGuestRPCInterface"]
       53 GETTABLEKS                       R9 R10 K17 ["Streaming"]
       55 GETTABLEKS                       R8 R9 K18 ["StreamingInterface"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R11 R0 K11 ["Guest"]
       62 GETTABLEKS                       R10 R11 K12 ["InstanceGuestRPCInterface"]
       64 GETTABLEKS                       R9 R10 K19 ["createGetInstanceId"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETTABLEKS                       R13 R0 K11 ["Guest"]
       71 GETTABLEKS                       R12 R13 K12 ["InstanceGuestRPCInterface"]
       73 GETTABLEKS                       R11 R12 K7 ["Util"]
       75 GETTABLEKS                       R10 R11 K20 ["createGetInstanceIdDefault"]
       77 CALL                             R9 1 1
       78 GETIMPORT                        R10 K5 [require]
       80 GETTABLEKS                       R13 R0 K11 ["Guest"]
       82 GETTABLEKS                       R12 R13 K12 ["InstanceGuestRPCInterface"]
       84 GETTABLEKS                       R11 R12 K21 ["createGuestContextMenu"]
       86 CALL                             R10 1 1
       87 GETIMPORT                        R11 K5 [require]
       89 GETTABLEKS                       R14 R0 K11 ["Guest"]
       91 GETTABLEKS                       R13 R14 K12 ["InstanceGuestRPCInterface"]
       93 GETTABLEKS                       R12 R13 K22 ["createGuestFields"]
       95 CALL                             R11 1 1
       96 GETIMPORT                        R12 K5 [require]
       98 GETTABLEKS                       R15 R0 K11 ["Guest"]
      100 GETTABLEKS                       R14 R15 K12 ["InstanceGuestRPCInterface"]
      102 GETTABLEKS                       R13 R14 K23 ["createGuestHoverTracker"]
      104 CALL                             R12 1 1
      105 GETIMPORT                        R13 K5 [require]
      107 GETTABLEKS                       R16 R0 K11 ["Guest"]
      109 GETTABLEKS                       R15 R16 K12 ["InstanceGuestRPCInterface"]
      111 GETTABLEKS                       R14 R15 K24 ["createGuestInstancePicker"]
      113 CALL                             R13 1 1
      114 GETIMPORT                        R14 K5 [require]
      116 GETTABLEKS                       R17 R0 K11 ["Guest"]
      118 GETTABLEKS                       R16 R17 K12 ["InstanceGuestRPCInterface"]
      120 GETTABLEKS                       R15 R16 K25 ["createGuestOpenInsertObjectMenu"]
      122 CALL                             R14 1 1
      123 GETIMPORT                        R15 K5 [require]
      125 GETTABLEKS                       R18 R0 K11 ["Guest"]
      127 GETTABLEKS                       R17 R18 K12 ["InstanceGuestRPCInterface"]
      129 GETTABLEKS                       R16 R17 K26 ["createGuestScriptActions"]
      131 CALL                             R15 1 1
      132 GETIMPORT                        R16 K5 [require]
      134 GETTABLEKS                       R19 R0 K11 ["Guest"]
      136 GETTABLEKS                       R18 R19 K12 ["InstanceGuestRPCInterface"]
      138 GETTABLEKS                       R17 R18 K27 ["createGuestSearching"]
      140 CALL                             R16 1 1
      141 GETIMPORT                        R17 K5 [require]
      143 GETTABLEKS                       R20 R0 K11 ["Guest"]
      145 GETTABLEKS                       R19 R20 K12 ["InstanceGuestRPCInterface"]
      147 GETTABLEKS                       R18 R19 K28 ["createGuestSelectionService"]
      149 CALL                             R17 1 1
      150 GETIMPORT                        R18 K5 [require]
      152 GETTABLEKS                       R20 R0 K11 ["Guest"]
      154 GETTABLEKS                       R19 R20 K29 ["createGuestServiceVisibility"]
      156 CALL                             R18 1 1
      157 GETIMPORT                        R19 K5 [require]
      159 GETTABLEKS                       R23 R0 K11 ["Guest"]
      161 GETTABLEKS                       R22 R23 K12 ["InstanceGuestRPCInterface"]
      163 GETTABLEKS                       R21 R22 K17 ["Streaming"]
      165 GETTABLEKS                       R20 R21 K30 ["createGuestStreaming"]
      167 CALL                             R19 1 1
      168 GETIMPORT                        R20 K5 [require]
      170 GETTABLEKS                       R24 R0 K11 ["Guest"]
      172 GETTABLEKS                       R23 R24 K12 ["InstanceGuestRPCInterface"]
      174 GETTABLEKS                       R22 R23 K31 ["Methods"]
      176 GETTABLEKS                       R21 R22 K32 ["dropSelectionOntoAsync"]
      178 CALL                             R20 1 1
      179 GETIMPORT                        R21 K5 [require]
      181 GETTABLEKS                       R25 R0 K11 ["Guest"]
      183 GETTABLEKS                       R24 R25 K12 ["InstanceGuestRPCInterface"]
      185 GETTABLEKS                       R23 R24 K31 ["Methods"]
      187 GETTABLEKS                       R22 R23 K33 ["expandAsync"]
      189 CALL                             R21 1 1
      190 GETIMPORT                        R22 K5 [require]
      192 GETTABLEKS                       R24 R0 K34 ["Flags"]
      194 GETTABLEKS                       R23 R24 K35 ["getFFlagExplorerStreaming"]
      196 CALL                             R22 1 1
      197 GETIMPORT                        R23 K5 [require]
      199 GETTABLEKS                       R27 R0 K11 ["Guest"]
      201 GETTABLEKS                       R26 R27 K12 ["InstanceGuestRPCInterface"]
      203 GETTABLEKS                       R25 R26 K31 ["Methods"]
      205 GETTABLEKS                       R24 R25 K36 ["getPlaceIdAsync"]
      207 CALL                             R23 1 1
      208 GETIMPORT                        R24 K5 [require]
      210 GETTABLEKS                       R28 R0 K11 ["Guest"]
      212 GETTABLEKS                       R27 R28 K12 ["InstanceGuestRPCInterface"]
      214 GETTABLEKS                       R26 R27 K7 ["Util"]
      216 GETTABLEKS                       R25 R26 K37 ["recordChangesThroughChangeHistoryService"]
      218 CALL                             R24 1 1
      219 GETIMPORT                        R25 K5 [require]
      221 GETTABLEKS                       R29 R0 K11 ["Guest"]
      223 GETTABLEKS                       R28 R29 K12 ["InstanceGuestRPCInterface"]
      225 GETTABLEKS                       R27 R28 K31 ["Methods"]
      227 GETTABLEKS                       R26 R27 K38 ["renameInstance"]
      229 CALL                             R25 1 1
      230 GETIMPORT                        R26 K5 [require]
      232 GETTABLEKS                       R30 R0 K11 ["Guest"]
      234 GETTABLEKS                       R29 R30 K12 ["InstanceGuestRPCInterface"]
      236 GETTABLEKS                       R28 R29 K31 ["Methods"]
      238 GETTABLEKS                       R27 R28 K39 ["stopListening"]
      240 CALL                             R26 1 1
      241 DUPCLOSURE                       R27 K40 [PROTO_8]
      242 CAPTURE                          VAL R2
      243 CAPTURE                          VAL R8
      244 CAPTURE                          VAL R9
      245 CAPTURE                          VAL R1
      246 CAPTURE                          VAL R24
      247 CAPTURE                          VAL R10
      248 CAPTURE                          VAL R18
      249 CAPTURE                          VAL R11
      250 CAPTURE                          VAL R12
      251 CAPTURE                          VAL R13
      252 CAPTURE                          VAL R14
      253 CAPTURE                          VAL R15
      254 CAPTURE                          VAL R21
      255 CAPTURE                          VAL R17
      256 CAPTURE                          VAL R16
      257 CAPTURE                          VAL R22
      258 CAPTURE                          VAL R19
      259 CAPTURE                          VAL R26
      260 CAPTURE                          VAL R25
      261 CAPTURE                          VAL R20
      262 CAPTURE                          VAL R23
      263 RETURN                           R27 1
