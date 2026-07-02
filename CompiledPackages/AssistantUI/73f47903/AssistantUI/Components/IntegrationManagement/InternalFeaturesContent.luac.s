PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getUserSettingsAsync"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+5]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["hasInternalPermission"]
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
        2 DUPTABLE                         R1 K3 [{[1] = "AssistantIdentity", ["text"]}]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["AssistantIdentity"]
        6 SETTABLEKS                       R2 R1 K2 ["text"]
        8 DUPTABLE                         R2 K5 [{[1] = "ElevatedIdentity", ["text"]}]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K4 ["ElevatedIdentity"]
       12 SETTABLEKS                       R3 R2 K2 ["text"]
       14 SETLIST                          R0 R1 2 [1]
       16 RETURN                           R0 1

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
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K3 ["setUserSettingsAsync"]
       15 GETUPVAL                         R4 2
       16 MOVE                             R5 R2
       17 CALL                             R3 2 0
       18 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["get"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["useState"]
        7 LOADK                            R2 K2 ["AssistantIdentity"]
        8 CALL                             R1 1 2
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K1 ["useState"]
       12 LOADK                            R4 K2 ["AssistantIdentity"]
       13 CALL                             R3 1 2
       14 GETUPVAL                         R5 2
       15 CALL                             R5 0 2
       16 GETUPVAL                         R7 1
       17 GETTABLEKS                       R7 R7 K3 ["useEffect"]
       19 NEWCLOSURE                       R8 P0
       20 CAPTURE                          UPVAL U3
       21 CAPTURE                          VAL R0
       22 CAPTURE                          UPVAL U4
       23 CAPTURE                          VAL R2
       24 CAPTURE                          VAL R4
       25 NEWTABLE                         R9 0 0
       27 CALL                             R7 2 0
       28 JUMPIFNOTEQ                      R1 R3 ; [+2]
       30 LOADB                            R7 0 +1
       31 LOADB                            R7 1
       32 GETUPVAL                         R8 1
       33 GETTABLEKS                       R8 R8 K4 ["useMemo"]
       35 DUPCLOSURE                       R9 K5 [PROTO_3]
       36 CAPTURE                          UPVAL U5
       37 NEWTABLE                         R10 0 1
       39 GETUPVAL                         R11 5
       40 GETTABLEKS                       R11 R11 K6 ["locale"]
       42 SETLIST                          R10 R11 1 [1]
       44 CALL                             R8 2 1
       45 GETUPVAL                         R9 1
       46 GETTABLEKS                       R9 R9 K4 ["useMemo"]
       48 NEWCLOSURE                       R10 P2
       49 CAPTURE                          VAL R8
       50 NEWTABLE                         R11 0 1
       52 MOVE                             R12 R8
       53 SETLIST                          R11 R12 1 [1]
       55 CALL                             R9 2 1
       56 GETUPVAL                         R10 1
       57 GETTABLEKS                       R10 R10 K7 ["useCallback"]
       59 NEWCLOSURE                       R11 P3
       60 CAPTURE                          VAL R2
       61 CAPTURE                          VAL R0
       62 CAPTURE                          UPVAL U4
       63 NEWTABLE                         R12 0 0
       65 CALL                             R10 2 1
       66 GETUPVAL                         R11 6
       67 CALL                             R11 0 1
       68 GETUPVAL                         R12 7
       69 GETUPVAL                         R13 8
       70 DUPTABLE                         R14 K10 [{["tag"] = "col gap-medium auto-xy padding-x-large"}]
       71 DUPTABLE                         R15 K19 [{"PageTitle", "ScriptIdentityTitle", "ScriptIdentityDescription", "IdentitySelector", "RestartNotice", "CompactionTitle", "CompactionDescription", "ForceCompactButton"}]
       72 GETUPVAL                         R16 7
       73 GETUPVAL                         R17 9
       74 DUPTABLE                         R18 K23 [{["LayoutOrder"], ["tag"] = "auto-xy text-title-medium text-wrap text-align-x-left", ["Text"]}]
       75 MOVE                             R19 R11
       76 CALL                             R19 0 1
       77 SETTABLEKS                       R19 R18 K20 ["LayoutOrder"]
       79 GETTABLEKS                       R19 R8 K11 ["PageTitle"]
       81 SETTABLEKS                       R19 R18 K22 ["Text"]
       83 CALL                             R16 2 1
       84 SETTABLEKS                       R16 R15 K11 ["PageTitle"]
       86 GETUPVAL                         R16 7
       87 GETUPVAL                         R17 9
       88 DUPTABLE                         R18 K25 [{["LayoutOrder"], ["tag"] = "auto-xy padding-top-medium text-title-small text-wrap text-align-x-left", ["Text"]}]
       89 MOVE                             R19 R11
       90 CALL                             R19 0 1
       91 SETTABLEKS                       R19 R18 K20 ["LayoutOrder"]
       93 GETTABLEKS                       R19 R8 K12 ["ScriptIdentityTitle"]
       95 SETTABLEKS                       R19 R18 K22 ["Text"]
       97 CALL                             R16 2 1
       98 SETTABLEKS                       R16 R15 K12 ["ScriptIdentityTitle"]
      100 GETUPVAL                         R16 7
      101 GETUPVAL                         R17 9
      102 DUPTABLE                         R18 K27 [{["LayoutOrder"], ["tag"] = "auto-xy text-caption-small text-wrap text-align-x-left", ["Text"]}]
      103 MOVE                             R19 R11
      104 CALL                             R19 0 1
      105 SETTABLEKS                       R19 R18 K20 ["LayoutOrder"]
      107 GETTABLEKS                       R19 R8 K13 ["ScriptIdentityDescription"]
      109 SETTABLEKS                       R19 R18 K22 ["Text"]
      111 CALL                             R16 2 1
      112 SETTABLEKS                       R16 R15 K13 ["ScriptIdentityDescription"]
      114 GETUPVAL                         R16 7
      115 GETUPVAL                         R17 10
      116 GETTABLEKS                       R17 R17 K28 ["Root"]
      118 DUPTABLE                         R18 K36 [{["LayoutOrder"], ["label"] = "", ["placeholder"], ["onItemChanged"], ["size"], ["width"], ["items"]}]
      119 MOVE                             R19 R11
      120 CALL                             R19 0 1
      121 SETTABLEKS                       R19 R18 K20 ["LayoutOrder"]
      123 GETTABLE                         R19 R8 R1
      124 SETTABLEKS                       R19 R18 K31 ["placeholder"]
      126 SETTABLEKS                       R10 R18 K32 ["onItemChanged"]
      128 GETUPVAL                         R19 11
      129 GETTABLEKS                       R19 R19 K37 ["Enums"]
      131 GETTABLEKS                       R19 R19 K38 ["InputSize"]
      133 GETTABLEKS                       R19 R19 K39 ["Small"]
      135 SETTABLEKS                       R19 R18 K33 ["size"]
      137 GETUPVAL                         R19 12
      138 SETTABLEKS                       R19 R18 K34 ["width"]
      140 SETTABLEKS                       R9 R18 K35 ["items"]
      142 CALL                             R16 2 1
      143 SETTABLEKS                       R16 R15 K14 ["IdentitySelector"]
      145 JUMPIFNOT                        R7 ; [+13]
      146 GETUPVAL                         R16 7
      147 GETUPVAL                         R17 9
      148 DUPTABLE                         R18 K41 [{["LayoutOrder"], ["tag"] = "auto-xy text-caption-small text-wrap text-align-x-left content-alert", ["Text"]}]
      149 MOVE                             R19 R11
      150 CALL                             R19 0 1
      151 SETTABLEKS                       R19 R18 K20 ["LayoutOrder"]
      153 GETTABLEKS                       R19 R8 K42 ["RestartRequired"]
      155 SETTABLEKS                       R19 R18 K22 ["Text"]
      157 CALL                             R16 2 1
      158 JUMP                             ; [+1]
      159 LOADNIL                          R16
      160 SETTABLEKS                       R16 R15 K15 ["RestartNotice"]
      162 GETUPVAL                         R16 7
      163 GETUPVAL                         R17 9
      164 DUPTABLE                         R18 K44 [{["LayoutOrder"], ["tag"] = "auto-xy padding-top-medium text-title-small text-wrap text-align-x-left", ["Text"] = "Context Compaction"}]
      165 MOVE                             R19 R11
      166 CALL                             R19 0 1
      167 SETTABLEKS                       R19 R18 K20 ["LayoutOrder"]
      169 CALL                             R16 2 1
      170 SETTABLEKS                       R16 R15 K16 ["CompactionTitle"]
      172 GETUPVAL                         R16 7
      173 GETUPVAL                         R17 9
      174 DUPTABLE                         R18 K46 [{["LayoutOrder"], ["tag"] = "auto-xy text-caption-small text-wrap text-align-x-left", ["Text"] = "Force context compaction on the current thread, regardless of token count."}]
      175 MOVE                             R19 R11
      176 CALL                             R19 0 1
      177 SETTABLEKS                       R19 R18 K20 ["LayoutOrder"]
      179 CALL                             R16 2 1
      180 SETTABLEKS                       R16 R15 K17 ["CompactionDescription"]
      182 GETUPVAL                         R16 7
      183 GETUPVAL                         R17 13
      184 DUPTABLE                         R18 K51 [{"LayoutOrder", "text", "size", "variant", "isDisabled", "onActivated"}]
      185 MOVE                             R19 R11
      186 CALL                             R19 0 1
      187 SETTABLEKS                       R19 R18 K20 ["LayoutOrder"]
      189 JUMPIFNOT                        R6 ; [+2]
      190 LOADK                            R19 K52 ["Compacting..."]
      191 JUMP                             ; [+1]
      192 LOADK                            R19 K53 ["Force Compact"]
      193 SETTABLEKS                       R19 R18 K47 ["text"]
      195 GETUPVAL                         R19 11
      196 GETTABLEKS                       R19 R19 K37 ["Enums"]
      198 GETTABLEKS                       R19 R19 K54 ["ButtonSize"]
      200 GETTABLEKS                       R19 R19 K39 ["Small"]
      202 SETTABLEKS                       R19 R18 K33 ["size"]
      204 GETUPVAL                         R19 11
      205 GETTABLEKS                       R19 R19 K37 ["Enums"]
      207 GETTABLEKS                       R19 R19 K55 ["ButtonVariant"]
      209 GETTABLEKS                       R19 R19 K56 ["Standard"]
      211 SETTABLEKS                       R19 R18 K48 ["variant"]
      213 SETTABLEKS                       R6 R18 K49 ["isDisabled"]
      215 SETTABLEKS                       R5 R18 K50 ["onActivated"]
      217 CALL                             R16 2 1
      218 SETTABLEKS                       R16 R15 K18 ["ForceCompactButton"]
      220 CALL                             R12 3 -1
      221 RETURN                           R12 -1

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
       14 GETTABLEKS                       R3 R0 K7 ["Guest"]
       16 GETTABLEKS                       R3 R3 K8 ["Environment"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Parent"]
       23 GETTABLEKS                       R4 R4 K10 ["Foundation"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K9 ["Parent"]
       30 GETTABLEKS                       R5 R5 K11 ["React"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K9 ["Parent"]
       37 GETTABLEKS                       R6 R6 K12 ["ReactUtils"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K13 ["Resources"]
       44 GETTABLEKS                       R7 R7 K14 ["Localization"]
       46 GETTABLEKS                       R7 R7 K15 ["Translator"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K16 ["Hooks"]
       53 GETTABLEKS                       R8 R8 K17 ["useForceCompact"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K18 ["Flags"]
       60 GETTABLEKS                       R9 R9 K19 ["FFlagAssistantPrivilegedCodeExecution"]
       62 CALL                             R8 1 1
       63 GETTABLEKS                       R9 R3 K20 ["Button"]
       65 GETTABLEKS                       R10 R3 K21 ["Dropdown"]
       67 GETTABLEKS                       R11 R3 K22 ["Text"]
       69 GETTABLEKS                       R12 R3 K23 ["View"]
       71 GETTABLEKS                       R13 R5 K24 ["createNextOrder"]
       73 GETTABLEKS                       R14 R4 K25 ["createElement"]
       75 GETTABLEKS                       R15 R1 K26 ["USE_ELEVATED_CAPABILITIES_KEY"]
       77 GETIMPORT                        R16 K29 [UDim.new]
       79 LOADN                            R17 0
       80 LOADN                            R18 250
       81 CALL                             R16 2 1
       82 DUPCLOSURE                       R17 K30 [PROTO_6]
       83 CAPTURE                          VAL R2
       84 CAPTURE                          VAL R4
       85 CAPTURE                          VAL R7
       86 CAPTURE                          VAL R8
       87 CAPTURE                          VAL R15
       88 CAPTURE                          VAL R6
       89 CAPTURE                          VAL R13
       90 CAPTURE                          VAL R14
       91 CAPTURE                          VAL R12
       92 CAPTURE                          VAL R11
       93 CAPTURE                          VAL R10
       94 CAPTURE                          VAL R3
       95 CAPTURE                          VAL R16
       96 CAPTURE                          VAL R9
       97 RETURN                           R17 1
