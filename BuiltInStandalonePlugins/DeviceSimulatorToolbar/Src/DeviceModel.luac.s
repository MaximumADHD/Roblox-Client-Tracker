PROTO_0:
        0 GETIMPORT                        R2 K2 [string.lower]
        2 GETTABLEKS                       R3 R0 K3 ["deviceName"]
        4 JUMPIF                           R3 ; [+2]
        5 GETTABLEKS                       R3 R0 K4 ["deviceId"]
        7 CALL                             R2 1 1
        8 GETIMPORT                        R3 K2 [string.lower]
       10 GETTABLEKS                       R4 R1 K3 ["deviceName"]
       12 JUMPIF                           R4 ; [+2]
       13 GETTABLEKS                       R4 R1 K4 ["deviceId"]
       15 CALL                             R3 1 1
       16 JUMPIFNOTEQ                      R2 R3 ; [+10]
       18 GETTABLEKS                       R5 R0 K4 ["deviceId"]
       20 GETTABLEKS                       R6 R1 K4 ["deviceId"]
       22 JUMPIFLT                         R5 R6 ; [+2]
       24 LOADB                            R4 0 +1
       25 LOADB                            R4 1
       26 RETURN                           R4 1
       27 JUMPIFLT                         R2 R3 ; [+2]
       29 LOADB                            R4 0 +1
       30 LOADB                            R4 1
       31 RETURN                           R4 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETIMPORT                        R2 K4 [table.sort]
        6 MOVE                             R3 R1
        7 DUPCLOSURE                       R4 K5 [PROTO_0]
        8 CALL                             R2 2 0
        9 RETURN                           R1 1

PROTO_2:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R1
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 GETUPVAL                         R8 0
        7 GETTABLEKS                       R8 R8 K0 ["categoryForDevice"]
        9 MOVE                             R9 R7
       10 CALL                             R8 1 1
       11 JUMPIFNOTEQ                      R8 R0 ; [+8]
       13 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       15 MOVE                             R9 R2
       16 MOVE                             R10 R7
       17 GETIMPORT                        R8 K3 [table.insert]
       19 CALL                             R8 2 0
       20 FORGLOOP                         R3 2 ; [-15]
       22 GETUPVAL                         R3 1
       23 GETTABLEKS                       R3 R3 K4 ["Category"]
       25 GETTABLEKS                       R3 R3 K5 ["DESKTOP"]
       27 JUMPIFNOTEQ                      R0 R3 ; [+8]
       29 GETUPVAL                         R5 2
       30 FASTCALL2                        TABLE_INSERT R2 R5 ; [+4]
       32 MOVE                             R4 R2
       33 GETIMPORT                        R3 K3 [table.insert]
       35 CALL                             R3 2 0
       36 RETURN                           R2 1

