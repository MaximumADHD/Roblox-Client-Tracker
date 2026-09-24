PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 FASTCALL1                        ASSERT R1 ; [+2]
        4 GETIMPORT                        R0 K2 [assert]
        6 CALL                             R0 1 0
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K3 ["isAvatarTypeEqual"]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K0 ["current"]
       13 CALL                             R1 1 1
       14 NOT                              R0 R1
       15 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 FASTCALL1                        ASSERT R1 ; [+2]
        4 GETIMPORT                        R0 K2 [assert]
        6 CALL                             R0 1 0
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K3 ["isEqualToCurrentSettings"]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K0 ["current"]
       13 CALL                             R1 1 1
       14 NOT                              R0 R1
       15 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["onAvatarSettingsPublish"]
        4 NAMECALL                         R0 R0 K1 ["Invoke"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["discardSettings"]
        4 NAMECALL                         R0 R0 K1 ["Invoke"]
        6 CALL                             R0 2 0
        7 GETUPVAL                         R0 2
        8 CALL                             R0 0 1
        9 JUMPIFNOT                        R0 ; [+18]
       10 GETUPVAL                         R1 3
       11 GETTABLEKS                       R1 R1 K2 ["current"]
       13 FASTCALL1                        ASSERT R1 ; [+2]
       14 GETIMPORT                        R0 K4 [assert]
       16 CALL                             R0 1 0
       17 GETUPVAL                         R0 4
       18 GETTABLEKS                       R0 R0 K5 ["discardUnpublishedSettings"]
       20 GETUPVAL                         R1 3
       21 GETTABLEKS                       R1 R1 K2 ["current"]
       23 CALL                             R0 1 0
       24 GETUPVAL                         R0 5
       25 NEWTABLE                         R1 0 0
       27 CALL                             R0 1 0
       28 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["initialize"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_5:
        0 JUMPIFNOT                        R0 ; [+14]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["current"]
        4 FASTCALL1                        ASSERT R2 ; [+2]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 1 0
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K3 ["saveUnpublishedSettings"]
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K0 ["current"]
       14 CALL                             R1 1 0
       15 GETUPVAL                         R1 2
       16 GETTABLEKS                       R1 R1 K4 ["set"]
       18 MOVE                             R2 R0
       19 CALL                             R1 1 0
       20 GETUPVAL                         R1 3
       21 NEWTABLE                         R2 0 0
       23 CALL                             R1 1 0
       24 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 FASTCALL1                        ASSERT R1 ; [+2]
        4 GETIMPORT                        R0 K2 [assert]
        6 CALL                             R0 1 0
        7 GETUPVAL                         R0 1
        8 GETTABLEKS                       R0 R0 K3 ["saveUnpublishedSettings"]
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K0 ["current"]
       13 CALL                             R0 1 0
       14 GETUPVAL                         R0 2
       15 GETTABLEKS                       R0 R0 K4 ["set"]
       17 LOADB                            R1 1
       18 CALL                             R0 1 0
       19 GETUPVAL                         R0 3
       20 NEWTABLE                         R1 0 0
       22 CALL                             R0 1 0
       23 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 FASTCALL1                        ASSERT R1 ; [+2]
        4 GETIMPORT                        R0 K2 [assert]
        6 CALL                             R0 1 0
        7 GETUPVAL                         R0 1
        8 GETTABLEKS                       R0 R0 K3 ["saveUnpublishedSettings"]
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K0 ["current"]
       13 CALL                             R0 1 0
       14 GETUPVAL                         R0 2
       15 NEWTABLE                         R1 0 0
       17 CALL                             R0 1 0
       18 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 FASTCALL1                        ASSERT R1 ; [+2]
        4 GETIMPORT                        R0 K2 [assert]
        6 CALL                             R0 1 0
        7 GETUPVAL                         R0 1
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R2 R2 K3 ["hasUnpublishedChanges"]
       11 GETUPVAL                         R4 3
       12 GETTABLEKS                       R4 R4 K4 ["isEqualToCurrentSettings"]
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R5 R5 K0 ["current"]
       17 CALL                             R4 1 1
       18 NOT                              R3 R4
       19 NAMECALL                         R0 R0 K5 ["Invoke"]
       21 CALL                             R0 3 0
       22 GETUPVAL                         R0 1
       23 GETUPVAL                         R2 2
       24 GETTABLEKS                       R2 R2 K6 ["hasUnpublishedAvatarTypeChanges"]
       26 GETUPVAL                         R4 3
       27 GETTABLEKS                       R4 R4 K7 ["isAvatarTypeEqual"]
       29 GETUPVAL                         R5 0
       30 GETTABLEKS                       R5 R5 K0 ["current"]
       32 CALL                             R4 1 1
       33 NOT                              R3 R4
       34 NAMECALL                         R0 R0 K5 ["Invoke"]
       36 CALL                             R0 3 0
       37 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["onInitializationStarted"]
        4 DUPCLOSURE                       R3 K1 [PROTO_4]
        5 CAPTURE                          UPVAL U2
        6 NAMECALL                         R0 R0 K2 ["OnInvoke"]
        8 CALL                             R0 3 0
        9 GETUPVAL                         R0 0
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K3 ["databaseLoaded"]
       13 NEWCLOSURE                       R3 P1
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          UPVAL U4
       17 CAPTURE                          UPVAL U5
       18 NAMECALL                         R0 R0 K2 ["OnInvoke"]
       20 CALL                             R0 3 0
       21 GETUPVAL                         R0 0
       22 GETUPVAL                         R2 1
       23 GETTABLEKS                       R2 R2 K4 ["refreshPluginState"]
       25 NEWCLOSURE                       R3 P2
       26 CAPTURE                          UPVAL U3
       27 CAPTURE                          UPVAL U2
       28 CAPTURE                          UPVAL U4
       29 CAPTURE                          UPVAL U5
       30 NAMECALL                         R0 R0 K2 ["OnInvoke"]
       32 CALL                             R0 3 0
       33 GETUPVAL                         R0 0
       34 GETUPVAL                         R2 1
       35 GETTABLEKS                       R2 R2 K5 ["onSettingsPublished"]
       37 NEWCLOSURE                       R3 P3
       38 CAPTURE                          UPVAL U3
       39 CAPTURE                          UPVAL U2
       40 CAPTURE                          UPVAL U5
       41 NAMECALL                         R0 R0 K2 ["OnInvoke"]
       43 CALL                             R0 3 0
       44 GETUPVAL                         R0 6
       45 CALL                             R0 0 1
       46 JUMPIFNOT                        R0 ; [+16]
       47 GETUPVAL                         R0 0
       48 GETUPVAL                         R2 1
       49 GETTABLEKS                       R2 R2 K6 ["hasPlaceOverridableChanges"]
       51 NEWCLOSURE                       R3 P4
       52 CAPTURE                          UPVAL U7
       53 NAMECALL                         R0 R0 K2 ["OnInvoke"]
       55 CALL                             R0 3 0
       56 GETUPVAL                         R0 0
       57 GETUPVAL                         R2 1
       58 GETTABLEKS                       R2 R2 K7 ["requestPlaceOverridableChangesStatus"]
       60 NAMECALL                         R0 R0 K8 ["Invoke"]
       62 CALL                             R0 2 0
       63 GETUPVAL                         R0 0
       64 GETUPVAL                         R2 1
       65 GETTABLEKS                       R2 R2 K9 ["requestUnpublishedChangesStatus"]
       67 NEWCLOSURE                       R3 P5
       68 CAPTURE                          UPVAL U3
       69 CAPTURE                          UPVAL U0
       70 CAPTURE                          UPVAL U1
       71 CAPTURE                          UPVAL U2
       72 NAMECALL                         R0 R0 K2 ["OnInvoke"]
       74 CALL                             R0 3 0
       75 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R4 R1 K1 ["settings"]
        7 JUMPIFNOTEQKNIL                  R4 ; [+2]
        9 LOADB                            R3 0 +1
       10 LOADB                            R3 1
       11 FASTCALL2K                       ASSERT R3 K2 ; [+4]
       13 LOADK                            R4 K2 ["Settings must not be nil in AvatarSettingsContext"]
       14 GETIMPORT                        R2 K4 [assert]
       16 CALL                             R2 2 0
       17 GETUPVAL                         R2 2
       18 NAMECALL                         R2 R2 K5 ["use"]
       20 CALL                             R2 1 1
       21 NAMECALL                         R2 R2 K6 ["get"]
       23 CALL                             R2 1 1
       24 GETUPVAL                         R3 3
       25 LOADB                            R4 0
       26 CALL                             R3 1 1
       27 GETUPVAL                         R4 0
       28 GETTABLEKS                       R4 R4 K7 ["useState"]
       30 LOADB                            R5 0
       31 CALL                             R4 1 2
       32 GETUPVAL                         R6 0
       33 GETTABLEKS                       R6 R6 K7 ["useState"]
       35 NEWTABLE                         R7 0 0
       37 CALL                             R6 1 2
       38 GETUPVAL                         R8 0
       39 GETTABLEKS                       R8 R8 K8 ["useRef"]
       41 MOVE                             R9 R1
       42 CALL                             R8 1 1
       43 SETTABLEKS                       R1 R8 K9 ["current"]
       45 GETTABLEKS                       R11 R8 K9 ["current"]
       47 JUMPIFNOTEQKNIL                  R11 ; [+2]
       49 LOADB                            R10 0 +1
       50 LOADB                            R10 1
       51 FASTCALL2K                       ASSERT R10 K10 ; [+4]
       53 LOADK                            R11 K10 ["AvatarSettingsContext must not be nil"]
       54 GETIMPORT                        R9 K4 [assert]
       56 CALL                             R9 2 0
       57 DUPTABLE                         R9 K12 [{"content"}]
       58 DUPTABLE                         R10 K21 [{["databaseLoaded"], ["canPublish"] = False, ["canCreatePlaceSettings"] = False, ["isAvatarTypeOutOfSync"], ["isSettingOutOfSync"], ["saveUnpublishedSettings"], ["discardUnpublishedSettings"]}]
       59 SETTABLEKS                       R3 R10 K13 ["databaseLoaded"]
       61 NEWCLOSURE                       R11 P0
       62 CAPTURE                          VAL R8
       63 CAPTURE                          UPVAL U4
       64 SETTABLEKS                       R11 R10 K17 ["isAvatarTypeOutOfSync"]
       66 NEWCLOSURE                       R11 P1
       67 CAPTURE                          VAL R8
       68 CAPTURE                          UPVAL U4
       69 SETTABLEKS                       R11 R10 K18 ["isSettingOutOfSync"]
       71 NEWCLOSURE                       R11 P2
       72 CAPTURE                          VAL R2
       73 CAPTURE                          UPVAL U5
       74 SETTABLEKS                       R11 R10 K19 ["saveUnpublishedSettings"]
       76 NEWCLOSURE                       R11 P3
       77 CAPTURE                          VAL R2
       78 CAPTURE                          UPVAL U5
       79 CAPTURE                          UPVAL U6
       80 CAPTURE                          VAL R8
       81 CAPTURE                          UPVAL U4
       82 CAPTURE                          VAL R7
       83 SETTABLEKS                       R11 R10 K20 ["discardUnpublishedSettings"]
       85 SETTABLEKS                       R10 R9 K11 ["content"]
       87 GETTABLEKS                       R12 R9 K11 ["content"]
       89 JUMPIFNOTEQKNIL                  R12 ; [+2]
       91 LOADB                            R11 0 +1
       92 LOADB                            R11 1
       93 FASTCALL2K                       ASSERT R11 K22 ; [+4]
       95 LOADK                            R12 K22 ["Content must not be nil in PublishContext"]
       96 GETIMPORT                        R10 K4 [assert]
       98 CALL                             R10 2 0
       99 GETUPVAL                         R11 4
      100 GETTABLEKS                       R11 R11 K23 ["isEqualToCurrentSettings"]
      102 MOVE                             R12 R1
      103 CALL                             R11 1 1
      104 NOT                              R10 R11
      105 GETUPVAL                         R12 4
      106 GETTABLEKS                       R12 R12 K24 ["isAvatarTypeEqual"]
      108 MOVE                             R13 R1
      109 CALL                             R12 1 1
      110 NOT                              R11 R12
      111 GETUPVAL                         R14 5
      112 GETTABLEKS                       R14 R14 K25 ["hasUnpublishedChanges"]
      114 MOVE                             R15 R10
      115 NAMECALL                         R12 R2 K26 ["Invoke"]
      117 CALL                             R12 3 0
      118 GETUPVAL                         R14 5
      119 GETTABLEKS                       R14 R14 K27 ["hasUnpublishedAvatarTypeChanges"]
      121 MOVE                             R15 R11
      122 NAMECALL                         R12 R2 K26 ["Invoke"]
      124 CALL                             R12 3 0
      125 GETUPVAL                         R12 0
      126 GETTABLEKS                       R12 R12 K28 ["useEffect"]
      128 NEWCLOSURE                       R13 P4
      129 CAPTURE                          VAL R2
      130 CAPTURE                          UPVAL U5
      131 CAPTURE                          UPVAL U4
      132 CAPTURE                          VAL R8
      133 CAPTURE                          VAL R3
      134 CAPTURE                          VAL R7
      135 CAPTURE                          UPVAL U7
      136 CAPTURE                          VAL R5
      137 NEWTABLE                         R14 0 0
      139 CALL                             R12 2 0
      140 GETTABLEKS                       R12 R9 K11 ["content"]
      142 GETTABLEKS                       R14 R3 K29 ["value"]
      144 AND                              R13 R14 R10
      145 SETTABLEKS                       R13 R12 K14 ["canPublish"]
      147 GETTABLEKS                       R12 R9 K11 ["content"]
      149 GETTABLEKS                       R14 R3 K29 ["value"]
      151 AND                              R13 R14 R4
      152 SETTABLEKS                       R13 R12 K16 ["canCreatePlaceSettings"]
      154 GETUPVAL                         R12 8
      155 GETUPVAL                         R13 9
      156 GETTABLEKS                       R13 R13 K30 ["Provider"]
      158 DUPTABLE                         R14 K31 [{"value"}]
      159 SETTABLEKS                       R9 R14 K29 ["value"]
      161 GETTABLEKS                       R15 R0 K32 ["children"]
      163 CALL                             R12 3 -1
      164 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Components"]
       13 GETTABLEKS                       R2 R2 K8 ["Contexts"]
       15 GETTABLEKS                       R2 R2 K9 ["AvatarSettingsContext"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K10 ["Packages"]
       22 GETTABLEKS                       R3 R3 K11 ["Framework"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K6 ["Src"]
       29 GETTABLEKS                       R4 R4 K7 ["Components"]
       31 GETTABLEKS                       R4 R4 K8 ["Contexts"]
       33 GETTABLEKS                       R4 R4 K12 ["PublishProvider"]
       35 GETTABLEKS                       R4 R4 K13 ["PublishContext"]
       37 CALL                             R3 1 1
       38 GETIMPORT                        R4 K5 [require]
       40 GETTABLEKS                       R5 R0 K10 ["Packages"]
       42 GETTABLEKS                       R5 R5 K14 ["React"]
       44 CALL                             R4 1 1
       45 GETIMPORT                        R5 K5 [require]
       47 GETTABLEKS                       R6 R0 K6 ["Src"]
       49 GETTABLEKS                       R6 R6 K15 ["Util"]
       51 GETTABLEKS                       R6 R6 K16 ["InvokeKeys"]
       53 CALL                             R5 1 1
       54 GETIMPORT                        R6 K5 [require]
       56 GETTABLEKS                       R7 R0 K6 ["Src"]
       58 GETTABLEKS                       R7 R7 K7 ["Components"]
       60 GETTABLEKS                       R7 R7 K8 ["Contexts"]
       62 GETTABLEKS                       R7 R7 K12 ["PublishProvider"]
       64 GETTABLEKS                       R7 R7 K17 ["publishedSettingsManager"]
       66 CALL                             R6 1 1
       67 GETIMPORT                        R7 K5 [require]
       69 GETTABLEKS                       R8 R0 K6 ["Src"]
       71 GETTABLEKS                       R8 R8 K15 ["Util"]
       73 GETTABLEKS                       R8 R8 K18 ["settingUtil"]
       75 CALL                             R7 1 1
       76 GETIMPORT                        R8 K5 [require]
       78 GETTABLEKS                       R9 R0 K6 ["Src"]
       80 GETTABLEKS                       R9 R9 K19 ["Flags"]
       82 GETTABLEKS                       R9 R9 K20 ["getEngineFeatureAvatarSettingsPlaceAvatarRules"]
       84 CALL                             R8 1 1
       85 GETIMPORT                        R9 K5 [require]
       87 GETTABLEKS                       R10 R0 K6 ["Src"]
       89 GETTABLEKS                       R10 R10 K19 ["Flags"]
       91 GETTABLEKS                       R10 R10 K21 ["getFFlagAvatarSettingsFixRevertButtonStuck"]
       93 CALL                             R9 1 1
       94 GETTABLEKS                       R10 R2 K22 ["ContextServices"]
       96 GETTABLEKS                       R11 R10 K23 ["Plugin"]
       98 GETTABLEKS                       R12 R7 K24 ["useSetting"]
      100 GETTABLEKS                       R13 R4 K25 ["createElement"]
      102 DUPCLOSURE                       R14 K26 [PROTO_11]
      103 CAPTURE                          VAL R4
      104 CAPTURE                          VAL R1
      105 CAPTURE                          VAL R11
      106 CAPTURE                          VAL R12
      107 CAPTURE                          VAL R6
      108 CAPTURE                          VAL R5
      109 CAPTURE                          VAL R9
      110 CAPTURE                          VAL R8
      111 CAPTURE                          VAL R13
      112 CAPTURE                          VAL R3
      113 RETURN                           R14 1
