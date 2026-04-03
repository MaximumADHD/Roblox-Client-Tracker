PROTO_0:
        0 GETUPVAL                         R5 0
        1 FASTCALL1                        ASSERT R5 ; [+2]
        2 GETIMPORT                        R4 K1 [assert]
        4 CALL                             R4 1 0
        5 LOADNIL                          R4
        6 LOADNIL                          R5
        7 LOADNIL                          R6
        8 LOADNIL                          R7
        9 LOADNIL                          R8
       10 LOADNIL                          R9
       11 GETUPVAL                         R11 1
       12 GETTABLEKS                       R10 R11 K2 ["NotAgeVerified"]
       14 JUMPIFNOTEQ                      R0 R10 ; [+28]
       16 LOADK                            R12 K3 ["Plugin"]
       17 LOADK                            R13 K4 ["VerifyAgeGateDialog.Title"]
       18 NAMECALL                         R10 R3 K5 ["getText"]
       20 CALL                             R10 3 1
       21 MOVE                             R4 R10
       22 LOADK                            R12 K3 ["Plugin"]
       23 LOADK                            R13 K6 ["VerifyAgeGateDialog.Description"]
       24 NAMECALL                         R10 R3 K5 ["getText"]
       26 CALL                             R10 3 1
       27 MOVE                             R5 R10
       28 LOADK                            R8 K7 ["SafetyDialog/Verify"]
       29 LOADK                            R12 K3 ["Plugin"]
       30 LOADK                            R13 K8 ["VerifyAgeGateDialog.PrimaryAction"]
       31 NAMECALL                         R10 R3 K5 ["getText"]
       33 CALL                             R10 3 1
       34 MOVE                             R6 R10
       35 LOADK                            R9 K9 ["SafetyDialog/Cancel"]
       36 LOADK                            R12 K3 ["Plugin"]
       37 LOADK                            R13 K10 ["VerifyAgeGateDialog.SecondaryAction"]
       38 NAMECALL                         R10 R3 K5 ["getText"]
       40 CALL                             R10 3 1
       41 MOVE                             R7 R10
       42 JUMP                             ; [+36]
       43 GETUPVAL                         R11 1
       44 GETTABLEKS                       R10 R11 K11 ["OutsideAgeBucket"]
       46 JUMPIFEQ                         R0 R10 ; [+6]
       48 GETUPVAL                         R11 1
       49 GETTABLEKS                       R10 R11 K12 ["PCBlock"]
       51 JUMPIFNOTEQ                      R0 R10 ; [+27]
       53 LOADK                            R12 K3 ["Plugin"]
       54 LOADK                            R13 K13 ["TrustedConnectionsGateDialog.Title"]
       55 NAMECALL                         R10 R3 K5 ["getText"]
       57 CALL                             R10 3 1
       58 MOVE                             R4 R10
       59 LOADK                            R12 K3 ["Plugin"]
       60 LOADK                            R13 K14 ["TrustedConnectionsGateDialog.Description"]
       61 NAMECALL                         R10 R3 K5 ["getText"]
       63 CALL                             R10 3 1
       64 MOVE                             R5 R10
       65 LOADK                            R8 K15 ["SafetyDialog/AddTrustedConnections"]
       66 LOADK                            R12 K3 ["Plugin"]
       67 LOADK                            R13 K16 ["TrustedConnectionsGateDialog.PrimaryAction"]
       68 NAMECALL                         R10 R3 K5 ["getText"]
       70 CALL                             R10 3 1
       71 MOVE                             R6 R10
       72 LOADK                            R9 K7 ["SafetyDialog/Verify"]
       73 LOADK                            R12 K3 ["Plugin"]
       74 LOADK                            R13 K17 ["TrustedConnectionsGateDialog.SecondaryAction"]
       75 NAMECALL                         R10 R3 K5 ["getText"]
       77 CALL                             R10 3 1
       78 MOVE                             R7 R10
       79 LOADNIL                          R10
       80 JUMPIFNOT                        R4 ; [+45]
       81 DUPTABLE                         R13 K20 [{"PluginId", "ItemId"}]
       82 LOADK                            R14 K21 ["StartPage"]
       83 SETTABLEKS                       R14 R13 K18 ["PluginId"]
       85 LOADK                            R14 K22 ["SafetyDialog"]
       86 SETTABLEKS                       R14 R13 K19 ["ItemId"]
       88 DUPTABLE                         R14 K28 [{"Type", "Title", "Description", "PrimaryButton", "SecondaryButton"}]
       89 LOADK                            R15 K29 ["Critical"]
       90 SETTABLEKS                       R15 R14 K23 ["Type"]
       92 SETTABLEKS                       R4 R14 K24 ["Title"]
       94 SETTABLEKS                       R5 R14 K25 ["Description"]
       96 DUPTABLE                         R15 K32 [{"Uri", "Text"}]
       97 DUPTABLE                         R16 K20 [{"PluginId", "ItemId"}]
       98 LOADK                            R17 K21 ["StartPage"]
       99 SETTABLEKS                       R17 R16 K18 ["PluginId"]
      101 SETTABLEKS                       R8 R16 K19 ["ItemId"]
      103 SETTABLEKS                       R16 R15 K30 ["Uri"]
      105 SETTABLEKS                       R6 R15 K31 ["Text"]
      107 SETTABLEKS                       R15 R14 K26 ["PrimaryButton"]
      109 DUPTABLE                         R15 K32 [{"Uri", "Text"}]
      110 DUPTABLE                         R16 K20 [{"PluginId", "ItemId"}]
      111 LOADK                            R17 K21 ["StartPage"]
      112 SETTABLEKS                       R17 R16 K18 ["PluginId"]
      114 SETTABLEKS                       R9 R16 K19 ["ItemId"]
      116 SETTABLEKS                       R16 R15 K30 ["Uri"]
      118 SETTABLEKS                       R7 R15 K31 ["Text"]
      120 SETTABLEKS                       R15 R14 K27 ["SecondaryButton"]
      122 NAMECALL                         R11 R2 K33 ["ShowDialogAsync"]
      124 CALL                             R11 3 1
      125 MOVE                             R10 R11
      126 JUMPIFNOT                        R10 ; [+33]
      127 GETTABLEKS                       R11 R10 K34 ["SelectedButtonUri"]
      129 JUMPIFNOT                        R11 ; [+30]
      130 GETTABLEKS                       R12 R10 K34 ["SelectedButtonUri"]
      132 GETTABLEKS                       R11 R12 K19 ["ItemId"]
      134 JUMPIFNOT                        R11 ; [+25]
      135 GETTABLEKS                       R12 R10 K34 ["SelectedButtonUri"]
      137 GETTABLEKS                       R11 R12 K19 ["ItemId"]
      139 JUMPIFNOTEQKS                    R11 K7 ["SafetyDialog/Verify"] ; [+7]
      141 GETUPVAL                         R11 2
      142 GETUPVAL                         R13 3
      143 NAMECALL                         R11 R11 K35 ["openLink"]
      145 CALL                             R11 2 0
      146 RETURN                           R0 0
      147 GETUPVAL                         R11 4
      148 CALL                             R11 0 1
      149 JUMPIFNOT                        R11 ; [+10]
      150 GETTABLEKS                       R12 R10 K34 ["SelectedButtonUri"]
      152 GETTABLEKS                       R11 R12 K19 ["ItemId"]
      154 JUMPIFNOTEQKS                    R11 K15 ["SafetyDialog/AddTrustedConnections"] ; [+5]
      156 GETUPVAL                         R13 5
      157 NAMECALL                         R11 R1 K36 ["ActivateAsync"]
      159 CALL                             R11 2 0
      160 RETURN                           R0 0

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
       20 GETTABLEKS                       R6 R0 K6 ["Src"]
       22 GETTABLEKS                       R5 R6 K10 ["SharedFlags"]
       24 GETTABLEKS                       R4 R5 K11 ["getFStringLuaStartPageVerifyAgeLink"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K5 [require]
       29 GETTABLEKS                       R7 R0 K6 ["Src"]
       31 GETTABLEKS                       R6 R7 K12 ["Models"]
       33 GETTABLEKS                       R5 R6 K13 ["CanCollaborateError"]
       35 CALL                             R4 1 1
       36 MOVE                             R5 R3
       37 CALL                             R5 0 1
       38 GETIMPORT                        R6 K5 [require]
       40 GETTABLEKS                       R9 R0 K6 ["Src"]
       42 GETTABLEKS                       R8 R9 K10 ["SharedFlags"]
       44 GETTABLEKS                       R7 R8 K14 ["getFFlagEnableTeamCreateCollaborators"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R10 R0 K6 ["Src"]
       51 GETTABLEKS                       R9 R10 K10 ["SharedFlags"]
       53 GETTABLEKS                       R8 R9 K15 ["getFFlagLuaStartPageTCAgeGatingCheck"]
       55 CALL                             R7 1 1
       56 CALL                             R7 0 1
       57 DUPTABLE                         R8 K20 [{"DataModel", "PluginId", "Category", "ItemId"}]
       58 LOADK                            R9 K21 ["Standalone"]
       59 SETTABLEKS                       R9 R8 K16 ["DataModel"]
       61 LOADK                            R9 K22 ["TeamCreateCollaborators"]
       62 SETTABLEKS                       R9 R8 K17 ["PluginId"]
       64 LOADK                            R9 K23 ["Actions"]
       65 SETTABLEKS                       R9 R8 K18 ["Category"]
       67 LOADK                            R9 K24 ["Toggle"]
       68 SETTABLEKS                       R9 R8 K19 ["ItemId"]
       70 DUPCLOSURE                       R9 K25 [PROTO_0]
       71 CAPTURE                          VAL R7
       72 CAPTURE                          VAL R4
       73 CAPTURE                          VAL R2
       74 CAPTURE                          VAL R5
       75 CAPTURE                          VAL R6
       76 CAPTURE                          VAL R8
       77 RETURN                           R9 1
