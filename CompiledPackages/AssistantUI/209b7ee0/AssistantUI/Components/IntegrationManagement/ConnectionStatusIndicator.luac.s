PROTO_0:
        0 LOADK                            R1 K0 [""]
        1 LOADK                            R2 K0 [""]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K1 ["Connected"]
        5 JUMPIFNOTEQ                      R0 R3 ; [+4]
        7 LOADK                            R1 K2 ["content-system-success"]
        8 LOADK                            R2 K3 ["component_assets/circle_16"]
        9 JUMP                             ; [+18]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R3 R4 K4 ["Disconnected"]
       13 JUMPIFNOTEQ                      R0 R3 ; [+4]
       15 LOADK                            R1 K5 ["content-system-neutral"]
       16 LOADK                            R2 K3 ["component_assets/circle_16"]
       17 JUMP                             ; [+10]
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R3 R4 K6 ["AuthorizationPending"]
       21 JUMPIFNOTEQ                      R0 R3 ; [+4]
       23 LOADK                            R1 K7 ["content-action-link"]
       24 LOADK                            R2 K8 ["icons/navigation/externallink"]
       25 JUMP                             ; [+2]
       26 LOADK                            R1 K9 ["content-system-alert"]
       27 LOADK                            R2 K3 ["component_assets/circle_16"]
       28 LOADB                            R4 0
       29 JUMPIFEQKS                       R1 K0 [""] ; [+5]
       31 JUMPIFNOTEQKS                    R2 K0 [""] ; [+2]
       33 LOADB                            R4 0 +1
       34 LOADB                            R4 1
       35 FASTCALL2K                       ASSERT R4 K10 ; [+4]
       37 LOADK                            R5 K10 ["Expected colorTag and icon to be set"]
       38 GETIMPORT                        R3 K12 [assert]
       40 CALL                             R3 2 0
       41 RETURN                           R1 2

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Connected"]
        3 JUMPIFNOTEQ                      R1 R2 ; [+4]
        5 GETTABLEKS                       R2 R0 K0 ["Connected"]
        7 RETURN                           R2 1
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R2 R3 K1 ["Disconnected"]
       11 JUMPIFNOTEQ                      R1 R2 ; [+4]
       13 GETTABLEKS                       R2 R0 K1 ["Disconnected"]
       15 RETURN                           R2 1
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R2 R3 K2 ["AuthorizationPending"]
       19 JUMPIFNOTEQ                      R1 R2 ; [+4]
       21 GETTABLEKS                       R2 R0 K2 ["AuthorizationPending"]
       23 RETURN                           R2 1
       24 GETUPVAL                         R3 0
       25 GETTABLEKS                       R2 R3 K3 ["UnsupportedProtocolVersion"]
       27 JUMPIFNOTEQ                      R1 R2 ; [+4]
       29 GETTABLEKS                       R2 R0 K4 ["Unsupported"]
       31 RETURN                           R2 1
       32 GETTABLEKS                       R2 R0 K5 ["ConnectionError"]
       34 RETURN                           R2 1

