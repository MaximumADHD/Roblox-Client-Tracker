PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["instanceOpener"]
        3 JUMPIFNOTEQKNIL                  R3 ; [+2]
        5 LOADB                            R2 0 +1
        6 LOADB                            R2 1
        7 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        9 LOADK                            R3 K1 ["Host requested openInstance without an opener"]
       10 GETIMPORT                        R1 K3 [assert]
       12 CALL                             R1 2 0
       13 GETUPVAL                         R1 0
       14 GETTABLEKS                       R1 R1 K0 ["instanceOpener"]
       16 GETTABLEKS                       R1 R1 K4 ["open"]
       18 GETUPVAL                         R2 1
       19 GETUPVAL                         R3 2
       20 MOVE                             R4 R0
       21 LOADK                            R5 K5 ["openInstance"]
       22 CALL                             R2 3 -1
       23 CALL                             R1 -1 0
       24 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETTABLEKS                       R3 R3 K0 ["streamingInterface"]
        5 MOVE                             R4 R0
        6 CALL                             R1 3 -1
        7 RETURN                           R1 -1

PROTO_2:
        0 GETIMPORT                        R0 K2 [table.clear]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K3 ["instancesToInstanceId"]
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K4 ["watchingInstanceConnections"]
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
       33 GETUPVAL                         R0 1
       34 GETTABLEKS                       R0 R0 K9 ["destroy"]
       36 CALL                             R0 0 0
       37 GETUPVAL                         R0 2
       38 GETTABLEKS                       R0 R0 K9 ["destroy"]
       40 CALL                             R0 0 0
       41 GETUPVAL                         R0 3
       42 GETTABLEKS                       R0 R0 K9 ["destroy"]
       44 CALL                             R0 0 0
       45 GETUPVAL                         R0 4
       46 JUMPIFEQKNIL                     R0 ; [+5]
       48 GETUPVAL                         R0 4
       49 GETTABLEKS                       R0 R0 K9 ["destroy"]
       51 CALL                             R0 0 0
       52 GETUPVAL                         R0 5
       53 GETTABLEKS                       R0 R0 K9 ["destroy"]
       55 CALL                             R0 0 0
       56 GETUPVAL                         R0 6
       57 GETTABLEKS                       R0 R0 K9 ["destroy"]
       59 CALL                             R0 0 0
       60 GETUPVAL                         R0 7
       61 JUMPIFNOT                        R0 ; [+4]
       62 GETUPVAL                         R0 7
       63 GETTABLEKS                       R0 R0 K9 ["destroy"]
       65 CALL                             R0 0 0
       66 GETUPVAL                         R0 8
       67 CALL                             R0 0 1
       68 JUMPIFNOT                        R0 ; [+7]
       69 GETUPVAL                         R0 9
       70 JUMPIFEQKNIL                     R0 ; [+5]
       72 GETUPVAL                         R0 9
       73 GETTABLEKS                       R0 R0 K9 ["destroy"]
       75 CALL                             R0 0 0
       76 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

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
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETUPVAL                         R1 1
        3 GETVARARGS                       R2 -1
        4 CALL                             R0 -1 -1
        5 RETURN                           R0 -1

