PROTO_0:
        0 RETURN                           R0 1

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 RETURN                           R0 0

PROTO_4:
        0 RETURN                           R0 0

PROTO_5:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETIMPORT                        R1 K1 [print]
        5 MOVE                             R2 R0
        6 GETVARARGS                       R3 -1
        7 CALL                             R1 -1 0
        8 RETURN                           R0 0

PROTO_6:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETUPVAL                         R1 1
        3 GETVARARGS                       R2 -1
        4 CALL                             R0 -1 0
        5 RETURN                           R0 0

PROTO_7:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["new"]
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 1
        5 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
        7 GETIMPORT                        R1 K2 [setmetatable]
        9 CALL                             R1 2 1
       10 SETTABLEKS                       R0 R1 K3 ["_bridge"]
       12 LOADB                            R2 0
       13 SETTABLEKS                       R2 R1 K4 ["_isProfiling"]
       15 LOADB                            R2 0
       16 SETTABLEKS                       R2 R1 K5 ["_recordChangeDescriptions"]
       18 NEWTABLE                         R2 0 0
       20 SETTABLEKS                       R2 R1 K6 ["_rendererInterfaces"]
       22 LOADNIL                          R2
       23 SETTABLEKS                       R2 R1 K7 ["_persistedSelection"]
       25 LOADNIL                          R2
       26 SETTABLEKS                       R2 R1 K8 ["_persistedSelectionMatch"]
       28 LOADB                            R2 0
       29 SETTABLEKS                       R2 R1 K9 ["_traceUpdatesEnabled"]
       31 GETUPVAL                         R2 2
       32 GETUPVAL                         R3 3
       33 CALL                             R2 1 1
       34 JUMPIFNOTEQKS                    R2 K10 ["true"] ; [+19]
       36 GETUPVAL                         R3 2
       37 GETUPVAL                         R4 4
       38 CALL                             R3 1 1
       39 JUMPIFEQKS                       R3 K10 ["true"] ; [+2]
       41 LOADB                            R2 0 +1
       42 LOADB                            R2 1
       43 SETTABLEKS                       R2 R1 K5 ["_recordChangeDescriptions"]
       45 LOADB                            R2 1
       46 SETTABLEKS                       R2 R1 K4 ["_isProfiling"]
       48 GETUPVAL                         R2 5
       49 GETUPVAL                         R3 4
       50 CALL                             R2 1 0
       51 GETUPVAL                         R2 5
       52 GETUPVAL                         R3 3
       53 CALL                             R2 1 0
       54 GETUPVAL                         R2 2
       55 GETUPVAL                         R3 6
       56 CALL                             R2 1 1
       57 JUMPIFEQKNIL                     R2 ; [+8]
       59 GETUPVAL                         R3 7
       60 MOVE                             R5 R2
       61 NAMECALL                         R3 R3 K11 ["JSONDecode"]
       63 CALL                             R3 2 1
       64 SETTABLEKS                       R3 R1 K7 ["_persistedSelection"]
       66 NEWCLOSURE                       R3 P0
       67 CAPTURE                          VAL R1
       68 LOADK                            R6 K12 ["copyElementPath"]
       69 GETTABLEKS                       R8 R1 K12 ["copyElementPath"]
       71 NEWCLOSURE                       R7 P1
       72 CAPTURE                          VAL R8
       73 CAPTURE                          VAL R1
       74 NAMECALL                         R4 R0 K13 ["addListener"]
       76 CALL                             R4 3 0
       77 LOADK                            R6 K14 ["deletePath"]
       78 GETTABLEKS                       R8 R1 K14 ["deletePath"]
       80 NEWCLOSURE                       R7 P1
       81 CAPTURE                          VAL R8
       82 CAPTURE                          VAL R1
       83 NAMECALL                         R4 R0 K13 ["addListener"]
       85 CALL                             R4 3 0
       86 LOADK                            R6 K15 ["getProfilingData"]
       87 GETTABLEKS                       R8 R1 K15 ["getProfilingData"]
       89 NEWCLOSURE                       R7 P1
       90 CAPTURE                          VAL R8
       91 CAPTURE                          VAL R1
       92 NAMECALL                         R4 R0 K13 ["addListener"]
       94 CALL                             R4 3 0
       95 LOADK                            R6 K16 ["getProfilingStatus"]
       96 GETTABLEKS                       R8 R1 K16 ["getProfilingStatus"]
       98 NEWCLOSURE                       R7 P1
       99 CAPTURE                          VAL R8
      100 CAPTURE                          VAL R1
      101 NAMECALL                         R4 R0 K13 ["addListener"]
      103 CALL                             R4 3 0
      104 LOADK                            R6 K17 ["getOwnersList"]
      105 GETTABLEKS                       R8 R1 K17 ["getOwnersList"]
      107 NEWCLOSURE                       R7 P1
      108 CAPTURE                          VAL R8
      109 CAPTURE                          VAL R1
      110 NAMECALL                         R4 R0 K13 ["addListener"]
      112 CALL                             R4 3 0
      113 LOADK                            R6 K18 ["inspectElement"]
      114 GETTABLEKS                       R8 R1 K18 ["inspectElement"]
      116 NEWCLOSURE                       R7 P1
      117 CAPTURE                          VAL R8
      118 CAPTURE                          VAL R1
      119 NAMECALL                         R4 R0 K13 ["addListener"]
      121 CALL                             R4 3 0
      122 LOADK                            R6 K19 ["logElementToConsole"]
      123 GETTABLEKS                       R8 R1 K19 ["logElementToConsole"]
      125 NEWCLOSURE                       R7 P1
      126 CAPTURE                          VAL R8
      127 CAPTURE                          VAL R1
      128 NAMECALL                         R4 R0 K13 ["addListener"]
      130 CALL                             R4 3 0
      131 LOADK                            R6 K20 ["overrideSuspense"]
      132 GETTABLEKS                       R8 R1 K20 ["overrideSuspense"]
      134 NEWCLOSURE                       R7 P1
      135 CAPTURE                          VAL R8
      136 CAPTURE                          VAL R1
      137 NAMECALL                         R4 R0 K13 ["addListener"]
      139 CALL                             R4 3 0
      140 LOADK                            R6 K21 ["overrideValueAtPath"]
      141 GETTABLEKS                       R8 R1 K21 ["overrideValueAtPath"]
      143 NEWCLOSURE                       R7 P1
      144 CAPTURE                          VAL R8
      145 CAPTURE                          VAL R1
      146 NAMECALL                         R4 R0 K13 ["addListener"]
      148 CALL                             R4 3 0
      149 LOADK                            R6 K22 ["reloadAndProfile"]
      150 GETTABLEKS                       R8 R1 K22 ["reloadAndProfile"]
      152 NEWCLOSURE                       R7 P1
      153 CAPTURE                          VAL R8
      154 CAPTURE                          VAL R1
      155 NAMECALL                         R4 R0 K13 ["addListener"]
      157 CALL                             R4 3 0
      158 LOADK                            R6 K23 ["renamePath"]
      159 GETTABLEKS                       R8 R1 K23 ["renamePath"]
      161 NEWCLOSURE                       R7 P1
      162 CAPTURE                          VAL R8
      163 CAPTURE                          VAL R1
      164 NAMECALL                         R4 R0 K13 ["addListener"]
      166 CALL                             R4 3 0
      167 LOADK                            R6 K24 ["setTraceUpdatesEnabled"]
      168 GETTABLEKS                       R8 R1 K24 ["setTraceUpdatesEnabled"]
      170 NEWCLOSURE                       R7 P1
      171 CAPTURE                          VAL R8
      172 CAPTURE                          VAL R1
      173 NAMECALL                         R4 R0 K13 ["addListener"]
      175 CALL                             R4 3 0
      176 LOADK                            R6 K25 ["startProfiling"]
      177 GETTABLEKS                       R8 R1 K25 ["startProfiling"]
      179 NEWCLOSURE                       R7 P1
      180 CAPTURE                          VAL R8
      181 CAPTURE                          VAL R1
      182 NAMECALL                         R4 R0 K13 ["addListener"]
      184 CALL                             R4 3 0
      185 LOADK                            R6 K26 ["stopProfiling"]
      186 GETTABLEKS                       R8 R1 K26 ["stopProfiling"]
      188 NEWCLOSURE                       R7 P1
      189 CAPTURE                          VAL R8
      190 CAPTURE                          VAL R1
      191 NAMECALL                         R4 R0 K13 ["addListener"]
      193 CALL                             R4 3 0
      194 LOADK                            R6 K27 ["storeAsGlobal"]
      195 GETTABLEKS                       R8 R1 K27 ["storeAsGlobal"]
      197 NEWCLOSURE                       R7 P1
      198 CAPTURE                          VAL R8
      199 CAPTURE                          VAL R1
      200 NAMECALL                         R4 R0 K13 ["addListener"]
      202 CALL                             R4 3 0
      203 LOADK                            R6 K28 ["syncSelectionFromNativeElementsPanel"]
      204 GETTABLEKS                       R8 R1 K28 ["syncSelectionFromNativeElementsPanel"]
      206 NEWCLOSURE                       R7 P1
      207 CAPTURE                          VAL R8
      208 CAPTURE                          VAL R1
      209 NAMECALL                         R4 R0 K13 ["addListener"]
      211 CALL                             R4 3 0
      212 LOADK                            R6 K29 ["shutdown"]
      213 GETTABLEKS                       R8 R1 K29 ["shutdown"]
      215 NEWCLOSURE                       R7 P1
      216 CAPTURE                          VAL R8
      217 CAPTURE                          VAL R1
      218 NAMECALL                         R4 R0 K13 ["addListener"]
      220 CALL                             R4 3 0
      221 LOADK                            R6 K30 ["updateConsolePatchSettings"]
      222 GETTABLEKS                       R8 R1 K30 ["updateConsolePatchSettings"]
      224 NEWCLOSURE                       R7 P1
      225 CAPTURE                          VAL R8
      226 CAPTURE                          VAL R1
      227 NAMECALL                         R4 R0 K13 ["addListener"]
      229 CALL                             R4 3 0
      230 LOADK                            R6 K31 ["updateComponentFilters"]
      231 GETTABLEKS                       R8 R1 K31 ["updateComponentFilters"]
      233 NEWCLOSURE                       R7 P1
      234 CAPTURE                          VAL R8
      235 CAPTURE                          VAL R1
      236 NAMECALL                         R4 R0 K13 ["addListener"]
      238 CALL                             R4 3 0
      239 LOADK                            R6 K32 ["viewAttributeSource"]
      240 GETTABLEKS                       R8 R1 K32 ["viewAttributeSource"]
      242 NEWCLOSURE                       R7 P1
      243 CAPTURE                          VAL R8
      244 CAPTURE                          VAL R1
      245 NAMECALL                         R4 R0 K13 ["addListener"]
      247 CALL                             R4 3 0
      248 LOADK                            R6 K33 ["viewElementSource"]
      249 GETTABLEKS                       R8 R1 K33 ["viewElementSource"]
      251 NEWCLOSURE                       R7 P1
      252 CAPTURE                          VAL R8
      253 CAPTURE                          VAL R1
      254 NAMECALL                         R4 R0 K13 ["addListener"]
      256 CALL                             R4 3 0
      257 LOADK                            R6 K34 ["overrideContext"]
      258 GETTABLEKS                       R8 R1 K34 ["overrideContext"]
      260 NEWCLOSURE                       R7 P1
      261 CAPTURE                          VAL R8
      262 CAPTURE                          VAL R1
      263 NAMECALL                         R4 R0 K13 ["addListener"]
      265 CALL                             R4 3 0
      266 LOADK                            R6 K35 ["overrideHookState"]
      267 GETTABLEKS                       R8 R1 K35 ["overrideHookState"]
      269 NEWCLOSURE                       R7 P1
      270 CAPTURE                          VAL R8
      271 CAPTURE                          VAL R1
      272 NAMECALL                         R4 R0 K13 ["addListener"]
      274 CALL                             R4 3 0
      275 LOADK                            R6 K36 ["overrideProps"]
      276 GETTABLEKS                       R8 R1 K36 ["overrideProps"]
      278 NEWCLOSURE                       R7 P1
      279 CAPTURE                          VAL R8
      280 CAPTURE                          VAL R1
      281 NAMECALL                         R4 R0 K13 ["addListener"]
      283 CALL                             R4 3 0
      284 LOADK                            R6 K37 ["overrideState"]
      285 GETTABLEKS                       R8 R1 K37 ["overrideState"]
      287 NEWCLOSURE                       R7 P1
      288 CAPTURE                          VAL R8
      289 CAPTURE                          VAL R1
      290 NAMECALL                         R4 R0 K13 ["addListener"]
      292 CALL                             R4 3 0
      293 GETTABLEKS                       R4 R1 K4 ["_isProfiling"]
      295 JUMPIFNOT                        R4 ; [+5]
      296 LOADK                            R6 K38 ["profilingStatus"]
      297 LOADB                            R7 1
      298 NAMECALL                         R4 R0 K39 ["send"]
      300 CALL                             R4 3 0
      301 LOADK                            R6 K40 ["isBackendStorageAPISupported"]
      302 LOADB                            R7 1
      303 NAMECALL                         R4 R0 K39 ["send"]
      305 CALL                             R4 3 0
      306 GETUPVAL                         R4 8
      307 MOVE                             R5 R0
      308 MOVE                             R6 R1
      309 CALL                             R4 2 0
      310 RETURN                           R1 1

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["_rendererInterfaces"]
        2 RETURN                           R1 1

