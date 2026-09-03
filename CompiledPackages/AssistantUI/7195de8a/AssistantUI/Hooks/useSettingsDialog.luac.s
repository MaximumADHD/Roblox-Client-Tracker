PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+3]
        2 GETUPVAL                         R0 0
        3 LOADK                            R1 K0 ["settings dialog activity"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+3]
        2 GETUPVAL                         R0 0
        3 LOADK                            R1 K0 ["settings dialog interaction"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantCreditMetering"]
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+3]
        6 GETUPVAL                         R0 1
        7 LOADK                            R1 K1 ["settings dialog closed"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["current"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R0 K1 [{"AssistantSettings"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K2 ["SettingsDialog"]
        3 LOADK                            R4 K3 ["Title"]
        4 NAMECALL                         R1 R1 K4 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["AssistantSettings"]
        9 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 DUPTABLE                         R2 K2 [{"initialTab", "onClose"}]
        3 GETUPVAL                         R3 2
        4 SETTABLEKS                       R3 R2 K0 ["initialTab"]
        6 GETUPVAL                         R3 3
        7 SETTABLEKS                       R3 R2 K1 ["onClose"]
        9 CALL                             R0 2 -1
       10 RETURN                           R0 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["integrations"]
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K1 ["show"]
        6 CALL                             R0 0 0
        7 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantUseRemoteService"]
        3 JUMPIFNOT                        R0 ; [+12]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["FFlagAssistantCreditMetering"]
        7 JUMPIFNOT                        R0 ; [+4]
        8 GETUPVAL                         R0 1
        9 LOADK                            R1 K2 ["usage"]
       10 CALL                             R0 1 0
       11 JUMP                             ; [+7]
       12 GETUPVAL                         R0 1
       13 LOADK                            R1 K3 ["integrations"]
       14 CALL                             R0 1 0
       15 JUMP                             ; [+3]
       16 GETUPVAL                         R0 1
       17 LOADK                            R1 K4 ["apiKeys"]
       18 CALL                             R0 1 0
       19 GETUPVAL                         R0 2
       20 GETTABLEKS                       R0 R0 K5 ["show"]
       22 CALL                             R0 0 0
       23 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["internal"]
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K1 ["show"]
        6 CALL                             R0 0 0
        7 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["permissions"]
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K1 ["show"]
        6 CALL                             R0 0 0
        7 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["skills"]
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K1 ["show"]
        6 CALL                             R0 0 0
        7 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantCreditMetering"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 1
        6 LOADK                            R1 K1 ["usage"]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 2
        9 GETTABLEKS                       R0 R0 K2 ["show"]
       11 CALL                             R0 0 0
       12 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["useContext"]
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R2 R2 K1 ["Context"]
        8 CALL                             R1 1 1
        9 GETTABLEKS                       R2 R1 K2 ["notifyPanelActivity"]
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R3 R3 K3 ["useCallback"]
       14 NEWCLOSURE                       R4 P0
       15 CAPTURE                          VAL R2
       16 NEWTABLE                         R5 0 1
       18 MOVE                             R6 R2
       19 SETLIST                          R5 R6 1 [1]
       21 CALL                             R3 2 1
       22 GETUPVAL                         R4 1
       23 GETTABLEKS                       R4 R4 K3 ["useCallback"]
       25 NEWCLOSURE                       R5 P1
       26 CAPTURE                          VAL R2
       27 NEWTABLE                         R6 0 1
       29 MOVE                             R7 R2
       30 SETLIST                          R6 R7 1 [1]
       32 CALL                             R4 2 1
       33 GETUPVAL                         R5 1
       34 GETTABLEKS                       R5 R5 K3 ["useCallback"]
       36 NEWCLOSURE                       R6 P2
       37 CAPTURE                          UPVAL U3
       38 CAPTURE                          VAL R2
       39 NEWTABLE                         R7 0 1
       41 MOVE                             R8 R2
       42 SETLIST                          R7 R8 1 [1]
       44 CALL                             R5 2 1
       45 GETUPVAL                         R6 1
       46 GETTABLEKS                       R6 R6 K4 ["useState"]
       48 LOADK                            R7 K5 ["integrations"]
       49 CALL                             R6 1 2
       50 GETUPVAL                         R8 1
       51 GETTABLEKS                       R8 R8 K6 ["useRef"]
       53 LOADNIL                          R9
       54 CALL                             R8 1 1
       55 GETUPVAL                         R9 1
       56 GETTABLEKS                       R9 R9 K3 ["useCallback"]
       58 NEWCLOSURE                       R10 P3
       59 CAPTURE                          VAL R8
       60 NEWTABLE                         R11 0 0
       62 CALL                             R9 2 1
       63 GETUPVAL                         R10 1
       64 GETTABLEKS                       R10 R10 K7 ["useMemo"]
       66 DUPCLOSURE                       R11 K8 [PROTO_4]
       67 CAPTURE                          UPVAL U4
       68 NEWTABLE                         R12 0 1
       70 GETUPVAL                         R13 4
       71 GETTABLEKS                       R13 R13 K9 ["locale"]
       73 SETLIST                          R12 R13 1 [1]
       75 CALL                             R10 2 1
       76 GETUPVAL                         R11 1
       77 GETTABLEKS                       R11 R11 K7 ["useMemo"]
       79 NEWCLOSURE                       R12 P5
       80 CAPTURE                          UPVAL U5
       81 CAPTURE                          UPVAL U6
       82 CAPTURE                          VAL R6
       83 CAPTURE                          VAL R9
       84 NEWTABLE                         R13 0 2
       86 MOVE                             R14 R6
       87 MOVE                             R15 R9
       88 SETLIST                          R13 R14 2 [1]
       90 CALL                             R11 2 1
       91 MOVE                             R12 R0
       92 DUPTABLE                         R13 K18 [{["Contents"], ["Size"], ["Title"], ["Modal"] = True, ["onHide"], ["onWidgetActivity"], ["onWidgetInteraction"]}]
       93 SETTABLEKS                       R11 R13 K10 ["Contents"]
       95 GETUPVAL                         R14 7
       96 SETTABLEKS                       R14 R13 K11 ["Size"]
       98 GETTABLEKS                       R14 R10 K19 ["AssistantSettings"]
      100 SETTABLEKS                       R14 R13 K12 ["Title"]
      102 GETUPVAL                         R15 3
      103 GETTABLEKS                       R15 R15 K20 ["FFlagAssistantCreditMetering"]
      105 JUMPIFNOT                        R15 ; [+2]
      106 MOVE                             R14 R5
      107 JUMP                             ; [+1]
      108 LOADNIL                          R14
      109 SETTABLEKS                       R14 R13 K15 ["onHide"]
      111 GETUPVAL                         R15 3
      112 GETTABLEKS                       R15 R15 K20 ["FFlagAssistantCreditMetering"]
      114 JUMPIFNOT                        R15 ; [+2]
      115 MOVE                             R14 R3
      116 JUMP                             ; [+1]
      117 LOADNIL                          R14
      118 SETTABLEKS                       R14 R13 K16 ["onWidgetActivity"]
      120 GETUPVAL                         R15 3
      121 GETTABLEKS                       R15 R15 K20 ["FFlagAssistantCreditMetering"]
      123 JUMPIFNOT                        R15 ; [+2]
      124 MOVE                             R14 R4
      125 JUMP                             ; [+1]
      126 LOADNIL                          R14
      127 SETTABLEKS                       R14 R13 K17 ["onWidgetInteraction"]
      129 CALL                             R12 1 1
      130 GETTABLEKS                       R13 R12 K21 ["hide"]
      132 SETTABLEKS                       R13 R8 K22 ["current"]
      134 GETUPVAL                         R13 1
      135 GETTABLEKS                       R13 R13 K3 ["useCallback"]
      137 NEWCLOSURE                       R14 P6
      138 CAPTURE                          VAL R7
      139 CAPTURE                          VAL R12
      140 NEWTABLE                         R15 0 1
      142 GETTABLEKS                       R16 R12 K23 ["show"]
      144 SETLIST                          R15 R16 1 [1]
      146 CALL                             R13 2 1
      147 GETUPVAL                         R14 1
      148 GETTABLEKS                       R14 R14 K3 ["useCallback"]
      150 NEWCLOSURE                       R15 P7
      151 CAPTURE                          UPVAL U3
      152 CAPTURE                          VAL R7
      153 CAPTURE                          VAL R12
      154 NEWTABLE                         R16 0 1
      156 GETTABLEKS                       R17 R12 K23 ["show"]
      158 SETLIST                          R16 R17 1 [1]
      160 CALL                             R14 2 1
      161 GETUPVAL                         R15 1
      162 GETTABLEKS                       R15 R15 K3 ["useCallback"]
      164 NEWCLOSURE                       R16 P8
      165 CAPTURE                          VAL R7
      166 CAPTURE                          VAL R12
      167 NEWTABLE                         R17 0 1
      169 GETTABLEKS                       R18 R12 K23 ["show"]
      171 SETLIST                          R17 R18 1 [1]
      173 CALL                             R15 2 1
      174 GETUPVAL                         R16 1
      175 GETTABLEKS                       R16 R16 K3 ["useCallback"]
      177 NEWCLOSURE                       R17 P9
      178 CAPTURE                          VAL R7
      179 CAPTURE                          VAL R12
      180 NEWTABLE                         R18 0 1
      182 GETTABLEKS                       R19 R12 K23 ["show"]
      184 SETLIST                          R18 R19 1 [1]
      186 CALL                             R16 2 1
      187 GETUPVAL                         R17 1
      188 GETTABLEKS                       R17 R17 K3 ["useCallback"]
      190 NEWCLOSURE                       R18 P10
      191 CAPTURE                          VAL R7
      192 CAPTURE                          VAL R12
      193 NEWTABLE                         R19 0 1
      195 GETTABLEKS                       R20 R12 K23 ["show"]
      197 SETLIST                          R19 R20 1 [1]
      199 CALL                             R17 2 1
      200 GETUPVAL                         R18 1
      201 GETTABLEKS                       R18 R18 K3 ["useCallback"]
      203 NEWCLOSURE                       R19 P11
      204 CAPTURE                          UPVAL U3
      205 CAPTURE                          VAL R7
      206 CAPTURE                          VAL R12
      207 NEWTABLE                         R20 0 1
      209 GETTABLEKS                       R21 R12 K23 ["show"]
      211 SETLIST                          R20 R21 1 [1]
      213 CALL                             R18 2 1
      214 DUPTABLE                         R19 K31 [{"showIntegrations", "showApiKeys", "showInternalSettings", "showPermissions", "showSkills", "showUsage", "hide", "root"}]
      215 SETTABLEKS                       R13 R19 K24 ["showIntegrations"]
      217 SETTABLEKS                       R14 R19 K25 ["showApiKeys"]
      219 SETTABLEKS                       R15 R19 K26 ["showInternalSettings"]
      221 SETTABLEKS                       R16 R19 K27 ["showPermissions"]
      223 SETTABLEKS                       R17 R19 K28 ["showSkills"]
      225 SETTABLEKS                       R18 R19 K29 ["showUsage"]
      227 GETTABLEKS                       R20 R12 K21 ["hide"]
      229 SETTABLEKS                       R20 R19 K21 ["hide"]
      231 GETTABLEKS                       R20 R12 K30 ["root"]
      233 SETTABLEKS                       R20 R19 K30 ["root"]
      235 RETURN                           R19 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["Contexts"]
       13 GETTABLEKS                       R2 R2 K8 ["CreditMeteringContext"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Flags"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Components"]
       25 GETTABLEKS                       R4 R4 K10 ["IntegrationManagement"]
       27 GETTABLEKS                       R4 R4 K11 ["IntegrationMenu"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K12 ["Parent"]
       34 GETTABLEKS                       R5 R5 K13 ["React"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K14 ["Resources"]
       41 GETTABLEKS                       R6 R6 K15 ["Localization"]
       43 GETTABLEKS                       R6 R6 K16 ["Translator"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K17 ["Hooks"]
       50 GETTABLEKS                       R7 R7 K18 ["useGetDialogWidget"]
       52 CALL                             R6 1 1
       53 GETTABLEKS                       R7 R4 K19 ["createElement"]
       55 GETIMPORT                        R8 K22 [Vector2.new]
       57 LOADN                            R9 720
       58 LOADN                            R10 480
       59 CALL                             R8 2 1
       60 DUPCLOSURE                       R9 K23 [PROTO_12]
       61 CAPTURE                          VAL R6
       62 CAPTURE                          VAL R4
       63 CAPTURE                          VAL R1
       64 CAPTURE                          VAL R2
       65 CAPTURE                          VAL R5
       66 CAPTURE                          VAL R7
       67 CAPTURE                          VAL R3
       68 CAPTURE                          VAL R8
       69 RETURN                           R9 1
