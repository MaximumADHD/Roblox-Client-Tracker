PROTO_0:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 JUMPIFNOT                        R1 ; [+6]
        3 GETIMPORT                        R1 K1 [print]
        5 LOADK                            R2 K2 ["Store"]
        6 MOVE                             R3 R0
        7 GETVARARGS                       R4 -1
        8 CALL                             R1 -1 0
        9 RETURN                           R0 0

PROTO_1:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETVARARGS                       R2 -1
        3 NAMECALL                         R0 R0 K0 ["_onBridgeOperations"]
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_2:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETVARARGS                       R2 -1
        3 NAMECALL                         R0 R0 K0 ["_onBridgeOverrideComponentFilters"]
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_3:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETVARARGS                       R2 -1
        3 NAMECALL                         R0 R0 K0 ["_onBridgeShutdown"]
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_4:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETVARARGS                       R2 -1
        3 NAMECALL                         R0 R0 K0 ["_onBridgeStorageSupported"]
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_5:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETVARARGS                       R2 -1
        3 NAMECALL                         R0 R0 K0 ["_onBridgeNativeStyleEditorSupported"]
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_6:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETVARARGS                       R2 -1
        3 NAMECALL                         R0 R0 K0 ["_onBridgeUnsupportedRendererVersion"]
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["new"]
        3 CALL                             R3 0 1
        4 GETUPVAL                         R4 1
        5 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
        7 GETIMPORT                        R2 K2 [setmetatable]
        9 CALL                             R2 2 1
       10 MOVE                             R3 R1
       11 JUMPIF                           R3 ; [+2]
       12 NEWTABLE                         R3 0 0
       14 MOVE                             R1 R3
       15 SETTABLEKS                       R0 R2 K3 ["_bridge"]
       17 LOADB                            R3 1
       18 SETTABLEKS                       R3 R2 K4 ["_collapseNodesByDefault"]
       20 NEWTABLE                         R3 0 0
       22 SETTABLEKS                       R3 R2 K5 ["_componentFilters"]
       24 LOADB                            R3 0
       25 SETTABLEKS                       R3 R2 K6 ["_hasOwnerMetadata"]
       27 GETUPVAL                         R3 2
       28 GETTABLEKS                       R3 R3 K0 ["new"]
       30 CALL                             R3 0 1
       31 SETTABLEKS                       R3 R2 K7 ["_idToElement"]
       33 LOADB                            R3 0
       34 SETTABLEKS                       R3 R2 K8 ["_isNativeStyleEditorSupported"]
       36 LOADB                            R3 0
       37 SETTABLEKS                       R3 R2 K9 ["_isBackendStorageAPISupported"]
       39 LOADNIL                          R3
       40 SETTABLEKS                       R3 R2 K10 ["_nativeStyleEditorValidAttributes"]
       42 GETUPVAL                         R3 2
       43 GETTABLEKS                       R3 R3 K0 ["new"]
       45 CALL                             R3 0 1
       46 SETTABLEKS                       R3 R2 K11 ["_ownersMap"]
       48 LOADB                            R3 0
       49 SETTABLEKS                       R3 R2 K12 ["_recordChangeDescriptions"]
       51 LOADN                            R3 0
       52 SETTABLEKS                       R3 R2 K13 ["_revision"]
       54 NEWTABLE                         R3 0 0
       56 SETTABLEKS                       R3 R2 K14 ["_roots"]
       58 GETUPVAL                         R3 2
       59 GETTABLEKS                       R3 R3 K0 ["new"]
       61 CALL                             R3 0 1
       62 SETTABLEKS                       R3 R2 K15 ["_rootIDToCapabilities"]
       64 GETUPVAL                         R3 2
       65 GETTABLEKS                       R3 R3 K0 ["new"]
       67 CALL                             R3 0 1
       68 SETTABLEKS                       R3 R2 K16 ["_rootIDToRendererID"]
       70 LOADB                            R3 1
       71 SETTABLEKS                       R3 R2 K17 ["_supportsNativeInspection"]
       73 LOADB                            R3 0
       74 SETTABLEKS                       R3 R2 K18 ["_supportsProfiling"]
       76 LOADB                            R3 0
       77 SETTABLEKS                       R3 R2 K19 ["_supportsReloadAndProfile"]
       79 LOADB                            R3 0
       80 SETTABLEKS                       R3 R2 K20 ["_supportsTraceUpdates"]
       82 LOADB                            R3 0
       83 SETTABLEKS                       R3 R2 K21 ["_unsupportedRendererVersionDetected"]
       85 LOADN                            R3 0
       86 SETTABLEKS                       R3 R2 K22 ["_weightAcrossRoots"]
       88 GETUPVAL                         R3 3
       89 JUMPIFNOT                        R3 ; [+4]
       90 GETUPVAL                         R3 4
       91 LOADK                            R4 K23 ["constructor"]
       92 LOADK                            R5 K24 ["subscribing to Bridge"]
       93 CALL                             R3 2 0
       94 GETUPVAL                         R4 5
       95 LOADK                            R5 K25 ["React::DevTools::collapseNodesByDefault"]
       96 CALL                             R4 1 1
       97 JUMPIFEQKS                       R4 K26 ["true"] ; [+2]
       99 LOADB                            R3 0 +1
      100 LOADB                            R3 1
      101 SETTABLEKS                       R3 R2 K4 ["_collapseNodesByDefault"]
      103 GETUPVAL                         R4 5
      104 LOADK                            R5 K27 ["React::DevTools::recordChangeDescriptions"]
      105 CALL                             R4 1 1
      106 JUMPIFEQKS                       R4 K26 ["true"] ; [+2]
      108 LOADB                            R3 0 +1
      109 LOADB                            R3 1
      110 SETTABLEKS                       R3 R2 K12 ["_recordChangeDescriptions"]
      112 GETUPVAL                         R3 6
      113 CALL                             R3 0 1
      114 SETTABLEKS                       R3 R2 K5 ["_componentFilters"]
      116 LOADB                            R3 0
      117 JUMPIFEQKNIL                     R1 ; [+33]
      119 GETTABLEKS                       R4 R1 K28 ["isProfiling"]
      121 JUMPIFEQKB                       R4 TRUE ; [+2]
      123 LOADB                            R3 0 +1
      124 LOADB                            R3 1
      125 GETTABLEKS                       R4 R1 K29 ["supportsNativeInspection"]
      127 GETTABLEKS                       R5 R1 K30 ["supportsProfiling"]
      129 GETTABLEKS                       R6 R1 K31 ["supportsReloadAndProfile"]
      131 GETTABLEKS                       R7 R1 K32 ["supportsTraceUpdates"]
      133 JUMPIFNOTEQKB                    R4 FALSE ; [+2]
      135 LOADB                            R8 0 +1
      136 LOADB                            R8 1
      137 SETTABLEKS                       R8 R2 K17 ["_supportsNativeInspection"]
      139 JUMPIFNOT                        R5 ; [+3]
      140 LOADB                            R8 1
      141 SETTABLEKS                       R8 R2 K18 ["_supportsProfiling"]
      143 JUMPIFNOT                        R6 ; [+3]
      144 LOADB                            R8 1
      145 SETTABLEKS                       R8 R2 K19 ["_supportsReloadAndProfile"]
      147 JUMPIFNOT                        R7 ; [+3]
      148 LOADB                            R8 1
      149 SETTABLEKS                       R8 R2 K20 ["_supportsTraceUpdates"]
      151 GETUPVAL                         R4 7
      152 GETTABLEKS                       R4 R4 K0 ["new"]
      154 MOVE                             R5 R0
      155 MOVE                             R6 R2
      156 MOVE                             R7 R3
      157 CALL                             R4 3 1
      158 SETTABLEKS                       R4 R2 K33 ["_profilerStore"]
      160 GETTABLEKS                       R4 R2 K34 ["onBridgeOperations"]
      162 SETTABLEKS                       R4 R2 K35 ["_onBridgeOperations"]
      164 NEWCLOSURE                       R4 P0
      165 CAPTURE                          VAL R2
      166 SETTABLEKS                       R4 R2 K34 ["onBridgeOperations"]
      168 GETTABLEKS                       R4 R2 K36 ["onBridgeOverrideComponentFilters"]
      170 SETTABLEKS                       R4 R2 K37 ["_onBridgeOverrideComponentFilters"]
      172 NEWCLOSURE                       R4 P1
      173 CAPTURE                          VAL R2
      174 SETTABLEKS                       R4 R2 K36 ["onBridgeOverrideComponentFilters"]
      176 GETTABLEKS                       R4 R2 K38 ["onBridgeShutdown"]
      178 SETTABLEKS                       R4 R2 K39 ["_onBridgeShutdown"]
      180 NEWCLOSURE                       R4 P2
      181 CAPTURE                          VAL R2
      182 SETTABLEKS                       R4 R2 K38 ["onBridgeShutdown"]
      184 GETTABLEKS                       R4 R2 K40 ["onBridgeStorageSupported"]
      186 SETTABLEKS                       R4 R2 K41 ["_onBridgeStorageSupported"]
      188 NEWCLOSURE                       R4 P3
      189 CAPTURE                          VAL R2
      190 SETTABLEKS                       R4 R2 K40 ["onBridgeStorageSupported"]
      192 GETTABLEKS                       R4 R2 K42 ["onBridgeNativeStyleEditorSupported"]
      194 SETTABLEKS                       R4 R2 K43 ["_onBridgeNativeStyleEditorSupported"]
      196 NEWCLOSURE                       R4 P4
      197 CAPTURE                          VAL R2
      198 SETTABLEKS                       R4 R2 K42 ["onBridgeNativeStyleEditorSupported"]
      200 GETTABLEKS                       R4 R2 K44 ["onBridgeUnsupportedRendererVersion"]
      202 SETTABLEKS                       R4 R2 K45 ["_onBridgeUnsupportedRendererVersion"]
      204 NEWCLOSURE                       R4 P5
      205 CAPTURE                          VAL R2
      206 SETTABLEKS                       R4 R2 K44 ["onBridgeUnsupportedRendererVersion"]
      208 LOADK                            R6 K46 ["operations"]
      209 GETTABLEKS                       R7 R2 K34 ["onBridgeOperations"]
      211 NAMECALL                         R4 R0 K47 ["addListener"]
      213 CALL                             R4 3 0
      214 LOADK                            R6 K48 ["overrideComponentFilters"]
      215 GETTABLEKS                       R7 R2 K36 ["onBridgeOverrideComponentFilters"]
      217 NAMECALL                         R4 R0 K47 ["addListener"]
      219 CALL                             R4 3 0
      220 LOADK                            R6 K49 ["shutdown"]
      221 GETTABLEKS                       R7 R2 K38 ["onBridgeShutdown"]
      223 NAMECALL                         R4 R0 K47 ["addListener"]
      225 CALL                             R4 3 0
      226 LOADK                            R6 K50 ["isBackendStorageAPISupported"]
      227 GETTABLEKS                       R7 R2 K40 ["onBridgeStorageSupported"]
      229 NAMECALL                         R4 R0 K47 ["addListener"]
      231 CALL                             R4 3 0
      232 LOADK                            R6 K51 ["isNativeStyleEditorSupported"]
      233 GETTABLEKS                       R7 R2 K42 ["onBridgeNativeStyleEditorSupported"]
      235 NAMECALL                         R4 R0 K47 ["addListener"]
      237 CALL                             R4 3 0
      238 LOADK                            R6 K52 ["unsupportedRendererVersion"]
      239 GETTABLEKS                       R7 R2 K44 ["onBridgeUnsupportedRendererVersion"]
      241 NAMECALL                         R4 R0 K47 ["addListener"]
      243 CALL                             R4 3 0
      244 RETURN                           R2 1

