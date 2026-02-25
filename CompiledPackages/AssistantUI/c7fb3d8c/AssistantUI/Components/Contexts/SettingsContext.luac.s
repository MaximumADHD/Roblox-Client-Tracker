PROTO_0:
        0 LOADNIL                          R1
        1 RETURN                           R1 1

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["new"]
        3 NEWTABLE                         R1 0 0
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getSecureSettingsAsync"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_5:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 2
        6 JUMPIFNOT                        R1 ; [+30]
        7 JUMPIFNOT                        R2 ; [+29]
        8 FASTCALL1                        TYPE R2 ; [+3]
        9 MOVE                             R4 R2
       10 GETIMPORT                        R3 K3 [type]
       12 CALL                             R3 1 1
       13 JUMPIFNOTEQKS                    R3 K4 ["table"] ; [+23]
       15 MOVE                             R3 R2
       16 LOADNIL                          R4
       17 LOADNIL                          R5
       18 FORGPREP                         R3
       19 FASTCALL1                        TYPE R6 ; [+3]
       20 MOVE                             R9 R6
       21 GETIMPORT                        R8 K3 [type]
       23 CALL                             R8 1 1
       24 JUMPIFNOTEQKS                    R8 K5 ["string"] ; [+10]
       26 FASTCALL1                        TYPE R7 ; [+3]
       27 MOVE                             R9 R7
       28 GETIMPORT                        R8 K3 [type]
       30 CALL                             R8 1 1
       31 JUMPIFNOTEQKS                    R8 K5 ["string"] ; [+3]
       33 GETUPVAL                         R8 1
       34 SETTABLE                         R7 R8 R6
       35 FORGLOOP                         R3 2 ; [-17]
       37 RETURN                           R0 0

PROTO_6:
        0 NEWTABLE                         R0 0 0
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 MOVE                             R2 R1
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R3 R4 K0 ["ASSISTANT_PROVIDER_KEYS"]
        9 CALL                             R2 1 0
       10 MOVE                             R2 R1
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R3 R4 K1 ["ASSISTANT_PROVIDER_SETTINGS"]
       14 CALL                             R2 1 0
       15 GETUPVAL                         R3 2
       16 GETTABLEKS                       R2 R3 K2 ["current"]
       18 MOVE                             R4 R0
       19 NAMECALL                         R2 R2 K3 ["set"]
       21 CALL                             R2 2 0
       22 RETURN                           R0 0

PROTO_7:
        0 GETIMPORT                        R0 K2 [task.spawn]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["current"]
        3 NAMECALL                         R2 R2 K1 ["get"]
        5 CALL                             R2 1 1
        6 GETTABLE                         R1 R2 R0
        7 RETURN                           R1 1

PROTO_9:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 GETUPVAL                         R7 1
        7 GETTABLEKS                       R6 R7 K0 ["CLAUDE_API_KEY"]
        9 JUMPIFEQ                         R4 R6 ; [+11]
       11 GETUPVAL                         R7 1
       12 GETTABLEKS                       R6 R7 K1 ["GEMINI_API_KEY"]
       14 JUMPIFEQ                         R4 R6 ; [+6]
       16 GETUPVAL                         R7 1
       17 GETTABLEKS                       R6 R7 K2 ["OPENAI_API_KEY"]
       19 JUMPIFNOTEQ                      R4 R6 ; [+2]
       21 SETTABLE                         R5 R0 R4
       22 FORGLOOP                         R1 2 ; [-17]
       24 GETUPVAL                         R2 2
       25 GETTABLEKS                       R1 R2 K3 ["setSecureSettingsAsync"]
       27 GETUPVAL                         R3 1
       28 GETTABLEKS                       R2 R3 K4 ["ASSISTANT_PROVIDER_KEYS"]
       30 MOVE                             R3 R0
       31 CALL                             R1 2 0
       32 RETURN                           R0 0

