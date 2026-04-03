PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["type"]
        2 JUMPIFNOTEQKS                    R2 K1 ["UpdateMappingsForGamepadId"] ; [+20]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K2 ["Dictionary"]
        7 GETTABLEKS                       R2 R3 K3 ["join"]
        9 MOVE                             R3 R0
       10 NEWTABLE                         R4 1 0
       12 GETTABLEKS                       R6 R1 K4 ["payload"]
       14 GETTABLEKS                       R5 R6 K5 ["gamepadId"]
       16 GETTABLEKS                       R7 R1 K4 ["payload"]
       18 GETTABLEKS                       R6 R7 K6 ["newMappingsForGamepadId"]
       20 SETTABLE                         R6 R4 R5
       21 CALL                             R2 2 1
       22 RETURN                           R2 1
       23 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R2 R1 K0 ["type"]
        2 JUMPIFNOTEQKS                    R2 K1 ["UpdateMappingsForGamepadId"] ; [+37]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K2 ["Dictionary"]
        7 GETTABLEKS                       R2 R3 K3 ["join"]
        9 MOVE                             R3 R0
       10 NEWTABLE                         R4 1 0
       12 GETTABLEKS                       R6 R1 K4 ["payload"]
       14 GETTABLEKS                       R5 R6 K5 ["gamepadId"]
       16 GETUPVAL                         R8 0
       17 GETTABLEKS                       R7 R8 K2 ["Dictionary"]
       19 GETTABLEKS                       R6 R7 K3 ["join"]
       21 GETTABLEKS                       R8 R1 K4 ["payload"]
       23 GETTABLEKS                       R7 R8 K6 ["newMappingsOverridesForGamepadId"]
       25 JUMPIF                           R7 ; [+2]
       26 NEWTABLE                         R7 0 0
       28 GETTABLEKS                       R10 R1 K4 ["payload"]
       30 GETTABLEKS                       R9 R10 K5 ["gamepadId"]
       32 GETTABLE                         R8 R0 R9
       33 JUMPIF                           R8 ; [+2]
       34 NEWTABLE                         R8 0 0
       36 CALL                             R6 2 1
       37 SETTABLE                         R6 R4 R5
       38 CALL                             R2 2 1
       39 RETURN                           R2 1
       40 GETTABLEKS                       R2 R1 K0 ["type"]
       42 JUMPIFNOTEQKS                    R2 K7 ["KeepOverrides"] ; [+4]
       44 NEWTABLE                         R2 0 0
       46 RETURN                           R2 1
       47 GETTABLEKS                       R2 R1 K0 ["type"]
       49 JUMPIFNOTEQKS                    R2 K8 ["ResetCaches"] ; [+19]
       51 GETUPVAL                         R4 0
       52 GETTABLEKS                       R3 R4 K2 ["Dictionary"]
       54 GETTABLEKS                       R2 R3 K3 ["join"]
       56 MOVE                             R3 R0
       57 NEWTABLE                         R4 1 0
       59 GETTABLEKS                       R6 R1 K4 ["payload"]
       61 GETTABLEKS                       R5 R6 K5 ["gamepadId"]
       63 GETUPVAL                         R7 0
       64 GETTABLEKS                       R6 R7 K9 ["None"]
       66 SETTABLE                         R6 R4 R5
       67 CALL                             R2 2 -1
       68 RETURN                           R2 -1
       69 RETURN                           R0 1

PROTO_2:
        0 GETTABLEKS                       R2 R1 K0 ["type"]
        2 JUMPIFNOTEQKS                    R2 K1 ["SetVRUserCFrameActive"] ; [+20]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K2 ["Dictionary"]
        7 GETTABLEKS                       R2 R3 K3 ["join"]
        9 MOVE                             R3 R0
       10 NEWTABLE                         R4 1 0
       12 GETTABLEKS                       R6 R1 K4 ["payload"]
       14 GETTABLEKS                       R5 R6 K5 ["vrUserCFrame"]
       16 GETTABLEKS                       R7 R1 K4 ["payload"]
       18 GETTABLEKS                       R6 R7 K6 ["isActive"]
       20 SETTABLE                         R6 R4 R5
       21 CALL                             R2 2 1
       22 RETURN                           R2 1
       23 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 MOVE                             R3 R0
        6 GETUPVAL                         R6 1
        7 GETTABLEKS                       R5 R6 K2 ["mappingsOverrides"]
        9 GETTABLE                         R4 R5 R1
       10 JUMPIF                           R4 ; [+2]
       11 NEWTABLE                         R4 0 0
       13 CALL                             R2 2 -1
       14 RETURN                           R2 -1