PROTO_8:
        0 GETTABLEKS                       R2 R0 K0 ["_roots"]
        2 LENGTH                           R1 R2
        3 JUMPIFNOTEQKN                    R1 K1 [0] ; [+13]
        5 GETTABLEKS                       R3 R0 K2 ["_idToElement"]
        7 LOADK                            R4 K2 ["_idToElement"]
        8 NAMECALL                         R1 R0 K3 ["assertMapSizeMatchesRootCount"]
       10 CALL                             R1 3 0
       11 GETTABLEKS                       R3 R0 K4 ["_ownersMap"]
       13 LOADK                            R4 K4 ["_ownersMap"]
       14 NAMECALL                         R1 R0 K3 ["assertMapSizeMatchesRootCount"]
       16 CALL                             R1 3 0
       17 GETTABLEKS                       R3 R0 K5 ["_rootIDToCapabilities"]
       19 LOADK                            R4 K5 ["_rootIDToCapabilities"]
       20 NAMECALL                         R1 R0 K3 ["assertMapSizeMatchesRootCount"]
       22 CALL                             R1 3 0
       23 GETTABLEKS                       R3 R0 K6 ["_rootIDToRendererID"]
       25 LOADK                            R4 K6 ["_rootIDToRendererID"]
       26 NAMECALL                         R1 R0 K3 ["assertMapSizeMatchesRootCount"]
       28 CALL                             R1 3 0
       29 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R4 R0 K0 ["_roots"]
        2 LENGTH                           R3 R4
        3 GETTABLEKS                       R4 R1 K1 ["size"]
        5 JUMPIFEQ                         R4 R3 ; [+31]
        7 GETIMPORT                        R4 K3 [error]
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R5 R5 K4 ["new"]
       12 GETIMPORT                        R6 K7 [string.format]
       14 LOADK                            R7 K8 ["Expected %s to contain %s items, but it contains %s items\n\n%s"]
       15 MOVE                             R8 R2
       16 FASTCALL1                        TOSTRING R3 ; [+3]
       17 MOVE                             R10 R3
       18 GETIMPORT                        R9 K10 [tostring]
       20 CALL                             R9 1 1
       21 GETTABLEKS                       R11 R1 K1 ["size"]
       23 FASTCALL1                        TOSTRING R11 ; [+2]
       24 GETIMPORT                        R10 K10 [tostring]
       26 CALL                             R10 1 1
       27 GETUPVAL                         R11 1
       28 MOVE                             R12 R1
       29 DUPTABLE                         R13 K12 [{"depth"}]
       30 LOADN                            R14 20
       31 SETTABLEKS                       R14 R13 K11 ["depth"]
       33 CALL                             R11 2 -1
       34 CALL                             R6 -1 -1
       35 CALL                             R5 -1 -1
       36 CALL                             R4 -1 0
       37 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["_collapseNodesByDefault"]
        2 RETURN                           R1 1

PROTO_11:
        0 SETTABLEKS                       R1 R0 K0 ["_collapseNodesByDefault"]
        2 GETUPVAL                         R2 0
        3 LOADK                            R3 K1 ["React::DevTools::collapseNodesByDefault"]
        4 JUMPIFNOT                        R1 ; [+2]
        5 LOADK                            R4 K2 ["true"]
        6 JUMP                             ; [+1]
        7 LOADK                            R4 K3 ["false"]
        8 CALL                             R2 2 0
        9 LOADK                            R4 K4 ["collapseNodesByDefault"]
       10 NAMECALL                         R2 R0 K5 ["emit"]
       12 CALL                             R2 2 0
       13 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["_componentFilters"]
        2 RETURN                           R1 1

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["isEnabled"]
        2 RETURN                           R1 1

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["isEnabled"]
        2 RETURN                           R1 1

PROTO_15:
        0 GETTABLEKS                       R2 R0 K0 ["_profilerStore"]
        2 NAMECALL                         R2 R2 K1 ["isProfiling"]
        4 CALL                             R2 1 1
        5 JUMPIFNOT                        R2 ; [+4]
        6 GETIMPORT                        R2 K3 [error]
        8 LOADK                            R3 K4 ["Cannot modify filter preferences while profiling"]
        9 CALL                             R2 1 0
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K5 ["filter"]
       13 GETTABLEKS                       R3 R0 K6 ["_componentFilters"]
       15 DUPCLOSURE                       R4 K7 [PROTO_13]
       16 CALL                             R2 2 1
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R3 R3 K5 ["filter"]
       20 MOVE                             R4 R1
       21 DUPCLOSURE                       R5 K8 [PROTO_14]
       22 CALL                             R3 2 1
       23 LENGTH                           R5 R2
       24 LENGTH                           R6 R3
       25 JUMPIFNOTEQ                      R5 R6 ; [+2]
       27 LOADB                            R4 0 +1
       28 LOADB                            R4 1
       29 JUMPIF                           R4 ; [+14]
       30 LOADN                            R7 1
       31 LENGTH                           R5 R3
       32 LOADN                            R6 1
       33 FORNPREP                         R5
       34 GETTABLE                         R8 R2 R7
       35 GETTABLE                         R9 R3 R7
       36 GETUPVAL                         R10 1
       37 MOVE                             R11 R8
       38 MOVE                             R12 R9
       39 CALL                             R10 2 1
       40 JUMPIFNOT                        R10 ; [+2]
       41 LOADB                            R4 1
       42 JUMP                             ; [+1]
       43 FORNLOOP                         R5
       44 SETTABLEKS                       R1 R0 K6 ["_componentFilters"]
       46 GETUPVAL                         R5 2
       47 MOVE                             R6 R1
       48 CALL                             R5 1 0
       49 JUMPIFNOT                        R4 ; [+7]
       50 GETTABLEKS                       R5 R0 K9 ["_bridge"]
       52 LOADK                            R7 K10 ["updateComponentFilters"]
       53 MOVE                             R8 R1
       54 NAMECALL                         R5 R5 K11 ["send"]
       56 CALL                             R5 3 0
       57 LOADK                            R7 K12 ["componentFilters"]
       58 NAMECALL                         R5 R0 K13 ["emit"]
       60 CALL                             R5 2 0
       61 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R1 R0 K0 ["_hasOwnerMetadata"]
        2 RETURN                           R1 1

PROTO_17:
        0 GETTABLEKS                       R1 R0 K0 ["_nativeStyleEditorValidAttributes"]
        2 RETURN                           R1 1

PROTO_18:
        0 GETTABLEKS                       R1 R0 K0 ["_weightAcrossRoots"]
        2 RETURN                           R1 1

PROTO_19:
        0 GETTABLEKS                       R1 R0 K0 ["_profilerStore"]
        2 RETURN                           R1 1

PROTO_20:
        0 GETTABLEKS                       R1 R0 K0 ["_recordChangeDescriptions"]
        2 RETURN                           R1 1

PROTO_21:
        0 SETTABLEKS                       R1 R0 K0 ["_recordChangeDescriptions"]
        2 GETUPVAL                         R2 0
        3 LOADK                            R3 K1 ["React::DevTools::recordChangeDescriptions"]
        4 JUMPIFNOT                        R1 ; [+2]
        5 LOADK                            R4 K2 ["true"]
        6 JUMP                             ; [+1]
        7 LOADK                            R4 K3 ["false"]
        8 CALL                             R2 2 0
        9 LOADK                            R4 K4 ["recordChangeDescriptions"]
       10 NAMECALL                         R2 R0 K5 ["emit"]
       12 CALL                             R2 2 0
       13 RETURN                           R0 0

PROTO_22:
        0 GETTABLEKS                       R1 R0 K0 ["_revision"]
        2 RETURN                           R1 1

PROTO_23:
        0 GETTABLEKS                       R1 R0 K0 ["_rootIDToRendererID"]
        2 RETURN                           R1 1

PROTO_24:
        0 GETTABLEKS                       R1 R0 K0 ["_roots"]
        2 RETURN                           R1 1

PROTO_25:
        0 GETTABLEKS                       R1 R0 K0 ["_supportsNativeInspection"]
        2 RETURN                           R1 1

PROTO_26:
        0 GETTABLEKS                       R1 R0 K0 ["_isNativeStyleEditorSupported"]
        2 RETURN                           R1 1

PROTO_27:
        0 GETTABLEKS                       R1 R0 K0 ["_supportsProfiling"]
        2 RETURN                           R1 1

PROTO_28:
        0 GETTABLEKS                       R1 R0 K0 ["_supportsReloadAndProfile"]
        2 JUMPIFNOT                        R1 ; [+2]
        3 GETTABLEKS                       R1 R0 K1 ["_isBackendStorageAPISupported"]
        5 RETURN                           R1 1

PROTO_29:
        0 GETTABLEKS                       R1 R0 K0 ["_supportsTraceUpdates"]
        2 RETURN                           R1 1

PROTO_30:
        0 GETTABLEKS                       R1 R0 K0 ["_unsupportedRendererVersionDetected"]
        2 RETURN                           R1 1

PROTO_31:
        0 GETTABLEKS                       R3 R0 K0 ["_idToElement"]
        2 MOVE                             R5 R1
        3 NAMECALL                         R3 R3 K1 ["get"]
        5 CALL                             R3 2 1
        6 JUMPIFNOTEQKNIL                  R3 ; [+2]
        8 LOADB                            R2 0 +1
        9 LOADB                            R2 1
       10 RETURN                           R2 1

PROTO_32:
        0 LOADN                            R2 0
        1 JUMPIFLT                         R1 R2 ; [+6]
        3 NAMECALL                         R2 R0 K0 ["getNumElements"]
        5 CALL                             R2 1 1
        6 JUMPIFNOTLE                      R2 R1 ; [+15]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K1 ["warn"]
       11 GETIMPORT                        R3 K4 [string.format]
       13 LOADK                            R4 K5 ["Invalid index %d specified; store contains %d items."]
       14 MOVE                             R5 R1
       15 NAMECALL                         R6 R0 K0 ["getNumElements"]
       17 CALL                             R6 1 -1
       18 CALL                             R3 -1 -1
       19 CALL                             R2 -1 0
       20 LOADNIL                          R2
       21 RETURN                           R2 1
       22 LOADNIL                          R2
       23 LOADNIL                          R3
       24 LOADN                            R4 0
       25 LOADN                            R7 1
       26 GETTABLEKS                       R8 R0 K6 ["_roots"]
       28 LENGTH                           R5 R8
       29 LOADN                            R6 1
       30 FORNPREP                         R5
       31 GETTABLEKS                       R8 R0 K6 ["_roots"]
       33 GETTABLE                         R2 R8 R7
       34 GETTABLEKS                       R8 R0 K7 ["_idToElement"]
       36 MOVE                             R10 R2
       37 NAMECALL                         R8 R8 K8 ["get"]
       39 CALL                             R8 2 1
       40 MOVE                             R3 R8
       41 GETTABLEKS                       R9 R3 K9 ["children"]
       43 LENGTH                           R8 R9
       44 JUMPIFNOTEQKN                    R8 K10 [0] ; [+2]
       46 JUMP                             ; [+9]
       47 GETTABLEKS                       R9 R3 K11 ["weight"]
       49 ADD                              R8 R4 R9
       50 JUMPIFNOTLT                      R1 R8 ; [+2]
       52 JUMP                             ; [+4]
       53 GETTABLEKS                       R8 R3 K11 ["weight"]
       55 ADD                              R4 R4 R8
       56 FORNLOOP                         R5
       57 MOVE                             R5 R3
       58 SUBK                             R6 R4 K12 [1]
       59 JUMPIFEQ                         R1 R6 ; [+33]
       61 GETTABLEKS                       R8 R5 K9 ["children"]
       63 LENGTH                           R7 R8
       64 LOADN                            R10 1
       65 MOVE                             R8 R7
       66 LOADN                            R9 1
       67 FORNPREP                         R8
       68 GETTABLEKS                       R12 R5 K9 ["children"]
       70 GETTABLE                         R11 R12 R10
       71 GETTABLEKS                       R12 R0 K7 ["_idToElement"]
       73 MOVE                             R14 R11
       74 NAMECALL                         R12 R12 K8 ["get"]
       76 CALL                             R12 2 1
       77 GETTABLEKS                       R14 R12 K13 ["isCollapsed"]
       79 JUMPIFNOT                        R14 ; [+2]
       80 LOADN                            R13 1
       81 JUMP                             ; [+2]
       82 GETTABLEKS                       R13 R12 K11 ["weight"]
       84 ADD                              R14 R6 R13
       85 JUMPIFNOTLE                      R1 R14 ; [+4]
       87 ADDK                             R6 R6 K12 [1]
       88 MOVE                             R5 R12
       89 JUMP                             ; [+2]
       90 ADD                              R6 R6 R13
       91 FORNLOOP                         R8
       92 JUMPBACK                         ; [-34]
       93 ORK                              R7 R5 K14 []
       94 RETURN                           R7 1

