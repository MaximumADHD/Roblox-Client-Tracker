PROTO_0:
        0 LOADB                            R1 1
        1 GETIMPORT                        R2 K3 [Enum.IXPLoadingStatus.None]
        3 JUMPIFEQ                         R0 R2 ; [+7]
        5 GETIMPORT                        R2 K5 [Enum.IXPLoadingStatus.Pending]
        7 JUMPIFEQ                         R0 R2 ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 RETURN                           R1 1

PROTO_1:
        0 GETIMPORT                        R2 K3 [Enum.IXPLoadingStatus.Initialized]
        2 JUMPIFEQ                         R0 R2 ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 RETURN                           R1 1

PROTO_2:
        0 DUPTABLE                         R2 K9 [{[1], ["_experimentDefinitions"], ["_variables"], ["_hasRegisteredLayer"] = False, ["_areIxpVariablesSettled"] = False, ["_waitConnection"] = , ["OnVariablesChanged"]}]
        1 SETTABLEKS                       R0 R2 K0 ["_isMock"]
        3 MOVE                             R3 R1
        4 JUMPIF                           R3 ; [+4]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K10 ["getIxpExperimentDefinitions"]
        8 CALL                             R3 0 1
        9 SETTABLEKS                       R3 R2 K1 ["_experimentDefinitions"]
       11 NEWTABLE                         R3 0 0
       13 SETTABLEKS                       R3 R2 K2 ["_variables"]
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R3 R3 K11 ["new"]
       18 CALL                             R3 0 1
       19 SETTABLEKS                       R3 R2 K8 ["OnVariablesChanged"]
       21 GETUPVAL                         R5 2
       22 FASTCALL2                        SETMETATABLE R2 R5 ; [+4]
       24 MOVE                             R4 R2
       25 GETIMPORT                        R3 K13 [setmetatable]
       27 CALL                             R3 2 0
       28 NAMECALL                         R3 R2 K14 ["_createDefaults"]
       30 CALL                             R3 1 1
       31 SETTABLEKS                       R3 R2 K2 ["_variables"]
       33 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 LOADB                            R2 1
        4 MOVE                             R3 R0
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_4:
        0 NAMECALL                         R1 R0 K0 ["cancelRefresh"]
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["_variables"]
        2 RETURN                           R1 1

PROTO_6:
        0 GETTABLEKS                       R3 R0 K0 ["_variables"]
        2 GETTABLE                         R2 R3 R1
        3 JUMPIF                           R2 ; [+4]
        4 MOVE                             R4 R1
        5 NAMECALL                         R2 R0 K1 ["_getDefaultValue"]
        7 CALL                             R2 2 1
        8 RETURN                           R2 1

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["_areIxpVariablesSettled"]
        2 RETURN                           R1 1

PROTO_8:
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
       36 JUMPIF                           R1 ; [+20]
       37 GETUPVAL                         R1 2
       38 LOADK                            R2 K13 ["IxpController: layer fetch failed for Studio.AssetManager.General, status=%*"]
       39 FASTCALL1                        TOSTRING R0 ; [+3]
       40 MOVE                             R5 R0
       41 GETIMPORT                        R4 K15 [tostring]
       43 CALL                             R4 1 1
       44 NAMECALL                         R2 R2 K16 ["format"]
       46 CALL                             R2 2 1
       47 LOADK                            R3 K17 ["WARN"]
       48 CALL                             R1 2 0
       49 GETUPVAL                         R1 1
       50 NAMECALL                         R1 R1 K6 ["_snapshot"]
       52 CALL                             R1 1 0
       53 GETUPVAL                         R1 1
       54 NAMECALL                         R1 R1 K8 ["_disconnectWait"]
       56 CALL                             R1 1 0
       57 RETURN                           R0 0

