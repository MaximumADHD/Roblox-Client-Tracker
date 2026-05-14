PROTO_0:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"active"}]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K2 ["state"]
        5 GETTABLEKS                       R4 R4 K0 ["active"]
        7 NOT                              R3 R4
        8 SETTABLEKS                       R3 R2 K0 ["active"]
       10 NAMECALL                         R0 R0 K3 ["setState"]
       12 CALL                             R0 2 0
       13 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R3 K1 [{"active"}]
        1 LOADB                            R4 0
        2 SETTABLEKS                       R4 R3 K0 ["active"]
        4 NAMECALL                         R1 R0 K2 ["setState"]
        6 CALL                             R1 2 0
        7 NEWCLOSURE                       R1 P0
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R1 R0 K3 ["toggleActive"]
       11 GETUPVAL                         R1 0
       12 CALL                             R1 0 1
       13 JUMPIFNOT                        R1 ; [+11]
       14 GETTABLEKS                       R1 R0 K4 ["props"]
       16 GETTABLEKS                       R1 R1 K5 ["pluginLoaderContext"]
       18 GETTABLEKS                       R1 R1 K6 ["mainButtonClickedSignal"]
       20 GETTABLEKS                       R3 R0 K3 ["toggleActive"]
       22 NAMECALL                         R1 R1 K7 ["Connect"]
       24 CALL                             R1 2 0
       25 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"active"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["active"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Plugin"]
        4 NAMECALL                         R1 R1 K2 ["get"]
        6 CALL                             R1 1 1
        7 GETTABLEKS                       R1 R1 K3 ["Deactivation"]
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          VAL R0
       11 NAMECALL                         R1 R1 K4 ["Connect"]
       13 CALL                             R1 2 1
       14 SETTABLEKS                       R1 R0 K5 ["_deactivatedConnection"]
       16 GETTABLEKS                       R1 R0 K6 ["state"]
       18 GETTABLEKS                       R1 R1 K7 ["active"]
       20 JUMPIFNOT                        R1 ; [+21]
       21 GETTABLEKS                       R1 R0 K0 ["props"]
       23 GETTABLEKS                       R1 R1 K1 ["Plugin"]
       25 NAMECALL                         R1 R1 K2 ["get"]
       27 CALL                             R1 1 1
       28 LOADB                            R3 1
       29 NAMECALL                         R1 R1 K8 ["Activate"]
       31 CALL                             R1 2 0
       32 GETTABLEKS                       R1 R0 K0 ["props"]
       34 GETTABLEKS                       R1 R1 K9 ["pluginLoaderContext"]
       36 GETTABLEKS                       R1 R1 K10 ["mainButton"]
       38 LOADB                            R3 1
       39 NAMECALL                         R1 R1 K11 ["SetActive"]
       41 CALL                             R1 2 0
       42 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["_deactivatedConnection"]
        2 NAMECALL                         R1 R1 K1 ["Disconnect"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R3 R2 K0 ["active"]
        2 JUMPIFNOT                        R3 ; [+16]
        3 GETTABLEKS                       R3 R0 K1 ["state"]
        5 GETTABLEKS                       R3 R3 K0 ["active"]
        7 JUMPIF                           R3 ; [+11]
        8 GETTABLEKS                       R3 R0 K2 ["props"]
       10 GETTABLEKS                       R3 R3 K3 ["Plugin"]
       12 NAMECALL                         R3 R3 K4 ["get"]
       14 CALL                             R3 1 1
       15 LOADB                            R5 1
       16 NAMECALL                         R3 R3 K5 ["Activate"]
       18 CALL                             R3 2 0
       19 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["pluginLoaderContext"]
        4 GETTABLEKS                       R1 R1 K2 ["mainButton"]
        6 GETTABLEKS                       R3 R0 K3 ["state"]
        8 GETTABLEKS                       R3 R3 K4 ["active"]
       10 NAMECALL                         R1 R1 K5 ["SetActive"]
       12 CALL                             R1 2 0
       13 RETURN                           R0 0

PROTO_7:
        0 LOADB                            R1 0
        1 LOADN                            R2 0
        2 GETIMPORT                        R3 K1 [ipairs]
        4 GETUPVAL                         R4 0
        5 NAMECALL                         R4 R4 K2 ["Get"]
        7 CALL                             R4 1 -1
        8 CALL                             R3 -1 3
        9 FORGPREP_INEXT                   R3
       10 LOADK                            R10 K3 ["BasePart"]
       11 NAMECALL                         R8 R7 K4 ["IsA"]
       13 CALL                             R8 2 1
       14 JUMPIFNOT                        R8 ; [+15]
       15 ADDK                             R2 R2 K5 [1]
       16 GETTABLEKS                       R8 R7 K6 ["PivotOffset"]
       18 GETIMPORT                        R9 K9 [CFrame.new]
       20 CALL                             R9 0 1
       21 JUMPIFEQ                         R8 R9 ; [+58]
       23 GETIMPORT                        R8 K9 [CFrame.new]
       25 CALL                             R8 0 1
       26 SETTABLEKS                       R8 R7 K6 ["PivotOffset"]
       28 LOADB                            R1 1
       29 JUMP                             ; [+50]
       30 LOADK                            R10 K10 ["Model"]
       31 NAMECALL                         R8 R7 K4 ["IsA"]
       33 CALL                             R8 2 1
       34 JUMPIFNOT                        R8 ; [+45]
       35 GETUPVAL                         R8 1
       36 CALL                             R8 0 1
       37 JUMPIFNOT                        R8 ; [+5]
       38 LOADK                            R10 K11 ["ProceduralModel"]
       39 NAMECALL                         R8 R7 K4 ["IsA"]
       41 CALL                             R8 2 1
       42 JUMPIF                           R8 ; [+37]
       43 ADDK                             R2 R2 K5 [1]
       44 GETTABLEKS                       R8 R7 K12 ["PrimaryPart"]
       46 JUMPIFNOT                        R8 ; [+21]
       47 GETTABLEKS                       R8 R7 K12 ["PrimaryPart"]
       49 GETTABLEKS                       R8 R8 K6 ["PivotOffset"]
       51 GETIMPORT                        R9 K14 [CFrame.identity]
       53 JUMPIFEQ                         R8 R9 ; [+26]
       55 GETTABLEKS                       R8 R7 K12 ["PrimaryPart"]
       57 GETIMPORT                        R9 K14 [CFrame.identity]
       59 SETTABLEKS                       R9 R8 K6 ["PivotOffset"]
       61 NAMECALL                         R8 R7 K15 ["GetPivot"]
       63 CALL                             R8 1 1
       64 SETTABLEKS                       R8 R7 K16 ["WorldPivot"]
       66 LOADB                            R1 1
       67 JUMP                             ; [+12]
       68 GETUPVAL                         R8 2
       69 MOVE                             R9 R7
       70 CALL                             R8 1 1
       71 GETTABLEKS                       R9 R7 K16 ["WorldPivot"]
       73 JUMPIFEQ                         R8 R9 ; [+6]
       75 GETUPVAL                         R9 3
       76 MOVE                             R10 R7
       77 MOVE                             R11 R8
       78 CALL                             R9 2 0
       79 LOADB                            R1 1
       80 FORGLOOP                         R3 2 [inext] ; [-71]
       82 JUMPIFNOT                        R1 ; [+5]
       83 GETUPVAL                         R3 4
       84 LOADK                            R5 K17 ["Clear Pivot"]
       85 NAMECALL                         R3 R3 K18 ["SetWaypoint"]
       87 CALL                             R3 2 0
       88 GETUPVAL                         R3 5
       89 LOADK                            R5 K19 ["clearPivot"]
       90 DUPTABLE                         R6 K21 [{"objectCount"}]
       91 SETTABLEKS                       R2 R6 K20 ["objectCount"]
       93 NAMECALL                         R3 R3 K22 ["sendEvent"]
       95 CALL                             R3 3 0
       96 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["_onClearPivot"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_9:
        0 NEWTABLE                         R1 2 0
        2 GETUPVAL                         R3 0
        3 CALL                             R3 0 1
        4 JUMPIF                           R3 ; [+30]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K0 ["createElement"]
        8 GETUPVAL                         R3 2
        9 DUPTABLE                         R4 K7 [{"Toolbar", "Title", "Tooltip", "Icon", "Active", "OnClick"}]
       10 SETTABLEKS                       R0 R4 K1 ["Toolbar"]
       12 LOADK                            R5 K8 ["EditPivot"]
       13 SETTABLEKS                       R5 R4 K2 ["Title"]
       15 LOADK                            R5 K9 [""]
       16 SETTABLEKS                       R5 R4 K3 ["Tooltip"]
       18 LOADK                            R5 K9 [""]
       19 SETTABLEKS                       R5 R4 K4 ["Icon"]
       21 GETUPVAL                         R5 3
       22 GETTABLEKS                       R5 R5 K10 ["state"]
       24 GETTABLEKS                       R5 R5 K11 ["active"]
       26 SETTABLEKS                       R5 R4 K5 ["Active"]
       28 GETUPVAL                         R5 3
       29 GETTABLEKS                       R5 R5 K12 ["toggleActive"]
       31 SETTABLEKS                       R5 R4 K6 ["OnClick"]
       33 CALL                             R2 2 1
       34 JUMP                             ; [+1]
       35 LOADNIL                          R2
       36 SETTABLEKS                       R2 R1 K8 ["EditPivot"]
       38 GETUPVAL                         R2 1
       39 GETTABLEKS                       R2 R2 K0 ["createElement"]
       41 GETUPVAL                         R3 2
       42 DUPTABLE                         R4 K14 [{"Toolbar", "Title", "Tooltip", "Icon", "Active", "Enabled", "OnClick"}]
       43 SETTABLEKS                       R0 R4 K1 ["Toolbar"]
       45 LOADK                            R5 K15 ["ClearPivot"]
       46 SETTABLEKS                       R5 R4 K2 ["Title"]
       48 LOADK                            R5 K9 [""]
       49 SETTABLEKS                       R5 R4 K3 ["Tooltip"]
       51 LOADK                            R5 K9 [""]
       52 SETTABLEKS                       R5 R4 K4 ["Icon"]
       54 LOADB                            R5 0
       55 SETTABLEKS                       R5 R4 K5 ["Active"]
       57 LOADB                            R5 1
       58 SETTABLEKS                       R5 R4 K13 ["Enabled"]
       60 NEWCLOSURE                       R5 P0
       61 CAPTURE                          UPVAL U3
       62 SETTABLEKS                       R5 R4 K6 ["OnClick"]
       64 CALL                             R2 2 1
       65 SETTABLEKS                       R2 R1 K15 ["ClearPivot"]
       67 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createFragment"]
        3 DUPTABLE                         R2 K3 [{"Toolbar", "Session"}]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K4 ["createElement"]
        7 GETUPVAL                         R4 1
        8 DUPTABLE                         R5 K7 [{"Title", "RenderButtons"}]
        9 LOADK                            R6 K8 ["Pivot"]
       10 SETTABLEKS                       R6 R5 K5 ["Title"]
       12 NEWCLOSURE                       R6 P0
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          UPVAL U0
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          VAL R0
       17 SETTABLEKS                       R6 R5 K6 ["RenderButtons"]
       19 CALL                             R3 2 1
       20 SETTABLEKS                       R3 R2 K1 ["Toolbar"]
       22 GETTABLEKS                       R3 R0 K9 ["state"]
       24 GETTABLEKS                       R3 R3 K10 ["active"]
       26 JUMPIFNOT                        R3 ; [+5]
       27 GETUPVAL                         R3 0
       28 GETTABLEKS                       R3 R3 K4 ["createElement"]
       30 GETUPVAL                         R4 4
       31 CALL                             R3 1 1
       32 SETTABLEKS                       R3 R2 K2 ["Session"]
       34 CALL                             R1 1 -1
       35 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Selection"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["ChangeHistoryService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K6 [script]
       15 GETTABLEKS                       R2 R2 K7 ["Parent"]
       17 GETTABLEKS                       R2 R2 K7 ["Parent"]
       19 GETTABLEKS                       R2 R2 K7 ["Parent"]
       21 GETIMPORT                        R3 K9 [require]
       23 GETTABLEKS                       R4 R2 K10 ["Packages"]
       25 GETTABLEKS                       R4 R4 K11 ["Framework"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K9 [require]
       30 GETTABLEKS                       R5 R2 K10 ["Packages"]
       32 GETTABLEKS                       R5 R5 K12 ["Roact"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R3 K13 ["ContextServices"]
       37 GETTABLEKS                       R6 R5 K14 ["withContext"]
       39 GETTABLEKS                       R7 R3 K15 ["UI"]
       41 GETTABLEKS                       R8 R7 K16 ["PluginButton"]
       43 GETTABLEKS                       R9 R7 K17 ["PluginToolbar"]
       45 GETIMPORT                        R10 K9 [require]
       47 GETTABLEKS                       R11 R2 K10 ["Packages"]
       49 GETTABLEKS                       R11 R11 K18 ["DraggerFramework"]
       51 GETTABLEKS                       R11 R11 K19 ["Utility"]
       53 GETTABLEKS                       R11 R11 K20 ["Analytics"]
       55 CALL                             R10 1 1
       56 GETIMPORT                        R11 K9 [require]
       58 GETTABLEKS                       R12 R2 K21 ["Src"]
       60 GETTABLEKS                       R12 R12 K22 ["RoduxComponents"]
       62 GETTABLEKS                       R12 R12 K23 ["EditPivotSession"]
       64 CALL                             R11 1 1
       65 GETIMPORT                        R12 K9 [require]
       67 GETTABLEKS                       R13 R2 K21 ["Src"]
       69 GETTABLEKS                       R13 R13 K19 ["Utility"]
       71 GETTABLEKS                       R13 R13 K24 ["setWorldPivot"]
       73 CALL                             R12 1 1
       74 GETIMPORT                        R13 K9 [require]
       76 GETTABLEKS                       R14 R2 K21 ["Src"]
       78 GETTABLEKS                       R14 R14 K19 ["Utility"]
       80 GETTABLEKS                       R14 R14 K25 ["getDefaultModelPivot"]
       82 CALL                             R13 1 1
       83 GETTABLEKS                       R14 R4 K26 ["PureComponent"]
       85 LOADK                            R16 K27 ["EditPivotPlugin"]
       86 NAMECALL                         R14 R14 K28 ["extend"]
       88 CALL                             R14 2 1
       89 GETIMPORT                        R15 K9 [require]
       91 GETTABLEKS                       R16 R2 K21 ["Src"]
       93 GETTABLEKS                       R16 R16 K29 ["Flags"]
       95 GETTABLEKS                       R16 R16 K30 ["getFFlagImprovePluginSpeedPivotEditor"]
       97 CALL                             R15 1 1
       98 GETIMPORT                        R16 K9 [require]
      100 GETTABLEKS                       R17 R2 K10 ["Packages"]
      102 GETTABLEKS                       R17 R17 K18 ["DraggerFramework"]
      104 GETTABLEKS                       R17 R17 K29 ["Flags"]
      106 GETTABLEKS                       R17 R17 K31 ["getFFlagDraggerEditProcModels"]
      108 CALL                             R16 1 1
      109 DUPCLOSURE                       R17 K32 [PROTO_1]
      110 CAPTURE                          VAL R15
      111 SETTABLEKS                       R17 R14 K33 ["init"]
      113 DUPCLOSURE                       R17 K34 [PROTO_3]
      114 SETTABLEKS                       R17 R14 K35 ["didMount"]
      116 DUPCLOSURE                       R17 K36 [PROTO_4]
      117 SETTABLEKS                       R17 R14 K37 ["willUnmount"]
      119 DUPCLOSURE                       R17 K38 [PROTO_5]
      120 SETTABLEKS                       R17 R14 K39 ["willUpdate"]
      122 MOVE                             R17 R15
      123 CALL                             R17 0 1
      124 JUMPIFNOT                        R17 ; [+3]
      125 DUPCLOSURE                       R17 K40 [PROTO_6]
      126 SETTABLEKS                       R17 R14 K41 ["didUpdate"]
      128 DUPCLOSURE                       R17 K42 [PROTO_7]
      129 CAPTURE                          VAL R0
      130 CAPTURE                          VAL R16
      131 CAPTURE                          VAL R13
      132 CAPTURE                          VAL R12
      133 CAPTURE                          VAL R1
      134 CAPTURE                          VAL R10
      135 SETTABLEKS                       R17 R14 K43 ["_onClearPivot"]
      137 DUPCLOSURE                       R17 K44 [PROTO_10]
      138 CAPTURE                          VAL R4
      139 CAPTURE                          VAL R9
      140 CAPTURE                          VAL R15
      141 CAPTURE                          VAL R8
      142 CAPTURE                          VAL R11
      143 SETTABLEKS                       R17 R14 K45 ["render"]
      145 MOVE                             R17 R6
      146 DUPTABLE                         R18 K47 [{"Plugin"}]
      147 GETTABLEKS                       R19 R5 K46 ["Plugin"]
      149 SETTABLEKS                       R19 R18 K46 ["Plugin"]
      151 CALL                             R17 1 1
      152 MOVE                             R18 R14
      153 CALL                             R17 1 1
      154 MOVE                             R14 R17
      155 RETURN                           R14 1
