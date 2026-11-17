PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["CurrentPermission"]
        4 JUMPIFNOTEQKNIL                  R2 ; [+3]
        6 LOADNIL                          R2
        7 RETURN                           R2 1
        8 GETTABLEKS                       R2 R1 K2 ["Id"]
       10 GETTABLEKS                       R3 R1 K3 ["Writable"]
       12 GETTABLEKS                       R4 R1 K4 ["UserName"]
       14 GETTABLEKS                       R5 R1 K5 ["HideSeparator"]
       16 GETTABLEKS                       R6 R1 K6 ["RemoveAudienceCollaborator"]
       18 GETUPVAL                         R7 0
       19 GETTABLEKS                       R7 R7 K7 ["fflagCollabPreventSelfRemoval"]
       21 JUMPIFNOT                        R7 ; [+8]
       22 GETUPVAL                         R8 1
       23 NAMECALL                         R8 R8 K8 ["GetUserId"]
       25 CALL                             R8 1 1
       26 JUMPIFEQ                         R8 R2 ; [+2]
       28 LOADB                            R7 0 +1
       29 LOADB                            R7 1
       30 GETUPVAL                         R8 2
       31 GETTABLEKS                       R8 R8 K9 ["createElement"]
       33 GETUPVAL                         R9 3
       34 DUPTABLE                         R10 K22 [{["LayoutOrder"], ["Name"], ["Icon"], ["Writable"], ["Loading"] = False, ["HideSeparator"], ["Removable"], ["HidePermissionEditor"] = True, ["OnRemoved"], ["TooltipText"], ["CurrentPermission"], ["AvailablePermissions"], ["ShowCantInviteLabel"]}]
       35 GETTABLEKS                       R11 R1 K10 ["LayoutOrder"]
       37 SETTABLEKS                       R11 R10 K10 ["LayoutOrder"]
       39 SETTABLEKS                       R4 R10 K11 ["Name"]
       41 GETUPVAL                         R11 2
       42 GETTABLEKS                       R11 R11 K9 ["createElement"]
       44 GETUPVAL                         R12 4
       45 DUPTABLE                         R13 K24 [{"Id", "Size"}]
       46 SETTABLEKS                       R2 R13 K2 ["Id"]
       48 GETIMPORT                        R14 K27 [UDim2.fromScale]
       50 LOADN                            R15 1
       51 LOADN                            R16 1
       52 CALL                             R14 2 1
       53 SETTABLEKS                       R14 R13 K23 ["Size"]
       55 CALL                             R11 2 1
       56 SETTABLEKS                       R11 R10 K12 ["Icon"]
       58 SETTABLEKS                       R3 R10 K3 ["Writable"]
       60 SETTABLEKS                       R5 R10 K5 ["HideSeparator"]
       62 MOVE                             R11 R3
       63 JUMPIFNOT                        R11 ; [+1]
       64 NOT                              R11 R7
       65 SETTABLEKS                       R11 R10 K15 ["Removable"]
       67 NEWCLOSURE                       R11 P0
       68 CAPTURE                          VAL R6
       69 CAPTURE                          VAL R2
       70 SETTABLEKS                       R11 R10 K18 ["OnRemoved"]
       72 GETUPVAL                         R12 5
       73 JUMPIFNOT                        R12 ; [+9]
       74 JUMPIF                           R3 ; [+8]
       75 GETTABLEKS                       R11 R1 K28 ["Localization"]
       77 LOADK                            R13 K29 ["PermissionDescriptions"]
       78 LOADK                            R14 K30 ["GameOwnerToEdit"]
       79 NAMECALL                         R11 R11 K31 ["getText"]
       81 CALL                             R11 3 1
       82 JUMP                             ; [+1]
       83 LOADNIL                          R11
       84 SETTABLEKS                       R11 R10 K19 ["TooltipText"]
       86 GETTABLEKS                       R11 R1 K1 ["CurrentPermission"]
       88 SETTABLEKS                       R11 R10 K1 ["CurrentPermission"]
       90 NEWTABLE                         R11 0 0
       92 SETTABLEKS                       R11 R10 K20 ["AvailablePermissions"]
       94 GETTABLEKS                       R11 R1 K32 ["IsIneligible"]
       96 SETTABLEKS                       R11 R10 K21 ["ShowCantInviteLabel"]
       98 CALL                             R8 2 -1
       99 RETURN                           R8 -1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["fflagEarlyTesterEligibilityFilter"]
        3 JUMPIFNOT                        R3 ; [+9]
        4 GETTABLEKS                       R3 R0 K1 ["PendingPlayTesters"]
        6 JUMPIFEQKNIL                     R3 ; [+6]
        8 GETTABLEKS                       R2 R0 K1 ["PendingPlayTesters"]
       10 GETTABLEKS                       R2 R2 K2 ["Eligibility"]
       12 JUMP                             ; [+1]
       13 LOADNIL                          R2
       14 DUPTABLE                         R3 K6 [{"UserName", "CurrentPermission", "IsIneligible"}]
       15 GETUPVAL                         R4 1
       16 MOVE                             R5 R0
       17 GETTABLEKS                       R6 R1 K7 ["Id"]
       19 CALL                             R4 2 1
       20 SETTABLEKS                       R4 R3 K3 ["UserName"]
       22 GETIMPORT                        R4 K9 [select]
       24 LOADN                            R5 2
       25 GETUPVAL                         R6 2
       26 MOVE                             R7 R0
       27 GETTABLEKS                       R8 R1 K7 ["Id"]
       29 CALL                             R6 2 -1
       30 CALL                             R4 -1 1
       31 SETTABLEKS                       R4 R3 K4 ["CurrentPermission"]
       33 LOADB                            R4 0
       34 JUMPIFEQKNIL                     R2 ; [+8]
       36 GETTABLEKS                       R6 R1 K7 ["Id"]
       38 GETTABLE                         R5 R2 R6
       39 JUMPIFEQKB                       R5 FALSE ; [+2]
       41 LOADB                            R4 0 +1
       42 LOADB                            R4 1
       43 SETTABLEKS                       R4 R3 K5 ["IsIneligible"]
       45 RETURN                           R3 1