PROTO_9:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["_areIxpVariablesSettled"]
        3 NAMECALL                         R1 R0 K1 ["_disconnectWait"]
        5 CALL                             R1 1 0
        6 NAMECALL                         R1 R0 K2 ["_registerLayer"]
        8 CALL                             R1 1 1
        9 JUMPIF                           R1 ; [+8]
       10 GETUPVAL                         R1 0
       11 LOADK                            R2 K3 ["IxpController: failed to register layer Studio.AssetManager.General, using defaults"]
       12 LOADK                            R3 K4 ["WARN"]
       13 CALL                             R1 2 0
       14 NAMECALL                         R1 R0 K5 ["_snapshot"]
       16 CALL                             R1 1 0
       17 RETURN                           R0 0
       18 GETUPVAL                         R1 1
       19 LOADK                            R3 K6 ["Studio.AssetManager.General"]
       20 NAMECALL                         R1 R1 K7 ["GetUserStatusForLayer"]
       22 CALL                             R1 2 1
       23 GETIMPORT                        R3 K11 [Enum.IXPLoadingStatus.Initialized]
       25 JUMPIFEQ                         R1 R3 ; [+2]
       27 LOADB                            R2 0 +1
       28 LOADB                            R2 1
       29 JUMPIFNOT                        R2 ; [+7]
       30 NAMECALL                         R2 R0 K5 ["_snapshot"]
       32 CALL                             R2 1 0
       33 NAMECALL                         R2 R0 K12 ["logExposure"]
       35 CALL                             R2 1 0
       36 RETURN                           R0 0
       37 LOADB                            R2 1
       38 GETIMPORT                        R3 K14 [Enum.IXPLoadingStatus.None]
       40 JUMPIFEQ                         R1 R3 ; [+7]
       42 GETIMPORT                        R3 K16 [Enum.IXPLoadingStatus.Pending]
       44 JUMPIFEQ                         R1 R3 ; [+2]
       46 LOADB                            R2 0 +1
       47 LOADB                            R2 1
       48 JUMPIF                           R2 ; [+16]
       49 GETUPVAL                         R2 0
       50 LOADK                            R3 K17 ["IxpController: layer fetch failed for Studio.AssetManager.General, status=%*"]
       51 FASTCALL1                        TOSTRING R1 ; [+3]
       52 MOVE                             R6 R1
       53 GETIMPORT                        R5 K19 [tostring]
       55 CALL                             R5 1 1
       56 NAMECALL                         R3 R3 K20 ["format"]
       58 CALL                             R3 2 1
       59 LOADK                            R4 K4 ["WARN"]
       60 CALL                             R2 2 0
       61 NAMECALL                         R2 R0 K5 ["_snapshot"]
       63 CALL                             R2 1 0
       64 RETURN                           R0 0
       65 GETUPVAL                         R2 1
       66 GETTABLEKS                       R2 R2 K21 ["OnUserLayerLoadingStatusChanged"]
       68 NEWCLOSURE                       R4 P0
       69 CAPTURE                          UPVAL U1
       70 CAPTURE                          VAL R0
       71 CAPTURE                          UPVAL U0
       72 NAMECALL                         R2 R2 K22 ["Connect"]
       74 CALL                             R2 2 1
       75 SETTABLEKS                       R2 R0 K23 ["_waitConnection"]
       77 RETURN                           R0 0

