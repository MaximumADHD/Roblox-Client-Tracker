PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["type"]
        2 JUMPIFNOTEQKS                    R2 K1 ["UpdateMappingsForGamepadId"] ; [+20]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K2 ["Dictionary"]
        7 GETTABLEKS                       R2 R2 K3 ["join"]
        9 MOVE                             R3 R0
       10 NEWTABLE                         R4 1 0
       12 GETTABLEKS                       R5 R1 K4 ["payload"]
       14 GETTABLEKS                       R5 R5 K5 ["gamepadId"]
       16 GETTABLEKS                       R6 R1 K4 ["payload"]
       18 GETTABLEKS                       R6 R6 K6 ["newMappingsForGamepadId"]
       20 SETTABLE                         R6 R4 R5
       21 CALL                             R2 2 1
       22 RETURN                           R2 1
       23 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R2 R1 K0 ["type"]
        2 JUMPIFNOTEQKS                    R2 K1 ["UpdateMappingsForGamepadId"] ; [+37]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K2 ["Dictionary"]
        7 GETTABLEKS                       R2 R2 K3 ["join"]
        9 MOVE                             R3 R0
       10 NEWTABLE                         R4 1 0
       12 GETTABLEKS                       R5 R1 K4 ["payload"]
       14 GETTABLEKS                       R5 R5 K5 ["gamepadId"]
       16 GETUPVAL                         R6 0
       17 GETTABLEKS                       R6 R6 K2 ["Dictionary"]
       19 GETTABLEKS                       R6 R6 K3 ["join"]
       21 GETTABLEKS                       R7 R1 K4 ["payload"]
       23 GETTABLEKS                       R7 R7 K6 ["newMappingsOverridesForGamepadId"]
       25 JUMPIF                           R7 ; [+2]
       26 NEWTABLE                         R7 0 0
       28 GETTABLEKS                       R9 R1 K4 ["payload"]
       30 GETTABLEKS                       R9 R9 K5 ["gamepadId"]
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
       51 GETUPVAL                         R2 0
       52 GETTABLEKS                       R2 R2 K2 ["Dictionary"]
       54 GETTABLEKS                       R2 R2 K3 ["join"]
       56 MOVE                             R3 R0
       57 NEWTABLE                         R4 1 0
       59 GETTABLEKS                       R5 R1 K4 ["payload"]
       61 GETTABLEKS                       R5 R5 K5 ["gamepadId"]
       63 GETUPVAL                         R6 0
       64 GETTABLEKS                       R6 R6 K9 ["None"]
       66 SETTABLE                         R6 R4 R5
       67 CALL                             R2 2 -1
       68 RETURN                           R2 -1
       69 RETURN                           R0 1

