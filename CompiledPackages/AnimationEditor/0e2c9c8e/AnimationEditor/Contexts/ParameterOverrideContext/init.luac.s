PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setParameterValue"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 GETUPVAL                         R4 2
        6 CALL                             R1 3 1
        7 GETUPVAL                         R3 3
        8 CALL                             R3 0 1
        9 JUMPIFNOT                        R3 ; [+7]
       10 GETUPVAL                         R4 1
       11 GETTABLE                         R3 R0 R4
       12 JUMPIFEQKNIL                     R3 ; [+2]
       14 LOADB                            R2 0 +1
       15 LOADB                            R2 1
       16 JUMP                             ; [+3]
       17 GETUPVAL                         R4 1
       18 GETTABLE                         R3 R0 R4
       19 NOT                              R2 R3
       20 JUMPIFNOT                        R2 ; [+4]
       21 GETUPVAL                         R2 4
       22 GETUPVAL                         R4 5
       23 ADDK                             R3 R4 K1 [1]
       24 CALL                             R2 1 0
       25 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CALL                             R2 1 0
        9 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["removeParameter"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 CALL                             R1 2 2
        6 JUMPIFNOT                        R1 ; [+4]
        7 GETUPVAL                         R3 2
        8 GETUPVAL                         R5 3
        9 SUBK                             R4 R5 K1 [1]
       10 CALL                             R3 1 0
       11 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["incrementParameterCount"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 CALL                             R1 2 1
        6 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["decrementParameterCount"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 CALL                             R1 2 1
        6 GETUPVAL                         R3 1
        7 GETTABLE                         R2 R1 R3
        8 JUMPIF                           R2 ; [+3]
        9 GETUPVAL                         R2 2
       10 GETUPVAL                         R3 1
       11 CALL                             R2 1 0
       12 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U2
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_8:
        0 DUPTABLE                         R0 K6 [{"parameterOverrides", "numOverrides", "removeParameterOverride", "setParameterOverrideValue", "incrementParameterOverrideCount", "decrementParameterOverrideCount"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["parameterOverrides"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["numOverrides"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["removeParameterOverride"]
       10 GETUPVAL                         R1 3
       11 SETTABLEKS                       R1 R0 K3 ["setParameterOverrideValue"]
       13 GETUPVAL                         R1 4
       14 SETTABLEKS                       R1 R0 K4 ["incrementParameterOverrideCount"]
       16 GETUPVAL                         R1 5
       17 SETTABLEKS                       R1 R0 K5 ["decrementParameterOverrideCount"]
       19 RETURN                           R0 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 NEWTABLE                         R2 0 0
        5 CALL                             R1 1 2
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K0 ["useState"]
        9 LOADN                            R4 0
       10 CALL                             R3 1 2
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R5 R5 K0 ["useState"]
       14 NEWTABLE                         R6 0 0
       16 CALL                             R5 1 2
       17 GETUPVAL                         R7 0
       18 GETTABLEKS                       R7 R7 K1 ["useCallback"]
       20 NEWCLOSURE                       R8 P0
       21 CAPTURE                          VAL R2
       22 CAPTURE                          UPVAL U1
       23 CAPTURE                          UPVAL U2
       24 CAPTURE                          VAL R4
       25 CAPTURE                          VAL R3
       26 NEWTABLE                         R9 0 4
       28 MOVE                             R10 R1
       29 MOVE                             R11 R2
       30 MOVE                             R12 R3
       31 MOVE                             R13 R4
       32 SETLIST                          R9 R10 4 [1]
       34 CALL                             R7 2 1
       35 GETUPVAL                         R8 0
       36 GETTABLEKS                       R8 R8 K1 ["useCallback"]
       38 NEWCLOSURE                       R9 P1
       39 CAPTURE                          VAL R2
       40 CAPTURE                          UPVAL U1
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R3
       43 NEWTABLE                         R10 0 4
       45 MOVE                             R11 R1
       46 MOVE                             R12 R2
       47 MOVE                             R13 R3
       48 MOVE                             R14 R4
       49 SETLIST                          R10 R11 4 [1]
       51 CALL                             R8 2 1
       52 GETUPVAL                         R9 0
       53 GETTABLEKS                       R9 R9 K1 ["useCallback"]
       55 NEWCLOSURE                       R10 P2
       56 CAPTURE                          VAL R6
       57 CAPTURE                          UPVAL U1
       58 NEWTABLE                         R11 0 2
       60 MOVE                             R12 R5
       61 MOVE                             R13 R6
       62 SETLIST                          R11 R12 2 [1]
       64 CALL                             R9 2 1
       65 GETUPVAL                         R10 0
       66 GETTABLEKS                       R10 R10 K1 ["useCallback"]
       68 NEWCLOSURE                       R11 P3
       69 CAPTURE                          VAL R6
       70 CAPTURE                          UPVAL U1
       71 CAPTURE                          VAL R8
       72 NEWTABLE                         R12 0 3
       74 MOVE                             R13 R5
       75 MOVE                             R14 R6
       76 MOVE                             R15 R8
       77 SETLIST                          R12 R13 3 [1]
       79 CALL                             R10 2 1
       80 GETUPVAL                         R11 0
       81 GETTABLEKS                       R11 R11 K2 ["useMemo"]
       83 NEWCLOSURE                       R12 P4
       84 CAPTURE                          VAL R1
       85 CAPTURE                          VAL R3
       86 CAPTURE                          VAL R8
       87 CAPTURE                          VAL R7
       88 CAPTURE                          VAL R9
       89 CAPTURE                          VAL R10
       90 NEWTABLE                         R13 0 6
       92 MOVE                             R14 R1
       93 MOVE                             R15 R3
       94 MOVE                             R16 R8
       95 MOVE                             R17 R7
       96 MOVE                             R18 R9
       97 MOVE                             R19 R10
       98 SETLIST                          R13 R14 6 [1]
      100 CALL                             R11 2 1
      101 GETUPVAL                         R12 3
      102 GETTABLEKS                       R12 R12 K3 ["useReplicatedState"]
      104 GETUPVAL                         R13 4
      105 GETTABLEKS                       R13 R13 K4 ["PARAMETER_OVERRIDES_MAP"]
      107 MOVE                             R14 R1
      108 CALL                             R12 2 0
      109 GETUPVAL                         R12 3
      110 GETTABLEKS                       R12 R12 K3 ["useReplicatedState"]
      112 GETUPVAL                         R13 4
      113 GETTABLEKS                       R13 R13 K5 ["NUM_OVERRIDES"]
      115 MOVE                             R14 R3
      116 CALL                             R12 2 0
      117 GETUPVAL                         R12 3
      118 GETTABLEKS                       R12 R12 K6 ["useBoundAction"]
      120 GETUPVAL                         R13 5
      121 GETTABLEKS                       R13 R13 K7 ["REMOVE_PARAMETER_OVERRIDE"]
      123 MOVE                             R14 R8
      124 CALL                             R12 2 0
      125 GETUPVAL                         R12 3
      126 GETTABLEKS                       R12 R12 K6 ["useBoundAction"]
      128 GETUPVAL                         R13 5
      129 GETTABLEKS                       R13 R13 K8 ["SET_PARAMETER_OVERRIDE_VALUE"]
      131 MOVE                             R14 R7
      132 CALL                             R12 2 0
      133 GETUPVAL                         R12 3
      134 GETTABLEKS                       R12 R12 K6 ["useBoundAction"]
      136 GETUPVAL                         R13 5
      137 GETTABLEKS                       R13 R13 K9 ["INCREMENT_PARAMETER_OVERRIDE_COUNT"]
      139 MOVE                             R14 R9
      140 CALL                             R12 2 0
      141 GETUPVAL                         R12 3
      142 GETTABLEKS                       R12 R12 K6 ["useBoundAction"]
      144 GETUPVAL                         R13 5
      145 GETTABLEKS                       R13 R13 K10 ["DECREMENT_PARAMETER_OVERRIDE_COUNT"]
      147 MOVE                             R14 R10
      148 CALL                             R12 2 0
      149 GETUPVAL                         R12 0
      150 GETTABLEKS                       R12 R12 K11 ["createElement"]
      152 GETUPVAL                         R13 6
      153 GETTABLEKS                       R13 R13 K12 ["Context"]
      155 GETTABLEKS                       R13 R13 K13 ["Provider"]
      157 DUPTABLE                         R14 K15 [{"value"}]
      158 SETTABLEKS                       R11 R14 K14 ["value"]
      160 GETTABLEKS                       R15 R0 K16 ["children"]
      162 CALL                             R12 3 -1
      163 RETURN                           R12 -1

PROTO_10:
        0 GETIMPORT                        R1 K2 [task.spawn]
        2 GETUPVAL                         R2 0
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_11:
        0 GETIMPORT                        R2 K2 [task.spawn]
        2 GETUPVAL                         R3 0
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 CALL                             R2 3 0
        6 RETURN                           R0 0

PROTO_12:
        0 GETIMPORT                        R1 K2 [task.spawn]
        2 GETUPVAL                         R2 0
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_13:
        0 GETIMPORT                        R1 K2 [task.spawn]
        2 GETUPVAL                         R2 0
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_14:
        0 DUPTABLE                         R0 K6 [{"parameterOverrides", "numOverrides", "removeParameterOverride", "setParameterOverrideValue", "incrementParameterOverrideCount", "decrementParameterOverrideCount"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["parameterOverrides"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["numOverrides"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["removeParameterOverride"]
       10 GETUPVAL                         R1 3
       11 SETTABLEKS                       R1 R0 K3 ["setParameterOverrideValue"]
       13 GETUPVAL                         R1 4
       14 SETTABLEKS                       R1 R0 K4 ["incrementParameterOverrideCount"]
       16 GETUPVAL                         R1 5
       17 SETTABLEKS                       R1 R0 K5 ["decrementParameterOverrideCount"]
       19 RETURN                           R0 1

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useReplicatedStateListener"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["PARAMETER_OVERRIDES_MAP"]
        6 NEWTABLE                         R3 0 0
        8 CALL                             R1 2 1
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K0 ["useReplicatedStateListener"]
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K2 ["NUM_OVERRIDES"]
       15 LOADN                            R4 0
       16 CALL                             R2 2 1
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R3 R3 K3 ["useBoundAction"]
       20 GETUPVAL                         R4 2
       21 GETTABLEKS                       R4 R4 K4 ["REMOVE_PARAMETER_OVERRIDE"]
       23 CALL                             R3 1 1
       24 GETUPVAL                         R4 0
       25 GETTABLEKS                       R4 R4 K3 ["useBoundAction"]
       27 GETUPVAL                         R5 2
       28 GETTABLEKS                       R5 R5 K5 ["SET_PARAMETER_OVERRIDE_VALUE"]
       30 CALL                             R4 1 1
       31 GETUPVAL                         R5 0
       32 GETTABLEKS                       R5 R5 K3 ["useBoundAction"]
       34 GETUPVAL                         R6 2
       35 GETTABLEKS                       R6 R6 K6 ["INCREMENT_PARAMETER_OVERRIDE_COUNT"]
       37 CALL                             R5 1 1
       38 GETUPVAL                         R6 0
       39 GETTABLEKS                       R6 R6 K3 ["useBoundAction"]
       41 GETUPVAL                         R7 2
       42 GETTABLEKS                       R7 R7 K7 ["DECREMENT_PARAMETER_OVERRIDE_COUNT"]
       44 CALL                             R6 1 1
       45 GETUPVAL                         R7 3
       46 GETTABLEKS                       R7 R7 K8 ["useCallback"]
       48 NEWCLOSURE                       R8 P0
       49 CAPTURE                          VAL R3
       50 NEWTABLE                         R9 0 1
       52 MOVE                             R10 R3
       53 SETLIST                          R9 R10 1 [1]
       55 CALL                             R7 2 1
       56 GETUPVAL                         R8 3
       57 GETTABLEKS                       R8 R8 K8 ["useCallback"]
       59 NEWCLOSURE                       R9 P1
       60 CAPTURE                          VAL R4
       61 NEWTABLE                         R10 0 1
       63 MOVE                             R11 R4
       64 SETLIST                          R10 R11 1 [1]
       66 CALL                             R8 2 1
       67 GETUPVAL                         R9 3
       68 GETTABLEKS                       R9 R9 K8 ["useCallback"]
       70 NEWCLOSURE                       R10 P2
       71 CAPTURE                          VAL R5
       72 NEWTABLE                         R11 0 1
       74 MOVE                             R12 R5
       75 SETLIST                          R11 R12 1 [1]
       77 CALL                             R9 2 1
       78 GETUPVAL                         R10 3
       79 GETTABLEKS                       R10 R10 K8 ["useCallback"]
       81 NEWCLOSURE                       R11 P3
       82 CAPTURE                          VAL R6
       83 NEWTABLE                         R12 0 1
       85 MOVE                             R13 R6
       86 SETLIST                          R12 R13 1 [1]
       88 CALL                             R10 2 1
       89 GETUPVAL                         R11 3
       90 GETTABLEKS                       R11 R11 K9 ["useMemo"]
       92 NEWCLOSURE                       R12 P4
       93 CAPTURE                          VAL R1
       94 CAPTURE                          VAL R2
       95 CAPTURE                          VAL R7
       96 CAPTURE                          VAL R8
       97 CAPTURE                          VAL R9
       98 CAPTURE                          VAL R10
       99 NEWTABLE                         R13 0 6
      101 MOVE                             R14 R1
      102 MOVE                             R15 R2
      103 MOVE                             R16 R7
      104 MOVE                             R17 R8
      105 MOVE                             R18 R9
      106 MOVE                             R19 R10
      107 SETLIST                          R13 R14 6 [1]
      109 CALL                             R11 2 1
      110 GETUPVAL                         R12 3
      111 GETTABLEKS                       R12 R12 K10 ["createElement"]
      113 GETUPVAL                         R13 4
      114 GETTABLEKS                       R13 R13 K11 ["Context"]
      116 GETTABLEKS                       R13 R13 K12 ["Provider"]
      118 DUPTABLE                         R14 K14 [{"value"}]
      119 SETTABLEKS                       R11 R14 K13 ["value"]
      121 GETTABLEKS                       R15 R0 K15 ["children"]
      123 CALL                             R12 3 -1
      124 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["Networking"]
       13 GETTABLEKS                       R2 R2 K8 ["NetworkUtils"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Parent"]
       20 GETTABLEKS                       R3 R3 K10 ["NodeGraphing"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K11 ["Contexts"]
       27 GETTABLEKS                       R4 R4 K12 ["ParameterOverrideContext"]
       29 GETTABLEKS                       R4 R4 K13 ["ParameterOverrideUtils"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K9 ["Parent"]
       36 GETTABLEKS                       R5 R5 K14 ["React"]
       38 CALL                             R4 1 1
       39 GETTABLEKS                       R5 R2 K12 ["ParameterOverrideContext"]
       41 GETIMPORT                        R6 K5 [require]
       43 GETTABLEKS                       R7 R0 K15 ["Flags"]
       45 GETTABLEKS                       R7 R7 K16 ["getFFlagAnimGraphUILetAllParametersOverridable"]
       47 CALL                             R6 1 1
       48 DUPTABLE                         R7 K19 [{"PARAMETER_OVERRIDES_MAP", "NUM_OVERRIDES"}]
       49 LOADK                            R8 K20 ["ParameterOverrideContext_ParameterOverridesState"]
       50 SETTABLEKS                       R8 R7 K17 ["PARAMETER_OVERRIDES_MAP"]
       52 LOADK                            R8 K21 ["ParameterOverrideContext_NumOverridesState"]
       53 SETTABLEKS                       R8 R7 K18 ["NUM_OVERRIDES"]
       55 DUPTABLE                         R8 K26 [{"REMOVE_PARAMETER_OVERRIDE", "SET_PARAMETER_OVERRIDE_VALUE", "INCREMENT_PARAMETER_OVERRIDE_COUNT", "DECREMENT_PARAMETER_OVERRIDE_COUNT"}]
       56 LOADK                            R9 K27 ["ParameterOverrideContext_RemoveParameterOverride"]
       57 SETTABLEKS                       R9 R8 K22 ["REMOVE_PARAMETER_OVERRIDE"]
       59 LOADK                            R9 K28 ["ParameterOverrideContext_SetParameterOverrideValue"]
       60 SETTABLEKS                       R9 R8 K23 ["SET_PARAMETER_OVERRIDE_VALUE"]
       62 LOADK                            R9 K29 ["ParameterOverrideContext_IncrementParameterOverrideCount"]
       63 SETTABLEKS                       R9 R8 K24 ["INCREMENT_PARAMETER_OVERRIDE_COUNT"]
       65 LOADK                            R9 K30 ["ParameterOverrideContext_DecrementParameterOverrideCount"]
       66 SETTABLEKS                       R9 R8 K25 ["DECREMENT_PARAMETER_OVERRIDE_COUNT"]
       68 DUPCLOSURE                       R9 K31 [PROTO_9]
       69 CAPTURE                          VAL R4
       70 CAPTURE                          VAL R3
       71 CAPTURE                          VAL R6
       72 CAPTURE                          VAL R1
       73 CAPTURE                          VAL R7
       74 CAPTURE                          VAL R8
       75 CAPTURE                          VAL R5
       76 DUPCLOSURE                       R10 K32 [PROTO_15]
       77 CAPTURE                          VAL R1
       78 CAPTURE                          VAL R7
       79 CAPTURE                          VAL R8
       80 CAPTURE                          VAL R4
       81 CAPTURE                          VAL R5
       82 DUPTABLE                         R11 K35 [{"EditableDataModelProvider", "UIDataModelProvider"}]
       83 SETTABLEKS                       R9 R11 K33 ["EditableDataModelProvider"]
       85 SETTABLEKS                       R10 R11 K34 ["UIDataModelProvider"]
       87 RETURN                           R11 1
