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
        6 DUPTABLE                         R3 K4 [{"tag", "LayoutOrder"}]
        7 LOADK                            R4 K5 ["row auto-xy size-0-0 padding-left-small"]
        8 SETTABLEKS                       R4 R3 K2 ["tag"]
       10 GETTABLEKS                       R4 R0 K3 ["LayoutOrder"]
       12 SETTABLEKS                       R4 R3 K3 ["LayoutOrder"]
       14 DUPTABLE                         R4 K8 [{"Icon", "text"}]
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R5 R5 K0 ["createElement"]
       18 GETUPVAL                         R6 2
       19 DUPTABLE                         R7 K12 [{"name", "iconVariant", "size", "tag"}]
       20 GETTABLEKS                       R8 R0 K13 ["iconEnum"]
       22 SETTABLEKS                       R8 R7 K9 ["name"]
       24 GETUPVAL                         R8 3
       25 GETTABLEKS                       R8 R8 K14 ["Regular"]
       27 SETTABLEKS                       R8 R7 K10 ["iconVariant"]
       29 GETUPVAL                         R8 4
       30 GETTABLEKS                       R8 R8 K15 ["IconSize"]
       32 GETTABLEKS                       R8 R8 K16 ["Small"]
       34 SETTABLEKS                       R8 R7 K11 ["size"]
       36 LOADK                            R8 K17 ["auto-xy size-0-0"]
       37 SETTABLEKS                       R8 R7 K2 ["tag"]
       39 CALL                             R5 2 1
       40 SETTABLEKS                       R5 R4 K6 ["Icon"]
       42 GETUPVAL                         R5 0
       43 GETTABLEKS                       R5 R5 K0 ["createElement"]
       45 GETUPVAL                         R6 5
       46 DUPTABLE                         R7 K19 [{"Text", "tag"}]
       47 GETTABLEKS                       R8 R0 K7 ["text"]
       49 SETTABLEKS                       R8 R7 K18 ["Text"]
       51 LOADK                            R8 K20 ["auto-xy size-0-0 text-align-x-left text-caption-large padding-left-xsmall"]
       52 SETTABLEKS                       R8 R7 K2 ["tag"]
       54 CALL                             R5 2 1
       55 SETTABLEKS                       R5 R4 K7 ["text"]
       57 CALL                             R1 3 -1
       58 RETURN                           R1 -1

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
       16 DUPTABLE                         R7 K5 [{"LayoutOrder", "tag"}]
       17 GETTABLEKS                       R8 R0 K3 ["LayoutOrder"]
       19 SETTABLEKS                       R8 R7 K3 ["LayoutOrder"]
       21 LOADK                            R8 K6 ["col align-y-center size-0-0 auto-xy gap-xsmall"]
       22 SETTABLEKS                       R8 R7 K4 ["tag"]
       24 DUPTABLE                         R8 K9 [{"row1", "row2"}]
       25 GETUPVAL                         R9 2
       26 GETTABLEKS                       R9 R9 K1 ["createElement"]
       28 GETUPVAL                         R10 3
       29 GETTABLEKS                       R10 R10 K2 ["View"]
       31 DUPTABLE                         R11 K10 [{"tag", "LayoutOrder"}]
       32 LOADK                            R12 K11 ["row gap-xsmall auto-xy size-0-0"]
       33 SETTABLEKS                       R12 R11 K4 ["tag"]
       35 MOVE                             R12 R2
       36 CALL                             R12 0 1
       37 SETTABLEKS                       R12 R11 K3 ["LayoutOrder"]
       39 DUPTABLE                         R12 K14 [{"AgeChecked", "friendshipAge"}]
       40 GETUPVAL                         R13 2
       41 GETTABLEKS                       R13 R13 K1 ["createElement"]
       43 GETGLOBAL                        R14 K15 ["iconBadge"]
       45 DUPTABLE                         R15 K18 [{"iconEnum", "text", "LayoutOrder"}]
       46 GETUPVAL                         R16 4
       47 GETTABLEKS                       R16 R16 K19 ["ageChecked"]
       49 SETTABLEKS                       R16 R15 K16 ["iconEnum"]
       51 GETTABLEKS                       R17 R0 K20 ["ProfileInsight"]
       53 GETTABLEKS                       R17 R17 K21 ["userAgeVerified"]
       55 JUMPIFNOT                        R17 ; [+6]
       56 LOADK                            R18 K22 ["TrustedConnectionWidget"]
       57 LOADK                            R19 K23 ["AgeVerified"]
       58 NAMECALL                         R16 R1 K24 ["getText"]
       60 CALL                             R16 3 1
       61 JUMPIF                           R16 ; [+5]
       62 LOADK                            R18 K22 ["TrustedConnectionWidget"]
       63 LOADK                            R19 K25 ["AgeNotVerified"]
       64 NAMECALL                         R16 R1 K24 ["getText"]
       66 CALL                             R16 3 1
       67 SETTABLEKS                       R16 R15 K17 ["text"]
       69 MOVE                             R16 R3
       70 CALL                             R16 0 1
       71 SETTABLEKS                       R16 R15 K3 ["LayoutOrder"]
       73 CALL                             R13 2 1
       74 SETTABLEKS                       R13 R12 K12 ["AgeChecked"]
       76 GETUPVAL                         R13 2
       77 GETTABLEKS                       R13 R13 K1 ["createElement"]
       79 GETGLOBAL                        R14 K15 ["iconBadge"]
       81 DUPTABLE                         R15 K18 [{"iconEnum", "text", "LayoutOrder"}]
       82 GETUPVAL                         R16 4
       83 GETTABLEKS                       R16 R16 K26 ["friendshipAgeUnixSeconds"]
       85 SETTABLEKS                       R16 R15 K16 ["iconEnum"]
       87 GETTABLEKS                       R16 R0 K20 ["ProfileInsight"]
       89 GETTABLEKS                       R16 R16 K27 ["friendshipAgeTranslation"]
       91 SETTABLEKS                       R16 R15 K17 ["text"]
       93 MOVE                             R16 R3
       94 CALL                             R16 0 1
       95 SETTABLEKS                       R16 R15 K3 ["LayoutOrder"]
       97 CALL                             R13 2 1
       98 SETTABLEKS                       R13 R12 K13 ["friendshipAge"]
      100 CALL                             R9 3 1
      101 SETTABLEKS                       R9 R8 K7 ["row1"]
      103 GETUPVAL                         R9 2
      104 GETTABLEKS                       R9 R9 K1 ["createElement"]
      106 GETUPVAL                         R10 3
      107 GETTABLEKS                       R10 R10 K2 ["View"]
      109 DUPTABLE                         R11 K10 [{"tag", "LayoutOrder"}]
      110 LOADK                            R12 K11 ["row gap-xsmall auto-xy size-0-0"]
      111 SETTABLEKS                       R12 R11 K4 ["tag"]
      113 MOVE                             R12 R2
      114 CALL                             R12 0 1
      115 SETTABLEKS                       R12 R11 K3 ["LayoutOrder"]
      117 DUPTABLE                         R12 K30 [{"MutualConnections", "JoinDate"}]
      118 GETUPVAL                         R13 2
      119 GETTABLEKS                       R13 R13 K1 ["createElement"]
      121 GETGLOBAL                        R14 K15 ["iconBadge"]
      123 DUPTABLE                         R15 K18 [{"iconEnum", "text", "LayoutOrder"}]
      124 GETUPVAL                         R16 4
      125 GETTABLEKS                       R16 R16 K31 ["mutualFriends"]
      127 SETTABLEKS                       R16 R15 K16 ["iconEnum"]
      129 LOADK                            R18 K22 ["TrustedConnectionWidget"]
      130 LOADK                            R19 K28 ["MutualConnections"]
      131 DUPTABLE                         R20 K33 [{"count"}]
      132 GETTABLEKS                       R21 R0 K20 ["ProfileInsight"]
      134 GETTABLEKS                       R21 R21 K34 ["mutualFriendCount"]
      136 SETTABLEKS                       R21 R20 K32 ["count"]
      138 NAMECALL                         R16 R1 K24 ["getText"]
      140 CALL                             R16 4 1
      141 SETTABLEKS                       R16 R15 K17 ["text"]
      143 MOVE                             R16 R4
      144 CALL                             R16 0 1
      145 SETTABLEKS                       R16 R15 K3 ["LayoutOrder"]
      147 CALL                             R13 2 1
      148 SETTABLEKS                       R13 R12 K28 ["MutualConnections"]
      150 GETUPVAL                         R13 2
      151 GETTABLEKS                       R13 R13 K1 ["createElement"]
      153 GETGLOBAL                        R14 K15 ["iconBadge"]
      155 DUPTABLE                         R15 K18 [{"iconEnum", "text", "LayoutOrder"}]
      156 GETUPVAL                         R16 4
      157 GETTABLEKS                       R16 R16 K35 ["accountCreationDateUnixSeconds"]
      159 SETTABLEKS                       R16 R15 K16 ["iconEnum"]
      161 GETTABLEKS                       R16 R0 K20 ["ProfileInsight"]
      163 GETTABLEKS                       R16 R16 K36 ["accountCreationTranslation"]
      165 SETTABLEKS                       R16 R15 K17 ["text"]
      167 MOVE                             R16 R4
      168 CALL                             R16 0 1
      169 SETTABLEKS                       R16 R15 K3 ["LayoutOrder"]
      171 CALL                             R13 2 1
      172 SETTABLEKS                       R13 R12 K29 ["JoinDate"]
      174 CALL                             R9 3 1
      175 SETTABLEKS                       R9 R8 K8 ["row2"]
      177 CALL                             R5 3 -1
      178 RETURN                           R5 -1

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
       24 DUPTABLE                         R9 K9 [{"tag", "LayoutOrder"}]
       25 LOADK                            R10 K10 ["size-full-0 auto-y row bg-shift-100 radius-medium padding-medium align-y-center"]
       26 SETTABLEKS                       R10 R9 K7 ["tag"]
       28 GETTABLEKS                       R10 R0 K8 ["LayoutOrder"]
       30 SETTABLEKS                       R10 R9 K8 ["LayoutOrder"]
       32 DUPTABLE                         R10 K13 [{"Avatar", "SocialMetadata"}]
       33 GETUPVAL                         R11 1
       34 GETTABLEKS                       R11 R11 K5 ["createElement"]
       36 GETUPVAL                         R12 3
       37 GETTABLEKS                       R12 R12 K11 ["Avatar"]
       39 DUPTABLE                         R13 K16 [{"userId", "size", "backgroundStyle", "tag", "LayoutOrder"}]
       40 GETTABLEKS                       R14 R3 K4 ["userId"]
       42 SETTABLEKS                       R14 R13 K4 ["userId"]
       44 GETUPVAL                         R14 3
       45 GETTABLEKS                       R14 R14 K17 ["Enums"]
       47 GETTABLEKS                       R14 R14 K18 ["InputSize"]
       49 GETTABLEKS                       R14 R14 K19 ["Large"]
       51 SETTABLEKS                       R14 R13 K14 ["size"]
       53 DUPTABLE                         R14 K22 [{"Color3", "Transparency"}]
       54 GETTABLEKS                       R16 R3 K4 ["userId"]
       56 GETUPVAL                         R17 4
       57 GETUPVAL                         R21 4
       58 LENGTH                           R20 R21
       59 MOD                              R19 R16 R20
       60 ADDK                             R18 R19 K23 [1]
       61 GETTABLE                         R15 R17 R18
       62 SETTABLEKS                       R15 R14 K20 ["Color3"]
       64 LOADN                            R15 0
       65 SETTABLEKS                       R15 R14 K21 ["Transparency"]
       67 SETTABLEKS                       R14 R13 K15 ["backgroundStyle"]
       69 LOADK                            R14 K24 ["align-y-center"]
       70 SETTABLEKS                       R14 R13 K7 ["tag"]
       72 MOVE                             R14 R1
       73 CALL                             R14 0 1
       74 SETTABLEKS                       R14 R13 K8 ["LayoutOrder"]
       76 CALL                             R11 2 1
       77 SETTABLEKS                       R11 R10 K11 ["Avatar"]
       79 GETUPVAL                         R11 1
       80 GETTABLEKS                       R11 R11 K5 ["createElement"]
       82 GETUPVAL                         R12 3
       83 GETTABLEKS                       R12 R12 K6 ["View"]
       85 DUPTABLE                         R13 K9 [{"tag", "LayoutOrder"}]
       86 LOADK                            R14 K25 ["col auto-xy size-0-0 gap-xsmall"]
       87 SETTABLEKS                       R14 R13 K7 ["tag"]
       89 MOVE                             R14 R1
       90 CALL                             R14 0 1
       91 SETTABLEKS                       R14 R13 K8 ["LayoutOrder"]
       93 DUPTABLE                         R14 K29 [{"DisplayName", "UserName", "MetadataRow"}]
       94 GETUPVAL                         R15 1
       95 GETTABLEKS                       R15 R15 K5 ["createElement"]
       97 GETUPVAL                         R16 5
       98 DUPTABLE                         R17 K31 [{"Text", "LayoutOrder", "tag"}]
       99 JUMPIFNOT                        R6 ; [+3]
      100 GETTABLEKS                       R18 R6 K32 ["displayName"]
      102 JUMP                             ; [+1]
      103 LOADK                            R18 K33 [""]
      104 SETTABLEKS                       R18 R17 K30 ["Text"]
      106 MOVE                             R18 R2
      107 CALL                             R18 0 1
      108 SETTABLEKS                       R18 R17 K8 ["LayoutOrder"]
      110 LOADK                            R18 K34 ["auto-xy size-0-0 text-align-x-left text-title-medium padding-x-small"]
      111 SETTABLEKS                       R18 R17 K7 ["tag"]
      113 CALL                             R15 2 1
      114 SETTABLEKS                       R15 R14 K26 ["DisplayName"]
      116 GETUPVAL                         R15 1
      117 GETTABLEKS                       R15 R15 K5 ["createElement"]
      119 GETUPVAL                         R16 5
      120 DUPTABLE                         R17 K31 [{"Text", "LayoutOrder", "tag"}]
      121 JUMPIFNOT                        R6 ; [+5]
      122 LOADK                            R19 K35 ["@"]
      123 GETTABLEKS                       R20 R6 K36 ["username"]
      125 CONCAT                           R18 R19 R20
      126 JUMP                             ; [+1]
      127 LOADK                            R18 K33 [""]
      128 SETTABLEKS                       R18 R17 K30 ["Text"]
      130 MOVE                             R18 R2
      131 CALL                             R18 0 1
      132 SETTABLEKS                       R18 R17 K8 ["LayoutOrder"]
      134 LOADK                            R18 K37 ["auto-xy size-0-0 text-align-x-left text-body-medium padding-x-small padding-bottom-xsmall"]
      135 SETTABLEKS                       R18 R17 K7 ["tag"]
      137 CALL                             R15 2 1
      138 SETTABLEKS                       R15 R14 K27 ["UserName"]
      140 GETUPVAL                         R15 1
      141 GETTABLEKS                       R15 R15 K5 ["createElement"]
      143 GETGLOBAL                        R16 K28 ["MetadataRow"]
      145 DUPTABLE                         R17 K38 [{"LayoutOrder", "ProfileInsight"}]
      146 MOVE                             R18 R2
      147 CALL                             R18 0 1
      148 SETTABLEKS                       R18 R17 K8 ["LayoutOrder"]
      150 SETTABLEKS                       R3 R17 K0 ["ProfileInsight"]
      152 CALL                             R15 2 1
      153 SETTABLEKS                       R15 R14 K28 ["MetadataRow"]
      155 CALL                             R11 3 1
      156 SETTABLEKS                       R11 R10 K12 ["SocialMetadata"]
      158 CALL                             R7 3 -1
      159 RETURN                           R7 -1

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
        8 DUPTABLE                         R4 K6 [{"LayoutOrder", "scroll", "layout", "tag"}]
        9 GETTABLEKS                       R5 R0 K2 ["LayoutOrder"]
       11 SETTABLEKS                       R5 R4 K2 ["LayoutOrder"]
       13 DUPTABLE                         R5 K11 [{"scrollBarVisibility", "ScrollingDirection", "AutomaticCanvasSize", "CanvasSize"}]
       14 GETUPVAL                         R6 3
       15 GETTABLEKS                       R6 R6 K12 ["Auto"]
       17 SETTABLEKS                       R6 R5 K7 ["scrollBarVisibility"]
       19 GETIMPORT                        R6 K15 [Enum.ScrollingDirection.Y]
       21 SETTABLEKS                       R6 R5 K8 ["ScrollingDirection"]
       23 GETIMPORT                        R6 K17 [Enum.AutomaticSize.Y]
       25 SETTABLEKS                       R6 R5 K9 ["AutomaticCanvasSize"]
       27 GETIMPORT                        R6 K20 [UDim2.fromScale]
       29 LOADN                            R7 0
       30 LOADN                            R8 0
       31 CALL                             R6 2 1
       32 SETTABLEKS                       R6 R5 K10 ["CanvasSize"]
       34 SETTABLEKS                       R5 R4 K3 ["scroll"]
       36 DUPTABLE                         R5 K25 [{"HorizontalAlignment", "FillDirection", "SortOrder", "HorizontalFlex"}]
       37 GETIMPORT                        R6 K27 [Enum.HorizontalAlignment.Left]
       39 SETTABLEKS                       R6 R5 K21 ["HorizontalAlignment"]
       41 GETIMPORT                        R6 K29 [Enum.FillDirection.Vertical]
       43 SETTABLEKS                       R6 R5 K22 ["FillDirection"]
       45 GETIMPORT                        R6 K30 [Enum.SortOrder.LayoutOrder]
       47 SETTABLEKS                       R6 R5 K23 ["SortOrder"]
       49 GETIMPORT                        R6 K33 [Enum.UIFlexAlignment.Fill]
       51 SETTABLEKS                       R6 R5 K24 ["HorizontalFlex"]
       53 SETTABLEKS                       R5 R4 K4 ["layout"]
       55 LOADK                            R5 K34 ["size-full-0 fill"]
       56 SETTABLEKS                       R5 R4 K5 ["tag"]
       58 DUPTABLE                         R5 K36 [{"View"}]
       59 GETUPVAL                         R6 1
       60 GETTABLEKS                       R6 R6 K0 ["createElement"]
       62 GETUPVAL                         R7 2
       63 GETTABLEKS                       R7 R7 K35 ["View"]
       65 DUPTABLE                         R8 K37 [{"tag"}]
       66 LOADK                            R9 K38 ["size-0-0 auto-xy col flex-x-fill align-x-left gap-xsmall margin-top-xsmall padding-top-xsmall"]
       67 SETTABLEKS                       R9 R8 K5 ["tag"]
       69 MOVE                             R9 R1
       70 CALL                             R6 3 1
       71 SETTABLEKS                       R6 R5 K35 ["View"]
       73 CALL                             R2 3 -1
       74 RETURN                           R2 -1

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