PROTO_10:
        0 NAMECALL                         R1 R0 K0 ["_disconnectWait"]
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Studio.AssetManager.General"]
        2 NAMECALL                         R0 R0 K1 ["LogUserLayerExposure"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_12:
        0 GETIMPORT                        R1 K1 [pcall]
        2 DUPCLOSURE                       R2 K2 [PROTO_11]
        3 CAPTURE                          UPVAL U0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Studio.AssetManager.General"]
        2 NAMECALL                         R0 R0 K1 ["RegisterUserLayers"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["InitializeUserLayers"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["_hasRegisteredLayer"]
        2 JUMPIFNOT                        R1 ; [+2]
        3 LOADB                            R1 1
        4 RETURN                           R1 1
        5 GETIMPORT                        R1 K2 [pcall]
        7 DUPCLOSURE                       R2 K3 [PROTO_13]
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

PROTO_16:
        0 GETTABLEKS                       R1 R0 K0 ["_waitConnection"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETTABLEKS                       R1 R0 K0 ["_waitConnection"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K0 ["_waitConnection"]
       11 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R3 R0 K0 ["_experimentDefinitions"]
        2 GETTABLE                         R2 R3 R1
        3 JUMPIFNOT                        R2 ; [+4]
        4 GETTABLEN                        R3 R2 1
        5 JUMPIFNOT                        R3 ; [+2]
        6 GETTABLEN                        R3 R2 1
        7 RETURN                           R3 1
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K1 ["IxpValue"]
       11 GETTABLEKS                       R3 R3 K2 ["Control"]
       13 RETURN                           R3 1

PROTO_18:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["_experimentDefinitions"]
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 MOVE                             R9 R5
        8 NAMECALL                         R7 R0 K1 ["_getDefaultValue"]
       10 CALL                             R7 2 1
       11 SETTABLE                         R7 R1 R5
       12 FORGLOOP                         R2 2 ; [-6]
       14 RETURN                           R1 1

PROTO_19:
        0 JUMPIFNOTEQKNIL                  R2 ; [+16]
        2 GETUPVAL                         R4 0
        3 LOADK                            R5 K0 ["IxpController: variable %* not found in layer response: %*"]
        4 MOVE                             R7 R1
        5 GETUPVAL                         R8 1
        6 GETTABLEKS                       R8 R8 K1 ["pretty"]
        8 MOVE                             R9 R3
        9 CALL                             R8 1 1
       10 NAMECALL                         R5 R5 K2 ["format"]
       12 CALL                             R5 3 1
       13 LOADK                            R6 K3 ["WARN"]
       14 CALL                             R4 2 0
       15 LOADB                            R4 0
       16 RETURN                           R4 1
       17 GETTABLEKS                       R5 R0 K4 ["_experimentDefinitions"]
       19 GETTABLE                         R4 R5 R1
       20 JUMPIF                           R4 ; [+2]
       21 LOADB                            R5 0
       22 RETURN                           R5 1
       23 MOVE                             R5 R4
       24 LOADNIL                          R6
       25 LOADNIL                          R7
       26 FORGPREP                         R5
       27 JUMPIFNOTEQ                      R2 R9 ; [+3]
       29 LOADB                            R10 1
       30 RETURN                           R10 1
       31 FORGLOOP                         R5 2 ; [-5]
       33 GETUPVAL                         R5 0
       34 LOADK                            R6 K5 ["IxpController: no allowed value for %*, got %*, using default"]
       35 MOVE                             R8 R1
       36 FASTCALL1                        TOSTRING R2 ; [+3]
       37 MOVE                             R10 R2
       38 GETIMPORT                        R9 K7 [tostring]
       40 CALL                             R9 1 1
       41 NAMECALL                         R6 R6 K2 ["format"]
       43 CALL                             R6 3 1
       44 LOADK                            R7 K3 ["WARN"]
       45 CALL                             R5 2 0
       46 LOADB                            R5 0
       47 RETURN                           R5 1

PROTO_20:
        0 NAMECALL                         R2 R0 K0 ["_createDefaults"]
        2 CALL                             R2 1 1
        3 FASTCALL1                        TYPE R1 ; [+3]
        4 MOVE                             R4 R1
        5 GETIMPORT                        R3 K2 [type]
        7 CALL                             R3 1 1
        8 JUMPIFEQKS                       R3 K3 ["table"] ; [+6]
       10 GETUPVAL                         R3 0
       11 LOADK                            R4 K4 ["IxpController: layer response was not a table for Studio.AssetManager.General, using defaults"]
       12 LOADK                            R5 K5 ["WARN"]
       13 CALL                             R3 2 0
       14 RETURN                           R2 1
       15 GETTABLEKS                       R3 R0 K6 ["_experimentDefinitions"]
       17 LOADNIL                          R4
       18 LOADNIL                          R5
       19 FORGPREP                         R3
       20 GETTABLE                         R8 R1 R6
       21 MOVE                             R11 R6
       22 MOVE                             R12 R8
       23 MOVE                             R13 R1
       24 NAMECALL                         R9 R0 K7 ["_isAllowedValue"]
       26 CALL                             R9 4 1
       27 JUMPIFNOT                        R9 ; [+1]
       28 SETTABLE                         R8 R2 R6
       29 FORGLOOP                         R3 2 ; [-10]
       31 RETURN                           R2 1

PROTO_21:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["Studio.AssetManager.General"]
        2 NAMECALL                         R1 R1 K1 ["GetUserLayerVariables"]
        4 CALL                             R1 2 1
        5 MOVE                             R4 R1
        6 NAMECALL                         R2 R0 K2 ["_parseLayerVariables"]
        8 CALL                             R2 2 1
        9 SETTABLEKS                       R2 R0 K3 ["_variables"]
       11 LOADB                            R2 1
       12 SETTABLEKS                       R2 R0 K4 ["_areIxpVariablesSettled"]
       14 GETUPVAL                         R2 1
       15 LOADK                            R3 K5 ["IxpController:_snapshot() -> raw variables: %*, parsed variables: %*"]
       16 GETUPVAL                         R5 2
       17 GETTABLEKS                       R5 R5 K6 ["pretty"]
       19 MOVE                             R6 R1
       20 CALL                             R5 1 1
       21 GETUPVAL                         R6 2
       22 GETTABLEKS                       R6 R6 K6 ["pretty"]
       24 GETTABLEKS                       R7 R0 K3 ["_variables"]
       26 CALL                             R6 1 1
       27 NAMECALL                         R3 R3 K7 ["format"]
       29 CALL                             R3 3 1
       30 CALL                             R2 1 0
       31 GETTABLEKS                       R2 R0 K8 ["OnVariablesChanged"]
       33 GETTABLEKS                       R4 R0 K3 ["_variables"]
       35 NAMECALL                         R2 R2 K9 ["Fire"]
       37 CALL                             R2 2 0
       38 RETURN                           R0 0

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
       42 GETTABLEKS                       R8 R8 K15 ["Configurations"]
       44 GETTABLEKS                       R8 R8 K16 ["Ixp"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K5 [require]
       49 GETTABLEKS                       R9 R0 K12 ["Src"]
       51 GETTABLEKS                       R9 R9 K10 ["Util"]
       53 GETTABLEKS                       R9 R9 K17 ["logIfDebug"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K5 [require]
       58 GETTABLEKS                       R10 R0 K6 ["Packages"]
       60 GETTABLEKS                       R10 R10 K18 ["Dash"]
       62 CALL                             R9 1 1
       63 GETTABLEKS                       R10 R6 K19 ["GetService"]
       65 LOADK                            R11 K20 ["IXPService"]
       66 CALL                             R10 1 1
       67 GETTABLEKS                       R11 R6 K19 ["GetService"]
       69 LOADK                            R12 K21 ["StudioService"]
       70 CALL                             R11 1 1
       71 DUPCLOSURE                       R12 K22 [PROTO_0]
       72 DUPCLOSURE                       R13 K23 [PROTO_1]
       73 LOADK                            R16 K24 ["IxpController"]
       74 NAMECALL                         R14 R3 K25 ["extend"]
       76 CALL                             R14 2 1
       77 DUPCLOSURE                       R15 K26 [PROTO_2]
       78 CAPTURE                          VAL R7
       79 CAPTURE                          VAL R4
       80 CAPTURE                          VAL R14
       81 SETTABLEKS                       R15 R14 K27 ["new"]
       83 DUPCLOSURE                       R15 K28 [PROTO_3]
       84 CAPTURE                          VAL R14
       85 SETTABLEKS                       R15 R14 K29 ["mock"]
       87 DUPCLOSURE                       R15 K30 [PROTO_4]
       88 SETTABLEKS                       R15 R14 K31 ["destroy"]
       90 DUPCLOSURE                       R15 K32 [PROTO_5]
       91 SETTABLEKS                       R15 R14 K33 ["getVariables"]
       93 DUPCLOSURE                       R15 K34 [PROTO_6]
       94 SETTABLEKS                       R15 R14 K35 ["getValue"]
       96 DUPCLOSURE                       R15 K36 [PROTO_7]
       97 SETTABLEKS                       R15 R14 K37 ["areIxpVariablesSettled"]
       99 DUPCLOSURE                       R15 K38 [PROTO_9]
      100 CAPTURE                          VAL R8
      101 CAPTURE                          VAL R10
      102 SETTABLEKS                       R15 R14 K39 ["refreshForSession"]
      104 DUPCLOSURE                       R15 K40 [PROTO_10]
      105 SETTABLEKS                       R15 R14 K41 ["cancelRefresh"]
      107 DUPCLOSURE                       R15 K42 [PROTO_12]
      108 CAPTURE                          VAL R10
      109 SETTABLEKS                       R15 R14 K43 ["logExposure"]
      111 DUPCLOSURE                       R15 K44 [PROTO_15]
      112 CAPTURE                          VAL R10
      113 CAPTURE                          VAL R11
      114 SETTABLEKS                       R15 R14 K45 ["_registerLayer"]
      116 DUPCLOSURE                       R15 K46 [PROTO_16]
      117 SETTABLEKS                       R15 R14 K47 ["_disconnectWait"]
      119 DUPCLOSURE                       R15 K48 [PROTO_17]
      120 CAPTURE                          VAL R5
      121 SETTABLEKS                       R15 R14 K49 ["_getDefaultValue"]
      123 DUPCLOSURE                       R15 K50 [PROTO_18]
      124 SETTABLEKS                       R15 R14 K51 ["_createDefaults"]
      126 DUPCLOSURE                       R15 K52 [PROTO_19]
      127 CAPTURE                          VAL R8
      128 CAPTURE                          VAL R9
      129 SETTABLEKS                       R15 R14 K53 ["_isAllowedValue"]
      131 DUPCLOSURE                       R15 K54 [PROTO_20]
      132 CAPTURE                          VAL R8
      133 SETTABLEKS                       R15 R14 K55 ["_parseLayerVariables"]
      135 DUPCLOSURE                       R15 K56 [PROTO_21]
      136 CAPTURE                          VAL R10
      137 CAPTURE                          VAL R8
      138 CAPTURE                          VAL R9
      139 SETTABLEKS                       R15 R14 K57 ["_snapshot"]
      141 RETURN                           R14 1
