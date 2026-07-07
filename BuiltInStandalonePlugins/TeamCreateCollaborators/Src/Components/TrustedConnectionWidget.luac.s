PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R6 0
        2 LENGTH                           R5 R6
        3 MOD                              R4 R0 R5
        4 ADDK                             R3 R4 K0 [1]
        5 GETTABLE                         R1 R2 R3
        6 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["View"]
        6 DUPTABLE                         R3 K5 [{["tag"] = "row size-0-0 auto-xy padding-left-small", ["LayoutOrder"]}]
        7 GETTABLEKS                       R4 R0 K4 ["LayoutOrder"]
        9 SETTABLEKS                       R4 R3 K4 ["LayoutOrder"]
       11 DUPTABLE                         R4 K8 [{"Icon", "text"}]
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R5 R5 K0 ["createElement"]
       15 GETUPVAL                         R6 2
       16 DUPTABLE                         R7 K13 [{["name"], ["iconVariant"], ["size"], ["tag"] = "size-0-0 auto-xy"}]
       17 GETTABLEKS                       R8 R0 K14 ["iconEnum"]
       19 SETTABLEKS                       R8 R7 K9 ["name"]
       21 GETUPVAL                         R8 3
       22 GETTABLEKS                       R8 R8 K15 ["Regular"]
       24 SETTABLEKS                       R8 R7 K10 ["iconVariant"]
       26 GETUPVAL                         R8 4
       27 GETTABLEKS                       R8 R8 K16 ["IconSize"]
       29 GETTABLEKS                       R8 R8 K17 ["Small"]
       31 SETTABLEKS                       R8 R7 K11 ["size"]
       33 CALL                             R5 2 1
       34 SETTABLEKS                       R5 R4 K6 ["Icon"]
       36 GETUPVAL                         R5 0
       37 GETTABLEKS                       R5 R5 K0 ["createElement"]
       39 GETUPVAL                         R6 5
       40 DUPTABLE                         R7 K20 [{["Text"], ["tag"] = "size-0-0 auto-xy padding-left-xsmall text-caption-large text-align-x-left"}]
       41 GETTABLEKS                       R8 R0 K7 ["text"]
       43 SETTABLEKS                       R8 R7 K18 ["Text"]
       45 CALL                             R5 2 1
       46 SETTABLEKS                       R5 R4 K7 ["text"]
       48 CALL                             R1 3 -1
       49 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 1
        6 GETUPVAL                         R3 1
        7 CALL                             R3 0 1
        8 GETUPVAL                         R4 1
        9 CALL                             R4 0 1
       10 GETUPVAL                         R5 2
       11 GETTABLEKS                       R5 R5 K1 ["createElement"]
       13 GETUPVAL                         R6 3
       14 GETTABLEKS                       R6 R6 K2 ["View"]
       16 DUPTABLE                         R7 K6 [{["LayoutOrder"], ["tag"] = "col align-y-center gap-xsmall size-0-0 auto-xy"}]
       17 GETTABLEKS                       R8 R0 K3 ["LayoutOrder"]
       19 SETTABLEKS                       R8 R7 K3 ["LayoutOrder"]
       21 DUPTABLE                         R8 K9 [{"row1", "row2"}]
       22 GETUPVAL                         R9 2
       23 GETTABLEKS                       R9 R9 K1 ["createElement"]
       25 GETUPVAL                         R10 3
       26 GETTABLEKS                       R10 R10 K2 ["View"]
       28 DUPTABLE                         R11 K11 [{["tag"] = "row gap-xsmall size-0-0 auto-xy", ["LayoutOrder"]}]
       29 MOVE                             R12 R2
       30 CALL                             R12 0 1
       31 SETTABLEKS                       R12 R11 K3 ["LayoutOrder"]
       33 DUPTABLE                         R12 K14 [{"AgeChecked", "friendshipAge"}]
       34 GETUPVAL                         R13 2
       35 GETTABLEKS                       R13 R13 K1 ["createElement"]
       37 GETGLOBAL                        R14 K15 ["iconBadge"]
       39 DUPTABLE                         R15 K18 [{"iconEnum", "text", "LayoutOrder"}]
       40 GETUPVAL                         R16 4
       41 GETTABLEKS                       R16 R16 K19 ["ageChecked"]
       43 SETTABLEKS                       R16 R15 K16 ["iconEnum"]
       45 GETTABLEKS                       R17 R0 K20 ["ProfileInsight"]
       47 GETTABLEKS                       R17 R17 K21 ["userAgeVerified"]
       49 JUMPIFNOT                        R17 ; [+6]
       50 LOADK                            R18 K22 ["TrustedConnectionWidget"]
       51 LOADK                            R19 K23 ["AgeVerified"]
       52 NAMECALL                         R16 R1 K24 ["getText"]
       54 CALL                             R16 3 1
       55 JUMPIF                           R16 ; [+5]
       56 LOADK                            R18 K22 ["TrustedConnectionWidget"]
       57 LOADK                            R19 K25 ["AgeNotVerified"]
       58 NAMECALL                         R16 R1 K24 ["getText"]
       60 CALL                             R16 3 1
       61 SETTABLEKS                       R16 R15 K17 ["text"]
       63 MOVE                             R16 R3
       64 CALL                             R16 0 1
       65 SETTABLEKS                       R16 R15 K3 ["LayoutOrder"]
       67 CALL                             R13 2 1
       68 SETTABLEKS                       R13 R12 K12 ["AgeChecked"]
       70 GETUPVAL                         R13 2
       71 GETTABLEKS                       R13 R13 K1 ["createElement"]
       73 GETGLOBAL                        R14 K15 ["iconBadge"]
       75 DUPTABLE                         R15 K18 [{"iconEnum", "text", "LayoutOrder"}]
       76 GETUPVAL                         R16 4
       77 GETTABLEKS                       R16 R16 K26 ["friendshipAgeUnixSeconds"]
       79 SETTABLEKS                       R16 R15 K16 ["iconEnum"]
       81 GETTABLEKS                       R16 R0 K20 ["ProfileInsight"]
       83 GETTABLEKS                       R16 R16 K27 ["friendshipAgeTranslation"]
       85 SETTABLEKS                       R16 R15 K17 ["text"]
       87 MOVE                             R16 R3
       88 CALL                             R16 0 1
       89 SETTABLEKS                       R16 R15 K3 ["LayoutOrder"]
       91 CALL                             R13 2 1
       92 SETTABLEKS                       R13 R12 K13 ["friendshipAge"]
       94 CALL                             R9 3 1
       95 SETTABLEKS                       R9 R8 K7 ["row1"]
       97 GETUPVAL                         R9 2
       98 GETTABLEKS                       R9 R9 K1 ["createElement"]
      100 GETUPVAL                         R10 3
      101 GETTABLEKS                       R10 R10 K2 ["View"]
      103 DUPTABLE                         R11 K11 [{["tag"] = "row gap-xsmall size-0-0 auto-xy", ["LayoutOrder"]}]
      104 MOVE                             R12 R2
      105 CALL                             R12 0 1
      106 SETTABLEKS                       R12 R11 K3 ["LayoutOrder"]
      108 DUPTABLE                         R12 K30 [{"MutualConnections", "JoinDate"}]
      109 GETUPVAL                         R13 2
      110 GETTABLEKS                       R13 R13 K1 ["createElement"]
      112 GETGLOBAL                        R14 K15 ["iconBadge"]
      114 DUPTABLE                         R15 K18 [{"iconEnum", "text", "LayoutOrder"}]
      115 GETUPVAL                         R16 4
      116 GETTABLEKS                       R16 R16 K31 ["mutualFriends"]
      118 SETTABLEKS                       R16 R15 K16 ["iconEnum"]
      120 LOADK                            R18 K22 ["TrustedConnectionWidget"]
      121 LOADK                            R19 K28 ["MutualConnections"]
      122 DUPTABLE                         R20 K33 [{"count"}]
      123 GETTABLEKS                       R21 R0 K20 ["ProfileInsight"]
      125 GETTABLEKS                       R21 R21 K34 ["mutualFriendCount"]
      127 SETTABLEKS                       R21 R20 K32 ["count"]
      129 NAMECALL                         R16 R1 K24 ["getText"]
      131 CALL                             R16 4 1
      132 SETTABLEKS                       R16 R15 K17 ["text"]
      134 MOVE                             R16 R4
      135 CALL                             R16 0 1
      136 SETTABLEKS                       R16 R15 K3 ["LayoutOrder"]
      138 CALL                             R13 2 1
      139 SETTABLEKS                       R13 R12 K28 ["MutualConnections"]
      141 GETUPVAL                         R13 2
      142 GETTABLEKS                       R13 R13 K1 ["createElement"]
      144 GETGLOBAL                        R14 K15 ["iconBadge"]
      146 DUPTABLE                         R15 K18 [{"iconEnum", "text", "LayoutOrder"}]
      147 GETUPVAL                         R16 4
      148 GETTABLEKS                       R16 R16 K35 ["accountCreationDateUnixSeconds"]
      150 SETTABLEKS                       R16 R15 K16 ["iconEnum"]
      152 GETTABLEKS                       R16 R0 K20 ["ProfileInsight"]
      154 GETTABLEKS                       R16 R16 K36 ["accountCreationTranslation"]
      156 SETTABLEKS                       R16 R15 K17 ["text"]
      158 MOVE                             R16 R4
      159 CALL                             R16 0 1
      160 SETTABLEKS                       R16 R15 K3 ["LayoutOrder"]
      162 CALL                             R13 2 1
      163 SETTABLEKS                       R13 R12 K29 ["JoinDate"]
      165 CALL                             R9 3 1
      166 SETTABLEKS                       R9 R8 K8 ["row2"]
      168 CALL                             R5 3 -1
      169 RETURN                           R5 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 0
        3 CALL                             R2 0 1
        4 GETTABLEKS                       R3 R0 K0 ["ProfileInsight"]
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K1 ["useContext"]
        9 GETUPVAL                         R5 2
       10 CALL                             R4 1 1
       11 GETTABLEKS                       R5 R4 K2 ["userInfoController"]
       13 GETTABLEKS                       R7 R5 K3 ["userInfoByUserId"]
       15 GETTABLEKS                       R8 R3 K4 ["userId"]
       17 GETTABLE                         R6 R7 R8
       18 GETUPVAL                         R7 1
       19 GETTABLEKS                       R7 R7 K5 ["createElement"]
       21 GETUPVAL                         R8 3
       22 GETTABLEKS                       R8 R8 K6 ["View"]
       24 DUPTABLE                         R9 K10 [{["tag"] = "row align-y-center size-full-0 auto-y padding-medium radius-medium bg-shift-100", ["LayoutOrder"]}]
       25 GETTABLEKS                       R10 R0 K9 ["LayoutOrder"]
       27 SETTABLEKS                       R10 R9 K9 ["LayoutOrder"]
       29 DUPTABLE                         R10 K13 [{"Avatar", "SocialMetadata"}]
       30 GETUPVAL                         R11 1
       31 GETTABLEKS                       R11 R11 K5 ["createElement"]
       33 GETUPVAL                         R12 3
       34 GETTABLEKS                       R12 R12 K11 ["Avatar"]
       36 DUPTABLE                         R13 K17 [{["userId"], ["size"], ["backgroundStyle"], ["tag"] = "align-y-center", ["LayoutOrder"]}]
       37 GETTABLEKS                       R14 R3 K4 ["userId"]
       39 SETTABLEKS                       R14 R13 K4 ["userId"]
       41 GETUPVAL                         R14 3
       42 GETTABLEKS                       R14 R14 K18 ["Enums"]
       44 GETTABLEKS                       R14 R14 K19 ["InputSize"]
       46 GETTABLEKS                       R14 R14 K20 ["Large"]
       48 SETTABLEKS                       R14 R13 K14 ["size"]
       50 DUPTABLE                         R14 K24 [{["Color3"], ["Transparency"] = 0}]
       51 GETTABLEKS                       R16 R3 K4 ["userId"]
       53 GETUPVAL                         R17 4
       54 GETUPVAL                         R21 4
       55 LENGTH                           R20 R21
       56 MOD                              R19 R16 R20
       57 ADDK                             R18 R19 K25 [1]
       58 GETTABLE                         R15 R17 R18
       59 SETTABLEKS                       R15 R14 K21 ["Color3"]
       61 SETTABLEKS                       R14 R13 K15 ["backgroundStyle"]
       63 MOVE                             R14 R1
       64 CALL                             R14 0 1
       65 SETTABLEKS                       R14 R13 K9 ["LayoutOrder"]
       67 CALL                             R11 2 1
       68 SETTABLEKS                       R11 R10 K11 ["Avatar"]
       70 GETUPVAL                         R11 1
       71 GETTABLEKS                       R11 R11 K5 ["createElement"]
       73 GETUPVAL                         R12 3
       74 GETTABLEKS                       R12 R12 K6 ["View"]
       76 DUPTABLE                         R13 K27 [{["tag"] = "col gap-xsmall size-0-0 auto-xy", ["LayoutOrder"]}]
       77 MOVE                             R14 R1
       78 CALL                             R14 0 1
       79 SETTABLEKS                       R14 R13 K9 ["LayoutOrder"]
       81 DUPTABLE                         R14 K31 [{"DisplayName", "UserName", "MetadataRow"}]
       82 GETUPVAL                         R15 1
       83 GETTABLEKS                       R15 R15 K5 ["createElement"]
       85 GETUPVAL                         R16 5
       86 DUPTABLE                         R17 K34 [{["Text"], ["LayoutOrder"], ["tag"] = "size-0-0 auto-xy padding-x-small text-title-medium text-align-x-left"}]
       87 JUMPIFNOT                        R6 ; [+3]
       88 GETTABLEKS                       R18 R6 K35 ["displayName"]
       90 JUMP                             ; [+1]
       91 LOADK                            R18 K36 [""]
       92 SETTABLEKS                       R18 R17 K32 ["Text"]
       94 MOVE                             R18 R2
       95 CALL                             R18 0 1
       96 SETTABLEKS                       R18 R17 K9 ["LayoutOrder"]
       98 CALL                             R15 2 1
       99 SETTABLEKS                       R15 R14 K28 ["DisplayName"]
      101 GETUPVAL                         R15 1
      102 GETTABLEKS                       R15 R15 K5 ["createElement"]
      104 GETUPVAL                         R16 5
      105 DUPTABLE                         R17 K38 [{["Text"], ["LayoutOrder"], ["tag"] = "size-0-0 auto-xy padding-x-small padding-bottom-xsmall text-body-medium text-align-x-left"}]
      106 JUMPIFNOT                        R6 ; [+5]
      107 LOADK                            R19 K39 ["@"]
      108 GETTABLEKS                       R20 R6 K40 ["username"]
      110 CONCAT                           R18 R19 R20
      111 JUMP                             ; [+1]
      112 LOADK                            R18 K36 [""]
      113 SETTABLEKS                       R18 R17 K32 ["Text"]
      115 MOVE                             R18 R2
      116 CALL                             R18 0 1
      117 SETTABLEKS                       R18 R17 K9 ["LayoutOrder"]
      119 CALL                             R15 2 1
      120 SETTABLEKS                       R15 R14 K29 ["UserName"]
      122 GETUPVAL                         R15 1
      123 GETTABLEKS                       R15 R15 K5 ["createElement"]
      125 GETGLOBAL                        R16 K30 ["MetadataRow"]
      127 DUPTABLE                         R17 K41 [{"LayoutOrder", "ProfileInsight"}]
      128 MOVE                             R18 R2
      129 CALL                             R18 0 1
      130 SETTABLEKS                       R18 R17 K9 ["LayoutOrder"]
      132 SETTABLEKS                       R3 R17 K0 ["ProfileInsight"]
      134 CALL                             R15 2 1
      135 SETTABLEKS                       R15 R14 K30 ["MetadataRow"]
      137 CALL                             R11 3 1
      138 SETTABLEKS                       R11 R10 K12 ["SocialMetadata"]
      140 CALL                             R7 3 -1
      141 RETURN                           R7 -1