PROTO_2:
        0 GETTABLEKS                       R2 R1 K0 ["type"]
        2 JUMPIFNOTEQKS                    R2 K1 ["SetVRUserCFrameActive"] ; [+20]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K2 ["Dictionary"]
        7 GETTABLEKS                       R2 R2 K3 ["join"]
        9 MOVE                             R3 R0
       10 NEWTABLE                         R4 1 0
       12 GETTABLEKS                       R5 R1 K4 ["payload"]
       14 GETTABLEKS                       R5 R5 K5 ["vrUserCFrame"]
       16 GETTABLEKS                       R6 R1 K4 ["payload"]
       18 GETTABLEKS                       R6 R6 K6 ["isActive"]
       20 SETTABLE                         R6 R4 R5
       21 CALL                             R2 2 1
       22 RETURN                           R2 1
       23 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 GETUPVAL                         R5 1
        7 GETTABLEKS                       R5 R5 K2 ["mappingsOverrides"]
        9 GETTABLE                         R4 R5 R1
       10 JUMPIF                           R4 ; [+2]
       11 NEWTABLE                         R4 0 0
       13 CALL                             R2 2 -1
       14 RETURN                           R2 -1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"mappings"}]
        7 GETTABLEKS                       R6 R0 K2 ["mappings"]
        9 GETTABLEKS                       R7 R1 K4 ["type"]
       11 JUMPIFNOTEQKS                    R7 K5 ["UpdateMappingsForGamepadId"] ; [+21]
       13 GETUPVAL                         R7 0
       14 GETTABLEKS                       R7 R7 K0 ["Dictionary"]
       16 GETTABLEKS                       R7 R7 K1 ["join"]
       18 MOVE                             R8 R6
       19 NEWTABLE                         R9 1 0
       21 GETTABLEKS                       R10 R1 K6 ["payload"]
       23 GETTABLEKS                       R10 R10 K7 ["gamepadId"]
       25 GETTABLEKS                       R11 R1 K6 ["payload"]
       27 GETTABLEKS                       R11 R11 K8 ["newMappingsForGamepadId"]
       29 SETTABLE                         R11 R9 R10
       30 CALL                             R7 2 1
       31 MOVE                             R5 R7
       32 JUMP                             ; [+1]
       33 MOVE                             R5 R6
       34 SETTABLEKS                       R5 R4 K2 ["mappings"]
       36 CALL                             R2 2 1
       37 MOVE                             R0 R2
       38 GETUPVAL                         R2 0
       39 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
       41 GETTABLEKS                       R2 R2 K1 ["join"]
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
       58 GETUPVAL                         R2 0
       59 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
       61 GETTABLEKS                       R2 R2 K1 ["join"]
       63 MOVE                             R3 R0
       64 DUPTABLE                         R4 K14 [{"activeVRUserCFrames", "shouldVRControlsRespond"}]
       65 GETTABLEKS                       R6 R0 K12 ["activeVRUserCFrames"]
       67 GETTABLEKS                       R7 R1 K4 ["type"]
       69 JUMPIFNOTEQKS                    R7 K11 ["SetVRUserCFrameActive"] ; [+21]
       71 GETUPVAL                         R7 0
       72 GETTABLEKS                       R7 R7 K0 ["Dictionary"]
       74 GETTABLEKS                       R7 R7 K1 ["join"]
       76 MOVE                             R8 R6
       77 NEWTABLE                         R9 1 0
       79 GETTABLEKS                       R10 R1 K6 ["payload"]
       81 GETTABLEKS                       R10 R10 K15 ["vrUserCFrame"]
       83 GETTABLEKS                       R11 R1 K6 ["payload"]
       85 GETTABLEKS                       R11 R11 K16 ["isActive"]
       87 SETTABLE                         R11 R9 R10
       88 CALL                             R7 2 1
       89 MOVE                             R5 R7
       90 JUMP                             ; [+1]
       91 MOVE                             R5 R6
       92 SETTABLEKS                       R5 R4 K12 ["activeVRUserCFrames"]
       94 GETTABLEKS                       R5 R1 K6 ["payload"]
       96 GETTABLEKS                       R5 R5 K13 ["shouldVRControlsRespond"]
       98 SETTABLEKS                       R5 R4 K13 ["shouldVRControlsRespond"]
      100 CALL                             R2 2 1
      101 MOVE                             R0 R2
      102 GETTABLEKS                       R2 R1 K4 ["type"]
      104 JUMPIFNOTEQKS                    R2 K17 ["SetConnectedGamepadId"] ; [+17]
      106 GETUPVAL                         R2 0
      107 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
      109 GETTABLEKS                       R2 R2 K1 ["join"]
      111 MOVE                             R3 R0
      112 DUPTABLE                         R4 K18 [{"gamepadId"}]
      113 GETTABLEKS                       R5 R1 K6 ["payload"]
      115 GETTABLEKS                       R5 R5 K7 ["gamepadId"]
      117 SETTABLEKS                       R5 R4 K7 ["gamepadId"]
      119 CALL                             R2 2 -1
      120 CLOSEUPVALS                      R0
      121 RETURN                           R2 -1
      122 GETTABLEKS                       R2 R1 K4 ["type"]
      124 JUMPIFNOTEQKS                    R2 K5 ["UpdateMappingsForGamepadId"] ; [+28]
      126 GETUPVAL                         R2 0
      127 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
      129 GETTABLEKS                       R2 R2 K1 ["join"]
      131 MOVE                             R3 R0
      132 DUPTABLE                         R4 K22 [{"isUpdatingMappingForKey", "isUpdatingMappingForGamepadId", "latestErrorMessage"}]
      133 GETUPVAL                         R5 0
      134 GETTABLEKS                       R5 R5 K23 ["None"]
      136 SETTABLEKS                       R5 R4 K19 ["isUpdatingMappingForKey"]
      138 GETTABLEKS                       R5 R1 K6 ["payload"]
      140 GETTABLEKS                       R5 R5 K7 ["gamepadId"]
      142 SETTABLEKS                       R5 R4 K20 ["isUpdatingMappingForGamepadId"]
      144 GETTABLEKS                       R5 R1 K6 ["payload"]
      146 GETTABLEKS                       R5 R5 K21 ["latestErrorMessage"]
      148 SETTABLEKS                       R5 R4 K21 ["latestErrorMessage"]
      150 CALL                             R2 2 -1
      151 CLOSEUPVALS                      R0
      152 RETURN                           R2 -1
      153 GETTABLEKS                       R2 R1 K4 ["type"]
      155 JUMPIFNOTEQKS                    R2 K24 ["SetGamepadId"] ; [+23]
      157 GETUPVAL                         R2 0
      158 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
      160 GETTABLEKS                       R2 R2 K1 ["join"]
      162 MOVE                             R3 R0
      163 DUPTABLE                         R4 K25 [{"gamepadId", "isUpdatingMappingForGamepadId"}]
      164 GETTABLEKS                       R5 R1 K6 ["payload"]
      166 GETTABLEKS                       R5 R5 K7 ["gamepadId"]
      168 SETTABLEKS                       R5 R4 K7 ["gamepadId"]
      170 GETTABLEKS                       R5 R1 K6 ["payload"]
      172 GETTABLEKS                       R5 R5 K7 ["gamepadId"]
      174 SETTABLEKS                       R5 R4 K20 ["isUpdatingMappingForGamepadId"]
      176 CALL                             R2 2 -1
      177 CLOSEUPVALS                      R0
      178 RETURN                           R2 -1
      179 GETTABLEKS                       R2 R1 K4 ["type"]
      181 JUMPIFNOTEQKS                    R2 K26 ["SetIsUpdatingMappingFor"] ; [+29]
      183 GETUPVAL                         R2 0
      184 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
      186 GETTABLEKS                       R2 R2 K1 ["join"]
      188 MOVE                             R3 R0
      189 DUPTABLE                         R4 K27 [{"isUpdatingMappingForGamepadId", "isUpdatingMappingForKey"}]
      190 GETTABLEKS                       R5 R1 K6 ["payload"]
      192 GETTABLEKS                       R5 R5 K7 ["gamepadId"]
      194 JUMPIF                           R5 ; [+2]
      195 GETTABLEKS                       R5 R0 K20 ["isUpdatingMappingForGamepadId"]
      197 SETTABLEKS                       R5 R4 K20 ["isUpdatingMappingForGamepadId"]
      199 GETTABLEKS                       R5 R1 K6 ["payload"]
      201 GETTABLEKS                       R5 R5 K28 ["keyName"]
      203 JUMPIF                           R5 ; [+2]
      204 GETTABLEKS                       R5 R0 K19 ["isUpdatingMappingForKey"]
      206 SETTABLEKS                       R5 R4 K19 ["isUpdatingMappingForKey"]
      208 CALL                             R2 2 -1
      209 CLOSEUPVALS                      R0
      210 RETURN                           R2 -1
      211 GETTABLEKS                       R2 R1 K4 ["type"]
      213 JUMPIFNOTEQKS                    R2 K29 ["OpenMappingsDialog"] ; [+11]
      215 GETUPVAL                         R2 0
      216 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
      218 GETTABLEKS                       R2 R2 K1 ["join"]
      220 MOVE                             R3 R0
      221 DUPTABLE                         R4 K32 [{["isMappingsDialogOpen"] = True}]
      222 CALL                             R2 2 -1
      223 CLOSEUPVALS                      R0
      224 RETURN                           R2 -1
      225 GETTABLEKS                       R2 R1 K4 ["type"]
      227 JUMPIFNOTEQKS                    R2 K33 ["CloseMappingsDialog"] ; [+31]
      229 GETUPVAL                         R2 0
      230 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
      232 GETTABLEKS                       R2 R2 K1 ["join"]
      234 MOVE                             R3 R0
      235 DUPTABLE                         R4 K35 [{["isMappingsDialogOpen"] = False, ["mappings"], ["mappingsOverrides"], ["latestErrorMessage"]}]
      236 GETUPVAL                         R5 2
      237 GETTABLEKS                       R5 R5 K36 ["map"]
      239 GETTABLEKS                       R6 R0 K2 ["mappings"]
      241 NEWCLOSURE                       R7 P0
      242 CAPTURE                          UPVAL U0
      243 CAPTURE                          REF R0
      244 CALL                             R5 2 1
      245 SETTABLEKS                       R5 R4 K2 ["mappings"]
      247 NEWTABLE                         R5 0 0
      249 SETTABLEKS                       R5 R4 K9 ["mappingsOverrides"]
      251 GETUPVAL                         R5 0
      252 GETTABLEKS                       R5 R5 K23 ["None"]
      254 SETTABLEKS                       R5 R4 K21 ["latestErrorMessage"]
      256 CALL                             R2 2 -1
      257 CLOSEUPVALS                      R0
      258 RETURN                           R2 -1
      259 GETTABLEKS                       R2 R1 K4 ["type"]
      261 JUMPIFNOTEQKS                    R2 K37 ["ResetCaches"] ; [+21]
      263 GETUPVAL                         R2 0
      264 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
      266 GETTABLEKS                       R2 R2 K1 ["join"]
      268 MOVE                             R3 R0
      269 DUPTABLE                         R4 K38 [{"isUpdatingMappingForKey", "latestErrorMessage"}]
      270 GETUPVAL                         R5 0
      271 GETTABLEKS                       R5 R5 K23 ["None"]
      273 SETTABLEKS                       R5 R4 K19 ["isUpdatingMappingForKey"]
      275 GETUPVAL                         R5 0
      276 GETTABLEKS                       R5 R5 K23 ["None"]
      278 SETTABLEKS                       R5 R4 K21 ["latestErrorMessage"]
      280 CALL                             R2 2 -1
      281 CLOSEUPVALS                      R0
      282 RETURN                           R2 -1
      283 GETTABLEKS                       R2 R1 K4 ["type"]
      285 JUMPIFNOTEQKS                    R2 K39 ["ShowErrorBanner"] ; [+17]
      287 GETUPVAL                         R2 0
      288 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
      290 GETTABLEKS                       R2 R2 K1 ["join"]
      292 MOVE                             R3 R0
      293 DUPTABLE                         R4 K40 [{"latestErrorMessage"}]
      294 GETTABLEKS                       R5 R1 K6 ["payload"]
      296 GETTABLEKS                       R5 R5 K41 ["errorMessage"]
      298 SETTABLEKS                       R5 R4 K21 ["latestErrorMessage"]
      300 CALL                             R2 2 -1
      301 CLOSEUPVALS                      R0
      302 RETURN                           R2 -1
      303 GETTABLEKS                       R2 R1 K4 ["type"]
      305 JUMPIFNOTEQKS                    R2 K42 ["SetVRConnected"] ; [+17]
      307 GETUPVAL                         R2 0
      308 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
      310 GETTABLEKS                       R2 R2 K1 ["join"]
      312 MOVE                             R3 R0
      313 DUPTABLE                         R4 K44 [{"isVRConnected"}]
      314 GETTABLEKS                       R5 R1 K6 ["payload"]
      316 GETTABLEKS                       R5 R5 K45 ["isConnected"]
      318 SETTABLEKS                       R5 R4 K43 ["isVRConnected"]
      320 CALL                             R2 2 -1
      321 CLOSEUPVALS                      R0
      322 RETURN                           R2 -1
      323 GETTABLEKS                       R2 R1 K4 ["type"]
      325 JUMPIFNOTEQKS                    R2 K46 ["ChangeEmulatedDevice"] ; [+23]
      327 GETUPVAL                         R2 0
      328 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
      330 GETTABLEKS                       R2 R2 K1 ["join"]
      332 MOVE                             R3 R0
      333 DUPTABLE                         R4 K49 [{"emulatedDeviceId", "availableDeviceIds"}]
      334 GETTABLEKS                       R5 R1 K6 ["payload"]
      336 GETTABLEKS                       R5 R5 K47 ["emulatedDeviceId"]
      338 SETTABLEKS                       R5 R4 K47 ["emulatedDeviceId"]
      340 GETTABLEKS                       R5 R1 K6 ["payload"]
      342 GETTABLEKS                       R5 R5 K48 ["availableDeviceIds"]
      344 SETTABLEKS                       R5 R4 K48 ["availableDeviceIds"]
      346 CALL                             R2 2 -1
      347 CLOSEUPVALS                      R0
      348 RETURN                           R2 -1
      349 GETTABLEKS                       R2 R1 K4 ["type"]
      351 JUMPIFNOTEQKS                    R2 K50 ["SetVRCFrameTranslationSensitivity"] ; [+17]
      353 GETUPVAL                         R2 0
      354 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
      356 GETTABLEKS                       R2 R2 K1 ["join"]
      358 MOVE                             R3 R0
      359 DUPTABLE                         R4 K52 [{"translationSensitivity"}]
      360 GETTABLEKS                       R5 R1 K6 ["payload"]
      362 GETTABLEKS                       R5 R5 K51 ["translationSensitivity"]
      364 SETTABLEKS                       R5 R4 K51 ["translationSensitivity"]
      366 CALL                             R2 2 -1
      367 CLOSEUPVALS                      R0
      368 RETURN                           R2 -1
      369 CLOSEUPVALS                      R0
      370 RETURN                           R0 1

