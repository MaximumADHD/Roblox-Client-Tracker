PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getUserSettingsAsync"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+5]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R0 R1 K0 ["hasInternalPermission"]
        6 CALL                             R0 0 1
        7 JUMPIF                           R0 ; [+1]
        8 RETURN                           R0 0
        9 GETIMPORT                        R0 K2 [pcall]
       11 NEWCLOSURE                       R1 P0
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          UPVAL U2
       14 CALL                             R0 1 2
       15 JUMPIFNOT                        R0 ; [+8]
       16 JUMPIFNOTEQKB                    R1 TRUE ; [+7]
       18 GETUPVAL                         R2 3
       19 LOADK                            R3 K3 ["ElevatedIdentity"]
       20 CALL                             R2 1 0
       21 GETUPVAL                         R2 4
       22 LOADK                            R3 K3 ["ElevatedIdentity"]
       23 CALL                             R2 1 0
       24 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R0 K2 [task.spawn]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R0 K6 [{"PageTitle", "ScriptIdentityTitle", "ScriptIdentityDescription", "AssistantIdentity", "ElevatedIdentity", "RestartRequired"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K7 ["InternalFeatures"]
        3 LOADK                            R4 K8 ["Title"]
        4 NAMECALL                         R1 R1 K9 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["PageTitle"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K7 ["InternalFeatures"]
       11 LOADK                            R4 K10 ["ScriptIdentitySection"]
       12 NAMECALL                         R1 R1 K9 ["getText"]
       14 CALL                             R1 3 1
       15 SETTABLEKS                       R1 R0 K1 ["ScriptIdentityTitle"]
       17 GETUPVAL                         R1 0
       18 LOADK                            R3 K7 ["InternalFeatures"]
       19 LOADK                            R4 K2 ["ScriptIdentityDescription"]
       20 NAMECALL                         R1 R1 K9 ["getText"]
       22 CALL                             R1 3 1
       23 SETTABLEKS                       R1 R0 K2 ["ScriptIdentityDescription"]
       25 GETUPVAL                         R1 0
       26 LOADK                            R3 K7 ["InternalFeatures"]
       27 LOADK                            R4 K3 ["AssistantIdentity"]
       28 NAMECALL                         R1 R1 K9 ["getText"]
       30 CALL                             R1 3 1
       31 SETTABLEKS                       R1 R0 K3 ["AssistantIdentity"]
       33 GETUPVAL                         R1 0
       34 LOADK                            R3 K7 ["InternalFeatures"]
       35 LOADK                            R4 K4 ["ElevatedIdentity"]
       36 NAMECALL                         R1 R1 K9 ["getText"]
       38 CALL                             R1 3 1
       39 SETTABLEKS                       R1 R0 K4 ["ElevatedIdentity"]
       41 GETUPVAL                         R1 0
       42 LOADK                            R3 K7 ["InternalFeatures"]
       43 LOADK                            R4 K5 ["RestartRequired"]
       44 NAMECALL                         R1 R1 K9 ["getText"]
       46 CALL                             R1 3 1
       47 SETTABLEKS                       R1 R0 K5 ["RestartRequired"]
       49 RETURN                           R0 1

PROTO_4:
        0 NEWTABLE                         R0 0 2
        2 DUPTABLE                         R1 K2 [{"id", "text"}]
        3 LOADK                            R2 K3 ["AssistantIdentity"]
        4 SETTABLEKS                       R2 R1 K0 ["id"]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K3 ["AssistantIdentity"]
        9 SETTABLEKS                       R2 R1 K1 ["text"]
       11 DUPTABLE                         R2 K2 [{"id", "text"}]
       12 LOADK                            R3 K4 ["ElevatedIdentity"]
       13 SETTABLEKS                       R3 R2 K0 ["id"]
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R3 R4 K4 ["ElevatedIdentity"]
       18 SETTABLEKS                       R3 R2 K1 ["text"]
       20 SETLIST                          R0 R1 2 [1]
       22 RETURN                           R0 1

PROTO_5:
        0 FASTCALL1                        TOSTRING R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [tostring]
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 0
        6 MOVE                             R3 R1
        7 CALL                             R2 1 0
        8 JUMPIFEQKS                       R1 K2 ["ElevatedIdentity"] ; [+2]
       10 LOADB                            R2 0 +1
       11 LOADB                            R2 1
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R3 R4 K3 ["setUserSettingsAsync"]
       15 GETUPVAL                         R4 2
       16 MOVE                             R5 R2
       17 CALL                             R3 2 0
       18 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["get"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R1 R2 K1 ["useState"]
        7 LOADK                            R2 K2 ["AssistantIdentity"]
        8 CALL                             R1 1 2
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R3 R4 K1 ["useState"]
       12 LOADK                            R4 K2 ["AssistantIdentity"]
       13 CALL                             R3 1 2
       14 GETUPVAL                         R6 1
       15 GETTABLEKS                       R5 R6 K3 ["useEffect"]
       17 NEWCLOSURE                       R6 P0
       18 CAPTURE                          UPVAL U2
       19 CAPTURE                          VAL R0
       20 CAPTURE                          UPVAL U3
       21 CAPTURE                          VAL R2
       22 CAPTURE                          VAL R4
       23 NEWTABLE                         R7 0 0
       25 CALL                             R5 2 0
       26 JUMPIFNOTEQ                      R1 R3 ; [+2]
       28 LOADB                            R5 0 +1
       29 LOADB                            R5 1
       30 GETUPVAL                         R7 1
       31 GETTABLEKS                       R6 R7 K4 ["useMemo"]
       33 DUPCLOSURE                       R7 K5 [PROTO_3]
       34 CAPTURE                          UPVAL U4
       35 NEWTABLE                         R8 0 1
       37 GETUPVAL                         R10 4
       38 GETTABLEKS                       R9 R10 K6 ["locale"]
       40 SETLIST                          R8 R9 1 [1]
       42 CALL                             R6 2 1
       43 GETUPVAL                         R8 1
       44 GETTABLEKS                       R7 R8 K4 ["useMemo"]
       46 NEWCLOSURE                       R8 P2
       47 CAPTURE                          VAL R6
       48 NEWTABLE                         R9 0 1
       50 MOVE                             R10 R6
       51 SETLIST                          R9 R10 1 [1]
       53 CALL                             R7 2 1
       54 GETUPVAL                         R9 1
       55 GETTABLEKS                       R8 R9 K7 ["useCallback"]
       57 NEWCLOSURE                       R9 P3
       58 CAPTURE                          VAL R2
       59 CAPTURE                          VAL R0
       60 CAPTURE                          UPVAL U3
       61 NEWTABLE                         R10 0 0
       63 CALL                             R8 2 1
       64 GETUPVAL                         R9 5
       65 CALL                             R9 0 1
       66 GETUPVAL                         R10 6
       67 GETUPVAL                         R11 7
       68 DUPTABLE                         R12 K9 [{"tag"}]
       69 LOADK                            R13 K10 ["col auto-xy gap-medium padding-x-large"]
       70 SETTABLEKS                       R13 R12 K8 ["tag"]
       72 DUPTABLE                         R13 K16 [{"PageTitle", "ScriptIdentityTitle", "ScriptIdentityDescription", "IdentitySelector", "RestartNotice"}]
       73 GETUPVAL                         R14 6
       74 GETUPVAL                         R15 8
       75 DUPTABLE                         R16 K19 [{"LayoutOrder", "tag", "Text"}]
       76 MOVE                             R17 R9
       77 CALL                             R17 0 1
       78 SETTABLEKS                       R17 R16 K17 ["LayoutOrder"]
       80 LOADK                            R17 K20 ["auto-xy text-title-medium text-wrap text-align-x-left"]
       81 SETTABLEKS                       R17 R16 K8 ["tag"]
       83 GETTABLEKS                       R17 R6 K11 ["PageTitle"]
       85 SETTABLEKS                       R17 R16 K18 ["Text"]
       87 CALL                             R14 2 1
       88 SETTABLEKS                       R14 R13 K11 ["PageTitle"]
       90 GETUPVAL                         R14 6
       91 GETUPVAL                         R15 8
       92 DUPTABLE                         R16 K19 [{"LayoutOrder", "tag", "Text"}]
       93 MOVE                             R17 R9
       94 CALL                             R17 0 1
       95 SETTABLEKS                       R17 R16 K17 ["LayoutOrder"]
       97 LOADK                            R17 K21 ["auto-xy text-title-small text-wrap text-align-x-left padding-top-medium"]
       98 SETTABLEKS                       R17 R16 K8 ["tag"]
      100 GETTABLEKS                       R17 R6 K12 ["ScriptIdentityTitle"]
      102 SETTABLEKS                       R17 R16 K18 ["Text"]
      104 CALL                             R14 2 1
      105 SETTABLEKS                       R14 R13 K12 ["ScriptIdentityTitle"]
      107 GETUPVAL                         R14 6
      108 GETUPVAL                         R15 8
      109 DUPTABLE                         R16 K19 [{"LayoutOrder", "tag", "Text"}]
      110 MOVE                             R17 R9
      111 CALL                             R17 0 1
      112 SETTABLEKS                       R17 R16 K17 ["LayoutOrder"]
      114 LOADK                            R17 K22 ["auto-xy text-caption-small text-wrap text-align-x-left"]
      115 SETTABLEKS                       R17 R16 K8 ["tag"]
      117 GETTABLEKS                       R17 R6 K13 ["ScriptIdentityDescription"]
      119 SETTABLEKS                       R17 R16 K18 ["Text"]
      121 CALL                             R14 2 1
      122 SETTABLEKS                       R14 R13 K13 ["ScriptIdentityDescription"]
      124 GETUPVAL                         R14 6
      125 GETUPVAL                         R16 9
      126 GETTABLEKS                       R15 R16 K23 ["Root"]
      128 DUPTABLE                         R16 K30 [{"LayoutOrder", "label", "placeholder", "onItemChanged", "size", "width", "items"}]
      129 MOVE                             R17 R9
      130 CALL                             R17 0 1
      131 SETTABLEKS                       R17 R16 K17 ["LayoutOrder"]
      133 LOADK                            R17 K31 [""]
      134 SETTABLEKS                       R17 R16 K24 ["label"]
      136 GETTABLE                         R17 R6 R1
      137 SETTABLEKS                       R17 R16 K25 ["placeholder"]
      139 SETTABLEKS                       R8 R16 K26 ["onItemChanged"]
      141 GETUPVAL                         R20 10
      142 GETTABLEKS                       R19 R20 K32 ["Enums"]
      144 GETTABLEKS                       R18 R19 K33 ["InputSize"]
      146 GETTABLEKS                       R17 R18 K34 ["Small"]
      148 SETTABLEKS                       R17 R16 K27 ["size"]
      150 GETUPVAL                         R17 11
      151 SETTABLEKS                       R17 R16 K28 ["width"]
      153 SETTABLEKS                       R7 R16 K29 ["items"]
      155 CALL                             R14 2 1
      156 SETTABLEKS                       R14 R13 K14 ["IdentitySelector"]
      158 JUMPIFNOT                        R5 ; [+16]
      159 GETUPVAL                         R14 6
      160 GETUPVAL                         R15 8
      161 DUPTABLE                         R16 K19 [{"LayoutOrder", "tag", "Text"}]
      162 MOVE                             R17 R9
      163 CALL                             R17 0 1
      164 SETTABLEKS                       R17 R16 K17 ["LayoutOrder"]
      166 LOADK                            R17 K35 ["auto-xy text-caption-small text-wrap text-align-x-left content-alert"]
      167 SETTABLEKS                       R17 R16 K8 ["tag"]
      169 GETTABLEKS                       R17 R6 K36 ["RestartRequired"]
      171 SETTABLEKS                       R17 R16 K18 ["Text"]
      173 CALL                             R14 2 1
      174 JUMP                             ; [+1]
      175 LOADNIL                          R14
      176 SETTABLEKS                       R14 R13 K15 ["RestartNotice"]
      178 CALL                             R10 3 -1
      179 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Constants"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R4 R0 K7 ["Guest"]
       16 GETTABLEKS                       R3 R4 K8 ["Environment"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Parent"]
       23 GETTABLEKS                       R4 R5 K10 ["Foundation"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R6 R0 K9 ["Parent"]
       30 GETTABLEKS                       R5 R6 K11 ["React"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R7 R0 K9 ["Parent"]
       37 GETTABLEKS                       R6 R7 K12 ["ReactUtils"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R9 R0 K13 ["Resources"]
       44 GETTABLEKS                       R8 R9 K14 ["Localization"]
       46 GETTABLEKS                       R7 R8 K15 ["Translator"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R9 R0 K16 ["Flags"]
       53 GETTABLEKS                       R8 R9 K17 ["FFlagAssistantPrivilegedCodeExecution"]
       55 CALL                             R7 1 1
       56 GETTABLEKS                       R8 R3 K18 ["Dropdown"]
       58 GETTABLEKS                       R9 R3 K19 ["Text"]
       60 GETTABLEKS                       R10 R3 K20 ["View"]
       62 GETTABLEKS                       R11 R5 K21 ["createNextOrder"]
       64 GETTABLEKS                       R12 R4 K22 ["createElement"]
       66 GETTABLEKS                       R13 R1 K23 ["USE_ELEVATED_CAPABILITIES_KEY"]
       68 GETIMPORT                        R14 K26 [UDim.new]
       70 LOADN                            R15 0
       71 LOADN                            R16 250
       72 CALL                             R14 2 1
       73 DUPCLOSURE                       R15 K27 [PROTO_6]
       74 CAPTURE                          VAL R2
       75 CAPTURE                          VAL R4
       76 CAPTURE                          VAL R7
       77 CAPTURE                          VAL R13
       78 CAPTURE                          VAL R6
       79 CAPTURE                          VAL R11
       80 CAPTURE                          VAL R12
       81 CAPTURE                          VAL R10
       82 CAPTURE                          VAL R9
       83 CAPTURE                          VAL R8
       84 CAPTURE                          VAL R3
       85 CAPTURE                          VAL R14
       86 RETURN                           R15 1