PROTO_10:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["current"]
        3 NAMECALL                         R2 R2 K1 ["get"]
        5 CALL                             R2 1 1
        6 GETIMPORT                        R3 K4 [table.clone]
        8 MOVE                             R4 R2
        9 CALL                             R3 1 1
       10 SETTABLE                         R1 R3 R0
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R4 R5 K0 ["current"]
       14 MOVE                             R6 R3
       15 NAMECALL                         R4 R4 K5 ["set"]
       17 CALL                             R4 2 0
       18 GETIMPORT                        R4 K8 [task.spawn]
       20 NEWCLOSURE                       R5 P0
       21 CAPTURE                          VAL R3
       22 CAPTURE                          UPVAL U1
       23 CAPTURE                          UPVAL U2
       24 CALL                             R4 1 0
       25 RETURN                           R0 0

PROTO_12:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 GETUPVAL                         R7 1
        7 GETTABLEKS                       R6 R7 K0 ["ANTHROPIC_PROVIDER_ENABLED"]
        9 JUMPIFEQ                         R4 R6 ; [+16]
       11 GETUPVAL                         R7 1
       12 GETTABLEKS                       R6 R7 K1 ["OPENAI_PROVIDER_ENABLED"]
       14 JUMPIFEQ                         R4 R6 ; [+11]
       16 GETUPVAL                         R7 1
       17 GETTABLEKS                       R6 R7 K2 ["GEMINI_PROVIDER_ENABLED"]
       19 JUMPIFEQ                         R4 R6 ; [+6]
       21 GETUPVAL                         R7 1
       22 GETTABLEKS                       R6 R7 K3 ["CURRENT_MODEL"]
       24 JUMPIFNOTEQ                      R4 R6 ; [+2]
       26 SETTABLE                         R5 R0 R4
       27 FORGLOOP                         R1 2 ; [-22]
       29 GETUPVAL                         R2 2
       30 GETTABLEKS                       R1 R2 K4 ["setSecureSettingsAsync"]
       32 GETUPVAL                         R3 1
       33 GETTABLEKS                       R2 R3 K5 ["ASSISTANT_PROVIDER_SETTINGS"]
       35 MOVE                             R3 R0
       36 CALL                             R1 2 0
       37 RETURN                           R0 0

PROTO_13:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["current"]
        3 NAMECALL                         R2 R2 K1 ["get"]
        5 CALL                             R2 1 1
        6 GETIMPORT                        R3 K4 [table.clone]
        8 MOVE                             R4 R2
        9 CALL                             R3 1 1
       10 SETTABLE                         R1 R3 R0
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R4 R5 K0 ["current"]
       14 MOVE                             R6 R3
       15 NAMECALL                         R4 R4 K5 ["set"]
       17 CALL                             R4 2 0
       18 GETIMPORT                        R4 K8 [task.spawn]
       20 NEWCLOSURE                       R5 P0
       21 CAPTURE                          VAL R3
       22 CAPTURE                          UPVAL U1
       23 CAPTURE                          UPVAL U2
       24 CALL                             R4 1 0
       25 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 RETURN                           R0 1

