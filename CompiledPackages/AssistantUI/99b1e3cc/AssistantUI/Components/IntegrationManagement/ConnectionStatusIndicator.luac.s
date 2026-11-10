PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Connected"]
        3 JUMPIFNOTEQ                      R1 R2 ; [+4]
        5 GETTABLEKS                       R2 R0 K0 ["Connected"]
        7 RETURN                           R2 1
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K1 ["Disconnected"]
       11 JUMPIFNOTEQ                      R1 R2 ; [+4]
       13 GETTABLEKS                       R2 R0 K1 ["Disconnected"]
       15 RETURN                           R2 1
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R2 R2 K2 ["AuthorizationPending"]
       19 JUMPIFNOTEQ                      R1 R2 ; [+4]
       21 GETTABLEKS                       R2 R0 K2 ["AuthorizationPending"]
       23 RETURN                           R2 1
       24 GETUPVAL                         R2 0
       25 GETTABLEKS                       R2 R2 K3 ["UnsupportedProtocolVersion"]
       27 JUMPIFNOTEQ                      R1 R2 ; [+4]
       29 GETTABLEKS                       R2 R0 K4 ["Unsupported"]
       31 RETURN                           R2 1
       32 GETTABLEKS                       R2 R0 K5 ["ConnectionError"]
       34 RETURN                           R2 1

