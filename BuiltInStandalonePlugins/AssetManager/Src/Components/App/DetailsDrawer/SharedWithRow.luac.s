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
       83 JUMP                             ; [+14]
       84 GETUPVAL                         R12 2
       85 GETTABLEKS                       R12 R12 K11 ["createElement"]
       87 GETUPVAL                         R13 3
       88 GETTABLEKS                       R13 R13 K34 ["Image"]
       90 DUPTABLE                         R14 K36 [{["LayoutOrder"] = 1, ["Image"], ["tag"] = "size-800 radius-small"}]
       91 MOVE                             R17 R4
       92 NAMECALL                         R15 R2 K37 ["getThumbnailUriForScope"]
       94 CALL                             R15 2 1
       95 SETTABLEKS                       R15 R14 K34 ["Image"]
       97 CALL                             R12 2 1
       98 SETTABLEKS                       R12 R11 K18 ["Thumbnail"]
      100 GETUPVAL                         R12 2
      101 GETTABLEKS                       R12 R12 K11 ["createElement"]
      103 GETUPVAL                         R13 3
      104 GETTABLEKS                       R13 R13 K12 ["View"]
      106 DUPTABLE                         R14 K40 [{["LayoutOrder"] = 2, ["tag"] = "col fill auto-y"}]
      107 DUPTABLE                         R15 K43 [{"Name", "Access"}]
      108 GETUPVAL                         R16 2
      109 GETTABLEKS                       R16 R16 K11 ["createElement"]
      111 GETUPVAL                         R17 3
      112 GETTABLEKS                       R17 R17 K44 ["Text"]
      114 DUPTABLE                         R18 K46 [{["LayoutOrder"] = 1, ["Text"], ["tag"] = "size-full-0 auto-y text-body-small text-align-x-left text-truncate-end content-emphasis"}]
      115 GETTABLEKS                       R19 R4 K41 ["Name"]
      117 SETTABLEKS                       R19 R18 K44 ["Text"]
      119 CALL                             R16 2 1
      120 SETTABLEKS                       R16 R15 K41 ["Name"]
      122 GETUPVAL                         R16 2
      123 GETTABLEKS                       R16 R16 K11 ["createElement"]
      125 GETUPVAL                         R17 3
      126 GETTABLEKS                       R17 R17 K44 ["Text"]
      128 DUPTABLE                         R18 K48 [{["LayoutOrder"] = 2, ["Text"], ["tag"] = "size-full-0 auto-y text-caption-small text-align-x-left text-truncate-end content-muted", ["testId"]}]
      129 LOADK                            R19 K49 ["%* · %*"]
      130 MOVE                             R21 R6
      131 MOVE                             R22 R7
      132 NAMECALL                         R19 R19 K5 ["format"]
      134 CALL                             R19 3 1
      135 SETTABLEKS                       R19 R18 K44 ["Text"]
      137 LOADK                            R19 K50 ["%*-access"]
      138 MOVE                             R21 R5
      139 NAMECALL                         R19 R19 K5 ["format"]
      141 CALL                             R19 2 1
      142 SETTABLEKS                       R19 R18 K16 ["testId"]
      144 CALL                             R16 2 1
      145 SETTABLEKS                       R16 R15 K42 ["Access"]
      147 CALL                             R12 3 1
      148 SETTABLEKS                       R12 R11 K19 ["Details"]
      150 CALL                             R8 3 -1
      151 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["ContextServices"]
       30 GETTABLEKS                       R5 R4 K11 ["Localization"]
       32 GETIMPORT                        R6 K5 [require]
       34 GETTABLEKS                       R7 R0 K12 ["Src"]
       36 GETTABLEKS                       R7 R7 K13 ["Networking"]
       38 CALL                             R6 1 1
       39 GETIMPORT                        R7 K5 [require]
       41 GETTABLEKS                       R8 R0 K12 ["Src"]
       43 GETTABLEKS                       R8 R8 K14 ["Types"]
       45 CALL                             R7 1 1
       46 DUPCLOSURE                       R8 K15 [PROTO_0]
       47 CAPTURE                          VAL R5
       48 CAPTURE                          VAL R6
       49 CAPTURE                          VAL R1
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R7
       52 RETURN                           R8 1