PROTO_16:
        0 DUPTABLE                         R0 K4 [{"getSetting", "setKeySetting", "setProviderSetting", "getSettingsObservable"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["getSetting"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["setKeySetting"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["setProviderSetting"]
       10 GETUPVAL                         R1 3
       11 SETTABLEKS                       R1 R0 K3 ["getSettingsObservable"]
       13 RETURN                           R0 1

PROTO_17:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useRef"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["new"]
        6 NEWTABLE                         R3 0 0
        8 CALL                             R2 1 -1
        9 CALL                             R1 -1 1
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R2 R3 K2 ["get"]
       13 CALL                             R2 0 1
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R3 R4 K3 ["useEffect"]
       17 NEWCLOSURE                       R4 P0
       18 CAPTURE                          VAL R2
       19 CAPTURE                          UPVAL U3
       20 CAPTURE                          VAL R1
       21 NEWTABLE                         R5 0 0
       23 CALL                             R3 2 0
       24 GETUPVAL                         R4 0
       25 GETTABLEKS                       R3 R4 K4 ["useCallback"]
       27 NEWCLOSURE                       R4 P1
       28 CAPTURE                          VAL R1
       29 NEWTABLE                         R5 0 0
       31 CALL                             R3 2 1
       32 GETUPVAL                         R5 0
       33 GETTABLEKS                       R4 R5 K4 ["useCallback"]
       35 NEWCLOSURE                       R5 P2
       36 CAPTURE                          VAL R1
       37 CAPTURE                          UPVAL U3
       38 CAPTURE                          VAL R2
       39 NEWTABLE                         R6 0 0
       41 CALL                             R4 2 1
       42 GETUPVAL                         R6 0
       43 GETTABLEKS                       R5 R6 K4 ["useCallback"]
       45 NEWCLOSURE                       R6 P3
       46 CAPTURE                          VAL R1
       47 CAPTURE                          UPVAL U3
       48 CAPTURE                          VAL R2
       49 NEWTABLE                         R7 0 0
       51 CALL                             R5 2 1
       52 GETUPVAL                         R7 0
       53 GETTABLEKS                       R6 R7 K4 ["useCallback"]
       55 NEWCLOSURE                       R7 P4
       56 CAPTURE                          VAL R1
       57 NEWTABLE                         R8 0 0
       59 CALL                             R6 2 1
       60 GETUPVAL                         R8 0
       61 GETTABLEKS                       R7 R8 K5 ["useMemo"]
       63 NEWCLOSURE                       R8 P5
       64 CAPTURE                          VAL R3
       65 CAPTURE                          VAL R4
       66 CAPTURE                          VAL R5
       67 CAPTURE                          VAL R6
       68 NEWTABLE                         R9 0 4
       70 MOVE                             R10 R3
       71 MOVE                             R11 R4
       72 MOVE                             R12 R5
       73 MOVE                             R13 R6
       74 SETLIST                          R9 R10 4 [1]
       76 CALL                             R7 2 1
       77 GETUPVAL                         R8 4
       78 GETUPVAL                         R10 5
       79 GETTABLEKS                       R9 R10 K6 ["Provider"]
       81 DUPTABLE                         R10 K8 [{"value"}]
       82 SETTABLEKS                       R7 R10 K7 ["value"]
       84 GETTABLEKS                       R11 R0 K9 ["children"]
       86 CALL                             R8 3 -1
       87 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Guest"]
       11 GETTABLEKS                       R2 R3 K7 ["Environment"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R4 K9 ["ModelContextProtocol"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Parent"]
       25 GETTABLEKS                       R4 R5 K10 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["Types"]
       32 CALL                             R4 1 1
       33 GETTABLEKS                       R6 R2 K12 ["Util"]
       35 GETTABLEKS                       R5 R6 K13 ["Observable"]
       37 GETTABLEKS                       R6 R3 K14 ["createElement"]
       39 DUPTABLE                         R7 K19 [{"getSetting", "setKeySetting", "setProviderSetting", "getSettingsObservable"}]
       40 DUPCLOSURE                       R8 K20 [PROTO_0]
       41 SETTABLEKS                       R8 R7 K15 ["getSetting"]
       43 DUPCLOSURE                       R8 K21 [PROTO_1]
       44 SETTABLEKS                       R8 R7 K16 ["setKeySetting"]
       46 DUPCLOSURE                       R8 K22 [PROTO_2]
       47 SETTABLEKS                       R8 R7 K17 ["setProviderSetting"]
       49 DUPCLOSURE                       R8 K23 [PROTO_3]
       50 CAPTURE                          VAL R5
       51 SETTABLEKS                       R8 R7 K18 ["getSettingsObservable"]
       53 GETTABLEKS                       R8 R3 K24 ["createContext"]
       55 MOVE                             R9 R7
       56 CALL                             R8 1 1
       57 DUPCLOSURE                       R9 K25 [PROTO_17]
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R5
       60 CAPTURE                          VAL R1
       61 CAPTURE                          VAL R4
       62 CAPTURE                          VAL R6
       63 CAPTURE                          VAL R8
       64 DUPTABLE                         R10 K28 [{"Context", "Provider"}]
       65 SETTABLEKS                       R8 R10 K26 ["Context"]
       67 SETTABLEKS                       R9 R10 K27 ["Provider"]
       69 RETURN                           R10 1
