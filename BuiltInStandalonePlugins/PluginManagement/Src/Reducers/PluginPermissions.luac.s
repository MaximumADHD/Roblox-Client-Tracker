PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 LENGTH                           R3 R0
        3 LOADN                            R4 1
        4 JUMPIFNOTLT                      R4 R3 ; [+16]
        6 LENGTH                           R5 R0
        7 LOADN                            R3 1
        8 LOADN                            R4 -1
        9 FORNPREP                         R3
       10 JUMPIFNOT                        R1 ; [+4]
       11 JUMPIFNOT                        R1 ; [+7]
       12 LENGTH                           R6 R0
       13 JUMPIFEQ                         R5 R6 ; [+5]
       15 LENGTH                           R7 R2
       16 ADDK                             R6 R7 K0 [1]
       17 GETTABLE                         R7 R0 R5
       18 SETTABLE                         R7 R2 R6
       19 FORNLOOP                         R3
       20 RETURN                           R2 1
       21 MOVE                             R2 R0
       22 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["data"]
        2 GETTABLEKS                       R2 R2 K1 ["domain"]
        4 JUMPIFNOT                        R2 ; [+5]
        5 GETTABLEKS                       R2 R1 K0 ["data"]
        7 GETTABLEKS                       R2 R2 K1 ["domain"]
        9 JUMPIF                           R2 ; [+2]
       10 LOADB                            R2 0
       11 RETURN                           R2 1
       12 GETIMPORT                        R2 K4 [table.concat]
       14 GETUPVAL                         R3 0
       15 GETIMPORT                        R4 K7 [string.split]
       17 GETTABLEKS                       R5 R0 K0 ["data"]
       19 GETTABLEKS                       R5 R5 K1 ["domain"]
       21 LOADK                            R6 K8 ["."]
       22 CALL                             R4 2 1
       23 LOADB                            R5 1
       24 CALL                             R3 2 1
       25 LOADK                            R4 K8 ["."]
       26 CALL                             R2 2 1
       27 GETIMPORT                        R3 K4 [table.concat]
       29 GETUPVAL                         R4 0
       30 GETIMPORT                        R5 K7 [string.split]
       32 GETTABLEKS                       R6 R1 K0 ["data"]
       34 GETTABLEKS                       R6 R6 K1 ["domain"]
       36 LOADK                            R7 K8 ["."]
       37 CALL                             R5 2 1
       38 LOADB                            R6 1
       39 CALL                             R4 2 1
       40 LOADK                            R5 K8 ["."]
       41 CALL                             R3 2 1
       42 JUMPIFLT                         R2 R3 ; [+2]
       44 LOADB                            R4 0 +1
       45 LOADB                            R4 1
       46 RETURN                           R4 1