PROTO_33:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+3]
        3 LOADNIL                          R0
        4 RETURN                           R0 1
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K0 ["id"]
        8 RETURN                           R0 1

PROTO_34:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["getElementAtIndex"]
        3 CALL                             R2 2 1
        4 JUMPIFNOTEQKNIL                  R2 ; [+3]
        6 LOADNIL                          R3
        7 RETURN                           R3 1
        8 GETTABLEKS                       R3 R2 K1 ["id"]
       10 RETURN                           R3 1

PROTO_35:
        0 GETTABLEKS                       R2 R0 K0 ["_idToElement"]
        2 MOVE                             R4 R1
        3 NAMECALL                         R2 R2 K1 ["get"]
        5 CALL                             R2 2 1
        6 JUMPIFNOTEQKNIL                  R2 ; [+16]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K2 ["warn"]
       11 GETIMPORT                        R4 K5 [string.format]
       13 LOADK                            R5 K6 ["No element found with id \"%s\""]
       14 FASTCALL1                        TOSTRING R1 ; [+3]
       15 MOVE                             R7 R1
       16 GETIMPORT                        R6 K8 [tostring]
       18 CALL                             R6 1 1
       19 CALL                             R4 2 -1
       20 CALL                             R3 -1 0
       21 LOADNIL                          R3
       22 RETURN                           R3 1
       23 RETURN                           R2 1

PROTO_36:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["getElementByID"]
        3 CALL                             R2 2 1
        4 JUMPIFEQKNIL                     R2 ; [+5]
        6 GETTABLEKS                       R3 R2 K1 ["parentID"]
        8 JUMPIFNOTEQKN                    R3 K2 [0] ; [+3]
       10 LOADNIL                          R3
       11 RETURN                           R3 1
       12 MOVE                             R3 R1
       13 GETTABLEKS                       R4 R2 K1 ["parentID"]
       15 LOADN                            R5 0
       16 GETTABLEKS                       R6 R0 K3 ["_idToElement"]
       18 MOVE                             R8 R4
       19 NAMECALL                         R6 R6 K4 ["get"]
       21 CALL                             R6 2 1
       22 GETTABLEKS                       R7 R6 K5 ["children"]
       24 LOADN                            R10 1
       25 LENGTH                           R8 R7
       26 LOADN                            R9 1
       27 FORNPREP                         R8
       28 GETTABLE                         R11 R7 R10
       29 JUMPIFEQ                         R11 R3 ; [+16]
       31 GETTABLEKS                       R12 R0 K3 ["_idToElement"]
       33 MOVE                             R14 R11
       34 NAMECALL                         R12 R12 K4 ["get"]
       36 CALL                             R12 2 1
       37 GETTABLEKS                       R14 R12 K6 ["isCollapsed"]
       39 JUMPIFNOT                        R14 ; [+2]
       40 LOADN                            R13 1
       41 JUMP                             ; [+2]
       42 GETTABLEKS                       R13 R12 K7 ["weight"]
       44 ADD                              R5 R5 R13
       45 FORNLOOP                         R8
       46 GETTABLEKS                       R8 R6 K1 ["parentID"]
       48 JUMPIFEQKN                       R8 K2 [0] ; [+7]
       50 ADDK                             R5 R5 K8 [1]
       51 GETTABLEKS                       R3 R6 K9 ["id"]
       53 GETTABLEKS                       R4 R6 K1 ["parentID"]
       55 JUMPBACK                         ; [-40]
       56 LOADN                            R8 1
       57 GETTABLEKS                       R9 R0 K10 ["_roots"]
       59 LENGTH                           R6 R9
       60 LOADN                            R7 1
       61 FORNPREP                         R6
       62 GETTABLEKS                       R10 R0 K10 ["_roots"]
       64 GETTABLE                         R9 R10 R8
       65 JUMPIFEQ                         R9 R4 ; [+11]
       67 GETTABLEKS                       R10 R0 K3 ["_idToElement"]
       69 MOVE                             R12 R9
       70 NAMECALL                         R10 R10 K4 ["get"]
       72 CALL                             R10 2 1
       73 GETTABLEKS                       R11 R10 K7 ["weight"]
       75 ADD                              R5 R5 R11
       76 FORNLOOP                         R6
       77 RETURN                           R5 1

PROTO_37:
        0 GETUPVAL                         R4 0
        1 MOVE                             R6 R0
        2 NAMECALL                         R4 R4 K1 ["getIndexOfElementID"]
        4 CALL                             R4 2 1
        5 ORK                              R3 R4 K0 [0]
        6 GETUPVAL                         R5 0
        7 MOVE                             R7 R1
        8 NAMECALL                         R5 R5 K1 ["getIndexOfElementID"]
       10 CALL                             R5 2 1
       11 ORK                              R4 R5 K0 [0]
       12 SUB                              R2 R3 R4
       13 RETURN                           R2 1

PROTO_38:
        0 NEWTABLE                         R2 0 0
        2 GETTABLEKS                       R3 R0 K0 ["_idToElement"]
        4 MOVE                             R5 R1
        5 NAMECALL                         R3 R3 K1 ["get"]
        7 CALL                             R3 2 1
        8 JUMPIFEQKNIL                     R3 ; [+120]
       10 MOVE                             R5 R2
       11 GETUPVAL                         R6 0
       12 GETTABLEKS                       R6 R6 K2 ["assign"]
       14 NEWTABLE                         R7 0 0
       16 MOVE                             R8 R3
       17 DUPTABLE                         R9 K4 [{"depth"}]
       18 LOADN                            R10 0
       19 SETTABLEKS                       R10 R9 K3 ["depth"]
       21 CALL                             R6 3 -1
       22 FASTCALL                         TABLE_INSERT ; [+2]
       23 GETIMPORT                        R4 K7 [table.insert]
       25 CALL                             R4 -1 0
       26 GETTABLEKS                       R4 R0 K8 ["_ownersMap"]
       28 MOVE                             R6 R1
       29 NAMECALL                         R4 R4 K1 ["get"]
       31 CALL                             R4 2 1
       32 JUMPIFEQKNIL                     R4 ; [+96]
       34 GETUPVAL                         R5 1
       35 GETTABLEKS                       R5 R5 K9 ["new"]
       37 NEWTABLE                         R6 0 1
       39 NEWTABLE                         R7 0 2
       41 MOVE                             R8 R1
       42 LOADN                            R9 0
       43 SETLIST                          R7 R8 2 [1]
       45 SETLIST                          R6 R7 1 [1]
       47 CALL                             R5 1 1
       48 GETUPVAL                         R6 2
       49 GETTABLEKS                       R6 R6 K10 ["sort"]
       51 GETUPVAL                         R7 2
       52 GETTABLEKS                       R7 R7 K11 ["from"]
       54 MOVE                             R8 R4
       55 CALL                             R7 1 1
       56 NEWCLOSURE                       R8 P0
       57 CAPTURE                          VAL R0
       58 CALL                             R6 2 1
       59 MOVE                             R7 R6
       60 LOADNIL                          R8
       61 LOADNIL                          R9
       62 FORGPREP                         R7
       63 GETTABLEKS                       R12 R0 K0 ["_idToElement"]
       65 MOVE                             R14 R11
       66 NAMECALL                         R12 R12 K1 ["get"]
       68 CALL                             R12 2 1
       69 JUMPIFEQKNIL                     R12 ; [+57]
       71 GETTABLEKS                       R13 R12 K12 ["parentID"]
       73 LOADN                            R14 0
       74 LOADN                            R15 0
       75 JUMPIFNOTLT                      R15 R13 ; [+30]
       77 JUMPIFEQ                         R13 R1 ; [+6]
       79 MOVE                             R17 R13
       80 NAMECALL                         R15 R4 K13 ["has"]
       82 CALL                             R15 2 1
       83 JUMPIFNOT                        R15 ; [+11]
       84 MOVE                             R17 R13
       85 NAMECALL                         R15 R5 K1 ["get"]
       87 CALL                             R15 2 1
       88 ADDK                             R14 R15 K14 [1]
       89 MOVE                             R17 R11
       90 MOVE                             R18 R14
       91 NAMECALL                         R15 R5 K15 ["set"]
       93 CALL                             R15 3 0
       94 JUMP                             ; [+11]
       95 GETTABLEKS                       R15 R0 K0 ["_idToElement"]
       97 MOVE                             R17 R13
       98 NAMECALL                         R15 R15 K1 ["get"]
      100 CALL                             R15 2 1
      101 JUMPIFEQKNIL                     R15 ; [+4]
      103 GETTABLEKS                       R13 R15 K12 ["parentID"]
      105 JUMPBACK                         ; [-32]
      106 JUMPIFNOTEQKN                    R14 K16 [0] ; [+5]
      108 GETIMPORT                        R15 K18 [error]
      110 LOADK                            R16 K19 ["Invalid owners list"]
      111 CALL                             R15 1 0
      112 MOVE                             R16 R2
      113 GETUPVAL                         R17 0
      114 GETTABLEKS                       R17 R17 K2 ["assign"]
      116 NEWTABLE                         R18 0 0
      118 MOVE                             R19 R12
      119 DUPTABLE                         R20 K4 [{"depth"}]
      120 SETTABLEKS                       R14 R20 K3 ["depth"]
      122 CALL                             R17 3 -1
      123 FASTCALL                         TABLE_INSERT ; [+2]
      124 GETIMPORT                        R15 K7 [table.insert]
      126 CALL                             R15 -1 0
      127 FORGLOOP                         R7 2 ; [-65]
      129 RETURN                           R2 1