PROTO_10:
        0 GETTABLEKS                       R2 R1 K0 ["id"]
        2 GETTABLEKS                       R3 R1 K1 ["path"]
        4 GETTABLEKS                       R4 R1 K2 ["rendererID"]
        6 GETTABLEKS                       R6 R0 K3 ["_rendererInterfaces"]
        8 GETTABLE                         R5 R6 R4
        9 JUMPIFNOTEQKNIL                  R5 ; [+12]
       11 GETUPVAL                         R7 0
       12 GETTABLEKS                       R6 R7 K4 ["warn"]
       14 GETIMPORT                        R7 K7 [string.format]
       16 LOADK                            R8 K8 ["Invalid renderer id \"%d\" for element \"%d\""]
       17 MOVE                             R9 R4
       18 MOVE                             R10 R2
       19 CALL                             R7 3 -1
       20 CALL                             R6 -1 0
       21 RETURN                           R0 0
       22 GETTABLEKS                       R6 R5 K9 ["copyElementPath"]
       24 MOVE                             R7 R2
       25 MOVE                             R8 R3
       26 CALL                             R6 2 0
       27 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R2 R1 K0 ["hookID"]
        2 GETTABLEKS                       R3 R1 K1 ["id"]
        4 GETTABLEKS                       R4 R1 K2 ["path"]
        6 GETTABLEKS                       R5 R1 K3 ["rendererID"]
        8 GETTABLEKS                       R6 R1 K4 ["type"]
       10 GETTABLEKS                       R8 R0 K5 ["_rendererInterfaces"]
       12 GETTABLE                         R7 R8 R5
       13 JUMPIFNOTEQKNIL                  R7 ; [+12]
       15 GETUPVAL                         R9 0
       16 GETTABLEKS                       R8 R9 K6 ["warn"]
       18 GETIMPORT                        R9 K9 [string.format]
       20 LOADK                            R10 K10 ["Invalid renderer id \"%d\" for element \"%d\""]
       21 MOVE                             R11 R5
       22 MOVE                             R12 R3
       23 CALL                             R9 3 -1
       24 CALL                             R8 -1 0
       25 RETURN                           R0 0
       26 GETTABLEKS                       R8 R7 K11 ["deletePath"]
       28 MOVE                             R9 R6
       29 MOVE                             R10 R3
       30 MOVE                             R11 R2
       31 MOVE                             R12 R4
       32 CALL                             R8 4 0
       33 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R2 R1 K0 ["id"]
        2 GETTABLEKS                       R3 R1 K1 ["rendererID"]
        4 GETTABLEKS                       R5 R0 K2 ["_rendererInterfaces"]
        6 GETTABLE                         R4 R5 R3
        7 JUMPIFNOTEQKNIL                  R4 ; [+12]
        9 GETUPVAL                         R6 0
       10 GETTABLEKS                       R5 R6 K3 ["warn"]
       12 GETIMPORT                        R6 K6 [string.format]
       14 LOADK                            R7 K7 ["Invalid renderer id \"%d\""]
       15 MOVE                             R8 R3
       16 CALL                             R6 2 -1
       17 CALL                             R5 -1 0
       18 LOADNIL                          R5
       19 RETURN                           R5 1
       20 GETTABLEKS                       R5 R4 K8 ["getInstanceAndStyle"]
       22 MOVE                             R6 R2
       23 CALL                             R5 1 -1
       24 RETURN                           R5 -1

