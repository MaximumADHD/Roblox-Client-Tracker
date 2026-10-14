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
        9 JUMPIF                           R0 ; [+21]
       10 GETUPVAL                         R0 3
       11 CALL                             R0 0 1
       12 JUMPIFNOT                        R0 ; [+18]
       13 GETUPVAL                         R1 4
       14 GETTABLEKS                       R1 R1 K2 ["current"]
       16 FASTCALL1                        ASSERT R1 ; [+2]
       17 GETIMPORT                        R0 K4 [assert]
       19 CALL                             R0 1 0
       20 GETUPVAL                         R0 5
       21 GETTABLEKS                       R0 R0 K5 ["discardUnpublishedSettings"]
       23 GETUPVAL                         R1 4
       24 GETTABLEKS                       R1 R1 K2 ["current"]
       26 CALL                             R0 1 0
       27 GETUPVAL                         R0 6
       28 NEWTABLE                         R1 0 0
       30 CALL                             R0 1 0
       31 RETURN                           R0 0

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
       63 DUPTABLE                         R11 K21 [{["databaseLoaded"], ["canPublish"] = False, ["canCreatePlaceSettings"] = False, ["isAvatarTypeOutOfSync"], ["isSettingOutOfSync"], ["saveUnpublishedSettings"], ["discardUnpublishedSettings"]}]
       64 SETTABLEKS                       R4 R11 K13 ["databaseLoaded"]
       66 NEWCLOSURE                       R12 P0
       67 CAPTURE                          VAL R9
       68 CAPTURE                          UPVAL U5
       69 SETTABLEKS                       R12 R11 K17 ["isAvatarTypeOutOfSync"]
       71 NEWCLOSURE                       R12 P1
       72 CAPTURE                          VAL R9
       73 CAPTURE                          UPVAL U5
       74 SETTABLEKS                       R12 R11 K18 ["isSettingOutOfSync"]
       76 NEWCLOSURE                       R12 P2
       77 CAPTURE                          VAL R3
       78 CAPTURE                          UPVAL U6
       79 SETTABLEKS                       R12 R11 K19 ["saveUnpublishedSettings"]
       81 NEWCLOSURE                       R12 P3
       82 CAPTURE                          VAL R3
       83 CAPTURE                          UPVAL U6
       84 CAPTURE                          UPVAL U7
       85 CAPTURE                          UPVAL U8
       86 CAPTURE                          VAL R9
       87 CAPTURE                          UPVAL U5
       88 CAPTURE                          VAL R8
       89 SETTABLEKS                       R12 R11 K20 ["discardUnpublishedSettings"]
       91 SETTABLEKS                       R11 R10 K11 ["content"]
       93 GETTABLEKS                       R13 R10 K11 ["content"]
       95 JUMPIFNOTEQKNIL                  R13 ; [+2]
       97 LOADB                            R12 0 +1
       98 LOADB                            R12 1
       99 FASTCALL2K                       ASSERT R12 K22 ; [+4]
      101 LOADK                            R13 K22 ["Content must not be nil in PublishContext"]
      102 GETIMPORT                        R11 K4 [assert]
      104 CALL                             R11 2 0
      105 GETUPVAL                         R12 5
      106 GETTABLEKS                       R12 R12 K23 ["isEqualToCurrentSettings"]
      108 MOVE                             R13 R1
      109 CALL                             R12 1 1
      110 NOT                              R11 R12
      111 GETUPVAL                         R13 5
      112 GETTABLEKS                       R13 R13 K24 ["isAvatarTypeEqual"]
      114 MOVE                             R14 R1
      115 CALL                             R13 1 1
      116 NOT                              R12 R13
      117 GETUPVAL                         R15 6
      118 GETTABLEKS                       R15 R15 K25 ["hasUnpublishedChanges"]
      120 MOVE                             R16 R11
      121 NAMECALL                         R13 R3 K26 ["Invoke"]
      123 CALL                             R13 3 0
      124 GETUPVAL                         R15 6
      125 GETTABLEKS                       R15 R15 K27 ["hasUnpublishedAvatarTypeChanges"]
      127 MOVE                             R16 R12
      128 NAMECALL                         R13 R3 K26 ["Invoke"]
      130 CALL                             R13 3 0
      131 GETUPVAL                         R13 0
      132 GETTABLEKS                       R13 R13 K28 ["useEffect"]
      134 NEWCLOSURE                       R14 P4
      135 CAPTURE                          UPVAL U9
      136 CAPTURE                          VAL R9
      137 CAPTURE                          VAL R8
      138 CAPTURE                          VAL R3
      139 CAPTURE                          UPVAL U6
      140 CAPTURE                          UPVAL U5
      141 CAPTURE                          UPVAL U7
      142 CAPTURE                          VAL R4
      143 CAPTURE                          UPVAL U10
      144 CAPTURE                          VAL R6
      145 NEWTABLE                         R15 0 0
      147 CALL                             R13 2 0
      148 GETTABLEKS                       R13 R10 K11 ["content"]
      150 GETTABLEKS                       R15 R4 K29 ["value"]
      152 AND                              R14 R15 R11
      153 SETTABLEKS                       R14 R13 K14 ["canPublish"]
      155 GETTABLEKS                       R13 R10 K11 ["content"]
      157 GETTABLEKS                       R15 R4 K29 ["value"]
      159 AND                              R14 R15 R5
      160 SETTABLEKS                       R14 R13 K16 ["canCreatePlaceSettings"]
      162 GETUPVAL                         R13 11
      163 CALL                             R13 0 1
      164 JUMPIFNOT                        R13 ; [+14]
      165 GETTABLEKS                       R13 R2 K30 ["currentGameId"]
      167 JUMPIFNOTEQKN                    R13 K31 [0] ; [+11]
      169 GETTABLEKS                       R13 R10 K11 ["content"]
      171 LOADB                            R14 0
      172 SETTABLEKS                       R14 R13 K14 ["canPublish"]
      174 GETTABLEKS                       R13 R10 K11 ["content"]
      176 LOADB                            R14 0
      177 SETTABLEKS                       R14 R13 K16 ["canCreatePlaceSettings"]
      179 GETUPVAL                         R13 12
      180 GETUPVAL                         R14 13
      181 GETTABLEKS                       R14 R14 K32 ["Provider"]
      183 DUPTABLE                         R15 K33 [{"value"}]
      184 SETTABLEKS                       R10 R15 K29 ["value"]
      186 GETTABLEKS                       R16 R0 K34 ["children"]
      188 CALL                             R13 3 -1
      189 RETURN                           R13 -1

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
       87 GETTABLEKS                       R10 R10 K10 ["Util"]
       89 GETTABLEKS                       R10 R10 K21 ["InvokeKeys"]
       91 CALL                             R9 1 1
       92 GETIMPORT                        R10 K5 [require]
       94 GETTABLEKS                       R11 R0 K6 ["Src"]
       96 GETTABLEKS                       R11 R11 K7 ["Components"]
       98 GETTABLEKS                       R11 R11 K8 ["Contexts"]
      100 GETTABLEKS                       R11 R11 K15 ["PublishProvider"]
      102 GETTABLEKS                       R11 R11 K22 ["publishedSettingsManager"]
      104 CALL                             R10 1 1
      105 GETIMPORT                        R11 K5 [require]
      107 GETTABLEKS                       R12 R0 K6 ["Src"]
      109 GETTABLEKS                       R12 R12 K10 ["Util"]
      111 GETTABLEKS                       R12 R12 K23 ["settingUtil"]
      113 CALL                             R11 1 1
      114 GETIMPORT                        R12 K5 [require]
      116 GETTABLEKS                       R13 R0 K6 ["Src"]
      118 GETTABLEKS                       R13 R13 K10 ["Util"]
      120 GETTABLEKS                       R13 R13 K24 ["BridgingFiles"]
      122 GETTABLEKS                       R13 R13 K25 ["StandaloneFiles"]
      124 GETTABLEKS                       R13 R13 K26 ["settingsSnapshotState"]
      126 CALL                             R12 1 1
      127 GETIMPORT                        R13 K5 [require]
      129 GETTABLEKS                       R14 R0 K6 ["Src"]
      131 GETTABLEKS                       R14 R14 K18 ["Flags"]
      133 GETTABLEKS                       R14 R14 K27 ["getEngineFeatureAvatarSettingsPlaceAvatarRules"]
      135 CALL                             R13 1 1
      136 GETIMPORT                        R14 K5 [require]
      138 GETTABLEKS                       R15 R0 K6 ["Src"]
      140 GETTABLEKS                       R15 R15 K18 ["Flags"]
      142 GETTABLEKS                       R15 R15 K28 ["getFFlagAvatarSettingsFixRevertButtonStuck"]
      144 CALL                             R14 1 1
      145 GETTABLEKS                       R15 R4 K29 ["ContextServices"]
      147 GETTABLEKS                       R16 R15 K30 ["Plugin"]
      149 GETTABLEKS                       R17 R11 K31 ["useSetting"]
      151 GETTABLEKS                       R18 R6 K32 ["createElement"]
      153 DUPCLOSURE                       R19 K33 [PROTO_12]
      154 CAPTURE                          VAL R6
      155 CAPTURE                          VAL R1
      156 CAPTURE                          VAL R3
      157 CAPTURE                          VAL R16
      158 CAPTURE                          VAL R17
      159 CAPTURE                          VAL R10
      160 CAPTURE                          VAL R9
      161 CAPTURE                          VAL R8
      162 CAPTURE                          VAL R14
      163 CAPTURE                          VAL R12
      164 CAPTURE                          VAL R13
      165 CAPTURE                          VAL R7
      166 CAPTURE                          VAL R18
      167 CAPTURE                          VAL R5
      168 RETURN                           R19 1