PROTO_1:
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

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["useMemo"]
        9 DUPCLOSURE                       R3 K3 [PROTO_1]
       10 CAPTURE                          UPVAL U2
       11 NEWTABLE                         R4 0 1
       13 GETUPVAL                         R5 2
       14 GETTABLEKS                       R5 R5 K4 ["locale"]
       16 SETLIST                          R4 R5 1 [1]
       18 CALL                             R2 2 1
       19 GETTABLEKS                       R3 R0 K5 ["connectionInformation"]
       21 GETTABLEKS                       R3 R3 K6 ["status"]
       23 GETUPVAL                         R5 3
       24 GETTABLEKS                       R5 R5 K7 ["Connected"]
       26 JUMPIFNOTEQ                      R3 R5 ; [+4]
       28 GETTABLEKS                       R4 R2 K7 ["Connected"]
       30 JUMP                             ; [+26]
       31 GETUPVAL                         R5 3
       32 GETTABLEKS                       R5 R5 K8 ["Disconnected"]
       34 JUMPIFNOTEQ                      R3 R5 ; [+4]
       36 GETTABLEKS                       R4 R2 K8 ["Disconnected"]
       38 JUMP                             ; [+18]
       39 GETUPVAL                         R5 3
       40 GETTABLEKS                       R5 R5 K9 ["AuthorizationPending"]
       42 JUMPIFNOTEQ                      R3 R5 ; [+4]
       44 GETTABLEKS                       R4 R2 K9 ["AuthorizationPending"]
       46 JUMP                             ; [+10]
       47 GETUPVAL                         R5 3
       48 GETTABLEKS                       R5 R5 K10 ["UnsupportedProtocolVersion"]
       50 JUMPIFNOTEQ                      R3 R5 ; [+4]
       52 GETTABLEKS                       R4 R2 K11 ["Unsupported"]
       54 JUMP                             ; [+2]
       55 GETTABLEKS                       R4 R2 K12 ["ConnectionError"]
       57 GETUPVAL                         R6 3
       58 GETTABLEKS                       R6 R6 K9 ["AuthorizationPending"]
       60 JUMPIFEQ                         R3 R6 ; [+2]
       62 LOADB                            R5 0 +1
       63 LOADB                            R5 1
       64 NOT                              R6 R5
       65 GETUPVAL                         R7 4
       66 CALL                             R7 0 1
       67 GETUPVAL                         R8 5
       68 GETUPVAL                         R9 6
       69 DUPTABLE                         R10 K16 [{["tag"] = "row align-y-center auto-xy gap-xsmall", ["LayoutOrder"]}]
       70 GETTABLEKS                       R11 R0 K15 ["LayoutOrder"]
       72 SETTABLEKS                       R11 R10 K15 ["LayoutOrder"]
       74 DUPTABLE                         R11 K20 [{"LinkIcon", "StatusIndicator", "Text"}]
       75 MOVE                             R12 R5
       76 JUMPIFNOT                        R12 ; [+34]
       77 GETUPVAL                         R12 5
       78 GETUPVAL                         R13 7
       79 DUPTABLE                         R14 K24 [{"name", "style", "size", "LayoutOrder"}]
       80 GETUPVAL                         R15 0
       81 GETTABLEKS                       R15 R15 K25 ["Enums"]
       83 GETTABLEKS                       R15 R15 K26 ["IconName"]
       85 GETTABLEKS                       R15 R15 K27 ["ArrowUpRightFromSquare"]
       87 SETTABLEKS                       R15 R14 K21 ["name"]
       89 GETTABLEKS                       R15 R1 K28 ["Color"]
       91 GETTABLEKS                       R15 R15 K29 ["Content"]
       93 GETTABLEKS                       R15 R15 K30 ["Emphasis"]
       95 SETTABLEKS                       R15 R14 K22 ["style"]
       97 GETUPVAL                         R15 0
       98 GETTABLEKS                       R15 R15 K25 ["Enums"]
      100 GETTABLEKS                       R15 R15 K31 ["IconSize"]
      102 GETTABLEKS                       R15 R15 K32 ["XSmall"]
      104 SETTABLEKS                       R15 R14 K23 ["size"]
      106 MOVE                             R15 R7
      107 CALL                             R15 0 1
      108 SETTABLEKS                       R15 R14 K15 ["LayoutOrder"]
      110 CALL                             R12 2 1
      111 SETTABLEKS                       R12 R11 K17 ["LinkIcon"]
      113 MOVE                             R12 R6
      114 JUMPIFNOT                        R12 ; [+16]
      115 GETUPVAL                         R12 5
      116 GETUPVAL                         R13 8
      117 DUPTABLE                         R14 K34 [{"variant", "LayoutOrder"}]
      118 GETUPVAL                         R16 9
      119 GETTABLE                         R15 R16 R3
      120 JUMPIF                           R15 ; [+3]
      121 GETUPVAL                         R15 9
      122 GETTABLEKS                       R15 R15 K35 ["Default"]
      124 SETTABLEKS                       R15 R14 K33 ["variant"]
      126 MOVE                             R15 R7
      127 CALL                             R15 0 1
      128 SETTABLEKS                       R15 R14 K15 ["LayoutOrder"]
      130 CALL                             R12 2 1
      131 SETTABLEKS                       R12 R11 K18 ["StatusIndicator"]
      133 GETUPVAL                         R12 5
      134 GETUPVAL                         R13 10
      135 DUPTABLE                         R14 K38 [{["tag"] = "auto-xy text-body-small text-no-wrap text-align-x-left", ["Text"], ["LayoutOrder"], ["onActivated"]}]
      136 SETTABLEKS                       R4 R14 K19 ["Text"]
      138 MOVE                             R15 R7
      139 CALL                             R15 0 1
      140 SETTABLEKS                       R15 R14 K15 ["LayoutOrder"]
      142 JUMPIFNOT                        R5 ; [+3]
      143 GETTABLEKS                       R15 R0 K39 ["onLogin"]
      145 JUMP                             ; [+1]
      146 LOADNIL                          R15
      147 SETTABLEKS                       R15 R14 K37 ["onActivated"]
      149 CALL                             R12 2 1
      150 SETTABLEKS                       R12 R11 K19 ["Text"]
      152 CALL                             R8 3 -1
      153 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R2 K1 [script]
       11 GETTABLEKS                       R2 R2 K6 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["useUnderlyingConnectionStatus"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Parent"]
       20 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Parent"]
       27 GETTABLEKS                       R4 R4 K9 ["ModelContextProtocol"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K6 ["Parent"]
       34 GETTABLEKS                       R5 R5 K10 ["React"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K6 ["Parent"]
       41 GETTABLEKS                       R6 R6 K11 ["ReactUtils"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K12 ["Resources"]
       48 GETTABLEKS                       R7 R7 K13 ["Localization"]
       50 GETTABLEKS                       R7 R7 K14 ["Translator"]
       52 CALL                             R6 1 1
       53 GETTABLEKS                       R7 R3 K15 ["ClientConnectionStatus"]
       55 GETTABLEKS                       R8 R2 K16 ["Icon"]
       57 GETTABLEKS                       R9 R2 K17 ["StatusIndicator"]
       59 GETTABLEKS                       R10 R2 K18 ["Text"]
       61 GETTABLEKS                       R11 R2 K19 ["View"]
       63 GETTABLEKS                       R12 R5 K20 ["createNextOrder"]
       65 GETTABLEKS                       R13 R4 K21 ["createElement"]
       67 NEWTABLE                         R14 4 0
       69 GETTABLEKS                       R15 R7 K22 ["Connected"]
       71 GETTABLEKS                       R16 R2 K23 ["Enums"]
       73 GETTABLEKS                       R16 R16 K24 ["StatusIndicatorVariant"]
       75 GETTABLEKS                       R16 R16 K25 ["Success"]
       77 SETTABLE                         R16 R14 R15
       78 GETTABLEKS                       R15 R7 K26 ["Disconnected"]
       80 GETTABLEKS                       R16 R2 K23 ["Enums"]
       82 GETTABLEKS                       R16 R16 K24 ["StatusIndicatorVariant"]
       84 GETTABLEKS                       R16 R16 K27 ["Neutral"]
       86 SETTABLE                         R16 R14 R15
       87 GETTABLEKS                       R15 R2 K23 ["Enums"]
       89 GETTABLEKS                       R15 R15 K24 ["StatusIndicatorVariant"]
       91 GETTABLEKS                       R15 R15 K28 ["Alert"]
       93 SETTABLEKS                       R15 R14 K29 ["Default"]
       95 DUPCLOSURE                       R15 K30 [PROTO_0]
       96 CAPTURE                          VAL R7
       97 DUPCLOSURE                       R16 K31 [PROTO_2]
       98 CAPTURE                          VAL R2
       99 CAPTURE                          VAL R4
      100 CAPTURE                          VAL R6
      101 CAPTURE                          VAL R7
      102 CAPTURE                          VAL R12
      103 CAPTURE                          VAL R13
      104 CAPTURE                          VAL R11
      105 CAPTURE                          VAL R8
      106 CAPTURE                          VAL R9
      107 CAPTURE                          VAL R14
      108 CAPTURE                          VAL R10
      109 GETTABLEKS                       R17 R4 K32 ["memo"]
      111 MOVE                             R18 R16
      112 CALL                             R17 1 -1
      113 RETURN                           R17 -1
