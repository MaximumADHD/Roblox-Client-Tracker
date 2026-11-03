PROTO_0:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [type]
        4 CALL                             R3 1 1
        5 JUMPIFNOTEQKS                    R3 K2 ["number"] ; [+5]
        7 JUMPIFNOTEQ                      R0 R0 ; [+3]
        9 MOVE                             R2 R0
       10 RETURN                           R2 1
       11 MOVE                             R2 R1
       12 RETURN                           R2 1

PROTO_1:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["EnumItem"] ; [+4]
        7 GETTABLEKS                       R1 R0 K3 ["Value"]
        9 RETURN                           R1 1
       10 FASTCALL1                        TYPE R0 ; [+3]
       11 MOVE                             R2 R0
       12 GETIMPORT                        R1 K5 [type]
       14 CALL                             R1 1 1
       15 JUMPIFNOTEQKS                    R1 K6 ["number"] ; [+2]
       17 RETURN                           R0 1
       18 LOADNIL                          R1
       19 RETURN                           R1 1

PROTO_2:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFNOTEQKS                    R3 K2 ["EnumItem"] ; [+4]
        7 GETTABLEKS                       R2 R0 K3 ["Value"]
        9 JUMP                             ; [+10]
       10 FASTCALL1                        TYPE R0 ; [+3]
       11 MOVE                             R4 R0
       12 GETIMPORT                        R3 K5 [type]
       14 CALL                             R3 1 1
       15 JUMPIFNOTEQKS                    R3 K6 ["number"] ; [+3]
       17 MOVE                             R2 R0
       18 JUMP                             ; [+1]
       19 LOADNIL                          R2
       20 JUMPIFNOT                        R2 ; [+8]
       21 GETIMPORT                        R4 K9 [Enum.DeviceForm]
       23 MOVE                             R6 R2
       24 NAMECALL                         R4 R4 K10 ["FromValue"]
       26 CALL                             R4 2 1
       27 OR                               R3 R4 R1
       28 RETURN                           R3 1
       29 MOVE                             R3 R1
       30 RETURN                           R3 1

PROTO_3:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFNOTEQKS                    R3 K2 ["EnumItem"] ; [+4]
        7 GETTABLEKS                       R2 R0 K3 ["Value"]
        9 JUMP                             ; [+10]
       10 FASTCALL1                        TYPE R0 ; [+3]
       11 MOVE                             R4 R0
       12 GETIMPORT                        R3 K5 [type]
       14 CALL                             R3 1 1
       15 JUMPIFNOTEQKS                    R3 K6 ["number"] ; [+3]
       17 MOVE                             R2 R0
       18 JUMP                             ; [+1]
       19 LOADNIL                          R2
       20 JUMPIFNOT                        R2 ; [+8]
       21 GETIMPORT                        R4 K9 [Enum.Platform]
       23 MOVE                             R6 R2
       24 NAMECALL                         R4 R4 K10 ["FromValue"]
       26 CALL                             R4 2 1
       27 OR                               R3 R4 R1
       28 RETURN                           R3 1
       29 MOVE                             R3 R1
       30 RETURN                           R3 1

PROTO_4:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["EnumItem"] ; [+4]
        7 GETTABLEKS                       R1 R0 K3 ["Value"]
        9 JUMP                             ; [+10]
       10 FASTCALL1                        TYPE R0 ; [+3]
       11 MOVE                             R3 R0
       12 GETIMPORT                        R2 K5 [type]
       14 CALL                             R2 1 1
       15 JUMPIFNOTEQKS                    R2 K6 ["number"] ; [+3]
       17 MOVE                             R1 R0
       18 JUMP                             ; [+1]
       19 LOADNIL                          R1
       20 GETIMPORT                        R2 K10 [Enum.DeviceForm.Phone]
       22 GETTABLEKS                       R2 R2 K3 ["Value"]
       24 JUMPIFEQ                         R1 R2 ; [+7]
       26 GETIMPORT                        R2 K12 [Enum.DeviceForm.Tablet]
       28 GETTABLEKS                       R2 R2 K3 ["Value"]
       30 JUMPIFNOTEQ                      R1 R2 ; [+3]
       32 LOADK                            R2 K13 ["mobile"]
       33 RETURN                           R2 1
       34 GETIMPORT                        R2 K15 [Enum.DeviceForm.Desktop]
       36 GETTABLEKS                       R2 R2 K3 ["Value"]
       38 JUMPIFNOTEQ                      R1 R2 ; [+3]
       40 LOADK                            R2 K16 ["desktop"]
       41 RETURN                           R2 1
       42 GETIMPORT                        R2 K18 [Enum.DeviceForm.Console]
       44 GETTABLEKS                       R2 R2 K3 ["Value"]
       46 JUMPIFNOTEQ                      R1 R2 ; [+3]
       48 LOADK                            R2 K19 ["console"]
       49 RETURN                           R2 1
       50 GETIMPORT                        R2 K21 [Enum.DeviceForm.VR]
       52 GETTABLEKS                       R2 R2 K3 ["Value"]
       54 JUMPIFNOTEQ                      R1 R2 ; [+3]
       56 LOADK                            R2 K22 ["headset"]
       57 RETURN                           R2 1
       58 LOADNIL                          R2
       59 RETURN                           R2 1

PROTO_5:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 -1
        4 RETURN                           R1 -1

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["nominalMemoryMB"]
        2 FASTCALL1                        TYPE R1 ; [+3]
        3 MOVE                             R4 R1
        4 GETIMPORT                        R3 K2 [type]
        6 CALL                             R3 1 1
        7 JUMPIFNOTEQKS                    R3 K3 ["number"] ; [+6]
        9 LOADN                            R3 0
       10 JUMPIFNOTLT                      R3 R1 ; [+3]
       12 MOVE                             R2 R1
       13 RETURN                           R2 1
       14 LOADNIL                          R2
       15 RETURN                           R2 1

PROTO_7:
        0 SETTABLEKS                       R1 R0 K0 ["nominalMemoryMB"]
        2 RETURN                           R0 0

PROTO_8:
        0 DIVK                             R1 R0 K0 [1024]
        1 FASTCALL1                        MATH_FLOOR R1 ; [+3]
        2 MOVE                             R3 R1
        3 GETIMPORT                        R2 K3 [math.floor]
        5 CALL                             R2 1 1
        6 JUMPIFNOTEQ                      R1 R2 ; [+7]
        8 LOADK                            R2 K4 ["%* GB"]
        9 MOVE                             R4 R1
       10 NAMECALL                         R2 R2 K5 ["format"]
       12 CALL                             R2 2 1
       13 RETURN                           R2 1
       14 GETIMPORT                        R2 K7 [string.format]
       16 LOADK                            R3 K8 ["%.1f GB"]
       17 MOVE                             R4 R1
       18 CALL                             R2 2 -1
       19 RETURN                           R2 -1

PROTO_9:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADNIL                          R2
        3 RETURN                           R2 1
        4 GETTABLE                         R2 R0 R1
        5 JUMPIFEQKNIL                     R2 ; [+7]
        7 LENGTH                           R4 R2
        8 LOADN                            R5 0
        9 JUMPIFNOTLT                      R5 R4 ; [+3]
       11 MOVE                             R3 R2
       12 RETURN                           R3 1
       13 LOADNIL                          R3
       14 RETURN                           R3 1

PROTO_10:
        0 GETTABLEN                        R2 R0 1
        1 MOVE                             R3 R0
        2 LOADNIL                          R4
        3 LOADNIL                          R5
        4 FORGPREP                         R3
        5 SUB                              R9 R7 R1
        6 FASTCALL1                        MATH_ABS R9 ; [+2]
        7 GETIMPORT                        R8 K2 [math.abs]
        9 CALL                             R8 1 1
       10 SUB                              R10 R2 R1
       11 FASTCALL1                        MATH_ABS R10 ; [+2]
       12 GETIMPORT                        R9 K2 [math.abs]
       14 CALL                             R9 1 1
       15 JUMPIFLT                         R8 R9 ; [+2]
       17 LOADB                            R10 0 +1
       18 LOADB                            R10 1
       19 LOADB                            R11 0
       20 JUMPIFNOTEQ                      R8 R9 ; [+5]
       22 JUMPIFLT                         R7 R2 ; [+2]
       24 LOADB                            R11 0 +1
       25 LOADB                            R11 1
       26 JUMPIF                           R10 ; [+1]
       27 JUMPIFNOT                        R11 ; [+1]
       28 MOVE                             R2 R7
       29 FORGLOOP                         R3 2 ; [-25]
       31 RETURN                           R2 1

PROTO_11:
        0 GETUPVAL                         R4 0
        1 GETTABLE                         R3 R4 R1
        2 ORK                              R2 R3 K0 [8192]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["nearestMemoryTier"]
        6 MOVE                             R4 R0
        7 MOVE                             R5 R2
        8 CALL                             R3 2 -1
        9 RETURN                           R3 -1

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["tabForForm"]
        3 GETTABLEKS                       R3 R0 K1 ["deviceForm"]
        5 CALL                             R2 1 1
        6 JUMPIF                           R2 ; [+2]
        7 LOADNIL                          R3
        8 RETURN                           R3 1
        9 GETUPVAL                         R4 1
       10 GETTABLE                         R3 R4 R2
       11 GETTABLEKS                       R6 R0 K2 ["deviceId"]
       13 FASTCALL1                        TYPE R6 ; [+2]
       14 GETIMPORT                        R5 K4 [type]
       16 CALL                             R5 1 1
       17 JUMPIFNOTEQKS                    R5 K5 ["string"] ; [+4]
       19 GETTABLEKS                       R4 R0 K2 ["deviceId"]
       21 JUMP                             ; [+1]
       22 LOADK                            R4 K6 [""]
       23 DUPTABLE                         R5 K17 [{"deviceForm", "deviceId", "deviceName", "dpi", "height", "isCustom", "landscapeKeyboardHeight", "memoryMB", "platform", "portraitKeyboardHeight", "tier", "width"}]
       24 GETTABLEKS                       R7 R0 K1 ["deviceForm"]
       26 GETUPVAL                         R9 2
       27 GETTABLE                         R8 R9 R2
       28 FASTCALL1                        TYPEOF R7 ; [+3]
       29 MOVE                             R11 R7
       30 GETIMPORT                        R10 K19 [typeof]
       32 CALL                             R10 1 1
       33 JUMPIFNOTEQKS                    R10 K20 ["EnumItem"] ; [+4]
       35 GETTABLEKS                       R9 R7 K21 ["Value"]
       37 JUMP                             ; [+10]
       38 FASTCALL1                        TYPE R7 ; [+3]
       39 MOVE                             R11 R7
       40 GETIMPORT                        R10 K4 [type]
       42 CALL                             R10 1 1
       43 JUMPIFNOTEQKS                    R10 K22 ["number"] ; [+3]
       45 MOVE                             R9 R7
       46 JUMP                             ; [+1]
       47 LOADNIL                          R9
       48 JUMPIFNOT                        R9 ; [+8]
       49 GETIMPORT                        R10 K25 [Enum.DeviceForm]
       51 MOVE                             R12 R9
       52 NAMECALL                         R10 R10 K26 ["FromValue"]
       54 CALL                             R10 2 1
       55 OR                               R6 R10 R8
       56 JUMP                             ; [+1]
       57 MOVE                             R6 R8
       58 SETTABLEKS                       R6 R5 K1 ["deviceForm"]
       60 SETTABLEKS                       R4 R5 K2 ["deviceId"]
       62 GETTABLEKS                       R8 R0 K7 ["deviceName"]
       64 FASTCALL1                        TYPE R8 ; [+2]
       65 GETIMPORT                        R7 K4 [type]
       67 CALL                             R7 1 1
       68 JUMPIFNOTEQKS                    R7 K5 ["string"] ; [+4]
       70 GETTABLEKS                       R6 R0 K7 ["deviceName"]
       72 JUMP                             ; [+1]
       73 MOVE                             R6 R4
       74 SETTABLEKS                       R6 R5 K7 ["deviceName"]
       76 GETTABLEKS                       R7 R0 K8 ["dpi"]
       78 GETTABLEKS                       R8 R3 K8 ["dpi"]
       80 FASTCALL1                        TYPE R7 ; [+3]
       81 MOVE                             R10 R7
       82 GETIMPORT                        R9 K4 [type]
       84 CALL                             R9 1 1
       85 JUMPIFNOTEQKS                    R9 K22 ["number"] ; [+5]
       87 JUMPIFNOTEQ                      R7 R7 ; [+3]
       89 MOVE                             R6 R7
       90 JUMP                             ; [+1]
       91 MOVE                             R6 R8
       92 SETTABLEKS                       R6 R5 K8 ["dpi"]
       94 GETTABLEKS                       R7 R0 K9 ["height"]
       96 GETTABLEKS                       R8 R3 K9 ["height"]
       98 FASTCALL1                        TYPE R7 ; [+3]
       99 MOVE                             R10 R7
      100 GETIMPORT                        R9 K4 [type]
      102 CALL                             R9 1 1
      103 JUMPIFNOTEQKS                    R9 K22 ["number"] ; [+5]
      105 JUMPIFNOTEQ                      R7 R7 ; [+3]
      107 MOVE                             R6 R7
      108 JUMP                             ; [+1]
      109 MOVE                             R6 R8
      110 SETTABLEKS                       R6 R5 K9 ["height"]
      112 GETTABLEKS                       R7 R0 K10 ["isCustom"]
      114 JUMPIFEQKB                       R7 TRUE ; [+2]
      116 LOADB                            R6 0 +1
      117 LOADB                            R6 1
      118 SETTABLEKS                       R6 R5 K10 ["isCustom"]
      120 GETTABLEKS                       R7 R0 K11 ["landscapeKeyboardHeight"]
      122 FASTCALL1                        TYPE R7 ; [+3]
      123 MOVE                             R9 R7
      124 GETIMPORT                        R8 K4 [type]
      126 CALL                             R8 1 1
      127 JUMPIFNOTEQKS                    R8 K22 ["number"] ; [+5]
      129 JUMPIFNOTEQ                      R7 R7 ; [+3]
      131 MOVE                             R6 R7
      132 JUMP                             ; [+1]
      133 LOADN                            R6 0
      134 SETTABLEKS                       R6 R5 K11 ["landscapeKeyboardHeight"]
      136 GETTABLEKS                       R7 R0 K12 ["memoryMB"]
      138 FASTCALL1                        TYPE R7 ; [+3]
      139 MOVE                             R9 R7
      140 GETIMPORT                        R8 K4 [type]
      142 CALL                             R8 1 1
      143 JUMPIFNOTEQKS                    R8 K22 ["number"] ; [+5]
      145 JUMPIFNOTEQ                      R7 R7 ; [+3]
      147 MOVE                             R6 R7
      148 JUMP                             ; [+1]
      149 LOADK                            R6 K27 [64000]
      150 SETTABLEKS                       R6 R5 K12 ["memoryMB"]
      152 GETTABLEKS                       R7 R0 K13 ["platform"]
      154 GETUPVAL                         R9 3
      155 GETTABLE                         R8 R9 R2
      156 FASTCALL1                        TYPEOF R7 ; [+3]
      157 MOVE                             R11 R7
      158 GETIMPORT                        R10 K19 [typeof]
      160 CALL                             R10 1 1
      161 JUMPIFNOTEQKS                    R10 K20 ["EnumItem"] ; [+4]
      163 GETTABLEKS                       R9 R7 K21 ["Value"]
      165 JUMP                             ; [+10]
      166 FASTCALL1                        TYPE R7 ; [+3]
      167 MOVE                             R11 R7
      168 GETIMPORT                        R10 K4 [type]
      170 CALL                             R10 1 1
      171 JUMPIFNOTEQKS                    R10 K22 ["number"] ; [+3]
      173 MOVE                             R9 R7
      174 JUMP                             ; [+1]
      175 LOADNIL                          R9
      176 JUMPIFNOT                        R9 ; [+8]
      177 GETIMPORT                        R10 K29 [Enum.Platform]
      179 MOVE                             R12 R9
      180 NAMECALL                         R10 R10 K26 ["FromValue"]
      182 CALL                             R10 2 1
      183 OR                               R6 R10 R8
      184 JUMP                             ; [+1]
      185 MOVE                             R6 R8
      186 SETTABLEKS                       R6 R5 K13 ["platform"]
      188 GETTABLEKS                       R7 R0 K14 ["portraitKeyboardHeight"]
      190 FASTCALL1                        TYPE R7 ; [+3]
      191 MOVE                             R9 R7
      192 GETIMPORT                        R8 K4 [type]
      194 CALL                             R8 1 1
      195 JUMPIFNOTEQKS                    R8 K22 ["number"] ; [+5]
      197 JUMPIFNOTEQ                      R7 R7 ; [+3]
      199 MOVE                             R6 R7
      200 JUMP                             ; [+1]
      201 LOADN                            R6 0
      202 SETTABLEKS                       R6 R5 K14 ["portraitKeyboardHeight"]
      204 GETTABLEKS                       R8 R0 K15 ["tier"]
      206 FASTCALL1                        TYPE R8 ; [+2]
      207 GETIMPORT                        R7 K4 [type]
      209 CALL                             R7 1 1
      210 JUMPIFNOTEQKS                    R7 K5 ["string"] ; [+4]
      212 GETTABLEKS                       R6 R0 K15 ["tier"]
      214 JUMP                             ; [+1]
      215 LOADK                            R6 K6 [""]
      216 SETTABLEKS                       R6 R5 K15 ["tier"]
      218 GETTABLEKS                       R7 R0 K16 ["width"]
      220 GETTABLEKS                       R8 R3 K16 ["width"]
      222 FASTCALL1                        TYPE R7 ; [+3]
      223 MOVE                             R10 R7
      224 GETIMPORT                        R9 K4 [type]
      226 CALL                             R9 1 1
      227 JUMPIFNOTEQKS                    R9 K22 ["number"] ; [+5]
      229 JUMPIFNOTEQ                      R7 R7 ; [+3]
      231 MOVE                             R6 R7
      232 JUMP                             ; [+1]
      233 MOVE                             R6 R8
      234 SETTABLEKS                       R6 R5 K16 ["width"]
      236 GETUPVAL                         R6 4
      237 GETTABLEKS                       R6 R6 K30 ["getEngineFeatureDeviceSimulatorNominalMemory"]
      239 CALL                             R6 0 1
      240 JUMPIFNOT                        R6 ; [+7]
      241 GETUPVAL                         R6 0
      242 GETTABLEKS                       R6 R6 K31 ["nominalMemoryOf"]
      244 MOVE                             R7 R0
      245 CALL                             R6 1 1
      246 SETTABLEKS                       R6 R5 K32 ["nominalMemoryMB"]
      248 DUPTABLE                         R6 K37 [{["info"], ["draftId"], ["isNew"] = False}]
      249 SETTABLEKS                       R5 R6 K33 ["info"]
      251 LOADK                            R7 K38 ["existing:%*:%*"]
      252 MOVE                             R9 R4
      253 MOVE                             R10 R1
      254 NAMECALL                         R7 R7 K39 ["format"]
      256 CALL                             R7 3 1
      257 SETTABLEKS                       R7 R6 K34 ["draftId"]
      259 RETURN                           R6 1

