PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Role"]
        2 GETTABLEKS                       R2 R0 K1 ["IsSelected"]
        4 GETTABLEKS                       R3 R0 K2 ["Localization"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K3 ["createElement"]
        9 GETUPVAL                         R5 1
       10 DUPTABLE                         R6 K9 [{["LayoutOrder"], ["tag"] = "row align-y-center gap-medium size-full-0 auto-y padding-small padding-y-medium radius-medium", ["isDisabled"], ["onActivated"]}]
       11 GETTABLEKS                       R7 R0 K4 ["LayoutOrder"]
       13 SETTABLEKS                       R7 R6 K4 ["LayoutOrder"]
       15 GETTABLEKS                       R8 R1 K10 ["isEligible"]
       17 NOT                              R7 R8
       18 SETTABLEKS                       R7 R6 K7 ["isDisabled"]
       20 GETTABLEKS                       R8 R1 K10 ["isEligible"]
       22 JUMPIFNOT                        R8 ; [+3]
       23 GETTABLEKS                       R7 R0 K11 ["OnActivated"]
       25 JUMP                             ; [+1]
       26 LOADNIL                          R7
       27 SETTABLEKS                       R7 R6 K8 ["onActivated"]
       29 DUPTABLE                         R7 K15 [{"Icon", "Text", "Checkmark"}]
       30 GETUPVAL                         R8 0
       31 GETTABLEKS                       R8 R8 K3 ["createElement"]
       33 GETUPVAL                         R9 2
       34 DUPTABLE                         R10 K19 [{["LayoutOrder"] = 1, ["name"], ["style"]}]
       35 GETTABLEKS                       R12 R1 K20 ["isPrivate"]
       37 JUMPIFNOT                        R12 ; [+4]
       38 GETUPVAL                         R11 3
       39 GETTABLEKS                       R11 R11 K21 ["LockClosed"]
       41 JUMP                             ; [+3]
       42 GETUPVAL                         R11 3
       43 GETTABLEKS                       R11 R11 K22 ["PersonRectangleHorizontalLine"]
       45 SETTABLEKS                       R11 R10 K17 ["name"]
       47 DUPTABLE                         R11 K26 [{["Color3"], ["Transparency"] = 0}]
       48 GETIMPORT                        R12 K28 [Color3.fromHex]
       50 GETUPVAL                         R13 4
       51 GETTABLEKS                       R14 R1 K29 ["color"]
       53 CALL                             R13 1 -1
       54 CALL                             R12 -1 1
       55 SETTABLEKS                       R12 R11 K23 ["Color3"]
       57 SETTABLEKS                       R11 R10 K18 ["style"]
       59 CALL                             R8 2 1
       60 SETTABLEKS                       R8 R7 K12 ["Icon"]
       62 GETUPVAL                         R8 0
       63 GETTABLEKS                       R8 R8 K3 ["createElement"]
       65 GETUPVAL                         R9 1
       66 DUPTABLE                         R10 K32 [{["LayoutOrder"] = 2, ["tag"] = "col grow gap-xxsmall auto-y"}]
       67 DUPTABLE                         R11 K35 [{"Title", "Description"}]
       68 GETUPVAL                         R12 0
       69 GETTABLEKS                       R12 R12 K3 ["createElement"]
       71 GETUPVAL                         R13 5
       72 DUPTABLE                         R14 K36 [{["LayoutOrder"] = 1, ["tag"], ["Text"]}]
       73 NEWTABLE                         R15 2 0
       75 GETTABLEKS                       R16 R1 K10 ["isEligible"]
       77 SETTABLEKS                       R16 R15 K37 ["auto-xy text-title-small content-emphasis"]
       79 GETTABLEKS                       R17 R1 K10 ["isEligible"]
       81 NOT                              R16 R17
       82 SETTABLEKS                       R16 R15 K38 ["auto-xy text-title-small content-muted"]
       84 SETTABLEKS                       R15 R14 K5 ["tag"]
       86 GETTABLEKS                       R15 R1 K17 ["name"]
       88 SETTABLEKS                       R15 R14 K13 ["Text"]
       90 CALL                             R12 2 1
       91 SETTABLEKS                       R12 R11 K33 ["Title"]
       93 GETTABLEKS                       R13 R1 K10 ["isEligible"]
       95 JUMPIF                           R13 ; [+14]
       96 GETUPVAL                         R12 0
       97 GETTABLEKS                       R12 R12 K3 ["createElement"]
       99 GETUPVAL                         R13 5
      100 DUPTABLE                         R14 K40 [{["LayoutOrder"] = 2, ["tag"] = "auto-xy text-body-small content-muted", ["Text"]}]
      101 LOADK                            R17 K34 ["Description"]
      102 LOADK                            R18 K41 ["TooManyMembers"]
      103 NAMECALL                         R15 R3 K42 ["getText"]
      105 CALL                             R15 3 1
      106 SETTABLEKS                       R15 R14 K13 ["Text"]
      108 CALL                             R12 2 1
      109 JUMP                             ; [+1]
      110 LOADNIL                          R12
      111 SETTABLEKS                       R12 R11 K34 ["Description"]
      113 CALL                             R8 3 1
      114 SETTABLEKS                       R8 R7 K13 ["Text"]
      116 JUMPIFNOT                        R2 ; [+7]
      117 GETUPVAL                         R8 0
      118 GETTABLEKS                       R8 R8 K3 ["createElement"]
      120 GETUPVAL                         R9 2
      121 DUPTABLE                         R10 K45 [{["LayoutOrder"] = 3, ["name"] = "check-large"}]
      122 CALL                             R8 2 1
      123 JUMP                             ; [+1]
      124 LOADNIL                          R8
      125 SETTABLEKS                       R8 R7 K14 ["Checkmark"]
      127 CALL                             R4 3 -1
      128 RETURN                           R4 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnPickRole"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["id"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["Localization"]
        2 GETTABLEKS                       R3 R0 K1 ["PickedRoleId"]
        4 JUMPIFEQKNIL                     R3 ; [+4]
        6 GETTABLEKS                       R2 R0 K1 ["PickedRoleId"]
        8 JUMP                             ; [+2]
        9 GETTABLEKS                       R2 R0 K2 ["PendingRoleId"]
       11 NEWTABLE                         R3 0 0
       13 GETTABLEKS                       R4 R0 K3 ["AllRoles"]
       15 LOADNIL                          R5
       16 LOADNIL                          R6
       17 FORGPREP                         R4
       18 LOADK                            R10 K4 ["Role"]
       19 GETTABLEKS                       R11 R8 K5 ["id"]
       21 CONCAT                           R9 R10 R11
       22 GETUPVAL                         R10 0
       23 GETTABLEKS                       R10 R10 K6 ["createElement"]
       25 GETUPVAL                         R11 1
       26 DUPTABLE                         R12 K10 [{"LayoutOrder", "Localization", "Role", "IsSelected", "OnActivated"}]
       27 SETTABLEKS                       R7 R12 K7 ["LayoutOrder"]
       29 SETTABLEKS                       R1 R12 K0 ["Localization"]
       31 SETTABLEKS                       R8 R12 K4 ["Role"]
       33 GETTABLEKS                       R14 R8 K5 ["id"]
       35 JUMPIFEQ                         R2 R14 ; [+2]
       37 LOADB                            R13 0 +1
       38 LOADB                            R13 1
       39 SETTABLEKS                       R13 R12 K8 ["IsSelected"]
       41 NEWCLOSURE                       R13 P0
       42 CAPTURE                          VAL R0
       43 CAPTURE                          VAL R8
       44 SETTABLEKS                       R13 R12 K9 ["OnActivated"]
       46 CALL                             R10 2 1
       47 SETTABLE                         R10 R3 R9
       48 FORGLOOP                         R4 2 ; [-31]
       50 GETUPVAL                         R4 0
       51 GETTABLEKS                       R4 R4 K6 ["createElement"]
       53 GETUPVAL                         R5 2
       54 DUPTABLE                         R6 K13 [{["LayoutOrder"], ["tag"] = "col gap-medium size-full-0 auto-y"}]
       55 GETTABLEKS                       R7 R0 K7 ["LayoutOrder"]
       57 SETTABLEKS                       R7 R6 K7 ["LayoutOrder"]
       59 DUPTABLE                         R7 K17 [{"BackButton", "Header", "RoleList"}]
       60 GETUPVAL                         R8 0
       61 GETTABLEKS                       R8 R8 K6 ["createElement"]
       63 GETUPVAL                         R9 3
       64 DUPTABLE                         R10 K26 [{["LayoutOrder"] = 1, ["text"], ["icon"] = "chevron-small-left", ["size"] = "Small", ["variant"], ["onActivated"]}]
       65 LOADK                            R13 K27 ["Button"]
       66 LOADK                            R14 K28 ["Back"]
       67 NAMECALL                         R11 R1 K29 ["getText"]
       69 CALL                             R11 3 1
       70 SETTABLEKS                       R11 R10 K19 ["text"]
       72 GETUPVAL                         R11 4
       73 GETTABLEKS                       R11 R11 K30 ["Utility"]
       75 SETTABLEKS                       R11 R10 K24 ["variant"]
       77 GETTABLEKS                       R11 R0 K31 ["OnBack"]
       79 SETTABLEKS                       R11 R10 K25 ["onActivated"]
       81 CALL                             R8 2 1
       82 SETTABLEKS                       R8 R7 K14 ["BackButton"]
       84 GETUPVAL                         R8 0
       85 GETTABLEKS                       R8 R8 K6 ["createElement"]
       87 GETUPVAL                         R9 2
       88 DUPTABLE                         R10 K34 [{["LayoutOrder"] = 2, ["tag"] = "col gap-xsmall size-full-0 auto-y"}]
       89 DUPTABLE                         R11 K37 [{"Title", "Description"}]
       90 GETUPVAL                         R12 0
       91 GETTABLEKS                       R12 R12 K6 ["createElement"]
       93 GETUPVAL                         R13 5
       94 DUPTABLE                         R14 K40 [{["LayoutOrder"] = 1, ["tag"] = "auto-xy text-label-medium content-emphasis", ["Text"]}]
       95 LOADK                            R17 K41 ["Heading"]
       96 LOADK                            R18 K42 ["EarlyTesterRole"]
       97 NAMECALL                         R15 R1 K29 ["getText"]
       99 CALL                             R15 3 1
      100 SETTABLEKS                       R15 R14 K39 ["Text"]
      102 CALL                             R12 2 1
      103 SETTABLEKS                       R12 R11 K35 ["Title"]
      105 GETUPVAL                         R12 0
      106 GETTABLEKS                       R12 R12 K6 ["createElement"]
      108 GETUPVAL                         R13 5
      109 DUPTABLE                         R14 K44 [{["LayoutOrder"] = 2, ["tag"] = "auto-xy text-body-small content-default", ["Text"]}]
      110 LOADK                            R17 K36 ["Description"]
      111 LOADK                            R18 K42 ["EarlyTesterRole"]
      112 NAMECALL                         R15 R1 K29 ["getText"]
      114 CALL                             R15 3 1
      115 SETTABLEKS                       R15 R14 K39 ["Text"]
      117 CALL                             R12 2 1
      118 SETTABLEKS                       R12 R11 K36 ["Description"]
      120 CALL                             R8 3 1
      121 SETTABLEKS                       R8 R7 K15 ["Header"]
      123 GETUPVAL                         R8 0
      124 GETTABLEKS                       R8 R8 K6 ["createElement"]
      126 GETUPVAL                         R9 2
      127 DUPTABLE                         R10 K47 [{["LayoutOrder"] = 3, ["tag"] = "col gap-xxsmall size-full-0 auto-y"}]
      128 MOVE                             R11 R3
      129 CALL                             R8 3 1
      130 SETTABLEKS                       R8 R7 K16 ["RoleList"]
      132 CALL                             R4 3 -1
      133 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["React"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Packages"]
       22 GETTABLEKS                       R3 R3 K7 ["Foundation"]
       24 CALL                             R2 1 1
       25 GETTABLEKS                       R3 R2 K8 ["View"]
       27 GETTABLEKS                       R4 R2 K9 ["Text"]
       29 GETTABLEKS                       R5 R2 K10 ["Icon"]
       31 GETTABLEKS                       R6 R2 K11 ["Button"]
       33 GETTABLEKS                       R7 R2 K12 ["Enums"]
       35 GETTABLEKS                       R7 R7 K13 ["ButtonVariant"]
       37 GETTABLEKS                       R8 R2 K12 ["Enums"]
       39 GETTABLEKS                       R8 R8 K14 ["IconName"]
       41 GETIMPORT                        R9 K4 [require]
       43 GETTABLEKS                       R10 R0 K15 ["Src"]
       45 GETTABLEKS                       R10 R10 K16 ["Util"]
       47 GETTABLEKS                       R10 R10 K17 ["GetGroupRoleColor"]
       49 CALL                             R9 1 1
       50 GETIMPORT                        R10 K4 [require]
       52 GETTABLEKS                       R11 R0 K15 ["Src"]
       54 GETTABLEKS                       R11 R11 K18 ["Types"]
       56 CALL                             R10 1 1
       57 DUPCLOSURE                       R11 K19 [PROTO_0]
       58 CAPTURE                          VAL R1
       59 CAPTURE                          VAL R3
       60 CAPTURE                          VAL R5
       61 CAPTURE                          VAL R8
       62 CAPTURE                          VAL R9
       63 CAPTURE                          VAL R4
       64 DUPCLOSURE                       R12 K20 [PROTO_2]
       65 CAPTURE                          VAL R1
       66 CAPTURE                          VAL R11
       67 CAPTURE                          VAL R3
       68 CAPTURE                          VAL R6
       69 CAPTURE                          VAL R7
       70 CAPTURE                          VAL R4
       71 RETURN                           R12 1