PROTO_13:
        0 GETTABLEKS                       R2 R0 K0 ["_rendererInterfaces"]
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 GETIMPORT                        R7 K2 [pcall]
        7 GETTABLEKS                       R8 R6 K3 ["getFiberIDForNative"]
        9 MOVE                             R9 R1
       10 LOADB                            R10 1
       11 CALL                             R7 3 2
       12 JUMPIFNOT                        R7 ; [+3]
       13 JUMPIFEQKNIL                     R8 ; [+2]
       15 RETURN                           R8 1
       16 FORGLOOP                         R2 2 ; [-12]
       18 LOADNIL                          R2
       19 RETURN                           R2 1

PROTO_14:
        0 GETTABLEKS                       R2 R1 K0 ["rendererID"]
        2 GETTABLEKS                       R4 R0 K1 ["_rendererInterfaces"]
        4 GETTABLE                         R3 R4 R2
        5 JUMPIFNOTEQKNIL                  R3 ; [+10]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R4 R5 K2 ["warn"]
       10 GETIMPORT                        R5 K5 [string.format]
       12 LOADK                            R6 K6 ["Invalid renderer id \"%d\""]
       13 MOVE                             R7 R2
       14 CALL                             R5 2 -1
       15 CALL                             R4 -1 0
       16 GETTABLEKS                       R4 R0 K7 ["_bridge"]
       18 LOADK                            R6 K8 ["profilingData"]
       19 GETTABLEKS                       R7 R3 K9 ["getProfilingData"]
       21 CALL                             R7 0 -1
       22 NAMECALL                         R4 R4 K10 ["send"]
       24 CALL                             R4 -1 0
       25 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["_bridge"]
        2 LOADK                            R3 K1 ["profilingStatus"]
        3 GETTABLEKS                       R4 R0 K2 ["_isProfiling"]
        5 NAMECALL                         R1 R1 K3 ["send"]
        7 CALL                             R1 3 0
        8 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R2 R1 K0 ["id"]
        2 GETTABLEKS                       R3 R1 K1 ["rendererID"]
        4 GETTABLEKS                       R5 R0 K2 ["_rendererInterfaces"]
        6 GETTABLE                         R4 R5 R3
        7 JUMPIFNOTEQKNIL                  R4 ; [+12]
        9 GETUPVAL                         R6 0
       10 GETTABLEKS                       R5 R6 K3 ["warn"]
       12 GETIMPORT                        R6 K6 [string.format]
       14 LOADK                            R7 K7 ["Invalid renderer id \"%d\" for element \"%d\""]
       15 MOVE                             R8 R3
       16 MOVE                             R9 R2
       17 CALL                             R6 3 -1
       18 CALL                             R5 -1 0
       19 RETURN                           R0 0
       20 GETTABLEKS                       R5 R4 K8 ["getOwnersList"]
       22 MOVE                             R6 R2
       23 CALL                             R5 1 1
       24 GETTABLEKS                       R6 R0 K9 ["_bridge"]
       26 LOADK                            R8 K10 ["ownersList"]
       27 DUPTABLE                         R9 K12 [{"id", "owners"}]
       28 SETTABLEKS                       R2 R9 K0 ["id"]
       30 SETTABLEKS                       R5 R9 K11 ["owners"]
       32 NAMECALL                         R6 R6 K13 ["send"]
       34 CALL                             R6 3 0
       35 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R2 R1 K0 ["id"]
        2 GETTABLEKS                       R3 R1 K1 ["path"]
        4 GETTABLEKS                       R4 R1 K2 ["rendererID"]
        6 GETTABLEKS                       R6 R0 K3 ["_rendererInterfaces"]
        8 GETTABLE                         R5 R6 R4
        9 JUMPIFNOTEQKNIL                  R5 ; [+12]
       11 GETUPVAL                         R7 0
       12 GETTABLEKS                       R6 R7 K4 ["warn"]
       14 GETIMPORT                        R7 K7 [string.format]
       16 LOADK                            R8 K8 ["Invalid renderer id \"%d\" for element \"%d\""]
       17 MOVE                             R9 R4
       18 MOVE                             R10 R2
       19 CALL                             R7 3 -1
       20 CALL                             R6 -1 0
       21 RETURN                           R0 0
       22 GETTABLEKS                       R6 R0 K9 ["_bridge"]
       24 LOADK                            R8 K10 ["inspectedElement"]
       25 GETTABLEKS                       R9 R5 K11 ["inspectElement"]
       27 MOVE                             R10 R2
       28 MOVE                             R11 R3
       29 CALL                             R9 2 -1
       30 NAMECALL                         R6 R6 K12 ["send"]
       32 CALL                             R6 -1 0
       33 GETTABLEKS                       R6 R0 K13 ["_persistedSelectionMatch"]
       35 JUMPIFEQKNIL                     R6 ; [+7]
       37 GETTABLEKS                       R7 R0 K13 ["_persistedSelectionMatch"]
       39 GETTABLEKS                       R6 R7 K0 ["id"]
       41 JUMPIFEQ                         R6 R2 ; [+16]
       43 LOADNIL                          R6
       44 SETTABLEKS                       R6 R0 K14 ["_persistedSelection"]
       46 LOADNIL                          R6
       47 SETTABLEKS                       R6 R0 K13 ["_persistedSelectionMatch"]
       49 GETTABLEKS                       R6 R5 K15 ["setTrackedPath"]
       51 LOADNIL                          R7
       52 CALL                             R6 1 0
       53 MOVE                             R8 R4
       54 MOVE                             R9 R2
       55 NAMECALL                         R6 R0 K16 ["_throttledPersistSelection"]
       57 CALL                             R6 3 0
       58 RETURN                           R0 0