PROTO_3:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETUPVAL                         R1 1
        3 GETVARARGS                       R2 -1
        4 CALL                             R1 -1 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R1 K1 [{"RemoveAudienceCollaborator"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["RemoveAudienceCollaborator"]
        6 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["COLLAB2850_FixMcTooltips"]
        4 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R1 R1 K6 ["Parent"]
       15 GETIMPORT                        R2 K8 [require]
       17 GETTABLEKS                       R3 R1 K9 ["Packages"]
       19 GETTABLEKS                       R3 R3 K10 ["Roact"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K8 [require]
       24 GETTABLEKS                       R4 R1 K9 ["Packages"]
       26 GETTABLEKS                       R4 R4 K11 ["RoactRodux"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K8 [require]
       31 GETTABLEKS                       R5 R1 K12 ["Bin"]
       33 GETTABLEKS                       R5 R5 K13 ["defineLuaFlags"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K8 [require]
       38 GETTABLEKS                       R6 R1 K9 ["Packages"]
       40 GETTABLEKS                       R6 R6 K14 ["Framework"]
       42 CALL                             R5 1 1
       43 GETTABLEKS                       R5 R5 K15 ["ContextServices"]
       45 GETTABLEKS                       R6 R5 K16 ["withContext"]
       47 GETIMPORT                        R7 K8 [require]
       49 GETTABLEKS                       R8 R1 K17 ["Src"]
       51 GETTABLEKS                       R8 R8 K18 ["Components"]
       53 GETTABLEKS                       R8 R8 K19 ["Thumbnails"]
       55 GETTABLEKS                       R8 R8 K20 ["UserHeadshotThumbnail"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K8 [require]
       60 GETTABLEKS                       R9 R1 K17 ["Src"]
       62 GETTABLEKS                       R9 R9 K18 ["Components"]
       64 GETTABLEKS                       R9 R9 K21 ["CollaboratorItem"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K8 [require]
       69 GETTABLEKS                       R10 R1 K17 ["Src"]
       71 GETTABLEKS                       R10 R10 K22 ["Selectors"]
       73 GETTABLEKS                       R10 R10 K23 ["GetPendingPlayTesterName"]
       75 CALL                             R9 1 1
       76 GETIMPORT                        R10 K8 [require]
       78 GETTABLEKS                       R11 R1 K17 ["Src"]
       80 GETTABLEKS                       R11 R11 K24 ["Thunks"]
       82 GETTABLEKS                       R11 R11 K25 ["RemoveAudienceCollaborator"]
       84 CALL                             R10 1 1
       85 GETIMPORT                        R11 K8 [require]
       87 GETTABLEKS                       R12 R1 K17 ["Src"]
       89 GETTABLEKS                       R12 R12 K22 ["Selectors"]
       91 GETTABLEKS                       R12 R12 K26 ["GetAudienceRole"]
       93 CALL                             R11 1 1
       94 GETIMPORT                        R12 K1 [game]
       96 LOADK                            R14 K27 ["StudioService"]
       97 NAMECALL                         R12 R12 K28 ["GetService"]
       99 CALL                             R12 2 1
      100 GETTABLEKS                       R13 R2 K29 ["PureComponent"]
      102 LOADK                            R15 K30 ["PendingPlayTesterCollaboratorItem"]
      103 NAMECALL                         R13 R13 K31 ["extend"]
      105 CALL                             R13 2 1
      106 DUPCLOSURE                       R14 K32 [PROTO_1]
      107 CAPTURE                          VAL R4
      108 CAPTURE                          VAL R12
      109 CAPTURE                          VAL R2
      110 CAPTURE                          VAL R8
      111 CAPTURE                          VAL R7
      112 CAPTURE                          VAL R0
      113 SETTABLEKS                       R14 R13 K33 ["render"]
      115 MOVE                             R14 R6
      116 DUPTABLE                         R15 K35 [{"Localization"}]
      117 GETTABLEKS                       R16 R5 K34 ["Localization"]
      119 SETTABLEKS                       R16 R15 K34 ["Localization"]
      121 CALL                             R14 1 1
      122 MOVE                             R15 R13
      123 CALL                             R14 1 1
      124 MOVE                             R13 R14
      125 GETTABLEKS                       R14 R3 K36 ["connect"]
      127 DUPCLOSURE                       R15 K37 [PROTO_2]
      128 CAPTURE                          VAL R4
      129 CAPTURE                          VAL R9
      130 CAPTURE                          VAL R11
      131 DUPCLOSURE                       R16 K38 [PROTO_4]
      132 CAPTURE                          VAL R10
      133 CALL                             R14 2 1
      134 MOVE                             R15 R13
      135 CALL                             R14 1 1
      136 MOVE                             R13 R14
      137 RETURN                           R13 1