PROTO_4:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"mappings"}]
        7 GETTABLEKS                       R6 R0 K2 ["mappings"]
        9 GETTABLEKS                       R7 R1 K4 ["type"]
       11 JUMPIFNOTEQKS                    R7 K5 ["UpdateMappingsForGamepadId"] ; [+21]
       13 GETUPVAL                         R9 0
       14 GETTABLEKS                       R8 R9 K0 ["Dictionary"]
       16 GETTABLEKS                       R7 R8 K1 ["join"]
       18 MOVE                             R8 R6
       19 NEWTABLE                         R9 1 0
       21 GETTABLEKS                       R11 R1 K6 ["payload"]
       23 GETTABLEKS                       R10 R11 K7 ["gamepadId"]
       25 GETTABLEKS                       R12 R1 K6 ["payload"]
       27 GETTABLEKS                       R11 R12 K8 ["newMappingsForGamepadId"]
       29 SETTABLE                         R11 R9 R10
       30 CALL                             R7 2 1
       31 MOVE                             R5 R7
       32 JUMP                             ; [+1]
       33 MOVE                             R5 R6
       34 SETTABLEKS                       R5 R4 K2 ["mappings"]
       36 CALL                             R2 2 1
       37 MOVE                             R0 R2
       38 GETUPVAL                         R4 0
       39 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
       41 GETTABLEKS                       R2 R3 K1 ["join"]
       43 MOVE                             R3 R0
       44 DUPTABLE                         R4 K10 [{"mappingsOverrides"}]
       45 GETUPVAL                         R5 1
       46 GETTABLEKS                       R6 R0 K9 ["mappingsOverrides"]
       48 MOVE                             R7 R1
       49 CALL                             R5 2 1
       50 SETTABLEKS                       R5 R4 K9 ["mappingsOverrides"]
       52 CALL                             R2 2 1
       53 MOVE                             R0 R2
       54 GETTABLEKS                       R2 R1 K4 ["type"]
       56 JUMPIFNOTEQKS                    R2 K11 ["SetVRUserCFrameActive"] ; [+45]
       58 GETUPVAL                         R4 0
       59 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
       61 GETTABLEKS                       R2 R3 K1 ["join"]
       63 MOVE                             R3 R0
       64 DUPTABLE                         R4 K14 [{"activeVRUserCFrames", "shouldVRControlsRespond"}]
       65 GETTABLEKS                       R6 R0 K12 ["activeVRUserCFrames"]
       67 GETTABLEKS                       R7 R1 K4 ["type"]
       69 JUMPIFNOTEQKS                    R7 K11 ["SetVRUserCFrameActive"] ; [+21]
       71 GETUPVAL                         R9 0
       72 GETTABLEKS                       R8 R9 K0 ["Dictionary"]
       74 GETTABLEKS                       R7 R8 K1 ["join"]
       76 MOVE                             R8 R6
       77 NEWTABLE                         R9 1 0
       79 GETTABLEKS                       R11 R1 K6 ["payload"]
       81 GETTABLEKS                       R10 R11 K15 ["vrUserCFrame"]
       83 GETTABLEKS                       R12 R1 K6 ["payload"]
       85 GETTABLEKS                       R11 R12 K16 ["isActive"]
       87 SETTABLE                         R11 R9 R10
       88 CALL                             R7 2 1
       89 MOVE                             R5 R7
       90 JUMP                             ; [+1]
       91 MOVE                             R5 R6
       92 SETTABLEKS                       R5 R4 K12 ["activeVRUserCFrames"]
       94 GETTABLEKS                       R6 R1 K6 ["payload"]
       96 GETTABLEKS                       R5 R6 K13 ["shouldVRControlsRespond"]
       98 SETTABLEKS                       R5 R4 K13 ["shouldVRControlsRespond"]
      100 CALL                             R2 2 1
      101 MOVE                             R0 R2
      102 GETTABLEKS                       R2 R1 K4 ["type"]
      104 JUMPIFNOTEQKS                    R2 K17 ["SetConnectedGamepadId"] ; [+17]
      106 GETUPVAL                         R4 0
      107 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
      109 GETTABLEKS                       R2 R3 K1 ["join"]
      111 MOVE                             R3 R0
      112 DUPTABLE                         R4 K18 [{"gamepadId"}]
      113 GETTABLEKS                       R6 R1 K6 ["payload"]
      115 GETTABLEKS                       R5 R6 K7 ["gamepadId"]
      117 SETTABLEKS                       R5 R4 K7 ["gamepadId"]
      119 CALL                             R2 2 -1
      120 CLOSEUPVALS                      R0
      121 RETURN                           R2 -1
      122 GETTABLEKS                       R2 R1 K4 ["type"]
      124 JUMPIFNOTEQKS                    R2 K5 ["UpdateMappingsForGamepadId"] ; [+28]
      126 GETUPVAL                         R4 0
      127 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
      129 GETTABLEKS                       R2 R3 K1 ["join"]
      131 MOVE                             R3 R0
      132 DUPTABLE                         R4 K22 [{"isUpdatingMappingForKey", "isUpdatingMappingForGamepadId", "latestErrorMessage"}]
      133 GETUPVAL                         R6 0
      134 GETTABLEKS                       R5 R6 K23 ["None"]
      136 SETTABLEKS                       R5 R4 K19 ["isUpdatingMappingForKey"]
      138 GETTABLEKS                       R6 R1 K6 ["payload"]
      140 GETTABLEKS                       R5 R6 K7 ["gamepadId"]
      142 SETTABLEKS                       R5 R4 K20 ["isUpdatingMappingForGamepadId"]
      144 GETTABLEKS                       R6 R1 K6 ["payload"]
      146 GETTABLEKS                       R5 R6 K21 ["latestErrorMessage"]
      148 SETTABLEKS                       R5 R4 K21 ["latestErrorMessage"]
      150 CALL                             R2 2 -1
      151 CLOSEUPVALS                      R0
      152 RETURN                           R2 -1
      153 GETTABLEKS                       R2 R1 K4 ["type"]
      155 JUMPIFNOTEQKS                    R2 K24 ["SetGamepadId"] ; [+23]
      157 GETUPVAL                         R4 0
      158 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
      160 GETTABLEKS                       R2 R3 K1 ["join"]
      162 MOVE                             R3 R0
      163 DUPTABLE                         R4 K25 [{"gamepadId", "isUpdatingMappingForGamepadId"}]
      164 GETTABLEKS                       R6 R1 K6 ["payload"]
      166 GETTABLEKS                       R5 R6 K7 ["gamepadId"]
      168 SETTABLEKS                       R5 R4 K7 ["gamepadId"]
      170 GETTABLEKS                       R6 R1 K6 ["payload"]
      172 GETTABLEKS                       R5 R6 K7 ["gamepadId"]
      174 SETTABLEKS                       R5 R4 K20 ["isUpdatingMappingForGamepadId"]
      176 CALL                             R2 2 -1
      177 CLOSEUPVALS                      R0
      178 RETURN                           R2 -1
      179 GETTABLEKS                       R2 R1 K4 ["type"]
      181 JUMPIFNOTEQKS                    R2 K26 ["SetIsUpdatingMappingFor"] ; [+29]
      183 GETUPVAL                         R4 0
      184 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
      186 GETTABLEKS                       R2 R3 K1 ["join"]
      188 MOVE                             R3 R0
      189 DUPTABLE                         R4 K27 [{"isUpdatingMappingForGamepadId", "isUpdatingMappingForKey"}]
      190 GETTABLEKS                       R6 R1 K6 ["payload"]
      192 GETTABLEKS                       R5 R6 K7 ["gamepadId"]
      194 JUMPIF                           R5 ; [+2]
      195 GETTABLEKS                       R5 R0 K20 ["isUpdatingMappingForGamepadId"]
      197 SETTABLEKS                       R5 R4 K20 ["isUpdatingMappingForGamepadId"]
      199 GETTABLEKS                       R6 R1 K6 ["payload"]
      201 GETTABLEKS                       R5 R6 K28 ["keyName"]
      203 JUMPIF                           R5 ; [+2]
      204 GETTABLEKS                       R5 R0 K19 ["isUpdatingMappingForKey"]
      206 SETTABLEKS                       R5 R4 K19 ["isUpdatingMappingForKey"]
      208 CALL                             R2 2 -1
      209 CLOSEUPVALS                      R0
      210 RETURN                           R2 -1
      211 GETTABLEKS                       R2 R1 K4 ["type"]
      213 JUMPIFNOTEQKS                    R2 K29 ["OpenMappingsDialog"] ; [+14]
      215 GETUPVAL                         R4 0
      216 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
      218 GETTABLEKS                       R2 R3 K1 ["join"]
      220 MOVE                             R3 R0
      221 DUPTABLE                         R4 K31 [{"isMappingsDialogOpen"}]
      222 LOADB                            R5 1
      223 SETTABLEKS                       R5 R4 K30 ["isMappingsDialogOpen"]
      225 CALL                             R2 2 -1
      226 CLOSEUPVALS                      R0
      227 RETURN                           R2 -1
      228 GETTABLEKS                       R2 R1 K4 ["type"]
      230 JUMPIFNOTEQKS                    R2 K32 ["CloseMappingsDialog"] ; [+34]
      232 GETUPVAL                         R4 0
      233 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
      235 GETTABLEKS                       R2 R3 K1 ["join"]
      237 MOVE                             R3 R0
      238 DUPTABLE                         R4 K33 [{"isMappingsDialogOpen", "mappings", "mappingsOverrides", "latestErrorMessage"}]
      239 LOADB                            R5 0
      240 SETTABLEKS                       R5 R4 K30 ["isMappingsDialogOpen"]
      242 GETUPVAL                         R6 2
      243 GETTABLEKS                       R5 R6 K34 ["map"]
      245 GETTABLEKS                       R6 R0 K2 ["mappings"]
      247 NEWCLOSURE                       R7 P0
      248 CAPTURE                          UPVAL U0
      249 CAPTURE                          REF R0
      250 CALL                             R5 2 1
      251 SETTABLEKS                       R5 R4 K2 ["mappings"]
      253 NEWTABLE                         R5 0 0
      255 SETTABLEKS                       R5 R4 K9 ["mappingsOverrides"]
      257 GETUPVAL                         R6 0
      258 GETTABLEKS                       R5 R6 K23 ["None"]
      260 SETTABLEKS                       R5 R4 K21 ["latestErrorMessage"]
      262 CALL                             R2 2 -1
      263 CLOSEUPVALS                      R0
      264 RETURN                           R2 -1
      265 GETTABLEKS                       R2 R1 K4 ["type"]
      267 JUMPIFNOTEQKS                    R2 K35 ["ResetCaches"] ; [+21]
      269 GETUPVAL                         R4 0
      270 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
      272 GETTABLEKS                       R2 R3 K1 ["join"]
      274 MOVE                             R3 R0
      275 DUPTABLE                         R4 K36 [{"isUpdatingMappingForKey", "latestErrorMessage"}]
      276 GETUPVAL                         R6 0
      277 GETTABLEKS                       R5 R6 K23 ["None"]
      279 SETTABLEKS                       R5 R4 K19 ["isUpdatingMappingForKey"]
      281 GETUPVAL                         R6 0
      282 GETTABLEKS                       R5 R6 K23 ["None"]
      284 SETTABLEKS                       R5 R4 K21 ["latestErrorMessage"]
      286 CALL                             R2 2 -1
      287 CLOSEUPVALS                      R0
      288 RETURN                           R2 -1
      289 GETTABLEKS                       R2 R1 K4 ["type"]
      291 JUMPIFNOTEQKS                    R2 K37 ["ShowErrorBanner"] ; [+17]
      293 GETUPVAL                         R4 0
      294 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
      296 GETTABLEKS                       R2 R3 K1 ["join"]
      298 MOVE                             R3 R0
      299 DUPTABLE                         R4 K38 [{"latestErrorMessage"}]
      300 GETTABLEKS                       R6 R1 K6 ["payload"]
      302 GETTABLEKS                       R5 R6 K39 ["errorMessage"]
      304 SETTABLEKS                       R5 R4 K21 ["latestErrorMessage"]
      306 CALL                             R2 2 -1
      307 CLOSEUPVALS                      R0
      308 RETURN                           R2 -1
      309 GETTABLEKS                       R2 R1 K4 ["type"]
      311 JUMPIFNOTEQKS                    R2 K40 ["SetVRConnected"] ; [+17]
      313 GETUPVAL                         R4 0
      314 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
      316 GETTABLEKS                       R2 R3 K1 ["join"]
      318 MOVE                             R3 R0
      319 DUPTABLE                         R4 K42 [{"isVRConnected"}]
      320 GETTABLEKS                       R6 R1 K6 ["payload"]
      322 GETTABLEKS                       R5 R6 K43 ["isConnected"]
      324 SETTABLEKS                       R5 R4 K41 ["isVRConnected"]
      326 CALL                             R2 2 -1
      327 CLOSEUPVALS                      R0
      328 RETURN                           R2 -1
      329 GETTABLEKS                       R2 R1 K4 ["type"]
      331 JUMPIFNOTEQKS                    R2 K44 ["ChangeEmulatedDevice"] ; [+23]
      333 GETUPVAL                         R4 0
      334 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
      336 GETTABLEKS                       R2 R3 K1 ["join"]
      338 MOVE                             R3 R0
      339 DUPTABLE                         R4 K47 [{"emulatedDeviceId", "availableDeviceIds"}]
      340 GETTABLEKS                       R6 R1 K6 ["payload"]
      342 GETTABLEKS                       R5 R6 K45 ["emulatedDeviceId"]
      344 SETTABLEKS                       R5 R4 K45 ["emulatedDeviceId"]
      346 GETTABLEKS                       R6 R1 K6 ["payload"]
      348 GETTABLEKS                       R5 R6 K46 ["availableDeviceIds"]
      350 SETTABLEKS                       R5 R4 K46 ["availableDeviceIds"]
      352 CALL                             R2 2 -1
      353 CLOSEUPVALS                      R0
      354 RETURN                           R2 -1
      355 GETTABLEKS                       R2 R1 K4 ["type"]
      357 JUMPIFNOTEQKS                    R2 K48 ["SetVRCFrameTranslationSensitivity"] ; [+17]
      359 GETUPVAL                         R4 0
      360 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
      362 GETTABLEKS                       R2 R3 K1 ["join"]
      364 MOVE                             R3 R0
      365 DUPTABLE                         R4 K50 [{"translationSensitivity"}]
      366 GETTABLEKS                       R6 R1 K6 ["payload"]
      368 GETTABLEKS                       R5 R6 K49 ["translationSensitivity"]
      370 SETTABLEKS                       R5 R4 K49 ["translationSensitivity"]
      372 CALL                             R2 2 -1
      373 CLOSEUPVALS                      R0
      374 RETURN                           R2 -1
      375 CLOSEUPVALS                      R0
      376 RETURN                           R0 1

