PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+6]
        2 GETUPVAL                         R1 1
        3 JUMPIFNOTEQ                      R0 R1 ; [+4]
        5 GETUPVAL                         R1 2
        6 LOADB                            R2 1
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["onPlaceSaved"]
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 NAMECALL                         R0 R0 K1 ["OnInvoke"]
       10 CALL                             R0 3 1
       11 NEWCLOSURE                       R1 P1
       12 CAPTURE                          VAL R0
       13 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+5]
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+3]
        4 GETUPVAL                         R0 2
        5 CALL                             R0 0 0
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 3
        8 CALL                             R0 0 0
        9 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 NAMECALL                         R1 R1 K1 ["get"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 1
        8 NAMECALL                         R2 R2 K0 ["use"]
       10 CALL                             R2 1 1
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R3 R3 K2 ["useContext"]
       14 GETUPVAL                         R4 3
       15 CALL                             R3 1 1
       16 GETUPVAL                         R4 2
       17 GETTABLEKS                       R4 R4 K2 ["useContext"]
       19 GETUPVAL                         R5 4
       20 CALL                             R4 1 1
       21 GETTABLEKS                       R7 R3 K3 ["content"]
       23 JUMPIFNOTEQKNIL                  R7 ; [+2]
       25 LOADB                            R6 0 +1
       26 LOADB                            R6 1
       27 FASTCALL2K                       ASSERT R6 K4 ; [+4]
       29 LOADK                            R7 K4 ["PublishContext content must not be nil"]
       30 GETIMPORT                        R5 K6 [assert]
       32 CALL                             R5 2 0
       33 GETTABLEKS                       R5 R4 K7 ["currentGameId"]
       35 LOADB                            R6 0
       36 JUMPIFEQKNIL                     R5 ; [+9]
       38 LOADB                            R6 0
       39 LOADN                            R7 0
       40 JUMPIFNOTLT                      R7 R5 ; [+5]
       42 GETTABLEKS                       R6 R3 K3 ["content"]
       44 GETTABLEKS                       R6 R6 K8 ["canPublish"]
       46 GETUPVAL                         R7 2
       47 GETTABLEKS                       R7 R7 K9 ["useState"]
       49 LOADB                            R8 0
       50 CALL                             R7 1 2
       51 GETUPVAL                         R9 2
       52 GETTABLEKS                       R9 R9 K10 ["useEffect"]
       54 NEWCLOSURE                       R10 P0
       55 CAPTURE                          VAL R1
       56 CAPTURE                          UPVAL U5
       57 CAPTURE                          VAL R6
       58 CAPTURE                          VAL R5
       59 CAPTURE                          VAL R8
       60 NEWTABLE                         R11 0 3
       62 MOVE                             R12 R1
       63 ORK                              R13 R5 K11 [0]
       64 MOVE                             R14 R6
       65 SETLIST                          R11 R12 3 [1]
       67 CALL                             R9 2 0
       68 GETUPVAL                         R9 2
       69 GETTABLEKS                       R9 R9 K10 ["useEffect"]
       71 NEWCLOSURE                       R10 P1
       72 CAPTURE                          VAL R8
       73 NEWTABLE                         R11 0 2
       75 ORK                              R12 R5 K11 [0]
       76 MOVE                             R13 R6
       77 SETLIST                          R11 R12 2 [1]
       79 CALL                             R9 2 0
       80 NEWCLOSURE                       R9 P2
       81 CAPTURE                          VAL R8
       82 GETUPVAL                         R10 6
       83 DUPTABLE                         R11 K24 [{["Intent"] = "Warning", ["Heading"], ["Body"], ["ActionPrimary"], ["DisableTitleBar"] = True, ["OnClosed"], ["Width"] = 410, ["Modal"] = True, ["WidgetRef"]}]
       84 LOADK                            R14 K25 ["PlaceSaveWarning"]
       85 LOADK                            R15 K26 ["Title"]
       86 NAMECALL                         R12 R2 K27 ["getText"]
       88 CALL                             R12 3 1
       89 SETTABLEKS                       R12 R11 K14 ["Heading"]
       91 LOADK                            R14 K25 ["PlaceSaveWarning"]
       92 LOADK                            R15 K28 ["Description"]
       93 NAMECALL                         R12 R2 K27 ["getText"]
       95 CALL                             R12 3 1
       96 SETTABLEKS                       R12 R11 K15 ["Body"]
       98 DUPTABLE                         R12 K32 [{["Label"], ["HidesDialog"] = True, ["OnActivated"]}]
       99 LOADK                            R15 K33 ["PlaceSettingsDialog"]
      100 LOADK                            R16 K34 ["OkAction"]
      101 NAMECALL                         R13 R2 K27 ["getText"]
      103 CALL                             R13 3 1
      104 SETTABLEKS                       R13 R12 K29 ["Label"]
      106 SETTABLEKS                       R9 R12 K31 ["OnActivated"]
      108 SETTABLEKS                       R12 R11 K16 ["ActionPrimary"]
      110 SETTABLEKS                       R9 R11 K19 ["OnClosed"]
      112 GETTABLEKS                       R12 R0 K35 ["widgetRef"]
      114 SETTABLEKS                       R12 R11 K23 ["WidgetRef"]
      116 CALL                             R10 1 2
      117 GETUPVAL                         R12 2
      118 GETTABLEKS                       R12 R12 K10 ["useEffect"]
      120 NEWCLOSURE                       R13 P3
      121 CAPTURE                          VAL R7
      122 CAPTURE                          VAL R6
      123 CAPTURE                          VAL R10
      124 CAPTURE                          VAL R11
      125 NEWTABLE                         R14 0 4
      127 MOVE                             R15 R7
      128 MOVE                             R16 R6
      129 MOVE                             R17 R10
      130 MOVE                             R18 R11
      131 SETLIST                          R14 R15 4 [1]
      133 CALL                             R12 2 0
      134 GETUPVAL                         R12 2
      135 GETTABLEKS                       R12 R12 K36 ["createElement"]
      137 GETUPVAL                         R13 2
      138 GETTABLEKS                       R13 R13 K37 ["Fragment"]
      140 CALL                             R12 1 -1
      141 RETURN                           R12 -1

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
       15 GETTABLEKS                       R2 R2 K9 ["EnableAvatarSettingsContext"]
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
       54 GETTABLEKS                       R6 R2 K17 ["ContextServices"]
       56 GETTABLEKS                       R6 R6 K18 ["Plugin"]
       58 GETTABLEKS                       R7 R2 K17 ["ContextServices"]
       60 GETTABLEKS                       R7 R7 K19 ["Localization"]
       62 GETTABLEKS                       R8 R2 K20 ["UI"]
       64 GETTABLEKS                       R8 R8 K21 ["Hooks"]
       66 GETTABLEKS                       R8 R8 K22 ["RESTRICTED_useDialog"]
       68 DUPCLOSURE                       R9 K23 [PROTO_6]
       69 CAPTURE                          VAL R6
       70 CAPTURE                          VAL R7
       71 CAPTURE                          VAL R4
       72 CAPTURE                          VAL R3
       73 CAPTURE                          VAL R1
       74 CAPTURE                          VAL R5
       75 CAPTURE                          VAL R8
       76 RETURN                           R9 1
