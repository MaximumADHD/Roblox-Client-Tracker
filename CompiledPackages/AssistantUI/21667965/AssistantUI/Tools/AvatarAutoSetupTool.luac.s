PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["selectedModelRef"]
        2 JUMPIFEQKNIL                     R2 ; [+26]
        4 GETTABLEKS                       R3 R0 K1 ["instances"]
        6 GETTABLEKS                       R3 R3 K2 ["getInstanceFromUniqueId"]
        8 GETTABLEKS                       R4 R2 K3 ["uniqueId"]
       10 CALL                             R3 1 1
       11 JUMPIFEQKNIL                     R3 ; [+6]
       13 LOADK                            R6 K4 ["Model"]
       14 NAMECALL                         R4 R3 K5 ["IsA"]
       16 CALL                             R4 2 1
       17 JUMPIF                           R4 ; [+10]
       18 GETIMPORT                        R4 K7 [error]
       20 LOADK                            R5 K8 ["could not resolve the picked Model \"%*\"; it may have been deleted."]
       21 GETTABLEKS                       R7 R2 K9 ["name"]
       23 NAMECALL                         R5 R5 K10 ["format"]
       25 CALL                             R5 2 1
       26 LOADN                            R6 0
       27 CALL                             R4 2 0
       28 RETURN                           R3 1
       29 GETTABLEKS                       R3 R1 K11 ["instance_path"]
       31 JUMPIFEQKNIL                     R3 ; [+38]
       33 JUMPIFEQKS                       R3 K12 [""] ; [+36]
       35 GETUPVAL                         R4 0
       36 GETTABLEKS                       R4 R4 K13 ["findInstanceByPath"]
       38 MOVE                             R5 R3
       39 CALL                             R4 1 1
       40 JUMPIFNOTEQKNIL                  R4 ; [+10]
       42 GETIMPORT                        R5 K7 [error]
       44 LOADK                            R6 K14 ["could not resolve instance_path \"%*\"; the Model must be under Workspace, e.g. \"Workspace.Goblin\"."]
       45 MOVE                             R8 R3
       46 NAMECALL                         R6 R6 K10 ["format"]
       48 CALL                             R6 2 1
       49 LOADN                            R7 0
       50 CALL                             R5 2 0
       51 LOADK                            R7 K4 ["Model"]
       52 NAMECALL                         R5 R4 K5 ["IsA"]
       54 CALL                             R5 2 1
       55 JUMPIF                           R5 ; [+13]
       56 GETIMPORT                        R5 K7 [error]
       58 LOADK                            R6 K15 ["requires a Model; instance_path \"%*\" resolved to a %* (\"%*\")."]
       59 MOVE                             R8 R3
       60 GETTABLEKS                       R9 R4 K16 ["ClassName"]
       62 GETTABLEKS                       R10 R4 K17 ["Name"]
       64 NAMECALL                         R6 R6 K10 ["format"]
       66 CALL                             R6 4 1
       67 LOADN                            R7 0
       68 CALL                             R5 2 0
       69 RETURN                           R4 1
       70 GETTABLEKS                       R4 R0 K18 ["selection"]
       72 GETTABLEKS                       R4 R4 K19 ["get"]
       74 CALL                             R4 0 1
       75 LENGTH                           R5 R4
       76 JUMPIFEQKN                       R5 K20 [1] ; [+10]
       78 GETIMPORT                        R5 K7 [error]
       80 LOADK                            R6 K21 ["needs either an instance_path argument or exactly one selected Model; got %* selected."]
       81 LENGTH                           R8 R4
       82 NAMECALL                         R6 R6 K10 ["format"]
       84 CALL                             R6 2 1
       85 LOADN                            R7 0
       86 CALL                             R5 2 0
       87 GETTABLEN                        R5 R4 1
       88 LOADK                            R8 K4 ["Model"]
       89 NAMECALL                         R6 R5 K5 ["IsA"]
       91 CALL                             R6 2 1
       92 JUMPIF                           R6 ; [+12]
       93 GETIMPORT                        R6 K7 [error]
       95 LOADK                            R7 K22 ["requires a Model; selected instance \"%*\" is a %*."]
       96 GETTABLEKS                       R9 R5 K17 ["Name"]
       98 GETTABLEKS                       R10 R5 K16 ["ClassName"]
      100 NAMECALL                         R7 R7 K10 ["format"]
      102 CALL                             R7 3 1
      103 LOADN                            R8 0
      104 CALL                             R6 2 0
      105 RETURN                           R5 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["Field"]
        4 GETTABLEKS                       R3 R3 K1 ["Stage"]
        6 GETTABLEKS                       R4 R0 K2 ["progressName"]
        8 NAMECALL                         R1 R1 K3 ["Set"]
       10 CALL                             R1 3 0
       11 GETTABLEKS                       R2 R0 K4 ["completionEnd"]
       13 GETTABLEKS                       R3 R0 K5 ["completionStart"]
       15 SUB                              R1 R2 R3
       16 GETTABLEKS                       R3 R0 K5 ["completionStart"]
       18 GETTABLEKS                       R5 R0 K6 ["progressPercentage"]
       20 MUL                              R4 R5 R1
       21 ADD                              R2 R3 R4
       22 GETUPVAL                         R4 2
       23 LOADN                            R8 0
       24 LOADN                            R9 1
       25 FASTCALL3                        MATH_CLAMP R2 R8 R9
       27 MOVE                             R7 R2
       28 GETIMPORT                        R6 K10 [math.clamp]
       30 CALL                             R6 3 1
       31 MULK                             R5 R6 K7 [100]
       32 FASTCALL2                        MATH_MAX R4 R5 ; [+3]
       34 GETIMPORT                        R3 K12 [math.max]
       36 CALL                             R3 2 1
       37 SETUPVAL                         R3 2
       38 GETUPVAL                         R3 0
       39 GETUPVAL                         R5 1
       40 GETTABLEKS                       R5 R5 K0 ["Field"]
       42 GETTABLEKS                       R5 R5 K13 ["Percentage"]
       44 GETUPVAL                         R6 2
       45 NAMECALL                         R3 R3 K3 ["Set"]
       47 CALL                             R3 3 0
       48 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["jobId"]
        2 JUMPIFEQKNIL                     R1 ; [+8]
        4 JUMPIFEQKS                       R1 K1 [""] ; [+6]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K2 ["engineJobId"]
        9 JUMPIFEQKNIL                     R2 ; [+2]
       11 RETURN                           R0 0
       12 GETUPVAL                         R2 0
       13 SETTABLEKS                       R1 R2 K2 ["engineJobId"]
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R2 R2 K3 ["cancelRequested"]
       18 JUMPIFNOT                        R2 ; [+9]
       19 GETUPVAL                         R2 1
       20 GETTABLEKS                       R2 R2 K4 ["tools"]
       22 GETTABLEKS                       R2 R2 K5 ["avatarAutoSetup"]
       24 GETTABLEKS                       R2 R2 K6 ["cancelAutoSetup"]
       26 MOVE                             R3 R1
       27 CALL                             R2 1 0
       28 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 1
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K0 ["tools"]
        7 GETTABLEKS                       R1 R1 K1 ["avatarAutoSetup"]
        9 GETTABLEKS                       R1 R1 K2 ["autoSetupAsync"]
       11 DUPTABLE                         R2 K6 [{"model", "onProgress", "onNotification"}]
       12 SETTABLEKS                       R0 R2 K3 ["model"]
       14 NEWCLOSURE                       R3 P0
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          UPVAL U4
       17 CAPTURE                          UPVAL U5
       18 SETTABLEKS                       R3 R2 K4 ["onProgress"]
       20 NEWCLOSURE                       R3 P1
       21 CAPTURE                          UPVAL U6
       22 CAPTURE                          UPVAL U1
       23 SETTABLEKS                       R3 R2 K5 ["onNotification"]
       25 CALL                             R1 1 1
       26 DUPTABLE                         R2 K9 [{"inputModel", "outputModel"}]
       27 SETTABLEKS                       R0 R2 K7 ["inputModel"]
       29 SETTABLEKS                       R1 R2 K8 ["outputModel"]
       31 RETURN                           R2 1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["toolUseId"]
        2 DUPTABLE                         R2 K5 [{["engineJobId"] = , ["cancelRequested"] = False}]
        3 GETUPVAL                         R3 0
        4 SETTABLE                         R2 R3 R1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K6 ["getOrCreate"]
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R4 R4 K7 ["Scope"]
       11 MOVE                             R5 R1
       12 CALL                             R3 2 1
       13 LOADN                            R4 0
       14 GETIMPORT                        R5 K9 [pcall]
       16 NEWCLOSURE                       R6 P0
       17 CAPTURE                          UPVAL U3
       18 CAPTURE                          UPVAL U4
       19 CAPTURE                          VAL R0
       20 CAPTURE                          VAL R3
       21 CAPTURE                          UPVAL U2
       22 CAPTURE                          REF R4
       23 CAPTURE                          VAL R2
       24 CALL                             R5 1 2
       25 GETUPVAL                         R7 0
       26 LOADNIL                          R8
       27 SETTABLE                         R8 R7 R1
       28 NAMECALL                         R7 R3 K10 ["Destroy"]
       30 CALL                             R7 1 0
       31 JUMPIF                           R5 ; [+5]
       32 GETIMPORT                        R7 K12 [error]
       34 MOVE                             R8 R6
       35 LOADN                            R9 0
       36 CALL                             R7 2 0
       37 GETUPVAL                         R7 4
       38 GETTABLEKS                       R7 R7 K13 ["selection"]
       40 GETTABLEKS                       R7 R7 K14 ["set"]
       42 NEWTABLE                         R8 0 1
       44 GETTABLEKS                       R9 R6 K15 ["outputModel"]
       46 SETLIST                          R8 R9 1 [1]
       48 CALL                             R7 1 0
       49 DUPTABLE                         R7 K18 [{"inputModelName", "outputModelName"}]
       50 GETTABLEKS                       R8 R6 K19 ["inputModel"]
       52 GETTABLEKS                       R8 R8 K20 ["Name"]
       54 SETTABLEKS                       R8 R7 K16 ["inputModelName"]
       56 GETTABLEKS                       R8 R6 K15 ["outputModel"]
       58 GETTABLEKS                       R8 R8 K20 ["Name"]
       60 SETTABLEKS                       R8 R7 K17 ["outputModelName"]
       62 CLOSEUPVALS                      R4
       63 RETURN                           R7 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["toolUseId"]
        3 GETTABLE                         R1 R2 R3
        4 JUMPIFNOTEQKNIL                  R1 ; [+3]
        6 LOADNIL                          R2
        7 RETURN                           R2 1
        8 LOADB                            R2 1
        9 SETTABLEKS                       R2 R1 K1 ["cancelRequested"]
       11 GETTABLEKS                       R2 R1 K2 ["engineJobId"]
       13 JUMPIFEQKNIL                     R2 ; [+11]
       15 GETUPVAL                         R2 1
       16 GETTABLEKS                       R2 R2 K3 ["tools"]
       18 GETTABLEKS                       R2 R2 K4 ["avatarAutoSetup"]
       20 GETTABLEKS                       R2 R2 K5 ["cancelAutoSetup"]
       22 GETTABLEKS                       R3 R1 K2 ["engineJobId"]
       24 CALL                             R2 1 0
       25 LOADNIL                          R2
       26 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 RETURN                           R2 1