PROTO_18:
        0 GETTABLEKS                       R2 R1 K0 ["id"]
        2 GETTABLEKS                       R3 R1 K1 ["rendererID"]
        4 GETTABLEKS                       R5 R0 K2 ["_rendererInterfaces"]
        6 GETTABLE                         R4 R5 R3
        7 JUMPIFNOTEQKNIL                  R4 ; [+12]
        9 GETUPVAL                         R6 0
       10 GETTABLEKS                       R5 R6 K3 ["warn"]
       12 GETIMPORT                        R6 K6 [string.format]
       14 LOADK                            R7 K7 ["Invalid renderer id \"%d\" for element \"%d\""]
       15 MOVE                             R8 R3
       16 MOVE                             R9 R2
       17 CALL                             R6 3 -1
       18 CALL                             R5 -1 0
       19 RETURN                           R0 0
       20 GETTABLEKS                       R5 R4 K8 ["logElementToConsole"]
       22 MOVE                             R6 R2
       23 CALL                             R5 1 0
       24 RETURN                           R0 0

PROTO_19:
        0 GETTABLEKS                       R2 R1 K0 ["id"]
        2 GETTABLEKS                       R3 R1 K1 ["rendererID"]
        4 GETTABLEKS                       R4 R1 K2 ["forceFallback"]
        6 GETTABLEKS                       R6 R0 K3 ["_rendererInterfaces"]
        8 GETTABLE                         R5 R6 R3
        9 JUMPIFNOTEQKNIL                  R5 ; [+12]
       11 GETUPVAL                         R7 0
       12 GETTABLEKS                       R6 R7 K4 ["warn"]
       14 GETIMPORT                        R7 K7 [string.format]
       16 LOADK                            R8 K8 ["Invalid renderer id \"%d\" for element \"%d\""]
       17 MOVE                             R9 R3
       18 MOVE                             R10 R2
       19 CALL                             R7 3 -1
       20 CALL                             R6 -1 0
       21 RETURN                           R0 0
       22 GETTABLEKS                       R6 R5 K9 ["overrideSuspense"]
       24 MOVE                             R7 R2
       25 MOVE                             R8 R4
       26 CALL                             R6 2 0
       27 RETURN                           R0 0

PROTO_20:
        0 GETTABLEKS                       R2 R1 K0 ["hookID"]
        2 GETTABLEKS                       R3 R1 K1 ["id"]
        4 GETTABLEKS                       R4 R1 K2 ["path"]
        6 GETTABLEKS                       R5 R1 K3 ["rendererID"]
        8 GETTABLEKS                       R6 R1 K4 ["type"]
       10 GETTABLEKS                       R7 R1 K5 ["value"]
       12 GETTABLEKS                       R9 R0 K6 ["_rendererInterfaces"]
       14 GETTABLE                         R8 R9 R5
       15 JUMPIFNOTEQKNIL                  R8 ; [+12]
       17 GETUPVAL                         R10 0
       18 GETTABLEKS                       R9 R10 K7 ["warn"]
       20 GETIMPORT                        R10 K10 [string.format]
       22 LOADK                            R11 K11 ["Invalid renderer id \"%d\" for element \"%d\""]
       23 MOVE                             R12 R5
       24 MOVE                             R13 R3
       25 CALL                             R10 3 -1
       26 CALL                             R9 -1 0
       27 RETURN                           R0 0
       28 GETTABLEKS                       R9 R8 K12 ["overrideValueAtPath"]
       30 MOVE                             R10 R6
       31 MOVE                             R11 R3
       32 MOVE                             R12 R2
       33 MOVE                             R13 R4
       34 MOVE                             R14 R7
       35 CALL                             R9 5 0
       36 RETURN                           R0 0

PROTO_21:
        0 GETTABLEKS                       R2 R1 K0 ["id"]
        2 GETTABLEKS                       R3 R1 K1 ["path"]
        4 GETTABLEKS                       R4 R1 K2 ["rendererID"]
        6 GETTABLEKS                       R5 R1 K3 ["wasForwarded"]
        8 GETTABLEKS                       R6 R1 K4 ["value"]
       10 JUMPIF                           R5 ; [+15]
       11 DUPTABLE                         R9 K6 [{"id", "path", "rendererID", "type", "value"}]
       12 SETTABLEKS                       R2 R9 K0 ["id"]
       14 SETTABLEKS                       R3 R9 K1 ["path"]
       16 SETTABLEKS                       R4 R9 K2 ["rendererID"]
       18 LOADK                            R10 K7 ["context"]
       19 SETTABLEKS                       R10 R9 K5 ["type"]
       21 SETTABLEKS                       R6 R9 K4 ["value"]
       23 NAMECALL                         R7 R0 K8 ["overrideValueAtPath"]
       25 CALL                             R7 2 0
       26 RETURN                           R0 0

PROTO_22:
        0 GETTABLEKS                       R2 R1 K0 ["id"]
        2 GETTABLEKS                       R3 R1 K1 ["hookID"]
        4 GETTABLEKS                       R4 R1 K2 ["path"]
        6 GETTABLEKS                       R5 R1 K3 ["rendererID"]
        8 GETTABLEKS                       R6 R1 K4 ["wasForwarded"]
       10 GETTABLEKS                       R7 R1 K5 ["value"]
       12 JUMPIF                           R6 ; [+15]
       13 DUPTABLE                         R10 K7 [{"id", "path", "rendererID", "type", "value"}]
       14 SETTABLEKS                       R2 R10 K0 ["id"]
       16 SETTABLEKS                       R4 R10 K2 ["path"]
       18 SETTABLEKS                       R5 R10 K3 ["rendererID"]
       20 LOADK                            R11 K8 ["hooks"]
       21 SETTABLEKS                       R11 R10 K6 ["type"]
       23 SETTABLEKS                       R7 R10 K5 ["value"]
       25 NAMECALL                         R8 R0 K9 ["overrideValueAtPath"]
       27 CALL                             R8 2 0
       28 RETURN                           R0 0

PROTO_23:
        0 GETTABLEKS                       R2 R1 K0 ["id"]
        2 GETTABLEKS                       R3 R1 K1 ["path"]
        4 GETTABLEKS                       R4 R1 K2 ["rendererID"]
        6 GETTABLEKS                       R5 R1 K3 ["wasForwarded"]
        8 GETTABLEKS                       R6 R1 K4 ["value"]
       10 JUMPIF                           R5 ; [+15]
       11 DUPTABLE                         R9 K6 [{"id", "path", "rendererID", "type", "value"}]
       12 SETTABLEKS                       R2 R9 K0 ["id"]
       14 SETTABLEKS                       R3 R9 K1 ["path"]
       16 SETTABLEKS                       R4 R9 K2 ["rendererID"]
       18 LOADK                            R10 K7 ["props"]
       19 SETTABLEKS                       R10 R9 K5 ["type"]
       21 SETTABLEKS                       R6 R9 K4 ["value"]
       23 NAMECALL                         R7 R0 K8 ["overrideValueAtPath"]
       25 CALL                             R7 2 0
       26 RETURN                           R0 0

