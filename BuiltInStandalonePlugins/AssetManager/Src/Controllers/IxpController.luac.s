PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOT                        R1 ; [+4]
        3 GETTABLEN                        R2 R1 1
        4 JUMPIFNOT                        R2 ; [+2]
        5 GETTABLEN                        R2 R1 1
        6 RETURN                           R2 1
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K0 ["IxpValue"]
       10 GETTABLEKS                       R2 R2 K1 ["Control"]
       12 RETURN                           R2 1

PROTO_1:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 GETUPVAL                         R8 0
        7 GETTABLE                         R7 R8 R4
        8 JUMPIFNOT                        R7 ; [+4]
        9 GETTABLEN                        R8 R7 1
       10 JUMPIFNOT                        R8 ; [+2]
       11 GETTABLEN                        R6 R7 1
       12 JUMP                             ; [+5]
       13 GETUPVAL                         R6 1
       14 GETTABLEKS                       R6 R6 K0 ["IxpValue"]
       16 GETTABLEKS                       R6 R6 K1 ["Control"]
       18 SETTABLE                         R6 R0 R4
       19 FORGLOOP                         R1 2 ; [-14]
       21 RETURN                           R0 1

PROTO_2:
        0 JUMPIFNOTEQKNIL                  R1 ; [+17]
        2 GETUPVAL                         R3 0
        3 LOADK                            R5 K0 ["IxpController: variable %* not found in layer response: %*"]
        4 MOVE                             R7 R0
        5 GETUPVAL                         R8 1
        6 GETTABLEKS                       R8 R8 K1 ["pretty"]
        8 MOVE                             R9 R2
        9 CALL                             R8 1 1
       10 NAMECALL                         R5 R5 K2 ["format"]
       12 CALL                             R5 3 1
       13 MOVE                             R4 R5
       14 LOADK                            R5 K3 ["WARN"]
       15 CALL                             R3 2 0
       16 LOADB                            R3 0
       17 RETURN                           R3 1
       18 GETUPVAL                         R4 2
       19 GETTABLE                         R3 R4 R0
       20 JUMPIF                           R3 ; [+2]
       21 LOADB                            R4 0
       22 RETURN                           R4 1
       23 MOVE                             R4 R3
       24 LOADNIL                          R5
       25 LOADNIL                          R6
       26 FORGPREP                         R4
       27 JUMPIFNOTEQ                      R1 R8 ; [+3]
       29 LOADB                            R9 1
       30 RETURN                           R9 1
       31 FORGLOOP                         R4 2 ; [-5]
       33 GETUPVAL                         R4 0
       34 LOADK                            R6 K4 ["IxpController: no allowed value for %*, got %*, using default"]
       35 MOVE                             R8 R0
       36 FASTCALL1                        TOSTRING R1 ; [+3]
       37 MOVE                             R10 R1
       38 GETIMPORT                        R9 K6 [tostring]
       40 CALL                             R9 1 1
       41 NAMECALL                         R6 R6 K2 ["format"]
       43 CALL                             R6 3 1
       44 MOVE                             R5 R6
       45 LOADK                            R6 K3 ["WARN"]
       46 CALL                             R4 2 0
       47 LOADB                            R4 0
       48 RETURN                           R4 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 FASTCALL1                        TYPE R0 ; [+3]
        3 MOVE                             R3 R0
        4 GETIMPORT                        R2 K1 [type]
        6 CALL                             R2 1 1
        7 JUMPIFEQKS                       R2 K2 ["table"] ; [+6]
        9 GETUPVAL                         R2 1
       10 LOADK                            R3 K3 ["IxpController: layer response was not a table for Studio.AssetManager.General, using defaults"]
       11 LOADK                            R4 K4 ["WARN"]
       12 CALL                             R2 2 0
       13 RETURN                           R1 1
       14 GETUPVAL                         R2 2
       15 LOADNIL                          R3
       16 LOADNIL                          R4
       17 FORGPREP                         R2
       18 GETTABLE                         R7 R0 R5
       19 GETUPVAL                         R8 3
       20 MOVE                             R9 R5
       21 MOVE                             R10 R7
       22 MOVE                             R11 R0
       23 CALL                             R8 3 1
       24 JUMPIFNOT                        R8 ; [+1]
       25 SETTABLE                         R7 R1 R5
       26 FORGLOOP                         R2 2 ; [-9]
       28 RETURN                           R1 1