PROTO_7:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R5 R1 K0 ["toolUseId"]
        3 GETTABLE                         R3 R4 R5
        4 JUMPIFNOTEQKNIL                  R3 ; [+3]
        6 LOADNIL                          R2
        7 RETURN                           R2 1
        8 LOADB                            R4 1
        9 SETTABLEKS                       R4 R3 K1 ["cancelRequested"]
       11 GETTABLEKS                       R4 R3 K2 ["engineJobId"]
       13 JUMPIFEQKNIL                     R4 ; [+11]
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R4 R4 K3 ["tools"]
       18 GETTABLEKS                       R4 R4 K4 ["avatarAutoSetup"]
       20 GETTABLEKS                       R4 R4 K5 ["cancelAutoSetup"]
       22 GETTABLEKS                       R5 R3 K2 ["engineJobId"]
       24 CALL                             R4 1 0
       25 LOADNIL                          R2
       26 RETURN                           R2 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 RETURN                           R2 1

PROTO_10:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R5 R1 K0 ["toolUseId"]
        3 GETTABLE                         R3 R4 R5
        4 JUMPIFNOTEQKNIL                  R3 ; [+3]
        6 LOADNIL                          R2
        7 RETURN                           R2 1
        8 LOADB                            R4 1
        9 SETTABLEKS                       R4 R3 K1 ["cancelRequested"]
       11 GETTABLEKS                       R4 R3 K2 ["engineJobId"]
       13 JUMPIFEQKNIL                     R4 ; [+11]
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R4 R4 K3 ["tools"]
       18 GETTABLEKS                       R4 R4 K4 ["avatarAutoSetup"]
       20 GETTABLEKS                       R4 R4 K5 ["cancelAutoSetup"]
       22 GETTABLEKS                       R5 R3 K2 ["engineJobId"]
       24 CALL                             R4 1 0
       25 LOADNIL                          R2
       26 RETURN                           R2 1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantUseNewDMNetworking"]
        3 JUMPIFNOT                        R0 ; [+10]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R2 2
        6 DUPTABLE                         R3 K2 [{"toolUseId"}]
        7 GETUPVAL                         R4 3
        8 SETTABLEKS                       R4 R3 K1 ["toolUseId"]
       10 NAMECALL                         R0 R0 K3 ["InvokeAsync"]
       12 CALL                             R0 3 0
       13 RETURN                           R0 0
       14 GETUPVAL                         R0 4
       15 LOADNIL                          R1
       16 DUPTABLE                         R2 K2 [{"toolUseId"}]
       17 GETUPVAL                         R3 3
       18 SETTABLEKS                       R3 R2 K1 ["toolUseId"]
       20 CALL                             R0 2 0
       21 RETURN                           R0 0

