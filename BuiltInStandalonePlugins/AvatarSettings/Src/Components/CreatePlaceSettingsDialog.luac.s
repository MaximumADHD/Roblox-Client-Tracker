PROTO_0:
        0 JUMPIFEQKS                       R0 K0 ["Created"] ; [+5]
        2 JUMPIFEQKS                       R0 K1 ["ExistingTree"] ; [+3]
        4 JUMPIFNOTEQKS                    R0 K2 ["NoChanges"] ; [+10]
        6 GETUPVAL                         R2 0
        7 MOVE                             R3 R1
        8 JUMPIF                           R3 ; [+2]
        9 NEWTABLE                         R3 0 0
       11 CALL                             R2 1 0
       12 GETUPVAL                         R2 1
       13 MOVE                             R3 R0
       14 CALL                             R2 1 0
       15 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["createPlaceAvatarRules"]
        4 GETTABLEKS                       R2 R2 K1 ["fromAssetDm"]
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 NAMECALL                         R0 R0 K2 ["OnInvoke"]
       11 CALL                             R0 3 0
       12 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R1 0 0
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 LOADNIL                          R1
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["createPlaceAvatarRules"]
        4 GETTABLEKS                       R2 R2 K1 ["fromPlugin"]
        6 LOADB                            R3 1
        7 NAMECALL                         R0 R0 K2 ["Invoke"]
        9 CALL                             R0 3 0
       10 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+3]
        2 GETUPVAL                         R0 1
        3 CALL                             R0 0 0
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 2
        6 CALL                             R0 0 0
        7 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 NAMECALL                         R1 R1 K1 ["get"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 1
        8 NAMECALL                         R2 R2 K0 ["use"]
       10 CALL                             R2 1 1
       11 GETUPVAL                         R3 2
       12 LOADNIL                          R4
       13 CALL                             R3 1 2
       14 GETUPVAL                         R5 2
       15 NEWTABLE                         R6 0 0
       17 CALL                             R5 1 2
       18 GETUPVAL                         R7 3
       19 NEWCLOSURE                       R8 P0
       20 CAPTURE                          VAL R1
       21 CAPTURE                          UPVAL U4
       22 CAPTURE                          VAL R6
       23 CAPTURE                          VAL R4
       24 NEWTABLE                         R9 0 0
       26 CALL                             R7 2 0
       27 JUMPIFEQKS                       R3 K2 ["Created"] ; [+2]
       29 LOADB                            R7 0 +1
       30 LOADB                            R7 1
       31 JUMPIFEQKS                       R3 K3 ["ExistingTree"] ; [+2]
       33 LOADB                            R8 0 +1
       34 LOADB                            R8 1
       35 DUPTABLE                         R9 K8 [{["Label"], ["HidesDialog"] = True, ["OnActivated"]}]
       36 JUMPIFNOT                        R8 ; [+6]
       37 LOADK                            R12 K9 ["UnsavedChangesDialog"]
       38 LOADK                            R13 K10 ["CancelAction"]
       39 NAMECALL                         R10 R2 K11 ["getText"]
       41 CALL                             R10 3 1
       42 JUMP                             ; [+5]
       43 LOADK                            R12 K12 ["PlaceSettingsDialog"]
       44 LOADK                            R13 K13 ["OkAction"]
       45 NAMECALL                         R10 R2 K11 ["getText"]
       47 CALL                             R10 3 1
       48 SETTABLEKS                       R10 R9 K4 ["Label"]
       50 NEWCLOSURE                       R10 P1
       51 CAPTURE                          VAL R6
       52 CAPTURE                          VAL R4
       53 SETTABLEKS                       R10 R9 K7 ["OnActivated"]
       55 DUPTABLE                         R10 K15 [{["Label"], ["HidesDialog"] = False, ["OnActivated"]}]
       56 LOADK                            R13 K12 ["PlaceSettingsDialog"]
       57 LOADK                            R14 K16 ["ReplaceAction"]
       58 NAMECALL                         R11 R2 K11 ["getText"]
       60 CALL                             R11 3 1
       61 SETTABLEKS                       R11 R10 K4 ["Label"]
       63 NEWCLOSURE                       R11 P2
       64 CAPTURE                          VAL R1
       65 CAPTURE                          UPVAL U4
       66 SETTABLEKS                       R11 R10 K7 ["OnActivated"]
       68 LENGTH                           R12 R5
       69 LOADN                            R13 0
       70 JUMPIFNOTLT                      R13 R12 ; [+15]
       72 LOADK                            R13 K12 ["PlaceSettingsDialog"]
       73 LOADK                            R14 K17 ["SavedMessageWithRemoved"]
       74 DUPTABLE                         R15 K19 [{"destroyed"}]
       75 GETIMPORT                        R16 K22 [table.concat]
       77 MOVE                             R17 R5
       78 LOADK                            R18 K23 [", "]
       79 CALL                             R16 2 1
       80 SETTABLEKS                       R16 R15 K18 ["destroyed"]
       82 NAMECALL                         R11 R2 K11 ["getText"]
       84 CALL                             R11 4 1
       85 JUMP                             ; [+5]
       86 LOADK                            R13 K12 ["PlaceSettingsDialog"]
       87 LOADK                            R14 K24 ["SavedMessage"]
       88 NAMECALL                         R11 R2 K11 ["getText"]
       90 CALL                             R11 3 1
       91 GETUPVAL                         R12 5
       92 DUPTABLE                         R13 K36 [{["Intent"], ["Heading"], ["Body"], ["ActionPrimary"], ["ActionSecondary"], ["DisableTitleBar"] = True, ["OnClosed"], ["Width"] = 410, ["Modal"] = True, ["WidgetRef"]}]
       93 JUMPIFNOT                        R7 ; [+2]
       94 LOADK                            R14 K37 ["AvatarSettings-BodyOnlyDialog"]
       95 JUMP                             ; [+1]
       96 LOADK                            R14 K38 ["Warning"]
       97 SETTABLEKS                       R14 R13 K25 ["Intent"]
       99 JUMPIFNOT                        R7 ; [+2]
      100 LOADK                            R14 K39 [""]
      101 JUMP                             ; [+8]
      102 LOADK                            R16 K12 ["PlaceSettingsDialog"]
      103 JUMPIFNOT                        R8 ; [+2]
      104 LOADK                            R17 K40 ["ExistingTitle"]
      105 JUMP                             ; [+1]
      106 LOADK                            R17 K41 ["NoChangesTitle"]
      107 NAMECALL                         R14 R2 K11 ["getText"]
      109 CALL                             R14 3 1
      110 SETTABLEKS                       R14 R13 K26 ["Heading"]
      112 JUMPIFNOT                        R7 ; [+2]
      113 MOVE                             R14 R11
      114 JUMP                             ; [+8]
      115 LOADK                            R16 K12 ["PlaceSettingsDialog"]
      116 JUMPIFNOT                        R8 ; [+2]
      117 LOADK                            R17 K42 ["ExistingDescription"]
      118 JUMP                             ; [+1]
      119 LOADK                            R17 K43 ["NoChangesDescription"]
      120 NAMECALL                         R14 R2 K11 ["getText"]
      122 CALL                             R14 3 1
      123 SETTABLEKS                       R14 R13 K27 ["Body"]
      125 JUMPIFNOT                        R8 ; [+2]
      126 MOVE                             R14 R10
      127 JUMP                             ; [+1]
      128 MOVE                             R14 R9
      129 SETTABLEKS                       R14 R13 K28 ["ActionPrimary"]
      131 JUMPIFNOT                        R8 ; [+2]
      132 MOVE                             R14 R9
      133 JUMP                             ; [+1]
      134 LOADNIL                          R14
      135 SETTABLEKS                       R14 R13 K29 ["ActionSecondary"]
      137 GETTABLEKS                       R14 R9 K7 ["OnActivated"]
      139 SETTABLEKS                       R14 R13 K31 ["OnClosed"]
      141 GETTABLEKS                       R14 R0 K44 ["widgetRef"]
      143 SETTABLEKS                       R14 R13 K35 ["WidgetRef"]
      145 CALL                             R12 1 2
      146 JUMPIFNOTEQKNIL                  R3 ; [+2]
      148 LOADB                            R14 0 +1
      149 LOADB                            R14 1
      150 GETUPVAL                         R15 3
      151 NEWCLOSURE                       R16 P3
      152 CAPTURE                          VAL R14
      153 CAPTURE                          VAL R12
      154 CAPTURE                          VAL R13
      155 NEWTABLE                         R17 0 1
      157 MOVE                             R18 R14
      158 SETLIST                          R17 R18 1 [1]
      160 CALL                             R15 2 0
      161 GETUPVAL                         R15 6
      162 GETUPVAL                         R16 7
      163 GETTABLEKS                       R16 R16 K45 ["Fragment"]
      165 CALL                             R15 1 -1
      166 RETURN                           R15 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K9 ["UI"]
       23 GETTABLEKS                       R3 R3 K10 ["Hooks"]
       25 GETTABLEKS                       R3 R3 K11 ["RESTRICTED_useDialog"]
       27 GETTABLEKS                       R4 R1 K12 ["ContextServices"]
       29 GETTABLEKS                       R5 R4 K13 ["Plugin"]
       31 GETTABLEKS                       R6 R4 K14 ["Localization"]
       33 GETIMPORT                        R7 K5 [require]
       35 GETTABLEKS                       R8 R0 K15 ["Src"]
       37 GETTABLEKS                       R8 R8 K16 ["Util"]
       39 GETTABLEKS                       R8 R8 K17 ["InvokeKeys"]
       41 CALL                             R7 1 1
       42 GETTABLEKS                       R8 R2 K18 ["createElement"]
       44 GETTABLEKS                       R9 R2 K19 ["useState"]
       46 GETTABLEKS                       R10 R2 K20 ["useEffect"]
       48 DUPCLOSURE                       R11 K21 [PROTO_5]
       49 CAPTURE                          VAL R5
       50 CAPTURE                          VAL R6
       51 CAPTURE                          VAL R9
       52 CAPTURE                          VAL R10
       53 CAPTURE                          VAL R7
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R8
       56 CAPTURE                          VAL R2
       57 RETURN                           R11 1