PROTO_39:
        0 GETTABLEKS                       R2 R0 K0 ["_idToElement"]
        2 MOVE                             R4 R1
        3 NAMECALL                         R2 R2 K1 ["get"]
        5 CALL                             R2 2 1
        6 JUMPIFEQKNIL                     R2 ; [+26]
        8 GETTABLEKS                       R3 R2 K2 ["parentID"]
       10 JUMPIFNOTEQKN                    R3 K3 [0] ; [+13]
       12 GETTABLEKS                       R3 R0 K4 ["_rootIDToRendererID"]
       14 GETTABLEKS                       R5 R2 K5 ["id"]
       16 NAMECALL                         R3 R3 K1 ["get"]
       18 CALL                             R3 2 1
       19 JUMPIFNOTEQKNIL                  R3 ; [+3]
       21 LOADNIL                          R4
       22 RETURN                           R4 1
       23 RETURN                           R3 1
       24 GETTABLEKS                       R3 R0 K0 ["_idToElement"]
       26 GETTABLEKS                       R5 R2 K2 ["parentID"]
       28 NAMECALL                         R3 R3 K1 ["get"]
       30 CALL                             R3 2 1
       31 MOVE                             R2 R3
       32 JUMPBACK                         ; [-27]
       33 LOADNIL                          R3
       34 RETURN                           R3 1

PROTO_40:
        0 GETTABLEKS                       R2 R0 K0 ["_idToElement"]
        2 MOVE                             R4 R1
        3 NAMECALL                         R2 R2 K1 ["get"]
        5 CALL                             R2 2 1
        6 JUMPIFEQKNIL                     R2 ; [+17]
        8 GETTABLEKS                       R3 R2 K2 ["parentID"]
       10 JUMPIFNOTEQKN                    R3 K3 [0] ; [+4]
       12 GETTABLEKS                       R3 R2 K4 ["id"]
       14 RETURN                           R3 1
       15 GETTABLEKS                       R3 R0 K0 ["_idToElement"]
       17 GETTABLEKS                       R5 R2 K2 ["parentID"]
       19 NAMECALL                         R3 R3 K1 ["get"]
       21 CALL                             R3 2 1
       22 MOVE                             R2 R3
       23 JUMPBACK                         ; [-18]
       24 LOADNIL                          R3
       25 RETURN                           R3 1

PROTO_41:
        0 GETTABLEKS                       R2 R0 K0 ["_idToElement"]
        2 MOVE                             R4 R1
        3 NAMECALL                         R2 R2 K1 ["get"]
        5 CALL                             R2 2 1
        6 JUMPIFEQKNIL                     R2 ; [+23]
        8 GETTABLEKS                       R3 R2 K2 ["parentID"]
       10 JUMPIFNOTEQKN                    R3 K3 [0] ; [+3]
       12 LOADB                            R3 0
       13 RETURN                           R3 1
       14 GETTABLEKS                       R3 R0 K0 ["_idToElement"]
       16 GETTABLEKS                       R5 R2 K2 ["parentID"]
       18 NAMECALL                         R3 R3 K1 ["get"]
       20 CALL                             R3 2 1
       21 MOVE                             R2 R3
       22 JUMPIFEQKNIL                     R2 ; [+6]
       24 GETTABLEKS                       R3 R2 K4 ["isCollapsed"]
       26 JUMPIFNOT                        R3 ; [+2]
       27 LOADB                            R3 1
       28 RETURN                           R3 1
       29 JUMPBACK                         ; [-24]
       30 LOADB                            R3 0
       31 RETURN                           R3 1

PROTO_42:
        0 LOADB                            R3 0
        1 MOVE                             R6 R1
        2 NAMECALL                         R4 R0 K0 ["getElementByID"]
        4 CALL                             R4 2 1
        5 JUMPIFEQKNIL                     R4 ; [+139]
        7 JUMPIFNOT                        R2 ; [+43]
        8 GETTABLEKS                       R5 R4 K1 ["type"]
       10 GETUPVAL                         R6 0
       11 JUMPIFNOTEQ                      R5 R6 ; [+5]
       13 GETIMPORT                        R5 K3 [error]
       15 LOADK                            R6 K4 ["Root nodes cannot be collapsed"]
       16 CALL                             R5 1 0
       17 GETTABLEKS                       R5 R4 K5 ["isCollapsed"]
       19 JUMPIF                           R5 ; [+95]
       20 LOADB                            R3 1
       21 LOADB                            R5 1
       22 SETTABLEKS                       R5 R4 K5 ["isCollapsed"]
       24 GETTABLEKS                       R6 R4 K7 ["weight"]
       26 SUBRK                            R5 R6 K6 [1]
       27 GETTABLEKS                       R6 R0 K8 ["_idToElement"]
       29 GETTABLEKS                       R8 R4 K9 ["parentID"]
       31 NAMECALL                         R6 R6 K10 ["get"]
       33 CALL                             R6 2 1
       34 JUMPIFEQKNIL                     R6 ; [+80]
       36 GETTABLEKS                       R7 R6 K7 ["weight"]
       38 ADD                              R7 R7 R5
       39 SETTABLEKS                       R7 R6 K7 ["weight"]
       41 GETTABLEKS                       R7 R0 K8 ["_idToElement"]
       43 GETTABLEKS                       R9 R6 K9 ["parentID"]
       45 NAMECALL                         R7 R7 K10 ["get"]
       47 CALL                             R7 2 1
       48 MOVE                             R6 R7
       49 JUMPBACK                         ; [-16]
       50 JUMP                             ; [+64]
       51 MOVE                             R5 R4
       52 JUMPIFEQKNIL                     R5 ; [+62]
       54 GETTABLEKS                       R7 R5 K5 ["isCollapsed"]
       56 JUMPIFNOT                        R7 ; [+2]
       57 LOADN                            R6 1
       58 JUMP                             ; [+2]
       59 GETTABLEKS                       R6 R5 K7 ["weight"]
       61 GETTABLEKS                       R7 R5 K5 ["isCollapsed"]
       63 JUMPIFNOT                        R7 ; [+38]
       64 LOADB                            R3 1
       65 LOADB                            R7 0
       66 SETTABLEKS                       R7 R5 K5 ["isCollapsed"]
       68 GETTABLEKS                       R8 R5 K5 ["isCollapsed"]
       70 JUMPIFNOT                        R8 ; [+2]
       71 LOADN                            R7 1
       72 JUMP                             ; [+2]
       73 GETTABLEKS                       R7 R5 K7 ["weight"]
       75 SUB                              R8 R7 R6
       76 GETTABLEKS                       R9 R0 K8 ["_idToElement"]
       78 GETTABLEKS                       R11 R5 K9 ["parentID"]
       80 NAMECALL                         R9 R9 K10 ["get"]
       82 CALL                             R9 2 1
       83 JUMPIFEQKNIL                     R9 ; [+18]
       85 GETTABLEKS                       R10 R9 K7 ["weight"]
       87 ADD                              R10 R10 R8
       88 SETTABLEKS                       R10 R9 K7 ["weight"]
       90 GETTABLEKS                       R10 R9 K5 ["isCollapsed"]
       92 JUMPIF                           R10 ; [+9]
       93 GETTABLEKS                       R10 R0 K8 ["_idToElement"]
       95 GETTABLEKS                       R12 R9 K9 ["parentID"]
       97 NAMECALL                         R10 R10 K10 ["get"]
       99 CALL                             R10 2 1
      100 MOVE                             R9 R10
      101 JUMPBACK                         ; [-19]
      102 GETTABLEKS                       R7 R5 K9 ["parentID"]
      104 JUMPIFEQKN                       R7 K11 [0] ; [+8]
      106 GETTABLEKS                       R9 R5 K9 ["parentID"]
      108 NAMECALL                         R7 R0 K0 ["getElementByID"]
      110 CALL                             R7 2 1
      111 MOVE                             R5 R7
      112 JUMP                             ; [+1]
      113 LOADNIL                          R5
      114 JUMPBACK                         ; [-63]
      115 JUMPIFNOT                        R3 ; [+29]
      116 LOADN                            R5 0
      117 GETTABLEKS                       R6 R0 K12 ["_roots"]
      119 LOADNIL                          R7
      120 LOADNIL                          R8
      121 FORGPREP                         R6
      122 MOVE                             R13 R10
      123 NAMECALL                         R11 R0 K0 ["getElementByID"]
      125 CALL                             R11 2 1
      126 GETTABLEKS                       R12 R11 K7 ["weight"]
      128 ADD                              R5 R5 R12
      129 FORGLOOP                         R6 2 ; [-8]
      131 SETTABLEKS                       R5 R0 K13 ["_weightAcrossRoots"]
      133 LOADK                            R8 K14 ["mutated"]
      134 NEWTABLE                         R9 0 2
      136 NEWTABLE                         R10 0 0
      138 NEWTABLE                         R11 0 0
      140 SETLIST                          R9 R10 2 [1]
      142 NAMECALL                         R6 R0 K15 ["emit"]
      144 CALL                             R6 3 0
      145 RETURN                           R0 0

PROTO_43:
        0 LOADB                            R3 0
        1 JUMPIFEQKNIL                     R1 ; [+20]
        3 GETTABLEKS                       R4 R1 K0 ["weight"]
        5 ADD                              R4 R4 R2
        6 SETTABLEKS                       R4 R1 K0 ["weight"]
        8 GETTABLEKS                       R4 R1 K1 ["isCollapsed"]
       10 JUMPIFNOT                        R4 ; [+2]
       11 LOADB                            R3 1
       12 JUMP                             ; [+9]
       13 GETTABLEKS                       R4 R0 K2 ["_idToElement"]
       15 GETTABLEKS                       R6 R1 K3 ["parentID"]
       17 NAMECALL                         R4 R4 K4 ["get"]
       19 CALL                             R4 2 1
       20 MOVE                             R1 R4
       21 JUMPBACK                         ; [-21]
       22 JUMPIF                           R3 ; [+5]
       23 GETTABLEKS                       R4 R0 K5 ["_weightAcrossRoots"]
       25 ADD                              R4 R4 R2
       26 SETTABLEKS                       R4 R0 K5 ["_weightAcrossRoots"]
       28 RETURN                           R0 0

PROTO_44:
        0 GETTABLEKS                       R2 R1 K0 ["isSupported"]
        2 GETTABLEKS                       R3 R1 K1 ["validAttributes"]
        4 SETTABLEKS                       R2 R0 K2 ["_isNativeStyleEditorSupported"]
        6 ORK                              R4 R3 K3 []
        7 SETTABLEKS                       R4 R0 K4 ["_nativeStyleEditorValidAttributes"]
        9 LOADK                            R6 K5 ["supportsNativeStyleEditor"]
       10 NAMECALL                         R4 R0 K6 ["emit"]
       12 CALL                             R4 2 0
       13 RETURN                           R0 0

PROTO_45:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 0
        2 ADDK                             R1 R1 K0 [1]
        3 SETUPVAL                         R1 0
        4 RETURN                           R0 1

PROTO_46:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOTEQ                      R0 R2 ; [+2]
        3 LOADB                            R1 0 +1
        4 LOADB                            R1 1
        5 RETURN                           R1 1

