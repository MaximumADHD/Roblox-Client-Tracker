PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setParameterValue"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 GETUPVAL                         R4 2
        6 CALL                             R1 3 1
        7 GETUPVAL                         R3 1
        8 GETTABLE                         R2 R0 R3
        9 JUMPIF                           R2 ; [+4]
       10 GETUPVAL                         R2 3
       11 GETUPVAL                         R4 4
       12 ADDK                             R3 R4 K1 [1]
       13 CALL                             R2 1 0
       14 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CALL                             R2 1 0
        8 RETURN                           R0 0

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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setPreviewAnimationParameters"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 1
        6 JUMPIFNOTEQKN                    R0 K1 [0] ; [+6]
        8 GETUPVAL                         R0 0
        9 GETTABLEKS                       R0 R0 K0 ["setPreviewAnimationParameters"]
       11 LOADNIL                          R1
       12 CALL                             R0 1 0
       13 GETUPVAL                         R0 1
       14 LOADN                            R1 0
       15 JUMPIFNOTLT                      R1 R0 ; [+25]
       17 GETIMPORT                        R0 K4 [table.clone]
       19 GETUPVAL                         R1 0
       20 GETTABLEKS                       R1 R1 K5 ["animationParameters"]
       22 CALL                             R0 1 1
       23 GETUPVAL                         R1 2
       24 LOADNIL                          R2
       25 LOADNIL                          R3
       26 FORGPREP                         R1
       27 FASTCALL1                        TONUMBER R5 ; [+3]
       28 MOVE                             R8 R5
       29 GETIMPORT                        R7 K7 [tonumber]
       31 CALL                             R7 1 1
       32 OR                               R6 R7 R5
       33 SETTABLE                         R6 R0 R4
       34 FORGLOOP                         R1 2 ; [-8]
       36 GETUPVAL                         R1 0
       37 GETTABLEKS                       R1 R1 K0 ["setPreviewAnimationParameters"]
       39 MOVE                             R2 R0
       40 CALL                             R1 1 0
       41 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["useState"]
       10 NEWTABLE                         R3 0 0
       12 CALL                             R2 1 2
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R4 R4 K2 ["useState"]
       16 LOADN                            R5 0
       17 CALL                             R4 1 2
       18 GETUPVAL                         R6 0
       19 GETTABLEKS                       R6 R6 K2 ["useState"]
       21 NEWTABLE                         R7 0 0
       23 CALL                             R6 1 2
       24 GETUPVAL                         R8 0
       25 GETTABLEKS                       R8 R8 K3 ["useCallback"]
       27 NEWCLOSURE                       R9 P0
       28 CAPTURE                          VAL R3
       29 CAPTURE                          UPVAL U2
       30 CAPTURE                          VAL R5
       31 CAPTURE                          VAL R4
       32 NEWTABLE                         R10 0 4
       34 MOVE                             R11 R2
       35 MOVE                             R12 R3
       36 MOVE                             R13 R4
       37 MOVE                             R14 R5
       38 SETLIST                          R10 R11 4 [1]
       40 CALL                             R8 2 1
       41 GETUPVAL                         R9 0
       42 GETTABLEKS                       R9 R9 K3 ["useCallback"]
       44 NEWCLOSURE                       R10 P1
       45 CAPTURE                          VAL R3
       46 CAPTURE                          UPVAL U2
       47 CAPTURE                          VAL R5
       48 CAPTURE                          VAL R4
       49 NEWTABLE                         R11 0 4
       51 MOVE                             R12 R2
       52 MOVE                             R13 R3
       53 MOVE                             R14 R4
       54 MOVE                             R15 R5
       55 SETLIST                          R11 R12 4 [1]
       57 CALL                             R9 2 1
       58 GETUPVAL                         R10 0
       59 GETTABLEKS                       R10 R10 K3 ["useCallback"]
       61 NEWCLOSURE                       R11 P2
       62 CAPTURE                          VAL R7
       63 CAPTURE                          UPVAL U2
       64 NEWTABLE                         R12 0 2
       66 MOVE                             R13 R6
       67 MOVE                             R14 R7
       68 SETLIST                          R12 R13 2 [1]
       70 CALL                             R10 2 1
       71 GETUPVAL                         R11 0
       72 GETTABLEKS                       R11 R11 K3 ["useCallback"]
       74 NEWCLOSURE                       R12 P3
       75 CAPTURE                          VAL R7
       76 CAPTURE                          UPVAL U2
       77 CAPTURE                          VAL R9
       78 NEWTABLE                         R13 0 3
       80 MOVE                             R14 R6
       81 MOVE                             R15 R7
       82 MOVE                             R16 R9
       83 SETLIST                          R13 R14 3 [1]
       85 CALL                             R11 2 1
       86 GETUPVAL                         R12 0
       87 GETTABLEKS                       R12 R12 K4 ["useEffect"]
       89 NEWCLOSURE                       R13 P4
       90 CAPTURE                          VAL R1
       91 CAPTURE                          VAL R4
       92 CAPTURE                          VAL R2
       93 NEWTABLE                         R14 0 4
       95 MOVE                             R15 R2
       96 MOVE                             R16 R4
       97 GETTABLEKS                       R17 R1 K5 ["animationParameters"]
       99 GETTABLEKS                       R18 R1 K6 ["setPreviewAnimationParameters"]
      101 SETLIST                          R14 R15 4 [1]
      103 CALL                             R12 2 0
      104 DUPTABLE                         R12 K13 [{"parameterOverrides", "numOverrides", "removeParameterOverrideAsync", "setParameterOverrideValueAsync", "incrementParameterOverrideCountAsync", "decrementParameterOverrideCountAsync"}]
      105 SETTABLEKS                       R2 R12 K7 ["parameterOverrides"]
      107 SETTABLEKS                       R4 R12 K8 ["numOverrides"]
      109 SETTABLEKS                       R9 R12 K9 ["removeParameterOverrideAsync"]
      111 SETTABLEKS                       R8 R12 K10 ["setParameterOverrideValueAsync"]
      113 SETTABLEKS                       R10 R12 K11 ["incrementParameterOverrideCountAsync"]
      115 SETTABLEKS                       R11 R12 K12 ["decrementParameterOverrideCountAsync"]
      117 GETUPVAL                         R13 3
      118 GETTABLEKS                       R13 R13 K14 ["useReplicatedState"]
      120 GETUPVAL                         R14 4
      121 GETTABLEKS                       R14 R14 K15 ["PARAMETER_OVERRIDES_MAP"]
      123 MOVE                             R15 R2
      124 CALL                             R13 2 0
      125 GETUPVAL                         R13 3
      126 GETTABLEKS                       R13 R13 K14 ["useReplicatedState"]
      128 GETUPVAL                         R14 4
      129 GETTABLEKS                       R14 R14 K16 ["NUM_OVERRIDES"]
      131 MOVE                             R15 R4
      132 CALL                             R13 2 0
      133 GETUPVAL                         R13 3
      134 GETTABLEKS                       R13 R13 K17 ["useBoundAction"]
      136 GETUPVAL                         R14 5
      137 GETTABLEKS                       R14 R14 K18 ["REMOVE_PARAMETER_OVERRIDE"]
      139 MOVE                             R15 R9
      140 CALL                             R13 2 0
      141 GETUPVAL                         R13 3
      142 GETTABLEKS                       R13 R13 K17 ["useBoundAction"]
      144 GETUPVAL                         R14 5
      145 GETTABLEKS                       R14 R14 K19 ["SET_PARAMETER_OVERRIDE_VALUE"]
      147 MOVE                             R15 R8
      148 CALL                             R13 2 0
      149 GETUPVAL                         R13 3
      150 GETTABLEKS                       R13 R13 K17 ["useBoundAction"]
      152 GETUPVAL                         R14 5
      153 GETTABLEKS                       R14 R14 K20 ["INCREMENT_PARAMETER_OVERRIDE_COUNT"]
      155 MOVE                             R15 R10
      156 CALL                             R13 2 0
      157 GETUPVAL                         R13 3
      158 GETTABLEKS                       R13 R13 K17 ["useBoundAction"]
      160 GETUPVAL                         R14 5
      161 GETTABLEKS                       R14 R14 K21 ["DECREMENT_PARAMETER_OVERRIDE_COUNT"]
      163 MOVE                             R15 R11
      164 CALL                             R13 2 0
      165 GETUPVAL                         R13 0
      166 GETTABLEKS                       R13 R13 K22 ["createElement"]
      168 GETUPVAL                         R14 6
      169 GETTABLEKS                       R14 R14 K23 ["Provider"]
      171 DUPTABLE                         R15 K25 [{"value"}]
      172 SETTABLEKS                       R12 R15 K24 ["value"]
      174 GETTABLEKS                       R16 R0 K26 ["children"]
      176 CALL                             R13 3 -1
      177 RETURN                           R13 -1