PROTO_13:
        0 DUPTABLE                         R1 K3 [{"info", "draftId", "isNew"}]
        1 GETTABLEKS                       R3 R0 K0 ["info"]
        3 GETIMPORT                        R4 K6 [table.clone]
        5 MOVE                             R5 R3
        6 CALL                             R4 1 1
        7 MOVE                             R2 R4
        8 SETTABLEKS                       R2 R1 K0 ["info"]
       10 GETTABLEKS                       R2 R0 K1 ["draftId"]
       12 SETTABLEKS                       R2 R1 K1 ["draftId"]
       14 GETTABLEKS                       R2 R0 K2 ["isNew"]
       16 SETTABLEKS                       R2 R1 K2 ["isNew"]
       18 RETURN                           R1 1

PROTO_14:
        0 GETTABLEKS                       R2 R0 K0 ["info"]
        2 GETTABLEKS                       R2 R2 K1 ["isCustom"]
        4 GETTABLEKS                       R3 R1 K0 ["info"]
        6 GETTABLEKS                       R3 R3 K1 ["isCustom"]
        8 JUMPIFEQ                         R2 R3 ; [+6]
       10 GETTABLEKS                       R2 R0 K0 ["info"]
       12 GETTABLEKS                       R2 R2 K1 ["isCustom"]
       14 RETURN                           R2 1
       15 GETIMPORT                        R2 K4 [string.lower]
       17 GETTABLEKS                       R3 R0 K0 ["info"]
       19 GETTABLEKS                       R3 R3 K5 ["deviceName"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K4 [string.lower]
       24 GETTABLEKS                       R4 R1 K0 ["info"]
       26 GETTABLEKS                       R4 R4 K5 ["deviceName"]
       28 CALL                             R3 1 1
       29 JUMPIFNOTEQ                      R2 R3 ; [+10]
       31 GETTABLEKS                       R5 R0 K6 ["draftId"]
       33 GETTABLEKS                       R6 R1 K6 ["draftId"]
       35 JUMPIFLT                         R5 R6 ; [+2]
       37 LOADB                            R4 0 +1
       38 LOADB                            R4 1
       39 RETURN                           R4 1
       40 JUMPIFLT                         R2 R3 ; [+2]
       42 LOADB                            R4 0 +1
       43 LOADB                            R4 1
       44 RETURN                           R4 1

PROTO_15:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETIMPORT                        R2 K4 [table.sort]
        6 MOVE                             R3 R1
        7 DUPCLOSURE                       R4 K5 [PROTO_14]
        8 CALL                             R2 2 0
        9 RETURN                           R1 1

PROTO_16:
        0 MOVE                             R2 R1
        1 JUMPIF                           R2 ; [+2]
        2 GETTABLEKS                       R2 R0 K0 ["activeTab"]
        4 NEWTABLE                         R3 0 0
        6 GETTABLEKS                       R4 R0 K1 ["devices"]
        8 LOADNIL                          R5
        9 LOADNIL                          R6
       10 FORGPREP                         R4
       11 GETUPVAL                         R9 0
       12 GETTABLEKS                       R9 R9 K2 ["tabForForm"]
       14 GETTABLEKS                       R10 R8 K3 ["info"]
       16 GETTABLEKS                       R10 R10 K4 ["deviceForm"]
       18 CALL                             R9 1 1
       19 JUMPIFNOTEQ                      R9 R2 ; [+8]
       21 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
       23 MOVE                             R10 R3
       24 MOVE                             R11 R8
       25 GETIMPORT                        R9 K7 [table.insert]
       27 CALL                             R9 2 0
       28 FORGLOOP                         R4 2 ; [-18]
       30 GETIMPORT                        R5 K9 [table.clone]
       32 MOVE                             R6 R3
       33 CALL                             R5 1 1
       34 GETIMPORT                        R6 K11 [table.sort]
       36 MOVE                             R7 R5
       37 DUPCLOSURE                       R8 K12 [PROTO_14]
       38 CALL                             R6 2 0
       39 MOVE                             R4 R5
       40 RETURN                           R4 1

PROTO_17:
        0 GETTABLEKS                       R3 R1 K0 ["info"]
        2 GETTABLEKS                       R3 R3 K1 ["isCustom"]
        4 NOT                              R2 R3
        5 JUMPIFNOT                        R2 ; [+11]
        6 GETTABLEKS                       R4 R0 K2 ["hidden"]
        8 GETTABLEKS                       R5 R1 K0 ["info"]
       10 GETTABLEKS                       R5 R5 K3 ["deviceId"]
       12 GETTABLE                         R3 R4 R5
       13 JUMPIFEQKB                       R3 TRUE ; [+2]
       15 LOADB                            R2 0 +1
       16 LOADB                            R2 1
       17 RETURN                           R2 1

PROTO_18:
        0 NEWTABLE                         R2 0 0
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K0 ["devicesForTab"]
        5 MOVE                             R4 R0
        6 MOVE                             R5 R1
        7 CALL                             R3 2 3
        8 FORGPREP                         R3
        9 GETTABLEKS                       R9 R7 K1 ["info"]
       11 GETTABLEKS                       R9 R9 K2 ["isCustom"]
       13 NOT                              R8 R9
       14 JUMPIFNOT                        R8 ; [+11]
       15 GETTABLEKS                       R10 R0 K3 ["hidden"]
       17 GETTABLEKS                       R11 R7 K1 ["info"]
       19 GETTABLEKS                       R11 R11 K4 ["deviceId"]
       21 GETTABLE                         R9 R10 R11
       22 JUMPIFEQKB                       R9 TRUE ; [+2]
       24 LOADB                            R8 0 +1
       25 LOADB                            R8 1
       26 JUMPIF                           R8 ; [+7]
       27 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       29 MOVE                             R9 R2
       30 MOVE                             R10 R7
       31 GETIMPORT                        R8 K7 [table.insert]
       33 CALL                             R8 2 0
       34 FORGLOOP                         R3 2 ; [-26]
       36 RETURN                           R2 1

PROTO_19:
        0 NEWTABLE                         R2 0 0
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K0 ["devicesForTab"]
        5 MOVE                             R4 R0
        6 MOVE                             R5 R1
        7 CALL                             R3 2 3
        8 FORGPREP                         R3
        9 GETTABLEKS                       R8 R7 K1 ["info"]
       11 GETTABLEKS                       R8 R8 K2 ["isCustom"]
       13 JUMPIF                           R8 ; [+7]
       14 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       16 MOVE                             R9 R2
       17 MOVE                             R10 R7
       18 GETIMPORT                        R8 K5 [table.insert]
       20 CALL                             R8 2 0
       21 FORGLOOP                         R3 2 ; [-13]
       23 RETURN                           R2 1

PROTO_20:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["getFFlagEnableDeviceSimulatorDeviceVisibility"]
        3 CALL                             R3 0 1
        4 JUMPIFNOT                        R3 ; [+7]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["visibleDevicesForTab"]
        8 MOVE                             R3 R0
        9 MOVE                             R4 R1
       10 CALL                             R2 2 1
       11 JUMP                             ; [+6]
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R2 R2 K2 ["devicesForTab"]
       15 MOVE                             R3 R0
       16 MOVE                             R4 R1
       17 CALL                             R2 2 1
       18 GETTABLEN                        R4 R2 1
       19 JUMPIFNOT                        R4 ; [+4]
       20 GETTABLEN                        R3 R2 1
       21 GETTABLEKS                       R3 R3 K3 ["draftId"]
       23 RETURN                           R3 1
       24 LOADNIL                          R3
       25 RETURN                           R3 1

PROTO_21:
        0 NEWTABLE                         R1 0 0
        2 NEWTABLE                         R2 0 0
        4 GETTABLEKS                       R3 R0 K0 ["devices"]
        6 LOADNIL                          R4
        7 LOADNIL                          R5
        8 FORGPREP                         R3
        9 GETUPVAL                         R8 0
       10 MOVE                             R9 R7
       11 MOVE                             R10 R6
       12 CALL                             R8 2 1
       13 JUMPIFNOT                        R8 ; [+17]
       14 FASTCALL2                        TABLE_INSERT R1 R8 ; [+5]
       16 MOVE                             R10 R1
       17 MOVE                             R11 R8
       18 GETIMPORT                        R9 K3 [table.insert]
       20 CALL                             R9 2 0
       21 GETTABLEKS                       R9 R8 K4 ["draftId"]
       23 GETTABLEKS                       R11 R8 K5 ["info"]
       25 GETIMPORT                        R12 K7 [table.clone]
       27 MOVE                             R13 R11
       28 CALL                             R12 1 1
       29 MOVE                             R10 R12
       30 SETTABLE                         R10 R2 R9
       31 FORGLOOP                         R3 2 ; [-23]
       33 DUPTABLE                         R3 K13 [{["mobile"] = , ["desktop"] = , ["console"] = , ["headset"] = }]
       34 NEWTABLE                         R4 0 0
       36 GETUPVAL                         R5 1
       37 GETTABLEKS                       R5 R5 K14 ["getFFlagEnableDeviceSimulatorDeviceVisibility"]
       39 CALL                             R5 0 1
       40 JUMPIFNOT                        R5 ; [+14]
       41 GETTABLEKS                       R5 R0 K15 ["hiddenDeviceIds"]
       43 JUMPIF                           R5 ; [+2]
       44 NEWTABLE                         R5 0 0
       46 MOVE                             R6 R5
       47 LOADNIL                          R7
       48 LOADNIL                          R8
       49 FORGPREP                         R6
       50 JUMPIFNOT                        R10 ; [+2]
       51 LOADB                            R11 1
       52 SETTABLE                         R11 R4 R9
       53 FORGLOOP                         R6 2 ; [-4]
       55 GETIMPORT                        R5 K7 [table.clone]
       57 MOVE                             R6 R4
       58 CALL                             R5 1 1
       59 DUPTABLE                         R6 K24 [{["activeTab"], [2], ["selectedByTab"], ["removals"], ["originals"], ["nextDraftId"] = 1, ["hidden"], ["originalHidden"]}]
       60 GETTABLEKS                       R7 R0 K25 ["initialTab"]
       62 SETTABLEKS                       R7 R6 K16 ["activeTab"]
       64 SETTABLEKS                       R1 R6 K0 ["devices"]
       66 SETTABLEKS                       R3 R6 K17 ["selectedByTab"]
       68 NEWTABLE                         R7 0 0
       70 SETTABLEKS                       R7 R6 K18 ["removals"]
       72 SETTABLEKS                       R2 R6 K19 ["originals"]
       74 SETTABLEKS                       R4 R6 K22 ["hidden"]
       76 SETTABLEKS                       R5 R6 K23 ["originalHidden"]
       78 GETTABLEKS                       R7 R6 K17 ["selectedByTab"]
       80 GETUPVAL                         R10 1
       81 GETTABLEKS                       R10 R10 K14 ["getFFlagEnableDeviceSimulatorDeviceVisibility"]
       83 CALL                             R10 0 1
       84 JUMPIFNOT                        R10 ; [+7]
       85 GETUPVAL                         R9 2
       86 GETTABLEKS                       R9 R9 K26 ["visibleDevicesForTab"]
       88 MOVE                             R10 R6
       89 LOADK                            R11 K8 ["mobile"]
       90 CALL                             R9 2 1
       91 JUMP                             ; [+6]
       92 GETUPVAL                         R9 2
       93 GETTABLEKS                       R9 R9 K27 ["devicesForTab"]
       95 MOVE                             R10 R6
       96 LOADK                            R11 K8 ["mobile"]
       97 CALL                             R9 2 1
       98 GETTABLEN                        R10 R9 1
       99 JUMPIFNOT                        R10 ; [+4]
      100 GETTABLEN                        R8 R9 1
      101 GETTABLEKS                       R8 R8 K4 ["draftId"]
      103 JUMP                             ; [+1]
      104 LOADNIL                          R8
      105 SETTABLEKS                       R8 R7 K8 ["mobile"]
      107 GETTABLEKS                       R7 R6 K17 ["selectedByTab"]
      109 GETUPVAL                         R10 1
      110 GETTABLEKS                       R10 R10 K14 ["getFFlagEnableDeviceSimulatorDeviceVisibility"]
      112 CALL                             R10 0 1
      113 JUMPIFNOT                        R10 ; [+7]
      114 GETUPVAL                         R9 2
      115 GETTABLEKS                       R9 R9 K26 ["visibleDevicesForTab"]
      117 MOVE                             R10 R6
      118 LOADK                            R11 K10 ["desktop"]
      119 CALL                             R9 2 1
      120 JUMP                             ; [+6]
      121 GETUPVAL                         R9 2
      122 GETTABLEKS                       R9 R9 K27 ["devicesForTab"]
      124 MOVE                             R10 R6
      125 LOADK                            R11 K10 ["desktop"]
      126 CALL                             R9 2 1
      127 GETTABLEN                        R10 R9 1
      128 JUMPIFNOT                        R10 ; [+4]
      129 GETTABLEN                        R8 R9 1
      130 GETTABLEKS                       R8 R8 K4 ["draftId"]
      132 JUMP                             ; [+1]
      133 LOADNIL                          R8
      134 SETTABLEKS                       R8 R7 K10 ["desktop"]
      136 GETTABLEKS                       R7 R6 K17 ["selectedByTab"]
      138 GETUPVAL                         R10 1
      139 GETTABLEKS                       R10 R10 K14 ["getFFlagEnableDeviceSimulatorDeviceVisibility"]
      141 CALL                             R10 0 1
      142 JUMPIFNOT                        R10 ; [+7]
      143 GETUPVAL                         R9 2
      144 GETTABLEKS                       R9 R9 K26 ["visibleDevicesForTab"]
      146 MOVE                             R10 R6
      147 LOADK                            R11 K11 ["console"]
      148 CALL                             R9 2 1
      149 JUMP                             ; [+6]
      150 GETUPVAL                         R9 2
      151 GETTABLEKS                       R9 R9 K27 ["devicesForTab"]
      153 MOVE                             R10 R6
      154 LOADK                            R11 K11 ["console"]
      155 CALL                             R9 2 1
      156 GETTABLEN                        R10 R9 1
      157 JUMPIFNOT                        R10 ; [+4]
      158 GETTABLEN                        R8 R9 1
      159 GETTABLEKS                       R8 R8 K4 ["draftId"]
      161 JUMP                             ; [+1]
      162 LOADNIL                          R8
      163 SETTABLEKS                       R8 R7 K11 ["console"]
      165 GETTABLEKS                       R7 R6 K17 ["selectedByTab"]
      167 GETUPVAL                         R10 1
      168 GETTABLEKS                       R10 R10 K14 ["getFFlagEnableDeviceSimulatorDeviceVisibility"]
      170 CALL                             R10 0 1
      171 JUMPIFNOT                        R10 ; [+7]
      172 GETUPVAL                         R9 2
      173 GETTABLEKS                       R9 R9 K26 ["visibleDevicesForTab"]
      175 MOVE                             R10 R6
      176 LOADK                            R11 K12 ["headset"]
      177 CALL                             R9 2 1
      178 JUMP                             ; [+6]
      179 GETUPVAL                         R9 2
      180 GETTABLEKS                       R9 R9 K27 ["devicesForTab"]
      182 MOVE                             R10 R6
      183 LOADK                            R11 K12 ["headset"]
      184 CALL                             R9 2 1
      185 GETTABLEN                        R10 R9 1
      186 JUMPIFNOT                        R10 ; [+4]
      187 GETTABLEN                        R8 R9 1
      188 GETTABLEKS                       R8 R8 K4 ["draftId"]
      190 JUMP                             ; [+1]
      191 LOADNIL                          R8
      192 SETTABLEKS                       R8 R7 K12 ["headset"]
      194 GETTABLEKS                       R7 R0 K28 ["selectedDeviceId"]
      196 JUMPIFNOT                        R7 ; [+53]
      197 GETUPVAL                         R7 1
      198 GETTABLEKS                       R7 R7 K14 ["getFFlagEnableDeviceSimulatorDeviceVisibility"]
      200 CALL                             R7 0 1
      201 GETTABLEKS                       R8 R6 K0 ["devices"]
      203 LOADNIL                          R9
      204 LOADNIL                          R10
      205 FORGPREP                         R8
      206 GETTABLEKS                       R13 R12 K5 ["info"]
      208 GETTABLEKS                       R13 R13 K29 ["deviceId"]
      210 GETTABLEKS                       R14 R0 K28 ["selectedDeviceId"]
      212 JUMPIFNOTEQ                      R13 R14 ; [+35]
      214 GETUPVAL                         R13 2
      215 GETTABLEKS                       R13 R13 K30 ["tabForForm"]
      217 GETTABLEKS                       R14 R12 K5 ["info"]
      219 GETTABLEKS                       R14 R14 K31 ["deviceForm"]
      221 CALL                             R13 1 1
      222 JUMPIFNOT                        R13 ; [+27]
      223 JUMPIFNOT                        R7 ; [+18]
      224 GETTABLEKS                       R15 R12 K5 ["info"]
      226 GETTABLEKS                       R15 R15 K32 ["isCustom"]
      228 NOT                              R14 R15
      229 JUMPIFNOT                        R14 ; [+11]
      230 GETTABLEKS                       R16 R6 K22 ["hidden"]
      232 GETTABLEKS                       R17 R12 K5 ["info"]
      234 GETTABLEKS                       R17 R17 K29 ["deviceId"]
      236 GETTABLE                         R15 R16 R17
      237 JUMPIFEQKB                       R15 TRUE ; [+2]
      239 LOADB                            R14 0 +1
      240 LOADB                            R14 1
      241 JUMPIF                           R14 ; [+8]
      242 GETTABLEKS                       R14 R6 K17 ["selectedByTab"]
      244 GETTABLEKS                       R15 R12 K4 ["draftId"]
      246 SETTABLE                         R15 R14 R13
      247 RETURN                           R6 1
      248 FORGLOOP                         R8 2 ; [-43]
      250 RETURN                           R6 1

PROTO_22:
        0 GETTABLEKS                       R2 R0 K0 ["selectedByTab"]
        2 GETTABLEKS                       R3 R0 K1 ["activeTab"]
        4 GETTABLE                         R1 R2 R3
        5 GETTABLEKS                       R2 R0 K2 ["devices"]
        7 LOADNIL                          R3
        8 LOADNIL                          R4
        9 FORGPREP                         R2
       10 GETTABLEKS                       R7 R6 K3 ["draftId"]
       12 JUMPIFNOTEQ                      R7 R1 ; [+2]
       14 RETURN                           R6 1
       15 FORGLOOP                         R2 2 ; [-6]
       17 LOADNIL                          R2
       18 RETURN                           R2 1

PROTO_23:
        0 GETIMPORT                        R2 K2 [table.clone]
        2 MOVE                             R3 R0
        3 CALL                             R2 1 1
        4 SETTABLEKS                       R1 R2 K3 ["activeTab"]
        6 GETTABLEKS                       R4 R2 K4 ["selectedByTab"]
        8 GETTABLE                         R3 R4 R1
        9 JUMPIFNOTEQKNIL                  R3 ; [+36]
       11 GETIMPORT                        R3 K2 [table.clone]
       13 GETTABLEKS                       R4 R0 K4 ["selectedByTab"]
       15 CALL                             R3 1 1
       16 SETTABLEKS                       R3 R2 K4 ["selectedByTab"]
       18 GETTABLEKS                       R3 R2 K4 ["selectedByTab"]
       20 GETUPVAL                         R6 0
       21 GETTABLEKS                       R6 R6 K5 ["getFFlagEnableDeviceSimulatorDeviceVisibility"]
       23 CALL                             R6 0 1
       24 JUMPIFNOT                        R6 ; [+7]
       25 GETUPVAL                         R5 1
       26 GETTABLEKS                       R5 R5 K6 ["visibleDevicesForTab"]
       28 MOVE                             R6 R2
       29 MOVE                             R7 R1
       30 CALL                             R5 2 1
       31 JUMP                             ; [+6]
       32 GETUPVAL                         R5 1
       33 GETTABLEKS                       R5 R5 K7 ["devicesForTab"]
       35 MOVE                             R6 R2
       36 MOVE                             R7 R1
       37 CALL                             R5 2 1
       38 GETTABLEN                        R6 R5 1
       39 JUMPIFNOT                        R6 ; [+4]
       40 GETTABLEN                        R4 R5 1
       41 GETTABLEKS                       R4 R4 K8 ["draftId"]
       43 JUMP                             ; [+1]
       44 LOADNIL                          R4
       45 SETTABLE                         R4 R3 R1
       46 RETURN                           R2 1

PROTO_24:
        0 GETIMPORT                        R2 K2 [table.clone]
        2 MOVE                             R3 R0
        3 CALL                             R2 1 1
        4 GETIMPORT                        R3 K2 [table.clone]
        6 GETTABLEKS                       R4 R0 K3 ["selectedByTab"]
        8 CALL                             R3 1 1
        9 SETTABLEKS                       R3 R2 K3 ["selectedByTab"]
       11 GETTABLEKS                       R3 R2 K3 ["selectedByTab"]
       13 GETTABLEKS                       R4 R0 K4 ["activeTab"]
       15 SETTABLE                         R1 R3 R4
       16 RETURN                           R2 1

PROTO_25:
        0 GETTABLEKS                       R4 R0 K0 ["hidden"]
        2 GETTABLE                         R3 R4 R1
        3 JUMPIFEQKB                       R3 TRUE ; [+2]
        5 LOADB                            R2 0 +1
        6 LOADB                            R2 1
        7 RETURN                           R2 1

PROTO_26:
        0 GETTABLEKS                       R2 R0 K0 ["devices"]
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 GETTABLEKS                       R7 R6 K1 ["draftId"]
        7 JUMPIFNOTEQ                      R7 R1 ; [+2]
        9 RETURN                           R6 1
       10 FORGLOOP                         R2 2 ; [-6]
       12 LOADNIL                          R2
       13 RETURN                           R2 1

PROTO_27:
        0 GETTABLEKS                       R3 R0 K0 ["selectedByTab"]
        2 GETTABLE                         R2 R3 R1
        3 JUMPIFNOT                        R2 ; [+15]
        4 GETTABLEKS                       R4 R0 K1 ["devices"]
        6 LOADNIL                          R5
        7 LOADNIL                          R6
        8 FORGPREP                         R4
        9 GETTABLEKS                       R9 R8 K2 ["draftId"]
       11 JUMPIFNOTEQ                      R9 R2 ; [+3]
       13 MOVE                             R3 R8
       14 JUMP                             ; [+5]
       15 FORGLOOP                         R4 2 ; [-7]
       17 LOADNIL                          R3
       18 JUMP                             ; [+1]
       19 LOADNIL                          R3
       20 JUMPIFNOT                        R3 ; [+18]
       21 GETTABLEKS                       R5 R3 K3 ["info"]
       23 GETTABLEKS                       R5 R5 K4 ["isCustom"]
       25 NOT                              R4 R5
       26 JUMPIFNOT                        R4 ; [+11]
       27 GETTABLEKS                       R6 R0 K5 ["hidden"]
       29 GETTABLEKS                       R7 R3 K3 ["info"]
       31 GETTABLEKS                       R7 R7 K6 ["deviceId"]
       33 GETTABLE                         R5 R6 R7
       34 JUMPIFEQKB                       R5 TRUE ; [+2]
       36 LOADB                            R4 0 +1
       37 LOADB                            R4 1
       38 JUMPIFNOT                        R4 ; [+28]
       39 GETTABLEKS                       R4 R0 K0 ["selectedByTab"]
       41 GETUPVAL                         R7 0
       42 GETTABLEKS                       R7 R7 K7 ["getFFlagEnableDeviceSimulatorDeviceVisibility"]
       44 CALL                             R7 0 1
       45 JUMPIFNOT                        R7 ; [+7]
       46 GETUPVAL                         R6 1
       47 GETTABLEKS                       R6 R6 K8 ["visibleDevicesForTab"]
       49 MOVE                             R7 R0
       50 MOVE                             R8 R1
       51 CALL                             R6 2 1
       52 JUMP                             ; [+6]
       53 GETUPVAL                         R6 1
       54 GETTABLEKS                       R6 R6 K9 ["devicesForTab"]
       56 MOVE                             R7 R0
       57 MOVE                             R8 R1
       58 CALL                             R6 2 1
       59 GETTABLEN                        R7 R6 1
       60 JUMPIFNOT                        R7 ; [+4]
       61 GETTABLEN                        R5 R6 1
       62 GETTABLEKS                       R5 R5 K2 ["draftId"]
       64 JUMP                             ; [+1]
       65 LOADNIL                          R5
       66 SETTABLE                         R5 R4 R1
       67 RETURN                           R0 0

PROTO_28:
        0 GETTABLEKS                       R3 R0 K0 ["devices"]
        2 LOADNIL                          R4
        3 LOADNIL                          R5
        4 FORGPREP                         R3
        5 GETTABLEKS                       R8 R7 K1 ["draftId"]
        7 JUMPIFNOTEQ                      R8 R1 ; [+3]
        9 MOVE                             R2 R7
       10 JUMP                             ; [+3]
       11 FORGLOOP                         R3 2 ; [-7]
       13 LOADNIL                          R2
       14 JUMPIFNOT                        R2 ; [+5]
       15 GETTABLEKS                       R3 R2 K2 ["info"]
       17 GETTABLEKS                       R3 R3 K3 ["isCustom"]
       19 JUMPIFNOT                        R3 ; [+1]
       20 RETURN                           R0 1
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R3 R3 K4 ["tabForForm"]
       24 GETTABLEKS                       R4 R2 K2 ["info"]
       26 GETTABLEKS                       R4 R4 K5 ["deviceForm"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K8 [table.clone]
       31 MOVE                             R5 R0
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K8 [table.clone]
       35 GETTABLEKS                       R6 R0 K9 ["hidden"]
       37 CALL                             R5 1 1
       38 SETTABLEKS                       R5 R4 K9 ["hidden"]
       40 GETTABLEKS                       R5 R4 K9 ["hidden"]
       42 GETTABLEKS                       R6 R2 K2 ["info"]
       44 GETTABLEKS                       R6 R6 K10 ["deviceId"]
       46 LOADB                            R7 1
       47 SETTABLE                         R7 R5 R6
       48 JUMPIFNOT                        R3 ; [+74]
       49 GETIMPORT                        R5 K8 [table.clone]
       51 GETTABLEKS                       R6 R0 K11 ["selectedByTab"]
       53 CALL                             R5 1 1
       54 SETTABLEKS                       R5 R4 K11 ["selectedByTab"]
       56 GETTABLEKS                       R6 R4 K11 ["selectedByTab"]
       58 GETTABLE                         R5 R6 R3
       59 JUMPIFNOT                        R5 ; [+15]
       60 GETTABLEKS                       R7 R4 K0 ["devices"]
       62 LOADNIL                          R8
       63 LOADNIL                          R9
       64 FORGPREP                         R7
       65 GETTABLEKS                       R12 R11 K1 ["draftId"]
       67 JUMPIFNOTEQ                      R12 R5 ; [+3]
       69 MOVE                             R6 R11
       70 JUMP                             ; [+5]
       71 FORGLOOP                         R7 2 ; [-7]
       73 LOADNIL                          R6
       74 JUMP                             ; [+1]
       75 LOADNIL                          R6
       76 JUMPIFNOT                        R6 ; [+18]
       77 GETTABLEKS                       R8 R6 K2 ["info"]
       79 GETTABLEKS                       R8 R8 K3 ["isCustom"]
       81 NOT                              R7 R8
       82 JUMPIFNOT                        R7 ; [+11]
       83 GETTABLEKS                       R9 R4 K9 ["hidden"]
       85 GETTABLEKS                       R10 R6 K2 ["info"]
       87 GETTABLEKS                       R10 R10 K10 ["deviceId"]
       89 GETTABLE                         R8 R9 R10
       90 JUMPIFEQKB                       R8 TRUE ; [+2]
       92 LOADB                            R7 0 +1
       93 LOADB                            R7 1
       94 JUMPIFNOT                        R7 ; [+28]
       95 GETTABLEKS                       R7 R4 K11 ["selectedByTab"]
       97 GETUPVAL                         R10 1
       98 GETTABLEKS                       R10 R10 K12 ["getFFlagEnableDeviceSimulatorDeviceVisibility"]
      100 CALL                             R10 0 1
      101 JUMPIFNOT                        R10 ; [+7]
      102 GETUPVAL                         R9 0
      103 GETTABLEKS                       R9 R9 K13 ["visibleDevicesForTab"]
      105 MOVE                             R10 R4
      106 MOVE                             R11 R3
      107 CALL                             R9 2 1
      108 JUMP                             ; [+6]
      109 GETUPVAL                         R9 0
      110 GETTABLEKS                       R9 R9 K14 ["devicesForTab"]
      112 MOVE                             R10 R4
      113 MOVE                             R11 R3
      114 CALL                             R9 2 1
      115 GETTABLEN                        R10 R9 1
      116 JUMPIFNOT                        R10 ; [+4]
      117 GETTABLEN                        R8 R9 1
      118 GETTABLEKS                       R8 R8 K1 ["draftId"]
      120 JUMP                             ; [+1]
      121 LOADNIL                          R8
      122 SETTABLE                         R8 R7 R3
      123 RETURN                           R4 1

PROTO_29:
        0 GETIMPORT                        R4 K2 [table.clone]
        2 MOVE                             R5 R0
        3 CALL                             R4 1 1
        4 GETIMPORT                        R5 K2 [table.clone]
        6 GETTABLEKS                       R6 R0 K3 ["hidden"]
        8 CALL                             R5 1 1
        9 SETTABLEKS                       R5 R4 K3 ["hidden"]
       11 MOVE                             R5 R2
       12 LOADNIL                          R6
       13 LOADNIL                          R7
       14 FORGPREP                         R5
       15 GETTABLE                         R10 R1 R8
       16 JUMPIFNOT                        R10 ; [+5]
       17 GETTABLEKS                       R10 R4 K3 ["hidden"]
       19 LOADNIL                          R11
       20 SETTABLE                         R11 R10 R8
       21 JUMP                             ; [+4]
       22 GETTABLEKS                       R10 R4 K3 ["hidden"]
       24 LOADB                            R11 1
       25 SETTABLE                         R11 R10 R8
       26 FORGLOOP                         R5 1 ; [-12]
       28 MOVE                             R5 R3
       29 JUMPIF                           R5 ; [+2]
       30 GETTABLEKS                       R5 R0 K4 ["activeTab"]
       32 GETIMPORT                        R6 K2 [table.clone]
       34 GETTABLEKS                       R7 R0 K5 ["selectedByTab"]
       36 CALL                             R6 1 1
       37 SETTABLEKS                       R6 R4 K5 ["selectedByTab"]
       39 GETTABLEKS                       R7 R4 K5 ["selectedByTab"]
       41 GETTABLE                         R6 R7 R5
       42 JUMPIFNOT                        R6 ; [+15]
       43 GETTABLEKS                       R8 R4 K6 ["devices"]
       45 LOADNIL                          R9
       46 LOADNIL                          R10
       47 FORGPREP                         R8
       48 GETTABLEKS                       R13 R12 K7 ["draftId"]
       50 JUMPIFNOTEQ                      R13 R6 ; [+3]
       52 MOVE                             R7 R12
       53 JUMP                             ; [+5]
       54 FORGLOOP                         R8 2 ; [-7]
       56 LOADNIL                          R7
       57 JUMP                             ; [+1]
       58 LOADNIL                          R7
       59 JUMPIFNOT                        R7 ; [+18]
       60 GETTABLEKS                       R9 R7 K8 ["info"]
       62 GETTABLEKS                       R9 R9 K9 ["isCustom"]
       64 NOT                              R8 R9
       65 JUMPIFNOT                        R8 ; [+11]
       66 GETTABLEKS                       R10 R4 K3 ["hidden"]
       68 GETTABLEKS                       R11 R7 K8 ["info"]
       70 GETTABLEKS                       R11 R11 K10 ["deviceId"]
       72 GETTABLE                         R9 R10 R11
       73 JUMPIFEQKB                       R9 TRUE ; [+2]
       75 LOADB                            R8 0 +1
       76 LOADB                            R8 1
       77 JUMPIFNOT                        R8 ; [+28]
       78 GETTABLEKS                       R8 R4 K5 ["selectedByTab"]
       80 GETUPVAL                         R11 0
       81 GETTABLEKS                       R11 R11 K11 ["getFFlagEnableDeviceSimulatorDeviceVisibility"]
       83 CALL                             R11 0 1
       84 JUMPIFNOT                        R11 ; [+7]
       85 GETUPVAL                         R10 1
       86 GETTABLEKS                       R10 R10 K12 ["visibleDevicesForTab"]
       88 MOVE                             R11 R4
       89 MOVE                             R12 R5
       90 CALL                             R10 2 1
       91 JUMP                             ; [+6]
       92 GETUPVAL                         R10 1
       93 GETTABLEKS                       R10 R10 K13 ["devicesForTab"]
       95 MOVE                             R11 R4
       96 MOVE                             R12 R5
       97 CALL                             R10 2 1
       98 GETTABLEN                        R11 R10 1
       99 JUMPIFNOT                        R11 ; [+4]
      100 GETTABLEN                        R9 R10 1
      101 GETTABLEKS                       R9 R9 K7 ["draftId"]
      103 JUMP                             ; [+1]
      104 LOADNIL                          R9
      105 SETTABLE                         R9 R8 R5
      106 RETURN                           R4 1

PROTO_30:
        0 NEWTABLE                         R2 0 0
        2 GETTABLEKS                       R3 R0 K0 ["devices"]
        4 LOADNIL                          R4
        5 LOADNIL                          R5
        6 FORGPREP                         R3
        7 GETIMPORT                        R8 K3 [string.lower]
        9 GETTABLEKS                       R9 R7 K4 ["info"]
       11 GETTABLEKS                       R9 R9 K5 ["deviceName"]
       13 CALL                             R8 1 1
       14 LOADB                            R9 1
       15 SETTABLE                         R9 R2 R8
       16 FORGLOOP                         R3 2 ; [-10]
       18 MOVE                             R3 R1
       19 LOADNIL                          R4
       20 CALL                             R3 1 1
       21 GETIMPORT                        R5 K3 [string.lower]
       23 MOVE                             R6 R3
       24 CALL                             R5 1 1
       25 GETTABLE                         R4 R2 R5
       26 JUMPIF                           R4 ; [+1]
       27 RETURN                           R3 1
       28 LOADN                            R6 2
       29 GETTABLEKS                       R8 R0 K0 ["devices"]
       31 LENGTH                           R7 R8
       32 ADDK                             R4 R7 K6 [2]
       33 LOADN                            R5 1
       34 FORNPREP                         R4
       35 MOVE                             R7 R1
       36 MOVE                             R8 R6
       37 CALL                             R7 1 1
       38 GETIMPORT                        R9 K3 [string.lower]
       40 MOVE                             R10 R7
       41 CALL                             R9 1 1
       42 GETTABLE                         R8 R2 R9
       43 JUMPIF                           R8 ; [+1]
       44 RETURN                           R7 1
       45 LOADK                            R8 K7 ["%* %*"]
       46 MOVE                             R10 R3
       47 MOVE                             R11 R6
       48 NAMECALL                         R8 R8 K8 ["format"]
       50 CALL                             R8 3 1
       51 GETIMPORT                        R10 K3 [string.lower]
       53 MOVE                             R11 R8
       54 CALL                             R10 1 1
       55 GETTABLE                         R9 R2 R10
       56 JUMPIF                           R9 ; [+1]
       57 RETURN                           R8 1
       58 FORNLOOP                         R4
       59 GETIMPORT                        R4 K10 [error]
       61 LOADK                            R5 K11 ["Unable to generate a unique device name"]
       62 CALL                             R4 1 0
       63 RETURN                           R0 0

PROTO_31:
        0 GETIMPORT                        R2 K2 [table.clone]
        2 MOVE                             R3 R0
        3 CALL                             R2 1 1
        4 GETIMPORT                        R3 K2 [table.clone]
        6 GETTABLEKS                       R4 R0 K3 ["devices"]
        8 CALL                             R3 1 1
        9 SETTABLEKS                       R3 R2 K3 ["devices"]
       11 GETTABLEKS                       R4 R2 K3 ["devices"]
       13 FASTCALL2                        TABLE_INSERT R4 R1 ; [+4]
       15 MOVE                             R5 R1
       16 GETIMPORT                        R3 K5 [table.insert]
       18 CALL                             R3 2 0
       19 GETIMPORT                        R3 K2 [table.clone]
       21 GETTABLEKS                       R4 R0 K6 ["selectedByTab"]
       23 CALL                             R3 1 1
       24 SETTABLEKS                       R3 R2 K6 ["selectedByTab"]
       26 GETTABLEKS                       R3 R2 K6 ["selectedByTab"]
       28 GETTABLEKS                       R4 R0 K7 ["activeTab"]
       30 GETTABLEKS                       R5 R1 K8 ["draftId"]
       32 SETTABLE                         R5 R3 R4
       33 GETTABLEKS                       R4 R0 K10 ["nextDraftId"]
       35 ADDK                             R3 R4 K9 [1]
       36 SETTABLEKS                       R3 R2 K10 ["nextDraftId"]
       38 RETURN                           R2 1

PROTO_32:
        0 JUMPIFNOT                        R0 ; [+15]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K0 ["DeviceNames"]
        3 LOADK                            R4 K1 ["NewDeviceWithNumber"]
        4 DUPTABLE                         R5 K3 [{"index"}]
        5 FASTCALL1                        TOSTRING R0 ; [+3]
        6 MOVE                             R7 R0
        7 GETIMPORT                        R6 K5 [tostring]
        9 CALL                             R6 1 1
       10 SETTABLEKS                       R6 R5 K2 ["index"]
       12 NAMECALL                         R1 R1 K6 ["getText"]
       14 CALL                             R1 4 1
       15 RETURN                           R1 1
       16 GETUPVAL                         R1 0
       17 LOADK                            R3 K0 ["DeviceNames"]
       18 LOADK                            R4 K7 ["NewDevice"]
       19 NAMECALL                         R1 R1 K6 ["getText"]
       21 CALL                             R1 3 1
       22 RETURN                           R1 1

PROTO_33:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R5 R0 K0 ["activeTab"]
        3 GETTABLE                         R3 R4 R5
        4 LOADK                            R4 K1 ["new:%*"]
        5 GETTABLEKS                       R6 R0 K2 ["nextDraftId"]
        7 NAMECALL                         R4 R4 K3 ["format"]
        9 CALL                             R4 2 1
       10 DUPTABLE                         R5 K20 [{["deviceForm"], ["deviceId"], ["deviceName"], ["dpi"], ["height"], ["isCustom"] = True, ["landscapeKeyboardHeight"] = 0, ["memoryMB"] = 64000, ["platform"], ["portraitKeyboardHeight"] = 0, ["tier"] = "", ["width"]}]
       11 GETUPVAL                         R7 1
       12 GETTABLEKS                       R8 R0 K0 ["activeTab"]
       14 GETTABLE                         R6 R7 R8
       15 SETTABLEKS                       R6 R5 K4 ["deviceForm"]
       17 SETTABLEKS                       R4 R5 K5 ["deviceId"]
       19 GETUPVAL                         R6 2
       20 MOVE                             R7 R0
       21 NEWCLOSURE                       R8 P0
       22 CAPTURE                          VAL R1
       23 CALL                             R6 2 1
       24 SETTABLEKS                       R6 R5 K6 ["deviceName"]
       26 GETTABLEKS                       R6 R3 K7 ["dpi"]
       28 SETTABLEKS                       R6 R5 K7 ["dpi"]
       30 GETTABLEKS                       R6 R3 K8 ["height"]
       32 SETTABLEKS                       R6 R5 K8 ["height"]
       34 GETUPVAL                         R7 3
       35 GETTABLEKS                       R8 R0 K0 ["activeTab"]
       37 GETTABLE                         R6 R7 R8
       38 SETTABLEKS                       R6 R5 K15 ["platform"]
       40 GETTABLEKS                       R6 R3 K19 ["width"]
       42 SETTABLEKS                       R6 R5 K19 ["width"]
       44 GETUPVAL                         R6 4
       45 GETTABLEKS                       R6 R6 K21 ["getEngineFeatureDeviceSimulatorNominalMemory"]
       47 CALL                             R6 0 1
       48 JUMPIFNOT                        R6 ; [+18]
       49 GETUPVAL                         R6 5
       50 GETTABLEKS                       R6 R6 K22 ["memoryTiersFor"]
       52 MOVE                             R7 R2
       53 GETTABLEKS                       R8 R5 K15 ["platform"]
       55 CALL                             R6 2 1
       56 JUMPIFEQKNIL                     R6 ; [+10]
       58 GETUPVAL                         R7 5
       59 GETTABLEKS                       R7 R7 K23 ["defaultMemoryTier"]
       61 MOVE                             R8 R6
       62 GETTABLEKS                       R9 R5 K15 ["platform"]
       64 CALL                             R7 2 1
       65 SETTABLEKS                       R7 R5 K24 ["nominalMemoryMB"]
       67 GETUPVAL                         R6 6
       68 MOVE                             R7 R0
       69 DUPTABLE                         R8 K28 [{["draftId"], ["isNew"] = True, ["info"]}]
       70 SETTABLEKS                       R4 R8 K25 ["draftId"]
       72 SETTABLEKS                       R5 R8 K27 ["info"]
       74 CALL                             R6 2 1
       75 RETURN                           R6 1

PROTO_34:
        0 JUMPIFNOT                        R0 ; [+22]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K0 ["DeviceNames"]
        3 LOADK                            R4 K1 ["CopyWithNumber"]
        4 DUPTABLE                         R5 K4 [{"deviceName", "index"}]
        5 GETUPVAL                         R6 1
        6 GETTABLEKS                       R6 R6 K5 ["info"]
        8 GETTABLEKS                       R6 R6 K2 ["deviceName"]
       10 SETTABLEKS                       R6 R5 K2 ["deviceName"]
       12 FASTCALL1                        TOSTRING R0 ; [+3]
       13 MOVE                             R7 R0
       14 GETIMPORT                        R6 K7 [tostring]
       16 CALL                             R6 1 1
       17 SETTABLEKS                       R6 R5 K3 ["index"]
       19 NAMECALL                         R1 R1 K8 ["getText"]
       21 CALL                             R1 4 1
       22 RETURN                           R1 1
       23 GETUPVAL                         R1 0
       24 LOADK                            R3 K0 ["DeviceNames"]
       25 LOADK                            R4 K9 ["Copy"]
       26 DUPTABLE                         R5 K10 [{"deviceName"}]
       27 GETUPVAL                         R6 1
       28 GETTABLEKS                       R6 R6 K5 ["info"]
       30 GETTABLEKS                       R6 R6 K2 ["deviceName"]
       32 SETTABLEKS                       R6 R5 K2 ["deviceName"]
       34 NAMECALL                         R1 R1 K8 ["getText"]
       36 CALL                             R1 4 1
       37 RETURN                           R1 1

PROTO_35:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getSelected"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 JUMPIFNOT                        R2 ; [+5]
        6 GETTABLEKS                       R3 R2 K1 ["info"]
        8 GETTABLEKS                       R3 R3 K2 ["isCustom"]
       10 JUMPIFNOT                        R3 ; [+1]
       11 RETURN                           R0 1
       12 DUPTABLE                         R3 K5 [{"info", "draftId", "isNew"}]
       13 GETTABLEKS                       R5 R2 K1 ["info"]
       15 GETIMPORT                        R6 K8 [table.clone]
       17 MOVE                             R7 R5
       18 CALL                             R6 1 1
       19 MOVE                             R4 R6
       20 SETTABLEKS                       R4 R3 K1 ["info"]
       22 GETTABLEKS                       R4 R2 K3 ["draftId"]
       24 SETTABLEKS                       R4 R3 K3 ["draftId"]
       26 GETTABLEKS                       R4 R2 K4 ["isNew"]
       28 SETTABLEKS                       R4 R3 K4 ["isNew"]
       30 LOADK                            R4 K9 ["new:%*"]
       31 GETTABLEKS                       R6 R0 K10 ["nextDraftId"]
       33 NAMECALL                         R4 R4 K11 ["format"]
       35 CALL                             R4 2 1
       36 SETTABLEKS                       R4 R3 K3 ["draftId"]
       38 LOADB                            R4 1
       39 SETTABLEKS                       R4 R3 K4 ["isNew"]
       41 GETTABLEKS                       R4 R3 K1 ["info"]
       43 GETTABLEKS                       R5 R3 K3 ["draftId"]
       45 SETTABLEKS                       R5 R4 K12 ["deviceId"]
       47 GETTABLEKS                       R4 R3 K1 ["info"]
       49 GETUPVAL                         R5 1
       50 MOVE                             R6 R0
       51 NEWCLOSURE                       R7 P0
       52 CAPTURE                          VAL R1
       53 CAPTURE                          VAL R2
       54 CALL                             R5 2 1
       55 SETTABLEKS                       R5 R4 K13 ["deviceName"]
       57 GETTABLEKS                       R4 R3 K1 ["info"]
       59 LOADB                            R5 1
       60 SETTABLEKS                       R5 R4 K2 ["isCustom"]
       62 GETUPVAL                         R4 2
       63 MOVE                             R5 R0
       64 MOVE                             R6 R3
       65 CALL                             R4 2 1
       66 RETURN                           R4 1

PROTO_36:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getSelected"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+5]
        6 GETTABLEKS                       R2 R1 K1 ["info"]
        8 GETTABLEKS                       R2 R2 K2 ["isCustom"]
       10 JUMPIF                           R2 ; [+1]
       11 RETURN                           R0 1
       12 GETIMPORT                        R2 K5 [table.clone]
       14 MOVE                             R3 R0
       15 CALL                             R2 1 1
       16 NEWTABLE                         R3 0 0
       18 SETTABLEKS                       R3 R2 K6 ["devices"]
       20 GETTABLEKS                       R3 R0 K6 ["devices"]
       22 LOADNIL                          R4
       23 LOADNIL                          R5
       24 FORGPREP                         R3
       25 GETTABLEKS                       R8 R7 K7 ["draftId"]
       27 GETTABLEKS                       R9 R1 K7 ["draftId"]
       29 JUMPIFEQ                         R8 R9 ; [+9]
       31 GETTABLEKS                       R9 R2 K6 ["devices"]
       33 FASTCALL2                        TABLE_INSERT R9 R7 ; [+4]
       35 MOVE                             R10 R7
       36 GETIMPORT                        R8 K9 [table.insert]
       38 CALL                             R8 2 0
       39 FORGLOOP                         R3 2 ; [-15]
       41 GETTABLEKS                       R3 R1 K10 ["isNew"]
       43 JUMPIF                           R3 ; [+15]
       44 GETIMPORT                        R3 K5 [table.clone]
       46 GETTABLEKS                       R4 R0 K11 ["removals"]
       48 CALL                             R3 1 1
       49 SETTABLEKS                       R3 R2 K11 ["removals"]
       51 GETTABLEKS                       R3 R2 K11 ["removals"]
       53 GETTABLEKS                       R4 R1 K1 ["info"]
       55 GETTABLEKS                       R4 R4 K12 ["deviceId"]
       57 LOADB                            R5 1
       58 SETTABLE                         R5 R3 R4
       59 GETIMPORT                        R3 K5 [table.clone]
       61 GETTABLEKS                       R4 R0 K13 ["selectedByTab"]
       63 CALL                             R3 1 1
       64 SETTABLEKS                       R3 R2 K13 ["selectedByTab"]
       66 GETTABLEKS                       R3 R2 K13 ["selectedByTab"]
       68 GETTABLEKS                       R4 R0 K14 ["activeTab"]
       70 GETTABLEKS                       R6 R0 K14 ["activeTab"]
       72 GETUPVAL                         R8 1
       73 GETTABLEKS                       R8 R8 K15 ["getFFlagEnableDeviceSimulatorDeviceVisibility"]
       75 CALL                             R8 0 1
       76 JUMPIFNOT                        R8 ; [+7]
       77 GETUPVAL                         R7 0
       78 GETTABLEKS                       R7 R7 K16 ["visibleDevicesForTab"]
       80 MOVE                             R8 R2
       81 MOVE                             R9 R6
       82 CALL                             R7 2 1
       83 JUMP                             ; [+6]
       84 GETUPVAL                         R7 0
       85 GETTABLEKS                       R7 R7 K17 ["devicesForTab"]
       87 MOVE                             R8 R2
       88 MOVE                             R9 R6
       89 CALL                             R7 2 1
       90 GETTABLEN                        R8 R7 1
       91 JUMPIFNOT                        R8 ; [+4]
       92 GETTABLEN                        R5 R7 1
       93 GETTABLEKS                       R5 R5 K7 ["draftId"]
       95 JUMP                             ; [+1]
       96 LOADNIL                          R5
       97 SETTABLE                         R5 R3 R4
       98 RETURN                           R2 1

PROTO_37:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getSelected"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 JUMPIFNOT                        R2 ; [+5]
        6 GETTABLEKS                       R3 R2 K1 ["info"]
        8 GETTABLEKS                       R3 R3 K2 ["isCustom"]
       10 JUMPIF                           R3 ; [+1]
       11 RETURN                           R0 1
       12 GETIMPORT                        R3 K5 [table.clone]
       14 MOVE                             R4 R0
       15 CALL                             R3 1 1
       16 GETIMPORT                        R4 K5 [table.clone]
       18 GETTABLEKS                       R5 R0 K6 ["devices"]
       20 CALL                             R4 1 1
       21 SETTABLEKS                       R4 R3 K6 ["devices"]
       23 GETTABLEKS                       R4 R3 K6 ["devices"]
       25 LOADNIL                          R5
       26 LOADNIL                          R6
       27 FORGPREP                         R4
       28 GETTABLEKS                       R9 R8 K7 ["draftId"]
       30 GETTABLEKS                       R10 R2 K7 ["draftId"]
       32 JUMPIFNOTEQ                      R9 R10 ; [+27]
       34 DUPTABLE                         R9 K9 [{"info", "draftId", "isNew"}]
       35 GETTABLEKS                       R11 R8 K1 ["info"]
       37 GETIMPORT                        R12 K5 [table.clone]
       39 MOVE                             R13 R11
       40 CALL                             R12 1 1
       41 MOVE                             R10 R12
       42 SETTABLEKS                       R10 R9 K1 ["info"]
       44 GETTABLEKS                       R10 R8 K7 ["draftId"]
       46 SETTABLEKS                       R10 R9 K7 ["draftId"]
       48 GETTABLEKS                       R10 R8 K8 ["isNew"]
       50 SETTABLEKS                       R10 R9 K8 ["isNew"]
       52 MOVE                             R10 R1
       53 GETTABLEKS                       R11 R9 K1 ["info"]
       55 CALL                             R10 1 0
       56 GETTABLEKS                       R10 R3 K6 ["devices"]
       58 SETTABLE                         R9 R10 R7
       59 RETURN                           R3 1
       60 FORGLOOP                         R4 2 ; [-33]
       62 RETURN                           R3 1

PROTO_38:
        0 GETTABLEKS                       R2 R0 K0 ["platform"]
        2 GETUPVAL                         R3 0
        3 JUMPIFNOTEQ                      R2 R3 ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K1 ["memoryTiersFor"]
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R4 R0 K0 ["platform"]
       13 CALL                             R2 2 1
       14 GETUPVAL                         R3 0
       15 SETTABLEKS                       R3 R0 K0 ["platform"]
       17 GETUPVAL                         R3 3
       18 GETTABLEKS                       R3 R3 K2 ["getEngineFeatureDeviceSimulatorNominalMemory"]
       20 CALL                             R3 0 1
       21 JUMPIF                           R3 ; [+1]
       22 RETURN                           R0 0
       23 GETUPVAL                         R3 1
       24 GETTABLEKS                       R3 R3 K3 ["nominalMemoryOf"]
       26 MOVE                             R4 R0
       27 CALL                             R3 1 1
       28 JUMPIF                           R1 ; [+1]
       29 RETURN                           R0 0
       30 GETUPVAL                         R4 1
       31 GETTABLEKS                       R4 R4 K1 ["memoryTiersFor"]
       33 GETUPVAL                         R5 2
       34 GETUPVAL                         R6 0
       35 CALL                             R4 2 1
       36 JUMPIFNOTEQKNIL                  R3 ; [+22]
       38 JUMPIFEQKNIL                     R4 ; [+19]
       40 JUMPIFNOTEQKNIL                  R2 ; [+17]
       42 GETTABLEKS                       R6 R0 K4 ["memoryMB"]
       44 GETUPVAL                         R8 1
       45 GETTABLEKS                       R8 R8 K6 ["MIN_CUSTOM_MEMORY_GB"]
       47 MULK                             R7 R8 K5 [1024]
       48 GETUPVAL                         R9 1
       49 GETTABLEKS                       R9 R9 K7 ["MAX_CUSTOM_MEMORY_GB"]
       51 MULK                             R8 R9 K5 [1024]
       52 FASTCALL                         MATH_CLAMP ; [+2]
       53 GETIMPORT                        R5 K10 [math.clamp]
       55 CALL                             R5 3 1
       56 SETTABLEKS                       R5 R0 K11 ["nominalMemoryMB"]
       58 RETURN                           R0 0
       59 GETUPVAL                         R5 2
       60 JUMPIFEQKNIL                     R5 ; [+9]
       62 JUMPIFNOTEQKNIL                  R4 ; [+7]
       64 SETTABLEKS                       R3 R0 K4 ["memoryMB"]
       66 LOADNIL                          R5
       67 SETTABLEKS                       R5 R0 K11 ["nominalMemoryMB"]
       69 RETURN                           R0 0
       70 JUMPIFEQKNIL                     R4 ; [+10]
       72 JUMPIFEQKNIL                     R2 ; [+8]
       74 GETIMPORT                        R5 K14 [table.find]
       76 MOVE                             R6 R2
       77 MOVE                             R7 R3
       78 CALL                             R5 2 1
       79 JUMPIFNOTEQKNIL                  R5 ; [+2]
       81 RETURN                           R0 0
       82 GETIMPORT                        R5 K14 [table.find]
       84 MOVE                             R6 R4
       85 MOVE                             R7 R3
       86 CALL                             R5 2 1
       87 JUMPIFNOTEQKNIL                  R5 ; [+9]
       89 GETUPVAL                         R5 1
       90 GETTABLEKS                       R5 R5 K15 ["nearestMemoryTier"]
       92 MOVE                             R6 R4
       93 MOVE                             R7 R3
       94 CALL                             R5 2 1
       95 SETTABLEKS                       R5 R0 K11 ["nominalMemoryMB"]
       97 RETURN                           R0 0

PROTO_39:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["updateSelected"]
        3 MOVE                             R4 R0
        4 NEWCLOSURE                       R5 P0
        5 CAPTURE                          VAL R1
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          VAL R2
        8 CAPTURE                          UPVAL U1
        9 CALL                             R3 2 -1
       10 RETURN                           R3 -1

PROTO_40:
        0 DIVK                             R4 R0 K1 [1024]
        1 MULK                             R3 R4 K0 [10]
        2 FASTCALL1                        MATH_ROUND R3 ; [+2]
        3 GETIMPORT                        R2 K4 [math.round]
        5 CALL                             R2 1 1
        6 DIVK                             R1 R2 K0 [10]
        7 RETURN                           R1 1

PROTO_41:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["nominalMemoryOf"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFEQKNIL                     R1 ; [+10]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K1 ["customMemoryGigabytes"]
       10 MOVE                             R3 R1
       11 CALL                             R2 1 1
       12 GETUPVAL                         R3 1
       13 JUMPIFNOTEQ                      R2 R3 ; [+2]
       15 RETURN                           R0 0
       16 GETUPVAL                         R2 2
       17 GETTABLEKS                       R2 R2 K2 ["getEngineFeatureDeviceSimulatorNominalMemory"]
       19 CALL                             R2 0 1
       20 JUMPIFNOT                        R2 ; [+8]
       21 GETUPVAL                         R4 1
       22 MULK                             R3 R4 K3 [1024]
       23 FASTCALL1                        MATH_ROUND R3 ; [+2]
       24 GETIMPORT                        R2 K6 [math.round]
       26 CALL                             R2 1 1
       27 SETTABLEKS                       R2 R0 K7 ["nominalMemoryMB"]
       29 RETURN                           R0 0

PROTO_42:
        0 JUMPIFEQ                         R1 R1 ; [+2]
        2 RETURN                           R0 1
        3 MULK                             R5 R1 K0 [10]
        4 FASTCALL1                        MATH_ROUND R5 ; [+2]
        5 GETIMPORT                        R4 K3 [math.round]
        7 CALL                             R4 1 1
        8 DIVK                             R3 R4 K0 [10]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K4 ["MIN_CUSTOM_MEMORY_GB"]
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R5 R5 K5 ["MAX_CUSTOM_MEMORY_GB"]
       15 FASTCALL                         MATH_CLAMP ; [+2]
       16 GETIMPORT                        R2 K7 [math.clamp]
       18 CALL                             R2 3 1
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R3 R3 K8 ["updateSelected"]
       22 MOVE                             R4 R0
       23 NEWCLOSURE                       R5 P0
       24 CAPTURE                          UPVAL U0
       25 CAPTURE                          VAL R2
       26 CAPTURE                          UPVAL U1
       27 CALL                             R3 2 -1
       28 RETURN                           R3 -1

PROTO_43:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["customMemoryGigabytes"]
        3 GETTABLEKS                       R2 R0 K1 ["memoryMB"]
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 1
        7 JUMPIFNOTEQ                      R1 R2 ; [+2]
        9 RETURN                           R0 0
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K2 ["setFreeformMemory"]
       13 MOVE                             R2 R0
       14 GETUPVAL                         R5 1
       15 MULK                             R4 R5 K3 [1024]
       16 FASTCALL1                        MATH_ROUND R4 ; [+2]
       17 GETIMPORT                        R3 K6 [math.round]
       19 CALL                             R3 1 1
       20 CALL                             R1 2 0
       21 RETURN                           R0 0

PROTO_44:
        0 JUMPIFEQ                         R1 R1 ; [+2]
        2 RETURN                           R0 1
        3 MULK                             R5 R1 K0 [10]
        4 FASTCALL1                        MATH_ROUND R5 ; [+2]
        5 GETIMPORT                        R4 K3 [math.round]
        7 CALL                             R4 1 1
        8 DIVK                             R3 R4 K0 [10]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K4 ["MIN_CUSTOM_MEMORY_GB"]
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R5 R5 K5 ["MAX_CUSTOM_MEMORY_GB"]
       15 FASTCALL                         MATH_CLAMP ; [+2]
       16 GETIMPORT                        R2 K7 [math.clamp]
       18 CALL                             R2 3 1
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R3 R3 K8 ["updateSelected"]
       22 MOVE                             R4 R0
       23 NEWCLOSURE                       R5 P0
       24 CAPTURE                          UPVAL U0
       25 CAPTURE                          VAL R2
       26 CALL                             R3 2 -1
       27 RETURN                           R3 -1

PROTO_45:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getEngineFeatureDeviceSimulatorNominalMemory"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+3]
        5 GETUPVAL                         R1 1
        6 SETTABLEKS                       R1 R0 K1 ["nominalMemoryMB"]
        8 RETURN                           R0 0

PROTO_46:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["updateSelected"]
        3 MOVE                             R3 R0
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R1
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_47:
        0 GETTABLEKS                       R2 R0 K0 ["memoryMB"]
        2 JUMPIFNOTEQ                      R2 R1 ; [+2]
        4 RETURN                           R0 0
        5 SETTABLEKS                       R1 R0 K0 ["memoryMB"]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K1 ["getEngineFeatureDeviceSimulatorNominalMemory"]
       10 CALL                             R2 0 1
       11 JUMPIFNOT                        R2 ; [+3]
       12 LOADNIL                          R2
       13 SETTABLEKS                       R2 R0 K2 ["nominalMemoryMB"]
       15 RETURN                           R0 0

PROTO_48:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getEngineFeatureDeviceSimulatorNominalMemory"]
        3 CALL                             R2 0 1
        4 JUMPIFNOT                        R2 ; [+14]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["nominalMemoryOf"]
        8 MOVE                             R3 R0
        9 CALL                             R2 1 1
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K1 ["nominalMemoryOf"]
       13 MOVE                             R4 R1
       14 CALL                             R3 1 1
       15 JUMPIFEQ                         R2 R3 ; [+3]
       17 LOADB                            R2 0
       18 RETURN                           R2 1
       19 LOADB                            R2 0
       20 GETTABLEKS                       R3 R0 K2 ["deviceForm"]
       22 GETTABLEKS                       R4 R1 K2 ["deviceForm"]
       24 JUMPIFNOTEQ                      R3 R4 ; [+79]
       26 LOADB                            R2 0
       27 GETTABLEKS                       R3 R0 K3 ["deviceId"]
       29 GETTABLEKS                       R4 R1 K3 ["deviceId"]
       31 JUMPIFNOTEQ                      R3 R4 ; [+72]
       33 LOADB                            R2 0
       34 GETTABLEKS                       R3 R0 K4 ["deviceName"]
       36 GETTABLEKS                       R4 R1 K4 ["deviceName"]
       38 JUMPIFNOTEQ                      R3 R4 ; [+65]
       40 LOADB                            R2 0
       41 GETTABLEKS                       R3 R0 K5 ["dpi"]
       43 GETTABLEKS                       R4 R1 K5 ["dpi"]
       45 JUMPIFNOTEQ                      R3 R4 ; [+58]
       47 LOADB                            R2 0
       48 GETTABLEKS                       R3 R0 K6 ["height"]
       50 GETTABLEKS                       R4 R1 K6 ["height"]
       52 JUMPIFNOTEQ                      R3 R4 ; [+51]
       54 LOADB                            R2 0
       55 GETTABLEKS                       R3 R0 K7 ["isCustom"]
       57 GETTABLEKS                       R4 R1 K7 ["isCustom"]
       59 JUMPIFNOTEQ                      R3 R4 ; [+44]
       61 LOADB                            R2 0
       62 GETTABLEKS                       R3 R0 K8 ["landscapeKeyboardHeight"]
       64 GETTABLEKS                       R4 R1 K8 ["landscapeKeyboardHeight"]
       66 JUMPIFNOTEQ                      R3 R4 ; [+37]
       68 LOADB                            R2 0
       69 GETTABLEKS                       R3 R0 K9 ["memoryMB"]
       71 GETTABLEKS                       R4 R1 K9 ["memoryMB"]
       73 JUMPIFNOTEQ                      R3 R4 ; [+30]
       75 LOADB                            R2 0
       76 GETTABLEKS                       R3 R0 K10 ["platform"]
       78 GETTABLEKS                       R4 R1 K10 ["platform"]
       80 JUMPIFNOTEQ                      R3 R4 ; [+23]
       82 LOADB                            R2 0
       83 GETTABLEKS                       R3 R0 K11 ["portraitKeyboardHeight"]
       85 GETTABLEKS                       R4 R1 K11 ["portraitKeyboardHeight"]
       87 JUMPIFNOTEQ                      R3 R4 ; [+16]
       89 LOADB                            R2 0
       90 GETTABLEKS                       R3 R0 K12 ["tier"]
       92 GETTABLEKS                       R4 R1 K12 ["tier"]
       94 JUMPIFNOTEQ                      R3 R4 ; [+9]
       96 GETTABLEKS                       R3 R0 K13 ["width"]
       98 GETTABLEKS                       R4 R1 K13 ["width"]
      100 JUMPIFEQ                         R3 R4 ; [+2]
      102 LOADB                            R2 0 +1
      103 LOADB                            R2 1
      104 RETURN                           R2 1

PROTO_49:
        0 MOVE                             R2 R0
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 GETTABLE                         R7 R1 R5
        5 JUMPIF                           R7 ; [+2]
        6 LOADB                            R7 0
        7 RETURN                           R7 1
        8 FORGLOOP                         R2 1 ; [-5]
       10 MOVE                             R2 R1
       11 LOADNIL                          R3
       12 LOADNIL                          R4
       13 FORGPREP                         R2
       14 GETTABLE                         R7 R0 R5
       15 JUMPIF                           R7 ; [+2]
       16 LOADB                            R7 0
       17 RETURN                           R7 1
       18 FORGLOOP                         R2 1 ; [-5]
       20 LOADB                            R2 1
       21 RETURN                           R2 1

PROTO_50:
        0 GETIMPORT                        R1 K1 [next]
        2 GETTABLEKS                       R2 R0 K2 ["removals"]
        4 CALL                             R1 1 1
        5 JUMPIFEQKNIL                     R1 ; [+3]
        7 LOADB                            R1 1
        8 RETURN                           R1 1
        9 GETTABLEKS                       R2 R0 K3 ["hidden"]
       11 GETTABLEKS                       R3 R0 K4 ["originalHidden"]
       13 MOVE                             R4 R2
       14 LOADNIL                          R5
       15 LOADNIL                          R6
       16 FORGPREP                         R4
       17 GETTABLE                         R9 R3 R7
       18 JUMPIF                           R9 ; [+2]
       19 LOADB                            R1 0
       20 JUMP                             ; [+13]
       21 FORGLOOP                         R4 1 ; [-5]
       23 MOVE                             R4 R3
       24 LOADNIL                          R5
       25 LOADNIL                          R6
       26 FORGPREP                         R4
       27 GETTABLE                         R9 R2 R7
       28 JUMPIF                           R9 ; [+2]
       29 LOADB                            R1 0
       30 JUMP                             ; [+3]
       31 FORGLOOP                         R4 1 ; [-5]
       33 LOADB                            R1 1
       34 JUMPIF                           R1 ; [+2]
       35 LOADB                            R1 1
       36 RETURN                           R1 1
       37 GETTABLEKS                       R1 R0 K5 ["devices"]
       39 LOADNIL                          R2
       40 LOADNIL                          R3
       41 FORGPREP                         R1
       42 GETTABLEKS                       R6 R5 K6 ["info"]
       44 GETTABLEKS                       R6 R6 K7 ["isCustom"]
       46 JUMPIFNOT                        R6 ; [+19]
       47 GETTABLEKS                       R6 R5 K8 ["isNew"]
       49 JUMPIFNOT                        R6 ; [+2]
       50 LOADB                            R6 1
       51 RETURN                           R6 1
       52 GETTABLEKS                       R7 R0 K9 ["originals"]
       54 GETTABLEKS                       R8 R5 K10 ["draftId"]
       56 GETTABLE                         R6 R7 R8
       57 JUMPIFNOT                        R6 ; [+8]
       58 GETUPVAL                         R7 0
       59 GETTABLEKS                       R8 R5 K6 ["info"]
       61 MOVE                             R9 R6
       62 CALL                             R7 2 1
       63 JUMPIF                           R7 ; [+2]
       64 LOADB                            R7 1
       65 RETURN                           R7 1
       66 FORGLOOP                         R1 2 ; [-25]
       68 LOADB                            R1 0
       69 RETURN                           R1 1

PROTO_51:
        0 GETUPVAL                         R4 0
        1 GETTABLE                         R3 R4 R0
        2 JUMPIFNOTEQKNIL                  R3 ; [+5]
        4 GETUPVAL                         R3 0
        5 NEWTABLE                         R4 0 0
        7 SETTABLE                         R4 R3 R0
        8 GETUPVAL                         R4 0
        9 GETTABLE                         R3 R4 R0
       10 SETTABLE                         R2 R3 R1
       11 RETURN                           R0 0

PROTO_52:
        0 NEWTABLE                         R2 0 0
        2 NEWTABLE                         R3 0 0
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          VAL R2
        6 GETTABLEKS                       R5 R0 K0 ["devices"]
        8 LOADNIL                          R6
        9 LOADNIL                          R7
       10 FORGPREP                         R5
       11 GETTABLEKS                       R10 R9 K1 ["info"]
       13 GETIMPORT                        R11 K4 [string.lower]
       15 GETIMPORT                        R12 K6 [string.gsub]
       17 GETTABLEKS                       R13 R10 K7 ["deviceName"]
       19 LOADK                            R14 K8 ["^%s*(.-)%s*$"]
       20 LOADK                            R15 K9 ["%1"]
       21 CALL                             R12 3 1
       22 CALL                             R11 1 1
       23 JUMPIFNOTEQKS                    R11 K10 [""] ; [+18]
       25 GETTABLEKS                       R12 R9 K11 ["draftId"]
       27 LOADK                            R15 K12 ["Validation"]
       28 LOADK                            R16 K13 ["NameRequired"]
       29 NAMECALL                         R13 R1 K14 ["getText"]
       31 CALL                             R13 3 1
       32 GETTABLE                         R14 R2 R12
       33 JUMPIFNOTEQKNIL                  R14 ; [+4]
       35 NEWTABLE                         R14 0 0
       37 SETTABLE                         R14 R2 R12
       38 GETTABLE                         R14 R2 R12
       39 SETTABLEKS                       R13 R14 K7 ["deviceName"]
       41 JUMP                             ; [+82]
       42 GETTABLEKS                       R13 R10 K7 ["deviceName"]
       44 LENGTH                           R12 R13
       45 LOADN                            R13 200
       46 JUMPIFNOTLT                      R13 R12 ; [+26]
       48 GETTABLEKS                       R12 R9 K11 ["draftId"]
       50 LOADK                            R15 K12 ["Validation"]
       51 LOADK                            R16 K15 ["NameTooLong"]
       52 DUPTABLE                         R17 K17 [{"maxLength"}]
       53 LOADN                            R19 200
       54 FASTCALL1                        TOSTRING R19 ; [+2]
       55 GETIMPORT                        R18 K19 [tostring]
       57 CALL                             R18 1 1
       58 SETTABLEKS                       R18 R17 K16 ["maxLength"]
       60 NAMECALL                         R13 R1 K14 ["getText"]
       62 CALL                             R13 4 1
       63 GETTABLE                         R14 R2 R12
       64 JUMPIFNOTEQKNIL                  R14 ; [+4]
       66 NEWTABLE                         R14 0 0
       68 SETTABLE                         R14 R2 R12
       69 GETTABLE                         R14 R2 R12
       70 SETTABLEKS                       R13 R14 K7 ["deviceName"]
       72 JUMP                             ; [+51]
       73 JUMPIFNOTEQKS                    R11 K20 ["default"] ; [+18]
       75 GETTABLEKS                       R12 R9 K11 ["draftId"]
       77 LOADK                            R15 K12 ["Validation"]
       78 LOADK                            R16 K21 ["NameReserved"]
       79 NAMECALL                         R13 R1 K14 ["getText"]
       81 CALL                             R13 3 1
       82 GETTABLE                         R14 R2 R12
       83 JUMPIFNOTEQKNIL                  R14 ; [+4]
       85 NEWTABLE                         R14 0 0
       87 SETTABLE                         R14 R2 R12
       88 GETTABLE                         R14 R2 R12
       89 SETTABLEKS                       R13 R14 K7 ["deviceName"]
       91 JUMP                             ; [+32]
       92 GETTABLE                         R12 R3 R11
       93 JUMPIFNOT                        R12 ; [+27]
       94 LOADK                            R14 K12 ["Validation"]
       95 LOADK                            R15 K22 ["NameNotUnique"]
       96 NAMECALL                         R12 R1 K14 ["getText"]
       98 CALL                             R12 3 1
       99 GETTABLEKS                       R13 R9 K11 ["draftId"]
      101 GETTABLE                         R14 R2 R13
      102 JUMPIFNOTEQKNIL                  R14 ; [+4]
      104 NEWTABLE                         R14 0 0
      106 SETTABLE                         R14 R2 R13
      107 GETTABLE                         R14 R2 R13
      108 SETTABLEKS                       R12 R14 K7 ["deviceName"]
      110 GETTABLE                         R13 R3 R11
      111 GETTABLE                         R14 R2 R13
      112 JUMPIFNOTEQKNIL                  R14 ; [+4]
      114 NEWTABLE                         R14 0 0
      116 SETTABLE                         R14 R2 R13
      117 GETTABLE                         R14 R2 R13
      118 SETTABLEKS                       R12 R14 K7 ["deviceName"]
      120 JUMP                             ; [+3]
      121 GETTABLEKS                       R12 R9 K11 ["draftId"]
      123 SETTABLE                         R12 R3 R11
      124 GETTABLEKS                       R12 R10 K23 ["isCustom"]
      126 JUMPIFNOT                        R12 ; [+278]
      127 GETTABLEKS                       R12 R10 K24 ["width"]
      129 LOADN                            R13 1
      130 JUMPIFLT                         R12 R13 ; [+6]
      132 GETTABLEKS                       R12 R10 K24 ["width"]
      134 LOADN                            R13 7680
      135 JUMPIFNOTLT                      R13 R12 ; [+32]
      137 GETTABLEKS                       R12 R9 K11 ["draftId"]
      139 LOADK                            R15 K12 ["Validation"]
      140 LOADK                            R16 K25 ["WidthRange"]
      141 DUPTABLE                         R17 K28 [{"minWidth", "maxWidth"}]
      142 LOADN                            R19 1
      143 FASTCALL1                        TOSTRING R19 ; [+2]
      144 GETIMPORT                        R18 K19 [tostring]
      146 CALL                             R18 1 1
      147 SETTABLEKS                       R18 R17 K26 ["minWidth"]
      149 LOADN                            R19 7680
      150 FASTCALL1                        TOSTRING R19 ; [+2]
      151 GETIMPORT                        R18 K19 [tostring]
      153 CALL                             R18 1 1
      154 SETTABLEKS                       R18 R17 K27 ["maxWidth"]
      156 NAMECALL                         R13 R1 K14 ["getText"]
      158 CALL                             R13 4 1
      159 GETTABLE                         R14 R2 R12
      160 JUMPIFNOTEQKNIL                  R14 ; [+4]
      162 NEWTABLE                         R14 0 0
      164 SETTABLE                         R14 R2 R12
      165 GETTABLE                         R14 R2 R12
      166 SETTABLEKS                       R13 R14 K24 ["width"]
      168 GETTABLEKS                       R12 R10 K29 ["height"]
      170 LOADN                            R13 1
      171 JUMPIFLT                         R12 R13 ; [+6]
      173 GETTABLEKS                       R12 R10 K29 ["height"]
      175 LOADN                            R13 4320
      176 JUMPIFNOTLT                      R13 R12 ; [+32]
      178 GETTABLEKS                       R12 R9 K11 ["draftId"]
      180 LOADK                            R15 K12 ["Validation"]
      181 LOADK                            R16 K30 ["HeightRange"]
      182 DUPTABLE                         R17 K33 [{"minHeight", "maxHeight"}]
      183 LOADN                            R19 1
      184 FASTCALL1                        TOSTRING R19 ; [+2]
      185 GETIMPORT                        R18 K19 [tostring]
      187 CALL                             R18 1 1
      188 SETTABLEKS                       R18 R17 K31 ["minHeight"]
      190 LOADN                            R19 4320
      191 FASTCALL1                        TOSTRING R19 ; [+2]
      192 GETIMPORT                        R18 K19 [tostring]
      194 CALL                             R18 1 1
      195 SETTABLEKS                       R18 R17 K32 ["maxHeight"]
      197 NAMECALL                         R13 R1 K14 ["getText"]
      199 CALL                             R13 4 1
      200 GETTABLE                         R14 R2 R12
      201 JUMPIFNOTEQKNIL                  R14 ; [+4]
      203 NEWTABLE                         R14 0 0
      205 SETTABLE                         R14 R2 R12
      206 GETTABLE                         R14 R2 R12
      207 SETTABLEKS                       R13 R14 K29 ["height"]
      209 GETTABLEKS                       R12 R10 K34 ["dpi"]
      211 LOADN                            R13 72
      212 JUMPIFLT                         R12 R13 ; [+6]
      214 GETTABLEKS                       R12 R10 K34 ["dpi"]
      216 LOADN                            R13 10000
      217 JUMPIFNOTLT                      R13 R12 ; [+32]
      219 GETTABLEKS                       R12 R9 K11 ["draftId"]
      221 LOADK                            R15 K12 ["Validation"]
      222 LOADK                            R16 K35 ["PixelDensityRange"]
      223 DUPTABLE                         R17 K38 [{"minDensity", "maxDensity"}]
      224 LOADN                            R19 72
      225 FASTCALL1                        TOSTRING R19 ; [+2]
      226 GETIMPORT                        R18 K19 [tostring]
      228 CALL                             R18 1 1
      229 SETTABLEKS                       R18 R17 K36 ["minDensity"]
      231 LOADN                            R19 10000
      232 FASTCALL1                        TOSTRING R19 ; [+2]
      233 GETIMPORT                        R18 K19 [tostring]
      235 CALL                             R18 1 1
      236 SETTABLEKS                       R18 R17 K37 ["maxDensity"]
      238 NAMECALL                         R13 R1 K14 ["getText"]
      240 CALL                             R13 4 1
      241 GETTABLE                         R14 R2 R12
      242 JUMPIFNOTEQKNIL                  R14 ; [+4]
      244 NEWTABLE                         R14 0 0
      246 SETTABLE                         R14 R2 R12
      247 GETTABLE                         R14 R2 R12
      248 SETTABLEKS                       R13 R14 K34 ["dpi"]
      250 GETTABLEKS                       R12 R10 K39 ["portraitKeyboardHeight"]
      252 LOADN                            R13 0
      253 JUMPIFLT                         R12 R13 ; [+6]
      255 GETTABLEKS                       R12 R10 K39 ["portraitKeyboardHeight"]
      257 LOADN                            R13 4320
      258 JUMPIFNOTLT                      R13 R12 ; [+32]
      260 GETTABLEKS                       R12 R9 K11 ["draftId"]
      262 LOADK                            R15 K12 ["Validation"]
      263 LOADK                            R16 K40 ["PortraitKeyboardHeightRange"]
      264 DUPTABLE                         R17 K33 [{"minHeight", "maxHeight"}]
      265 LOADN                            R19 0
      266 FASTCALL1                        TOSTRING R19 ; [+2]
      267 GETIMPORT                        R18 K19 [tostring]
      269 CALL                             R18 1 1
      270 SETTABLEKS                       R18 R17 K31 ["minHeight"]
      272 LOADN                            R19 4320
      273 FASTCALL1                        TOSTRING R19 ; [+2]
      274 GETIMPORT                        R18 K19 [tostring]
      276 CALL                             R18 1 1
      277 SETTABLEKS                       R18 R17 K32 ["maxHeight"]
      279 NAMECALL                         R13 R1 K14 ["getText"]
      281 CALL                             R13 4 1
      282 GETTABLE                         R14 R2 R12
      283 JUMPIFNOTEQKNIL                  R14 ; [+4]
      285 NEWTABLE                         R14 0 0
      287 SETTABLE                         R14 R2 R12
      288 GETTABLE                         R14 R2 R12
      289 SETTABLEKS                       R13 R14 K39 ["portraitKeyboardHeight"]
      291 GETTABLEKS                       R12 R10 K41 ["landscapeKeyboardHeight"]
      293 LOADN                            R13 0
      294 JUMPIFLT                         R12 R13 ; [+6]
      296 GETTABLEKS                       R12 R10 K41 ["landscapeKeyboardHeight"]
      298 LOADN                            R13 4320
      299 JUMPIFNOTLT                      R13 R12 ; [+32]
      301 GETTABLEKS                       R12 R9 K11 ["draftId"]
      303 LOADK                            R15 K12 ["Validation"]
      304 LOADK                            R16 K42 ["LandscapeKeyboardHeightRange"]
      305 DUPTABLE                         R17 K33 [{"minHeight", "maxHeight"}]
      306 LOADN                            R19 0
      307 FASTCALL1                        TOSTRING R19 ; [+2]
      308 GETIMPORT                        R18 K19 [tostring]
      310 CALL                             R18 1 1
      311 SETTABLEKS                       R18 R17 K31 ["minHeight"]
      313 LOADN                            R19 4320
      314 FASTCALL1                        TOSTRING R19 ; [+2]
      315 GETIMPORT                        R18 K19 [tostring]
      317 CALL                             R18 1 1
      318 SETTABLEKS                       R18 R17 K32 ["maxHeight"]
      320 NAMECALL                         R13 R1 K14 ["getText"]
      322 CALL                             R13 4 1
      323 GETTABLE                         R14 R2 R12
      324 JUMPIFNOTEQKNIL                  R14 ; [+4]
      326 NEWTABLE                         R14 0 0
      328 SETTABLE                         R14 R2 R12
      329 GETTABLE                         R14 R2 R12
      330 SETTABLEKS                       R13 R14 K41 ["landscapeKeyboardHeight"]
      332 GETTABLEKS                       R12 R10 K43 ["memoryMB"]
      334 LOADN                            R13 0
      335 JUMPIFNOTLT                      R12 R13 ; [+26]
      337 GETTABLEKS                       R12 R9 K11 ["draftId"]
      339 LOADK                            R15 K12 ["Validation"]
      340 LOADK                            R16 K44 ["MemoryMinimum"]
      341 DUPTABLE                         R17 K46 [{"minMemory"}]
      342 LOADN                            R19 0
      343 FASTCALL1                        TOSTRING R19 ; [+2]
      344 GETIMPORT                        R18 K19 [tostring]
      346 CALL                             R18 1 1
      347 SETTABLEKS                       R18 R17 K45 ["minMemory"]
      349 NAMECALL                         R13 R1 K14 ["getText"]
      351 CALL                             R13 4 1
      352 GETTABLE                         R14 R2 R12
      353 JUMPIFNOTEQKNIL                  R14 ; [+4]
      355 NEWTABLE                         R14 0 0
      357 SETTABLE                         R14 R2 R12
      358 GETTABLE                         R14 R2 R12
      359 SETTABLEKS                       R13 R14 K43 ["memoryMB"]
      361 JUMP                             ; [+43]
      362 GETUPVAL                         R12 0
      363 GETTABLEKS                       R12 R12 K47 ["getEngineFeatureDeviceSimulatorNominalMemory"]
      365 CALL                             R12 0 1
      366 JUMPIFNOT                        R12 ; [+38]
      367 GETUPVAL                         R13 1
      368 GETTABLEKS                       R13 R13 K49 ["nominalMemoryOf"]
      370 MOVE                             R14 R10
      371 CALL                             R13 1 1
      372 ORK                              R12 R13 K48 [Infinity]
      373 GETUPVAL                         R14 1
      374 GETTABLEKS                       R14 R14 K51 ["MIN_CUSTOM_MEMORY_GB"]
      376 MULK                             R13 R14 K50 [1024]
      377 JUMPIFNOTLT                      R12 R13 ; [+27]
      379 GETTABLEKS                       R12 R9 K11 ["draftId"]
      381 LOADK                            R15 K12 ["Validation"]
      382 LOADK                            R16 K44 ["MemoryMinimum"]
      383 DUPTABLE                         R17 K46 [{"minMemory"}]
      384 LOADK                            R18 K52 ["%* GB"]
      385 GETUPVAL                         R20 1
      386 GETTABLEKS                       R20 R20 K51 ["MIN_CUSTOM_MEMORY_GB"]
      388 NAMECALL                         R18 R18 K53 ["format"]
      390 CALL                             R18 2 1
      391 SETTABLEKS                       R18 R17 K45 ["minMemory"]
      393 NAMECALL                         R13 R1 K14 ["getText"]
      395 CALL                             R13 4 1
      396 GETTABLE                         R14 R2 R12
      397 JUMPIFNOTEQKNIL                  R14 ; [+4]
      399 NEWTABLE                         R14 0 0
      401 SETTABLE                         R14 R2 R12
      402 GETTABLE                         R14 R2 R12
      403 SETTABLEKS                       R13 R14 K43 ["memoryMB"]
      405 FORGLOOP                         R5 2 ; [-395]
      407 GETIMPORT                        R6 K55 [next]
      409 MOVE                             R7 R2
      410 CALL                             R6 1 1
      411 JUMPIFEQKNIL                     R6 ; [+2]
      413 LOADB                            R5 0 +1
      414 LOADB                            R5 1
      415 MOVE                             R6 R2
      416 RETURN                           R5 2

PROTO_53:
        0 GETTABLEKS                       R2 R0 K0 ["info"]
        2 GETIMPORT                        R3 K3 [table.clone]
        4 MOVE                             R4 R2
        5 CALL                             R3 1 1
        6 MOVE                             R1 R3
        7 LOADB                            R2 1
        8 SETTABLEKS                       R2 R1 K4 ["isCustom"]
       10 GETTABLEKS                       R2 R0 K5 ["isNew"]
       12 JUMPIFNOT                        R2 ; [+4]
       13 GETTABLEKS                       R2 R1 K6 ["deviceName"]
       15 SETTABLEKS                       R2 R1 K7 ["deviceId"]
       17 RETURN                           R1 1

PROTO_54:
        0 DUPTABLE                         R1 K4 [{"creates", "updates", "removals", "hiddenDeviceIds"}]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K0 ["creates"]
        5 NEWTABLE                         R2 0 0
        7 SETTABLEKS                       R2 R1 K1 ["updates"]
        9 NEWTABLE                         R2 0 0
       11 SETTABLEKS                       R2 R1 K2 ["removals"]
       13 GETIMPORT                        R2 K7 [table.clone]
       15 GETTABLEKS                       R3 R0 K8 ["hidden"]
       17 CALL                             R2 1 1
       18 SETTABLEKS                       R2 R1 K3 ["hiddenDeviceIds"]
       20 GETTABLEKS                       R2 R0 K9 ["devices"]
       22 LOADNIL                          R3
       23 LOADNIL                          R4
       24 FORGPREP                         R2
       25 GETTABLEKS                       R7 R6 K10 ["info"]
       27 GETTABLEKS                       R7 R7 K11 ["isCustom"]
       29 JUMPIFNOT                        R7 ; [+66]
       30 GETTABLEKS                       R7 R6 K12 ["isNew"]
       32 JUMPIFNOT                        R7 ; [+26]
       33 GETTABLEKS                       R8 R1 K0 ["creates"]
       35 GETTABLEKS                       R11 R6 K10 ["info"]
       37 GETIMPORT                        R12 K7 [table.clone]
       39 MOVE                             R13 R11
       40 CALL                             R12 1 1
       41 MOVE                             R10 R12
       42 LOADB                            R11 1
       43 SETTABLEKS                       R11 R10 K11 ["isCustom"]
       45 GETTABLEKS                       R11 R6 K12 ["isNew"]
       47 JUMPIFNOT                        R11 ; [+4]
       48 GETTABLEKS                       R11 R10 K13 ["deviceName"]
       50 SETTABLEKS                       R11 R10 K14 ["deviceId"]
       52 MOVE                             R9 R10
       53 FASTCALL2                        TABLE_INSERT R8 R9 ; [+3]
       55 GETIMPORT                        R7 K16 [table.insert]
       57 CALL                             R7 2 0
       58 JUMP                             ; [+37]
       59 GETTABLEKS                       R8 R0 K17 ["originals"]
       61 GETTABLEKS                       R9 R6 K18 ["draftId"]
       63 GETTABLE                         R7 R8 R9
       64 JUMPIFNOT                        R7 ; [+31]
       65 GETUPVAL                         R8 0
       66 GETTABLEKS                       R9 R6 K10 ["info"]
       68 MOVE                             R10 R7
       69 CALL                             R8 2 1
       70 JUMPIF                           R8 ; [+25]
       71 GETTABLEKS                       R9 R1 K1 ["updates"]
       73 GETTABLEKS                       R12 R6 K10 ["info"]
       75 GETIMPORT                        R13 K7 [table.clone]
       77 MOVE                             R14 R12
       78 CALL                             R13 1 1
       79 MOVE                             R11 R13
       80 LOADB                            R12 1
       81 SETTABLEKS                       R12 R11 K11 ["isCustom"]
       83 GETTABLEKS                       R12 R6 K12 ["isNew"]
       85 JUMPIFNOT                        R12 ; [+4]
       86 GETTABLEKS                       R12 R11 K13 ["deviceName"]
       88 SETTABLEKS                       R12 R11 K14 ["deviceId"]
       90 MOVE                             R10 R11
       91 FASTCALL2                        TABLE_INSERT R9 R10 ; [+3]
       93 GETIMPORT                        R8 K16 [table.insert]
       95 CALL                             R8 2 0
       96 FORGLOOP                         R2 2 ; [-72]
       98 GETTABLEKS                       R2 R0 K2 ["removals"]
      100 LOADNIL                          R3
      101 LOADNIL                          R4
      102 FORGPREP                         R2
      103 GETTABLEKS                       R8 R1 K2 ["removals"]
      105 FASTCALL2                        TABLE_INSERT R8 R5 ; [+4]
      107 MOVE                             R9 R5
      108 GETIMPORT                        R7 K16 [table.insert]
      110 CALL                             R7 2 0
      111 FORGLOOP                         R2 1 ; [-9]
      113 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DeviceSimulatorToolbar"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Localization"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Bin"]
       18 GETTABLEKS                       R3 R3 K9 ["Common"]
       20 GETTABLEKS                       R3 R3 K10 ["defineLuaFlags"]
       22 CALL                             R2 1 1
       23 NEWTABLE                         R3 32 0
       25 DUPTABLE                         R4 K15 [{"mobile", "desktop", "console", "headset"}]
       26 GETIMPORT                        R5 K19 [Enum.DeviceForm.Phone]
       28 SETTABLEKS                       R5 R4 K11 ["mobile"]
       30 GETIMPORT                        R5 K21 [Enum.DeviceForm.Desktop]
       32 SETTABLEKS                       R5 R4 K12 ["desktop"]
       34 GETIMPORT                        R5 K23 [Enum.DeviceForm.Console]
       36 SETTABLEKS                       R5 R4 K13 ["console"]
       38 GETIMPORT                        R5 K25 [Enum.DeviceForm.VR]
       40 SETTABLEKS                       R5 R4 K14 ["headset"]
       42 DUPTABLE                         R5 K15 [{"mobile", "desktop", "console", "headset"}]
       43 GETIMPORT                        R6 K28 [Enum.Platform.IOS]
       45 SETTABLEKS                       R6 R5 K11 ["mobile"]
       47 GETIMPORT                        R6 K30 [Enum.Platform.Windows]
       49 SETTABLEKS                       R6 R5 K12 ["desktop"]
       51 GETIMPORT                        R6 K32 [Enum.Platform.XBoxOne]
       53 SETTABLEKS                       R6 R5 K13 ["console"]
       55 GETIMPORT                        R6 K34 [Enum.Platform.MetaOS]
       57 SETTABLEKS                       R6 R5 K14 ["headset"]
       59 DUPTABLE                         R6 K15 [{"mobile", "desktop", "console", "headset"}]
       60 DUPTABLE                         R7 K41 [{["width"] = 390, ["height"] = 844, ["dpi"] = 160}]
       61 SETTABLEKS                       R7 R6 K11 ["mobile"]
       63 DUPTABLE                         R7 K45 [{["width"] = 1920, ["height"] = 1080, ["dpi"] = 96}]
       64 SETTABLEKS                       R7 R6 K12 ["desktop"]
       66 DUPTABLE                         R7 K45 [{["width"] = 1920, ["height"] = 1080, ["dpi"] = 96}]
       67 SETTABLEKS                       R7 R6 K13 ["console"]
       69 DUPTABLE                         R7 K48 [{["width"] = 1832, ["height"] = 1920, ["dpi"] = 90}]
       70 SETTABLEKS                       R7 R6 K14 ["headset"]
       72 NEWTABLE                         R7 2 0
       74 GETIMPORT                        R8 K50 [Enum.Platform.Android]
       76 LOADN                            R9 4096
       77 SETTABLE                         R9 R7 R8
       78 GETIMPORT                        R8 K28 [Enum.Platform.IOS]
       80 LOADN                            R9 4096
       81 SETTABLE                         R9 R7 R8
       82 LOADN                            R8 1024
       83 SETTABLEKS                       R8 R3 K51 ["MIB_PER_GIB"]
       85 LOADK                            R8 K52 [0.5]
       86 SETTABLEKS                       R8 R3 K53 ["MIN_CUSTOM_MEMORY_GB"]
       88 LOADN                            R8 4096
       89 SETTABLEKS                       R8 R3 K54 ["MAX_CUSTOM_MEMORY_GB"]
       91 DUPCLOSURE                       R8 K55 [PROTO_0]
       92 DUPCLOSURE                       R9 K56 [PROTO_1]
       93 DUPCLOSURE                       R10 K57 [PROTO_2]
       94 DUPCLOSURE                       R11 K58 [PROTO_3]
       95 DUPCLOSURE                       R12 K59 [PROTO_4]
       96 SETTABLEKS                       R12 R3 K60 ["tabForForm"]
       98 DUPCLOSURE                       R12 K61 [PROTO_5]
       99 DUPCLOSURE                       R13 K62 [PROTO_6]
      100 SETTABLEKS                       R13 R3 K63 ["nominalMemoryOf"]
      102 DUPCLOSURE                       R13 K64 [PROTO_7]
      103 DUPCLOSURE                       R14 K65 [PROTO_8]
      104 SETTABLEKS                       R14 R3 K66 ["formatMemory"]
      106 DUPCLOSURE                       R14 K67 [PROTO_9]
      107 SETTABLEKS                       R14 R3 K68 ["memoryTiersFor"]
      109 DUPCLOSURE                       R14 K69 [PROTO_10]
      110 SETTABLEKS                       R14 R3 K70 ["nearestMemoryTier"]
      112 DUPCLOSURE                       R14 K71 [PROTO_11]
      113 CAPTURE                          VAL R7
      114 CAPTURE                          VAL R3
      115 SETTABLEKS                       R14 R3 K72 ["defaultMemoryTier"]
      117 DUPCLOSURE                       R14 K73 [PROTO_12]
      118 CAPTURE                          VAL R3
      119 CAPTURE                          VAL R6
      120 CAPTURE                          VAL R4
      121 CAPTURE                          VAL R5
      122 CAPTURE                          VAL R2
      123 DUPCLOSURE                       R15 K74 [PROTO_13]
      124 DUPCLOSURE                       R16 K75 [PROTO_15]
      125 DUPCLOSURE                       R17 K76 [PROTO_16]
      126 CAPTURE                          VAL R3
      127 SETTABLEKS                       R17 R3 K77 ["devicesForTab"]
      129 DUPCLOSURE                       R17 K78 [PROTO_17]
      130 DUPCLOSURE                       R18 K79 [PROTO_18]
      131 CAPTURE                          VAL R3
      132 SETTABLEKS                       R18 R3 K80 ["visibleDevicesForTab"]
      134 DUPCLOSURE                       R18 K81 [PROTO_19]
      135 CAPTURE                          VAL R3
      136 SETTABLEKS                       R18 R3 K82 ["standardDevicesForTab"]
      138 DUPCLOSURE                       R18 K83 [PROTO_20]
      139 CAPTURE                          VAL R2
      140 CAPTURE                          VAL R3
      141 DUPCLOSURE                       R19 K84 [PROTO_21]
      142 CAPTURE                          VAL R14
      143 CAPTURE                          VAL R2
      144 CAPTURE                          VAL R3
      145 SETTABLEKS                       R19 R3 K85 ["createState"]
      147 DUPCLOSURE                       R19 K86 [PROTO_22]
      148 SETTABLEKS                       R19 R3 K87 ["getSelected"]
      150 DUPCLOSURE                       R19 K88 [PROTO_23]
      151 CAPTURE                          VAL R2
      152 CAPTURE                          VAL R3
      153 SETTABLEKS                       R19 R3 K89 ["selectTab"]
      155 DUPCLOSURE                       R19 K90 [PROTO_24]
      156 SETTABLEKS                       R19 R3 K91 ["selectDevice"]
      158 DUPCLOSURE                       R19 K92 [PROTO_25]
      159 SETTABLEKS                       R19 R3 K93 ["isHidden"]
      161 DUPCLOSURE                       R19 K94 [PROTO_26]
      162 DUPCLOSURE                       R20 K95 [PROTO_27]
      163 CAPTURE                          VAL R2
      164 CAPTURE                          VAL R3
      165 DUPCLOSURE                       R21 K96 [PROTO_28]
      166 CAPTURE                          VAL R3
      167 CAPTURE                          VAL R2
      168 SETTABLEKS                       R21 R3 K97 ["hideStandard"]
      170 DUPCLOSURE                       R21 K98 [PROTO_29]
      171 CAPTURE                          VAL R2
      172 CAPTURE                          VAL R3
      173 SETTABLEKS                       R21 R3 K99 ["setStandardVisibility"]
      175 DUPCLOSURE                       R21 K100 [PROTO_30]
      176 DUPCLOSURE                       R22 K101 [PROTO_31]
      177 DUPCLOSURE                       R23 K102 [PROTO_33]
      178 CAPTURE                          VAL R6
      179 CAPTURE                          VAL R4
      180 CAPTURE                          VAL R21
      181 CAPTURE                          VAL R5
      182 CAPTURE                          VAL R2
      183 CAPTURE                          VAL R3
      184 CAPTURE                          VAL R22
      185 SETTABLEKS                       R23 R3 K103 ["addDevice"]
      187 DUPCLOSURE                       R23 K104 [PROTO_35]
      188 CAPTURE                          VAL R3
      189 CAPTURE                          VAL R21
      190 CAPTURE                          VAL R22
      191 SETTABLEKS                       R23 R3 K105 ["cloneSelected"]
      193 DUPCLOSURE                       R23 K106 [PROTO_36]
      194 CAPTURE                          VAL R3
      195 CAPTURE                          VAL R2
      196 SETTABLEKS                       R23 R3 K107 ["deleteSelected"]
      198 DUPCLOSURE                       R23 K108 [PROTO_37]
      199 CAPTURE                          VAL R3
      200 SETTABLEKS                       R23 R3 K109 ["updateSelected"]
      202 DUPCLOSURE                       R23 K110 [PROTO_39]
      203 CAPTURE                          VAL R3
      204 CAPTURE                          VAL R2
      205 SETTABLEKS                       R23 R3 K111 ["selectPlatform"]
      207 DUPCLOSURE                       R23 K112 [PROTO_40]
      208 SETTABLEKS                       R23 R3 K113 ["customMemoryGigabytes"]
      210 DUPCLOSURE                       R23 K114 [PROTO_42]
      211 CAPTURE                          VAL R3
      212 CAPTURE                          VAL R2
      213 SETTABLEKS                       R23 R3 K115 ["setCustomMemoryGigabytes"]
      215 DUPCLOSURE                       R23 K116 [PROTO_44]
      216 CAPTURE                          VAL R3
      217 SETTABLEKS                       R23 R3 K117 ["setFreeformMemoryGigabytes"]
      219 DUPCLOSURE                       R23 K118 [PROTO_46]
      220 CAPTURE                          VAL R3
      221 CAPTURE                          VAL R2
      222 SETTABLEKS                       R23 R3 K119 ["selectMemoryTier"]
      224 DUPCLOSURE                       R23 K120 [PROTO_47]
      225 CAPTURE                          VAL R2
      226 SETTABLEKS                       R23 R3 K121 ["setFreeformMemory"]
      228 DUPCLOSURE                       R23 K122 [PROTO_48]
      229 CAPTURE                          VAL R2
      230 CAPTURE                          VAL R3
      231 DUPCLOSURE                       R24 K123 [PROTO_49]
      232 DUPCLOSURE                       R25 K124 [PROTO_50]
      233 CAPTURE                          VAL R23
      234 SETTABLEKS                       R25 R3 K125 ["isDirty"]
      236 DUPCLOSURE                       R25 K126 [PROTO_52]
      237 CAPTURE                          VAL R2
      238 CAPTURE                          VAL R3
      239 SETTABLEKS                       R25 R3 K127 ["validate"]
      241 DUPCLOSURE                       R25 K128 [PROTO_53]
      242 DUPCLOSURE                       R26 K129 [PROTO_54]
      243 CAPTURE                          VAL R23
      244 SETTABLEKS                       R26 R3 K130 ["getOutput"]
      246 RETURN                           R3 1
