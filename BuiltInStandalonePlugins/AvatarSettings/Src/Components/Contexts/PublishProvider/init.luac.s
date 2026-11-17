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
        9 JUMPIF                           R0 ; [+18]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["apply"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["current"]
        6 MOVE                             R4 R0
        7 MOVE                             R5 R1
        8 LOADB                            R6 1
        9 CALL                             R2 4 0
       10 GETUPVAL                         R2 2
       11 NEWTABLE                         R3 0 0
       13 CALL                             R2 1 0
       14 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["initialize"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 1
        6 JUMPIFNOT                        R0 ; [+4]
        7 GETUPVAL                         R0 2
        8 GETTABLEKS                       R0 R0 K1 ["reset"]
       10 CALL                             R0 0 0
       11 RETURN                           R0 0

PROTO_6:
        0 JUMPIFNOT                        R0 ; [+33]
        1 GETUPVAL                         R3 0
        2 CALL                             R3 0 1
        3 JUMPIFNOT                        R3 ; [+16]
        4 JUMPIFNOT                        R1 ; [+29]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K0 ["apply"]
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R4 R4 K1 ["current"]
       11 MOVE                             R5 R1
       12 MOVE                             R6 R2
       13 LOADB                            R7 1
       14 CALL                             R3 4 0
       15 GETUPVAL                         R3 3
       16 NEWTABLE                         R4 0 0
       18 CALL                             R3 1 0
       19 JUMP                             ; [+14]
       20 GETUPVAL                         R4 2
       21 GETTABLEKS                       R4 R4 K1 ["current"]
       23 FASTCALL1                        ASSERT R4 ; [+2]
       24 GETIMPORT                        R3 K3 [assert]
       26 CALL                             R3 1 0
       27 GETUPVAL                         R3 4
       28 GETTABLEKS                       R3 R3 K4 ["saveUnpublishedSettings"]
       30 GETUPVAL                         R4 2
       31 GETTABLEKS                       R4 R4 K1 ["current"]
       33 CALL                             R3 1 0
       34 GETUPVAL                         R3 5
       35 GETTABLEKS                       R3 R3 K5 ["set"]
       37 MOVE                             R4 R0
       38 CALL                             R3 1 0
       39 GETUPVAL                         R3 3
       40 NEWTABLE                         R4 0 0
       42 CALL                             R3 1 0
       43 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+16]
        3 JUMPIFNOT                        R0 ; [+29]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["apply"]
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R3 R3 K1 ["current"]
       10 MOVE                             R4 R0
       11 MOVE                             R5 R1
       12 LOADB                            R6 1
       13 CALL                             R2 4 0
       14 GETUPVAL                         R2 3
       15 NEWTABLE                         R3 0 0
       17 CALL                             R2 1 0
       18 JUMP                             ; [+14]
       19 GETUPVAL                         R3 2
       20 GETTABLEKS                       R3 R3 K1 ["current"]
       22 FASTCALL1                        ASSERT R3 ; [+2]
       23 GETIMPORT                        R2 K3 [assert]
       25 CALL                             R2 1 0
       26 GETUPVAL                         R2 4
       27 GETTABLEKS                       R2 R2 K4 ["saveUnpublishedSettings"]
       29 GETUPVAL                         R3 2
       30 GETTABLEKS                       R3 R3 K1 ["current"]
       32 CALL                             R2 1 0
       33 GETUPVAL                         R2 5
       34 GETTABLEKS                       R2 R2 K5 ["set"]
       36 LOADB                            R3 1
       37 CALL                             R2 1 0
       38 GETUPVAL                         R2 3
       39 NEWTABLE                         R3 0 0
       41 CALL                             R2 1 0
       42 RETURN                           R0 0

PROTO_8:
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

PROTO_9:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_10:
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

PROTO_11:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 GETUPVAL                         R1 3
        5 GETUPVAL                         R3 4
        6 GETTABLEKS                       R3 R3 K0 ["onInitializationStarted"]
        8 DUPCLOSURE                       R4 K1 [PROTO_5]
        9 CAPTURE                          UPVAL U5
       10 CAPTURE                          UPVAL U6
       11 CAPTURE                          UPVAL U0
       12 NAMECALL                         R1 R1 K2 ["OnInvoke"]
       14 CALL                             R1 3 0
       15 GETUPVAL                         R1 3
       16 GETUPVAL                         R3 4
       17 GETTABLEKS                       R3 R3 K3 ["databaseLoaded"]
       19 NEWCLOSURE                       R4 P2
       20 CAPTURE                          UPVAL U6
       21 CAPTURE                          UPVAL U0
       22 CAPTURE                          UPVAL U1
       23 CAPTURE                          UPVAL U2
       24 CAPTURE                          UPVAL U5
       25 CAPTURE                          UPVAL U7
       26 NAMECALL                         R1 R1 K2 ["OnInvoke"]
       28 CALL                             R1 3 0
       29 GETUPVAL                         R1 3
       30 GETUPVAL                         R3 4
       31 GETTABLEKS                       R3 R3 K4 ["refreshPluginState"]
       33 NEWCLOSURE                       R4 P3
       34 CAPTURE                          UPVAL U6
       35 CAPTURE                          UPVAL U0
       36 CAPTURE                          UPVAL U1
       37 CAPTURE                          UPVAL U2
       38 CAPTURE                          UPVAL U5
       39 CAPTURE                          UPVAL U7
       40 NAMECALL                         R1 R1 K2 ["OnInvoke"]
       42 CALL                             R1 3 0
       43 GETUPVAL                         R1 3
       44 GETUPVAL                         R3 4
       45 GETTABLEKS                       R3 R3 K5 ["onSettingsPublished"]
       47 NEWCLOSURE                       R4 P4
       48 CAPTURE                          UPVAL U1
       49 CAPTURE                          UPVAL U5
       50 CAPTURE                          UPVAL U2
       51 NAMECALL                         R1 R1 K2 ["OnInvoke"]
       53 CALL                             R1 3 0
       54 GETUPVAL                         R1 8
       55 CALL                             R1 0 1
       56 JUMPIFNOT                        R1 ; [+16]
       57 GETUPVAL                         R1 3
       58 GETUPVAL                         R3 4
       59 GETTABLEKS                       R3 R3 K6 ["hasPlaceOverridableChanges"]
       61 NEWCLOSURE                       R4 P5
       62 CAPTURE                          UPVAL U9
       63 NAMECALL                         R1 R1 K2 ["OnInvoke"]
       65 CALL                             R1 3 0
       66 GETUPVAL                         R1 3
       67 GETUPVAL                         R3 4
       68 GETTABLEKS                       R3 R3 K7 ["requestPlaceOverridableChangesStatus"]
       70 NAMECALL                         R1 R1 K8 ["Invoke"]
       72 CALL                             R1 2 0
       73 GETUPVAL                         R1 3
       74 GETUPVAL                         R3 4
       75 GETTABLEKS                       R3 R3 K9 ["requestUnpublishedChangesStatus"]
       77 NEWCLOSURE                       R4 P6
       78 CAPTURE                          UPVAL U1
       79 CAPTURE                          UPVAL U3
       80 CAPTURE                          UPVAL U4
       81 CAPTURE                          UPVAL U5
       82 NAMECALL                         R1 R1 K2 ["OnInvoke"]
       84 CALL                             R1 3 0
       85 RETURN                           R0 0

PROTO_12:
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
       17 GETUPVAL                         R2 0
       18 GETTABLEKS                       R2 R2 K0 ["useContext"]
       20 GETUPVAL                         R3 2
       21 CALL                             R2 1 1
       22 GETUPVAL                         R3 3
       23 NAMECALL                         R3 R3 K5 ["use"]
       25 CALL                             R3 1 1
       26 NAMECALL                         R3 R3 K6 ["get"]
       28 CALL                             R3 1 1
       29 GETUPVAL                         R4 4
       30 LOADB                            R5 0
       31 CALL                             R4 1 1
       32 GETUPVAL                         R5 0
       33 GETTABLEKS                       R5 R5 K7 ["useState"]
       35 LOADB                            R6 0
       36 CALL                             R5 1 2
       37 GETUPVAL                         R7 0
       38 GETTABLEKS                       R7 R7 K7 ["useState"]
       40 NEWTABLE                         R8 0 0
       42 CALL                             R7 1 2
       43 GETUPVAL                         R9 0
       44 GETTABLEKS                       R9 R9 K8 ["useRef"]
       46 MOVE                             R10 R1
       47 CALL                             R9 1 1
       48 SETTABLEKS                       R1 R9 K9 ["current"]
       50 GETTABLEKS                       R12 R9 K9 ["current"]
       52 JUMPIFNOTEQKNIL                  R12 ; [+2]
       54 LOADB                            R11 0 +1
       55 LOADB                            R11 1
       56 FASTCALL2K                       ASSERT R11 K10 ; [+4]
       58 LOADK                            R12 K10 ["AvatarSettingsContext must not be nil"]
       59 GETIMPORT                        R10 K4 [assert]
       61 CALL                             R10 2 0
       62 DUPTABLE                         R10 K12 [{"content"}]
       63 DUPTABLE                         R11 K22 [{["databaseLoaded"], ["canPublish"] = False, ["canCreatePlaceSettings"] = False, ["hasInvalidSettings"], ["isAvatarTypeOutOfSync"], ["isSettingOutOfSync"], ["saveUnpublishedSettings"], ["discardUnpublishedSettings"]}]
       64 SETTABLEKS                       R4 R11 K13 ["databaseLoaded"]
       66 GETUPVAL                         R12 5
       67 CALL                             R12 0 1
       68 JUMPIFNOT                        R12 ; [+7]
       69 GETUPVAL                         R13 6
       70 GETTABLEKS                       R14 R1 K1 ["settings"]
       72 GETTABLEKS                       R14 R14 K23 ["bodySettings"]
       74 CALL                             R13 1 1
       75 NOT                              R12 R13
       76 SETTABLEKS                       R12 R11 K17 ["hasInvalidSettings"]
       78 NEWCLOSURE                       R12 P0
       79 CAPTURE                          VAL R9
       80 CAPTURE                          UPVAL U7
       81 SETTABLEKS                       R12 R11 K18 ["isAvatarTypeOutOfSync"]
       83 NEWCLOSURE                       R12 P1
       84 CAPTURE                          VAL R9
       85 CAPTURE                          UPVAL U7
       86 SETTABLEKS                       R12 R11 K19 ["isSettingOutOfSync"]
       88 NEWCLOSURE                       R12 P2
       89 CAPTURE                          VAL R3
       90 CAPTURE                          UPVAL U8
       91 SETTABLEKS                       R12 R11 K20 ["saveUnpublishedSettings"]
       93 NEWCLOSURE                       R12 P3
       94 CAPTURE                          VAL R3
       95 CAPTURE                          UPVAL U8
       96 CAPTURE                          UPVAL U9
       97 CAPTURE                          VAL R9
       98 CAPTURE                          UPVAL U7
       99 CAPTURE                          VAL R8
      100 SETTABLEKS                       R12 R11 K21 ["discardUnpublishedSettings"]
      102 SETTABLEKS                       R11 R10 K11 ["content"]
      104 GETTABLEKS                       R13 R10 K11 ["content"]
      106 JUMPIFNOTEQKNIL                  R13 ; [+2]
      108 LOADB                            R12 0 +1
      109 LOADB                            R12 1
      110 FASTCALL2K                       ASSERT R12 K24 ; [+4]
      112 LOADK                            R13 K24 ["Content must not be nil in PublishContext"]
      113 GETIMPORT                        R11 K4 [assert]
      115 CALL                             R11 2 0
      116 GETUPVAL                         R12 7
      117 GETTABLEKS                       R12 R12 K25 ["isEqualToCurrentSettings"]
      119 MOVE                             R13 R1
      120 CALL                             R12 1 1
      121 NOT                              R11 R12
      122 GETUPVAL                         R13 7
      123 GETTABLEKS                       R13 R13 K26 ["isAvatarTypeEqual"]
      125 MOVE                             R14 R1
      126 CALL                             R13 1 1
      127 NOT                              R12 R13
      128 GETUPVAL                         R15 8
      129 GETTABLEKS                       R15 R15 K27 ["hasUnpublishedChanges"]
      131 MOVE                             R16 R11
      132 NAMECALL                         R13 R3 K28 ["Invoke"]
      134 CALL                             R13 3 0
      135 GETUPVAL                         R15 8
      136 GETTABLEKS                       R15 R15 K29 ["hasUnpublishedAvatarTypeChanges"]
      138 MOVE                             R16 R12
      139 NAMECALL                         R13 R3 K28 ["Invoke"]
      141 CALL                             R13 3 0
      142 GETUPVAL                         R13 0
      143 GETTABLEKS                       R13 R13 K30 ["useEffect"]
      145 NEWCLOSURE                       R14 P4
      146 CAPTURE                          UPVAL U10
      147 CAPTURE                          VAL R9
      148 CAPTURE                          VAL R8
      149 CAPTURE                          VAL R3
      150 CAPTURE                          UPVAL U8
      151 CAPTURE                          UPVAL U7
      152 CAPTURE                          UPVAL U9
      153 CAPTURE                          VAL R4
      154 CAPTURE                          UPVAL U11
      155 CAPTURE                          VAL R6
      156 NEWTABLE                         R15 0 0
      158 CALL                             R13 2 0
      159 GETTABLEKS                       R13 R10 K11 ["content"]
      161 GETTABLEKS                       R15 R4 K31 ["value"]
      163 AND                              R14 R15 R11
      164 SETTABLEKS                       R14 R13 K14 ["canPublish"]
      166 GETTABLEKS                       R13 R10 K11 ["content"]
      168 GETTABLEKS                       R15 R4 K31 ["value"]
      170 AND                              R14 R15 R5
      171 SETTABLEKS                       R14 R13 K16 ["canCreatePlaceSettings"]
      173 GETUPVAL                         R13 12
      174 CALL                             R13 0 1
      175 JUMPIFNOT                        R13 ; [+14]
      176 GETTABLEKS                       R13 R2 K32 ["currentGameId"]
      178 JUMPIFNOTEQKN                    R13 K33 [0] ; [+11]
      180 GETTABLEKS                       R13 R10 K11 ["content"]
      182 LOADB                            R14 0
      183 SETTABLEKS                       R14 R13 K14 ["canPublish"]
      185 GETTABLEKS                       R13 R10 K11 ["content"]
      187 LOADB                            R14 0
      188 SETTABLEKS                       R14 R13 K16 ["canCreatePlaceSettings"]
      190 GETUPVAL                         R13 13
      191 GETUPVAL                         R14 14
      192 GETTABLEKS                       R14 R14 K34 ["Provider"]
      194 DUPTABLE                         R15 K35 [{"value"}]
      195 SETTABLEKS                       R10 R15 K31 ["value"]
      197 GETTABLEKS                       R16 R0 K36 ["children"]
      199 CALL                             R13 3 -1
      200 RETURN                           R13 -1

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
       20 GETTABLEKS                       R3 R0 K6 ["Src"]
       22 GETTABLEKS                       R3 R3 K10 ["Util"]
       24 GETTABLEKS                       R3 R3 K11 ["AvatarSettingsSyncTypes"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETTABLEKS                       R4 R0 K6 ["Src"]
       31 GETTABLEKS                       R4 R4 K7 ["Components"]
       33 GETTABLEKS                       R4 R4 K8 ["Contexts"]
       35 GETTABLEKS                       R4 R4 K12 ["EnableAvatarSettingsContext"]
       37 CALL                             R3 1 1
       38 GETIMPORT                        R4 K5 [require]
       40 GETTABLEKS                       R5 R0 K13 ["Packages"]
       42 GETTABLEKS                       R5 R5 K14 ["Framework"]
       44 CALL                             R4 1 1
       45 GETIMPORT                        R5 K5 [require]
       47 GETTABLEKS                       R6 R0 K6 ["Src"]
       49 GETTABLEKS                       R6 R6 K7 ["Components"]
       51 GETTABLEKS                       R6 R6 K8 ["Contexts"]
       53 GETTABLEKS                       R6 R6 K15 ["PublishProvider"]
       55 GETTABLEKS                       R6 R6 K16 ["PublishContext"]
       57 CALL                             R5 1 1
       58 GETIMPORT                        R6 K5 [require]
       60 GETTABLEKS                       R7 R0 K13 ["Packages"]
       62 GETTABLEKS                       R7 R7 K17 ["React"]
       64 CALL                             R6 1 1
       65 GETIMPORT                        R7 K5 [require]
       67 GETTABLEKS                       R8 R0 K6 ["Src"]
       69 GETTABLEKS                       R8 R8 K18 ["Flags"]
       71 GETTABLEKS                       R8 R8 K19 ["getFFlagAvatarSettingsEditUnsavedPlace"]
       73 CALL                             R7 1 1
       74 GETIMPORT                        R8 K5 [require]
       76 GETTABLEKS                       R9 R0 K6 ["Src"]
       78 GETTABLEKS                       R9 R9 K18 ["Flags"]
       80 GETTABLEKS                       R9 R9 K20 ["getFFlagAvatarSettingsSyncPublishedSnapshot"]
       82 CALL                             R8 1 1
       83 GETIMPORT                        R9 K5 [require]
       85 GETTABLEKS                       R10 R0 K6 ["Src"]
       87 GETTABLEKS                       R10 R10 K18 ["Flags"]
       89 GETTABLEKS                       R10 R10 K21 ["getFFlagAvatarSettingsValidateCustomBuildRange"]
       91 CALL                             R9 1 1
       92 GETIMPORT                        R10 K5 [require]
       94 GETTABLEKS                       R11 R0 K6 ["Src"]
       96 GETTABLEKS                       R11 R11 K10 ["Util"]
       98 GETTABLEKS                       R11 R11 K22 ["InvokeKeys"]
      100 CALL                             R10 1 1
      101 GETIMPORT                        R11 K5 [require]
      103 GETTABLEKS                       R12 R0 K6 ["Src"]
      105 GETTABLEKS                       R12 R12 K10 ["Util"]
      107 GETTABLEKS                       R12 R12 K23 ["isCustomBuildValid"]
      109 CALL                             R11 1 1
      110 GETIMPORT                        R12 K5 [require]
      112 GETTABLEKS                       R13 R0 K6 ["Src"]
      114 GETTABLEKS                       R13 R13 K7 ["Components"]
      116 GETTABLEKS                       R13 R13 K8 ["Contexts"]
      118 GETTABLEKS                       R13 R13 K15 ["PublishProvider"]
      120 GETTABLEKS                       R13 R13 K24 ["publishedSettingsManager"]
      122 CALL                             R12 1 1
      123 GETIMPORT                        R13 K5 [require]
      125 GETTABLEKS                       R14 R0 K6 ["Src"]
      127 GETTABLEKS                       R14 R14 K10 ["Util"]
      129 GETTABLEKS                       R14 R14 K25 ["settingUtil"]
      131 CALL                             R13 1 1
      132 GETIMPORT                        R14 K5 [require]
      134 GETTABLEKS                       R15 R0 K6 ["Src"]
      136 GETTABLEKS                       R15 R15 K10 ["Util"]
      138 GETTABLEKS                       R15 R15 K26 ["BridgingFiles"]
      140 GETTABLEKS                       R15 R15 K27 ["StandaloneFiles"]
      142 GETTABLEKS                       R15 R15 K28 ["settingsSnapshotState"]
      144 CALL                             R14 1 1
      145 GETIMPORT                        R15 K5 [require]
      147 GETTABLEKS                       R16 R0 K6 ["Src"]
      149 GETTABLEKS                       R16 R16 K18 ["Flags"]
      151 GETTABLEKS                       R16 R16 K29 ["getEngineFeatureAvatarSettingsPlaceAvatarRules"]
      153 CALL                             R15 1 1
      154 GETTABLEKS                       R16 R4 K30 ["ContextServices"]
      156 GETTABLEKS                       R17 R16 K31 ["Plugin"]
      158 GETTABLEKS                       R18 R13 K32 ["useSetting"]
      160 GETTABLEKS                       R19 R6 K33 ["createElement"]
      162 DUPCLOSURE                       R20 K34 [PROTO_12]
      163 CAPTURE                          VAL R6
      164 CAPTURE                          VAL R1
      165 CAPTURE                          VAL R3
      166 CAPTURE                          VAL R17
      167 CAPTURE                          VAL R18
      168 CAPTURE                          VAL R9
      169 CAPTURE                          VAL R11
      170 CAPTURE                          VAL R12
      171 CAPTURE                          VAL R10
      172 CAPTURE                          VAL R8
      173 CAPTURE                          VAL R14
      174 CAPTURE                          VAL R15
      175 CAPTURE                          VAL R7
      176 CAPTURE                          VAL R19
      177 CAPTURE                          VAL R5
      178 RETURN                           R20 1