PROTO_47:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+13]
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["groupCollapsed"]
        5 LOADK                            R3 K1 ["onBridgeOperations"]
        6 CALL                             R2 1 0
        7 GETUPVAL                         R2 2
        8 LOADK                            R3 K1 ["onBridgeOperations"]
        9 GETIMPORT                        R4 K4 [table.concat]
       11 MOVE                             R5 R1
       12 LOADK                            R6 K5 [","]
       13 CALL                             R4 2 -1
       14 CALL                             R2 -1 0
       15 LOADB                            R2 0
       16 GETTABLEN                        R3 R1 1
       17 NEWTABLE                         R4 0 0
       19 NEWTABLE                         R5 0 0
       21 LOADN                            R6 3
       22 NEWTABLE                         R7 0 1
       24 LOADK                            R8 K6 [""]
       25 SETLIST                          R7 R8 1 [1]
       27 NEWCLOSURE                       R8 P0
       28 CAPTURE                          REF R6
       29 MOVE                             R11 R6
       30 ADDK                             R6 R6 K7 [1]
       31 MOVE                             R10 R11
       32 GETTABLE                         R9 R1 R10
       33 ADD                              R10 R6 R9
       34 JUMPIFNOTLT                      R6 R10 ; [+23]
       36 MOVE                             R13 R6
       37 ADDK                             R6 R6 K7 [1]
       38 MOVE                             R12 R13
       39 GETTABLE                         R11 R1 R12
       40 GETUPVAL                         R12 3
       41 GETUPVAL                         R13 4
       42 GETTABLEKS                       R13 R13 K8 ["slice"]
       44 MOVE                             R14 R1
       45 MOVE                             R15 R6
       46 ADD                              R16 R6 R11
       47 CALL                             R13 3 -1
       48 CALL                             R12 -1 1
       49 FASTCALL2                        TABLE_INSERT R7 R12 ; [+5]
       51 MOVE                             R14 R7
       52 MOVE                             R15 R12
       53 GETIMPORT                        R13 K10 [table.insert]
       55 CALL                             R13 2 0
       56 ADD                              R6 R6 R11
       57 JUMPBACK                         ; [-24]
       58 LENGTH                           R11 R1
       59 JUMPIFNOTLE                      R6 R11 ; [+613]
       61 GETTABLE                         R11 R1 R6
       62 GETUPVAL                         R12 5
       63 JUMPIFNOTEQ                      R11 R12 ; [+288]
       65 ADDK                             R13 R6 K7 [1]
       66 GETTABLE                         R12 R1 R13
       67 ADDK                             R14 R6 K11 [2]
       68 GETTABLE                         R13 R1 R14
       69 ADDK                             R6 R6 K12 [3]
       70 GETTABLEKS                       R14 R0 K13 ["_idToElement"]
       72 MOVE                             R16 R12
       73 NAMECALL                         R14 R14 K14 ["has"]
       75 CALL                             R14 2 1
       76 JUMPIFNOT                        R14 ; [+16]
       77 GETIMPORT                        R14 K16 [error]
       79 GETUPVAL                         R15 6
       80 GETTABLEKS                       R15 R15 K17 ["new"]
       82 LOADK                            R16 K18 ["Cannot add node %s because a node with that id is already in the Store."]
       83 FASTCALL1                        TOSTRING R12 ; [+3]
       84 MOVE                             R19 R12
       85 GETIMPORT                        R18 K20 [tostring]
       87 CALL                             R18 1 1
       88 NAMECALL                         R16 R16 K21 ["format"]
       90 CALL                             R16 2 -1
       91 CALL                             R15 -1 -1
       92 CALL                             R14 -1 0
       93 LOADN                            R14 0
       94 LOADNIL                          R15
       95 GETUPVAL                         R16 7
       96 JUMPIFNOTEQ                      R13 R16 ; [+97]
       98 GETUPVAL                         R16 0
       99 JUMPIFNOT                        R16 ; [+12]
      100 GETUPVAL                         R16 2
      101 LOADK                            R17 K22 ["Add"]
      102 GETIMPORT                        R18 K24 [string.format]
      104 LOADK                            R19 K25 ["new root node %s"]
      105 FASTCALL1                        TOSTRING R12 ; [+3]
      106 MOVE                             R21 R12
      107 GETIMPORT                        R20 K20 [tostring]
      109 CALL                             R20 1 1
      110 CALL                             R18 2 -1
      111 CALL                             R16 -1 0
      112 GETTABLE                         R17 R1 R6
      113 LOADN                            R18 0
      114 JUMPIFLT                         R18 R17 ; [+2]
      116 LOADB                            R16 0 +1
      117 LOADB                            R16 1
      118 ADDK                             R6 R6 K7 [1]
      119 GETTABLE                         R18 R1 R6
      120 LOADN                            R19 0
      121 JUMPIFLT                         R19 R18 ; [+2]
      123 LOADB                            R17 0 +1
      124 LOADB                            R17 1
      125 ADDK                             R6 R6 K7 [1]
      126 GETUPVAL                         R18 4
      127 GETTABLEKS                       R18 R18 K3 ["concat"]
      129 GETTABLEKS                       R19 R0 K26 ["_roots"]
      131 MOVE                             R20 R12
      132 CALL                             R18 2 1
      133 SETTABLEKS                       R18 R0 K26 ["_roots"]
      135 GETTABLEKS                       R18 R0 K27 ["_rootIDToRendererID"]
      137 MOVE                             R20 R12
      138 MOVE                             R21 R3
      139 NAMECALL                         R18 R18 K28 ["set"]
      141 CALL                             R18 3 0
      142 GETTABLEKS                       R18 R0 K29 ["_rootIDToCapabilities"]
      144 MOVE                             R20 R12
      145 DUPTABLE                         R21 K32 [{"hasOwnerMetadata", "supportsProfiling"}]
      146 SETTABLEKS                       R17 R21 K30 ["hasOwnerMetadata"]
      148 SETTABLEKS                       R16 R21 K31 ["supportsProfiling"]
      150 NAMECALL                         R18 R18 K28 ["set"]
      152 CALL                             R18 3 0
      153 GETTABLEKS                       R18 R0 K13 ["_idToElement"]
      155 MOVE                             R20 R12
      156 DUPTABLE                         R21 K44 [{"children", "depth", "displayName", "hocDisplayNames", "id", "isCollapsed", "key", "ownerID", "parentID", "type", "weight"}]
      157 NEWTABLE                         R22 0 0
      159 SETTABLEKS                       R22 R21 K33 ["children"]
      161 LOADN                            R22 255
      162 SETTABLEKS                       R22 R21 K34 ["depth"]
      164 LOADNIL                          R22
      165 SETTABLEKS                       R22 R21 K35 ["displayName"]
      167 LOADNIL                          R22
      168 SETTABLEKS                       R22 R21 K36 ["hocDisplayNames"]
      170 SETTABLEKS                       R12 R21 K37 ["id"]
      172 LOADB                            R22 0
      173 SETTABLEKS                       R22 R21 K38 ["isCollapsed"]
      175 LOADNIL                          R22
      176 SETTABLEKS                       R22 R21 K39 ["key"]
      178 LOADN                            R22 0
      179 SETTABLEKS                       R22 R21 K40 ["ownerID"]
      181 LOADN                            R22 0
      182 SETTABLEKS                       R22 R21 K41 ["parentID"]
      184 SETTABLEKS                       R13 R21 K42 ["type"]
      186 LOADN                            R22 0
      187 SETTABLEKS                       R22 R21 K43 ["weight"]
      189 NAMECALL                         R18 R18 K28 ["set"]
      191 CALL                             R18 3 0
      192 LOADB                            R2 1
      193 JUMP                             ; [+478]
      194 GETTABLE                         R15 R1 R6
      195 ADDK                             R6 R6 K7 [1]
      196 GETTABLE                         R14 R1 R6
      197 ADDK                             R6 R6 K7 [1]
      198 GETTABLE                         R16 R1 R6
      199 ADDK                             R18 R16 K7 [1]
      200 GETTABLE                         R17 R7 R18
      201 ADDK                             R6 R6 K7 [1]
      202 GETTABLE                         R18 R1 R6
      203 ADDK                             R20 R18 K7 [1]
      204 GETTABLE                         R19 R7 R20
      205 ADDK                             R6 R6 K7 [1]
      206 GETUPVAL                         R20 0
      207 JUMPIFNOT                        R20 ; [+18]
      208 GETUPVAL                         R20 2
      209 LOADK                            R21 K22 ["Add"]
      210 GETIMPORT                        R22 K24 [string.format]
      212 LOADK                            R23 K45 ["node %s (%s) as child of %s"]
      213 FASTCALL1                        TOSTRING R12 ; [+3]
      214 MOVE                             R25 R12
      215 GETIMPORT                        R24 K20 [tostring]
      217 CALL                             R24 1 1
      218 ORK                              R25 R17 K46 ["null"]
      219 FASTCALL1                        TOSTRING R15 ; [+3]
      220 MOVE                             R27 R15
      221 GETIMPORT                        R26 K20 [tostring]
      223 CALL                             R26 1 1
      224 CALL                             R22 4 -1
      225 CALL                             R20 -1 0
      226 GETTABLEKS                       R20 R0 K13 ["_idToElement"]
      228 MOVE                             R22 R15
      229 NAMECALL                         R20 R20 K14 ["has"]
      231 CALL                             R20 2 1
      232 JUMPIF                           R20 ; [+21]
      233 GETIMPORT                        R20 K16 [error]
      235 GETUPVAL                         R21 6
      236 GETTABLEKS                       R21 R21 K17 ["new"]
      238 LOADK                            R22 K47 ["Cannot add child %s to parent %s because parent node was not found in the Store."]
      239 FASTCALL1                        TOSTRING R12 ; [+3]
      240 MOVE                             R25 R12
      241 GETIMPORT                        R24 K20 [tostring]
      243 CALL                             R24 1 1
      244 FASTCALL1                        TOSTRING R15 ; [+3]
      245 MOVE                             R26 R15
      246 GETIMPORT                        R25 K20 [tostring]
      248 CALL                             R25 1 1
      249 NAMECALL                         R22 R22 K21 ["format"]
      251 CALL                             R22 3 -1
      252 CALL                             R21 -1 -1
      253 CALL                             R20 -1 0
      254 GETTABLEKS                       R20 R0 K13 ["_idToElement"]
      256 MOVE                             R22 R15
      257 NAMECALL                         R20 R20 K48 ["get"]
      259 CALL                             R20 2 1
      260 GETTABLEKS                       R22 R20 K33 ["children"]
      262 FASTCALL2                        TABLE_INSERT R22 R12 ; [+4]
      264 MOVE                             R23 R12
      265 GETIMPORT                        R21 K10 [table.insert]
      267 CALL                             R21 2 0
      268 GETUPVAL                         R21 8
      269 MOVE                             R22 R17
      270 MOVE                             R23 R13
      271 CALL                             R21 2 2
      272 DUPTABLE                         R23 K44 [{"children", "depth", "displayName", "hocDisplayNames", "id", "isCollapsed", "key", "ownerID", "parentID", "type", "weight"}]
      273 NEWTABLE                         R24 0 0
      275 SETTABLEKS                       R24 R23 K33 ["children"]
      277 GETTABLEKS                       R25 R20 K34 ["depth"]
      279 ADDK                             R24 R25 K7 [1]
      280 SETTABLEKS                       R24 R23 K34 ["depth"]
      282 SETTABLEKS                       R21 R23 K35 ["displayName"]
      284 SETTABLEKS                       R22 R23 K36 ["hocDisplayNames"]
      286 SETTABLEKS                       R12 R23 K37 ["id"]
      288 GETTABLEKS                       R24 R0 K49 ["_collapseNodesByDefault"]
      290 SETTABLEKS                       R24 R23 K38 ["isCollapsed"]
      292 SETTABLEKS                       R19 R23 K39 ["key"]
      294 SETTABLEKS                       R14 R23 K40 ["ownerID"]
      296 GETTABLEKS                       R24 R20 K37 ["id"]
      298 SETTABLEKS                       R24 R23 K41 ["parentID"]
      300 SETTABLEKS                       R13 R23 K42 ["type"]
      302 LOADN                            R24 1
      303 SETTABLEKS                       R24 R23 K43 ["weight"]
      305 GETTABLEKS                       R24 R0 K13 ["_idToElement"]
      307 MOVE                             R26 R12
      308 MOVE                             R27 R23
      309 NAMECALL                         R24 R24 K28 ["set"]
      311 CALL                             R24 3 0
      312 FASTCALL2                        TABLE_INSERT R4 R12 ; [+5]
      314 MOVE                             R25 R4
      315 MOVE                             R26 R12
      316 GETIMPORT                        R24 K10 [table.insert]
      318 CALL                             R24 2 0
      319 MOVE                             R26 R20
      320 LOADN                            R27 1
      321 NAMECALL                         R24 R0 K50 ["_adjustParentTreeWeight"]
      323 CALL                             R24 3 0
      324 LOADN                            R24 0
      325 JUMPIFNOTLT                      R24 R14 ; [+346]
      327 GETTABLEKS                       R24 R0 K51 ["_ownersMap"]
      329 MOVE                             R26 R14
      330 NAMECALL                         R24 R24 K48 ["get"]
      332 CALL                             R24 2 1
      333 JUMPIFNOTEQKNIL                  R24 ; [+13]
      335 GETUPVAL                         R25 9
      336 GETTABLEKS                       R25 R25 K17 ["new"]
      338 CALL                             R25 0 1
      339 MOVE                             R24 R25
      340 GETTABLEKS                       R25 R0 K51 ["_ownersMap"]
      342 MOVE                             R27 R14
      343 MOVE                             R28 R24
      344 NAMECALL                         R25 R25 K28 ["set"]
      346 CALL                             R25 3 0
      347 MOVE                             R27 R12
      348 NAMECALL                         R25 R24 K52 ["add"]
      350 CALL                             R25 2 0
      351 JUMP                             ; [+320]
      352 GETUPVAL                         R12 10
      353 JUMPIFNOTEQ                      R11 R12 ; [+203]
      355 ADDK                             R13 R6 K7 [1]
      356 GETTABLE                         R12 R1 R13
      357 ADDK                             R6 R6 K11 [2]
      358 LOADN                            R15 1
      359 MOVE                             R13 R12
      360 LOADN                            R14 1
      361 FORNPREP                         R13
      362 GETTABLE                         R16 R1 R6
      363 GETTABLEKS                       R17 R0 K13 ["_idToElement"]
      365 MOVE                             R19 R16
      366 NAMECALL                         R17 R17 K14 ["has"]
      368 CALL                             R17 2 1
      369 JUMPIF                           R17 ; [+16]
      370 GETIMPORT                        R17 K16 [error]
      372 GETUPVAL                         R18 6
      373 GETTABLEKS                       R18 R18 K17 ["new"]
      375 LOADK                            R19 K53 ["Cannot remove node %s because no matching node was found in the Store."]
      376 FASTCALL1                        TOSTRING R16 ; [+3]
      377 MOVE                             R22 R16
      378 GETIMPORT                        R21 K20 [tostring]
      380 CALL                             R21 1 1
      381 NAMECALL                         R19 R19 K21 ["format"]
      383 CALL                             R19 2 -1
      384 CALL                             R18 -1 -1
      385 CALL                             R17 -1 0
      386 ADDK                             R6 R6 K7 [1]
      387 GETTABLEKS                       R17 R0 K13 ["_idToElement"]
      389 MOVE                             R19 R16
      390 NAMECALL                         R17 R17 K48 ["get"]
      392 CALL                             R17 2 1
      393 GETTABLEKS                       R18 R17 K33 ["children"]
      395 GETTABLEKS                       R19 R17 K40 ["ownerID"]
      397 GETTABLEKS                       R20 R17 K41 ["parentID"]
      399 GETTABLEKS                       R21 R17 K43 ["weight"]
      401 LENGTH                           R22 R18
      402 LOADN                            R23 0
      403 JUMPIFNOTLT                      R23 R22 ; [+17]
      405 GETIMPORT                        R22 K16 [error]
      407 GETUPVAL                         R23 6
      408 GETTABLEKS                       R23 R23 K17 ["new"]
      410 GETIMPORT                        R24 K24 [string.format]
      412 LOADK                            R25 K54 ["Node %s was removed before its children."]
      413 FASTCALL1                        TOSTRING R16 ; [+3]
      414 MOVE                             R27 R16
      415 GETIMPORT                        R26 K20 [tostring]
      417 CALL                             R26 1 1
      418 CALL                             R24 2 -1
      419 CALL                             R23 -1 -1
      420 CALL                             R22 -1 0
      421 GETTABLEKS                       R22 R0 K13 ["_idToElement"]
      423 MOVE                             R24 R16
      424 NAMECALL                         R22 R22 K55 ["delete"]
      426 CALL                             R22 2 0
      427 LOADNIL                          R22
      428 JUMPIFNOTEQKN                    R20 K56 [0] ; [+39]
      430 GETUPVAL                         R23 0
      431 JUMPIFNOT                        R23 ; [+12]
      432 GETUPVAL                         R23 2
      433 LOADK                            R24 K57 ["Remove"]
      434 GETIMPORT                        R25 K24 [string.format]
      436 LOADK                            R26 K58 ["node %s root"]
      437 FASTCALL1                        TOSTRING R16 ; [+3]
      438 MOVE                             R28 R16
      439 GETIMPORT                        R27 K20 [tostring]
      441 CALL                             R27 1 1
      442 CALL                             R25 2 -1
      443 CALL                             R23 -1 0
      444 GETUPVAL                         R23 4
      445 GETTABLEKS                       R23 R23 K59 ["filter"]
      447 GETTABLEKS                       R24 R0 K26 ["_roots"]
      449 NEWCLOSURE                       R25 P1
      450 CAPTURE                          VAL R16
      451 CALL                             R23 2 1
      452 SETTABLEKS                       R23 R0 K26 ["_roots"]
      454 GETTABLEKS                       R23 R0 K27 ["_rootIDToRendererID"]
      456 MOVE                             R25 R16
      457 NAMECALL                         R23 R23 K55 ["delete"]
      459 CALL                             R23 2 0
      460 GETTABLEKS                       R23 R0 K29 ["_rootIDToCapabilities"]
      462 MOVE                             R25 R16
      463 NAMECALL                         R23 R23 K55 ["delete"]
      465 CALL                             R23 2 0
      466 LOADB                            R2 1
      467 JUMP                             ; [+60]
      468 GETUPVAL                         R23 0
      469 JUMPIFNOT                        R23 ; [+17]
      470 GETUPVAL                         R23 2
      471 LOADK                            R24 K57 ["Remove"]
      472 GETIMPORT                        R25 K24 [string.format]
      474 LOADK                            R26 K60 ["node %s from parent %s"]
      475 FASTCALL1                        TOSTRING R16 ; [+3]
      476 MOVE                             R28 R16
      477 GETIMPORT                        R27 K20 [tostring]
      479 CALL                             R27 1 1
      480 FASTCALL1                        TOSTRING R20 ; [+3]
      481 MOVE                             R29 R20
      482 GETIMPORT                        R28 K20 [tostring]
      484 CALL                             R28 1 1
      485 CALL                             R25 3 -1
      486 CALL                             R23 -1 0
      487 GETTABLEKS                       R23 R0 K13 ["_idToElement"]
      489 MOVE                             R25 R20
      490 NAMECALL                         R23 R23 K48 ["get"]
      492 CALL                             R23 2 1
      493 MOVE                             R22 R23
      494 JUMPIFNOTEQKNIL                  R22 ; [+18]
      496 GETIMPORT                        R23 K16 [error]
      498 LOADK                            R24 K61 ["Cannot remove node %s from parent %s because no matching node was found in the Store."]
      499 FASTCALL1                        TOSTRING R16 ; [+3]
      500 MOVE                             R27 R16
      501 GETIMPORT                        R26 K20 [tostring]
      503 CALL                             R26 1 1
      504 FASTCALL1                        TOSTRING R20 ; [+3]
      505 MOVE                             R28 R20
      506 GETIMPORT                        R27 K20 [tostring]
      508 CALL                             R27 1 1
      509 NAMECALL                         R24 R24 K21 ["format"]
      511 CALL                             R24 3 -1
      512 CALL                             R23 -1 0
      513 GETUPVAL                         R23 4
      514 GETTABLEKS                       R23 R23 K62 ["indexOf"]
      516 GETTABLEKS                       R24 R22 K33 ["children"]
      518 MOVE                             R25 R16
      519 CALL                             R23 2 1
      520 GETUPVAL                         R24 4
      521 GETTABLEKS                       R24 R24 K63 ["splice"]
      523 GETTABLEKS                       R25 R22 K33 ["children"]
      525 MOVE                             R26 R23
      526 LOADN                            R27 1
      527 CALL                             R24 3 0
      528 MOVE                             R25 R22
      529 MINUS                            R26 R21
      530 NAMECALL                         R23 R0 K50 ["_adjustParentTreeWeight"]
      532 CALL                             R23 3 0
      533 SETTABLE                         R20 R5 R16
      534 GETTABLEKS                       R23 R0 K51 ["_ownersMap"]
      536 MOVE                             R25 R16
      537 NAMECALL                         R23 R23 K55 ["delete"]
      539 CALL                             R23 2 0
      540 LOADN                            R23 0
      541 JUMPIFNOTLT                      R23 R19 ; [+13]
      543 GETTABLEKS                       R23 R0 K51 ["_ownersMap"]
      545 MOVE                             R25 R19
      546 NAMECALL                         R23 R23 K48 ["get"]
      548 CALL                             R23 2 1
      549 JUMPIFEQKNIL                     R23 ; [+5]
      551 MOVE                             R26 R16
      552 NAMECALL                         R24 R23 K55 ["delete"]
      554 CALL                             R24 2 0
      555 FORNLOOP                         R13
      556 JUMP                             ; [+115]
      557 GETUPVAL                         R12 11
      558 JUMPIFNOTEQ                      R11 R12 ; [+98]
      560 ADDK                             R13 R6 K7 [1]
      561 GETTABLE                         R12 R1 R13
      562 ADDK                             R14 R6 K11 [2]
      563 GETTABLE                         R13 R1 R14
      564 ADDK                             R6 R6 K12 [3]
      565 GETTABLEKS                       R14 R0 K13 ["_idToElement"]
      567 MOVE                             R16 R12
      568 NAMECALL                         R14 R14 K14 ["has"]
      570 CALL                             R14 2 1
      571 JUMPIF                           R14 ; [+16]
      572 GETIMPORT                        R14 K16 [error]
      574 GETUPVAL                         R15 6
      575 GETTABLEKS                       R15 R15 K17 ["new"]
      577 LOADK                            R16 K64 ["Cannot reorder children for node %s because no matching node was found in the Store."]
      578 FASTCALL1                        TOSTRING R12 ; [+3]
      579 MOVE                             R19 R12
      580 GETIMPORT                        R18 K20 [tostring]
      582 CALL                             R18 1 1
      583 NAMECALL                         R16 R16 K21 ["format"]
      585 CALL                             R16 2 -1
      586 CALL                             R15 -1 -1
      587 CALL                             R14 -1 0
      588 GETTABLEKS                       R14 R0 K13 ["_idToElement"]
      590 MOVE                             R16 R12
      591 NAMECALL                         R14 R14 K48 ["get"]
      593 CALL                             R14 2 1
      594 GETTABLEKS                       R15 R14 K33 ["children"]
      596 LENGTH                           R16 R15
      597 JUMPIFEQ                         R16 R13 ; [+5]
      599 GETIMPORT                        R16 K16 [error]
      601 LOADK                            R17 K65 ["Children cannot be added or removed during a reorder operation."]
      602 CALL                             R16 1 0
      603 LOADN                            R18 1
      604 MOVE                             R16 R13
      605 LOADN                            R17 1
      606 FORNPREP                         R16
      607 ADD                              R21 R6 R18
      608 SUBK                             R20 R21 K7 [1]
      609 GETTABLE                         R19 R1 R20
      610 SETTABLE                         R19 R15 R18
      611 GETUPVAL                         R20 12
      612 GETTABLEKS                       R20 R20 K66 ["__DEV__"]
      614 JUMPIFNOT                        R20 ; [+17]
      615 GETTABLEKS                       R20 R0 K13 ["_idToElement"]
      617 MOVE                             R22 R19
      618 NAMECALL                         R20 R20 K48 ["get"]
      620 CALL                             R20 2 1
      621 JUMPIFEQKNIL                     R20 ; [+5]
      623 GETTABLEKS                       R21 R20 K41 ["parentID"]
      625 JUMPIFEQ                         R21 R12 ; [+6]
      627 GETUPVAL                         R21 1
      628 GETTABLEKS                       R21 R21 K15 ["error"]
      630 LOADK                            R22 K65 ["Children cannot be added or removed during a reorder operation."]
      631 CALL                             R21 1 0
      632 FORNLOOP                         R16
      633 ADD                              R6 R6 R13
      634 GETUPVAL                         R16 12
      635 GETTABLEKS                       R16 R16 K67 ["__DEBUG__"]
      637 JUMPIFNOT                        R16 ; [+34]
      638 GETUPVAL                         R16 2
      639 LOADK                            R17 K68 ["Re-order"]
      640 GETIMPORT                        R18 K24 [string.format]
      642 LOADK                            R19 K69 ["Node %s children %s"]
      643 FASTCALL1                        TOSTRING R12 ; [+3]
      644 MOVE                             R21 R12
      645 GETIMPORT                        R20 K20 [tostring]
      647 CALL                             R20 1 1
      648 GETUPVAL                         R21 4
      649 GETTABLEKS                       R21 R21 K70 ["join"]
      651 MOVE                             R22 R15
      652 LOADK                            R23 K5 [","]
      653 CALL                             R21 2 -1
      654 CALL                             R18 -1 -1
      655 CALL                             R16 -1 0
      656 JUMP                             ; [+15]
      657 GETUPVAL                         R12 13
      658 JUMPIFNOTEQ                      R11 R12 ; [+3]
      660 ADDK                             R6 R6 K12 [3]
      661 JUMP                             ; [+10]
      662 GETIMPORT                        R12 K16 [error]
      664 LOADK                            R14 K71 ["Unsupported Bridge operation "]
      665 FASTCALL1                        TOSTRING R11 ; [+3]
      666 MOVE                             R16 R11
      667 GETIMPORT                        R15 K20 [tostring]
      669 CALL                             R15 1 1
      670 CONCAT                           R13 R14 R15
      671 CALL                             R12 1 0
      672 JUMPBACK                         ; [-615]
      673 GETTABLEKS                       R11 R0 K72 ["_revision"]
      675 ADDK                             R11 R11 K7 [1]
      676 SETTABLEKS                       R11 R0 K72 ["_revision"]
      678 JUMPIFNOT                        R2 ; [+39]
      679 GETTABLEKS                       R11 R0 K73 ["_supportsProfiling"]
      681 LOADB                            R12 0
      682 SETTABLEKS                       R12 R0 K74 ["_hasOwnerMetadata"]
      684 LOADB                            R12 0
      685 SETTABLEKS                       R12 R0 K73 ["_supportsProfiling"]
      687 GETTABLEKS                       R12 R0 K29 ["_rootIDToCapabilities"]
      689 LOADNIL                          R13
      690 LOADNIL                          R14
      691 FORGPREP                         R12
      692 GETTABLEKS                       R17 R16 K30 ["hasOwnerMetadata"]
      694 GETTABLEKS                       R18 R16 K31 ["supportsProfiling"]
      696 JUMPIFNOT                        R17 ; [+3]
      697 LOADB                            R19 1
      698 SETTABLEKS                       R19 R0 K74 ["_hasOwnerMetadata"]
      700 JUMPIFNOT                        R18 ; [+3]
      701 LOADB                            R19 1
      702 SETTABLEKS                       R19 R0 K73 ["_supportsProfiling"]
      704 FORGLOOP                         R12 2 ; [-13]
      706 LOADK                            R14 K75 ["roots"]
      707 NAMECALL                         R12 R0 K76 ["emit"]
      709 CALL                             R12 2 0
      710 GETTABLEKS                       R12 R0 K73 ["_supportsProfiling"]
      712 JUMPIFEQ                         R12 R11 ; [+5]
      714 LOADK                            R14 K31 ["supportsProfiling"]
      715 NAMECALL                         R12 R0 K76 ["emit"]
      717 CALL                             R12 2 0
      718 GETUPVAL                         R11 0
      719 JUMPIFNOT                        R11 ; [+23]
      720 GETIMPORT                        R11 K78 [require]
      722 GETIMPORT                        R12 K80 [script]
      724 GETTABLEKS                       R12 R12 K81 ["Parent"]
      726 GETTABLEKS                       R12 R12 K82 ["utils"]
      728 CALL                             R11 1 1
      729 GETTABLEKS                       R12 R11 K83 ["printStore"]
      731 GETUPVAL                         R13 1
      732 GETTABLEKS                       R13 R13 K84 ["log"]
      734 MOVE                             R14 R12
      735 MOVE                             R15 R0
      736 LOADB                            R16 1
      737 CALL                             R14 2 -1
      738 CALL                             R13 -1 0
      739 GETUPVAL                         R13 1
      740 GETTABLEKS                       R13 R13 K85 ["groupEnd"]
      742 CALL                             R13 0 0
      743 LOADK                            R13 K86 ["mutated"]
      744 NEWTABLE                         R14 0 2
      746 MOVE                             R15 R4
      747 MOVE                             R16 R5
      748 SETLIST                          R14 R15 2 [1]
      750 NAMECALL                         R11 R0 K76 ["emit"]
      752 CALL                             R11 3 0
      753 CLOSEUPVALS                      R6
      754 RETURN                           R0 0

