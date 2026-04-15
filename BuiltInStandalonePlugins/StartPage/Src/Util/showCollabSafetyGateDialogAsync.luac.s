PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["UserId"]
        2 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R6 0
        1 FASTCALL1                        ASSERT R6 ; [+2]
        2 GETIMPORT                        R5 K1 [assert]
        4 CALL                             R5 1 0
        5 JUMPIFNOT                        R0 ; [+3]
        6 GETTABLEKS                       R5 R0 K2 ["Error"]
        8 JUMPIF                           R5 ; [+1]
        9 RETURN                           R0 0
       10 GETTABLEKS                       R5 R0 K2 ["Error"]
       12 LOADNIL                          R6
       13 LOADNIL                          R7
       14 LOADNIL                          R8
       15 LOADNIL                          R9
       16 LOADNIL                          R10
       17 LOADNIL                          R11
       18 GETUPVAL                         R13 1
       19 GETTABLEKS                       R12 R13 K3 ["NotAgeVerified"]
       21 JUMPIFNOTEQ                      R5 R12 ; [+28]
       23 LOADK                            R14 K4 ["Plugin"]
       24 LOADK                            R15 K5 ["VerifyAgeGateDialog.Title"]
       25 NAMECALL                         R12 R4 K6 ["getText"]
       27 CALL                             R12 3 1
       28 MOVE                             R6 R12
       29 LOADK                            R14 K4 ["Plugin"]
       30 LOADK                            R15 K7 ["VerifyAgeGateDialog.Description"]
       31 NAMECALL                         R12 R4 K6 ["getText"]
       33 CALL                             R12 3 1
       34 MOVE                             R7 R12
       35 LOADK                            R10 K8 ["SafetyDialog/Verify"]
       36 LOADK                            R14 K4 ["Plugin"]
       37 LOADK                            R15 K9 ["VerifyAgeGateDialog.PrimaryAction"]
       38 NAMECALL                         R12 R4 K6 ["getText"]
       40 CALL                             R12 3 1
       41 MOVE                             R8 R12
       42 LOADK                            R11 K10 ["SafetyDialog/Cancel"]
       43 LOADK                            R14 K4 ["Plugin"]
       44 LOADK                            R15 K11 ["VerifyAgeGateDialog.SecondaryAction"]
       45 NAMECALL                         R12 R4 K6 ["getText"]
       47 CALL                             R12 3 1
       48 MOVE                             R9 R12
       49 JUMP                             ; [+36]
       50 GETUPVAL                         R13 1
       51 GETTABLEKS                       R12 R13 K12 ["OutsideAgeBucket"]
       53 JUMPIFEQ                         R5 R12 ; [+6]
       55 GETUPVAL                         R13 1
       56 GETTABLEKS                       R12 R13 K13 ["PCBlock"]
       58 JUMPIFNOTEQ                      R5 R12 ; [+27]
       60 LOADK                            R14 K4 ["Plugin"]
       61 LOADK                            R15 K14 ["TrustedConnectionsGateDialog.Title"]
       62 NAMECALL                         R12 R4 K6 ["getText"]
       64 CALL                             R12 3 1
       65 MOVE                             R6 R12
       66 LOADK                            R14 K4 ["Plugin"]
       67 LOADK                            R15 K15 ["TrustedConnectionsGateDialog.Description"]
       68 NAMECALL                         R12 R4 K6 ["getText"]
       70 CALL                             R12 3 1
       71 MOVE                             R7 R12
       72 LOADK                            R10 K16 ["SafetyDialog/AddTrustedConnections"]
       73 LOADK                            R14 K4 ["Plugin"]
       74 LOADK                            R15 K17 ["TrustedConnectionsGateDialog.PrimaryAction"]
       75 NAMECALL                         R12 R4 K6 ["getText"]
       77 CALL                             R12 3 1
       78 MOVE                             R8 R12
       79 LOADK                            R11 K8 ["SafetyDialog/Verify"]
       80 LOADK                            R14 K4 ["Plugin"]
       81 LOADK                            R15 K18 ["TrustedConnectionsGateDialog.SecondaryAction"]
       82 NAMECALL                         R12 R4 K6 ["getText"]
       84 CALL                             R12 3 1
       85 MOVE                             R9 R12
       86 LOADNIL                          R12
       87 JUMPIFNOT                        R6 ; [+45]
       88 DUPTABLE                         R15 K21 [{"PluginId", "ItemId"}]
       89 LOADK                            R16 K22 ["StartPage"]
       90 SETTABLEKS                       R16 R15 K19 ["PluginId"]
       92 LOADK                            R16 K23 ["SafetyDialog"]
       93 SETTABLEKS                       R16 R15 K20 ["ItemId"]
       95 DUPTABLE                         R16 K29 [{"Type", "Title", "Description", "PrimaryButton", "SecondaryButton"}]
       96 LOADK                            R17 K30 ["Critical"]
       97 SETTABLEKS                       R17 R16 K24 ["Type"]
       99 SETTABLEKS                       R6 R16 K25 ["Title"]
      101 SETTABLEKS                       R7 R16 K26 ["Description"]
      103 DUPTABLE                         R17 K33 [{"Uri", "Text"}]
      104 DUPTABLE                         R18 K21 [{"PluginId", "ItemId"}]
      105 LOADK                            R19 K22 ["StartPage"]
      106 SETTABLEKS                       R19 R18 K19 ["PluginId"]
      108 SETTABLEKS                       R10 R18 K20 ["ItemId"]
      110 SETTABLEKS                       R18 R17 K31 ["Uri"]
      112 SETTABLEKS                       R8 R17 K32 ["Text"]
      114 SETTABLEKS                       R17 R16 K27 ["PrimaryButton"]
      116 DUPTABLE                         R17 K33 [{"Uri", "Text"}]
      117 DUPTABLE                         R18 K21 [{"PluginId", "ItemId"}]
      118 LOADK                            R19 K22 ["StartPage"]
      119 SETTABLEKS                       R19 R18 K19 ["PluginId"]
      121 SETTABLEKS                       R11 R18 K20 ["ItemId"]
      123 SETTABLEKS                       R18 R17 K31 ["Uri"]
      125 SETTABLEKS                       R9 R17 K32 ["Text"]
      127 SETTABLEKS                       R17 R16 K28 ["SecondaryButton"]
      129 NAMECALL                         R13 R3 K34 ["ShowDialogAsync"]
      131 CALL                             R13 3 1
      132 MOVE                             R12 R13
      133 JUMPIFNOT                        R12 ; [+47]
      134 GETTABLEKS                       R13 R12 K35 ["SelectedButtonUri"]
      136 JUMPIFNOT                        R13 ; [+44]
      137 GETTABLEKS                       R14 R12 K35 ["SelectedButtonUri"]
      139 GETTABLEKS                       R13 R14 K20 ["ItemId"]
      141 JUMPIFNOT                        R13 ; [+39]
      142 GETTABLEKS                       R14 R12 K35 ["SelectedButtonUri"]
      144 GETTABLEKS                       R13 R14 K20 ["ItemId"]
      146 JUMPIFNOTEQKS                    R13 K8 ["SafetyDialog/Verify"] ; [+7]
      148 GETUPVAL                         R13 2
      149 GETUPVAL                         R15 3
      150 NAMECALL                         R13 R13 K36 ["openLink"]
      152 CALL                             R13 2 0
      153 RETURN                           R0 0
      154 GETUPVAL                         R13 4
      155 CALL                             R13 0 1
      156 JUMPIFNOT                        R13 ; [+24]
      157 GETTABLEKS                       R14 R12 K35 ["SelectedButtonUri"]
      159 GETTABLEKS                       R13 R14 K20 ["ItemId"]
      161 JUMPIFNOTEQKS                    R13 K16 ["SafetyDialog/AddTrustedConnections"] ; [+19]
      163 GETUPVAL                         R14 5
      164 GETTABLEKS                       R13 R14 K37 ["map"]
      166 GETTABLEKS                       R14 R0 K38 ["RequiresTrustedConnection"]
      168 DUPCLOSURE                       R15 K39 [PROTO_0]
      169 CALL                             R13 2 1
      170 GETUPVAL                         R14 6
      171 LOADK                            R16 K40 ["CanCollaborateResponse"]
      172 MOVE                             R17 R13
      173 MOVE                             R18 R1
      174 NAMECALL                         R14 R14 K41 ["Fire"]
      176 CALL                             R14 4 0
      177 GETUPVAL                         R16 7
      178 NAMECALL                         R14 R2 K42 ["ActivateAsync"]
      180 CALL                             R14 2 0
      181 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Util"]
       13 GETTABLEKS                       R2 R3 K8 ["Services"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K9 ["StartPageManager"]
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R5 R0 K10 ["Packages"]
       22 GETTABLEKS                       R4 R5 K11 ["Dash"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R6 R0 K10 ["Packages"]
       29 GETTABLEKS                       R5 R6 K12 ["Framework"]
       31 CALL                             R4 1 1
       32 GETTABLEKS                       R6 R4 K7 ["Util"]
       34 GETTABLEKS                       R5 R6 K13 ["CrossPluginCommunication"]
       36 GETTABLEKS                       R6 R5 K14 ["new"]
       38 LOADK                            R7 K15 ["StartPageTeamCreateCollaborators"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K5 [require]
       42 GETTABLEKS                       R10 R0 K6 ["Src"]
       44 GETTABLEKS                       R9 R10 K16 ["SharedFlags"]
       46 GETTABLEKS                       R8 R9 K17 ["getFStringLuaStartPageVerifyAgeLink"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K5 [require]
       51 GETTABLEKS                       R11 R0 K6 ["Src"]
       53 GETTABLEKS                       R10 R11 K18 ["Models"]
       55 GETTABLEKS                       R9 R10 K19 ["CanCollaborateError"]
       57 CALL                             R8 1 1
       58 GETIMPORT                        R9 K5 [require]
       60 GETTABLEKS                       R12 R0 K6 ["Src"]
       62 GETTABLEKS                       R11 R12 K18 ["Models"]
       64 GETTABLEKS                       R10 R11 K20 ["CanCollaborateResponse"]
       66 CALL                             R9 1 1
       67 MOVE                             R10 R7
       68 CALL                             R10 0 1
       69 GETIMPORT                        R11 K5 [require]
       71 GETTABLEKS                       R14 R0 K6 ["Src"]
       73 GETTABLEKS                       R13 R14 K16 ["SharedFlags"]
       75 GETTABLEKS                       R12 R13 K21 ["getFFlagEnableTeamCreateCollaborators"]
       77 CALL                             R11 1 1
       78 GETIMPORT                        R12 K5 [require]
       80 GETTABLEKS                       R15 R0 K6 ["Src"]
       82 GETTABLEKS                       R14 R15 K16 ["SharedFlags"]
       84 GETTABLEKS                       R13 R14 K22 ["getFFlagLuaStartPageTCAgeGatingCheck"]
       86 CALL                             R12 1 1
       87 CALL                             R12 0 1
       88 DUPTABLE                         R13 K27 [{"DataModel", "PluginId", "Category", "ItemId"}]
       89 LOADK                            R14 K28 ["Standalone"]
       90 SETTABLEKS                       R14 R13 K23 ["DataModel"]
       92 LOADK                            R14 K29 ["TeamCreateCollaborators"]
       93 SETTABLEKS                       R14 R13 K24 ["PluginId"]
       95 LOADK                            R14 K30 ["Actions"]
       96 SETTABLEKS                       R14 R13 K25 ["Category"]
       98 LOADK                            R14 K31 ["Toggle"]
       99 SETTABLEKS                       R14 R13 K26 ["ItemId"]
      101 DUPCLOSURE                       R14 K32 [PROTO_1]
      102 CAPTURE                          VAL R12
      103 CAPTURE                          VAL R8
      104 CAPTURE                          VAL R2
      105 CAPTURE                          VAL R10
      106 CAPTURE                          VAL R11
      107 CAPTURE                          VAL R3
      108 CAPTURE                          VAL R6
      109 CAPTURE                          VAL R13
      110 RETURN                           R14 1
