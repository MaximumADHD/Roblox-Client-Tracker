PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["current"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R0 K1 [{"AssistantSettings"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K2 ["SettingsDialog"]
        3 LOADK                            R4 K3 ["Title"]
        4 NAMECALL                         R1 R1 K4 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["AssistantSettings"]
        9 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 DUPTABLE                         R2 K2 [{"initialTab", "onClose"}]
        3 GETUPVAL                         R3 2
        4 SETTABLEKS                       R3 R2 K0 ["initialTab"]
        6 GETUPVAL                         R3 3
        7 SETTABLEKS                       R3 R2 K1 ["onClose"]
        9 CALL                             R0 2 -1
       10 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["integrations"]
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K1 ["show"]
        6 CALL                             R0 0 0
        7 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["apiKeys"]
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K1 ["show"]
        6 CALL                             R0 0 0
        7 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["internal"]
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K1 ["show"]
        6 CALL                             R0 0 0
        7 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["permissions"]
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K1 ["show"]
        6 CALL                             R0 0 0
        7 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["skills"]
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K1 ["show"]
        6 CALL                             R0 0 0
        7 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["useState"]
        5 LOADK                            R2 K1 ["integrations"]
        6 CALL                             R1 1 2
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K2 ["useRef"]
       10 LOADNIL                          R4
       11 CALL                             R3 1 1
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R4 R4 K3 ["useCallback"]
       15 NEWCLOSURE                       R5 P0
       16 CAPTURE                          VAL R3
       17 NEWTABLE                         R6 0 0
       19 CALL                             R4 2 1
       20 GETUPVAL                         R5 1
       21 GETTABLEKS                       R5 R5 K4 ["useMemo"]
       23 DUPCLOSURE                       R6 K5 [PROTO_1]
       24 CAPTURE                          UPVAL U2
       25 NEWTABLE                         R7 0 1
       27 GETUPVAL                         R8 2
       28 GETTABLEKS                       R8 R8 K6 ["locale"]
       30 SETLIST                          R7 R8 1 [1]
       32 CALL                             R5 2 1
       33 GETUPVAL                         R6 1
       34 GETTABLEKS                       R6 R6 K4 ["useMemo"]
       36 NEWCLOSURE                       R7 P2
       37 CAPTURE                          UPVAL U3
       38 CAPTURE                          UPVAL U4
       39 CAPTURE                          VAL R1
       40 CAPTURE                          VAL R4
       41 NEWTABLE                         R8 0 2
       43 MOVE                             R9 R1
       44 MOVE                             R10 R4
       45 SETLIST                          R8 R9 2 [1]
       47 CALL                             R6 2 1
       48 MOVE                             R7 R0
       49 DUPTABLE                         R8 K12 [{["Contents"], ["Size"], ["Title"], ["Modal"] = True}]
       50 SETTABLEKS                       R6 R8 K7 ["Contents"]
       52 GETUPVAL                         R9 5
       53 SETTABLEKS                       R9 R8 K8 ["Size"]
       55 GETTABLEKS                       R9 R5 K13 ["AssistantSettings"]
       57 SETTABLEKS                       R9 R8 K9 ["Title"]
       59 CALL                             R7 1 1
       60 GETTABLEKS                       R8 R7 K14 ["hide"]
       62 SETTABLEKS                       R8 R3 K15 ["current"]
       64 GETUPVAL                         R8 1
       65 GETTABLEKS                       R8 R8 K3 ["useCallback"]
       67 NEWCLOSURE                       R9 P3
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R7
       70 NEWTABLE                         R10 0 1
       72 GETTABLEKS                       R11 R7 K16 ["show"]
       74 SETLIST                          R10 R11 1 [1]
       76 CALL                             R8 2 1
       77 GETUPVAL                         R9 1
       78 GETTABLEKS                       R9 R9 K3 ["useCallback"]
       80 NEWCLOSURE                       R10 P4
       81 CAPTURE                          VAL R2
       82 CAPTURE                          VAL R7
       83 NEWTABLE                         R11 0 1
       85 GETTABLEKS                       R12 R7 K16 ["show"]
       87 SETLIST                          R11 R12 1 [1]
       89 CALL                             R9 2 1
       90 GETUPVAL                         R10 1
       91 GETTABLEKS                       R10 R10 K3 ["useCallback"]
       93 NEWCLOSURE                       R11 P5
       94 CAPTURE                          VAL R2
       95 CAPTURE                          VAL R7
       96 NEWTABLE                         R12 0 1
       98 GETTABLEKS                       R13 R7 K16 ["show"]
      100 SETLIST                          R12 R13 1 [1]
      102 CALL                             R10 2 1
      103 GETUPVAL                         R11 1
      104 GETTABLEKS                       R11 R11 K3 ["useCallback"]
      106 NEWCLOSURE                       R12 P6
      107 CAPTURE                          VAL R2
      108 CAPTURE                          VAL R7
      109 NEWTABLE                         R13 0 1
      111 GETTABLEKS                       R14 R7 K16 ["show"]
      113 SETLIST                          R13 R14 1 [1]
      115 CALL                             R11 2 1
      116 GETUPVAL                         R12 1
      117 GETTABLEKS                       R12 R12 K3 ["useCallback"]
      119 NEWCLOSURE                       R13 P7
      120 CAPTURE                          VAL R2
      121 CAPTURE                          VAL R7
      122 NEWTABLE                         R14 0 1
      124 GETTABLEKS                       R15 R7 K16 ["show"]
      126 SETLIST                          R14 R15 1 [1]
      128 CALL                             R12 2 1
      129 DUPTABLE                         R13 K23 [{"showIntegrations", "showApiKeys", "showInternalSettings", "showPermissions", "showSkills", "hide", "root"}]
      130 SETTABLEKS                       R8 R13 K17 ["showIntegrations"]
      132 SETTABLEKS                       R9 R13 K18 ["showApiKeys"]
      134 SETTABLEKS                       R10 R13 K19 ["showInternalSettings"]
      136 SETTABLEKS                       R11 R13 K20 ["showPermissions"]
      138 SETTABLEKS                       R12 R13 K21 ["showSkills"]
      140 GETTABLEKS                       R14 R7 K14 ["hide"]
      142 SETTABLEKS                       R14 R13 K14 ["hide"]
      144 GETTABLEKS                       R14 R7 K22 ["root"]
      146 SETTABLEKS                       R14 R13 K22 ["root"]
      148 RETURN                           R13 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["IntegrationManagement"]
       13 GETTABLEKS                       R2 R2 K8 ["IntegrationMenu"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Parent"]
       20 GETTABLEKS                       R3 R3 K10 ["React"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K11 ["Resources"]
       27 GETTABLEKS                       R4 R4 K12 ["Localization"]
       29 GETTABLEKS                       R4 R4 K13 ["Translator"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K14 ["Hooks"]
       36 GETTABLEKS                       R5 R5 K15 ["useGetDialogWidget"]
       38 CALL                             R4 1 1
       39 GETTABLEKS                       R5 R2 K16 ["createElement"]
       41 GETIMPORT                        R6 K19 [Vector2.new]
       43 LOADN                            R7 720
       44 LOADN                            R8 480
       45 CALL                             R6 2 1
       46 DUPCLOSURE                       R7 K20 [PROTO_8]
       47 CAPTURE                          VAL R4
       48 CAPTURE                          VAL R2
       49 CAPTURE                          VAL R3
       50 CAPTURE                          VAL R5
       51 CAPTURE                          VAL R1
       52 CAPTURE                          VAL R6
       53 RETURN                           R7 1