PROTO_24:
        0 GETTABLEKS                       R2 R1 K0 ["id"]
        2 GETTABLEKS                       R3 R1 K1 ["path"]
        4 GETTABLEKS                       R4 R1 K2 ["rendererID"]
        6 GETTABLEKS                       R5 R1 K3 ["wasForwarded"]
        8 GETTABLEKS                       R6 R1 K4 ["value"]
       10 JUMPIF                           R5 ; [+15]
       11 DUPTABLE                         R9 K6 [{"id", "path", "rendererID", "type", "value"}]
       12 SETTABLEKS                       R2 R9 K0 ["id"]
       14 SETTABLEKS                       R3 R9 K1 ["path"]
       16 SETTABLEKS                       R4 R9 K2 ["rendererID"]
       18 LOADK                            R10 K7 ["state"]
       19 SETTABLEKS                       R10 R9 K5 ["type"]
       21 SETTABLEKS                       R6 R9 K4 ["value"]
       23 NAMECALL                         R7 R0 K8 ["overrideValueAtPath"]
       25 CALL                             R7 2 0
       26 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 LOADK                            R0 K0 ["true"]
        3 RETURN                           R0 1
        4 LOADK                            R0 K1 ["false"]
        5 RETURN                           R0 1

PROTO_26:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 LOADK                            R4 K0 ["true"]
        3 CALL                             R2 2 0
        4 GETUPVAL                         R2 0
        5 GETUPVAL                         R3 2
        6 JUMPIFNOT                        R1 ; [+2]
        7 LOADK                            R4 K0 ["true"]
        8 JUMP                             ; [+1]
        9 LOADK                            R4 K1 ["false"]
       10 CALL                             R2 2 0
       11 GETTABLEKS                       R2 R0 K2 ["_bridge"]
       13 LOADK                            R4 K3 ["reloadAppForProfiling"]
       14 NAMECALL                         R2 R2 K4 ["send"]
       16 CALL                             R2 2 0
       17 RETURN                           R0 0

PROTO_27:
        0 GETTABLEKS                       R2 R1 K0 ["hookID"]
        2 GETTABLEKS                       R3 R1 K1 ["id"]
        4 GETTABLEKS                       R4 R1 K2 ["newPath"]
        6 GETTABLEKS                       R5 R1 K3 ["oldPath"]
        8 GETTABLEKS                       R6 R1 K4 ["rendererID"]
       10 GETTABLEKS                       R7 R1 K5 ["type"]
       12 GETTABLEKS                       R9 R0 K6 ["_rendererInterfaces"]
       14 GETTABLE                         R8 R9 R6
       15 JUMPIFNOTEQKNIL                  R8 ; [+12]
       17 GETUPVAL                         R10 0
       18 GETTABLEKS                       R9 R10 K7 ["warn"]
       20 GETIMPORT                        R10 K10 [string.format]
       22 LOADK                            R11 K11 ["Invalid renderer id \"%d\" for element \"%d\""]
       23 MOVE                             R12 R6
       24 MOVE                             R13 R3
       25 CALL                             R10 3 -1
       26 CALL                             R9 -1 0
       27 RETURN                           R0 0
       28 GETTABLEKS                       R9 R8 K12 ["renamePath"]
       30 MOVE                             R10 R7
       31 MOVE                             R11 R3
       32 MOVE                             R12 R2
       33 MOVE                             R13 R5
       34 MOVE                             R14 R4
       35 CALL                             R9 5 0
       36 RETURN                           R0 0

PROTO_28:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["getIDForNode"]
        3 CALL                             R2 2 1
        4 JUMPIFEQKNIL                     R2 ; [+8]
        6 GETTABLEKS                       R3 R0 K1 ["_bridge"]
        8 LOADK                            R5 K2 ["selectFiber"]
        9 MOVE                             R6 R2
       10 NAMECALL                         R3 R3 K3 ["send"]
       12 CALL                             R3 3 0
       13 RETURN                           R0 0

PROTO_29:
        0 GETTABLEKS                       R3 R0 K0 ["_rendererInterfaces"]
        2 SETTABLE                         R2 R3 R1
        3 GETTABLEKS                       R3 R0 K1 ["_isProfiling"]
        5 JUMPIFNOT                        R3 ; [+5]
        6 GETTABLEKS                       R3 R2 K2 ["startProfiling"]
        8 GETTABLEKS                       R4 R0 K3 ["_recordChangeDescriptions"]
       10 CALL                             R3 1 0
       11 GETTABLEKS                       R3 R2 K4 ["setTraceUpdatesEnabled"]
       13 GETTABLEKS                       R4 R0 K5 ["_traceUpdatesEnabled"]
       15 CALL                             R3 1 0
       16 GETTABLEKS                       R3 R0 K6 ["_persistedSelection"]
       18 JUMPIFEQKNIL                     R3 ; [+10]
       20 GETTABLEKS                       R4 R3 K7 ["rendererID"]
       22 JUMPIFNOTEQ                      R4 R1 ; [+6]
       24 GETTABLEKS                       R4 R2 K8 ["setTrackedPath"]
       26 GETTABLEKS                       R5 R3 K9 ["path"]
       28 CALL                             R4 1 0
       29 RETURN                           R0 0

PROTO_30:
        0 SETTABLEKS                       R1 R0 K0 ["_traceUpdatesEnabled"]
        2 GETTABLEKS                       R2 R0 K1 ["_rendererInterfaces"]
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 GETTABLEKS                       R7 R6 K2 ["setTraceUpdatesEnabled"]
        9 MOVE                             R8 R1
       10 CALL                             R7 1 0
       11 FORGLOOP                         R2 2 ; [-5]
       13 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K1 ["__REACT_DEVTOOLS_GLOBAL_HOOK__"]
        3 GETTABLEKS                       R1 R2 K0 ["$0"]
        5 JUMPIFNOTEQKNIL                  R1 ; [+2]
        7 RETURN                           R0 0
        8 MOVE                             R4 R1
        9 NAMECALL                         R2 R0 K2 ["selectNode"]
       11 CALL                             R2 2 0
       12 RETURN                           R0 0

PROTO_32:
        0 LOADK                            R3 K0 ["shutdown"]
        1 NAMECALL                         R1 R0 K1 ["emit"]
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_33:
        0 SETTABLEKS                       R1 R0 K0 ["_recordChangeDescriptions"]
        2 LOADB                            R2 1
        3 SETTABLEKS                       R2 R0 K1 ["_isProfiling"]
        5 GETTABLEKS                       R2 R0 K2 ["_rendererInterfaces"]
        7 LOADNIL                          R3
        8 LOADNIL                          R4
        9 FORGPREP                         R2
       10 GETTABLEKS                       R7 R6 K3 ["startProfiling"]
       12 MOVE                             R8 R1
       13 CALL                             R7 1 0
       14 FORGLOOP                         R2 2 ; [-5]
       16 GETTABLEKS                       R2 R0 K4 ["_bridge"]
       18 LOADK                            R4 K5 ["profilingStatus"]
       19 GETTABLEKS                       R5 R0 K1 ["_isProfiling"]
       21 NAMECALL                         R2 R2 K6 ["send"]
       23 CALL                             R2 3 0
       24 RETURN                           R0 0