PROTO_4:
        0 GETIMPORT                        R0 K1 [pairs]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["profileInsights"]
        5 CALL                             R0 1 3
        6 FORGPREP_NEXT                    R0
        7 GETUPVAL                         R6 1
        8 GETUPVAL                         R7 2
        9 GETTABLEKS                       R7 R7 K3 ["createElement"]
       11 GETUPVAL                         R8 3
       12 DUPTABLE                         R9 K8 [{"key", "Id", "LayoutOrder", "ProfileInsight"}]
       13 GETTABLEKS                       R10 R4 K9 ["userId"]
       15 SETTABLEKS                       R10 R9 K4 ["key"]
       17 GETTABLEKS                       R10 R4 K9 ["userId"]
       19 SETTABLEKS                       R10 R9 K5 ["Id"]
       21 GETUPVAL                         R10 4
       22 CALL                             R10 0 1
       23 SETTABLEKS                       R10 R9 K6 ["LayoutOrder"]
       25 SETTABLEKS                       R4 R9 K7 ["ProfileInsight"]
       27 CALL                             R7 2 -1
       28 FASTCALL                         TABLE_INSERT ; [+2]
       29 GETIMPORT                        R5 K12 [table.insert]
       31 CALL                             R5 -1 0
       32 FORGLOOP                         R0 2 ; [-26]
       34 GETUPVAL                         R0 1
       35 RETURN                           R0 1

