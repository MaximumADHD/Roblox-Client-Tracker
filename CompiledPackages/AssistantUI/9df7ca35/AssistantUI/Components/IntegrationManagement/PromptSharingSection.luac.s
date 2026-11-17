PROTO_0:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 MOVE                             R3 R1
        6 CALL                             R2 1 0
        7 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R1
        3 CALL                             R2 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["enabledObservable"]
        3 GETUPVAL                         R2 1
        4 LOADB                            R3 1
        5 NAMECALL                         R0 R0 K1 ["connect"]
        7 CALL                             R0 3 1
        8 NEWCLOSURE                       R1 P0
        9 CAPTURE                          VAL R0
       10 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["loadAsync"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 JUMPIF                           R0 ; [+6]
        6 GETUPVAL                         R0 2
        7 GETTABLEKS                       R0 R0 K1 ["cleanUpIfInstalledAsync"]
        9 GETUPVAL                         R1 1
       10 CALL                             R0 1 0
       11 RETURN                           R0 0
       12 GETUPVAL                         R0 3
       13 GETTABLEKS                       R0 R0 K2 ["isServerRunning"]
       15 JUMPIF                           R0 ; [+1]
       16 RETURN                           R0 0
       17 GETUPVAL                         R0 2
       18 GETTABLEKS                       R0 R0 K3 ["getStatusAsync"]
       20 GETUPVAL                         R1 1
       21 CALL                             R0 1 3
       22 FORGPREP                         R0
       23 JUMPIFNOTEQKS                    R4 K4 ["notInstalled"] ; [+10]
       25 GETUPVAL                         R5 2
       26 GETTABLEKS                       R5 R5 K5 ["installAsync"]
       28 GETUPVAL                         R6 1
       29 GETUPVAL                         R7 4
       30 GETTABLEKS                       R7 R7 K6 ["current"]
       32 CALL                             R5 2 0
       33 RETURN                           R0 0
       34 FORGLOOP                         R0 2 ; [-12]
       36 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["run"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setEnabledAsync"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 1
        6 GETUPVAL                         R1 2
        7 JUMPIFNOT                        R1 ; [+11]
        8 JUMPIF                           R0 ; [+1]
        9 RETURN                           R0 0
       10 GETUPVAL                         R1 3
       11 GETTABLEKS                       R1 R1 K1 ["installAsync"]
       13 GETUPVAL                         R2 1
       14 GETUPVAL                         R3 4
       15 GETTABLEKS                       R3 R3 K2 ["current"]
       17 CALL                             R1 2 0
       18 RETURN                           R0 0
       19 GETUPVAL                         R1 3
       20 GETTABLEKS                       R1 R1 K3 ["uninstallAsync"]
       22 GETUPVAL                         R2 1
       23 CALL                             R1 1 0
       24 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["run"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K0 ["get"]
        7 CALL                             R3 0 1
        8 GETUPVAL                         R4 3
        9 GETTABLEKS                       R4 R4 K1 ["useState"]
       11 GETUPVAL                         R5 4
       12 GETTABLEKS                       R5 R5 K2 ["isEnabled"]
       14 CALL                             R5 0 -1
       15 CALL                             R4 -1 2
       16 GETUPVAL                         R6 3
       17 GETTABLEKS                       R6 R6 K1 ["useState"]
       19 DUPTABLE                         R7 K5 [{["expanded"] = True}]
       20 CALL                             R6 1 2
       21 GETUPVAL                         R8 3
       22 GETTABLEKS                       R8 R8 K6 ["useCallback"]
       24 NEWCLOSURE                       R9 P0
       25 CAPTURE                          VAL R7
       26 NEWTABLE                         R10 0 0
       28 CALL                             R8 2 1
       29 GETUPVAL                         R9 3
       30 GETTABLEKS                       R9 R9 K7 ["useEffect"]
       32 NEWCLOSURE                       R10 P1
       33 CAPTURE                          UPVAL U4
       34 CAPTURE                          VAL R5
       35 NEWTABLE                         R11 0 0
       37 CALL                             R9 2 0
       38 GETUPVAL                         R9 5
       39 GETTABLEKS                       R9 R9 K8 ["getServerEntry"]
       41 GETTABLEKS                       R10 R0 K9 ["mcpServerInfo"]
       43 CALL                             R9 1 1
       44 GETUPVAL                         R10 5
       45 GETTABLEKS                       R10 R10 K10 ["getServerCommand"]
       47 GETTABLEKS                       R11 R0 K9 ["mcpServerInfo"]
       49 CALL                             R10 1 1
       50 GETUPVAL                         R11 3
       51 GETTABLEKS                       R11 R11 K11 ["useRef"]
       53 GETTABLEKS                       R12 R0 K9 ["mcpServerInfo"]
       55 CALL                             R11 1 1
       56 GETTABLEKS                       R12 R0 K9 ["mcpServerInfo"]
       58 SETTABLEKS                       R12 R11 K12 ["current"]
       60 GETUPVAL                         R12 3
       61 GETTABLEKS                       R12 R12 K7 ["useEffect"]
       63 NEWCLOSURE                       R13 P2
       64 CAPTURE                          VAL R2
       65 CAPTURE                          UPVAL U4
       66 CAPTURE                          VAL R3
       67 CAPTURE                          UPVAL U5
       68 CAPTURE                          VAL R0
       69 CAPTURE                          VAL R11
       70 NEWTABLE                         R14 0 5
       72 MOVE                             R15 R3
       73 GETTABLEKS                       R16 R2 K13 ["run"]
       75 MOVE                             R17 R9
       76 MOVE                             R18 R10
       77 GETTABLEKS                       R19 R0 K14 ["isServerRunning"]
       79 SETLIST                          R14 R15 5 [1]
       81 CALL                             R12 2 0
       82 GETUPVAL                         R12 3
       83 GETTABLEKS                       R12 R12 K6 ["useCallback"]
       85 NEWCLOSURE                       R13 P3
       86 CAPTURE                          VAL R2
       87 CAPTURE                          UPVAL U4
       88 CAPTURE                          VAL R3
       89 CAPTURE                          UPVAL U5
       90 CAPTURE                          VAL R11
       91 NEWTABLE                         R14 0 2
       93 MOVE                             R15 R3
       94 GETTABLEKS                       R16 R2 K13 ["run"]
       96 SETLIST                          R14 R15 2 [1]
       98 CALL                             R12 2 1
       99 MOVE                             R13 R4
      100 JUMPIFNOT                        R13 ; [+2]
      101 GETTABLEKS                       R13 R0 K14 ["isServerRunning"]
      103 GETUPVAL                         R14 6
      104 GETUPVAL                         R15 7
      105 DUPTABLE                         R16 K19 [{["testId"], ["tag"] = "size-full-0 auto-y", ["LayoutOrder"]}]
      106 GETUPVAL                         R17 8
      107 GETTABLEKS                       R17 R17 K20 ["McpSetup"]
      109 GETTABLEKS                       R17 R17 K21 ["PromptSharingSection"]
      111 SETTABLEKS                       R17 R16 K15 ["testId"]
      113 GETTABLEKS                       R17 R0 K18 ["LayoutOrder"]
      115 SETTABLEKS                       R17 R16 K18 ["LayoutOrder"]
      117 DUPTABLE                         R17 K23 [{"Accordion"}]
      118 GETUPVAL                         R18 6
      119 GETUPVAL                         R19 9
      120 GETTABLEKS                       R19 R19 K24 ["Root"]
      122 DUPTABLE                         R20 K28 [{["expanded"], ["contentId"] = "prompt_sharing", ["editThisContent"]}]
      123 GETTABLEKS                       R21 R6 K3 ["expanded"]
      125 SETTABLEKS                       R21 R20 K3 ["expanded"]
      127 SETTABLEKS                       R8 R20 K27 ["editThisContent"]
      129 DUPTABLE                         R21 K31 [{"Header", "Content"}]
      130 GETUPVAL                         R22 6
      131 GETUPVAL                         R23 9
      132 GETTABLEKS                       R23 R23 K29 ["Header"]
      134 DUPTABLE                         R24 K38 [{["LayoutOrder"], ["AutomaticHeight"] = True, ["IconSize"] = "medium", ["VerticalAlignment"] = "center", ["IsDisabled"]}]
      135 MOVE                             R25 R1
      136 CALL                             R25 0 1
      137 SETTABLEKS                       R25 R24 K18 ["LayoutOrder"]
      139 GETTABLEKS                       R25 R0 K39 ["isDisabled"]
      141 SETTABLEKS                       R25 R24 K37 ["IsDisabled"]
      143 DUPTABLE                         R25 K41 [{"Title"}]
      144 GETUPVAL                         R26 6
      145 GETUPVAL                         R27 10
      146 DUPTABLE                         R28 K44 [{["tag"] = "auto-xy text-title-small text-align-x-left", ["Text"], ["LayoutOrder"]}]
      147 GETUPVAL                         R29 11
      148 LOADK                            R31 K20 ["McpSetup"]
      149 LOADK                            R32 K45 ["DataSharingTitle"]
      150 NAMECALL                         R29 R29 K46 ["getText"]
      152 CALL                             R29 3 1
      153 SETTABLEKS                       R29 R28 K43 ["Text"]
      155 MOVE                             R29 R1
      156 CALL                             R29 0 1
      157 SETTABLEKS                       R29 R28 K18 ["LayoutOrder"]
      159 CALL                             R26 2 1
      160 SETTABLEKS                       R26 R25 K40 ["Title"]
      162 CALL                             R22 3 1
      163 SETTABLEKS                       R22 R21 K29 ["Header"]
      165 GETUPVAL                         R22 6
      166 GETUPVAL                         R23 9
      167 GETTABLEKS                       R23 R23 K30 ["Content"]
      169 DUPTABLE                         R24 K50 [{["tag"] = "col gap-xxsmall size-full-0 auto-y", ["LayoutOrder"], ["UseVisible"] = True, ["disableVerticalBar"] = True}]
      170 MOVE                             R25 R1
      171 CALL                             R25 0 1
      172 SETTABLEKS                       R25 R24 K18 ["LayoutOrder"]
      174 DUPTABLE                         R25 K52 [{"Row"}]
      175 GETUPVAL                         R26 6
      176 GETUPVAL                         R27 7
      177 DUPTABLE                         R28 K54 [{["tag"] = "row align-y-center gap-small size-full-0 auto-y padding-y-xxsmall", ["LayoutOrder"]}]
      178 MOVE                             R29 R1
      179 CALL                             R29 0 1
      180 SETTABLEKS                       R29 R28 K18 ["LayoutOrder"]
      182 DUPTABLE                         R29 K57 [{"Description", "Toggle"}]
      183 GETUPVAL                         R30 6
      184 GETUPVAL                         R31 10
      185 DUPTABLE                         R32 K59 [{["tag"] = "grow size-0-0 auto-y text-body-small text-wrap text-align-x-left", ["Text"], ["LayoutOrder"]}]
      186 GETUPVAL                         R33 11
      187 LOADK                            R35 K20 ["McpSetup"]
      188 LOADK                            R36 K60 ["DataSharingDescription"]
      189 NAMECALL                         R33 R33 K46 ["getText"]
      191 CALL                             R33 3 1
      192 SETTABLEKS                       R33 R32 K43 ["Text"]
      194 MOVE                             R33 R1
      195 CALL                             R33 0 1
      196 SETTABLEKS                       R33 R32 K18 ["LayoutOrder"]
      198 CALL                             R30 2 1
      199 SETTABLEKS                       R30 R29 K55 ["Description"]
      201 GETUPVAL                         R30 6
      202 GETUPVAL                         R31 12
      203 DUPTABLE                         R32 K66 [{["testId"], ["label"] = "", ["isChecked"], ["isDisabled"], ["onActivated"], ["size"], ["LayoutOrder"]}]
      204 GETUPVAL                         R33 8
      205 GETTABLEKS                       R33 R33 K20 ["McpSetup"]
      207 GETTABLEKS                       R33 R33 K67 ["PromptSharingToggle"]
      209 SETTABLEKS                       R33 R32 K15 ["testId"]
      211 SETTABLEKS                       R13 R32 K63 ["isChecked"]
      213 GETTABLEKS                       R33 R0 K39 ["isDisabled"]
      215 JUMPIF                           R33 ; [+2]
      216 GETTABLEKS                       R33 R2 K68 ["isProcessing"]
      218 SETTABLEKS                       R33 R32 K39 ["isDisabled"]
      220 SETTABLEKS                       R12 R32 K64 ["onActivated"]
      222 GETUPVAL                         R33 13
      223 GETTABLEKS                       R33 R33 K69 ["Small"]
      225 SETTABLEKS                       R33 R32 K65 ["size"]
      227 MOVE                             R33 R1
      228 CALL                             R33 0 1
      229 SETTABLEKS                       R33 R32 K18 ["LayoutOrder"]
      231 CALL                             R30 2 1
      232 SETTABLEKS                       R30 R29 K56 ["Toggle"]
      234 CALL                             R26 3 1
      235 SETTABLEKS                       R26 R25 K51 ["Row"]
      237 CALL                             R22 3 1
      238 SETTABLEKS                       R22 R21 K30 ["Content"]
      240 CALL                             R18 3 1
      241 SETTABLEKS                       R18 R17 K22 ["Accordion"]
      243 CALL                             R14 3 -1
      244 RETURN                           R14 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["Accordion"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Guest"]
       18 GETTABLEKS                       R3 R3 K9 ["Environment"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Components"]
       25 GETTABLEKS                       R4 R4 K10 ["Contexts"]
       27 GETTABLEKS                       R4 R4 K11 ["ExternalServerContext"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K6 ["Components"]
       34 GETTABLEKS                       R5 R5 K12 ["IntegrationManagement"]
       36 GETTABLEKS                       R5 R5 K13 ["McpCaptureConsent"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K6 ["Components"]
       43 GETTABLEKS                       R6 R6 K12 ["IntegrationManagement"]
       45 GETTABLEKS                       R6 R6 K14 ["McpCaptureHooks"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R7 R0 K15 ["Util"]
       52 GETTABLEKS                       R7 R7 K16 ["TestIds"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R8 R0 K17 ["Resources"]
       59 GETTABLEKS                       R8 R8 K18 ["Localization"]
       61 GETTABLEKS                       R8 R8 K19 ["Translator"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K5 [require]
       66 GETTABLEKS                       R9 R0 K20 ["Parent"]
       68 GETTABLEKS                       R9 R9 K21 ["Foundation"]
       70 CALL                             R8 1 1
       71 GETIMPORT                        R9 K5 [require]
       73 GETTABLEKS                       R10 R0 K20 ["Parent"]
       75 GETTABLEKS                       R10 R10 K22 ["React"]
       77 CALL                             R9 1 1
       78 GETIMPORT                        R10 K5 [require]
       80 GETTABLEKS                       R11 R0 K20 ["Parent"]
       82 GETTABLEKS                       R11 R11 K23 ["ReactUtils"]
       84 CALL                             R10 1 1
       85 GETIMPORT                        R11 K5 [require]
       87 GETTABLEKS                       R12 R0 K24 ["Hooks"]
       89 GETTABLEKS                       R12 R12 K25 ["useAsyncGuard"]
       91 CALL                             R11 1 1
       92 GETTABLEKS                       R12 R8 K26 ["Text"]
       94 GETTABLEKS                       R13 R8 K27 ["Toggle"]
       96 GETTABLEKS                       R14 R8 K28 ["View"]
       98 GETTABLEKS                       R15 R8 K29 ["Enums"]
      100 GETTABLEKS                       R15 R15 K30 ["InputSize"]
      102 GETTABLEKS                       R16 R10 K31 ["createNextOrder"]
      104 GETTABLEKS                       R17 R9 K32 ["createElement"]
      106 DUPCLOSURE                       R18 K33 [PROTO_8]
      107 CAPTURE                          VAL R16
      108 CAPTURE                          VAL R11
      109 CAPTURE                          VAL R2
      110 CAPTURE                          VAL R9
      111 CAPTURE                          VAL R4
      112 CAPTURE                          VAL R5
      113 CAPTURE                          VAL R17
      114 CAPTURE                          VAL R14
      115 CAPTURE                          VAL R6
      116 CAPTURE                          VAL R1
      117 CAPTURE                          VAL R12
      118 CAPTURE                          VAL R7
      119 CAPTURE                          VAL R13
      120 CAPTURE                          VAL R15
      121 RETURN                           R18 1
