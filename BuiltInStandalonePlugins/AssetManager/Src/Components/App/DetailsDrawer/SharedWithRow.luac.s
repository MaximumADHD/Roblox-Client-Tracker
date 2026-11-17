PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["use"]
        7 CALL                             R2 0 1
        8 GETTABLEKS                       R3 R0 K1 ["Grant"]
       10 GETTABLEKS                       R4 R3 K2 ["Scope"]
       12 LOADK                            R5 K3 ["details-drawer-shared-with-%*"]
       13 GETTABLEKS                       R7 R4 K4 ["Uid"]
       15 NAMECALL                         R5 R5 K5 ["format"]
       17 CALL                             R5 2 1
       18 LOADK                            R8 K6 ["ScopeType"]
       19 GETTABLEKS                       R9 R4 K7 ["Type"]
       21 NAMECALL                         R6 R1 K8 ["getText"]
       23 CALL                             R6 3 1
       24 LOADK                            R9 K9 ["AssetPermission"]
       25 GETTABLEKS                       R10 R3 K10 ["Action"]
       27 NAMECALL                         R7 R1 K8 ["getText"]
       29 CALL                             R7 3 1
       30 GETUPVAL                         R8 2
       31 GETTABLEKS                       R8 R8 K11 ["createElement"]
       33 GETUPVAL                         R9 3
       34 GETTABLEKS                       R9 R9 K12 ["View"]
       36 DUPTABLE                         R10 K17 [{["LayoutOrder"], ["tag"] = "row align-y-center gap-small size-full-0 auto-y padding-x-medium padding-y-xsmall", ["testId"]}]
       37 GETTABLEKS                       R11 R0 K13 ["LayoutOrder"]
       39 SETTABLEKS                       R11 R10 K13 ["LayoutOrder"]
       41 SETTABLEKS                       R5 R10 K16 ["testId"]
       43 DUPTABLE                         R11 K20 [{"Thumbnail", "Details"}]
       44 GETTABLEKS                       R13 R4 K7 ["Type"]
       46 GETUPVAL                         R14 4
       47 GETTABLEKS                       R14 R14 K6 ["ScopeType"]
       49 GETTABLEKS                       R14 R14 K21 ["User"]
       51 JUMPIFNOTEQ                      R13 R14 ; [+32]
       53 GETUPVAL                         R12 2
       54 GETTABLEKS                       R12 R12 K11 ["createElement"]
       56 GETUPVAL                         R13 3
       57 GETTABLEKS                       R13 R13 K22 ["Avatar"]
       59 DUPTABLE                         R14 K27 [{["LayoutOrder"] = 1, ["userId"], ["userPresence"], ["size"]}]
       60 GETTABLEKS                       R15 R4 K28 ["Id"]
       62 SETTABLEKS                       R15 R14 K24 ["userId"]
       64 GETUPVAL                         R15 3
       65 GETTABLEKS                       R15 R15 K29 ["Enums"]
       67 GETTABLEKS                       R15 R15 K30 ["UserPresence"]
       69 GETTABLEKS                       R15 R15 K31 ["None"]
       71 SETTABLEKS                       R15 R14 K25 ["userPresence"]
       73 GETUPVAL                         R15 3
       74 GETTABLEKS                       R15 R15 K29 ["Enums"]
       76 GETTABLEKS                       R15 R15 K32 ["AvatarSize"]
       78 GETTABLEKS                       R15 R15 K33 ["Small"]
       80 SETTABLEKS                       R15 R14 K26 ["size"]
       82 CALL                             R12 2 1
       83 JUMP                             ; [+25]
       84 GETUPVAL                         R12 2
       85 GETTABLEKS                       R12 R12 K11 ["createElement"]
       87 GETUPVAL                         R13 3
       88 GETTABLEKS                       R13 R13 K34 ["Image"]
       90 DUPTABLE                         R14 K36 [{["LayoutOrder"] = 1, ["Image"], ["tag"] = "size-800 radius-small"}]
       91 GETUPVAL                         R16 5
       92 CALL                             R16 0 1
       93 JUMPIFNOT                        R16 ; [+8]
       94 GETUPVAL                         R15 6
       95 GETTABLEKS                       R15 R15 K37 ["Utils"]
       97 GETTABLEKS                       R15 R15 K38 ["getScopeThumbnailUri"]
       99 MOVE                             R16 R4
      100 CALL                             R15 1 1
      101 JUMP                             ; [+4]
      102 MOVE                             R17 R4
      103 NAMECALL                         R15 R2 K39 ["getThumbnailUriForScope"]
      105 CALL                             R15 2 1
      106 SETTABLEKS                       R15 R14 K34 ["Image"]
      108 CALL                             R12 2 1
      109 SETTABLEKS                       R12 R11 K18 ["Thumbnail"]
      111 GETUPVAL                         R12 2
      112 GETTABLEKS                       R12 R12 K11 ["createElement"]
      114 GETUPVAL                         R13 3
      115 GETTABLEKS                       R13 R13 K12 ["View"]
      117 DUPTABLE                         R14 K42 [{["LayoutOrder"] = 2, ["tag"] = "col fill auto-y"}]
      118 DUPTABLE                         R15 K45 [{"Name", "Access"}]
      119 GETUPVAL                         R16 2
      120 GETTABLEKS                       R16 R16 K11 ["createElement"]
      122 GETUPVAL                         R17 3
      123 GETTABLEKS                       R17 R17 K46 ["Text"]
      125 DUPTABLE                         R18 K48 [{["LayoutOrder"] = 1, ["Text"], ["tag"] = "size-full-0 auto-y text-body-small text-align-x-left text-truncate-end content-emphasis"}]
      126 GETTABLEKS                       R19 R4 K43 ["Name"]
      128 SETTABLEKS                       R19 R18 K46 ["Text"]
      130 CALL                             R16 2 1
      131 SETTABLEKS                       R16 R15 K43 ["Name"]
      133 GETUPVAL                         R16 2
      134 GETTABLEKS                       R16 R16 K11 ["createElement"]
      136 GETUPVAL                         R17 3
      137 GETTABLEKS                       R17 R17 K46 ["Text"]
      139 DUPTABLE                         R18 K50 [{["LayoutOrder"] = 2, ["Text"], ["tag"] = "size-full-0 auto-y text-caption-small text-align-x-left text-truncate-end content-muted", ["testId"]}]
      140 LOADK                            R19 K51 ["%* · %*"]
      141 MOVE                             R21 R6
      142 MOVE                             R22 R7
      143 NAMECALL                         R19 R19 K5 ["format"]
      145 CALL                             R19 3 1
      146 SETTABLEKS                       R19 R18 K46 ["Text"]
      148 LOADK                            R19 K52 ["%*-access"]
      149 MOVE                             R21 R5
      150 NAMECALL                         R19 R19 K5 ["format"]
      152 CALL                             R19 2 1
      153 SETTABLEKS                       R19 R18 K16 ["testId"]
      155 CALL                             R16 2 1
      156 SETTABLEKS                       R16 R15 K44 ["Access"]
      158 CALL                             R12 3 1
      159 SETTABLEKS                       R12 R11 K19 ["Details"]
      161 CALL                             R8 3 -1
      162 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["AssetManagement"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["Framework"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R4 K11 ["ContextServices"]
       37 GETTABLEKS                       R6 R5 K12 ["Localization"]
       39 GETIMPORT                        R7 K5 [require]
       41 GETTABLEKS                       R8 R0 K13 ["Src"]
       43 GETTABLEKS                       R8 R8 K14 ["Networking"]
       45 CALL                             R7 1 1
       46 GETIMPORT                        R8 K5 [require]
       48 GETTABLEKS                       R9 R0 K13 ["Src"]
       50 GETTABLEKS                       R9 R9 K15 ["Types"]
       52 CALL                             R8 1 1
       53 GETIMPORT                        R9 K5 [require]
       55 GETTABLEKS                       R10 R0 K13 ["Src"]
       57 GETTABLEKS                       R10 R10 K16 ["Flags"]
       59 GETTABLEKS                       R10 R10 K17 ["getFFlagAmrUseAssetManagementNetworking"]
       61 CALL                             R9 1 1
       62 DUPCLOSURE                       R10 K18 [PROTO_0]
       63 CAPTURE                          VAL R6
       64 CAPTURE                          VAL R7
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R3
       67 CAPTURE                          VAL R8
       68 CAPTURE                          VAL R9
       69 CAPTURE                          VAL R1
       70 RETURN                           R10 1