PROTO_3:
        0 GETTABLEKS                       R3 R0 K0 ["deviceId"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K1 ["DEFAULT_DEVICE_ID"]
        5 JUMPIFNOTEQ                      R3 R4 ; [+7]
        7 LOADK                            R4 K2 ["DeviceMenu"]
        8 LOADK                            R5 K3 ["CurrentDevice"]
        9 NAMECALL                         R2 R1 K4 ["getText"]
       11 CALL                             R2 3 1
       12 RETURN                           R2 1
       13 GETTABLEKS                       R2 R0 K5 ["deviceName"]
       15 RETURN                           R2 1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["width"]
        2 LOADN                            R2 0
        3 JUMPIFLE                         R1 R2 ; [+6]
        5 GETTABLEKS                       R1 R0 K1 ["height"]
        7 LOADN                            R2 0
        8 JUMPIFNOTLE                      R1 R2 ; [+3]
       10 LOADNIL                          R1
       11 RETURN                           R1 1
       12 DUPTABLE                         R1 K5 [{["type"] = "Hint", ["text"]}]
       13 LOADK                            R2 K6 ["%* × %*"]
       14 GETTABLEKS                       R4 R0 K0 ["width"]
       16 GETTABLEKS                       R5 R0 K1 ["height"]
       18 NAMECALL                         R2 R2 K7 ["format"]
       20 CALL                             R2 3 1
       21 SETTABLEKS                       R2 R1 K4 ["text"]
       23 RETURN                           R1 1

PROTO_5:
        0 NEWTABLE                         R3 0 0
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K0 ["getFFlagDeviceSimulatorDropdownResolutionHint"]
        5 CALL                             R4 0 1
        6 GETIMPORT                        R8 K3 [table.clone]
        8 MOVE                             R9 R0
        9 CALL                             R8 1 1
       10 GETIMPORT                        R9 K5 [table.sort]
       12 MOVE                             R10 R8
       13 DUPCLOSURE                       R11 K6 [PROTO_0]
       14 CALL                             R9 2 0
       15 MOVE                             R5 R8
       16 LOADNIL                          R6
       17 LOADNIL                          R7
       18 FORGPREP                         R5
       19 DUPTABLE                         R12 K11 [{"id", "text", "isChecked", "trailing"}]
       20 GETTABLEKS                       R13 R9 K12 ["deviceId"]
       22 SETTABLEKS                       R13 R12 K7 ["id"]
       24 GETTABLEKS                       R14 R9 K12 ["deviceId"]
       26 GETUPVAL                         R15 1
       27 GETTABLEKS                       R15 R15 K13 ["DEFAULT_DEVICE_ID"]
       29 JUMPIFNOTEQ                      R14 R15 ; [+7]
       31 LOADK                            R15 K14 ["DeviceMenu"]
       32 LOADK                            R16 K15 ["CurrentDevice"]
       33 NAMECALL                         R13 R2 K16 ["getText"]
       35 CALL                             R13 3 1
       36 JUMP                             ; [+2]
       37 GETTABLEKS                       R13 R9 K17 ["deviceName"]
       39 SETTABLEKS                       R13 R12 K8 ["text"]
       41 GETTABLEKS                       R14 R9 K12 ["deviceId"]
       43 JUMPIFEQ                         R14 R1 ; [+2]
       45 LOADB                            R13 0 +1
       46 LOADB                            R13 1
       47 SETTABLEKS                       R13 R12 K9 ["isChecked"]
       49 JUMPIFNOT                        R4 ; [+24]
       50 GETTABLEKS                       R14 R9 K18 ["width"]
       52 LOADN                            R15 0
       53 JUMPIFLE                         R14 R15 ; [+6]
       55 GETTABLEKS                       R14 R9 K19 ["height"]
       57 LOADN                            R15 0
       58 JUMPIFNOTLE                      R14 R15 ; [+3]
       60 LOADNIL                          R13
       61 JUMP                             ; [+13]
       62 DUPTABLE                         R13 K22 [{["type"] = "Hint", ["text"]}]
       63 LOADK                            R14 K23 ["%* × %*"]
       64 GETTABLEKS                       R16 R9 K18 ["width"]
       66 GETTABLEKS                       R17 R9 K19 ["height"]
       68 NAMECALL                         R14 R14 K24 ["format"]
       70 CALL                             R14 3 1
       71 SETTABLEKS                       R14 R13 K8 ["text"]
       73 JUMP                             ; [+1]
       74 LOADNIL                          R13
       75 SETTABLEKS                       R13 R12 K10 ["trailing"]
       77 FASTCALL2                        TABLE_INSERT R3 R12 ; [+4]
       79 MOVE                             R11 R3
       80 GETIMPORT                        R10 K26 [table.insert]
       82 CALL                             R10 2 0
       83 FORGLOOP                         R5 2 ; [-65]
       85 RETURN                           R3 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["formValue"]
        3 GETTABLEKS                       R2 R0 K1 ["deviceForm"]
        5 CALL                             R1 1 1
        6 JUMPIF                           R1 ; [+2]
        7 LOADNIL                          R2
        8 RETURN                           R2 1
        9 GETUPVAL                         R3 1
       10 GETTABLE                         R2 R3 R1
       11 RETURN                           R2 1

PROTO_7:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETTABLEKS                       R7 R6 K0 ["deviceId"]
        8 SETTABLE                         R6 R1 R7
        9 FORGLOOP                         R2 2 ; [-4]
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K1 ["DEFAULT_DEVICE_ID"]
       14 GETUPVAL                         R3 1
       15 SETTABLE                         R3 R1 R2
       16 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["entriesById"]
        3 MOVE                             R5 R1
        4 CALL                             R4 1 1
        5 GETTABLE                         R3 R4 R0
        6 JUMPIFNOT                        R3 ; [+16]
        7 GETTABLEKS                       R5 R3 K1 ["deviceId"]
        9 GETUPVAL                         R6 0
       10 GETTABLEKS                       R6 R6 K2 ["DEFAULT_DEVICE_ID"]
       12 JUMPIFNOTEQ                      R5 R6 ; [+7]
       14 LOADK                            R6 K3 ["DeviceMenu"]
       15 LOADK                            R7 K4 ["CurrentDevice"]
       16 NAMECALL                         R4 R2 K5 ["getText"]
       18 CALL                             R4 3 1
       19 RETURN                           R4 1
       20 GETTABLEKS                       R4 R3 K6 ["deviceName"]
       22 RETURN                           R4 1
       23 LOADK                            R6 K3 ["DeviceMenu"]
       24 LOADK                            R7 K4 ["CurrentDevice"]
       25 NAMECALL                         R4 R2 K5 ["getText"]
       27 CALL                             R4 3 1
       28 RETURN                           R4 1

PROTO_9:
        0 GETUPVAL                         R5 0
        1 MOVE                             R6 R0
        2 MOVE                             R7 R1
        3 CALL                             R5 2 1
        4 JUMPIFNOT                        R4 ; [+27]
        5 NEWTABLE                         R6 0 0
        7 MOVE                             R7 R5
        8 LOADNIL                          R8
        9 LOADNIL                          R9
       10 FORGPREP                         R7
       11 GETTABLEKS                       R12 R11 K0 ["isCustom"]
       13 JUMPIF                           R12 ; [+8]
       14 GETTABLEKS                       R12 R11 K1 ["deviceId"]
       16 JUMPIFEQ                         R12 R2 ; [+5]
       18 GETTABLEKS                       R13 R11 K1 ["deviceId"]
       20 GETTABLE                         R12 R4 R13
       21 JUMPIF                           R12 ; [+7]
       22 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
       24 MOVE                             R13 R6
       25 MOVE                             R14 R11
       26 GETIMPORT                        R12 K4 [table.insert]
       28 CALL                             R12 2 0
       29 FORGLOOP                         R7 2 ; [-19]
       31 MOVE                             R5 R6
       32 NEWTABLE                         R6 0 0
       34 GETUPVAL                         R7 1
       35 GETTABLEKS                       R7 R7 K5 ["Category"]
       37 GETTABLEKS                       R7 R7 K6 ["PHONE_TABLET"]
       39 JUMPIFNOTEQ                      R0 R7 ; [+141]
       41 GETUPVAL                         R7 2
       42 LOADNIL                          R8
       43 LOADNIL                          R9
       44 FORGPREP                         R7
       45 NEWTABLE                         R12 0 0
       47 MOVE                             R13 R5
       48 LOADNIL                          R14
       49 LOADNIL                          R15
       50 FORGPREP                         R13
       51 GETTABLEKS                       R18 R17 K0 ["isCustom"]
       53 JUMPIF                           R18 ; [+13]
       54 GETTABLEKS                       R18 R17 K7 ["tier"]
       56 GETTABLEKS                       R19 R11 K7 ["tier"]
       58 JUMPIFNOTEQ                      R18 R19 ; [+8]
       60 FASTCALL2                        TABLE_INSERT R12 R17 ; [+5]
       62 MOVE                             R19 R12
       63 MOVE                             R20 R17
       64 GETIMPORT                        R18 K4 [table.insert]
       66 CALL                             R18 2 0
       67 FORGLOOP                         R13 2 ; [-17]
       69 LENGTH                           R13 R12
       70 LOADN                            R14 0
       71 JUMPIFNOTLT                      R14 R13 ; [+23]
       73 DUPTABLE                         R15 K10 [{"title", "items"}]
       74 LOADK                            R18 K11 ["DeviceMenu"]
       75 GETTABLEKS                       R19 R11 K12 ["key"]
       77 NAMECALL                         R16 R3 K13 ["getText"]
       79 CALL                             R16 3 1
       80 SETTABLEKS                       R16 R15 K8 ["title"]
       82 GETUPVAL                         R16 3
       83 MOVE                             R17 R12
       84 MOVE                             R18 R2
       85 MOVE                             R19 R3
       86 CALL                             R16 3 1
       87 SETTABLEKS                       R16 R15 K9 ["items"]
       89 FASTCALL2                        TABLE_INSERT R6 R15 ; [+4]
       91 MOVE                             R14 R6
       92 GETIMPORT                        R13 K4 [table.insert]
       94 CALL                             R13 2 0
       95 FORGLOOP                         R7 2 ; [-51]
       97 NEWTABLE                         R7 0 0
       99 NEWTABLE                         R8 0 0
      101 MOVE                             R9 R5
      102 LOADNIL                          R10
      103 LOADNIL                          R11
      104 FORGPREP                         R9
      105 GETTABLEKS                       R14 R13 K0 ["isCustom"]
      107 JUMPIFNOT                        R14 ; [+8]
      108 FASTCALL2                        TABLE_INSERT R8 R13 ; [+5]
      110 MOVE                             R15 R8
      111 MOVE                             R16 R13
      112 GETIMPORT                        R14 K4 [table.insert]
      114 CALL                             R14 2 0
      115 JUMP                             ; [+12]
      116 GETUPVAL                         R15 4
      117 GETTABLEKS                       R16 R13 K7 ["tier"]
      119 GETTABLE                         R14 R15 R16
      120 JUMPIF                           R14 ; [+7]
      121 FASTCALL2                        TABLE_INSERT R7 R13 ; [+5]
      123 MOVE                             R15 R7
      124 MOVE                             R16 R13
      125 GETIMPORT                        R14 K4 [table.insert]
      127 CALL                             R14 2 0
      128 FORGLOOP                         R9 2 ; [-24]
      130 LENGTH                           R9 R7
      131 LOADN                            R10 0
      132 JUMPIFNOTLT                      R10 R9 ; [+22]
      134 DUPTABLE                         R11 K10 [{"title", "items"}]
      135 LOADK                            R14 K11 ["DeviceMenu"]
      136 LOADK                            R15 K14 ["Other"]
      137 NAMECALL                         R12 R3 K13 ["getText"]
      139 CALL                             R12 3 1
      140 SETTABLEKS                       R12 R11 K8 ["title"]
      142 GETUPVAL                         R12 3
      143 MOVE                             R13 R7
      144 MOVE                             R14 R2
      145 MOVE                             R15 R3
      146 CALL                             R12 3 1
      147 SETTABLEKS                       R12 R11 K9 ["items"]
      149 FASTCALL2                        TABLE_INSERT R6 R11 ; [+4]
      151 MOVE                             R10 R6
      152 GETIMPORT                        R9 K4 [table.insert]
      154 CALL                             R9 2 0
      155 LENGTH                           R9 R8
      156 LOADN                            R10 0
      157 JUMPIFNOTLT                      R10 R9 ; [+102]
      159 DUPTABLE                         R11 K10 [{"title", "items"}]
      160 LOADK                            R14 K11 ["DeviceMenu"]
      161 LOADK                            R15 K15 ["Custom"]
      162 NAMECALL                         R12 R3 K13 ["getText"]
      164 CALL                             R12 3 1
      165 SETTABLEKS                       R12 R11 K8 ["title"]
      167 GETUPVAL                         R12 3
      168 MOVE                             R13 R8
      169 MOVE                             R14 R2
      170 MOVE                             R15 R3
      171 CALL                             R12 3 1
      172 SETTABLEKS                       R12 R11 K9 ["items"]
      174 FASTCALL2                        TABLE_INSERT R6 R11 ; [+4]
      176 MOVE                             R10 R6
      177 GETIMPORT                        R9 K4 [table.insert]
      179 CALL                             R9 2 0
      180 JUMP                             ; [+79]
      181 NEWTABLE                         R7 0 0
      183 NEWTABLE                         R8 0 0
      185 MOVE                             R9 R5
      186 LOADNIL                          R10
      187 LOADNIL                          R11
      188 FORGPREP                         R9
      189 GETTABLEKS                       R14 R13 K0 ["isCustom"]
      191 JUMPIFNOT                        R14 ; [+8]
      192 FASTCALL2                        TABLE_INSERT R8 R13 ; [+5]
      194 MOVE                             R15 R8
      195 MOVE                             R16 R13
      196 GETIMPORT                        R14 K4 [table.insert]
      198 CALL                             R14 2 0
      199 JUMP                             ; [+7]
      200 FASTCALL2                        TABLE_INSERT R7 R13 ; [+5]
      202 MOVE                             R15 R7
      203 MOVE                             R16 R13
      204 GETIMPORT                        R14 K4 [table.insert]
      206 CALL                             R14 2 0
      207 FORGLOOP                         R9 2 ; [-19]
      209 LENGTH                           R9 R7
      210 LOADN                            R10 0
      211 JUMPIFNOTLT                      R10 R9 ; [+23]
      213 DUPTABLE                         R11 K10 [{"title", "items"}]
      214 LOADK                            R14 K11 ["DeviceMenu"]
      215 GETUPVAL                         R16 5
      216 GETTABLE                         R15 R16 R0
      217 NAMECALL                         R12 R3 K13 ["getText"]
      219 CALL                             R12 3 1
      220 SETTABLEKS                       R12 R11 K8 ["title"]
      222 GETUPVAL                         R12 3
      223 MOVE                             R13 R7
      224 MOVE                             R14 R2
      225 MOVE                             R15 R3
      226 CALL                             R12 3 1
      227 SETTABLEKS                       R12 R11 K9 ["items"]
      229 FASTCALL2                        TABLE_INSERT R6 R11 ; [+4]
      231 MOVE                             R10 R6
      232 GETIMPORT                        R9 K4 [table.insert]
      234 CALL                             R9 2 0
      235 LENGTH                           R9 R8
      236 LOADN                            R10 0
      237 JUMPIFNOTLT                      R10 R9 ; [+22]
      239 DUPTABLE                         R11 K10 [{"title", "items"}]
      240 LOADK                            R14 K11 ["DeviceMenu"]
      241 LOADK                            R15 K15 ["Custom"]
      242 NAMECALL                         R12 R3 K13 ["getText"]
      244 CALL                             R12 3 1
      245 SETTABLEKS                       R12 R11 K8 ["title"]
      247 GETUPVAL                         R12 3
      248 MOVE                             R13 R8
      249 MOVE                             R14 R2
      250 MOVE                             R15 R3
      251 CALL                             R12 3 1
      252 SETTABLEKS                       R12 R11 K9 ["items"]
      254 FASTCALL2                        TABLE_INSERT R6 R11 ; [+4]
      256 MOVE                             R10 R6
      257 GETIMPORT                        R9 K4 [table.insert]
      259 CALL                             R9 2 0
      260 DUPTABLE                         R9 K16 [{"items"}]
      261 NEWTABLE                         R10 0 1
      263 DUPTABLE                         R11 K21 [{["id"], ["text"], ["isChecked"] = False}]
      264 GETUPVAL                         R12 6
      265 GETTABLEKS                       R12 R12 K22 ["MANAGE_DEVICES_ID"]
      267 SETTABLEKS                       R12 R11 K17 ["id"]
      269 LOADK                            R14 K11 ["DeviceMenu"]
      270 LOADK                            R15 K23 ["ManageDevices"]
      271 NAMECALL                         R12 R3 K13 ["getText"]
      273 CALL                             R12 3 1
      274 SETTABLEKS                       R12 R11 K18 ["text"]
      276 SETLIST                          R10 R11 1 [1]
      278 SETTABLEKS                       R10 R9 K9 ["items"]
      280 FASTCALL2                        TABLE_INSERT R6 R9 ; [+4]
      282 MOVE                             R8 R6
      283 GETIMPORT                        R7 K4 [table.insert]
      285 CALL                             R7 2 0
      286 RETURN                           R6 1

PROTO_10:
        0 NEWTABLE                         R3 0 0
        2 MOVE                             R4 R0
        3 LOADNIL                          R5
        4 LOADNIL                          R6
        5 FORGPREP                         R4
        6 GETTABLEKS                       R9 R8 K0 ["items"]
        8 LOADNIL                          R10
        9 LOADNIL                          R11
       10 FORGPREP                         R9
       11 GETTABLEKS                       R14 R13 K1 ["id"]
       13 GETUPVAL                         R15 0
       14 GETTABLEKS                       R15 R15 K2 ["MANAGE_DEVICES_ID"]
       16 JUMPIFEQ                         R14 R15 ; [+9]
       18 GETTABLEKS                       R16 R13 K1 ["id"]
       20 FASTCALL2                        TABLE_INSERT R3 R16 ; [+4]
       22 MOVE                             R15 R3
       23 GETIMPORT                        R14 K5 [table.insert]
       25 CALL                             R14 2 0
       26 FORGLOOP                         R9 2 ; [-16]
       28 FORGLOOP                         R4 2 ; [-23]
       30 GETIMPORT                        R4 K7 [table.find]
       32 MOVE                             R5 R3
       33 MOVE                             R6 R1
       34 CALL                             R4 2 1
       35 JUMPIFNOTEQKNIL                  R4 ; [+3]
       37 LOADNIL                          R5
       38 RETURN                           R5 1
       39 ADD                              R6 R4 R2
       40 GETTABLE                         R5 R3 R6
       41 RETURN                           R5 1

PROTO_11:
        0 DUPTABLE                         R4 K4 [{"initialTab", "devices", "selectedDeviceId", "hiddenDeviceIds"}]
        1 GETUPVAL                         R6 0
        2 GETTABLE                         R5 R6 R0
        3 SETTABLEKS                       R5 R4 K0 ["initialTab"]
        5 SETTABLEKS                       R1 R4 K1 ["devices"]
        7 SETTABLEKS                       R2 R4 K2 ["selectedDeviceId"]
        9 SETTABLEKS                       R3 R4 K3 ["hiddenDeviceIds"]
       11 RETURN                           R4 1

PROTO_12:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 CALL                             R3 2 1
        4 GETIMPORT                        R4 K2 [table.clone]
        6 MOVE                             R5 R3
        7 CALL                             R4 1 1
        8 GETIMPORT                        R5 K4 [table.sort]
       10 MOVE                             R6 R4
       11 DUPCLOSURE                       R7 K5 [PROTO_0]
       12 CALL                             R5 2 0
       13 MOVE                             R2 R4
       14 GETUPVAL                         R4 1
       15 GETTABLE                         R3 R4 R0
       16 MOVE                             R4 R2
       17 LOADNIL                          R5
       18 LOADNIL                          R6
       19 FORGPREP                         R4
       20 GETTABLEKS                       R9 R8 K6 ["deviceId"]
       22 JUMPIFNOTEQ                      R9 R3 ; [+2]
       24 RETURN                           R3 1
       25 FORGLOOP                         R4 2 ; [-6]
       27 GETTABLEN                        R5 R2 1
       28 JUMPIFNOT                        R5 ; [+4]
       29 GETTABLEN                        R4 R2 1
       30 GETTABLEKS                       R4 R4 K6 ["deviceId"]
       32 RETURN                           R4 1
       33 LOADNIL                          R4
       34 RETURN                           R4 1

PROTO_13:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["getDefaultDeviceId"]
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 CALL                             R3 2 1
        6 JUMPIFNOTEQKNIL                  R3 ; [+2]
        8 LOADB                            R2 0 +1
        9 LOADB                            R2 1
       10 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DeviceSimulatorToolbar"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["DeviceConstants"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["DeviceSerialization"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K8 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["DeviceManagerDialog"]
       34 GETTABLEKS                       R5 R5 K12 ["DeviceManagerModel"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K8 ["Src"]
       41 GETTABLEKS                       R6 R6 K13 ["Localization"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K14 ["Bin"]
       48 GETTABLEKS                       R7 R7 K15 ["Common"]
       50 GETTABLEKS                       R7 R7 K16 ["defineLuaFlags"]
       52 CALL                             R6 1 1
       53 NEWTABLE                         R7 16 0
       55 LOADK                            R8 K17 ["default"]
       56 SETTABLEKS                       R8 R7 K18 ["DEFAULT_DEVICE_ID"]
       58 LOADK                            R8 K19 ["__manage_devices__"]
       59 SETTABLEKS                       R8 R7 K20 ["MANAGE_DEVICES_ID"]
       61 NEWTABLE                         R8 8 0
       63 GETIMPORT                        R9 K24 [Enum.DeviceForm.Phone]
       65 GETTABLEKS                       R9 R9 K25 ["Value"]
       67 GETTABLEKS                       R10 R2 K26 ["Category"]
       69 GETTABLEKS                       R10 R10 K27 ["PHONE_TABLET"]
       71 SETTABLE                         R10 R8 R9
       72 GETIMPORT                        R9 K29 [Enum.DeviceForm.Tablet]
       74 GETTABLEKS                       R9 R9 K25 ["Value"]
       76 GETTABLEKS                       R10 R2 K26 ["Category"]
       78 GETTABLEKS                       R10 R10 K27 ["PHONE_TABLET"]
       80 SETTABLE                         R10 R8 R9
       81 GETIMPORT                        R9 K31 [Enum.DeviceForm.Desktop]
       83 GETTABLEKS                       R9 R9 K25 ["Value"]
       85 GETTABLEKS                       R10 R2 K26 ["Category"]
       87 GETTABLEKS                       R10 R10 K32 ["DESKTOP"]
       89 SETTABLE                         R10 R8 R9
       90 GETIMPORT                        R9 K34 [Enum.DeviceForm.Console]
       92 GETTABLEKS                       R9 R9 K25 ["Value"]
       94 GETTABLEKS                       R10 R2 K26 ["Category"]
       96 GETTABLEKS                       R10 R10 K35 ["CONSOLE"]
       98 SETTABLE                         R10 R8 R9
       99 GETIMPORT                        R9 K37 [Enum.DeviceForm.VR]
      101 GETTABLEKS                       R9 R9 K25 ["Value"]
      103 GETTABLEKS                       R10 R2 K26 ["Category"]
      105 GETTABLEKS                       R10 R10 K36 ["VR"]
      107 SETTABLE                         R10 R8 R9
      108 NEWTABLE                         R9 4 0
      110 GETTABLEKS                       R10 R2 K26 ["Category"]
      112 GETTABLEKS                       R10 R10 K27 ["PHONE_TABLET"]
      114 LOADK                            R11 K38 ["iphone_17_pro"]
      115 SETTABLE                         R11 R9 R10
      116 GETTABLEKS                       R10 R2 K26 ["Category"]
      118 GETTABLEKS                       R10 R10 K32 ["DESKTOP"]
      120 GETTABLEKS                       R11 R7 K18 ["DEFAULT_DEVICE_ID"]
      122 SETTABLE                         R11 R9 R10
      123 GETTABLEKS                       R10 R2 K26 ["Category"]
      125 GETTABLEKS                       R10 R10 K35 ["CONSOLE"]
      127 LOADK                            R11 K39 ["ps5"]
      128 SETTABLE                         R11 R9 R10
      129 GETTABLEKS                       R10 R2 K26 ["Category"]
      131 GETTABLEKS                       R10 R10 K36 ["VR"]
      133 LOADK                            R11 K40 ["meta_quest_3"]
      134 SETTABLE                         R11 R9 R10
      135 NEWTABLE                         R10 4 0
      137 GETTABLEKS                       R11 R2 K26 ["Category"]
      139 GETTABLEKS                       R11 R11 K32 ["DESKTOP"]
      141 LOADK                            R12 K41 ["DesktopComputer"]
      142 SETTABLE                         R12 R10 R11
      143 GETTABLEKS                       R11 R2 K26 ["Category"]
      145 GETTABLEKS                       R11 R11 K35 ["CONSOLE"]
      147 LOADK                            R12 K33 ["Console"]
      148 SETTABLE                         R12 R10 R11
      149 GETTABLEKS                       R11 R2 K26 ["Category"]
      151 GETTABLEKS                       R11 R11 K36 ["VR"]
      153 LOADK                            R12 K42 ["Headset"]
      154 SETTABLE                         R12 R10 R11
      155 NEWTABLE                         R11 0 3
      157 DUPTABLE                         R12 K46 [{["tier"], ["key"] = "Flagship"}]
      158 GETTABLEKS                       R13 R2 K47 ["Tier"]
      160 GETTABLEKS                       R13 R13 K48 ["HIGH"]
      162 SETTABLEKS                       R13 R12 K43 ["tier"]
      164 DUPTABLE                         R13 K50 [{["tier"], ["key"] = "MidRange"}]
      165 GETTABLEKS                       R14 R2 K47 ["Tier"]
      167 GETTABLEKS                       R14 R14 K51 ["MID"]
      169 SETTABLEKS                       R14 R13 K43 ["tier"]
      171 DUPTABLE                         R14 K53 [{["tier"], ["key"] = "EntryLevel"}]
      172 GETTABLEKS                       R15 R2 K47 ["Tier"]
      174 GETTABLEKS                       R15 R15 K54 ["LOW"]
      176 SETTABLEKS                       R15 R14 K43 ["tier"]
      178 SETLIST                          R11 R12 3 [1]
      180 NEWTABLE                         R12 4 0
      182 GETTABLEKS                       R13 R2 K47 ["Tier"]
      184 GETTABLEKS                       R13 R13 K48 ["HIGH"]
      186 LOADB                            R14 1
      187 SETTABLE                         R14 R12 R13
      188 GETTABLEKS                       R13 R2 K47 ["Tier"]
      190 GETTABLEKS                       R13 R13 K51 ["MID"]
      192 LOADB                            R14 1
      193 SETTABLE                         R14 R12 R13
      194 GETTABLEKS                       R13 R2 K47 ["Tier"]
      196 GETTABLEKS                       R13 R13 K54 ["LOW"]
      198 LOADB                            R14 1
      199 SETTABLE                         R14 R12 R13
      200 DUPTABLE                         R13 K61 [{["phone_tablet"] = "mobile", ["desktop"] = "desktop", ["console"] = "console", ["vr"] = "headset"}]
      201 DUPTABLE                         R14 K76 [{["deviceForm"], ["deviceName"] = "", ["deviceId"], ["dpi"] = 0, ["height"] = 0, ["isCustom"] = False, ["landscapeKeyboardHeight"] = 0, ["memoryMB"] = 0, ["platform"], ["portraitKeyboardHeight"] = 0, ["tier"] = "", ["width"] = 0}]
      202 GETIMPORT                        R15 K31 [Enum.DeviceForm.Desktop]
      204 SETTABLEKS                       R15 R14 K62 ["deviceForm"]
      206 GETTABLEKS                       R15 R7 K18 ["DEFAULT_DEVICE_ID"]
      208 SETTABLEKS                       R15 R14 K65 ["deviceId"]
      210 GETIMPORT                        R15 K79 [Enum.Platform.None]
      212 SETTABLEKS                       R15 R14 K73 ["platform"]
      214 DUPCLOSURE                       R15 K80 [PROTO_1]
      215 DUPCLOSURE                       R16 K81 [PROTO_2]
      216 CAPTURE                          VAL R7
      217 CAPTURE                          VAL R2
      218 CAPTURE                          VAL R14
      219 DUPCLOSURE                       R17 K82 [PROTO_3]
      220 CAPTURE                          VAL R7
      221 DUPCLOSURE                       R18 K83 [PROTO_4]
      222 DUPCLOSURE                       R19 K84 [PROTO_5]
      223 CAPTURE                          VAL R6
      224 CAPTURE                          VAL R7
      225 DUPCLOSURE                       R20 K85 [PROTO_6]
      226 CAPTURE                          VAL R3
      227 CAPTURE                          VAL R8
      228 SETTABLEKS                       R20 R7 K86 ["categoryForDevice"]
      230 DUPCLOSURE                       R20 K87 [PROTO_7]
      231 CAPTURE                          VAL R7
      232 CAPTURE                          VAL R14
      233 SETTABLEKS                       R20 R7 K88 ["entriesById"]
      235 DUPCLOSURE                       R20 K89 [PROTO_8]
      236 CAPTURE                          VAL R7
      237 SETTABLEKS                       R20 R7 K90 ["getDeviceName"]
      239 DUPCLOSURE                       R20 K91 [PROTO_9]
      240 CAPTURE                          VAL R16
      241 CAPTURE                          VAL R2
      242 CAPTURE                          VAL R11
      243 CAPTURE                          VAL R19
      244 CAPTURE                          VAL R12
      245 CAPTURE                          VAL R10
      246 CAPTURE                          VAL R7
      247 SETTABLEKS                       R20 R7 K92 ["getMenuGroups"]
      249 DUPCLOSURE                       R20 K93 [PROTO_10]
      250 CAPTURE                          VAL R7
      251 SETTABLEKS                       R20 R7 K94 ["getAdjacentDeviceId"]
      253 DUPCLOSURE                       R20 K95 [PROTO_11]
      254 CAPTURE                          VAL R13
      255 SETTABLEKS                       R20 R7 K96 ["getDeviceManagerInput"]
      257 DUPCLOSURE                       R20 K97 [PROTO_12]
      258 CAPTURE                          VAL R16
      259 CAPTURE                          VAL R9
      260 SETTABLEKS                       R20 R7 K98 ["getDefaultDeviceId"]
      262 DUPCLOSURE                       R20 K99 [PROTO_13]
      263 CAPTURE                          VAL R7
      264 SETTABLEKS                       R20 R7 K100 ["hasChoices"]
      266 RETURN                           R7 1