PROTO_5:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R1 0
        2 JUMPIFEQKNIL                     R1 ; [+4]
        4 GETUPVAL                         R0 0
        5 CALL                             R0 0 1
        6 JUMP                             ; [+4]
        7 DUPTABLE                         R0 K1 [{"getText"}]
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K0 ["getText"]
       11 GETTABLEKS                       R1 R0 K0 ["getText"]
       13 JUMPIFNOTEQKNIL                  R1 ; [+3]
       15 LOADK                            R1 K2 [""]
       16 RETURN                           R1 1
       17 GETVARARGS                       R3 -1
       18 NAMECALL                         R1 R0 K0 ["getText"]
       20 CALL                             R1 -1 -1
       21 RETURN                           R1 -1

PROTO_6:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["mappings"]
        3 GETTABLE                         R2 R3 R0
        4 JUMPIFNOT                        R2 ; [+22]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K1 ["isEmpty"]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R4 R5 K0 ["mappings"]
       11 GETTABLE                         R3 R4 R0
       12 CALL                             R2 1 1
       13 JUMPIF                           R2 ; [+13]
       14 JUMPIF                           R1 ; [+12]
       15 GETUPVAL                         R2 2
       16 DUPTABLE                         R3 K4 [{"type", "payload"}]
       17 LOADK                            R4 K5 ["SetIsUpdatingMappingFor"]
       18 SETTABLEKS                       R4 R3 K2 ["type"]
       20 DUPTABLE                         R4 K7 [{"gamepadId"}]
       21 SETTABLEKS                       R0 R4 K6 ["gamepadId"]
       23 SETTABLEKS                       R4 R3 K3 ["payload"]
       25 CALL                             R2 1 0
       26 RETURN                           R0 0
       27 NEWTABLE                         R2 0 0
       29 GETUPVAL                         R3 3
       30 LOADNIL                          R4
       31 LOADNIL                          R5
       32 FORGPREP                         R3
       33 GETUPVAL                         R8 4
       34 MOVE                             R9 R0
       35 GETTABLEKS                       R10 R7 K8 ["keyCode"]
       37 GETTABLEKS                       R11 R7 K9 ["direction"]
       39 CALL                             R8 3 1
       40 JUMPIFNOT                        R8 ; [+5]
       41 MOVE                             R9 R8
       42 JUMPIF                           R9 ; [+2]
       43 NEWTABLE                         R9 0 0
       45 SETTABLE                         R9 R2 R6
       46 FORGLOOP                         R3 2 ; [-14]
       48 GETUPVAL                         R3 2
       49 DUPTABLE                         R4 K4 [{"type", "payload"}]
       50 LOADK                            R5 K10 ["UpdateMappingsForGamepadId"]
       51 SETTABLEKS                       R5 R4 K2 ["type"]
       53 DUPTABLE                         R5 K12 [{"newMappingsForGamepadId", "gamepadId"}]
       54 SETTABLEKS                       R2 R5 K11 ["newMappingsForGamepadId"]
       56 SETTABLEKS                       R0 R5 K6 ["gamepadId"]
       58 SETTABLEKS                       R5 R4 K3 ["payload"]
       60 CALL                             R3 1 0
       61 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R2 K2 [{"type", "payload"}]
        2 LOADK                            R3 K3 ["ResetCaches"]
        3 SETTABLEKS                       R3 R2 K0 ["type"]
        5 DUPTABLE                         R3 K5 [{"gamepadId"}]
        6 SETTABLEKS                       R0 R3 K4 ["gamepadId"]
        8 SETTABLEKS                       R3 R2 K1 ["payload"]
       10 CALL                             R1 1 0
       11 GETUPVAL                         R1 1
       12 MOVE                             R2 R0
       13 LOADB                            R3 1
       14 CALL                             R1 2 0
       15 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["gamepadId"]
        3 GETUPVAL                         R1 1
        4 JUMPIFEQ                         R0 R1 ; [+21]
        6 GETUPVAL                         R0 2
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K0 ["gamepadId"]
       10 NAMECALL                         R0 R0 K1 ["DisconnectGamepadAsync"]
       12 CALL                             R0 2 0
       13 GETUPVAL                         R0 2
       14 GETUPVAL                         R2 3
       15 GETUPVAL                         R4 4
       16 GETUPVAL                         R5 3
       17 GETTABLE                         R3 R4 R5
       18 NAMECALL                         R0 R0 K2 ["ConnectGamepadAsync"]
       20 CALL                             R0 3 0
       21 GETUPVAL                         R0 2
       22 GETUPVAL                         R2 3
       23 NAMECALL                         R0 R0 K3 ["SetActiveGamepadAsync"]
       25 CALL                             R0 2 0
       26 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["gamepadId"]
        3 JUMPIFNOTEQ                      R1 R0 ; [+3]
        5 CLOSEUPVALS                      R0
        6 RETURN                           R0 0
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R1 R2 K0 ["gamepadId"]
       10 GETUPVAL                         R2 1
       11 JUMPIFNOTEQ                      R1 R2 ; [+5]
       13 JUMPIFNOTEQKNIL                  R0 ; [+3]
       15 CLOSEUPVALS                      R0
       16 RETURN                           R0 0
       17 GETIMPORT                        R1 K2 [pcall]
       19 NEWCLOSURE                       R2 P0
       20 CAPTURE                          UPVAL U0
       21 CAPTURE                          UPVAL U2
       22 CAPTURE                          UPVAL U3
       23 CAPTURE                          REF R0
       24 CAPTURE                          UPVAL U4
       25 CALL                             R1 1 0
       26 GETUPVAL                         R1 2
       27 JUMPIFNOTEQ                      R0 R1 ; [+2]
       29 GETUPVAL                         R0 1
       30 GETUPVAL                         R1 5
       31 MOVE                             R2 R0
       32 CALL                             R1 1 0
       33 GETUPVAL                         R1 6
       34 DUPTABLE                         R2 K5 [{"type", "payload"}]
       35 LOADK                            R3 K6 ["SetGamepadId"]
       36 SETTABLEKS                       R3 R2 K3 ["type"]
       38 DUPTABLE                         R3 K7 [{"gamepadId"}]
       39 SETTABLEKS                       R0 R3 K0 ["gamepadId"]
       41 SETTABLEKS                       R3 R2 K4 ["payload"]
       43 CALL                             R1 1 0
       44 CLOSEUPVALS                      R0
       45 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R1 K2 [{"type", "payload"}]
        2 LOADK                            R2 K3 ["SetIsUpdatingMappingFor"]
        3 SETTABLEKS                       R2 R1 K0 ["type"]
        5 DUPTABLE                         R2 K5 [{"keyName"}]
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R3 R4 K6 ["None"]
        9 SETTABLEKS                       R3 R2 K4 ["keyName"]
       11 SETTABLEKS                       R2 R1 K1 ["payload"]
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_11:
        0 GETIMPORT                        R2 K2 [task.delay]
        2 LOADN                            R3 4
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R2 2 1
        7 SETUPVAL                         R2 0
        8 GETUPVAL                         R2 1
        9 DUPTABLE                         R3 K5 [{"type", "payload"}]
       10 LOADK                            R4 K6 ["SetIsUpdatingMappingFor"]
       11 SETTABLEKS                       R4 R3 K3 ["type"]
       13 DUPTABLE                         R4 K9 [{"gamepadId", "keyName"}]
       14 SETTABLEKS                       R0 R4 K7 ["gamepadId"]
       16 SETTABLEKS                       R1 R4 K8 ["keyName"]
       18 SETTABLEKS                       R4 R3 K4 ["payload"]
       20 CALL                             R2 1 0
       21 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETUPVAL                         R4 3
        4 GETUPVAL                         R5 4
        5 NAMECALL                         R0 R0 K0 ["UpdateKeyMappingAsync"]
        7 CALL                             R0 5 -1
        8 RETURN                           R0 -1

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["isUpdatingMappingForGamepadId"]
        3 GETUPVAL                         R4 1
        4 GETUPVAL                         R6 0
        5 GETTABLEKS                       R5 R6 K1 ["isUpdatingMappingForKey"]
        7 GETTABLE                         R3 R4 R5
        8 GETTABLEKS                       R2 R3 K2 ["keyCode"]
       10 GETUPVAL                         R5 1
       11 GETUPVAL                         R7 0
       12 GETTABLEKS                       R6 R7 K1 ["isUpdatingMappingForKey"]
       14 GETTABLE                         R4 R5 R6
       15 GETTABLEKS                       R3 R4 K3 ["direction"]
       17 LENGTH                           R4 R0
       18 JUMPIFNOT                        R4 ; [+15]
       19 MOVE                             R4 R0
       20 LOADNIL                          R5
       21 LOADNIL                          R6
       22 FORGPREP                         R4
       23 GETUPVAL                         R10 2
       24 GETTABLEKS                       R9 R10 K4 ["includes"]
       26 GETUPVAL                         R10 3
       27 MOVE                             R11 R8
       28 CALL                             R9 2 1
       29 JUMPIFNOTEQKB                    R9 TRUE ; [+2]
       31 RETURN                           R0 0
       32 FORGLOOP                         R4 2 ; [-10]
       34 JUMPIFEQKNIL                     R1 ; [+3]
       36 JUMPIFNOTEQKNIL                  R2 ; [+2]
       38 RETURN                           R0 0
       39 GETIMPORT                        R4 K7 [task.cancel]
       41 GETUPVAL                         R5 4
       42 CALL                             R4 1 0
       43 GETUPVAL                         R6 0
       44 GETTABLEKS                       R5 R6 K8 ["mappings"]
       46 GETTABLE                         R4 R5 R1
       47 LOADNIL                          R5
       48 JUMPIFEQKNIL                     R4 ; [+38]
       50 MOVE                             R6 R4
       51 LOADNIL                          R7
       52 LOADNIL                          R8
       53 FORGPREP                         R6
       54 GETUPVAL                         R12 0
       55 GETTABLEKS                       R11 R12 K1 ["isUpdatingMappingForKey"]
       57 JUMPIFEQ                         R9 R11 ; [+27]
       59 LENGTH                           R12 R10
       60 LENGTH                           R13 R0
       61 JUMPIFEQ                         R12 R13 ; [+2]
       63 LOADB                            R11 0 +1
       64 LOADB                            R11 1
       65 JUMPIFNOT                        R11 ; [+16]
       66 MOVE                             R12 R0
       67 LOADNIL                          R13
       68 LOADNIL                          R14
       69 FORGPREP                         R12
       70 GETUPVAL                         R18 2
       71 GETTABLEKS                       R17 R18 K4 ["includes"]
       73 MOVE                             R18 R10
       74 MOVE                             R19 R16
       75 CALL                             R17 2 1
       76 JUMPIFNOTEQKB                    R17 FALSE ; [+3]
       78 LOADB                            R11 0
       79 JUMP                             ; [+2]
       80 FORGLOOP                         R12 2 ; [-11]
       82 JUMPIFNOT                        R11 ; [+2]
       83 MOVE                             R5 R9
       84 JUMP                             ; [+2]
       85 FORGLOOP                         R6 2 ; [-32]
       87 GETUPVAL                         R6 5
       88 MOVE                             R7 R1
       89 MOVE                             R8 R2
       90 MOVE                             R9 R3
       91 CALL                             R6 3 1
       92 GETIMPORT                        R7 K10 [pcall]
       94 NEWCLOSURE                       R8 P0
       95 CAPTURE                          UPVAL U6
       96 CAPTURE                          VAL R1
       97 CAPTURE                          VAL R0
       98 CAPTURE                          VAL R2
       99 CAPTURE                          VAL R3
      100 CALL                             R7 1 2
      101 JUMPIFNOT                        R7 ; [+95]
      102 GETUPVAL                         R9 7
      103 DUPTABLE                         R10 K13 [{"type", "payload"}]
      104 LOADK                            R11 K14 ["UpdateMappingsForGamepadId"]
      105 SETTABLEKS                       R11 R10 K11 ["type"]
      107 DUPTABLE                         R11 K19 [{"newMappingsForGamepadId", "newMappingsOverridesForGamepadId", "gamepadId", "latestErrorMessage"}]
      108 GETUPVAL                         R14 8
      109 GETTABLEKS                       R13 R14 K20 ["Dictionary"]
      111 GETTABLEKS                       R12 R13 K21 ["join"]
      113 GETUPVAL                         R15 0
      114 GETTABLEKS                       R14 R15 K8 ["mappings"]
      116 GETTABLE                         R13 R14 R1
      117 JUMPIF                           R13 ; [+2]
      118 NEWTABLE                         R13 0 0
      120 GETUPVAL                         R16 8
      121 GETTABLEKS                       R15 R16 K20 ["Dictionary"]
      123 GETTABLEKS                       R14 R15 K21 ["join"]
      125 NEWTABLE                         R15 1 0
      127 GETUPVAL                         R17 0
      128 GETTABLEKS                       R16 R17 K1 ["isUpdatingMappingForKey"]
      130 SETTABLE                         R0 R15 R16
      131 JUMPIFNOT                        R5 ; [+6]
      132 NEWTABLE                         R16 1 0
      134 NEWTABLE                         R17 0 0
      136 SETTABLE                         R17 R16 R5
      137 JUMP                             ; [+2]
      138 NEWTABLE                         R16 0 0
      140 CALL                             R14 2 -1
      141 CALL                             R12 -1 1
      142 SETTABLEKS                       R12 R11 K15 ["newMappingsForGamepadId"]
      144 GETUPVAL                         R14 8
      145 GETTABLEKS                       R13 R14 K20 ["Dictionary"]
      147 GETTABLEKS                       R12 R13 K21 ["join"]
      149 GETUPVAL                         R15 0
      150 GETTABLEKS                       R14 R15 K22 ["mappingsOverrides"]
      152 GETTABLE                         R13 R14 R1
      153 JUMPIF                           R13 ; [+2]
      154 NEWTABLE                         R13 0 0
      156 GETUPVAL                         R16 8
      157 GETTABLEKS                       R15 R16 K20 ["Dictionary"]
      159 GETTABLEKS                       R14 R15 K21 ["join"]
      161 NEWTABLE                         R15 1 0
      163 GETUPVAL                         R17 0
      164 GETTABLEKS                       R16 R17 K1 ["isUpdatingMappingForKey"]
      166 SETTABLE                         R6 R15 R16
      167 JUMPIFNOT                        R5 ; [+4]
      168 NEWTABLE                         R16 1 0
      170 SETTABLE                         R0 R16 R5
      171 JUMP                             ; [+2]
      172 NEWTABLE                         R16 0 0
      174 CALL                             R14 2 -1
      175 CALL                             R12 -1 1
      176 SETTABLEKS                       R12 R11 K16 ["newMappingsOverridesForGamepadId"]
      178 SETTABLEKS                       R1 R11 K17 ["gamepadId"]
      180 JUMPIFNOT                        R5 ; [+9]
      181 GETUPVAL                         R12 9
      182 LOADK                            R13 K23 ["MappingsMessages"]
      183 LOADK                            R14 K24 ["MappingDeletedWarning"]
      184 NEWTABLE                         R15 1 0
      186 SETTABLEKS                       R5 R15 K25 ["prevDestKey"]
      188 CALL                             R12 3 1
      189 JUMP                             ; [+1]
      190 LOADNIL                          R12
      191 SETTABLEKS                       R12 R11 K18 ["latestErrorMessage"]
      193 SETTABLEKS                       R11 R10 K12 ["payload"]
      195 CALL                             R9 1 0
      196 RETURN                           R0 0
      197 GETUPVAL                         R9 7
      198 DUPTABLE                         R10 K13 [{"type", "payload"}]
      199 LOADK                            R11 K26 ["ShowErrorBanner"]
      200 SETTABLEKS                       R11 R10 K11 ["type"]
      202 DUPTABLE                         R11 K28 [{"errorMessage"}]
      203 GETUPVAL                         R12 9
      204 LOADK                            R13 K23 ["MappingsMessages"]
      205 LOADK                            R14 K29 ["MappingsUpdateFailedError"]
      206 NEWTABLE                         R15 1 0
      208 SETTABLEKS                       R8 R15 K30 ["errorMsg"]
      210 CALL                             R12 3 1
      211 SETTABLEKS                       R12 R11 K27 ["errorMessage"]
      213 SETTABLEKS                       R11 R10 K12 ["payload"]
      215 CALL                             R9 1 0
      216 GETUPVAL                         R9 10
      217 GETUPVAL                         R11 0
      218 GETTABLEKS                       R10 R11 K0 ["isUpdatingMappingForGamepadId"]
      220 CALL                             R9 1 0
      221 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["ResetToDefaultKeyMappingAsync"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["isUpdatingMappingForGamepadId"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+2]
        5 RETURN                           R0 0
        6 GETIMPORT                        R1 K2 [pcall]
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          VAL R0
       11 CALL                             R1 1 2
       12 JUMPIFNOT                        R1 ; [+6]
       13 GETUPVAL                         R3 2
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R4 R5 K0 ["isUpdatingMappingForGamepadId"]
       17 CALL                             R3 1 0
       18 RETURN                           R0 0
       19 GETUPVAL                         R3 3
       20 DUPTABLE                         R4 K5 [{"type", "payload"}]
       21 LOADK                            R5 K6 ["ShowErrorBanner"]
       22 SETTABLEKS                       R5 R4 K3 ["type"]
       24 DUPTABLE                         R5 K8 [{"errorMessage"}]
       25 GETUPVAL                         R6 4
       26 LOADK                            R7 K9 ["MappingsMessages"]
       27 LOADK                            R8 K10 ["MappingsResetToDefaultFailedError"]
       28 NEWTABLE                         R9 1 0
       30 SETTABLEKS                       R2 R9 K11 ["errorMsg"]
       32 CALL                             R6 3 1
       33 SETTABLEKS                       R6 R5 K7 ["errorMessage"]
       35 SETTABLEKS                       R5 R4 K4 ["payload"]
       37 CALL                             R3 1 0
       38 GETUPVAL                         R3 2
       39 GETUPVAL                         R5 0
       40 GETTABLEKS                       R4 R5 K0 ["isUpdatingMappingForGamepadId"]
       42 CALL                             R3 1 0
       43 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R0 R3 K0 ["mappingsOverrides"]
        3 LOADNIL                          R1
        4 LOADNIL                          R2
        5 FORGPREP                         R0
        6 MOVE                             R5 R4
        7 LOADNIL                          R6
        8 LOADNIL                          R7
        9 FORGPREP                         R5
       10 GETUPVAL                         R12 1
       11 GETTABLE                         R11 R12 R8
       12 GETTABLEKS                       R10 R11 K1 ["keyCode"]
       14 GETUPVAL                         R13 1
       15 GETTABLE                         R12 R13 R8
       16 GETTABLEKS                       R11 R12 K2 ["direction"]
       18 GETUPVAL                         R12 2
       19 MOVE                             R14 R3
       20 MOVE                             R15 R9
       21 MOVE                             R16 R10
       22 MOVE                             R17 R11
       23 NAMECALL                         R12 R12 K3 ["UpdateKeyMappingAsync"]
       25 CALL                             R12 5 0
       26 FORGLOOP                         R5 2 ; [-17]
       28 FORGLOOP                         R0 2 ; [-23]
       30 RETURN                           R0 0

PROTO_17:
        0 JUMPIFNOT                        R0 ; [+7]
        1 GETUPVAL                         R1 0
        2 DUPTABLE                         R2 K1 [{"type"}]
        3 LOADK                            R3 K2 ["OpenMappingsDialog"]
        4 SETTABLEKS                       R3 R2 K0 ["type"]
        6 CALL                             R1 1 0
        7 RETURN                           R0 0
        8 GETIMPORT                        R1 K4 [pcall]
       10 NEWCLOSURE                       R2 P0
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          UPVAL U3
       14 CALL                             R1 1 2
       15 JUMPIF                           R1 ; [+29]
       16 GETUPVAL                         R3 0
       17 DUPTABLE                         R4 K6 [{"type", "payload"}]
       18 LOADK                            R5 K7 ["ShowErrorBanner"]
       19 SETTABLEKS                       R5 R4 K0 ["type"]
       21 DUPTABLE                         R5 K9 [{"errorMessage"}]
       22 GETUPVAL                         R6 4
       23 LOADK                            R7 K10 ["MappingsMessages"]
       24 LOADK                            R8 K11 ["MappingsUpdateFailedError"]
       25 NEWTABLE                         R9 1 0
       27 SETTABLEKS                       R2 R9 K12 ["errorMsg"]
       29 CALL                             R6 3 1
       30 SETTABLEKS                       R6 R5 K8 ["errorMessage"]
       32 SETTABLEKS                       R5 R4 K5 ["payload"]
       34 CALL                             R3 1 0
       35 GETIMPORT                        R3 K14 [print]
       37 GETIMPORT                        R4 K16 [error]
       39 CALL                             R3 1 0
       40 GETUPVAL                         R3 5
       41 GETUPVAL                         R5 1
       42 GETTABLEKS                       R4 R5 K17 ["isUpdatingMappingForGamepadId"]
       44 CALL                             R3 1 0
       45 GETUPVAL                         R3 0
       46 DUPTABLE                         R4 K1 [{"type"}]
       47 LOADK                            R5 K18 ["CloseMappingsDialog"]
       48 SETTABLEKS                       R5 R4 K0 ["type"]
       50 CALL                             R3 1 0
       51 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R1 K1 [{"type"}]
        2 LOADK                            R2 K2 ["KeepOverrides"]
        3 SETTABLEKS                       R2 R1 K0 ["type"]
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 0
        7 DUPTABLE                         R1 K1 [{"type"}]
        8 LOADK                            R2 K3 ["CloseMappingsDialog"]
        9 SETTABLEKS                       R2 R1 K0 ["type"]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["isVRConnected"]
        3 GETUPVAL                         R1 1
        4 JUMPIFEQ                         R0 R1 ; [+18]
        6 GETUPVAL                         R0 1
        7 JUMPIFNOT                        R0 ; [+8]
        8 GETUPVAL                         R0 2
        9 GETUPVAL                         R2 3
       10 GETIMPORT                        R3 K4 [Enum.VRDeviceType.OculusQuest]
       12 NAMECALL                         R0 R0 K5 ["ConnectVRDeviceAsync"]
       14 CALL                             R0 3 0
       15 RETURN                           R0 0
       16 GETUPVAL                         R0 2
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R2 R3 K6 ["gamepadId"]
       20 NAMECALL                         R0 R0 K7 ["DisconnectVRDeviceAsync"]
       22 CALL                             R0 2 0
       23 RETURN                           R0 0

PROTO_20:
        0 GETIMPORT                        R2 K1 [pcall]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R1
        7 CALL                             R2 1 0
        8 GETUPVAL                         R2 2
        9 DUPTABLE                         R3 K4 [{"type", "payload"}]
       10 LOADK                            R4 K5 ["SetVRConnected"]
       11 SETTABLEKS                       R4 R3 K2 ["type"]
       13 DUPTABLE                         R4 K7 [{"isConnected"}]
       14 SETTABLEKS                       R0 R4 K6 ["isConnected"]
       16 SETTABLEKS                       R4 R3 K3 ["payload"]
       18 CALL                             R2 1 0
       19 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 NAMECALL                         R0 R0 K0 ["SetVRUserCFrameActiveAsync"]
        5 CALL                             R0 3 0
        6 RETURN                           R0 0

PROTO_22:
        0 GETIMPORT                        R3 K1 [pcall]
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 CALL                             R3 1 0
        7 GETUPVAL                         R3 1
        8 DUPTABLE                         R4 K4 [{"type", "payload"}]
        9 LOADK                            R5 K5 ["SetVRUserCFrameActive"]
       10 SETTABLEKS                       R5 R4 K2 ["type"]
       12 DUPTABLE                         R5 K9 [{"vrUserCFrame", "isActive", "shouldVRControlsRespond"}]
       13 SETTABLEKS                       R0 R5 K6 ["vrUserCFrame"]
       15 SETTABLEKS                       R1 R5 K7 ["isActive"]
       17 SETTABLEKS                       R2 R5 K8 ["shouldVRControlsRespond"]
       19 SETTABLEKS                       R5 R4 K3 ["payload"]
       21 CALL                             R3 1 0
       22 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["GAMEPAD_TYPE_TO_ID"]
        3 GETTABLEKS                       R1 R2 K1 ["GenericHandheld"]
        5 JUMPIFNOTEQ                      R0 R1 ; [+17]
        7 LOADB                            R1 1
        8 GETUPVAL                         R2 1
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R3 R4 K2 ["GENERIC_HANDHELD_720_EMULATED_DEVICE_ID"]
       12 JUMPIFEQ                         R2 R3 ; [+9]
       14 GETUPVAL                         R2 1
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R3 R4 K3 ["GENERIC_HANDHELD_1080_EMULATED_DEVICE_ID"]
       18 JUMPIFEQ                         R2 R3 ; [+2]
       20 LOADB                            R1 0 +1
       21 LOADB                            R1 1
       22 RETURN                           R1 1
       23 GETUPVAL                         R1 2
       24 JUMPIF                           R1 ; [+6]
       25 GETUPVAL                         R3 3
       26 GETTABLE                         R2 R3 R0
       27 JUMPIFNOTEQKB                    R2 TRUE ; [+2]
       29 LOADB                            R1 0 +1
       30 LOADB                            R1 1
       31 RETURN                           R1 1

PROTO_24:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["emulatedDeviceId"]
        3 GETTABLEKS                       R2 R0 K1 ["deviceId"]
        5 JUMPIFNOTEQ                      R1 R2 ; [+2]
        7 RETURN                           R0 0
        8 GETTABLEKS                       R1 R0 K1 ["deviceId"]
       10 GETUPVAL                         R2 1
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R4 R0 K2 ["platform"]
       14 MOVE                             R5 R1
       15 CALL                             R3 2 1
       16 JUMPIFEQKNIL                     R3 ; [+5]
       18 GETUPVAL                         R5 3
       19 GETTABLEKS                       R4 R5 K3 ["GAMEPAD_TYPE_TO_ID"]
       21 GETTABLE                         R2 R4 R3
       22 GETUPVAL                         R5 0
       23 GETTABLEKS                       R4 R5 K4 ["gamepadId"]
       25 JUMPIFNOTEQ                      R4 R2 ; [+2]
       27 RETURN                           R0 0
       28 GETUPVAL                         R4 4
       29 GETUPVAL                         R7 5
       30 GETTABLE                         R6 R7 R2
       31 JUMPIFEQKB                       R6 TRUE ; [+2]
       33 LOADB                            R5 0 +1
       34 LOADB                            R5 1
       35 GETUPVAL                         R6 6
       36 MOVE                             R7 R5
       37 MOVE                             R8 R2
       38 CALL                             R6 2 0
       39 GETUPVAL                         R7 7
       40 GETTABLEKS                       R6 R7 K5 ["filter"]
       42 GETUPVAL                         R7 4
       43 NEWCLOSURE                       R8 P0
       44 CAPTURE                          UPVAL U3
       45 CAPTURE                          VAL R1
       46 CAPTURE                          VAL R5
       47 CAPTURE                          UPVAL U5
       48 CALL                             R6 2 1
       49 MOVE                             R4 R6
       50 GETUPVAL                         R6 8
       51 DUPTABLE                         R7 K8 [{"type", "payload"}]
       52 LOADK                            R8 K9 ["ChangeEmulatedDevice"]
       53 SETTABLEKS                       R8 R7 K6 ["type"]
       55 DUPTABLE                         R8 K11 [{"emulatedDeviceId", "availableDeviceIds"}]
       56 SETTABLEKS                       R1 R8 K0 ["emulatedDeviceId"]
       58 SETTABLEKS                       R4 R8 K10 ["availableDeviceIds"]
       60 SETTABLEKS                       R8 R7 K7 ["payload"]
       62 CALL                             R6 1 0
       63 GETUPVAL                         R6 9
       64 MOVE                             R7 R2
       65 CALL                             R6 1 0
       66 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["SetCFrameTranslationSensitivityAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_26:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 0
        6 GETUPVAL                         R1 1
        7 DUPTABLE                         R2 K4 [{"type", "payload"}]
        8 LOADK                            R3 K5 ["SetVRCFrameTranslationSensitivity"]
        9 SETTABLEKS                       R3 R2 K2 ["type"]
       11 DUPTABLE                         R3 K7 [{"translationSensitivity"}]
       12 SETTABLEKS                       R0 R3 K6 ["translationSensitivity"]
       14 SETTABLEKS                       R3 R2 K3 ["payload"]
       16 CALL                             R1 1 0
       17 RETURN                           R0 0

PROTO_27:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R2
        2 NEWCLOSURE                       R4 P1
        3 CAPTURE                          VAL R1
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 NEWCLOSURE                       R5 P2
        9 CAPTURE                          VAL R0
       10 CAPTURE                          VAL R4
       11 NEWCLOSURE                       R6 P3
       12 CAPTURE                          VAL R1
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          UPVAL U4
       15 CAPTURE                          UPVAL U5
       16 CAPTURE                          UPVAL U6
       17 CAPTURE                          VAL R4
       18 CAPTURE                          VAL R0
       19 NEWCLOSURE                       R7 P4
       20 CAPTURE                          UPVAL U7
       21 CAPTURE                          VAL R0
       22 CAPTURE                          UPVAL U0
       23 NEWCLOSURE                       R8 P5
       24 CAPTURE                          VAL R1
       25 CAPTURE                          UPVAL U1
       26 CAPTURE                          UPVAL U8
       27 CAPTURE                          UPVAL U9
       28 CAPTURE                          UPVAL U7
       29 CAPTURE                          UPVAL U2
       30 CAPTURE                          UPVAL U5
       31 CAPTURE                          VAL R0
       32 CAPTURE                          UPVAL U0
       33 CAPTURE                          VAL R3
       34 CAPTURE                          VAL R5
       35 NEWCLOSURE                       R9 P6
       36 CAPTURE                          VAL R1
       37 CAPTURE                          UPVAL U5
       38 CAPTURE                          VAL R5
       39 CAPTURE                          VAL R0
       40 CAPTURE                          VAL R3
       41 NEWCLOSURE                       R10 P7
       42 CAPTURE                          VAL R0
       43 CAPTURE                          VAL R1
       44 CAPTURE                          UPVAL U1
       45 CAPTURE                          UPVAL U5
       46 CAPTURE                          VAL R3
       47 CAPTURE                          VAL R5
       48 NEWCLOSURE                       R11 P8
       49 CAPTURE                          VAL R0
       50 NEWCLOSURE                       R12 P9
       51 CAPTURE                          VAL R1
       52 CAPTURE                          UPVAL U5
       53 CAPTURE                          VAL R0
       54 NEWCLOSURE                       R13 P10
       55 CAPTURE                          UPVAL U5
       56 CAPTURE                          VAL R0
       57 NEWCLOSURE                       R14 P11
       58 CAPTURE                          VAL R1
       59 CAPTURE                          UPVAL U4
       60 CAPTURE                          UPVAL U10
       61 CAPTURE                          UPVAL U11
       62 CAPTURE                          UPVAL U12
       63 CAPTURE                          UPVAL U13
       64 CAPTURE                          VAL R12
       65 CAPTURE                          UPVAL U8
       66 CAPTURE                          VAL R0
       67 CAPTURE                          VAL R6
       68 NEWCLOSURE                       R15 P12
       69 CAPTURE                          UPVAL U5
       70 CAPTURE                          VAL R0
       71 DUPTABLE                         R16 K11 [{"connectGamepadId", "setMapping", "loadMappingsForGamepad", "setIsUpdatingMappingFor", "restoreDefaults", "saveMappings", "setIsMappingsDialogOpen", "setVRConnected", "changeEmulatedDevice", "setVRUserCFrameActive", "setVRCFrameTranslationSensitivity"}]
       72 SETTABLEKS                       R6 R16 K0 ["connectGamepadId"]
       74 SETTABLEKS                       R8 R16 K1 ["setMapping"]
       76 SETTABLEKS                       R4 R16 K2 ["loadMappingsForGamepad"]
       78 SETTABLEKS                       R7 R16 K3 ["setIsUpdatingMappingFor"]
       80 SETTABLEKS                       R9 R16 K4 ["restoreDefaults"]
       82 SETTABLEKS                       R11 R16 K5 ["saveMappings"]
       84 SETTABLEKS                       R10 R16 K6 ["setIsMappingsDialogOpen"]
       86 SETTABLEKS                       R12 R16 K7 ["setVRConnected"]
       88 SETTABLEKS                       R14 R16 K8 ["changeEmulatedDevice"]
       90 SETTABLEKS                       R13 R16 K9 ["setVRUserCFrameActive"]
       92 SETTABLEKS                       R15 R16 K10 ["setVRCFrameTranslationSensitivity"]
       94 RETURN                           R16 1

PROTO_28:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R4 3
        4 GETTABLEKS                       R3 R4 K0 ["getLocalization"]
        6 CALL                             R0 3 1
        7 RETURN                           R0 1

PROTO_29:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetCurrentlyEmulatedDeviceAsync"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_30:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["gamepadId"]
        3 GETUPVAL                         R1 1
        4 JUMPIFNOTEQ                      R0 R1 ; [+38]
        6 GETIMPORT                        R0 K2 [pcall]
        8 DUPCLOSURE                       R1 K3 [PROTO_29]
        9 CAPTURE                          UPVAL U2
       10 CALL                             R0 1 2
       11 JUMPIF                           R0 ; [+5]
       12 GETIMPORT                        R2 K5 [warn]
       14 LOADK                            R3 K6 ["ControllersEmulator: Failed to get currently emulated device: "]
       15 MOVE                             R4 R1
       16 CALL                             R2 2 0
       17 JUMPIFNOTEQKNIL                  R1 ; [+7]
       19 GETUPVAL                         R3 3
       20 GETTABLEKS                       R2 R3 K7 ["connectGamepadId"]
       22 GETUPVAL                         R3 4
       23 CALL                             R2 1 0
       24 RETURN                           R0 0
       25 GETUPVAL                         R2 5
       26 GETTABLEKS                       R3 R1 K8 ["platform"]
       28 GETTABLEKS                       R4 R1 K9 ["deviceId"]
       30 CALL                             R2 2 1
       31 JUMPIFNOT                        R2 ; [+6]
       32 GETUPVAL                         R4 3
       33 GETTABLEKS                       R3 R4 K10 ["changeEmulatedDevice"]
       35 MOVE                             R4 R1
       36 CALL                             R3 1 0
       37 RETURN                           R0 0
       38 GETUPVAL                         R4 3
       39 GETTABLEKS                       R3 R4 K7 ["connectGamepadId"]
       41 GETUPVAL                         R4 4
       42 CALL                             R3 1 0
       43 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useReducer"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R4 2
        5 GETTABLEKS                       R3 R4 K1 ["DEFAULT_MAPPINGS_STATE"]
        7 CALL                             R1 2 2
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R3 R4 K2 ["useMemo"]
       11 NEWCLOSURE                       R4 P0
       12 CAPTURE                          UPVAL U3
       13 CAPTURE                          VAL R2
       14 CAPTURE                          VAL R1
       15 CAPTURE                          VAL R0
       16 NEWTABLE                         R5 0 3
       18 MOVE                             R6 R2
       19 MOVE                             R7 R1
       20 GETTABLEKS                       R8 R0 K3 ["getLocalization"]
       22 SETLIST                          R5 R6 3 [1]
       24 CALL                             R3 2 1
       25 GETUPVAL                         R5 0
       26 GETTABLEKS                       R4 R5 K4 ["useEffect"]
       28 NEWCLOSURE                       R5 P1
       29 CAPTURE                          VAL R1
       30 CAPTURE                          UPVAL U4
       31 CAPTURE                          UPVAL U5
       32 CAPTURE                          VAL R3
       33 CAPTURE                          UPVAL U6
       34 CAPTURE                          UPVAL U7
       35 NEWTABLE                         R6 0 3
       37 GETTABLEKS                       R7 R1 K5 ["gamepadId"]
       39 GETTABLEKS                       R8 R3 K6 ["connectGamepadId"]
       41 GETTABLEKS                       R9 R3 K7 ["loadMappingsForGamepad"]
       43 SETLIST                          R6 R7 3 [1]
       45 CALL                             R4 2 0
       46 GETUPVAL                         R5 0
       47 GETTABLEKS                       R4 R5 K8 ["createElement"]
       49 GETUPVAL                         R6 8
       50 GETTABLEKS                       R5 R6 K9 ["Provider"]
       52 DUPTABLE                         R6 K11 [{"value"}]
       53 SETTABLEKS                       R1 R6 K10 ["value"]
       55 DUPTABLE                         R7 K13 [{"MappingsActionsContextProvider"}]
       56 GETUPVAL                         R9 0
       57 GETTABLEKS                       R8 R9 K8 ["createElement"]
       59 GETUPVAL                         R10 9
       60 GETTABLEKS                       R9 R10 K9 ["Provider"]
       62 DUPTABLE                         R10 K11 [{"value"}]
       63 SETTABLEKS                       R3 R10 K10 ["value"]
       65 GETTABLEKS                       R11 R0 K14 ["children"]
       67 CALL                             R8 3 1
       68 SETTABLEKS                       R8 R7 K12 ["MappingsActionsContextProvider"]
       70 CALL                             R4 3 -1
       71 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ControlsEmulator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Cryo"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Dash"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R5 K5 [require]
       30 GETTABLEKS                       R8 R0 K10 ["Src"]
       32 GETTABLEKS                       R7 R8 K11 ["Util"]
       34 GETTABLEKS                       R6 R7 K12 ["MockableProxyPluginComponents"]
       36 CALL                             R5 1 1
       37 GETTABLEKS                       R4 R5 K13 ["StudioDeviceEmulator"]
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R8 R0 K10 ["Src"]
       43 GETTABLEKS                       R7 R8 K11 ["Util"]
       45 GETTABLEKS                       R6 R7 K14 ["Constants"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R9 R0 K10 ["Src"]
       52 GETTABLEKS                       R8 R9 K11 ["Util"]
       54 GETTABLEKS                       R7 R8 K15 ["MappingsContext"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETTABLEKS                       R10 R0 K10 ["Src"]
       61 GETTABLEKS                       R9 R10 K11 ["Util"]
       63 GETTABLEKS                       R8 R9 K16 ["MappingsActionsContext"]
       65 CALL                             R7 1 1
       66 GETIMPORT                        R8 K5 [require]
       68 GETTABLEKS                       R11 R0 K10 ["Src"]
       70 GETTABLEKS                       R10 R11 K11 ["Util"]
       72 GETTABLEKS                       R9 R10 K17 ["loadMappingForKey"]
       74 CALL                             R8 1 1
       75 GETIMPORT                        R9 K5 [require]
       77 GETTABLEKS                       R12 R0 K10 ["Src"]
       79 GETTABLEKS                       R11 R12 K11 ["Util"]
       81 GETTABLEKS                       R10 R11 K18 ["devicePlatformEnumToControllerType"]
       83 CALL                             R9 1 1
       84 GETIMPORT                        R10 K5 [require]
       86 GETTABLEKS                       R13 R0 K10 ["Src"]
       88 GETTABLEKS                       R12 R13 K11 ["Util"]
       90 GETTABLEKS                       R11 R12 K19 ["KeyNamesConstants"]
       92 CALL                             R10 1 1
       93 GETTABLEKS                       R12 R5 K21 ["GAMEPAD_TYPE_TO_ID"]
       95 GETTABLEKS                       R11 R12 K20 ["Generic"]
       97 GETTABLEKS                       R12 R5 K22 ["MAPPINGS_KEYS_BLACKLIST"]
       99 GETTABLEKS                       R13 R5 K23 ["NO_CONNECTED_GAMEPAD_ID"]
      101 GETTABLEKS                       R14 R10 K24 ["KEY_NAMES_DEFINITIONS"]
      103 GETTABLEKS                       R15 R5 K25 ["GAMEPAD_ID_TO_ENUM"]
      105 GETTABLEKS                       R16 R5 K26 ["LISTED_DEVICE_IDS"]
      107 GETTABLEKS                       R17 R5 K27 ["HAND_TRACKED_DEVICES"]
      109 DUPCLOSURE                       R18 K28 [PROTO_0]
      110 CAPTURE                          VAL R2
      111 DUPCLOSURE                       R19 K29 [PROTO_1]
      112 CAPTURE                          VAL R2
      113 DUPCLOSURE                       R20 K30 [PROTO_2]
      114 CAPTURE                          VAL R2
      115 DUPCLOSURE                       R21 K31 [PROTO_4]
      116 CAPTURE                          VAL R2
      117 CAPTURE                          VAL R19
      118 CAPTURE                          VAL R3
      119 LOADNIL                          R22
      120 NEWCLOSURE                       R23 P4
      121 CAPTURE                          VAL R2
      122 CAPTURE                          VAL R14
      123 CAPTURE                          VAL R8
      124 CAPTURE                          VAL R11
      125 CAPTURE                          VAL R13
      126 CAPTURE                          VAL R4
      127 CAPTURE                          VAL R15
      128 CAPTURE                          REF R22
      129 CAPTURE                          VAL R3
      130 CAPTURE                          VAL R12
      131 CAPTURE                          VAL R9
      132 CAPTURE                          VAL R5
      133 CAPTURE                          VAL R16
      134 CAPTURE                          VAL R17
      135 DUPCLOSURE                       R24 K32 [PROTO_31]
      136 CAPTURE                          VAL R1
      137 CAPTURE                          VAL R21
      138 CAPTURE                          VAL R5
      139 CAPTURE                          VAL R23
      140 CAPTURE                          VAL R13
      141 CAPTURE                          VAL R4
      142 CAPTURE                          VAL R11
      143 CAPTURE                          VAL R9
      144 CAPTURE                          VAL R6
      145 CAPTURE                          VAL R7
      146 SETGLOBAL                        R24 K33 ["MappingsContextProvider"]
      148 GETTABLEKS                       R24 R1 K34 ["memo"]
      150 GETGLOBAL                        R25 K33 ["MappingsContextProvider"]
      152 CALL                             R24 1 -1
      153 CLOSEUPVALS                      R22
      154 RETURN                           R24 -1