PROTO_12:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 GETIMPORT                        R0 K1 [pcall]
        4 NEWCLOSURE                       R1 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          UPVAL U5
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 NAMECALL                         R1 R1 K0 ["InvokeAsync"]
        5 CALL                             R1 3 -1
        6 RETURN                           R1 -1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantUseNewDMNetworking"]
        3 JUMPIFNOT                        R0 ; [+12]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["runWithProgressLoop"]
        7 GETUPVAL                         R1 2
        8 GETTABLEKS                       R1 R1 K2 ["sendProgress"]
       10 NEWCLOSURE                       R2 P0
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          UPVAL U4
       13 GETUPVAL                         R3 5
       14 CALL                             R0 3 -1
       15 RETURN                           R0 -1
       16 GETUPVAL                         R0 1
       17 GETTABLEKS                       R0 R0 K1 ["runWithProgressLoop"]
       19 GETUPVAL                         R1 2
       20 GETTABLEKS                       R1 R1 K2 ["sendProgress"]
       22 GETUPVAL                         R2 6
       23 LOADNIL                          R3
       24 GETUPVAL                         R4 5
       25 CALL                             R0 4 -1
       26 RETURN                           R0 -1

PROTO_15:
        0 JUMPIFNOT                        R1 ; [+3]
        1 GETTABLEKS                       R3 R1 K0 ["toolId"]
        3 JUMP                             ; [+1]
        4 LOADNIL                          R3
        5 LOADB                            R5 0
        6 FASTCALL1                        TYPEOF R3 ; [+3]
        7 MOVE                             R7 R3
        8 GETIMPORT                        R6 K2 [typeof]
       10 CALL                             R6 1 1
       11 JUMPIFNOTEQKS                    R6 K3 ["string"] ; [+5]
       13 JUMPIFNOTEQKS                    R3 K4 [""] ; [+2]
       15 LOADB                            R5 0 +1
       16 LOADB                            R5 1
       17 FASTCALL2K                       ASSERT R5 K5 ; [+4]
       19 LOADK                            R6 K5 ["AvatarAutoSetupTool requires meta.toolId"]
       20 GETIMPORT                        R4 K7 [assert]
       22 CALL                             R4 2 0
       23 DUPTABLE                         R4 K11 [{"toolUseId", "instance_path", "selectedModelRef"}]
       24 SETTABLEKS                       R3 R4 K8 ["toolUseId"]
       26 GETTABLEKS                       R5 R0 K9 ["instance_path"]
       28 SETTABLEKS                       R5 R4 K9 ["instance_path"]
       30 GETTABLEKS                       R5 R0 K10 ["selectedModelRef"]
       32 SETTABLEKS                       R5 R4 K10 ["selectedModelRef"]
       34 LOADNIL                          R5
       35 GETUPVAL                         R6 0
       36 GETTABLEKS                       R6 R6 K12 ["FFlagAssistantUseNewDMNetworking"]
       38 JUMPIFNOT                        R6 ; [+6]
       39 GETUPVAL                         R6 1
       40 GETTABLEKS                       R6 R6 K13 ["resolveTargetAsync"]
       42 GETUPVAL                         R7 2
       43 CALL                             R6 1 1
       44 MOVE                             R5 R6
       45 LOADB                            R6 0
       46 JUMPIFNOT                        R2 ; [+22]
       47 GETTABLEKS                       R7 R2 K14 ["signal"]
       49 JUMPIFNOT                        R7 ; [+19]
       50 GETTABLEKS                       R7 R2 K14 ["signal"]
       52 GETTABLEKS                       R7 R7 K15 ["abortSignal"]
       54 JUMPIFNOT                        R7 ; [+14]
       55 GETTABLEKS                       R7 R2 K14 ["signal"]
       57 GETTABLEKS                       R7 R7 K15 ["abortSignal"]
       59 NEWCLOSURE                       R9 P0
       60 CAPTURE                          REF R6
       61 CAPTURE                          UPVAL U0
       62 CAPTURE                          UPVAL U3
       63 CAPTURE                          REF R5
       64 CAPTURE                          VAL R3
       65 CAPTURE                          UPVAL U4
       66 NAMECALL                         R7 R7 K16 ["Once"]
       68 CALL                             R7 2 0
       69 GETIMPORT                        R7 K18 [pcall]
       71 NEWCLOSURE                       R8 P1
       72 CAPTURE                          UPVAL U0
       73 CAPTURE                          UPVAL U5
       74 CAPTURE                          VAL R2
       75 CAPTURE                          UPVAL U6
       76 CAPTURE                          REF R5
       77 CAPTURE                          VAL R4
       78 CAPTURE                          UPVAL U7
       79 CALL                             R7 1 2
       80 JUMPIF                           R7 ; [+25]
       81 JUMPIF                           R6 ; [+5]
       82 GETIMPORT                        R9 K20 [error]
       84 MOVE                             R10 R8
       85 LOADN                            R11 0
       86 CALL                             R9 2 0
       87 GETUPVAL                         R9 8
       88 CALL                             R9 0 1
       89 LOADK                            R11 K21 ["Auto-setup canceled before it finished."]
       90 NAMECALL                         R9 R9 K22 ["addText"]
       92 CALL                             R9 2 1
       93 DUPTABLE                         R11 K25 [{["canceled"] = True}]
       94 NAMECALL                         R9 R9 K26 ["setStructuredContent"]
       96 CALL                             R9 2 1
       97 LOADB                            R11 1
       98 NAMECALL                         R9 R9 K27 ["setError"]
      100 CALL                             R9 2 1
      101 NAMECALL                         R9 R9 K28 ["build"]
      103 CALL                             R9 1 -1
      104 CLOSEUPVALS                      R5
      105 RETURN                           R9 -1
      106 GETUPVAL                         R9 8
      107 CALL                             R9 0 1
      108 LOADK                            R11 K29 ["Auto-setup complete: input \"%*\" -> output \"%*\"."]
      109 GETTABLEKS                       R13 R8 K30 ["inputModelName"]
      111 GETTABLEKS                       R14 R8 K31 ["outputModelName"]
      113 NAMECALL                         R11 R11 K32 ["format"]
      115 CALL                             R11 3 1
      116 NAMECALL                         R9 R9 K22 ["addText"]
      118 CALL                             R9 2 1
      119 NAMECALL                         R9 R9 K28 ["build"]
      121 CALL                             R9 1 -1
      122 CLOSEUPVALS                      R5
      123 RETURN                           R9 -1