PROTO_48:
        0 SETTABLEKS                       R1 R0 K0 ["_componentFilters"]
        2 GETUPVAL                         R2 0
        3 MOVE                             R3 R1
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_49:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+4]
        2 GETUPVAL                         R1 1
        3 LOADK                            R2 K0 ["onBridgeShutdown"]
        4 LOADK                            R3 K1 ["unsubscribing from Bridge"]
        5 CALL                             R1 2 0
        6 GETTABLEKS                       R1 R0 K2 ["_bridge"]
        8 LOADK                            R3 K3 ["operations"]
        9 GETTABLEKS                       R4 R0 K4 ["onBridgeOperations"]
       11 NAMECALL                         R1 R1 K5 ["removeListener"]
       13 CALL                             R1 3 0
       14 GETTABLEKS                       R1 R0 K2 ["_bridge"]
       16 LOADK                            R3 K6 ["shutdown"]
       17 GETTABLEKS                       R4 R0 K0 ["onBridgeShutdown"]
       19 NAMECALL                         R1 R1 K5 ["removeListener"]
       21 CALL                             R1 3 0
       22 GETTABLEKS                       R1 R0 K2 ["_bridge"]
       24 LOADK                            R3 K7 ["isBackendStorageAPISupported"]
       25 GETTABLEKS                       R4 R0 K8 ["onBridgeStorageSupported"]
       27 NAMECALL                         R1 R1 K5 ["removeListener"]
       29 CALL                             R1 3 0
       30 RETURN                           R0 0