PROTO_5:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["useContext"]
        7 GETUPVAL                         R3 2
        8 CALL                             R2 1 1
        9 GETTABLEKS                       R3 R2 K1 ["profileInsightsController"]
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R4 R4 K2 ["useMemo"]
       14 NEWCLOSURE                       R5 P0
       15 CAPTURE                          VAL R3
       16 CAPTURE                          REF R0
       17 CAPTURE                          UPVAL U1
       18 CAPTURE                          UPVAL U3
       19 CAPTURE                          VAL R1
       20 NEWTABLE                         R6 0 1
       22 GETTABLEKS                       R7 R3 K3 ["profileInsights"]
       24 SETLIST                          R6 R7 1 [1]
       26 CALL                             R4 2 1
       27 MOVE                             R0 R4
       28 CLOSEUPVALS                      R0
       29 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["createElement"]
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R3 R3 K1 ["ScrollView"]
        8 DUPTABLE                         R4 K7 [{["LayoutOrder"], ["scroll"], ["layout"], ["tag"] = "fill size-full-0"}]
        9 GETTABLEKS                       R5 R0 K2 ["LayoutOrder"]
       11 SETTABLEKS                       R5 R4 K2 ["LayoutOrder"]
       13 DUPTABLE                         R5 K12 [{"scrollBarVisibility", "ScrollingDirection", "AutomaticCanvasSize", "CanvasSize"}]
       14 GETUPVAL                         R6 3
       15 GETTABLEKS                       R6 R6 K13 ["Auto"]
       17 SETTABLEKS                       R6 R5 K8 ["scrollBarVisibility"]
       19 GETIMPORT                        R6 K16 [Enum.ScrollingDirection.Y]
       21 SETTABLEKS                       R6 R5 K9 ["ScrollingDirection"]
       23 GETIMPORT                        R6 K18 [Enum.AutomaticSize.Y]
       25 SETTABLEKS                       R6 R5 K10 ["AutomaticCanvasSize"]
       27 GETIMPORT                        R6 K21 [UDim2.fromScale]
       29 LOADN                            R7 0
       30 LOADN                            R8 0
       31 CALL                             R6 2 1
       32 SETTABLEKS                       R6 R5 K11 ["CanvasSize"]
       34 SETTABLEKS                       R5 R4 K3 ["scroll"]
       36 DUPTABLE                         R5 K26 [{"HorizontalAlignment", "FillDirection", "SortOrder", "HorizontalFlex"}]
       37 GETIMPORT                        R6 K28 [Enum.HorizontalAlignment.Left]
       39 SETTABLEKS                       R6 R5 K22 ["HorizontalAlignment"]
       41 GETIMPORT                        R6 K30 [Enum.FillDirection.Vertical]
       43 SETTABLEKS                       R6 R5 K23 ["FillDirection"]
       45 GETIMPORT                        R6 K31 [Enum.SortOrder.LayoutOrder]
       47 SETTABLEKS                       R6 R5 K24 ["SortOrder"]
       49 GETIMPORT                        R6 K34 [Enum.UIFlexAlignment.Fill]
       51 SETTABLEKS                       R6 R5 K25 ["HorizontalFlex"]
       53 SETTABLEKS                       R5 R4 K4 ["layout"]
       55 DUPTABLE                         R5 K36 [{"View"}]
       56 GETUPVAL                         R6 1
       57 GETTABLEKS                       R6 R6 K0 ["createElement"]
       59 GETUPVAL                         R7 2
       60 GETTABLEKS                       R7 R7 K35 ["View"]
       62 DUPTABLE                         R8 K38 [{["tag"] = "col flex-x-fill align-x-left gap-xsmall size-0-0 auto-xy padding-top-xsmall"}]
       63 MOVE                             R9 R1
       64 CALL                             R6 3 1
       65 SETTABLEKS                       R6 R5 K35 ["View"]
       67 CALL                             R2 3 -1
       68 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TeamCreateCollaborators"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactUtils"]
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
       39 GETTABLEKS                       R7 R3 K13 ["Text"]
       41 GETTABLEKS                       R8 R3 K14 ["Enums"]
       43 GETTABLEKS                       R8 R8 K15 ["ScrollBarVisibility"]
       45 GETTABLEKS                       R9 R3 K16 ["Icon"]
       47 GETTABLEKS                       R10 R3 K14 ["Enums"]
       49 GETTABLEKS                       R11 R3 K14 ["Enums"]
       51 GETTABLEKS                       R11 R11 K17 ["IconVariant"]
       53 GETTABLEKS                       R12 R0 K18 ["Src"]
       55 GETTABLEKS                       R12 R12 K19 ["Contexts"]
       57 GETIMPORT                        R13 K5 [require]
       59 GETTABLEKS                       R14 R12 K20 ["NetworkContext"]
       61 CALL                             R13 1 1
       62 GETIMPORT                        R14 K5 [require]
       64 GETTABLEKS                       R15 R12 K21 ["ControllerContext"]
       66 CALL                             R14 1 1
       67 GETTABLEKS                       R15 R2 K22 ["createNextOrder"]
       69 DUPTABLE                         R16 K27 [{"mutualFriends", "friendshipAgeUnixSeconds", "accountCreationDateUnixSeconds", "ageChecked"}]
       70 GETTABLEKS                       R17 R10 K28 ["IconName"]
       72 GETTABLEKS                       R17 R17 K29 ["TwoPeople"]
       74 SETTABLEKS                       R17 R16 K23 ["mutualFriends"]
       76 GETTABLEKS                       R17 R10 K28 ["IconName"]
       78 GETTABLEKS                       R17 R17 K30 ["Calendar"]
       80 SETTABLEKS                       R17 R16 K24 ["friendshipAgeUnixSeconds"]
       82 GETTABLEKS                       R17 R10 K28 ["IconName"]
       84 GETTABLEKS                       R17 R17 K31 ["CircleI"]
       86 SETTABLEKS                       R17 R16 K25 ["accountCreationDateUnixSeconds"]
       88 GETTABLEKS                       R17 R10 K28 ["IconName"]
       90 GETTABLEKS                       R17 R17 K32 ["ShieldCheck"]
       92 SETTABLEKS                       R17 R16 K26 ["ageChecked"]
       94 NEWTABLE                         R17 0 8
       96 GETIMPORT                        R18 K35 [Color3.fromRGB]
       98 LOADN                            R19 10
       99 LOADN                            R20 230
      100 LOADN                            R21 204
      101 CALL                             R18 3 1
      102 GETIMPORT                        R19 K35 [Color3.fromRGB]
      104 LOADN                            R20 255
      105 LOADN                            R21 20
      106 LOADN                            R22 147
      107 CALL                             R19 3 1
      108 GETIMPORT                        R20 K35 [Color3.fromRGB]
      110 LOADN                            R21 0
      111 LOADN                            R22 200
      112 LOADN                            R23 255
      113 CALL                             R20 3 1
      114 GETIMPORT                        R21 K35 [Color3.fromRGB]
      116 LOADN                            R22 255
      117 LOADN                            R23 234
      118 LOADN                            R24 0
      119 CALL                             R21 3 1
      120 GETIMPORT                        R22 K35 [Color3.fromRGB]
      122 LOADN                            R23 180
      123 LOADN                            R24 60
      124 LOADN                            R25 255
      125 CALL                             R22 3 1
      126 GETIMPORT                        R23 K35 [Color3.fromRGB]
      128 LOADN                            R24 255
      129 LOADN                            R25 110
      130 LOADN                            R26 0
      131 CALL                             R23 3 1
      132 GETIMPORT                        R24 K35 [Color3.fromRGB]
      134 LOADN                            R25 255
      135 LOADN                            R26 0
      136 LOADN                            R27 200
      137 CALL                             R24 3 1
      138 GETIMPORT                        R25 K35 [Color3.fromRGB]
      140 LOADN                            R26 170
      141 LOADN                            R27 255
      142 LOADN                            R28 0
      143 CALL                             R25 3 -1
      144 SETLIST                          R17 R18 -1 [1]
      146 DUPCLOSURE                       R18 K36 [PROTO_0]
      147 CAPTURE                          VAL R17
      148 DUPCLOSURE                       R19 K37 [PROTO_1]
      149 CAPTURE                          VAL R1
      150 CAPTURE                          VAL R3
      151 CAPTURE                          VAL R9
      152 CAPTURE                          VAL R11
      153 CAPTURE                          VAL R10
      154 CAPTURE                          VAL R7
      155 SETGLOBAL                        R19 K38 ["iconBadge"]
      157 DUPCLOSURE                       R19 K39 [PROTO_2]
      158 CAPTURE                          VAL R6
      159 CAPTURE                          VAL R15
      160 CAPTURE                          VAL R1
      161 CAPTURE                          VAL R3
      162 CAPTURE                          VAL R16
      163 SETGLOBAL                        R19 K40 ["MetadataRow"]
      165 DUPCLOSURE                       R19 K41 [PROTO_3]
      166 CAPTURE                          VAL R15
      167 CAPTURE                          VAL R1
      168 CAPTURE                          VAL R14
      169 CAPTURE                          VAL R3
      170 CAPTURE                          VAL R17
      171 CAPTURE                          VAL R7
      172 DUPCLOSURE                       R20 K42 [PROTO_5]
      173 CAPTURE                          VAL R15
      174 CAPTURE                          VAL R1
      175 CAPTURE                          VAL R14
      176 CAPTURE                          VAL R19
      177 DUPCLOSURE                       R21 K43 [PROTO_6]
      178 CAPTURE                          VAL R20
      179 CAPTURE                          VAL R1
      180 CAPTURE                          VAL R3
      181 CAPTURE                          VAL R8
      182 RETURN                           R21 1