PROTO_2:
        0 DUPTABLE                         R0 K5 [{"Connected", "Disconnected", "AuthorizationPending", "ConnectionError", "Unsupported"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K6 ["IntegrationManagement"]
        3 LOADK                            R4 K0 ["Connected"]
        4 NAMECALL                         R1 R1 K7 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["Connected"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K6 ["IntegrationManagement"]
       11 LOADK                            R4 K1 ["Disconnected"]
       12 NAMECALL                         R1 R1 K7 ["getText"]
       14 CALL                             R1 3 1
       15 SETTABLEKS                       R1 R0 K1 ["Disconnected"]
       17 GETUPVAL                         R1 0
       18 LOADK                            R3 K6 ["IntegrationManagement"]
       19 LOADK                            R4 K2 ["AuthorizationPending"]
       20 NAMECALL                         R1 R1 K7 ["getText"]
       22 CALL                             R1 3 1
       23 SETTABLEKS                       R1 R0 K2 ["AuthorizationPending"]
       25 GETUPVAL                         R1 0
       26 LOADK                            R3 K6 ["IntegrationManagement"]
       27 LOADK                            R4 K3 ["ConnectionError"]
       28 NAMECALL                         R1 R1 K7 ["getText"]
       30 CALL                             R1 3 1
       31 SETTABLEKS                       R1 R0 K3 ["ConnectionError"]
       33 GETUPVAL                         R1 0
       34 LOADK                            R3 K6 ["IntegrationManagement"]
       35 LOADK                            R4 K8 ["UnsupportedVersion"]
       36 NAMECALL                         R1 R1 K7 ["getText"]
       38 CALL                             R1 3 1
       39 SETTABLEKS                       R1 R0 K4 ["Unsupported"]
       41 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useMemo"]
        3 DUPCLOSURE                       R2 K1 [PROTO_2]
        4 CAPTURE                          UPVAL U1
        5 NEWTABLE                         R3 0 1
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R4 R5 K2 ["locale"]
       10 SETLIST                          R3 R4 1 [1]
       12 CALL                             R1 2 1
       13 GETTABLEKS                       R5 R0 K3 ["connectionInformation"]
       15 GETTABLEKS                       R4 R5 K4 ["status"]
       17 LOADK                            R5 K5 [""]
       18 LOADK                            R6 K5 [""]
       19 GETUPVAL                         R8 2
       20 GETTABLEKS                       R7 R8 K6 ["Connected"]
       22 JUMPIFNOTEQ                      R4 R7 ; [+4]
       24 LOADK                            R5 K7 ["content-system-success"]
       25 LOADK                            R6 K8 ["component_assets/circle_16"]
       26 JUMP                             ; [+18]
       27 GETUPVAL                         R8 2
       28 GETTABLEKS                       R7 R8 K9 ["Disconnected"]
       30 JUMPIFNOTEQ                      R4 R7 ; [+4]
       32 LOADK                            R5 K10 ["content-system-neutral"]
       33 LOADK                            R6 K8 ["component_assets/circle_16"]
       34 JUMP                             ; [+10]
       35 GETUPVAL                         R8 2
       36 GETTABLEKS                       R7 R8 K11 ["AuthorizationPending"]
       38 JUMPIFNOTEQ                      R4 R7 ; [+4]
       40 LOADK                            R5 K12 ["content-action-link"]
       41 LOADK                            R6 K13 ["icons/navigation/externallink"]
       42 JUMP                             ; [+2]
       43 LOADK                            R5 K14 ["content-system-alert"]
       44 LOADK                            R6 K8 ["component_assets/circle_16"]
       45 LOADB                            R8 0
       46 JUMPIFEQKS                       R5 K5 [""] ; [+5]
       48 JUMPIFNOTEQKS                    R6 K5 [""] ; [+2]
       50 LOADB                            R8 0 +1
       51 LOADB                            R8 1
       52 FASTCALL2K                       ASSERT R8 K15 ; [+4]
       54 LOADK                            R9 K15 ["Expected colorTag and icon to be set"]
       55 GETIMPORT                        R7 K17 [assert]
       57 CALL                             R7 2 0
       58 MOVE                             R2 R5
       59 MOVE                             R3 R6
       60 GETTABLEKS                       R6 R0 K3 ["connectionInformation"]
       62 GETTABLEKS                       R5 R6 K4 ["status"]
       64 GETUPVAL                         R7 2
       65 GETTABLEKS                       R6 R7 K6 ["Connected"]
       67 JUMPIFNOTEQ                      R5 R6 ; [+4]
       69 GETTABLEKS                       R4 R1 K6 ["Connected"]
       71 JUMP                             ; [+26]
       72 GETUPVAL                         R7 2
       73 GETTABLEKS                       R6 R7 K9 ["Disconnected"]
       75 JUMPIFNOTEQ                      R5 R6 ; [+4]
       77 GETTABLEKS                       R4 R1 K9 ["Disconnected"]
       79 JUMP                             ; [+18]
       80 GETUPVAL                         R7 2
       81 GETTABLEKS                       R6 R7 K11 ["AuthorizationPending"]
       83 JUMPIFNOTEQ                      R5 R6 ; [+4]
       85 GETTABLEKS                       R4 R1 K11 ["AuthorizationPending"]
       87 JUMP                             ; [+10]
       88 GETUPVAL                         R7 2
       89 GETTABLEKS                       R6 R7 K18 ["UnsupportedProtocolVersion"]
       91 JUMPIFNOTEQ                      R5 R6 ; [+4]
       93 GETTABLEKS                       R4 R1 K19 ["Unsupported"]
       95 JUMP                             ; [+2]
       96 GETTABLEKS                       R4 R1 K20 ["ConnectionError"]
       98 GETUPVAL                         R5 3
       99 CALL                             R5 0 1
      100 GETUPVAL                         R6 4
      101 GETUPVAL                         R7 5
      102 DUPTABLE                         R8 K23 [{"tag", "LayoutOrder"}]
      103 LOADK                            R9 K24 ["row auto-xy align-y-center"]
      104 SETTABLEKS                       R9 R8 K21 ["tag"]
      106 GETTABLEKS                       R9 R0 K22 ["LayoutOrder"]
      108 SETTABLEKS                       R9 R8 K22 ["LayoutOrder"]
      110 DUPTABLE                         R9 K27 [{"Icon", "Text"}]
      111 GETUPVAL                         R10 4
      112 GETUPVAL                         R11 6
      113 DUPTABLE                         R12 K30 [{"icon", "tag", "iconTag", "LayoutOrder"}]
      114 SETTABLEKS                       R3 R12 K28 ["icon"]
      116 LOADK                            R13 K31 ["size-400-400 align-x-center align-y-center"]
      117 SETTABLEKS                       R13 R12 K21 ["tag"]
      119 NEWTABLE                         R13 2 0
      121 LOADB                            R14 1
      122 SETTABLEKS                       R14 R13 K32 ["size-200-200"]
      124 LOADB                            R14 1
      125 SETTABLE                         R14 R13 R2
      126 SETTABLEKS                       R13 R12 K29 ["iconTag"]
      128 MOVE                             R13 R5
      129 CALL                             R13 0 1
      130 SETTABLEKS                       R13 R12 K22 ["LayoutOrder"]
      132 CALL                             R10 2 1
      133 SETTABLEKS                       R10 R9 K25 ["Icon"]
      135 GETUPVAL                         R10 4
      136 GETUPVAL                         R11 7
      137 DUPTABLE                         R12 K34 [{"tag", "Text", "LayoutOrder", "onActivated"}]
      138 LOADK                            R13 K35 ["auto-xy text-body-small text-no-wrap text-align-x-left"]
      139 SETTABLEKS                       R13 R12 K21 ["tag"]
      141 SETTABLEKS                       R4 R12 K26 ["Text"]
      143 MOVE                             R13 R5
      144 CALL                             R13 0 1
      145 SETTABLEKS                       R13 R12 K22 ["LayoutOrder"]
      147 GETTABLEKS                       R15 R0 K3 ["connectionInformation"]
      149 GETTABLEKS                       R14 R15 K4 ["status"]
      151 GETUPVAL                         R16 2
      152 GETTABLEKS                       R15 R16 K11 ["AuthorizationPending"]
      154 JUMPIFNOTEQ                      R14 R15 ; [+4]
      156 GETTABLEKS                       R13 R0 K36 ["onLogin"]
      158 JUMP                             ; [+1]
      159 LOADNIL                          R13
      160 SETTABLEKS                       R13 R12 K33 ["onActivated"]
      162 CALL                             R10 2 1
      163 SETTABLEKS                       R10 R9 K26 ["Text"]
      165 CALL                             R6 3 -1
      166 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R4 K1 [script]
       11 GETTABLEKS                       R3 R4 K6 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["useUnderlyingConnectionStatus"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K8 ["Components"]
       20 GETTABLEKS                       R3 R4 K9 ["CustomIconButton"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K6 ["Parent"]
       27 GETTABLEKS                       R4 R5 K10 ["Foundation"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R6 R0 K6 ["Parent"]
       34 GETTABLEKS                       R5 R6 K11 ["ModelContextProtocol"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R7 R0 K6 ["Parent"]
       41 GETTABLEKS                       R6 R7 K12 ["React"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R8 R0 K6 ["Parent"]
       48 GETTABLEKS                       R7 R8 K13 ["ReactUtils"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R10 R0 K14 ["Resources"]
       55 GETTABLEKS                       R9 R10 K15 ["Localization"]
       57 GETTABLEKS                       R8 R9 K16 ["Translator"]
       59 CALL                             R7 1 1
       60 GETTABLEKS                       R8 R4 K17 ["ClientConnectionStatus"]
       62 GETTABLEKS                       R9 R3 K18 ["View"]
       64 GETTABLEKS                       R10 R3 K19 ["Text"]
       66 GETTABLEKS                       R11 R6 K20 ["createNextOrder"]
       68 GETTABLEKS                       R12 R5 K21 ["createElement"]
       70 DUPCLOSURE                       R13 K22 [PROTO_0]
       71 CAPTURE                          VAL R8
       72 DUPCLOSURE                       R14 K23 [PROTO_1]
       73 CAPTURE                          VAL R8
       74 DUPCLOSURE                       R15 K24 [PROTO_3]
       75 CAPTURE                          VAL R5
       76 CAPTURE                          VAL R7
       77 CAPTURE                          VAL R8
       78 CAPTURE                          VAL R11
       79 CAPTURE                          VAL R12
       80 CAPTURE                          VAL R9
       81 CAPTURE                          VAL R2
       82 CAPTURE                          VAL R10
       83 GETTABLEKS                       R16 R5 K25 ["memo"]
       85 MOVE                             R17 R15
       86 CALL                             R16 1 -1
       87 RETURN                           R16 -1
