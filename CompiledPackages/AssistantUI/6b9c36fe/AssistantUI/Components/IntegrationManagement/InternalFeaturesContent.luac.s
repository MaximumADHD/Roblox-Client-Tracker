PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getUserSettingsAsync"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["hasInternalPermission"]
        3 CALL                             R0 0 1
        4 JUMPIF                           R0 ; [+1]
        5 RETURN                           R0 0
        6 GETIMPORT                        R0 K2 [pcall]
        8 NEWCLOSURE                       R1 P0
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          UPVAL U1
       11 CALL                             R0 1 2
       12 JUMPIFNOT                        R0 ; [+8]
       13 JUMPIFNOTEQKB                    R1 TRUE ; [+7]
       15 GETUPVAL                         R2 2
       16 LOADK                            R3 K3 ["ElevatedIdentity"]
       17 CALL                             R2 1 0
       18 GETUPVAL                         R2 3
       19 LOADK                            R3 K3 ["ElevatedIdentity"]
       20 CALL                             R2 1 0
       21 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R0 K2 [task.spawn]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

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
       20 CAPTURE                          VAL R0
       21 CAPTURE                          UPVAL U3
       22 CAPTURE                          VAL R2
       23 CAPTURE                          VAL R4
       24 NEWTABLE                         R9 0 0
       26 CALL                             R7 2 0
       27 JUMPIFNOTEQ                      R1 R3 ; [+2]
       29 LOADB                            R7 0 +1
       30 LOADB                            R7 1
       31 GETUPVAL                         R8 1
       32 GETTABLEKS                       R8 R8 K4 ["useMemo"]
       34 DUPCLOSURE                       R9 K5 [PROTO_3]
       35 CAPTURE                          UPVAL U4
       36 NEWTABLE                         R10 0 1
       38 GETUPVAL                         R11 4
       39 GETTABLEKS                       R11 R11 K6 ["locale"]
       41 SETLIST                          R10 R11 1 [1]
       43 CALL                             R8 2 1
       44 GETUPVAL                         R9 1
       45 GETTABLEKS                       R9 R9 K4 ["useMemo"]
       47 NEWCLOSURE                       R10 P2
       48 CAPTURE                          VAL R8
       49 NEWTABLE                         R11 0 1
       51 MOVE                             R12 R8
       52 SETLIST                          R11 R12 1 [1]
       54 CALL                             R9 2 1
       55 GETUPVAL                         R10 1
       56 GETTABLEKS                       R10 R10 K7 ["useCallback"]
       58 NEWCLOSURE                       R11 P3
       59 CAPTURE                          VAL R2
       60 CAPTURE                          VAL R0
       61 CAPTURE                          UPVAL U3
       62 NEWTABLE                         R12 0 0
       64 CALL                             R10 2 1
       65 GETUPVAL                         R11 5
       66 CALL                             R11 0 1
       67 GETUPVAL                         R12 6
       68 GETUPVAL                         R13 7
       69 DUPTABLE                         R14 K10 [{["tag"] = "col gap-medium auto-xy padding-x-large"}]
       70 DUPTABLE                         R15 K19 [{"PageTitle", "ScriptIdentityTitle", "ScriptIdentityDescription", "IdentitySelector", "RestartNotice", "CompactionTitle", "CompactionDescription", "ForceCompactButton"}]
       71 GETUPVAL                         R16 6
       72 GETUPVAL                         R17 8
       73 DUPTABLE                         R18 K23 [{["LayoutOrder"], ["tag"] = "auto-xy text-title-medium text-wrap text-align-x-left", ["Text"]}]
       74 MOVE                             R19 R11
       75 CALL                             R19 0 1
       76 SETTABLEKS                       R19 R18 K20 ["LayoutOrder"]
       78 GETTABLEKS                       R19 R8 K11 ["PageTitle"]
       80 SETTABLEKS                       R19 R18 K22 ["Text"]
       82 CALL                             R16 2 1
       83 SETTABLEKS                       R16 R15 K11 ["PageTitle"]
       85 GETUPVAL                         R16 6
       86 GETUPVAL                         R17 8
       87 DUPTABLE                         R18 K25 [{["LayoutOrder"], ["tag"] = "auto-xy padding-top-medium text-title-small text-wrap text-align-x-left", ["Text"]}]
       88 MOVE                             R19 R11
       89 CALL                             R19 0 1
       90 SETTABLEKS                       R19 R18 K20 ["LayoutOrder"]
       92 GETTABLEKS                       R19 R8 K12 ["ScriptIdentityTitle"]
       94 SETTABLEKS                       R19 R18 K22 ["Text"]
       96 CALL                             R16 2 1
       97 SETTABLEKS                       R16 R15 K12 ["ScriptIdentityTitle"]
       99 GETUPVAL                         R16 6
      100 GETUPVAL                         R17 8
      101 DUPTABLE                         R18 K27 [{["LayoutOrder"], ["tag"] = "auto-xy text-caption-small text-wrap text-align-x-left", ["Text"]}]
      102 MOVE                             R19 R11
      103 CALL                             R19 0 1
      104 SETTABLEKS                       R19 R18 K20 ["LayoutOrder"]
      106 GETTABLEKS                       R19 R8 K13 ["ScriptIdentityDescription"]
      108 SETTABLEKS                       R19 R18 K22 ["Text"]
      110 CALL                             R16 2 1
      111 SETTABLEKS                       R16 R15 K13 ["ScriptIdentityDescription"]
      113 GETUPVAL                         R16 6
      114 GETUPVAL                         R17 9
      115 GETTABLEKS                       R17 R17 K28 ["Root"]
      117 DUPTABLE                         R18 K36 [{["LayoutOrder"], ["label"] = "", ["placeholder"], ["onItemChanged"], ["size"], ["width"], ["items"]}]
      118 MOVE                             R19 R11
      119 CALL                             R19 0 1
      120 SETTABLEKS                       R19 R18 K20 ["LayoutOrder"]
      122 GETTABLE                         R19 R8 R1
      123 SETTABLEKS                       R19 R18 K31 ["placeholder"]
      125 SETTABLEKS                       R10 R18 K32 ["onItemChanged"]
      127 GETUPVAL                         R19 10
      128 GETTABLEKS                       R19 R19 K37 ["Enums"]
      130 GETTABLEKS                       R19 R19 K38 ["InputSize"]
      132 GETTABLEKS                       R19 R19 K39 ["Small"]
      134 SETTABLEKS                       R19 R18 K33 ["size"]
      136 GETUPVAL                         R19 11
      137 SETTABLEKS                       R19 R18 K34 ["width"]
      139 SETTABLEKS                       R9 R18 K35 ["items"]
      141 CALL                             R16 2 1
      142 SETTABLEKS                       R16 R15 K14 ["IdentitySelector"]
      144 JUMPIFNOT                        R7 ; [+13]
      145 GETUPVAL                         R16 6
      146 GETUPVAL                         R17 8
      147 DUPTABLE                         R18 K41 [{["LayoutOrder"], ["tag"] = "auto-xy text-caption-small text-wrap text-align-x-left content-alert", ["Text"]}]
      148 MOVE                             R19 R11
      149 CALL                             R19 0 1
      150 SETTABLEKS                       R19 R18 K20 ["LayoutOrder"]
      152 GETTABLEKS                       R19 R8 K42 ["RestartRequired"]
      154 SETTABLEKS                       R19 R18 K22 ["Text"]
      156 CALL                             R16 2 1
      157 JUMP                             ; [+1]
      158 LOADNIL                          R16
      159 SETTABLEKS                       R16 R15 K15 ["RestartNotice"]
      161 GETUPVAL                         R16 6
      162 GETUPVAL                         R17 8
      163 DUPTABLE                         R18 K44 [{["LayoutOrder"], ["tag"] = "auto-xy padding-top-medium text-title-small text-wrap text-align-x-left", ["Text"] = "Context Compaction"}]
      164 MOVE                             R19 R11
      165 CALL                             R19 0 1
      166 SETTABLEKS                       R19 R18 K20 ["LayoutOrder"]
      168 CALL                             R16 2 1
      169 SETTABLEKS                       R16 R15 K16 ["CompactionTitle"]
      171 GETUPVAL                         R16 6
      172 GETUPVAL                         R17 8
      173 DUPTABLE                         R18 K46 [{["LayoutOrder"], ["tag"] = "auto-xy text-caption-small text-wrap text-align-x-left", ["Text"] = "Force context compaction on the current thread, regardless of token count."}]
      174 MOVE                             R19 R11
      175 CALL                             R19 0 1
      176 SETTABLEKS                       R19 R18 K20 ["LayoutOrder"]
      178 CALL                             R16 2 1
      179 SETTABLEKS                       R16 R15 K17 ["CompactionDescription"]
      181 GETUPVAL                         R16 6
      182 GETUPVAL                         R17 12
      183 DUPTABLE                         R18 K51 [{"LayoutOrder", "text", "size", "variant", "isDisabled", "onActivated"}]
      184 MOVE                             R19 R11
      185 CALL                             R19 0 1
      186 SETTABLEKS                       R19 R18 K20 ["LayoutOrder"]
      188 JUMPIFNOT                        R6 ; [+2]
      189 LOADK                            R19 K52 ["Compacting..."]
      190 JUMP                             ; [+1]
      191 LOADK                            R19 K53 ["Force Compact"]
      192 SETTABLEKS                       R19 R18 K47 ["text"]
      194 GETUPVAL                         R19 10
      195 GETTABLEKS                       R19 R19 K37 ["Enums"]
      197 GETTABLEKS                       R19 R19 K54 ["ButtonSize"]
      199 GETTABLEKS                       R19 R19 K39 ["Small"]
      201 SETTABLEKS                       R19 R18 K33 ["size"]
      203 GETUPVAL                         R19 10
      204 GETTABLEKS                       R19 R19 K37 ["Enums"]
      206 GETTABLEKS                       R19 R19 K55 ["ButtonVariant"]
      208 GETTABLEKS                       R19 R19 K56 ["Standard"]
      210 SETTABLEKS                       R19 R18 K48 ["variant"]
      212 SETTABLEKS                       R6 R18 K49 ["isDisabled"]
      214 SETTABLEKS                       R5 R18 K50 ["onActivated"]
      216 CALL                             R16 2 1
      217 SETTABLEKS                       R16 R15 K18 ["ForceCompactButton"]
      219 CALL                             R12 3 -1
      220 RETURN                           R12 -1

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
       56 GETTABLEKS                       R8 R3 K18 ["Button"]
       58 GETTABLEKS                       R9 R3 K19 ["Dropdown"]
       60 GETTABLEKS                       R10 R3 K20 ["Text"]
       62 GETTABLEKS                       R11 R3 K21 ["View"]
       64 GETTABLEKS                       R12 R5 K22 ["createNextOrder"]
       66 GETTABLEKS                       R13 R4 K23 ["createElement"]
       68 GETTABLEKS                       R14 R1 K24 ["USE_ELEVATED_CAPABILITIES_KEY"]
       70 GETIMPORT                        R15 K27 [UDim.new]
       72 LOADN                            R16 0
       73 LOADN                            R17 250
       74 CALL                             R15 2 1
       75 DUPCLOSURE                       R16 K28 [PROTO_6]
       76 CAPTURE                          VAL R2
       77 CAPTURE                          VAL R4
       78 CAPTURE                          VAL R7
       79 CAPTURE                          VAL R14
       80 CAPTURE                          VAL R6
       81 CAPTURE                          VAL R12
       82 CAPTURE                          VAL R13
       83 CAPTURE                          VAL R11
       84 CAPTURE                          VAL R10
       85 CAPTURE                          VAL R9
       86 CAPTURE                          VAL R3
       87 CAPTURE                          VAL R15
       88 CAPTURE                          VAL R8
       89 RETURN                           R16 1