PROTO_50:
        0 SETTABLEKS                       R1 R0 K0 ["_isBackendStorageAPISupported"]
        2 LOADK                            R4 K1 ["supportsReloadAndProfile"]
        3 NAMECALL                         R2 R0 K2 ["emit"]
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_51:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["_unsupportedRendererVersionDetected"]
        3 LOADK                            R3 K1 ["unsupportedRendererVersionDetected"]
        4 NAMECALL                         R1 R0 K2 ["emit"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["ReactGlobals"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K6 ["LuauPolyfill"]
       18 CALL                             R2 1 1
       19 GETTABLEKS                       R3 R2 K7 ["util"]
       21 GETTABLEKS                       R3 R3 K8 ["inspect"]
       23 GETTABLEKS                       R4 R2 K9 ["Array"]
       25 GETTABLEKS                       R5 R2 K10 ["Error"]
       27 GETTABLEKS                       R6 R2 K11 ["Map"]
       29 GETTABLEKS                       R7 R2 K12 ["Object"]
       31 GETTABLEKS                       R8 R2 K13 ["Set"]
       33 GETIMPORT                        R9 K4 [require]
       35 GETTABLEKS                       R10 R0 K14 ["Shared"]
       37 CALL                             R9 1 1
       38 GETTABLEKS                       R9 R9 K15 ["console"]
       40 GETIMPORT                        R10 K4 [require]
       42 GETIMPORT                        R11 K1 [script]
       44 GETTABLEKS                       R11 R11 K2 ["Parent"]
       46 GETTABLEKS                       R11 R11 K2 ["Parent"]
       48 GETTABLEKS                       R11 R11 K16 ["events"]
       50 CALL                             R10 1 1
       51 GETIMPORT                        R11 K4 [require]
       53 GETIMPORT                        R12 K1 [script]
       55 GETTABLEKS                       R12 R12 K2 ["Parent"]
       57 GETTABLEKS                       R12 R12 K2 ["Parent"]
       59 GETTABLEKS                       R12 R12 K17 ["constants"]
       61 CALL                             R11 1 1
       62 GETTABLEKS                       R12 R11 K18 ["TREE_OPERATION_ADD"]
       64 GETTABLEKS                       R13 R11 K19 ["TREE_OPERATION_REMOVE"]
       66 GETTABLEKS                       R14 R11 K20 ["TREE_OPERATION_REORDER_CHILDREN"]
       68 GETTABLEKS                       R15 R11 K21 ["TREE_OPERATION_UPDATE_TREE_BASE_DURATION"]
       70 GETIMPORT                        R16 K4 [require]
       72 GETIMPORT                        R17 K1 [script]
       74 GETTABLEKS                       R17 R17 K2 ["Parent"]
       76 GETTABLEKS                       R17 R17 K2 ["Parent"]
       78 GETTABLEKS                       R17 R17 K22 ["types"]
       80 CALL                             R16 1 1
       81 GETTABLEKS                       R17 R16 K23 ["ElementTypeRoot"]
       83 GETIMPORT                        R18 K4 [require]
       85 GETIMPORT                        R19 K1 [script]
       87 GETTABLEKS                       R19 R19 K2 ["Parent"]
       89 GETTABLEKS                       R19 R19 K2 ["Parent"]
       91 GETTABLEKS                       R19 R19 K24 ["utils"]
       93 CALL                             R18 1 1
       94 GETTABLEKS                       R19 R18 K25 ["getSavedComponentFilters"]
       96 GETTABLEKS                       R20 R18 K26 ["saveComponentFilters"]
       98 GETTABLEKS                       R21 R18 K27 ["separateDisplayNameAndHOCs"]
      100 GETTABLEKS                       R22 R18 K28 ["shallowDiffers"]
      102 GETTABLEKS                       R23 R18 K29 ["utfDecodeString"]
      104 GETIMPORT                        R24 K4 [require]
      106 GETIMPORT                        R25 K1 [script]
      108 GETTABLEKS                       R25 R25 K2 ["Parent"]
      110 GETTABLEKS                       R25 R25 K2 ["Parent"]
      112 GETTABLEKS                       R25 R25 K30 ["storage"]
      114 CALL                             R24 1 1
      115 GETTABLEKS                       R25 R24 K31 ["localStorageGetItem"]
      117 GETTABLEKS                       R26 R24 K32 ["localStorageSetItem"]
      119 GETTABLEKS                       R27 R11 K33 ["__DEBUG__"]
      121 GETIMPORT                        R28 K4 [require]
      123 GETIMPORT                        R29 K1 [script]
      125 GETTABLEKS                       R29 R29 K2 ["Parent"]
      127 GETTABLEKS                       R29 R29 K34 ["ProfilerStore"]
      129 CALL                             R28 1 1
      130 GETIMPORT                        R29 K4 [require]
      132 GETIMPORT                        R30 K1 [script]
      134 GETTABLEKS                       R30 R30 K2 ["Parent"]
      136 GETTABLEKS                       R30 R30 K2 ["Parent"]
      138 GETTABLEKS                       R30 R30 K35 ["devtools"]
      140 GETTABLEKS                       R30 R30 K36 ["views"]
      142 GETTABLEKS                       R30 R30 K37 ["Components"]
      144 GETTABLEKS                       R30 R30 K22 ["types"]
      146 CALL                             R29 1 1
      147 GETIMPORT                        R30 K4 [require]
      149 GETIMPORT                        R31 K1 [script]
      151 GETTABLEKS                       R31 R31 K2 ["Parent"]
      153 GETTABLEKS                       R31 R31 K2 ["Parent"]
      155 GETTABLEKS                       R31 R31 K22 ["types"]
      157 CALL                             R30 1 1
      158 GETIMPORT                        R31 K4 [require]
      160 GETIMPORT                        R32 K1 [script]
      162 GETTABLEKS                       R32 R32 K2 ["Parent"]
      164 GETTABLEKS                       R32 R32 K2 ["Parent"]
      166 GETTABLEKS                       R32 R32 K38 ["bridge"]
      168 CALL                             R31 1 1
      169 GETIMPORT                        R32 K4 [require]
      171 GETIMPORT                        R33 K1 [script]
      173 GETTABLEKS                       R33 R33 K2 ["Parent"]
      175 GETTABLEKS                       R33 R33 K22 ["types"]
      177 CALL                             R32 1 1
      178 DUPCLOSURE                       R33 K39 [PROTO_0]
      179 CAPTURE                          VAL R27
      180 NEWTABLE                         R35 0 0
      182 DUPTABLE                         R36 K41 [{"__index"}]
      183 SETTABLEKS                       R10 R36 K40 ["__index"]
      185 FASTCALL2                        SETMETATABLE R35 R36 ; [+3]
      187 GETIMPORT                        R34 K43 [setmetatable]
      189 CALL                             R34 2 1
      190 DUPTABLE                         R35 K41 [{"__index"}]
      191 SETTABLEKS                       R34 R35 K40 ["__index"]
      193 DUPCLOSURE                       R36 K44 [PROTO_7]
      194 CAPTURE                          VAL R10
      195 CAPTURE                          VAL R35
      196 CAPTURE                          VAL R6
      197 CAPTURE                          VAL R27
      198 CAPTURE                          VAL R33
      199 CAPTURE                          VAL R25
      200 CAPTURE                          VAL R19
      201 CAPTURE                          VAL R28
      202 SETTABLEKS                       R36 R34 K45 ["new"]
      204 DUPCLOSURE                       R36 K46 [PROTO_8]
      205 SETTABLEKS                       R36 R34 K47 ["assertExpectedRootMapSizes"]
      207 DUPCLOSURE                       R36 K48 [PROTO_9]
      208 CAPTURE                          VAL R5
      209 CAPTURE                          VAL R3
      210 SETTABLEKS                       R36 R34 K49 ["assertMapSizeMatchesRootCount"]
      212 DUPCLOSURE                       R36 K50 [PROTO_10]
      213 SETTABLEKS                       R36 R34 K51 ["getCollapseNodesByDefault"]
      215 DUPCLOSURE                       R36 K52 [PROTO_11]
      216 CAPTURE                          VAL R26
      217 SETTABLEKS                       R36 R34 K53 ["setCollapseNodesByDefault"]
      219 DUPCLOSURE                       R36 K54 [PROTO_12]
      220 SETTABLEKS                       R36 R34 K55 ["getComponentFilters"]
      222 DUPCLOSURE                       R36 K56 [PROTO_15]
      223 CAPTURE                          VAL R4
      224 CAPTURE                          VAL R22
      225 CAPTURE                          VAL R20
      226 SETTABLEKS                       R36 R34 K57 ["setComponentFilters"]
      228 DUPCLOSURE                       R36 K58 [PROTO_16]
      229 SETTABLEKS                       R36 R34 K59 ["getHasOwnerMetadata"]
      231 DUPCLOSURE                       R36 K60 [PROTO_17]
      232 SETTABLEKS                       R36 R34 K61 ["getNativeStyleEditorValidAttributes"]
      234 DUPCLOSURE                       R36 K62 [PROTO_18]
      235 SETTABLEKS                       R36 R34 K63 ["getNumElements"]
      237 DUPCLOSURE                       R36 K64 [PROTO_19]
      238 SETTABLEKS                       R36 R34 K65 ["getProfilerStore"]
      240 DUPCLOSURE                       R36 K66 [PROTO_20]
      241 SETTABLEKS                       R36 R34 K67 ["getRecordChangeDescriptions"]
      243 DUPCLOSURE                       R36 K68 [PROTO_21]
      244 CAPTURE                          VAL R26
      245 SETTABLEKS                       R36 R34 K69 ["setRecordChangeDescriptions"]
      247 DUPCLOSURE                       R36 K70 [PROTO_22]
      248 SETTABLEKS                       R36 R34 K71 ["getRevision"]
      250 DUPCLOSURE                       R36 K72 [PROTO_23]
      251 SETTABLEKS                       R36 R34 K73 ["getRootIDToRendererID"]
      253 DUPCLOSURE                       R36 K74 [PROTO_24]
      254 SETTABLEKS                       R36 R34 K75 ["getRoots"]
      256 DUPCLOSURE                       R36 K76 [PROTO_25]
      257 SETTABLEKS                       R36 R34 K77 ["getSupportsNativeInspection"]
      259 DUPCLOSURE                       R36 K78 [PROTO_26]
      260 SETTABLEKS                       R36 R34 K79 ["getSupportsNativeStyleEditor"]
      262 DUPCLOSURE                       R36 K80 [PROTO_27]
      263 SETTABLEKS                       R36 R34 K81 ["getSupportsProfiling"]
      265 DUPCLOSURE                       R36 K82 [PROTO_28]
      266 SETTABLEKS                       R36 R34 K83 ["getSupportsReloadAndProfile"]
      268 DUPCLOSURE                       R36 K84 [PROTO_29]
      269 SETTABLEKS                       R36 R34 K85 ["getSupportsTraceUpdates"]
      271 DUPCLOSURE                       R36 K86 [PROTO_30]
      272 SETTABLEKS                       R36 R34 K87 ["getUnsupportedRendererVersionDetected"]
      274 DUPCLOSURE                       R36 K88 [PROTO_31]
      275 SETTABLEKS                       R36 R34 K89 ["containsElement"]
      277 DUPCLOSURE                       R36 K90 [PROTO_32]
      278 CAPTURE                          VAL R9
      279 SETTABLEKS                       R36 R34 K91 ["getElementAtIndex"]
      281 DUPCLOSURE                       R36 K92 [PROTO_34]
      282 SETTABLEKS                       R36 R34 K93 ["getElementIDAtIndex"]
      284 DUPCLOSURE                       R36 K94 [PROTO_35]
      285 CAPTURE                          VAL R9
      286 SETTABLEKS                       R36 R34 K95 ["getElementByID"]
      288 DUPCLOSURE                       R36 K96 [PROTO_36]
      289 SETTABLEKS                       R36 R34 K97 ["getIndexOfElementID"]
      291 DUPCLOSURE                       R36 K98 [PROTO_38]
      292 CAPTURE                          VAL R7
      293 CAPTURE                          VAL R6
      294 CAPTURE                          VAL R4
      295 SETTABLEKS                       R36 R34 K99 ["getOwnersListForElement"]
      297 DUPCLOSURE                       R36 K100 [PROTO_39]
      298 SETTABLEKS                       R36 R34 K101 ["getRendererIDForElement"]
      300 DUPCLOSURE                       R36 K102 [PROTO_40]
      301 SETTABLEKS                       R36 R34 K103 ["getRootIDForElement"]
      303 DUPCLOSURE                       R36 K104 [PROTO_41]
      304 SETTABLEKS                       R36 R34 K105 ["isInsideCollapsedSubTree"]
      306 DUPCLOSURE                       R36 K106 [PROTO_42]
      307 CAPTURE                          VAL R17
      308 SETTABLEKS                       R36 R34 K107 ["toggleIsCollapsed"]
      310 DUPCLOSURE                       R36 K108 [PROTO_43]
      311 SETTABLEKS                       R36 R34 K109 ["_adjustParentTreeWeight"]
      313 DUPCLOSURE                       R36 K110 [PROTO_44]
      314 SETTABLEKS                       R36 R34 K111 ["onBridgeNativeStyleEditorSupported"]
      316 DUPCLOSURE                       R36 K112 [PROTO_47]
      317 CAPTURE                          VAL R27
      318 CAPTURE                          VAL R9
      319 CAPTURE                          VAL R33
      320 CAPTURE                          VAL R23
      321 CAPTURE                          VAL R4
      322 CAPTURE                          VAL R12
      323 CAPTURE                          VAL R5
      324 CAPTURE                          VAL R17
      325 CAPTURE                          VAL R21
      326 CAPTURE                          VAL R8
      327 CAPTURE                          VAL R13
      328 CAPTURE                          VAL R14
      329 CAPTURE                          VAL R1
      330 CAPTURE                          VAL R15
      331 SETTABLEKS                       R36 R34 K113 ["onBridgeOperations"]
      333 DUPCLOSURE                       R36 K114 [PROTO_48]
      334 CAPTURE                          VAL R20
      335 SETTABLEKS                       R36 R34 K115 ["onBridgeOverrideComponentFilters"]
      337 DUPCLOSURE                       R36 K116 [PROTO_49]
      338 CAPTURE                          VAL R27
      339 CAPTURE                          VAL R33
      340 SETTABLEKS                       R36 R34 K117 ["onBridgeShutdown"]
      342 DUPCLOSURE                       R36 K118 [PROTO_50]
      343 SETTABLEKS                       R36 R34 K119 ["onBridgeStorageSupported"]
      345 DUPCLOSURE                       R36 K120 [PROTO_51]
      346 SETTABLEKS                       R36 R34 K121 ["onBridgeUnsupportedRendererVersion"]
      348 RETURN                           R34 1