PROTO_7:
        0 GETIMPORT                        R0 K1 [error]
        2 LOADK                            R1 K2 ["instancePickerSubmitInstance called with no instancePicker in config"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_8:
        0 GETIMPORT                        R0 K1 [error]
        2 LOADK                            R1 K2 ["requestStreamIn called with no streaming interface"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_9:
        0 MOVE                             R4 R3
        1 JUMPIF                           R4 ; [+2]
        2 NEWTABLE                         R4 0 0
        4 NEWTABLE                         R5 1 0
        6 GETUPVAL                         R6 0
        7 GETTABLEKS                       R6 R6 K0 ["rootId"]
        9 SETTABLE                         R0 R5 R6
       10 NEWTABLE                         R6 1 0
       12 GETUPVAL                         R7 0
       13 GETTABLEKS                       R7 R7 K0 ["rootId"]
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
       59 GETUPVAL                         R8 3
       60 GETTABLEKS                       R8 R8 K15 ["TelemetryServiceInterface"]
       62 SETTABLEKS                       R8 R7 K11 ["analytics"]
       64 GETTABLEKS                       R8 R4 K12 ["isServiceVisible"]
       66 SETTABLEKS                       R8 R7 K12 ["isServiceVisible"]
       68 GETTABLEKS                       R8 R4 K13 ["recordChanges"]
       70 JUMPIF                           R8 ; [+1]
       71 GETUPVAL                         R8 4
       72 SETTABLEKS                       R8 R7 K13 ["recordChanges"]
       74 DUPTABLE                         R8 K20 [{"insertObjectButton", "DEPRECATED_scriptOpening", "respondsToScriptClicks", "openableClassNames"}]
       75 GETTABLEKS                       R10 R4 K21 ["openInsertObjectMenuAsync"]
       77 JUMPIFNOTEQKNIL                  R10 ; [+2]
       79 LOADB                            R9 0 +1
       80 LOADB                            R9 1
       81 SETTABLEKS                       R9 R8 K16 ["insertObjectButton"]
       83 GETTABLEKS                       R10 R4 K22 ["DEPRECATED_openScript"]
       85 JUMPIFNOTEQKNIL                  R10 ; [+2]
       87 LOADB                            R9 0 +1
       88 LOADB                            R9 1
       89 SETTABLEKS                       R9 R8 K17 ["DEPRECATED_scriptOpening"]
       91 GETTABLEKS                       R10 R4 K23 ["clickScript"]
       93 JUMPIFNOTEQKNIL                  R10 ; [+2]
       95 LOADB                            R9 0 +1
       96 LOADB                            R9 1
       97 SETTABLEKS                       R9 R8 K18 ["respondsToScriptClicks"]
       99 GETTABLEKS                       R10 R4 K24 ["instanceOpener"]
      101 JUMPIFNOT                        R10 ; [+5]
      102 GETTABLEKS                       R9 R4 K24 ["instanceOpener"]
      104 GETTABLEKS                       R9 R9 K25 ["classNames"]
      106 JUMP                             ; [+2]
      107 NEWTABLE                         R9 0 0
      109 SETTABLEKS                       R9 R8 K19 ["openableClassNames"]
      111 GETUPVAL                         R9 5
      112 MOVE                             R10 R7
      113 MOVE                             R11 R2
      114 GETTABLEKS                       R13 R4 K27 ["enableOpenContextMenuDelayHack"]
      116 ORK                              R12 R13 K26 [False]
      117 CALL                             R9 3 1
      118 GETTABLEKS                       R11 R4 K12 ["isServiceVisible"]
      120 JUMPIFNOT                        R11 ; [+8]
      121 GETUPVAL                         R10 6
      122 MOVE                             R11 R7
      123 GETTABLEKS                       R12 R4 K12 ["isServiceVisible"]
      125 GETTABLEKS                       R13 R4 K28 ["listenForVisibilityChanges"]
      127 CALL                             R10 3 1
      128 JUMP                             ; [+1]
      129 LOADNIL                          R10
      130 GETUPVAL                         R11 7
      131 MOVE                             R12 R7
      132 GETTABLEKS                       R13 R4 K29 ["fieldsConfig"]
      134 CALL                             R11 2 1
      135 GETUPVAL                         R12 8
      136 MOVE                             R13 R7
      137 CALL                             R12 1 1
      138 JUMPIFNOT                        R4 ; [+9]
      139 GETTABLEKS                       R14 R4 K30 ["instancePicker"]
      141 JUMPIFNOT                        R14 ; [+6]
      142 GETUPVAL                         R13 9
      143 MOVE                             R14 R7
      144 GETTABLEKS                       R15 R4 K30 ["instancePicker"]
      146 CALL                             R13 2 1
      147 JUMP                             ; [+1]
      148 LOADNIL                          R13
      149 GETUPVAL                         R14 10
      150 MOVE                             R15 R7
      151 GETTABLEKS                       R16 R4 K21 ["openInsertObjectMenuAsync"]
      153 CALL                             R14 2 1
      154 GETUPVAL                         R15 11
      155 MOVE                             R16 R7
      156 MOVE                             R17 R4
      157 JUMPIFNOT                        R17 ; [+2]
      158 GETTABLEKS                       R17 R4 K22 ["DEPRECATED_openScript"]
      160 MOVE                             R18 R4
      161 JUMPIFNOT                        R18 ; [+2]
      162 GETTABLEKS                       R18 R4 K23 ["clickScript"]
      164 CALL                             R15 3 1
      165 NEWCLOSURE                       R16 P0
      166 CAPTURE                          VAL R4
      167 CAPTURE                          UPVAL U12
      168 CAPTURE                          VAL R7
      169 NEWCLOSURE                       R17 P1
      170 CAPTURE                          UPVAL U13
      171 CAPTURE                          VAL R7
      172 CAPTURE                          VAL R4
      173 GETUPVAL                         R18 14
      174 MOVE                             R19 R7
      175 MOVE                             R20 R4
      176 JUMPIFNOT                        R20 ; [+2]
      177 GETTABLEKS                       R20 R4 K31 ["flushSelectionChangedThisFrameSignal"]
      179 MOVE                             R21 R17
      180 MOVE                             R22 R4
      181 JUMPIFNOT                        R22 ; [+2]
      182 GETTABLEKS                       R22 R4 K32 ["DEBUG_dataModelType"]
      184 MOVE                             R23 R4
      185 JUMPIFNOT                        R23 ; [+2]
      186 GETTABLEKS                       R23 R4 K33 ["DEBUG_startTime"]
      188 CALL                             R18 5 1
      189 GETUPVAL                         R19 15
      190 MOVE                             R20 R7
      191 MOVE                             R21 R4
      192 JUMPIFNOT                        R21 ; [+2]
      193 GETTABLEKS                       R21 R4 K34 ["createSearchThrottler"]
      195 CALL                             R19 2 1
      196 GETUPVAL                         R21 16
      197 CALL                             R21 0 1
      198 JUMPIFNOT                        R21 ; [+9]
      199 GETTABLEKS                       R21 R4 K10 ["streamingInterface"]
      201 JUMPIFNOT                        R21 ; [+6]
      202 GETUPVAL                         R20 17
      203 MOVE                             R21 R7
      204 GETTABLEKS                       R22 R4 K10 ["streamingInterface"]
      206 CALL                             R20 2 1
      207 JUMP                             ; [+1]
      208 LOADNIL                          R20
      209 NEWCLOSURE                       R21 P2
      210 CAPTURE                          VAL R7
      211 CAPTURE                          VAL R9
      212 CAPTURE                          VAL R11
      213 CAPTURE                          VAL R12
      214 CAPTURE                          VAL R13
      215 CAPTURE                          VAL R18
      216 CAPTURE                          VAL R19
      217 CAPTURE                          VAL R10
      218 CAPTURE                          UPVAL U16
      219 CAPTURE                          VAL R20
      220 DUPTABLE                         R22 K58 [{"getCapabilitiesAsync", "expandAsync", "stopListening", "setSelection", "requestCurrentSelection", "renameInstance", "hostHovered", "openContextMenuAsync", "performContextMenuAction", "createFieldAsync", "deleteField", "viewInstancesAsync", "stopViewingInstances", "performFieldAction", "dropSelectionOntoAsync", "startSearchAsync", "continueSearchAsync", "stopSearching", "openInsertObjectMenuAsync", "DEPRECATED_openScript", "clickScript", "openInstance", "instancePickerSubmitInstance", "requestStreamIn", "getPlaceIdAsync", "getClockAsync"}]
      221 NEWCLOSURE                       R23 P3
      222 CAPTURE                          VAL R8
      223 SETTABLEKS                       R23 R22 K35 ["getCapabilitiesAsync"]
      225 SETTABLEKS                       R17 R22 K36 ["expandAsync"]
      227 NEWCLOSURE                       R23 P4
      228 CAPTURE                          UPVAL U18
      229 CAPTURE                          VAL R7
      230 SETTABLEKS                       R23 R22 K37 ["stopListening"]
      232 GETTABLEKS                       R23 R18 K38 ["setSelection"]
      234 SETTABLEKS                       R23 R22 K38 ["setSelection"]
      236 GETTABLEKS                       R23 R18 K59 ["sendCurrentSelection"]
      238 SETTABLEKS                       R23 R22 K39 ["requestCurrentSelection"]
      240 NEWCLOSURE                       R23 P5
      241 CAPTURE                          UPVAL U19
      242 CAPTURE                          VAL R7
      243 SETTABLEKS                       R23 R22 K40 ["renameInstance"]
      245 GETTABLEKS                       R23 R12 K41 ["hostHovered"]
      247 SETTABLEKS                       R23 R22 K41 ["hostHovered"]
      249 GETTABLEKS                       R23 R9 K42 ["openContextMenuAsync"]
      251 SETTABLEKS                       R23 R22 K42 ["openContextMenuAsync"]
      253 GETTABLEKS                       R23 R9 K43 ["performContextMenuAction"]
      255 SETTABLEKS                       R23 R22 K43 ["performContextMenuAction"]
      257 GETTABLEKS                       R23 R11 K44 ["createFieldAsync"]
      259 SETTABLEKS                       R23 R22 K44 ["createFieldAsync"]
      261 GETTABLEKS                       R23 R11 K45 ["deleteField"]
      263 SETTABLEKS                       R23 R22 K45 ["deleteField"]
      265 GETTABLEKS                       R23 R11 K46 ["viewInstancesAsync"]
      267 SETTABLEKS                       R23 R22 K46 ["viewInstancesAsync"]
      269 GETTABLEKS                       R23 R11 K47 ["stopViewingInstances"]
      271 SETTABLEKS                       R23 R22 K47 ["stopViewingInstances"]
      273 GETTABLEKS                       R23 R11 K48 ["performFieldAction"]
      275 SETTABLEKS                       R23 R22 K48 ["performFieldAction"]
      277 NEWCLOSURE                       R23 P6
      278 CAPTURE                          UPVAL U20
      279 CAPTURE                          VAL R7
      280 SETTABLEKS                       R23 R22 K49 ["dropSelectionOntoAsync"]
      282 GETTABLEKS                       R23 R19 K50 ["startSearchAsync"]
      284 SETTABLEKS                       R23 R22 K50 ["startSearchAsync"]
      286 GETTABLEKS                       R23 R19 K51 ["continueSearchAsync"]
      288 SETTABLEKS                       R23 R22 K51 ["continueSearchAsync"]
      290 GETTABLEKS                       R23 R19 K52 ["stopSearching"]
      292 SETTABLEKS                       R23 R22 K52 ["stopSearching"]
      294 SETTABLEKS                       R14 R22 K21 ["openInsertObjectMenuAsync"]
      296 GETTABLEKS                       R23 R15 K22 ["DEPRECATED_openScript"]
      298 SETTABLEKS                       R23 R22 K22 ["DEPRECATED_openScript"]
      300 GETTABLEKS                       R23 R15 K23 ["clickScript"]
      302 SETTABLEKS                       R23 R22 K23 ["clickScript"]
      304 SETTABLEKS                       R16 R22 K53 ["openInstance"]
      306 JUMPIFNOT                        R13 ; [+3]
      307 GETTABLEKS                       R23 R13 K54 ["instancePickerSubmitInstance"]
      309 JUMP                             ; [+1]
      310 DUPCLOSURE                       R23 K60 [PROTO_7]
      311 SETTABLEKS                       R23 R22 K54 ["instancePickerSubmitInstance"]
      313 GETTABLEKS                       R24 R4 K10 ["streamingInterface"]
      315 JUMPIFNOT                        R24 ; [+5]
      316 GETTABLEKS                       R23 R4 K10 ["streamingInterface"]
      318 GETTABLEKS                       R23 R23 K55 ["requestStreamIn"]
      320 JUMP                             ; [+1]
      321 DUPCLOSURE                       R23 K61 [PROTO_8]
      322 SETTABLEKS                       R23 R22 K55 ["requestStreamIn"]
      324 GETUPVAL                         R23 21
      325 SETTABLEKS                       R23 R22 K56 ["getPlaceIdAsync"]
      327 GETIMPORT                        R23 K64 [os.clock]
      329 SETTABLEKS                       R23 R22 K57 ["getClockAsync"]
      331 MOVE                             R23 R21
      332 RETURN                           R22 2

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
       23 GETTABLEKS                       R4 R0 K10 ["Fields"]
       25 GETTABLEKS                       R4 R4 K11 ["FieldTypes"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K12 ["Guest"]
       32 GETTABLEKS                       R5 R5 K13 ["InstanceGuestRPCInterface"]
       34 GETTABLEKS                       R5 R5 K14 ["InstanceGuestRPCInterfaceTypes"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K15 ["RpcTypes"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K6 ["Parent"]
       46 GETTABLEKS                       R7 R7 K16 ["Signal"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K12 ["Guest"]
       53 GETTABLEKS                       R8 R8 K13 ["InstanceGuestRPCInterface"]
       55 GETTABLEKS                       R8 R8 K17 ["Streaming"]
       57 GETTABLEKS                       R8 R8 K18 ["StreamingInterface"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R9 R0 K12 ["Guest"]
       64 GETTABLEKS                       R9 R9 K13 ["InstanceGuestRPCInterface"]
       66 GETTABLEKS                       R9 R9 K19 ["createGetInstanceId"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K5 [require]
       71 GETTABLEKS                       R10 R0 K12 ["Guest"]
       73 GETTABLEKS                       R10 R10 K13 ["InstanceGuestRPCInterface"]
       75 GETTABLEKS                       R10 R10 K8 ["Util"]
       77 GETTABLEKS                       R10 R10 K20 ["createGetInstanceIdDefault"]
       79 CALL                             R9 1 1
       80 GETIMPORT                        R10 K5 [require]
       82 GETTABLEKS                       R11 R0 K12 ["Guest"]
       84 GETTABLEKS                       R11 R11 K13 ["InstanceGuestRPCInterface"]
       86 GETTABLEKS                       R11 R11 K21 ["createGuestContextMenu"]
       88 CALL                             R10 1 1
       89 GETIMPORT                        R11 K5 [require]
       91 GETTABLEKS                       R12 R0 K12 ["Guest"]
       93 GETTABLEKS                       R12 R12 K13 ["InstanceGuestRPCInterface"]
       95 GETTABLEKS                       R12 R12 K22 ["createGuestFields"]
       97 CALL                             R11 1 1
       98 GETIMPORT                        R12 K5 [require]
      100 GETTABLEKS                       R13 R0 K12 ["Guest"]
      102 GETTABLEKS                       R13 R13 K13 ["InstanceGuestRPCInterface"]
      104 GETTABLEKS                       R13 R13 K23 ["createGuestHoverTracker"]
      106 CALL                             R12 1 1
      107 GETIMPORT                        R13 K5 [require]
      109 GETTABLEKS                       R14 R0 K12 ["Guest"]
      111 GETTABLEKS                       R14 R14 K13 ["InstanceGuestRPCInterface"]
      113 GETTABLEKS                       R14 R14 K24 ["createGuestInstancePicker"]
      115 CALL                             R13 1 1
      116 GETIMPORT                        R14 K5 [require]
      118 GETTABLEKS                       R15 R0 K12 ["Guest"]
      120 GETTABLEKS                       R15 R15 K13 ["InstanceGuestRPCInterface"]
      122 GETTABLEKS                       R15 R15 K25 ["createGuestOpenInsertObjectMenu"]
      124 CALL                             R14 1 1
      125 GETIMPORT                        R15 K5 [require]
      127 GETTABLEKS                       R16 R0 K12 ["Guest"]
      129 GETTABLEKS                       R16 R16 K13 ["InstanceGuestRPCInterface"]
      131 GETTABLEKS                       R16 R16 K26 ["createGuestScriptActions"]
      133 CALL                             R15 1 1
      134 GETIMPORT                        R16 K5 [require]
      136 GETTABLEKS                       R17 R0 K12 ["Guest"]
      138 GETTABLEKS                       R17 R17 K13 ["InstanceGuestRPCInterface"]
      140 GETTABLEKS                       R17 R17 K27 ["createGuestSearching"]
      142 CALL                             R16 1 1
      143 GETIMPORT                        R17 K5 [require]
      145 GETTABLEKS                       R18 R0 K12 ["Guest"]
      147 GETTABLEKS                       R18 R18 K13 ["InstanceGuestRPCInterface"]
      149 GETTABLEKS                       R18 R18 K28 ["createGuestSelectionService"]
      151 CALL                             R17 1 1
      152 GETIMPORT                        R18 K5 [require]
      154 GETTABLEKS                       R19 R0 K12 ["Guest"]
      156 GETTABLEKS                       R19 R19 K29 ["createGuestServiceVisibility"]
      158 CALL                             R18 1 1
      159 GETIMPORT                        R19 K5 [require]
      161 GETTABLEKS                       R20 R0 K12 ["Guest"]
      163 GETTABLEKS                       R20 R20 K13 ["InstanceGuestRPCInterface"]
      165 GETTABLEKS                       R20 R20 K17 ["Streaming"]
      167 GETTABLEKS                       R20 R20 K30 ["createGuestStreaming"]
      169 CALL                             R19 1 1
      170 GETIMPORT                        R20 K5 [require]
      172 GETTABLEKS                       R21 R0 K12 ["Guest"]
      174 GETTABLEKS                       R21 R21 K13 ["InstanceGuestRPCInterface"]
      176 GETTABLEKS                       R21 R21 K31 ["Methods"]
      178 GETTABLEKS                       R21 R21 K32 ["dropSelectionOntoAsync"]
      180 CALL                             R20 1 1
      181 GETIMPORT                        R21 K5 [require]
      183 GETTABLEKS                       R22 R0 K12 ["Guest"]
      185 GETTABLEKS                       R22 R22 K13 ["InstanceGuestRPCInterface"]
      187 GETTABLEKS                       R22 R22 K31 ["Methods"]
      189 GETTABLEKS                       R22 R22 K33 ["expandAsync"]
      191 CALL                             R21 1 1
      192 GETIMPORT                        R22 K5 [require]
      194 GETTABLEKS                       R23 R0 K34 ["Flags"]
      196 GETTABLEKS                       R23 R23 K35 ["getFFlagExplorerStreaming"]
      198 CALL                             R22 1 1
      199 GETIMPORT                        R23 K5 [require]
      201 GETTABLEKS                       R24 R0 K12 ["Guest"]
      203 GETTABLEKS                       R24 R24 K13 ["InstanceGuestRPCInterface"]
      205 GETTABLEKS                       R24 R24 K8 ["Util"]
      207 GETTABLEKS                       R24 R24 K36 ["getInstanceById"]
      209 CALL                             R23 1 1
      210 GETIMPORT                        R24 K5 [require]
      212 GETTABLEKS                       R25 R0 K12 ["Guest"]
      214 GETTABLEKS                       R25 R25 K13 ["InstanceGuestRPCInterface"]
      216 GETTABLEKS                       R25 R25 K31 ["Methods"]
      218 GETTABLEKS                       R25 R25 K37 ["getPlaceIdAsync"]
      220 CALL                             R24 1 1
      221 GETIMPORT                        R25 K5 [require]
      223 GETTABLEKS                       R26 R0 K12 ["Guest"]
      225 GETTABLEKS                       R26 R26 K13 ["InstanceGuestRPCInterface"]
      227 GETTABLEKS                       R26 R26 K8 ["Util"]
      229 GETTABLEKS                       R26 R26 K38 ["recordChangesThroughChangeHistoryService"]
      231 CALL                             R25 1 1
      232 GETIMPORT                        R26 K5 [require]
      234 GETTABLEKS                       R27 R0 K12 ["Guest"]
      236 GETTABLEKS                       R27 R27 K13 ["InstanceGuestRPCInterface"]
      238 GETTABLEKS                       R27 R27 K31 ["Methods"]
      240 GETTABLEKS                       R27 R27 K39 ["renameInstance"]
      242 CALL                             R26 1 1
      243 GETIMPORT                        R27 K5 [require]
      245 GETTABLEKS                       R28 R0 K12 ["Guest"]
      247 GETTABLEKS                       R28 R28 K13 ["InstanceGuestRPCInterface"]
      249 GETTABLEKS                       R28 R28 K31 ["Methods"]
      251 GETTABLEKS                       R28 R28 K40 ["stopListening"]
      253 CALL                             R27 1 1
      254 DUPCLOSURE                       R28 K41 [PROTO_9]
      255 CAPTURE                          VAL R2
      256 CAPTURE                          VAL R8
      257 CAPTURE                          VAL R9
      258 CAPTURE                          VAL R1
      259 CAPTURE                          VAL R25
      260 CAPTURE                          VAL R10
      261 CAPTURE                          VAL R18
      262 CAPTURE                          VAL R11
      263 CAPTURE                          VAL R12
      264 CAPTURE                          VAL R13
      265 CAPTURE                          VAL R14
      266 CAPTURE                          VAL R15
      267 CAPTURE                          VAL R23
      268 CAPTURE                          VAL R21
      269 CAPTURE                          VAL R17
      270 CAPTURE                          VAL R16
      271 CAPTURE                          VAL R22
      272 CAPTURE                          VAL R19
      273 CAPTURE                          VAL R27
      274 CAPTURE                          VAL R26
      275 CAPTURE                          VAL R20
      276 CAPTURE                          VAL R24
      277 RETURN                           R28 1