PROTO_4:
        0 LOADB                            R1 1
        1 GETIMPORT                        R2 K3 [Enum.IXPLoadingStatus.None]
        3 JUMPIFEQ                         R0 R2 ; [+7]
        5 GETIMPORT                        R2 K5 [Enum.IXPLoadingStatus.Pending]
        7 JUMPIFEQ                         R0 R2 ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 RETURN                           R1 1

PROTO_5:
        0 GETIMPORT                        R2 K3 [Enum.IXPLoadingStatus.Initialized]
        2 JUMPIFEQ                         R0 R2 ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 RETURN                           R1 1

PROTO_6:
        0 DUPTABLE                         R1 K7 [{[1], ["_variables"], ["_hasRegisteredLayer"] = False, ["_waitConnection"] = , ["OnVariablesChanged"]}]
        1 SETTABLEKS                       R0 R1 K0 ["_isMock"]
        3 GETUPVAL                         R2 0
        4 CALL                             R2 0 1
        5 SETTABLEKS                       R2 R1 K1 ["_variables"]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K8 ["new"]
       10 CALL                             R2 0 1
       11 SETTABLEKS                       R2 R1 K6 ["OnVariablesChanged"]
       13 GETUPVAL                         R4 2
       14 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
       16 MOVE                             R3 R1
       17 GETIMPORT                        R2 K10 [setmetatable]
       19 CALL                             R2 2 0
       20 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 LOADB                            R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_8:
        0 NAMECALL                         R1 R0 K0 ["cancelRefresh"]
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Studio.AssetManager.General"]
        2 NAMECALL                         R0 R0 K1 ["RegisterUserLayers"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["InitializeUserLayers"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["_hasRegisteredLayer"]
        2 JUMPIFNOT                        R1 ; [+2]
        3 LOADB                            R1 1
        4 RETURN                           R1 1
        5 GETIMPORT                        R1 K2 [pcall]
        7 DUPCLOSURE                       R2 K3 [PROTO_9]
        8 CAPTURE                          UPVAL U0
        9 CALL                             R1 1 1
       10 JUMPIF                           R1 ; [+2]
       11 LOADB                            R2 0
       12 RETURN                           R2 1
       13 LOADB                            R2 1
       14 SETTABLEKS                       R2 R0 K0 ["_hasRegisteredLayer"]
       16 GETUPVAL                         R2 0
       17 LOADK                            R4 K4 ["Studio.AssetManager.General"]
       18 NAMECALL                         R2 R2 K5 ["GetUserStatusForLayer"]
       20 CALL                             R2 2 1
       21 GETIMPORT                        R3 K9 [Enum.IXPLoadingStatus.None]
       23 JUMPIFNOTEQ                      R2 R3 ; [+21]
       25 GETUPVAL                         R3 1
       26 NAMECALL                         R3 R3 K10 ["GetUserId"]
       28 CALL                             R3 1 1
       29 FASTCALL1                        TYPE R3 ; [+3]
       30 MOVE                             R5 R3
       31 GETIMPORT                        R4 K12 [type]
       33 CALL                             R4 1 1
       34 JUMPIFNOTEQKS                    R4 K13 ["number"] ; [+10]
       36 LOADN                            R4 0
       37 JUMPIFNOTLT                      R4 R3 ; [+7]
       39 GETIMPORT                        R4 K2 [pcall]
       41 NEWCLOSURE                       R5 P1
       42 CAPTURE                          UPVAL U0
       43 CAPTURE                          VAL R3
       44 CALL                             R4 1 0
       45 LOADB                            R3 1
       46 RETURN                           R3 1

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["_waitConnection"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETTABLEKS                       R1 R0 K0 ["_waitConnection"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K0 ["_waitConnection"]
       11 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["Studio.AssetManager.General"]
        2 NAMECALL                         R1 R1 K1 ["GetUserLayerVariables"]
        4 CALL                             R1 2 1
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R1
        7 CALL                             R2 1 1
        8 SETTABLEKS                       R2 R0 K2 ["_variables"]
       10 GETUPVAL                         R2 2
       11 LOADK                            R4 K3 ["IxpController:_snapshot() -> raw variables: %*, parsed variables: %*"]
       12 GETUPVAL                         R6 3
       13 GETTABLEKS                       R6 R6 K4 ["pretty"]
       15 MOVE                             R7 R1
       16 CALL                             R6 1 1
       17 GETUPVAL                         R7 3
       18 GETTABLEKS                       R7 R7 K4 ["pretty"]
       20 GETTABLEKS                       R8 R0 K2 ["_variables"]
       22 CALL                             R7 1 1
       23 NAMECALL                         R4 R4 K5 ["format"]
       25 CALL                             R4 3 1
       26 MOVE                             R3 R4
       27 CALL                             R2 1 0
       28 GETTABLEKS                       R2 R0 K6 ["OnVariablesChanged"]
       30 GETTABLEKS                       R4 R0 K2 ["_variables"]
       32 NAMECALL                         R2 R2 K7 ["Fire"]
       34 CALL                             R2 2 0
       35 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["_variables"]
        2 RETURN                           R1 1

PROTO_15:
        0 GETTABLEKS                       R3 R0 K0 ["_variables"]
        2 GETTABLE                         R2 R3 R1
        3 JUMPIF                           R2 ; [+12]
        4 GETUPVAL                         R4 0
        5 GETTABLE                         R3 R4 R1
        6 JUMPIFNOT                        R3 ; [+4]
        7 GETTABLEN                        R4 R3 1
        8 JUMPIFNOT                        R4 ; [+2]
        9 GETTABLEN                        R2 R3 1
       10 RETURN                           R2 1
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R2 R2 K1 ["IxpValue"]
       14 GETTABLEKS                       R2 R2 K2 ["Control"]
       16 RETURN                           R2 1

PROTO_16:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Studio.AssetManager.General"]
        2 NAMECALL                         R0 R0 K1 ["GetUserStatusForLayer"]
        4 CALL                             R0 2 1
        5 GETIMPORT                        R2 K5 [Enum.IXPLoadingStatus.Initialized]
        7 JUMPIFEQ                         R0 R2 ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 JUMPIFNOT                        R1 ; [+13]
       12 GETUPVAL                         R1 1
       13 NAMECALL                         R1 R1 K6 ["_snapshot"]
       15 CALL                             R1 1 0
       16 GETUPVAL                         R1 1
       17 NAMECALL                         R1 R1 K7 ["logExposure"]
       19 CALL                             R1 1 0
       20 GETUPVAL                         R1 1
       21 NAMECALL                         R1 R1 K8 ["_disconnectWait"]
       23 CALL                             R1 1 0
       24 RETURN                           R0 0
       25 LOADB                            R1 1
       26 GETIMPORT                        R2 K10 [Enum.IXPLoadingStatus.None]
       28 JUMPIFEQ                         R0 R2 ; [+7]
       30 GETIMPORT                        R2 K12 [Enum.IXPLoadingStatus.Pending]
       32 JUMPIFEQ                         R0 R2 ; [+2]
       34 LOADB                            R1 0 +1
       35 LOADB                            R1 1
       36 JUMPIF                           R1 ; [+21]
       37 GETUPVAL                         R1 2
       38 LOADK                            R3 K13 ["IxpController: layer fetch failed for Studio.AssetManager.General, status=%*"]
       39 FASTCALL1                        TOSTRING R0 ; [+3]
       40 MOVE                             R6 R0
       41 GETIMPORT                        R5 K15 [tostring]
       43 CALL                             R5 1 1
       44 NAMECALL                         R3 R3 K16 ["format"]
       46 CALL                             R3 2 1
       47 MOVE                             R2 R3
       48 LOADK                            R3 K17 ["WARN"]
       49 CALL                             R1 2 0
       50 GETUPVAL                         R1 1
       51 NAMECALL                         R1 R1 K6 ["_snapshot"]
       53 CALL                             R1 1 0
       54 GETUPVAL                         R1 1
       55 NAMECALL                         R1 R1 K8 ["_disconnectWait"]
       57 CALL                             R1 1 0
       58 RETURN                           R0 0

PROTO_17:
        0 NAMECALL                         R1 R0 K0 ["_disconnectWait"]
        2 CALL                             R1 1 0
        3 NAMECALL                         R1 R0 K1 ["_registerLayer"]
        5 CALL                             R1 1 1
        6 JUMPIF                           R1 ; [+8]
        7 GETUPVAL                         R1 0
        8 LOADK                            R2 K2 ["IxpController: failed to register layer Studio.AssetManager.General, using defaults"]
        9 LOADK                            R3 K3 ["WARN"]
       10 CALL                             R1 2 0
       11 NAMECALL                         R1 R0 K4 ["_snapshot"]
       13 CALL                             R1 1 0
       14 RETURN                           R0 0
       15 GETUPVAL                         R1 1
       16 LOADK                            R3 K5 ["Studio.AssetManager.General"]
       17 NAMECALL                         R1 R1 K6 ["GetUserStatusForLayer"]
       19 CALL                             R1 2 1
       20 GETIMPORT                        R3 K10 [Enum.IXPLoadingStatus.Initialized]
       22 JUMPIFEQ                         R1 R3 ; [+2]
       24 LOADB                            R2 0 +1
       25 LOADB                            R2 1
       26 JUMPIFNOT                        R2 ; [+7]
       27 NAMECALL                         R2 R0 K4 ["_snapshot"]
       29 CALL                             R2 1 0
       30 NAMECALL                         R2 R0 K11 ["logExposure"]
       32 CALL                             R2 1 0
       33 RETURN                           R0 0
       34 LOADB                            R2 1
       35 GETIMPORT                        R3 K13 [Enum.IXPLoadingStatus.None]
       37 JUMPIFEQ                         R1 R3 ; [+7]
       39 GETIMPORT                        R3 K15 [Enum.IXPLoadingStatus.Pending]
       41 JUMPIFEQ                         R1 R3 ; [+2]
       43 LOADB                            R2 0 +1
       44 LOADB                            R2 1
       45 JUMPIF                           R2 ; [+17]
       46 GETUPVAL                         R2 0
       47 LOADK                            R4 K16 ["IxpController: layer fetch failed for Studio.AssetManager.General, status=%*"]
       48 FASTCALL1                        TOSTRING R1 ; [+3]
       49 MOVE                             R7 R1
       50 GETIMPORT                        R6 K18 [tostring]
       52 CALL                             R6 1 1
       53 NAMECALL                         R4 R4 K19 ["format"]
       55 CALL                             R4 2 1
       56 MOVE                             R3 R4
       57 LOADK                            R4 K3 ["WARN"]
       58 CALL                             R2 2 0
       59 NAMECALL                         R2 R0 K4 ["_snapshot"]
       61 CALL                             R2 1 0
       62 RETURN                           R0 0
       63 GETUPVAL                         R2 1
       64 GETTABLEKS                       R2 R2 K20 ["OnUserLayerLoadingStatusChanged"]
       66 NEWCLOSURE                       R4 P0
       67 CAPTURE                          UPVAL U1
       68 CAPTURE                          VAL R0
       69 CAPTURE                          UPVAL U0
       70 NAMECALL                         R2 R2 K21 ["Connect"]
       72 CALL                             R2 2 1
       73 SETTABLEKS                       R2 R0 K22 ["_waitConnection"]
       75 RETURN                           R0 0

PROTO_18:
        0 NAMECALL                         R1 R0 K0 ["_disconnectWait"]
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Studio.AssetManager.General"]
        2 NAMECALL                         R0 R0 K1 ["LogUserLayerExposure"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_20:
        0 GETIMPORT                        R1 K1 [pcall]
        2 DUPCLOSURE                       R2 K2 [PROTO_19]
        3 CAPTURE                          UPVAL U0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["ContextServices"]
       16 GETTABLEKS                       R3 R2 K9 ["ContextItem"]
       18 GETTABLEKS                       R4 R1 K10 ["Util"]
       20 GETTABLEKS                       R4 R4 K11 ["Signal"]
       22 GETIMPORT                        R5 K5 [require]
       24 GETTABLEKS                       R6 R0 K12 ["Src"]
       26 GETTABLEKS                       R6 R6 K13 ["Types"]
       28 CALL                             R5 1 1
       29 GETIMPORT                        R6 K5 [require]
       31 GETTABLEKS                       R7 R0 K12 ["Src"]
       33 GETTABLEKS                       R7 R7 K10 ["Util"]
       35 GETTABLEKS                       R7 R7 K14 ["Services"]
       37 CALL                             R6 1 1
       38 GETIMPORT                        R7 K5 [require]
       40 GETTABLEKS                       R8 R0 K12 ["Src"]
       42 GETTABLEKS                       R8 R8 K10 ["Util"]
       44 GETTABLEKS                       R8 R8 K15 ["getIxpExperimentDefinitions"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K5 [require]
       49 GETTABLEKS                       R9 R0 K12 ["Src"]
       51 GETTABLEKS                       R9 R9 K10 ["Util"]
       53 GETTABLEKS                       R9 R9 K16 ["logIfDebug"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K5 [require]
       58 GETTABLEKS                       R10 R0 K6 ["Packages"]
       60 GETTABLEKS                       R10 R10 K17 ["Dash"]
       62 CALL                             R9 1 1
       63 GETTABLEKS                       R10 R6 K18 ["GetService"]
       65 LOADK                            R11 K19 ["IXPService"]
       66 CALL                             R10 1 1
       67 GETTABLEKS                       R11 R6 K18 ["GetService"]
       69 LOADK                            R12 K20 ["StudioService"]
       70 CALL                             R11 1 1
       71 MOVE                             R12 R7
       72 CALL                             R12 0 1
       73 DUPCLOSURE                       R13 K21 [PROTO_0]
       74 CAPTURE                          VAL R12
       75 CAPTURE                          VAL R5
       76 DUPCLOSURE                       R14 K22 [PROTO_1]
       77 CAPTURE                          VAL R12
       78 CAPTURE                          VAL R5
       79 DUPCLOSURE                       R15 K23 [PROTO_2]
       80 CAPTURE                          VAL R8
       81 CAPTURE                          VAL R9
       82 CAPTURE                          VAL R12
       83 DUPCLOSURE                       R16 K24 [PROTO_3]
       84 CAPTURE                          VAL R14
       85 CAPTURE                          VAL R8
       86 CAPTURE                          VAL R12
       87 CAPTURE                          VAL R15
       88 DUPCLOSURE                       R17 K25 [PROTO_4]
       89 DUPCLOSURE                       R18 K26 [PROTO_5]
       90 LOADK                            R21 K27 ["IxpController"]
       91 NAMECALL                         R19 R3 K28 ["extend"]
       93 CALL                             R19 2 1
       94 DUPCLOSURE                       R20 K29 [PROTO_6]
       95 CAPTURE                          VAL R14
       96 CAPTURE                          VAL R4
       97 CAPTURE                          VAL R19
       98 SETTABLEKS                       R20 R19 K30 ["new"]
      100 DUPCLOSURE                       R20 K31 [PROTO_7]
      101 CAPTURE                          VAL R19
      102 SETTABLEKS                       R20 R19 K32 ["mock"]
      104 DUPCLOSURE                       R20 K33 [PROTO_8]
      105 SETTABLEKS                       R20 R19 K34 ["destroy"]
      107 DUPCLOSURE                       R20 K35 [PROTO_11]
      108 CAPTURE                          VAL R10
      109 CAPTURE                          VAL R11
      110 SETTABLEKS                       R20 R19 K36 ["_registerLayer"]
      112 DUPCLOSURE                       R20 K37 [PROTO_12]
      113 SETTABLEKS                       R20 R19 K38 ["_disconnectWait"]
      115 DUPCLOSURE                       R20 K39 [PROTO_13]
      116 CAPTURE                          VAL R10
      117 CAPTURE                          VAL R16
      118 CAPTURE                          VAL R8
      119 CAPTURE                          VAL R9
      120 SETTABLEKS                       R20 R19 K40 ["_snapshot"]
      122 DUPCLOSURE                       R20 K41 [PROTO_14]
      123 SETTABLEKS                       R20 R19 K42 ["getVariables"]
      125 DUPCLOSURE                       R20 K43 [PROTO_15]
      126 CAPTURE                          VAL R12
      127 CAPTURE                          VAL R5
      128 SETTABLEKS                       R20 R19 K44 ["getValue"]
      130 DUPCLOSURE                       R20 K45 [PROTO_17]
      131 CAPTURE                          VAL R8
      132 CAPTURE                          VAL R10
      133 SETTABLEKS                       R20 R19 K46 ["refreshForSession"]
      135 DUPCLOSURE                       R20 K47 [PROTO_18]
      136 SETTABLEKS                       R20 R19 K48 ["cancelRefresh"]
      138 DUPCLOSURE                       R20 K49 [PROTO_20]
      139 CAPTURE                          VAL R10
      140 SETTABLEKS                       R20 R19 K50 ["logExposure"]
      142 RETURN                           R19 1
