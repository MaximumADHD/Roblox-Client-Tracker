PROTO_0:
        0 GETUPVAL                         R7 0
        1 FASTCALL1                        ASSERT R7 ; [+2]
        2 GETIMPORT                        R6 K1 [assert]
        4 CALL                             R6 1 0
        5 JUMPIFNOT                        R0 ; [+3]
        6 GETTABLEKS                       R6 R0 K2 ["Error"]
        8 JUMPIF                           R6 ; [+1]
        9 RETURN                           R0 0
       10 GETTABLEKS                       R6 R0 K2 ["Error"]
       12 LOADNIL                          R7
       13 LOADNIL                          R8
       14 LOADNIL                          R9
       15 LOADNIL                          R10
       16 LOADNIL                          R11
       17 LOADNIL                          R12
       18 GETUPVAL                         R13 1
       19 GETTABLEKS                       R13 R13 K3 ["NotAgeVerified"]
       21 JUMPIFNOTEQ                      R6 R13 ; [+28]
       23 LOADK                            R15 K4 ["Plugin"]
       24 LOADK                            R16 K5 ["VerifyAgeGateDialog.Title"]
       25 NAMECALL                         R13 R5 K6 ["getText"]
       27 CALL                             R13 3 1
       28 MOVE                             R7 R13
       29 LOADK                            R15 K4 ["Plugin"]
       30 LOADK                            R16 K7 ["VerifyAgeGateDialog.Description"]
       31 NAMECALL                         R13 R5 K6 ["getText"]
       33 CALL                             R13 3 1
       34 MOVE                             R8 R13
       35 LOADK                            R11 K8 ["SafetyDialog/Verify"]
       36 LOADK                            R15 K4 ["Plugin"]
       37 LOADK                            R16 K9 ["VerifyAgeGateDialog.PrimaryAction"]
       38 NAMECALL                         R13 R5 K6 ["getText"]
       40 CALL                             R13 3 1
       41 MOVE                             R9 R13
       42 LOADK                            R12 K10 ["SafetyDialog/Cancel"]
       43 LOADK                            R15 K4 ["Plugin"]
       44 LOADK                            R16 K11 ["VerifyAgeGateDialog.SecondaryAction"]
       45 NAMECALL                         R13 R5 K6 ["getText"]
       47 CALL                             R13 3 1
       48 MOVE                             R10 R13
       49 JUMP                             ; [+36]
       50 GETUPVAL                         R13 1
       51 GETTABLEKS                       R13 R13 K12 ["OutsideAgeBucket"]
       53 JUMPIFEQ                         R6 R13 ; [+6]
       55 GETUPVAL                         R13 1
       56 GETTABLEKS                       R13 R13 K13 ["PCBlock"]
       58 JUMPIFNOTEQ                      R6 R13 ; [+27]
       60 LOADK                            R15 K4 ["Plugin"]
       61 LOADK                            R16 K14 ["TrustedConnectionsGateDialog.Title"]
       62 NAMECALL                         R13 R5 K6 ["getText"]
       64 CALL                             R13 3 1
       65 MOVE                             R7 R13
       66 LOADK                            R15 K4 ["Plugin"]
       67 LOADK                            R16 K15 ["TrustedConnectionsGateDialog.Description"]
       68 NAMECALL                         R13 R5 K6 ["getText"]
       70 CALL                             R13 3 1
       71 MOVE                             R8 R13
       72 LOADK                            R11 K16 ["SafetyDialog/AddTrustedConnections"]
       73 LOADK                            R15 K4 ["Plugin"]
       74 LOADK                            R16 K17 ["TrustedConnectionsGateDialog.PrimaryAction"]
       75 NAMECALL                         R13 R5 K6 ["getText"]
       77 CALL                             R13 3 1
       78 MOVE                             R9 R13
       79 LOADK                            R12 K8 ["SafetyDialog/Verify"]
       80 LOADK                            R15 K4 ["Plugin"]
       81 LOADK                            R16 K18 ["TrustedConnectionsGateDialog.SecondaryAction"]
       82 NAMECALL                         R13 R5 K6 ["getText"]
       84 CALL                             R13 3 1
       85 MOVE                             R10 R13
       86 LOADNIL                          R13
       87 JUMPIFNOT                        R7 ; [+45]
       88 DUPTABLE                         R16 K21 [{"PluginId", "ItemId"}]
       89 LOADK                            R17 K22 ["StartPage"]
       90 SETTABLEKS                       R17 R16 K19 ["PluginId"]
       92 LOADK                            R17 K23 ["SafetyDialog"]
       93 SETTABLEKS                       R17 R16 K20 ["ItemId"]
       95 DUPTABLE                         R17 K29 [{"Type", "Title", "Description", "PrimaryButton", "SecondaryButton"}]
       96 LOADK                            R18 K30 ["Critical"]
       97 SETTABLEKS                       R18 R17 K24 ["Type"]
       99 SETTABLEKS                       R7 R17 K25 ["Title"]
      101 SETTABLEKS                       R8 R17 K26 ["Description"]
      103 DUPTABLE                         R18 K33 [{"Uri", "Text"}]
      104 DUPTABLE                         R19 K21 [{"PluginId", "ItemId"}]
      105 LOADK                            R20 K22 ["StartPage"]
      106 SETTABLEKS                       R20 R19 K19 ["PluginId"]
      108 SETTABLEKS                       R11 R19 K20 ["ItemId"]
      110 SETTABLEKS                       R19 R18 K31 ["Uri"]
      112 SETTABLEKS                       R9 R18 K32 ["Text"]
      114 SETTABLEKS                       R18 R17 K27 ["PrimaryButton"]
      116 DUPTABLE                         R18 K33 [{"Uri", "Text"}]
      117 DUPTABLE                         R19 K21 [{"PluginId", "ItemId"}]
      118 LOADK                            R20 K22 ["StartPage"]
      119 SETTABLEKS                       R20 R19 K19 ["PluginId"]
      121 SETTABLEKS                       R12 R19 K20 ["ItemId"]
      123 SETTABLEKS                       R19 R18 K31 ["Uri"]
      125 SETTABLEKS                       R10 R18 K32 ["Text"]
      127 SETTABLEKS                       R18 R17 K28 ["SecondaryButton"]
      129 NAMECALL                         R14 R4 K34 ["ShowDialogAsync"]
      131 CALL                             R14 3 1
      132 MOVE                             R13 R14
      133 JUMPIFNOT                        R13 ; [+19]
      134 GETTABLEKS                       R14 R13 K35 ["SelectedButtonUri"]
      136 JUMPIFNOT                        R14 ; [+16]
      137 GETTABLEKS                       R14 R13 K35 ["SelectedButtonUri"]
      139 GETTABLEKS                       R14 R14 K20 ["ItemId"]
      141 JUMPIFNOT                        R14 ; [+11]
      142 GETTABLEKS                       R14 R13 K35 ["SelectedButtonUri"]
      144 GETTABLEKS                       R14 R14 K20 ["ItemId"]
      146 JUMPIFNOTEQKS                    R14 K8 ["SafetyDialog/Verify"] ; [+6]
      148 GETUPVAL                         R14 2
      149 GETUPVAL                         R16 3
      150 NAMECALL                         R14 R14 K36 ["openLink"]
      152 CALL                             R14 2 0
      153 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["Services"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K9 ["StartPageManager"]
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R0 K6 ["Src"]
       22 GETTABLEKS                       R4 R4 K10 ["SharedFlags"]
       24 GETTABLEKS                       R4 R4 K11 ["getFStringLuaStartPageVerifyAgeLink"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K5 [require]
       29 GETTABLEKS                       R5 R0 K6 ["Src"]
       31 GETTABLEKS                       R5 R5 K12 ["Models"]
       33 GETTABLEKS                       R5 R5 K13 ["CanCollaborateError"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K5 [require]
       38 GETTABLEKS                       R6 R0 K6 ["Src"]
       40 GETTABLEKS                       R6 R6 K12 ["Models"]
       42 GETTABLEKS                       R6 R6 K14 ["CanCollaborateResponse"]
       44 CALL                             R5 1 1
       45 MOVE                             R6 R3
       46 CALL                             R6 0 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R8 R0 K6 ["Src"]
       51 GETTABLEKS                       R8 R8 K10 ["SharedFlags"]
       53 GETTABLEKS                       R8 R8 K15 ["getFFlagLuaStartPageTCAgeGatingCheck"]
       55 CALL                             R7 1 1
       56 CALL                             R7 0 1
       57 DUPCLOSURE                       R8 K16 [PROTO_0]
       58 CAPTURE                          VAL R7
       59 CAPTURE                          VAL R4
       60 CAPTURE                          VAL R2
       61 CAPTURE                          VAL R6
       62 RETURN                           R8 1