PROTO_2:
        0 NEWTABLE                         R2 0 0
        2 GETIMPORT                        R3 K1 [pairs]
        4 GETTABLEKS                       R4 R1 K2 ["permissions"]
        6 CALL                             R3 1 3
        7 FORGPREP_NEXT                    R3
        8 FASTCALL1                        TONUMBER R6 ; [+3]
        9 MOVE                             R9 R6
       10 GETIMPORT                        R8 K4 [tonumber]
       12 CALL                             R8 1 1
       13 NEWTABLE                         R9 0 0
       15 NEWTABLE                         R10 0 0
       17 LOADN                            R11 0
       18 LOADN                            R12 0
       19 LOADNIL                          R13
       20 GETIMPORT                        R14 K6 [ipairs]
       22 MOVE                             R15 R7
       23 CALL                             R14 1 3
       24 FORGPREP_INEXT                   R14
       25 GETTABLEKS                       R19 R18 K7 ["Type"]
       27 GETUPVAL                         R20 0
       28 GETTABLEKS                       R20 R20 K8 ["PERMISSION_TYPES"]
       30 GETTABLEKS                       R20 R20 K9 ["HttpService"]
       32 JUMPIFNOTEQ                      R19 R20 ; [+21]
       34 GETUPVAL                         R19 1
       35 GETTABLEKS                       R19 R19 K10 ["fromUserData"]
       37 MOVE                             R20 R18
       38 MOVE                             R21 R17
       39 CALL                             R19 2 1
       40 GETTABLEKS                       R20 R19 K11 ["allowed"]
       42 JUMPIFNOT                        R20 ; [+2]
       43 ADDK                             R11 R11 K12 [1]
       44 JUMP                             ; [+1]
       45 ADDK                             R12 R12 K12 [1]
       46 FASTCALL2                        TABLE_INSERT R9 R19 ; [+5]
       48 MOVE                             R21 R9
       49 MOVE                             R22 R19
       50 GETIMPORT                        R20 K15 [table.insert]
       52 CALL                             R20 2 0
       53 JUMP                             ; [+43]
       54 GETTABLEKS                       R19 R18 K7 ["Type"]
       56 GETUPVAL                         R20 0
       57 GETTABLEKS                       R20 R20 K8 ["PERMISSION_TYPES"]
       59 GETTABLEKS                       R20 R20 K16 ["ScriptInjection"]
       61 JUMPIFNOTEQ                      R19 R20 ; [+35]
       63 GETUPVAL                         R19 1
       64 GETTABLEKS                       R19 R19 K10 ["fromUserData"]
       66 MOVE                             R20 R18
       67 MOVE                             R21 R17
       68 CALL                             R19 2 1
       69 JUMPIFNOTEQKNIL                  R13 ; [+11]
       71 GETTABLEKS                       R13 R19 K11 ["allowed"]
       73 FASTCALL2                        TABLE_INSERT R10 R19 ; [+5]
       75 MOVE                             R21 R10
       76 MOVE                             R22 R19
       77 GETIMPORT                        R20 K15 [table.insert]
       79 CALL                             R20 2 0
       80 JUMP                             ; [+16]
       81 LOADB                            R21 0
       82 LOADK                            R23 K17 ["Only one script injection permission is allowed. "]
       83 LOADK                            R24 K18 ["Uninstall and reinstall plugin "]
       84 FASTCALL1                        TOSTRING R8 ; [+3]
       85 MOVE                             R28 R8
       86 GETIMPORT                        R27 K20 [tostring]
       88 CALL                             R27 1 1
       89 MOVE                             R25 R27
       90 LOADK                            R26 K21 [" to reset permissions."]
       91 CONCAT                           R22 R23 R26
       92 FASTCALL2                        ASSERT R21 R22 ; [+3]
       94 GETIMPORT                        R20 K23 [assert]
       96 CALL                             R20 2 0
       97 FORGLOOP                         R14 2 [inext] ; [-73]
       99 GETIMPORT                        R14 K25 [table.sort]
      101 MOVE                             R15 R9
      102 DUPCLOSURE                       R16 K26 [PROTO_1]
      103 CAPTURE                          UPVAL U2
      104 CALL                             R14 2 0
      105 DUPTABLE                         R14 K32 [{"allowedHttpCount", "deniedHttpCount", "allowedScriptInjection", "httpPermissions", "scriptInjectionPermissions"}]
      106 SETTABLEKS                       R11 R14 K27 ["allowedHttpCount"]
      108 SETTABLEKS                       R12 R14 K28 ["deniedHttpCount"]
      110 SETTABLEKS                       R13 R14 K29 ["allowedScriptInjection"]
      112 SETTABLEKS                       R9 R14 K30 ["httpPermissions"]
      114 SETTABLEKS                       R10 R14 K31 ["scriptInjectionPermissions"]
      116 SETTABLE                         R14 R2 R8
      117 FORGLOOP                         R3 2 ; [-110]
      119 GETUPVAL                         R3 3
      120 GETTABLEKS                       R3 R3 K33 ["Dictionary"]
      122 GETTABLEKS                       R3 R3 K34 ["join"]
      124 MOVE                             R4 R0
      125 MOVE                             R5 R2
      126 CALL                             R3 2 -1
      127 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Cryo"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Rodux"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K9 ["Actions"]
       29 GETTABLEKS                       R4 R4 K10 ["SetAllPluginPermissions"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K4 [require]
       34 GETTABLEKS                       R5 R0 K8 ["Src"]
       36 GETTABLEKS                       R5 R5 K11 ["Models"]
       38 GETTABLEKS                       R5 R5 K12 ["PermissionInfo"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K4 [require]
       43 GETTABLEKS                       R6 R0 K8 ["Src"]
       45 GETTABLEKS                       R6 R6 K13 ["Util"]
       47 GETTABLEKS                       R6 R6 K14 ["Constants"]
       49 CALL                             R5 1 1
       50 DUPCLOSURE                       R6 K15 [PROTO_0]
       51 GETTABLEKS                       R7 R2 K16 ["createReducer"]
       53 NEWTABLE                         R8 0 0
       55 DUPTABLE                         R9 K17 [{"SetAllPluginPermissions"}]
       56 DUPCLOSURE                       R10 K18 [PROTO_2]
       57 CAPTURE                          VAL R5
       58 CAPTURE                          VAL R4
       59 CAPTURE                          VAL R6
       60 CAPTURE                          VAL R1
       61 SETTABLEKS                       R10 R9 K10 ["SetAllPluginPermissions"]
       63 CALL                             R7 2 -1
       64 RETURN                           R7 -1