PROTO_16:
        0 NEWTABLE                         R1 0 1
        2 DUPTABLE                         R2 K6 [{[1], ["inputType"], ["initialValue"] = , ["required"] = True}]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K7 ["SelectedModelRef"]
        6 SETTABLEKS                       R3 R2 K0 ["name"]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K8 ["Instance"]
       11 SETTABLEKS                       R3 R2 K1 ["inputType"]
       13 SETLIST                          R1 R2 1 [1]
       15 DUPTABLE                         R2 K11 [{"formId", "fields"}]
       16 GETUPVAL                         R3 2
       17 GETTABLEKS                       R3 R3 K9 ["formId"]
       19 SETTABLEKS                       R3 R2 K9 ["formId"]
       21 SETTABLEKS                       R1 R2 K10 ["fields"]
       23 DUPTABLE                         R3 K13 [{"name", "arguments"}]
       24 GETUPVAL                         R4 3
       25 GETTABLEKS                       R4 R4 K14 ["AskInput"]
       27 SETTABLEKS                       R4 R3 K0 ["name"]
       29 SETTABLEKS                       R2 R3 K12 ["arguments"]
       31 RETURN                           R3 1

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["readAskInputValues"]
        3 LENGTH                           R3 R0
        4 GETTABLE                         R2 R0 R3
        5 CALL                             R1 1 1
        6 DUPTABLE                         R2 K4 [{["instance_path"] = , ["selectedModelRef"]}]
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K5 ["SelectedModelRef"]
       10 GETTABLE                         R3 R1 R4
       11 SETTABLEKS                       R3 R2 K3 ["selectedModelRef"]
       13 DUPTABLE                         R3 K8 [{"name", "arguments"}]
       14 GETUPVAL                         R4 2
       15 GETTABLEKS                       R4 R4 K9 ["AvatarAutoSetup"]
       17 SETTABLEKS                       R4 R3 K6 ["name"]
       19 SETTABLEKS                       R2 R3 K7 ["arguments"]
       21 RETURN                           R3 1