PROTO_34:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["_isProfiling"]
        3 LOADB                            R1 0
        4 SETTABLEKS                       R1 R0 K1 ["_recordChangeDescriptions"]
        6 GETTABLEKS                       R1 R0 K2 ["_rendererInterfaces"]
        8 LOADNIL                          R2
        9 LOADNIL                          R3
       10 FORGPREP                         R1
       11 GETTABLEKS                       R6 R5 K3 ["stopProfiling"]
       13 CALL                             R6 0 0
       14 FORGLOOP                         R1 2 ; [-4]
       16 GETTABLEKS                       R1 R0 K4 ["_bridge"]
       18 LOADK                            R3 K5 ["profilingStatus"]
       19 GETTABLEKS                       R4 R0 K0 ["_isProfiling"]
       21 NAMECALL                         R1 R1 K6 ["send"]
       23 CALL                             R1 3 0
       24 RETURN                           R0 0

PROTO_35:
        0 GETTABLEKS                       R2 R1 K0 ["count"]
        2 GETTABLEKS                       R3 R1 K1 ["id"]
        4 GETTABLEKS                       R4 R1 K2 ["path"]
        6 GETTABLEKS                       R5 R1 K3 ["rendererID"]
        8 GETTABLEKS                       R7 R0 K4 ["_rendererInterfaces"]
       10 GETTABLE                         R6 R7 R5
       11 JUMPIFNOTEQKNIL                  R6 ; [+12]
       13 GETUPVAL                         R8 0
       14 GETTABLEKS                       R7 R8 K5 ["warn"]
       16 GETIMPORT                        R8 K8 [string.format]
       18 LOADK                            R9 K9 ["Invalid renderer id \"%d\" for element \"%d\""]
       19 MOVE                             R10 R5
       20 MOVE                             R11 R3
       21 CALL                             R8 3 -1
       22 CALL                             R7 -1 0
       23 RETURN                           R0 0
       24 GETTABLEKS                       R7 R6 K10 ["storeAsGlobal"]
       26 MOVE                             R8 R3
       27 MOVE                             R9 R4
       28 MOVE                             R10 R2
       29 CALL                             R7 3 0
       30 RETURN                           R0 0

PROTO_36:
        0 GETTABLEKS                       R2 R1 K0 ["appendComponentStack"]
        2 GETTABLEKS                       R3 R1 K1 ["breakOnConsoleErrors"]
        4 JUMPIF                           R2 ; [+1]
        5 JUMPIFNOT                        R3 ; [+6]
        6 DUPTABLE                         R4 K2 [{"appendComponentStack", "breakOnConsoleErrors"}]
        7 SETTABLEKS                       R2 R4 K0 ["appendComponentStack"]
        9 SETTABLEKS                       R3 R4 K1 ["breakOnConsoleErrors"]
       11 RETURN                           R0 0
       12 RETURN                           R0 0

PROTO_37:
        0 GETTABLEKS                       R2 R0 K0 ["_rendererInterfaces"]
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 GETTABLEKS                       R7 R6 K1 ["updateComponentFilters"]
        7 MOVE                             R8 R1
        8 CALL                             R7 1 0
        9 FORGLOOP                         R2 2 ; [-5]
       11 RETURN                           R0 0

PROTO_38:
        0 GETTABLEKS                       R2 R1 K0 ["id"]
        2 GETTABLEKS                       R3 R1 K1 ["path"]
        4 GETTABLEKS                       R4 R1 K2 ["rendererID"]
        6 GETTABLEKS                       R6 R0 K3 ["_rendererInterfaces"]
        8 GETTABLE                         R5 R6 R4
        9 JUMPIFNOTEQKNIL                  R5 ; [+12]
       11 GETUPVAL                         R7 0
       12 GETTABLEKS                       R6 R7 K4 ["warn"]
       14 GETIMPORT                        R7 K7 [string.format]
       16 LOADK                            R8 K8 ["Invalid renderer id \"%d\" for element \"%d\""]
       17 MOVE                             R9 R4
       18 MOVE                             R10 R2
       19 CALL                             R7 3 -1
       20 CALL                             R6 -1 0
       21 RETURN                           R0 0
       22 GETTABLEKS                       R6 R5 K9 ["prepareViewAttributeSource"]
       24 MOVE                             R7 R2
       25 MOVE                             R8 R3
       26 CALL                             R6 2 0
       27 RETURN                           R0 0

PROTO_39:
        0 GETTABLEKS                       R2 R1 K0 ["id"]
        2 GETTABLEKS                       R3 R1 K1 ["rendererID"]
        4 GETTABLEKS                       R5 R0 K2 ["_rendererInterfaces"]
        6 GETTABLE                         R4 R5 R3
        7 JUMPIFNOTEQKNIL                  R4 ; [+12]
        9 GETUPVAL                         R6 0
       10 GETTABLEKS                       R5 R6 K3 ["warn"]
       12 GETIMPORT                        R6 K6 [string.format]
       14 LOADK                            R7 K7 ["Invalid renderer id \"%d\" for element \"%d\""]
       15 MOVE                             R8 R3
       16 MOVE                             R9 R2
       17 CALL                             R6 3 -1
       18 CALL                             R5 -1 0
       19 RETURN                           R0 0
       20 GETTABLEKS                       R5 R4 K8 ["prepareViewElementSource"]
       22 MOVE                             R6 R2
       23 CALL                             R5 1 0
       24 RETURN                           R0 0

PROTO_40:
        0 LOADK                            R4 K0 ["traceUpdates"]
        1 MOVE                             R5 R1
        2 NAMECALL                         R2 R0 K1 ["emit"]
        4 CALL                             R2 3 0
        5 RETURN                           R0 0

PROTO_41:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["__DEBUG__"]
        3 JUMPIFNOT                        R2 ; [+4]
        4 GETUPVAL                         R2 1
        5 LOADK                            R3 K1 ["onHookOperations"]
        6 MOVE                             R4 R1
        7 CALL                             R2 2 0
        8 GETTABLEKS                       R2 R0 K2 ["_bridge"]
       10 LOADK                            R4 K3 ["operations"]
       11 MOVE                             R5 R1
       12 NAMECALL                         R2 R2 K4 ["send"]
       14 CALL                             R2 3 0
       15 GETTABLEKS                       R2 R0 K5 ["_persistedSelection"]
       17 JUMPIFEQKNIL                     R2 ; [+68]
       19 GETTABLEN                        R2 R1 1
       20 GETTABLEKS                       R4 R0 K5 ["_persistedSelection"]
       22 GETTABLEKS                       R3 R4 K6 ["rendererID"]
       24 JUMPIFNOTEQ                      R3 R2 ; [+61]
       26 GETTABLEKS                       R4 R0 K7 ["_rendererInterfaces"]
       28 GETTABLE                         R3 R4 R2
       29 JUMPIFNOTEQKNIL                  R3 ; [+11]
       31 GETUPVAL                         R5 2
       32 GETTABLEKS                       R4 R5 K8 ["warn"]
       34 GETIMPORT                        R5 K11 [string.format]
       36 LOADK                            R6 K12 ["Invalid renderer id \"%d\""]
       37 MOVE                             R7 R2
       38 CALL                             R5 2 -1
       39 CALL                             R4 -1 0
       40 RETURN                           R0 0
       41 GETTABLEKS                       R4 R0 K13 ["_persistedSelectionMatch"]
       43 GETTABLEKS                       R5 R3 K14 ["getBestMatchForTrackedPath"]
       45 CALL                             R5 0 1
       46 SETTABLEKS                       R5 R0 K13 ["_persistedSelectionMatch"]
       48 JUMPIFEQKNIL                     R4 ; [+4]
       50 GETTABLEKS                       R6 R4 K15 ["id"]
       52 JUMP                             ; [+1]
       53 LOADNIL                          R6
       54 JUMPIFEQKNIL                     R5 ; [+4]
       56 GETTABLEKS                       R7 R5 K15 ["id"]
       58 JUMP                             ; [+1]
       59 LOADNIL                          R7
       60 JUMPIFEQ                         R6 R7 ; [+10]
       62 JUMPIFEQKNIL                     R7 ; [+8]
       64 GETTABLEKS                       R8 R0 K2 ["_bridge"]
       66 LOADK                            R10 K16 ["selectFiber"]
       67 MOVE                             R11 R7
       68 NAMECALL                         R8 R8 K4 ["send"]
       70 CALL                             R8 3 0
       71 JUMPIFEQKNIL                     R5 ; [+14]
       73 GETTABLEKS                       R8 R5 K17 ["isFullMatch"]
       75 JUMPIFNOT                        R8 ; [+10]
       76 LOADNIL                          R8
       77 SETTABLEKS                       R8 R0 K5 ["_persistedSelection"]
       79 LOADNIL                          R8
       80 SETTABLEKS                       R8 R0 K13 ["_persistedSelectionMatch"]
       82 GETTABLEKS                       R8 R3 K18 ["setTrackedPath"]
       84 LOADNIL                          R9
       85 CALL                             R8 1 0
       86 RETURN                           R0 0

