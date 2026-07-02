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

PROTO_9:
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
       44 GETUPVAL                         R0 0
       45 GETUPVAL                         R2 1
       46 GETTABLEKS                       R2 R2 K6 ["requestUnpublishedChangesStatus"]
       48 NEWCLOSURE                       R3 P4
       49 CAPTURE                          UPVAL U3
       50 CAPTURE                          UPVAL U0
       51 CAPTURE                          UPVAL U1
       52 CAPTURE                          UPVAL U2
       53 NAMECALL                         R0 R0 K2 ["OnInvoke"]
       55 CALL                             R0 3 0
       56 RETURN                           R0 0

PROTO_10:
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
       30 NEWTABLE                         R5 0 0
       32 CALL                             R4 1 2
       33 GETUPVAL                         R6 0
       34 GETTABLEKS                       R6 R6 K8 ["useRef"]
       36 MOVE                             R7 R1
       37 CALL                             R6 1 1
       38 SETTABLEKS                       R1 R6 K9 ["current"]
       40 GETTABLEKS                       R9 R6 K9 ["current"]
       42 JUMPIFNOTEQKNIL                  R9 ; [+2]
       44 LOADB                            R8 0 +1
       45 LOADB                            R8 1
       46 FASTCALL2K                       ASSERT R8 K10 ; [+4]
       48 LOADK                            R9 K10 ["AvatarSettingsContext must not be nil"]
       49 GETIMPORT                        R7 K4 [assert]
       51 CALL                             R7 2 0
       52 DUPTABLE                         R7 K12 [{"content"}]
       53 DUPTABLE                         R8 K20 [{["databaseLoaded"], ["canPublish"] = False, ["isAvatarTypeOutOfSync"], ["isSettingOutOfSync"], ["saveUnpublishedSettings"], ["discardUnpublishedSettings"]}]
       54 SETTABLEKS                       R3 R8 K13 ["databaseLoaded"]
       56 NEWCLOSURE                       R9 P0
       57 CAPTURE                          VAL R6
       58 CAPTURE                          UPVAL U4
       59 SETTABLEKS                       R9 R8 K16 ["isAvatarTypeOutOfSync"]
       61 NEWCLOSURE                       R9 P1
       62 CAPTURE                          VAL R6
       63 CAPTURE                          UPVAL U4
       64 SETTABLEKS                       R9 R8 K17 ["isSettingOutOfSync"]
       66 NEWCLOSURE                       R9 P2
       67 CAPTURE                          VAL R2
       68 CAPTURE                          UPVAL U5
       69 SETTABLEKS                       R9 R8 K18 ["saveUnpublishedSettings"]
       71 NEWCLOSURE                       R9 P3
       72 CAPTURE                          VAL R2
       73 CAPTURE                          UPVAL U5
       74 CAPTURE                          UPVAL U6
       75 CAPTURE                          VAL R6
       76 CAPTURE                          UPVAL U4
       77 CAPTURE                          VAL R5
       78 SETTABLEKS                       R9 R8 K19 ["discardUnpublishedSettings"]
       80 SETTABLEKS                       R8 R7 K11 ["content"]
       82 GETTABLEKS                       R10 R7 K11 ["content"]
       84 JUMPIFNOTEQKNIL                  R10 ; [+2]
       86 LOADB                            R9 0 +1
       87 LOADB                            R9 1
       88 FASTCALL2K                       ASSERT R9 K21 ; [+4]
       90 LOADK                            R10 K21 ["Content must not be nil in PublishContext"]
       91 GETIMPORT                        R8 K4 [assert]
       93 CALL                             R8 2 0
       94 GETUPVAL                         R9 4
       95 GETTABLEKS                       R9 R9 K22 ["isEqualToCurrentSettings"]
       97 MOVE                             R10 R1
       98 CALL                             R9 1 1
       99 NOT                              R8 R9
      100 GETUPVAL                         R10 4
      101 GETTABLEKS                       R10 R10 K23 ["isAvatarTypeEqual"]
      103 MOVE                             R11 R1
      104 CALL                             R10 1 1
      105 NOT                              R9 R10
      106 GETUPVAL                         R12 5
      107 GETTABLEKS                       R12 R12 K24 ["hasUnpublishedChanges"]
      109 MOVE                             R13 R8
      110 NAMECALL                         R10 R2 K25 ["Invoke"]
      112 CALL                             R10 3 0
      113 GETUPVAL                         R12 5
      114 GETTABLEKS                       R12 R12 K26 ["hasUnpublishedAvatarTypeChanges"]
      116 MOVE                             R13 R9
      117 NAMECALL                         R10 R2 K25 ["Invoke"]
      119 CALL                             R10 3 0
      120 GETUPVAL                         R10 0
      121 GETTABLEKS                       R10 R10 K27 ["useEffect"]
      123 NEWCLOSURE                       R11 P4
      124 CAPTURE                          VAL R2
      125 CAPTURE                          UPVAL U5
      126 CAPTURE                          UPVAL U4
      127 CAPTURE                          VAL R6
      128 CAPTURE                          VAL R3
      129 CAPTURE                          VAL R5
      130 NEWTABLE                         R12 0 0
      132 CALL                             R10 2 0
      133 GETTABLEKS                       R10 R7 K11 ["content"]
      135 GETTABLEKS                       R12 R3 K28 ["value"]
      137 AND                              R11 R12 R8
      138 SETTABLEKS                       R11 R10 K14 ["canPublish"]
      140 GETUPVAL                         R10 7
      141 GETUPVAL                         R11 8
      142 GETTABLEKS                       R11 R11 K29 ["Provider"]
      144 DUPTABLE                         R12 K30 [{"value"}]
      145 SETTABLEKS                       R7 R12 K28 ["value"]
      147 GETTABLEKS                       R13 R0 K31 ["children"]
      149 CALL                             R10 3 -1
      150 RETURN                           R10 -1

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
       82 GETTABLEKS                       R9 R9 K20 ["getFFlagAvatarSettingsFixRevertButtonStuck"]
       84 CALL                             R8 1 1
       85 GETTABLEKS                       R9 R2 K21 ["ContextServices"]
       87 GETTABLEKS                       R10 R9 K22 ["Plugin"]
       89 GETTABLEKS                       R11 R7 K23 ["useSetting"]
       91 GETTABLEKS                       R12 R4 K24 ["createElement"]
       93 DUPCLOSURE                       R13 K25 [PROTO_10]
       94 CAPTURE                          VAL R4
       95 CAPTURE                          VAL R1
       96 CAPTURE                          VAL R10
       97 CAPTURE                          VAL R11
       98 CAPTURE                          VAL R6
       99 CAPTURE                          VAL R5
      100 CAPTURE                          VAL R8
      101 CAPTURE                          VAL R12
      102 CAPTURE                          VAL R3
      103 RETURN                           R13 1