PROTO_18:
        0 DUPCLOSURE                       R1 K0 [PROTO_16]
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 DUPCLOSURE                       R2 K1 [PROTO_17]
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          UPVAL U3
        9 NEWTABLE                         R3 0 2
       11 MOVE                             R4 R1
       12 MOVE                             R5 R2
       13 SETLIST                          R3 R4 2 [1]
       15 RETURN                           R3 1

PROTO_19:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["SlashCommandDescriptions"]
        2 LOADK                            R3 K1 ["AvatarAutoSetup"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_20:
        0 DUPTABLE                         R0 K2 [{[1] = True}]
        1 RETURN                           R0 1

PROTO_21:
        0 GETTABLEKS                       R1 R0 K0 ["environment"]
        2 GETTABLEKS                       R2 R0 K1 ["net"]
        4 GETTABLEKS                       R3 R0 K2 ["destroying"]
        6 NEWTABLE                         R4 0 0
        8 NEWCLOSURE                       R5 P0
        9 CAPTURE                          VAL R4
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          VAL R1
       14 NEWCLOSURE                       R6 P1
       15 CAPTURE                          VAL R4
       16 CAPTURE                          VAL R1
       17 LOADNIL                          R7
       18 LOADNIL                          R8
       19 LOADNIL                          R9
       20 LOADNIL                          R10
       21 GETUPVAL                         R11 3
       22 GETTABLEKS                       R11 R11 K3 ["FFlagAssistantUseNewDMNetworking"]
       24 JUMPIFNOT                        R11 ; [+51]
       25 GETUPVAL                         R11 4
       26 GETTABLEKS                       R11 R11 K4 ["invoke"]
       28 MOVE                             R12 R2
       29 LOADK                            R13 K5 ["AvatarAutoSetupTool.runAutoSetup"]
       30 CALL                             R11 2 1
       31 MOVE                             R8 R11
       32 GETUPVAL                         R11 4
       33 GETTABLEKS                       R11 R11 K4 ["invoke"]
       35 MOVE                             R12 R2
       36 LOADK                            R13 K6 ["AvatarAutoSetupTool.cancelAutoSetup"]
       37 CALL                             R11 2 1
       38 MOVE                             R10 R11
       39 GETUPVAL                         R11 5
       40 GETTABLEKS                       R11 R11 K7 ["new"]
       42 CALL                             R11 0 1
       43 NAMECALL                         R12 R2 K8 ["GetIdentity"]
       45 CALL                             R12 1 1
       46 GETUPVAL                         R13 6
       47 GETTABLEKS                       R13 R13 K9 ["Identity"]
       49 GETTABLEKS                       R13 R13 K10 ["Standalone"]
       51 JUMPIFEQ                         R12 R13 ; [+18]
       53 NEWCLOSURE                       R16 P2
       54 CAPTURE                          VAL R5
       55 NAMECALL                         R14 R8 K11 ["Connect"]
       57 CALL                             R14 2 -1
       58 NAMECALL                         R12 R11 K12 ["Add"]
       60 CALL                             R12 -1 0
       61 NEWCLOSURE                       R16 P3
       62 CAPTURE                          VAL R4
       63 CAPTURE                          VAL R1
       64 NAMECALL                         R14 R10 K11 ["Connect"]
       66 CALL                             R14 2 -1
       67 NAMECALL                         R12 R11 K12 ["Add"]
       69 CALL                             R12 -1 0
       70 NEWCLOSURE                       R14 P4
       71 CAPTURE                          VAL R11
       72 NAMECALL                         R12 R3 K13 ["Once"]
       74 CALL                             R12 2 0
       75 JUMP                             ; [+17]
       76 GETTABLEKS                       R11 R0 K14 ["networkingOLD"]
       78 LOADK                            R14 K15 ["AvatarAutoSetupTool_runAutoSetup"]
       79 NEWCLOSURE                       R15 P5
       80 CAPTURE                          VAL R5
       81 NAMECALL                         R12 R11 K16 ["OnHostInvokeAsync"]
       83 CALL                             R12 3 1
       84 MOVE                             R7 R12
       85 LOADK                            R14 K17 ["AvatarAutoSetupTool_cancelAutoSetup"]
       86 NEWCLOSURE                       R15 P6
       87 CAPTURE                          VAL R4
       88 CAPTURE                          VAL R1
       89 NAMECALL                         R12 R11 K16 ["OnHostInvokeAsync"]
       91 CALL                             R12 3 1
       92 MOVE                             R9 R12
       93 NEWCLOSURE                       R11 P7
       94 CAPTURE                          UPVAL U3
       95 CAPTURE                          UPVAL U7
       96 CAPTURE                          VAL R2
       97 CAPTURE                          REF R10
       98 CAPTURE                          REF R9
       99 CAPTURE                          UPVAL U8
      100 CAPTURE                          REF R8
      101 CAPTURE                          REF R7
      102 CAPTURE                          UPVAL U9
      103 GETUPVAL                         R12 10
      104 GETTABLEKS                       R12 R12 K18 ["define"]
      106 CALL                             R12 0 1
      107 GETUPVAL                         R14 11
      108 GETTABLEKS                       R14 R14 K19 ["AvatarAutoSetup"]
      110 NAMECALL                         R12 R12 K20 ["setName"]
      112 CALL                             R12 2 1
      113 LOADK                            R14 K21 ["Convert a static body Model into a fully rigged, animatable R15 avatar\nusing Roblox's avatar auto-setup engine. The engine fits the input mesh to\nthe standard R15 skeleton — generating the body-part segmentation,\nskinning, joints, and attachments an avatar needs to move and to wear\nlayered clothing and accessories. The output is a new avatar Model placed\nnext to the input.\n\nUSAGE: pass the input Model's path via `instance_path`. This tool\nresolves the path itself — do NOT call execute_luau to set\nStudio's Selection as a workaround; just pass the path directly.\nThe input Model must live under Workspace; the `path` field returned by\ninspect_instance works as-is for those (e.g. \"Workspace.Goblin\",\n\"Workspace.MyFolder.CyberneticSuperHero_S1_Mesh\").\n\n`instance_path` is technically optional: if omitted, the tool falls back\nto the user's current Studio selection, which must be exactly one Model.\nThat fallback exists for the case where the user manually selected a\nmodel before invoking the tool. In every other case (the user named the\nmodel, you found it via inspect_instance or search, etc.) pass\ninstance_path so you don't burn an extra tool call on selection.\n\nUse this when the user asks to \"set up\", \"rig\", or \"apply auto-setup\"\nto an avatar. Long-running (usually at least 2-3 minutes)."]
      114 NAMECALL                         R12 R12 K22 ["setDescription"]
      116 CALL                             R12 2 1
      117 LOADK                            R14 K23 ["instance_path"]
      118 DUPTABLE                         R15 K28 [{["type"] = "string", ["description"] = "Full Studio path to the input Model, exactly as inspect_instance returns in its `path` field. The Model must be under Workspace. Examples: \"Workspace.Goblin\", \"Workspace.Characters.Wizard\". Always pass this when you know which Model the user means (i.e. always except when the user has manually pre-selected a Model in the explorer). Do NOT call execute_luau to set Selection and then call this tool with no arguments — that wastes a tool call."}]
      119 NAMECALL                         R12 R12 K29 ["addOptionalArgument"]
      121 CALL                             R12 3 1
      122 MOVE                             R14 R11
      123 NAMECALL                         R12 R12 K30 ["setHandler"]
      125 CALL                             R12 2 1
      126 DUPTABLE                         R14 K38 [{["title"] = "Auto Setup Avatar", ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
      127 NAMECALL                         R12 R12 K39 ["setAnnotations"]
      129 CALL                             R12 2 1
      130 NAMECALL                         R12 R12 K40 ["build"]
      132 CALL                             R12 1 1
      133 DUPCLOSURE                       R13 K41 [PROTO_18]
      134 CAPTURE                          UPVAL U12
      135 CAPTURE                          UPVAL U13
      136 CAPTURE                          UPVAL U14
      137 CAPTURE                          UPVAL U11
      138 CAPTURE                          UPVAL U15
      139 DUPTABLE                         R14 K45 [{"command", "getDescription", "runToolChain"}]
      140 GETUPVAL                         R15 11
      141 GETTABLEKS                       R15 R15 K19 ["AvatarAutoSetup"]
      143 SETTABLEKS                       R15 R14 K42 ["command"]
      145 DUPCLOSURE                       R15 K46 [PROTO_19]
      146 CAPTURE                          UPVAL U16
      147 SETTABLEKS                       R15 R14 K43 ["getDescription"]
      149 SETTABLEKS                       R13 R14 K44 ["runToolChain"]
      151 DUPTABLE                         R15 K51 [{"toolCallOptions", "definition", "slashCommands", "getPreExecuteWarning"}]
      152 DUPTABLE                         R16 K54 [{["resetTimeoutOnProgress"] = True}]
      153 SETTABLEKS                       R16 R15 K47 ["toolCallOptions"]
      155 SETTABLEKS                       R12 R15 K48 ["definition"]
      157 NEWTABLE                         R16 0 1
      159 MOVE                             R17 R14
      160 SETLIST                          R16 R17 1 [1]
      162 SETTABLEKS                       R16 R15 K49 ["slashCommands"]
      164 DUPCLOSURE                       R16 K55 [PROTO_20]
      165 SETTABLEKS                       R16 R15 K50 ["getPreExecuteWarning"]
      167 CLOSEUPVALS                      R7
      168 RETURN                           R15 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["DMNetworking"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["ModelContextProtocol"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Util"]
       23 GETTABLEKS                       R5 R5 K10 ["AskInput"]
       25 GETTABLEKS                       R5 R5 K11 ["AskInputTypes"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K9 ["Util"]
       32 GETTABLEKS                       R6 R6 K12 ["AvatarAutoSetup"]
       34 GETTABLEKS                       R6 R6 K13 ["AvatarAutoSetupChannel"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K6 [require]
       39 GETTABLEKS                       R7 R0 K9 ["Util"]
       41 GETTABLEKS                       R7 R7 K14 ["Bin"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K6 [require]
       46 GETTABLEKS                       R8 R0 K15 ["Guest"]
       48 GETTABLEKS                       R8 R8 K16 ["Environment"]
       50 CALL                             R7 1 1
       51 GETIMPORT                        R8 K6 [require]
       53 GETTABLEKS                       R9 R0 K17 ["Flags"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R10 R0 K9 ["Util"]
       60 GETTABLEKS                       R10 R10 K18 ["InstanceChannel"]
       62 GETTABLEKS                       R10 R10 K18 ["InstanceChannel"]
       64 CALL                             R9 1 1
       65 GETIMPORT                        R10 K6 [require]
       67 GETTABLEKS                       R11 R0 K9 ["Util"]
       69 GETTABLEKS                       R11 R11 K19 ["NetworkingIdentity"]
       71 CALL                             R10 1 1
       72 GETIMPORT                        R11 K6 [require]
       74 GETTABLEKS                       R12 R0 K9 ["Util"]
       76 GETTABLEKS                       R12 R12 K20 ["SlashCommandConfiguration"]
       78 CALL                             R11 1 1
       79 GETIMPORT                        R12 K6 [require]
       81 GETTABLEKS                       R13 R0 K9 ["Util"]
       83 GETTABLEKS                       R13 R13 K21 ["TestAutomationUtils"]
       85 CALL                             R12 1 1
       86 GETIMPORT                        R13 K6 [require]
       88 GETTABLEKS                       R14 R0 K22 ["Tools"]
       90 GETTABLEKS                       R14 R14 K23 ["ToolTypes"]
       92 CALL                             R13 1 1
       93 GETIMPORT                        R14 K6 [require]
       95 GETTABLEKS                       R15 R0 K9 ["Util"]
       97 GETTABLEKS                       R15 R15 K24 ["ToolUtils"]
       99 CALL                             R14 1 1
      100 GETIMPORT                        R15 K6 [require]
      102 GETTABLEKS                       R16 R0 K25 ["Resources"]
      104 GETTABLEKS                       R16 R16 K26 ["Localization"]
      106 GETTABLEKS                       R16 R16 K27 ["Translator"]
      108 CALL                             R15 1 1
      109 GETIMPORT                        R16 K6 [require]
      111 GETTABLEKS                       R17 R0 K28 ["Types"]
      113 CALL                             R16 1 1
      114 GETTABLEKS                       R17 R2 K29 ["Remote"]
      116 GETTABLEKS                       R18 R3 K9 ["Util"]
      118 GETTABLEKS                       R18 R18 K30 ["ToolBuilder"]
      120 GETTABLEKS                       R19 R3 K9 ["Util"]
      122 GETTABLEKS                       R19 R19 K31 ["ToolResult"]
      124 GETTABLEKS                       R20 R13 K32 ["ToolNames"]
      126 GETTABLEKS                       R21 R4 K33 ["INPUT_TYPE"]
      128 GETTABLEKS                       R22 R11 K34 ["Configs"]
      130 GETTABLEKS                       R22 R22 K12 ["AvatarAutoSetup"]
      132 GETTABLEKS                       R23 R22 K35 ["row"]
      134 DUPCLOSURE                       R24 K36 [PROTO_0]
      135 CAPTURE                          VAL R12
      136 DUPCLOSURE                       R25 K37 [PROTO_21]
      137 CAPTURE                          VAL R9
      138 CAPTURE                          VAL R5
      139 CAPTURE                          VAL R24
      140 CAPTURE                          VAL R8
      141 CAPTURE                          VAL R17
      142 CAPTURE                          VAL R6
      143 CAPTURE                          VAL R2
      144 CAPTURE                          VAL R10
      145 CAPTURE                          VAL R14
      146 CAPTURE                          VAL R19
      147 CAPTURE                          VAL R18
      148 CAPTURE                          VAL R20
      149 CAPTURE                          VAL R23
      150 CAPTURE                          VAL R21
      151 CAPTURE                          VAL R22
      152 CAPTURE                          VAL R4
      153 CAPTURE                          VAL R15
      154 RETURN                           R25 1