PROTO_5:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R1 0
        2 JUMPIFEQKNIL                     R1 ; [+4]
        4 GETUPVAL                         R0 0
        5 CALL                             R0 0 1
        6 JUMP                             ; [+1]
        7 DUPTABLE                         R0 K2 [{[1] = }]
        8 GETTABLEKS                       R1 R0 K0 ["getText"]
       10 JUMPIFNOTEQKNIL                  R1 ; [+3]
       12 LOADK                            R1 K3 [""]
       13 RETURN                           R1 1
       14 GETVARARGS                       R3 -1
       15 NAMECALL                         R1 R0 K0 ["getText"]
       17 CALL                             R1 -1 -1
       18 RETURN                           R1 -1

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["mappings"]
        3 GETTABLE                         R2 R3 R0
        4 JUMPIFNOT                        R2 ; [+19]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["isEmpty"]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K0 ["mappings"]
       11 GETTABLE                         R3 R4 R0
       12 CALL                             R2 1 1
       13 JUMPIF                           R2 ; [+10]
       14 JUMPIF                           R1 ; [+9]
       15 GETUPVAL                         R2 2
       16 DUPTABLE                         R3 K5 [{["type"] = "SetIsUpdatingMappingFor", ["payload"]}]
       17 DUPTABLE                         R4 K7 [{"gamepadId"}]
       18 SETTABLEKS                       R0 R4 K6 ["gamepadId"]
       20 SETTABLEKS                       R4 R3 K4 ["payload"]
       22 CALL                             R2 1 0
       23 RETURN                           R0 0
       24 NEWTABLE                         R2 0 0
       26 GETUPVAL                         R3 3
       27 LOADNIL                          R4
       28 LOADNIL                          R5
       29 FORGPREP                         R3
       30 GETUPVAL                         R8 4
       31 MOVE                             R9 R0
       32 GETTABLEKS                       R10 R7 K8 ["keyCode"]
       34 GETTABLEKS                       R11 R7 K9 ["direction"]
       36 CALL                             R8 3 1
       37 JUMPIFNOT                        R8 ; [+5]
       38 MOVE                             R9 R8
       39 JUMPIF                           R9 ; [+2]
       40 NEWTABLE                         R9 0 0
       42 SETTABLE                         R9 R2 R6
       43 FORGLOOP                         R3 2 ; [-14]
       45 GETUPVAL                         R3 2
       46 DUPTABLE                         R4 K11 [{["type"] = "UpdateMappingsForGamepadId", ["payload"]}]
       47 DUPTABLE                         R5 K13 [{"newMappingsForGamepadId", "gamepadId"}]
       48 SETTABLEKS                       R2 R5 K12 ["newMappingsForGamepadId"]
       50 SETTABLEKS                       R0 R5 K6 ["gamepadId"]
       52 SETTABLEKS                       R5 R4 K4 ["payload"]
       54 CALL                             R3 1 0
       55 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R2 K3 [{[1] = "ResetCaches", ["payload"]}]
        2 DUPTABLE                         R3 K5 [{"gamepadId"}]
        3 SETTABLEKS                       R0 R3 K4 ["gamepadId"]
        5 SETTABLEKS                       R3 R2 K2 ["payload"]
        7 CALL                             R1 1 0
        8 GETUPVAL                         R1 1
        9 MOVE                             R2 R0
       10 LOADB                            R3 1
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["gamepadId"]
        3 GETUPVAL                         R1 1
        4 JUMPIFEQ                         R0 R1 ; [+21]
        6 GETUPVAL                         R0 2
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["gamepadId"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["gamepadId"]
        3 JUMPIFNOTEQ                      R1 R0 ; [+3]
        5 CLOSEUPVALS                      R0
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K0 ["gamepadId"]
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
       34 DUPTABLE                         R2 K6 [{["type"] = "SetGamepadId", ["payload"]}]
       35 DUPTABLE                         R3 K7 [{"gamepadId"}]
       36 SETTABLEKS                       R0 R3 K0 ["gamepadId"]
       38 SETTABLEKS                       R3 R2 K5 ["payload"]
       40 CALL                             R1 1 0
       41 CLOSEUPVALS                      R0
       42 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R1 K3 [{[1] = "SetIsUpdatingMappingFor", ["payload"]}]
        2 DUPTABLE                         R2 K5 [{"keyName"}]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K6 ["None"]
        6 SETTABLEKS                       R3 R2 K4 ["keyName"]
        8 SETTABLEKS                       R2 R1 K2 ["payload"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_11:
        0 GETIMPORT                        R2 K2 [task.delay]
        2 LOADN                            R3 4
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R2 2 1
        7 SETUPVAL                         R2 0
        8 GETUPVAL                         R2 1
        9 DUPTABLE                         R3 K6 [{["type"] = "SetIsUpdatingMappingFor", ["payload"]}]
       10 DUPTABLE                         R4 K9 [{"gamepadId", "keyName"}]
       11 SETTABLEKS                       R0 R4 K7 ["gamepadId"]
       13 SETTABLEKS                       R1 R4 K8 ["keyName"]
       15 SETTABLEKS                       R4 R3 K5 ["payload"]
       17 CALL                             R2 1 0
       18 RETURN                           R0 0

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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isUpdatingMappingForGamepadId"]
        3 GETUPVAL                         R3 1
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K1 ["isUpdatingMappingForKey"]
        7 GETTABLE                         R2 R3 R4
        8 GETTABLEKS                       R2 R2 K2 ["keyCode"]
       10 GETUPVAL                         R4 1
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R5 R5 K1 ["isUpdatingMappingForKey"]
       14 GETTABLE                         R3 R4 R5
       15 GETTABLEKS                       R3 R3 K3 ["direction"]
       17 LENGTH                           R4 R0
       18 JUMPIFNOT                        R4 ; [+15]
       19 MOVE                             R4 R0
       20 LOADNIL                          R5
       21 LOADNIL                          R6
       22 FORGPREP                         R4
       23 GETUPVAL                         R9 2
       24 GETTABLEKS                       R9 R9 K4 ["includes"]
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
       43 GETUPVAL                         R5 0
       44 GETTABLEKS                       R5 R5 K8 ["mappings"]
       46 GETTABLE                         R4 R5 R1
       47 LOADNIL                          R5
       48 JUMPIFEQKNIL                     R4 ; [+38]
       50 MOVE                             R6 R4
       51 LOADNIL                          R7
       52 LOADNIL                          R8
       53 FORGPREP                         R6
       54 GETUPVAL                         R11 0
       55 GETTABLEKS                       R11 R11 K1 ["isUpdatingMappingForKey"]
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
       70 GETUPVAL                         R17 2
       71 GETTABLEKS                       R17 R17 K4 ["includes"]
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
      101 JUMPIFNOT                        R7 ; [+92]
      102 GETUPVAL                         R9 7
      103 DUPTABLE                         R10 K14 [{["type"] = "UpdateMappingsForGamepadId", ["payload"]}]
      104 DUPTABLE                         R11 K19 [{"newMappingsForGamepadId", "newMappingsOverridesForGamepadId", "gamepadId", "latestErrorMessage"}]
      105 GETUPVAL                         R12 8
      106 GETTABLEKS                       R12 R12 K20 ["Dictionary"]
      108 GETTABLEKS                       R12 R12 K21 ["join"]
      110 GETUPVAL                         R14 0
      111 GETTABLEKS                       R14 R14 K8 ["mappings"]
      113 GETTABLE                         R13 R14 R1
      114 JUMPIF                           R13 ; [+2]
      115 NEWTABLE                         R13 0 0
      117 GETUPVAL                         R14 8
      118 GETTABLEKS                       R14 R14 K20 ["Dictionary"]
      120 GETTABLEKS                       R14 R14 K21 ["join"]
      122 NEWTABLE                         R15 1 0
      124 GETUPVAL                         R16 0
      125 GETTABLEKS                       R16 R16 K1 ["isUpdatingMappingForKey"]
      127 SETTABLE                         R0 R15 R16
      128 JUMPIFNOT                        R5 ; [+6]
      129 NEWTABLE                         R16 1 0
      131 NEWTABLE                         R17 0 0
      133 SETTABLE                         R17 R16 R5
      134 JUMP                             ; [+2]
      135 NEWTABLE                         R16 0 0
      137 CALL                             R14 2 -1
      138 CALL                             R12 -1 1
      139 SETTABLEKS                       R12 R11 K15 ["newMappingsForGamepadId"]
      141 GETUPVAL                         R12 8
      142 GETTABLEKS                       R12 R12 K20 ["Dictionary"]
      144 GETTABLEKS                       R12 R12 K21 ["join"]
      146 GETUPVAL                         R14 0
      147 GETTABLEKS                       R14 R14 K22 ["mappingsOverrides"]
      149 GETTABLE                         R13 R14 R1
      150 JUMPIF                           R13 ; [+2]
      151 NEWTABLE                         R13 0 0
      153 GETUPVAL                         R14 8
      154 GETTABLEKS                       R14 R14 K20 ["Dictionary"]
      156 GETTABLEKS                       R14 R14 K21 ["join"]
      158 NEWTABLE                         R15 1 0
      160 GETUPVAL                         R16 0
      161 GETTABLEKS                       R16 R16 K1 ["isUpdatingMappingForKey"]
      163 SETTABLE                         R6 R15 R16
      164 JUMPIFNOT                        R5 ; [+4]
      165 NEWTABLE                         R16 1 0
      167 SETTABLE                         R0 R16 R5
      168 JUMP                             ; [+2]
      169 NEWTABLE                         R16 0 0
      171 CALL                             R14 2 -1
      172 CALL                             R12 -1 1
      173 SETTABLEKS                       R12 R11 K16 ["newMappingsOverridesForGamepadId"]
      175 SETTABLEKS                       R1 R11 K17 ["gamepadId"]
      177 JUMPIFNOT                        R5 ; [+9]
      178 GETUPVAL                         R12 9
      179 LOADK                            R13 K23 ["MappingsMessages"]
      180 LOADK                            R14 K24 ["MappingDeletedWarning"]
      181 NEWTABLE                         R15 1 0
      183 SETTABLEKS                       R5 R15 K25 ["prevDestKey"]
      185 CALL                             R12 3 1
      186 JUMP                             ; [+1]
      187 LOADNIL                          R12
      188 SETTABLEKS                       R12 R11 K18 ["latestErrorMessage"]
      190 SETTABLEKS                       R11 R10 K13 ["payload"]
      192 CALL                             R9 1 0
      193 RETURN                           R0 0
      194 GETUPVAL                         R9 7
      195 DUPTABLE                         R10 K27 [{["type"] = "ShowErrorBanner", ["payload"]}]
      196 DUPTABLE                         R11 K29 [{"errorMessage"}]
      197 GETUPVAL                         R12 9
      198 LOADK                            R13 K23 ["MappingsMessages"]
      199 LOADK                            R14 K30 ["MappingsUpdateFailedError"]
      200 NEWTABLE                         R15 1 0
      202 SETTABLEKS                       R8 R15 K31 ["errorMsg"]
      204 CALL                             R12 3 1
      205 SETTABLEKS                       R12 R11 K28 ["errorMessage"]
      207 SETTABLEKS                       R11 R10 K13 ["payload"]
      209 CALL                             R9 1 0
      210 GETUPVAL                         R9 10
      211 GETUPVAL                         R10 0
      212 GETTABLEKS                       R10 R10 K0 ["isUpdatingMappingForGamepadId"]
      214 CALL                             R9 1 0
      215 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["ResetToDefaultKeyMappingAsync"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["isUpdatingMappingForGamepadId"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+2]
        5 RETURN                           R0 0
        6 GETIMPORT                        R1 K2 [pcall]
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          VAL R0
       11 CALL                             R1 1 2
       12 JUMPIFNOT                        R1 ; [+6]
       13 GETUPVAL                         R3 2
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R4 R4 K0 ["isUpdatingMappingForGamepadId"]
       17 CALL                             R3 1 0
       18 RETURN                           R0 0
       19 GETUPVAL                         R3 3
       20 DUPTABLE                         R4 K6 [{["type"] = "ShowErrorBanner", ["payload"]}]
       21 DUPTABLE                         R5 K8 [{"errorMessage"}]
       22 GETUPVAL                         R6 4
       23 LOADK                            R7 K9 ["MappingsMessages"]
       24 LOADK                            R8 K10 ["MappingsResetToDefaultFailedError"]
       25 NEWTABLE                         R9 1 0
       27 SETTABLEKS                       R2 R9 K11 ["errorMsg"]
       29 CALL                             R6 3 1
       30 SETTABLEKS                       R6 R5 K7 ["errorMessage"]
       32 SETTABLEKS                       R5 R4 K5 ["payload"]
       34 CALL                             R3 1 0
       35 GETUPVAL                         R3 2
       36 GETUPVAL                         R4 0
       37 GETTABLEKS                       R4 R4 K0 ["isUpdatingMappingForGamepadId"]
       39 CALL                             R3 1 0
       40 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["mappingsOverrides"]
        3 LOADNIL                          R1
        4 LOADNIL                          R2
        5 FORGPREP                         R0
        6 MOVE                             R5 R4
        7 LOADNIL                          R6
        8 LOADNIL                          R7
        9 FORGPREP                         R5
       10 GETUPVAL                         R11 1
       11 GETTABLE                         R10 R11 R8
       12 GETTABLEKS                       R10 R10 K1 ["keyCode"]
       14 GETUPVAL                         R12 1
       15 GETTABLE                         R11 R12 R8
       16 GETTABLEKS                       R11 R11 K2 ["direction"]
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
        0 JUMPIFNOT                        R0 ; [+4]
        1 GETUPVAL                         R1 0
        2 DUPTABLE                         R2 K2 [{[1] = "OpenMappingsDialog"}]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0
        5 GETIMPORT                        R1 K4 [pcall]
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          UPVAL U3
       11 CALL                             R1 1 2
       12 JUMPIF                           R1 ; [+26]
       13 GETUPVAL                         R3 0
       14 DUPTABLE                         R4 K7 [{[1] = "ShowErrorBanner", ["payload"]}]
       15 DUPTABLE                         R5 K9 [{"errorMessage"}]
       16 GETUPVAL                         R6 4
       17 LOADK                            R7 K10 ["MappingsMessages"]
       18 LOADK                            R8 K11 ["MappingsUpdateFailedError"]
       19 NEWTABLE                         R9 1 0
       21 SETTABLEKS                       R2 R9 K12 ["errorMsg"]
       23 CALL                             R6 3 1
       24 SETTABLEKS                       R6 R5 K8 ["errorMessage"]
       26 SETTABLEKS                       R5 R4 K6 ["payload"]
       28 CALL                             R3 1 0
       29 GETIMPORT                        R3 K14 [print]
       31 GETIMPORT                        R4 K16 [error]
       33 CALL                             R3 1 0
       34 GETUPVAL                         R3 5
       35 GETUPVAL                         R4 1
       36 GETTABLEKS                       R4 R4 K17 ["isUpdatingMappingForGamepadId"]
       38 CALL                             R3 1 0
       39 GETUPVAL                         R3 0
       40 DUPTABLE                         R4 K19 [{[1] = "CloseMappingsDialog"}]
       41 CALL                             R3 1 0
       42 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R1 K2 [{[1] = "KeepOverrides"}]
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 0
        4 DUPTABLE                         R1 K4 [{[1] = "CloseMappingsDialog"}]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["isVRConnected"]
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
       17 GETUPVAL                         R2 0
       18 GETTABLEKS                       R2 R2 K6 ["gamepadId"]
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
        9 DUPTABLE                         R3 K5 [{["type"] = "SetVRConnected", ["payload"]}]
       10 DUPTABLE                         R4 K7 [{"isConnected"}]
       11 SETTABLEKS                       R0 R4 K6 ["isConnected"]
       13 SETTABLEKS                       R4 R3 K4 ["payload"]
       15 CALL                             R2 1 0
       16 RETURN                           R0 0

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
        8 DUPTABLE                         R4 K5 [{["type"] = "SetVRUserCFrameActive", ["payload"]}]
        9 DUPTABLE                         R5 K9 [{"vrUserCFrame", "isActive", "shouldVRControlsRespond"}]
       10 SETTABLEKS                       R0 R5 K6 ["vrUserCFrame"]
       12 SETTABLEKS                       R1 R5 K7 ["isActive"]
       14 SETTABLEKS                       R2 R5 K8 ["shouldVRControlsRespond"]
       16 SETTABLEKS                       R5 R4 K4 ["payload"]
       18 CALL                             R3 1 0
       19 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["GAMEPAD_TYPE_TO_ID"]
        3 GETTABLEKS                       R1 R1 K1 ["GenericHandheld"]
        5 JUMPIFNOTEQ                      R0 R1 ; [+17]
        7 LOADB                            R1 1
        8 GETUPVAL                         R2 1
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K2 ["GENERIC_HANDHELD_720_EMULATED_DEVICE_ID"]
       12 JUMPIFEQ                         R2 R3 ; [+9]
       14 GETUPVAL                         R2 1
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K3 ["GENERIC_HANDHELD_1080_EMULATED_DEVICE_ID"]
       18 JUMPIFEQ                         R2 R3 ; [+2]
       20 LOADB                            R1 0 +1
       21 LOADB                            R1 1
       22 RETURN                           R1 1
       23 GETUPVAL                         R1 0
       24 GETTABLEKS                       R1 R1 K0 ["GAMEPAD_TYPE_TO_ID"]
       26 GETTABLEKS                       R1 R1 K4 ["TVRemote"]
       28 JUMPIFNOTEQ                      R0 R1 ; [+15]
       30 GETUPVAL                         R1 2
       31 GETTABLEKS                       R1 R1 K5 ["getFFlagStudioDeviceSimulatorAndroidTV"]
       33 CALL                             R1 0 1
       34 JUMPIFNOT                        R1 ; [+8]
       35 GETUPVAL                         R2 1
       36 GETUPVAL                         R3 0
       37 GETTABLEKS                       R3 R3 K6 ["ANDROID_TV_1080_EMULATED_DEVICE_ID"]
       39 JUMPIFEQ                         R2 R3 ; [+2]
       41 LOADB                            R1 0 +1
       42 LOADB                            R1 1
       43 RETURN                           R1 1
       44 GETUPVAL                         R1 3
       45 JUMPIF                           R1 ; [+6]
       46 GETUPVAL                         R3 4
       47 GETTABLE                         R2 R3 R0
       48 JUMPIFNOTEQKB                    R2 TRUE ; [+2]
       50 LOADB                            R1 0 +1
       51 LOADB                            R1 1
       52 RETURN                           R1 1

PROTO_24:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["emulatedDeviceId"]
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
       18 GETUPVAL                         R4 3
       19 GETTABLEKS                       R4 R4 K3 ["GAMEPAD_TYPE_TO_ID"]
       21 GETTABLE                         R2 R4 R3
       22 GETUPVAL                         R4 0
       23 GETTABLEKS                       R4 R4 K4 ["gamepadId"]
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
       39 GETUPVAL                         R6 7
       40 GETTABLEKS                       R6 R6 K5 ["filter"]
       42 GETUPVAL                         R7 4
       43 NEWCLOSURE                       R8 P0
       44 CAPTURE                          UPVAL U3
       45 CAPTURE                          VAL R1
       46 CAPTURE                          UPVAL U8
       47 CAPTURE                          VAL R5
       48 CAPTURE                          UPVAL U5
       49 CALL                             R6 2 1
       50 MOVE                             R4 R6
       51 GETUPVAL                         R6 9
       52 DUPTABLE                         R7 K9 [{["type"] = "ChangeEmulatedDevice", ["payload"]}]
       53 DUPTABLE                         R8 K11 [{"emulatedDeviceId", "availableDeviceIds"}]
       54 SETTABLEKS                       R1 R8 K0 ["emulatedDeviceId"]
       56 SETTABLEKS                       R4 R8 K10 ["availableDeviceIds"]
       58 SETTABLEKS                       R8 R7 K8 ["payload"]
       60 CALL                             R6 1 0
       61 GETUPVAL                         R6 10
       62 MOVE                             R7 R2
       63 CALL                             R6 1 0
       64 RETURN                           R0 0

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
        7 DUPTABLE                         R2 K5 [{["type"] = "SetVRCFrameTranslationSensitivity", ["payload"]}]
        8 DUPTABLE                         R3 K7 [{"translationSensitivity"}]
        9 SETTABLEKS                       R0 R3 K6 ["translationSensitivity"]
       11 SETTABLEKS                       R3 R2 K4 ["payload"]
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

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
       66 CAPTURE                          UPVAL U14
       67 CAPTURE                          VAL R0
       68 CAPTURE                          VAL R6
       69 NEWCLOSURE                       R15 P12
       70 CAPTURE                          UPVAL U5
       71 CAPTURE                          VAL R0
       72 DUPTABLE                         R16 K11 [{"connectGamepadId", "setMapping", "loadMappingsForGamepad", "setIsUpdatingMappingFor", "restoreDefaults", "saveMappings", "setIsMappingsDialogOpen", "setVRConnected", "changeEmulatedDevice", "setVRUserCFrameActive", "setVRCFrameTranslationSensitivity"}]
       73 SETTABLEKS                       R6 R16 K0 ["connectGamepadId"]
       75 SETTABLEKS                       R8 R16 K1 ["setMapping"]
       77 SETTABLEKS                       R4 R16 K2 ["loadMappingsForGamepad"]
       79 SETTABLEKS                       R7 R16 K3 ["setIsUpdatingMappingFor"]
       81 SETTABLEKS                       R9 R16 K4 ["restoreDefaults"]
       83 SETTABLEKS                       R11 R16 K5 ["saveMappings"]
       85 SETTABLEKS                       R10 R16 K6 ["setIsMappingsDialogOpen"]
       87 SETTABLEKS                       R12 R16 K7 ["setVRConnected"]
       89 SETTABLEKS                       R14 R16 K8 ["changeEmulatedDevice"]
       91 SETTABLEKS                       R13 R16 K9 ["setVRUserCFrameActive"]
       93 SETTABLEKS                       R15 R16 K10 ["setVRCFrameTranslationSensitivity"]
       95 RETURN                           R16 1

PROTO_28:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R3 3
        4 GETTABLEKS                       R3 R3 K0 ["getLocalization"]
        6 CALL                             R0 3 1
        7 RETURN                           R0 1

PROTO_29:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetCurrentlyEmulatedDeviceAsync"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_30:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["gamepadId"]
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
       19 GETUPVAL                         R2 3
       20 GETTABLEKS                       R2 R2 K7 ["connectGamepadId"]
       22 GETUPVAL                         R3 4
       23 CALL                             R2 1 0
       24 RETURN                           R0 0
       25 GETUPVAL                         R2 5
       26 GETTABLEKS                       R3 R1 K8 ["platform"]
       28 GETTABLEKS                       R4 R1 K9 ["deviceId"]
       30 CALL                             R2 2 1
       31 JUMPIFNOT                        R2 ; [+6]
       32 GETUPVAL                         R3 3
       33 GETTABLEKS                       R3 R3 K10 ["changeEmulatedDevice"]
       35 MOVE                             R4 R1
       36 CALL                             R3 1 0
       37 RETURN                           R0 0
       38 GETUPVAL                         R3 3
       39 GETTABLEKS                       R3 R3 K7 ["connectGamepadId"]
       41 GETUPVAL                         R4 4
       42 CALL                             R3 1 0
       43 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useReducer"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K1 ["DEFAULT_MAPPINGS_STATE"]
        7 CALL                             R1 2 2
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K2 ["useMemo"]
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
       25 GETUPVAL                         R4 0
       26 GETTABLEKS                       R4 R4 K4 ["useEffect"]
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
       46 GETUPVAL                         R4 0
       47 GETTABLEKS                       R4 R4 K8 ["createElement"]
       49 GETUPVAL                         R5 8
       50 GETTABLEKS                       R5 R5 K9 ["Provider"]
       52 DUPTABLE                         R6 K11 [{"value"}]
       53 SETTABLEKS                       R1 R6 K10 ["value"]
       55 DUPTABLE                         R7 K13 [{"MappingsActionsContextProvider"}]
       56 GETUPVAL                         R8 0
       57 GETTABLEKS                       R8 R8 K8 ["createElement"]
       59 GETUPVAL                         R9 9
       60 GETTABLEKS                       R9 R9 K9 ["Provider"]
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
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Cryo"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Dash"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Util"]
       34 GETTABLEKS                       R5 R5 K12 ["MockableProxyPluginComponents"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R4 R4 K13 ["StudioDeviceEmulator"]
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K10 ["Src"]
       43 GETTABLEKS                       R6 R6 K11 ["Util"]
       45 GETTABLEKS                       R6 R6 K14 ["Constants"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R7 R0 K10 ["Src"]
       52 GETTABLEKS                       R7 R7 K11 ["Util"]
       54 GETTABLEKS                       R7 R7 K15 ["MappingsContext"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETTABLEKS                       R8 R0 K10 ["Src"]
       61 GETTABLEKS                       R8 R8 K11 ["Util"]
       63 GETTABLEKS                       R8 R8 K16 ["MappingsActionsContext"]
       65 CALL                             R7 1 1
       66 GETIMPORT                        R8 K5 [require]
       68 GETTABLEKS                       R9 R0 K10 ["Src"]
       70 GETTABLEKS                       R9 R9 K11 ["Util"]
       72 GETTABLEKS                       R9 R9 K17 ["loadMappingForKey"]
       74 CALL                             R8 1 1
       75 GETIMPORT                        R9 K5 [require]
       77 GETTABLEKS                       R10 R0 K10 ["Src"]
       79 GETTABLEKS                       R10 R10 K11 ["Util"]
       81 GETTABLEKS                       R10 R10 K18 ["devicePlatformEnumToControllerType"]
       83 CALL                             R9 1 1
       84 GETIMPORT                        R10 K5 [require]
       86 GETTABLEKS                       R11 R0 K10 ["Src"]
       88 GETTABLEKS                       R11 R11 K11 ["Util"]
       90 GETTABLEKS                       R11 R11 K19 ["KeyNamesConstants"]
       92 CALL                             R10 1 1
       93 GETIMPORT                        R11 K5 [require]
       95 GETTABLEKS                       R12 R0 K20 ["Bin"]
       97 GETTABLEKS                       R12 R12 K21 ["Common"]
       99 GETTABLEKS                       R12 R12 K22 ["defineLuaFlags"]
      101 CALL                             R11 1 1
      102 GETTABLEKS                       R13 R5 K24 ["GAMEPAD_TYPE_TO_ID"]
      104 GETTABLEKS                       R12 R13 K23 ["Generic"]
      106 GETTABLEKS                       R13 R5 K25 ["MAPPINGS_KEYS_BLACKLIST"]
      108 GETTABLEKS                       R14 R5 K26 ["NO_CONNECTED_GAMEPAD_ID"]
      110 GETTABLEKS                       R15 R10 K27 ["KEY_NAMES_DEFINITIONS"]
      112 GETTABLEKS                       R16 R5 K28 ["GAMEPAD_ID_TO_ENUM"]
      114 GETTABLEKS                       R17 R5 K29 ["LISTED_DEVICE_IDS"]
      116 GETTABLEKS                       R18 R5 K30 ["HAND_TRACKED_DEVICES"]
      118 DUPCLOSURE                       R19 K31 [PROTO_0]
      119 CAPTURE                          VAL R2
      120 DUPCLOSURE                       R20 K32 [PROTO_1]
      121 CAPTURE                          VAL R2
      122 DUPCLOSURE                       R21 K33 [PROTO_2]
      123 CAPTURE                          VAL R2
      124 DUPCLOSURE                       R22 K34 [PROTO_4]
      125 CAPTURE                          VAL R2
      126 CAPTURE                          VAL R20
      127 CAPTURE                          VAL R3
      128 LOADNIL                          R23
      129 NEWCLOSURE                       R24 P4
      130 CAPTURE                          VAL R2
      131 CAPTURE                          VAL R15
      132 CAPTURE                          VAL R8
      133 CAPTURE                          VAL R12
      134 CAPTURE                          VAL R14
      135 CAPTURE                          VAL R4
      136 CAPTURE                          VAL R16
      137 CAPTURE                          REF R23
      138 CAPTURE                          VAL R3
      139 CAPTURE                          VAL R13
      140 CAPTURE                          VAL R9
      141 CAPTURE                          VAL R5
      142 CAPTURE                          VAL R17
      143 CAPTURE                          VAL R18
      144 CAPTURE                          VAL R11
      145 DUPCLOSURE                       R25 K35 [PROTO_31]
      146 CAPTURE                          VAL R1
      147 CAPTURE                          VAL R22
      148 CAPTURE                          VAL R5
      149 CAPTURE                          VAL R24
      150 CAPTURE                          VAL R14
      151 CAPTURE                          VAL R4
      152 CAPTURE                          VAL R12
      153 CAPTURE                          VAL R9
      154 CAPTURE                          VAL R6
      155 CAPTURE                          VAL R7
      156 SETGLOBAL                        R25 K36 ["MappingsContextProvider"]
      158 GETTABLEKS                       R25 R1 K37 ["memo"]
      160 GETGLOBAL                        R26 K36 ["MappingsContextProvider"]
      162 CALL                             R25 1 -1
      163 CLOSEUPVALS                      R23
      164 RETURN                           R25 -1