PROTO_42:
        0 GETTABLEKS                       R2 R0 K0 ["_bridge"]
        2 LOADK                            R4 K1 ["unsupportedRendererVersion"]
        3 MOVE                             R5 R1
        4 NAMECALL                         R2 R2 K2 ["send"]
        6 CALL                             R2 3 0
        7 RETURN                           R0 0

PROTO_43:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+7]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R0 R1 K0 ["getPathForElement"]
        6 GETUPVAL                         R1 1
        7 CALL                             R0 1 -1
        8 RETURN                           R0 -1
        9 LOADNIL                          R0
       10 RETURN                           R0 1

PROTO_44:
        0 GETTABLEKS                       R4 R0 K0 ["_rendererInterfaces"]
        2 GETTABLE                         R3 R4 R1
        3 JUMPIFEQKNIL                     R3 ; [+6]
        5 GETTABLEKS                       R4 R3 K1 ["getPathForElement"]
        7 MOVE                             R5 R2
        8 CALL                             R4 1 1
        9 JUMP                             ; [+1]
       10 LOADNIL                          R4
       11 JUMPIFEQKNIL                     R4 ; [+14]
       13 GETUPVAL                         R5 0
       14 GETUPVAL                         R6 1
       15 GETUPVAL                         R7 2
       16 DUPTABLE                         R9 K4 [{"rendererID", "path"}]
       17 SETTABLEKS                       R1 R9 K2 ["rendererID"]
       19 SETTABLEKS                       R4 R9 K3 ["path"]
       21 NAMECALL                         R7 R7 K5 ["JSONEncode"]
       23 CALL                             R7 2 -1
       24 CALL                             R5 -1 0
       25 RETURN                           R0 0
       26 GETUPVAL                         R5 3
       27 GETUPVAL                         R6 1
       28 CALL                             R5 1 0
       29 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["ReactGlobals"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K6 ["LuauPolyfill"]
       18 CALL                             R2 1 1
       19 GETTABLEKS                       R3 R2 K7 ["console"]
       21 GETIMPORT                        R4 K9 [game]
       23 LOADK                            R6 K10 ["HttpService"]
       24 NAMECALL                         R4 R4 K11 ["GetService"]
       26 CALL                             R4 2 1
       27 GETIMPORT                        R5 K4 [require]
       29 GETIMPORT                        R9 K1 [script]
       31 GETTABLEKS                       R8 R9 K2 ["Parent"]
       33 GETTABLEKS                       R7 R8 K2 ["Parent"]
       35 GETTABLEKS                       R6 R7 K12 ["events"]
       37 CALL                             R5 1 1
       38 DUPCLOSURE                       R6 K13 [PROTO_0]
       39 GETIMPORT                        R7 K4 [require]
       41 GETIMPORT                        R11 K1 [script]
       43 GETTABLEKS                       R10 R11 K2 ["Parent"]
       45 GETTABLEKS                       R9 R10 K2 ["Parent"]
       47 GETTABLEKS                       R8 R9 K14 ["constants"]
       49 CALL                             R7 1 1
       50 GETTABLEKS                       R8 R7 K15 ["SESSION_STORAGE_LAST_SELECTION_KEY"]
       52 GETTABLEKS                       R9 R7 K16 ["SESSION_STORAGE_RELOAD_AND_PROFILE_KEY"]
       54 GETTABLEKS                       R10 R7 K17 ["SESSION_STORAGE_RECORD_CHANGE_DESCRIPTIONS_KEY"]
       56 GETTABLEKS                       R11 R7 K18 ["__DEBUG__"]
       58 GETIMPORT                        R12 K4 [require]
       60 GETIMPORT                        R16 K1 [script]
       62 GETTABLEKS                       R15 R16 K2 ["Parent"]
       64 GETTABLEKS                       R14 R15 K2 ["Parent"]
       66 GETTABLEKS                       R13 R14 K19 ["storage"]
       68 CALL                             R12 1 1
       69 GETTABLEKS                       R13 R12 K20 ["sessionStorageGetItem"]
       71 GETTABLEKS                       R14 R12 K21 ["sessionStorageRemoveItem"]
       73 GETTABLEKS                       R15 R12 K22 ["sessionStorageSetItem"]
       75 GETIMPORT                        R16 K4 [require]
       77 GETIMPORT                        R20 K1 [script]
       79 GETTABLEKS                       R19 R20 K2 ["Parent"]
       81 GETTABLEKS                       R18 R19 K23 ["views"]
       83 GETTABLEKS                       R17 R18 K24 ["Highlighter"]
       85 CALL                             R16 1 1
       86 GETTABLEKS                       R17 R16 K25 ["setupHighlighter"]
       88 DUPCLOSURE                       R18 K26 [PROTO_1]
       89 DUPCLOSURE                       R19 K27 [PROTO_2]
       90 DUPCLOSURE                       R20 K28 [PROTO_3]
       91 DUPCLOSURE                       R21 K29 [PROTO_4]
       92 GETIMPORT                        R22 K4 [require]
       94 GETIMPORT                        R26 K1 [script]
       96 GETTABLEKS                       R25 R26 K2 ["Parent"]
       98 GETTABLEKS                       R24 R25 K2 ["Parent"]
      100 GETTABLEKS                       R23 R24 K30 ["bridge"]
      102 CALL                             R22 1 1
      103 GETIMPORT                        R23 K4 [require]
      105 GETIMPORT                        R26 K1 [script]
      107 GETTABLEKS                       R25 R26 K2 ["Parent"]
      109 GETTABLEKS                       R24 R25 K31 ["types"]
      111 CALL                             R23 1 1
      112 GETIMPORT                        R24 K4 [require]
      114 GETIMPORT                        R28 K1 [script]
      116 GETTABLEKS                       R27 R28 K2 ["Parent"]
      118 GETTABLEKS                       R26 R27 K2 ["Parent"]
      120 GETTABLEKS                       R25 R26 K31 ["types"]
      122 CALL                             R24 1 1
      123 DUPCLOSURE                       R25 K32 [PROTO_5]
      124 CAPTURE                          VAL R11
      125 NEWTABLE                         R27 0 0
      127 DUPTABLE                         R28 K34 [{"__index"}]
      128 SETTABLEKS                       R5 R28 K33 ["__index"]
      130 FASTCALL2                        SETMETATABLE R27 R28 ; [+3]
      132 GETIMPORT                        R26 K36 [setmetatable]
      134 CALL                             R26 2 1
      135 DUPTABLE                         R27 K34 [{"__index"}]
      136 SETTABLEKS                       R26 R27 K33 ["__index"]
      138 DUPCLOSURE                       R28 K37 [PROTO_8]
      139 CAPTURE                          VAL R5
      140 CAPTURE                          VAL R27
      141 CAPTURE                          VAL R13
      142 CAPTURE                          VAL R9
      143 CAPTURE                          VAL R10
      144 CAPTURE                          VAL R14
      145 CAPTURE                          VAL R8
      146 CAPTURE                          VAL R4
      147 CAPTURE                          VAL R17
      148 SETTABLEKS                       R28 R26 K38 ["new"]
      150 DUPCLOSURE                       R28 K39 [PROTO_9]
      151 SETTABLEKS                       R28 R26 K40 ["getRendererInterfaces"]
      153 DUPCLOSURE                       R28 K41 [PROTO_10]
      154 CAPTURE                          VAL R3
      155 SETTABLEKS                       R28 R26 K42 ["copyElementPath"]
      157 DUPCLOSURE                       R28 K43 [PROTO_11]
      158 CAPTURE                          VAL R3
      159 SETTABLEKS                       R28 R26 K44 ["deletePath"]
      161 DUPCLOSURE                       R28 K45 [PROTO_12]
      162 CAPTURE                          VAL R3
      163 SETTABLEKS                       R28 R26 K46 ["getInstanceAndStyle"]
      165 DUPCLOSURE                       R28 K47 [PROTO_13]
      166 SETTABLEKS                       R28 R26 K48 ["getIDForNode"]
      168 DUPCLOSURE                       R28 K49 [PROTO_14]
      169 CAPTURE                          VAL R3
      170 SETTABLEKS                       R28 R26 K50 ["getProfilingData"]
      172 DUPCLOSURE                       R28 K51 [PROTO_15]
      173 SETTABLEKS                       R28 R26 K52 ["getProfilingStatus"]
      175 DUPCLOSURE                       R28 K53 [PROTO_16]
      176 CAPTURE                          VAL R3
      177 SETTABLEKS                       R28 R26 K54 ["getOwnersList"]
      179 DUPCLOSURE                       R28 K55 [PROTO_17]
      180 CAPTURE                          VAL R3
      181 SETTABLEKS                       R28 R26 K56 ["inspectElement"]
      183 DUPCLOSURE                       R28 K57 [PROTO_18]
      184 CAPTURE                          VAL R3
      185 SETTABLEKS                       R28 R26 K58 ["logElementToConsole"]
      187 DUPCLOSURE                       R28 K59 [PROTO_19]
      188 CAPTURE                          VAL R3
      189 SETTABLEKS                       R28 R26 K60 ["overrideSuspense"]
      191 DUPCLOSURE                       R28 K61 [PROTO_20]
      192 CAPTURE                          VAL R3
      193 SETTABLEKS                       R28 R26 K62 ["overrideValueAtPath"]
      195 DUPCLOSURE                       R28 K63 [PROTO_21]
      196 SETTABLEKS                       R28 R26 K64 ["overrideContext"]
      198 DUPCLOSURE                       R28 K65 [PROTO_22]
      199 SETTABLEKS                       R28 R26 K66 ["overrideHookState"]
      201 DUPCLOSURE                       R28 K67 [PROTO_23]
      202 SETTABLEKS                       R28 R26 K68 ["overrideProps"]
      204 DUPCLOSURE                       R28 K69 [PROTO_24]
      205 SETTABLEKS                       R28 R26 K70 ["overrideState"]
      207 DUPCLOSURE                       R28 K71 [PROTO_26]
      208 CAPTURE                          VAL R15
      209 CAPTURE                          VAL R9
      210 CAPTURE                          VAL R10
      211 SETTABLEKS                       R28 R26 K72 ["reloadAndProfile"]
      213 DUPCLOSURE                       R28 K73 [PROTO_27]
      214 CAPTURE                          VAL R3
      215 SETTABLEKS                       R28 R26 K74 ["renamePath"]
      217 DUPCLOSURE                       R28 K75 [PROTO_28]
      218 SETTABLEKS                       R28 R26 K76 ["selectNode"]
      220 DUPCLOSURE                       R28 K77 [PROTO_29]
      221 SETTABLEKS                       R28 R26 K78 ["setRendererInterface"]
      223 DUPCLOSURE                       R28 K79 [PROTO_30]
      224 SETTABLEKS                       R28 R26 K80 ["setTraceUpdatesEnabled"]
      226 DUPCLOSURE                       R28 K81 [PROTO_31]
      227 CAPTURE                          VAL R1
      228 SETTABLEKS                       R28 R26 K82 ["syncSelectionFromNativeElementsPanel"]
      230 DUPCLOSURE                       R28 K83 [PROTO_32]
      231 SETTABLEKS                       R28 R26 K84 ["shutdown"]
      233 DUPCLOSURE                       R28 K85 [PROTO_33]
      234 SETTABLEKS                       R28 R26 K86 ["startProfiling"]
      236 DUPCLOSURE                       R28 K87 [PROTO_34]
      237 SETTABLEKS                       R28 R26 K88 ["stopProfiling"]
      239 DUPCLOSURE                       R28 K89 [PROTO_35]
      240 CAPTURE                          VAL R3
      241 SETTABLEKS                       R28 R26 K90 ["storeAsGlobal"]
      243 DUPCLOSURE                       R28 K91 [PROTO_36]
      244 SETTABLEKS                       R28 R26 K92 ["updateConsolePatchSettings"]
      246 DUPCLOSURE                       R28 K93 [PROTO_37]
      247 SETTABLEKS                       R28 R26 K94 ["updateComponentFilters"]
      249 DUPCLOSURE                       R28 K95 [PROTO_38]
      250 CAPTURE                          VAL R3
      251 SETTABLEKS                       R28 R26 K96 ["viewAttributeSource"]
      253 DUPCLOSURE                       R28 K97 [PROTO_39]
      254 CAPTURE                          VAL R3
      255 SETTABLEKS                       R28 R26 K98 ["viewElementSource"]
      257 DUPCLOSURE                       R28 K99 [PROTO_40]
      258 SETTABLEKS                       R28 R26 K100 ["onTraceUpdates"]
      260 DUPCLOSURE                       R28 K101 [PROTO_41]
      261 CAPTURE                          VAL R1
      262 CAPTURE                          VAL R25
      263 CAPTURE                          VAL R3
      264 SETTABLEKS                       R28 R26 K102 ["onHookOperations"]
      266 DUPCLOSURE                       R28 K103 [PROTO_42]
      267 SETTABLEKS                       R28 R26 K104 ["onUnsupportedRenderer"]
      269 DUPCLOSURE                       R29 K105 [PROTO_44]
      270 CAPTURE                          VAL R15
      271 CAPTURE                          VAL R8
      272 CAPTURE                          VAL R4
      273 CAPTURE                          VAL R14
      274 MOVE                             R28 R29
      275 SETTABLEKS                       R28 R26 K106 ["_throttledPersistSelection"]
      277 RETURN                           R26 1