PROTO_10:
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
       17 DUPTABLE                         R3 K9 [{"parameterOverrides", "numOverrides", "removeParameterOverrideAsync", "setParameterOverrideValueAsync", "incrementParameterOverrideCountAsync", "decrementParameterOverrideCountAsync"}]
       18 SETTABLEKS                       R1 R3 K3 ["parameterOverrides"]
       20 SETTABLEKS                       R2 R3 K4 ["numOverrides"]
       22 GETUPVAL                         R4 0
       23 GETTABLEKS                       R4 R4 K10 ["useBoundAction"]
       25 GETUPVAL                         R5 2
       26 GETTABLEKS                       R5 R5 K11 ["REMOVE_PARAMETER_OVERRIDE"]
       28 CALL                             R4 1 1
       29 SETTABLEKS                       R4 R3 K5 ["removeParameterOverrideAsync"]
       31 GETUPVAL                         R4 0
       32 GETTABLEKS                       R4 R4 K10 ["useBoundAction"]
       34 GETUPVAL                         R5 2
       35 GETTABLEKS                       R5 R5 K12 ["SET_PARAMETER_OVERRIDE_VALUE"]
       37 CALL                             R4 1 1
       38 SETTABLEKS                       R4 R3 K6 ["setParameterOverrideValueAsync"]
       40 GETUPVAL                         R4 0
       41 GETTABLEKS                       R4 R4 K10 ["useBoundAction"]
       43 GETUPVAL                         R5 2
       44 GETTABLEKS                       R5 R5 K13 ["INCREMENT_PARAMETER_OVERRIDE_COUNT"]
       46 CALL                             R4 1 1
       47 SETTABLEKS                       R4 R3 K7 ["incrementParameterOverrideCountAsync"]
       49 GETUPVAL                         R4 0
       50 GETTABLEKS                       R4 R4 K10 ["useBoundAction"]
       52 GETUPVAL                         R5 2
       53 GETTABLEKS                       R5 R5 K14 ["DECREMENT_PARAMETER_OVERRIDE_COUNT"]
       55 CALL                             R4 1 1
       56 SETTABLEKS                       R4 R3 K8 ["decrementParameterOverrideCountAsync"]
       58 GETUPVAL                         R4 3
       59 GETTABLEKS                       R4 R4 K15 ["createElement"]
       61 GETUPVAL                         R5 4
       62 GETTABLEKS                       R5 R5 K16 ["Provider"]
       64 DUPTABLE                         R6 K18 [{"value"}]
       65 SETTABLEKS                       R3 R6 K17 ["value"]
       67 GETTABLEKS                       R7 R0 K19 ["children"]
       69 CALL                             R4 3 -1
       70 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Contexts"]
       11 GETTABLEKS                       R2 R2 K7 ["AnimationParameterContext"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Util"]
       18 GETTABLEKS                       R3 R3 K9 ["Networking"]
       20 GETTABLEKS                       R3 R3 K10 ["NetworkUtils"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Contexts"]
       27 GETTABLEKS                       R4 R4 K11 ["ParameterOverrideContext"]
       29 GETTABLEKS                       R4 R4 K12 ["ParameterOverrideUtils"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K13 ["Parent"]
       36 GETTABLEKS                       R5 R5 K14 ["React"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K13 ["Parent"]
       43 GETTABLEKS                       R6 R6 K15 ["ReactUtils"]
       45 CALL                             R5 1 1
       46 DUPTABLE                         R6 K22 [{"parameterOverrides", "numOverrides", "removeParameterOverrideAsync", "setParameterOverrideValueAsync", "incrementParameterOverrideCountAsync", "decrementParameterOverrideCountAsync"}]
       47 NEWTABLE                         R7 0 0
       49 SETTABLEKS                       R7 R6 K16 ["parameterOverrides"]
       51 LOADN                            R7 0
       52 SETTABLEKS                       R7 R6 K17 ["numOverrides"]
       54 GETTABLEKS                       R7 R5 K23 ["createUnimplemented"]
       56 LOADK                            R8 K18 ["removeParameterOverrideAsync"]
       57 CALL                             R7 1 1
       58 SETTABLEKS                       R7 R6 K18 ["removeParameterOverrideAsync"]
       60 GETTABLEKS                       R7 R5 K23 ["createUnimplemented"]
       62 LOADK                            R8 K19 ["setParameterOverrideValueAsync"]
       63 CALL                             R7 1 1
       64 SETTABLEKS                       R7 R6 K19 ["setParameterOverrideValueAsync"]
       66 GETTABLEKS                       R7 R5 K23 ["createUnimplemented"]
       68 LOADK                            R8 K20 ["incrementParameterOverrideCountAsync"]
       69 CALL                             R7 1 1
       70 SETTABLEKS                       R7 R6 K20 ["incrementParameterOverrideCountAsync"]
       72 GETTABLEKS                       R7 R5 K23 ["createUnimplemented"]
       74 LOADK                            R8 K21 ["decrementParameterOverrideCountAsync"]
       75 CALL                             R7 1 1
       76 SETTABLEKS                       R7 R6 K21 ["decrementParameterOverrideCountAsync"]
       78 GETTABLEKS                       R7 R4 K24 ["createContext"]
       80 MOVE                             R8 R6
       81 CALL                             R7 1 1
       82 DUPTABLE                         R8 K27 [{"PARAMETER_OVERRIDES_MAP", "NUM_OVERRIDES"}]
       83 LOADK                            R9 K28 ["ParameterOverrideContext_ParameterOverridesState"]
       84 SETTABLEKS                       R9 R8 K25 ["PARAMETER_OVERRIDES_MAP"]
       86 LOADK                            R9 K29 ["ParameterOverrideContext_NumOverridesState"]
       87 SETTABLEKS                       R9 R8 K26 ["NUM_OVERRIDES"]
       89 DUPTABLE                         R9 K34 [{"REMOVE_PARAMETER_OVERRIDE", "SET_PARAMETER_OVERRIDE_VALUE", "INCREMENT_PARAMETER_OVERRIDE_COUNT", "DECREMENT_PARAMETER_OVERRIDE_COUNT"}]
       90 LOADK                            R10 K35 ["ParameterOverrideContext_RemoveParameterOverride"]
       91 SETTABLEKS                       R10 R9 K30 ["REMOVE_PARAMETER_OVERRIDE"]
       93 LOADK                            R10 K36 ["ParameterOverrideContext_SetParameterOverrideValue"]
       94 SETTABLEKS                       R10 R9 K31 ["SET_PARAMETER_OVERRIDE_VALUE"]
       96 LOADK                            R10 K37 ["ParameterOverrideContext_IncrementParameterOverrideCount"]
       97 SETTABLEKS                       R10 R9 K32 ["INCREMENT_PARAMETER_OVERRIDE_COUNT"]
       99 LOADK                            R10 K38 ["ParameterOverrideContext_DecrementParameterOverrideCount"]
      100 SETTABLEKS                       R10 R9 K33 ["DECREMENT_PARAMETER_OVERRIDE_COUNT"]
      102 DUPCLOSURE                       R10 K39 [PROTO_9]
      103 CAPTURE                          VAL R4
      104 CAPTURE                          VAL R1
      105 CAPTURE                          VAL R3
      106 CAPTURE                          VAL R2
      107 CAPTURE                          VAL R8
      108 CAPTURE                          VAL R9
      109 CAPTURE                          VAL R7
      110 DUPCLOSURE                       R11 K40 [PROTO_10]
      111 CAPTURE                          VAL R2
      112 CAPTURE                          VAL R8
      113 CAPTURE                          VAL R9
      114 CAPTURE                          VAL R4
      115 CAPTURE                          VAL R7
      116 DUPTABLE                         R12 K44 [{"Context", "EditableDataModelProvider", "UIDataModelProvider"}]
      117 SETTABLEKS                       R7 R12 K41 ["Context"]
      119 SETTABLEKS                       R10 R12 K42 ["EditableDataModelProvider"]
      121 SETTABLEKS                       R11 R12 K43 ["UIDataModelProvider"]
      123 RETURN                           R12 1
