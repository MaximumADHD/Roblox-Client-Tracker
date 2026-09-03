PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["table"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       11 LOADK                            R3 K3 ["Tool arguments must be a table"]
       12 GETIMPORT                        R1 K5 [assert]
       14 CALL                             R1 2 0
       15 GETTABLEKS                       R1 R0 K6 ["textPrompt"]
       17 FASTCALL1                        TYPEOF R1 ; [+3]
       18 MOVE                             R5 R1
       19 GETIMPORT                        R4 K1 [typeof]
       21 CALL                             R4 1 1
       22 JUMPIFEQKS                       R4 K7 ["string"] ; [+2]
       24 LOADB                            R3 0 +1
       25 LOADB                            R3 1
       26 FASTCALL2K                       ASSERT R3 K8 ; [+4]
       28 LOADK                            R4 K8 ["textPrompt must be a string"]
       29 GETIMPORT                        R2 K5 [assert]
       31 CALL                             R2 2 0
       32 GETTABLEKS                       R2 R0 K9 ["selectedRigRef"]
       34 GETTABLEKS                       R3 R0 K10 ["duration"]
       36 JUMPIFEQKNIL                     R3 ; [+16]
       38 FASTCALL1                        TYPEOF R3 ; [+3]
       39 MOVE                             R7 R3
       40 GETIMPORT                        R6 K1 [typeof]
       42 CALL                             R6 1 1
       43 JUMPIFEQKS                       R6 K11 ["number"] ; [+2]
       45 LOADB                            R5 0 +1
       46 LOADB                            R5 1
       47 FASTCALL2K                       ASSERT R5 K12 ; [+4]
       49 LOADK                            R6 K12 ["duration must be a number"]
       50 GETIMPORT                        R4 K5 [assert]
       52 CALL                             R4 2 0
       53 GETTABLEKS                       R4 R0 K13 ["loop"]
       55 JUMPIFEQKNIL                     R4 ; [+16]
       57 FASTCALL1                        TYPEOF R4 ; [+3]
       58 MOVE                             R8 R4
       59 GETIMPORT                        R7 K1 [typeof]
       61 CALL                             R7 1 1
       62 JUMPIFEQKS                       R7 K14 ["boolean"] ; [+2]
       64 LOADB                            R6 0 +1
       65 LOADB                            R6 1
       66 FASTCALL2K                       ASSERT R6 K15 ; [+4]
       68 LOADK                            R7 K15 ["loop must be a boolean"]
       69 GETIMPORT                        R5 K5 [assert]
       71 CALL                             R5 2 0
       72 DUPTABLE                         R5 K17 [{"textPrompt", "selectedRigRef", "duration", "loop", "isFromFormUI"}]
       73 SETTABLEKS                       R1 R5 K6 ["textPrompt"]
       75 SETTABLEKS                       R2 R5 K9 ["selectedRigRef"]
       77 SETTABLEKS                       R3 R5 K10 ["duration"]
       79 SETTABLEKS                       R4 R5 K13 ["loop"]
       81 GETTABLEKS                       R6 R0 K16 ["isFromFormUI"]
       83 SETTABLEKS                       R6 R5 K16 ["isFromFormUI"]
       85 RETURN                           R5 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R3 R2 K0 ["textPrompt"]
        5 JUMPIFNOTEQKS                    R3 K1 [""] ; [+10]
        7 DUPTABLE                         R4 K3 [{"failureReason"}]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K4 ["FailureReasons"]
       11 GETTABLEKS                       R5 R5 K5 ["NoPromptProvided"]
       13 SETTABLEKS                       R5 R4 K2 ["failureReason"]
       15 RETURN                           R4 1
       16 GETUPVAL                         R4 2
       17 GETTABLEKS                       R4 R4 K6 ["bridges"]
       19 GETTABLEKS                       R4 R4 K7 ["AnimationGen"]
       21 GETTABLEKS                       R4 R4 K8 ["createGuestContext"]
       23 LOADNIL                          R5
       24 LOADNIL                          R6
       25 CALL                             R4 2 1
       26 GETTABLEKS                       R4 R4 K9 ["bridge"]
       28 LOADNIL                          R5
       29 GETTABLEKS                       R6 R2 K10 ["isFromFormUI"]
       31 JUMPIFNOT                        R6 ; [+3]
       32 GETTABLEKS                       R5 R2 K11 ["selectedRigRef"]
       34 JUMP                             ; [+4]
       35 GETTABLEKS                       R6 R4 K12 ["getSelectedRigRef"]
       37 CALL                             R6 0 1
       38 MOVE                             R5 R6
       39 GETTABLEKS                       R6 R4 K13 ["generateAndSaveAnimationAsync"]
       41 DUPTABLE                         R7 K19 [{"toolUseId", "prompt", "rigUniqueId", "duration", "loop"}]
       42 SETTABLEKS                       R1 R7 K14 ["toolUseId"]
       44 GETTABLEKS                       R8 R2 K0 ["textPrompt"]
       46 SETTABLEKS                       R8 R7 K15 ["prompt"]
       48 MOVE                             R8 R5
       49 JUMPIFNOT                        R8 ; [+2]
       50 GETTABLEKS                       R8 R5 K20 ["uniqueId"]
       52 SETTABLEKS                       R8 R7 K16 ["rigUniqueId"]
       54 GETTABLEKS                       R8 R2 K17 ["duration"]
       56 SETTABLEKS                       R8 R7 K17 ["duration"]
       58 GETTABLEKS                       R8 R2 K18 ["loop"]
       60 SETTABLEKS                       R8 R7 K18 ["loop"]
       62 CALL                             R6 1 1
       63 GETTABLEKS                       R7 R6 K2 ["failureReason"]
       65 JUMPIFEQKNIL                     R7 ; [+7]
       67 DUPTABLE                         R7 K3 [{"failureReason"}]
       68 GETTABLEKS                       R8 R6 K2 ["failureReason"]
       70 SETTABLEKS                       R8 R7 K2 ["failureReason"]
       72 RETURN                           R7 1
       73 GETTABLEKS                       R8 R6 K21 ["generationId"]
       75 JUMPIFEQKNIL                     R8 ; [+8]
       77 GETUPVAL                         R7 1
       78 GETTABLEKS                       R7 R7 K22 ["getLinkTag"]
       80 GETTABLEKS                       R8 R6 K21 ["generationId"]
       82 CALL                             R7 1 1
       83 JUMP                             ; [+1]
       84 LOADNIL                          R7
       85 DUPTABLE                         R8 K25 [{"tag", "generationId", "generationName", "duration"}]
       86 SETTABLEKS                       R7 R8 K23 ["tag"]
       88 GETTABLEKS                       R9 R6 K21 ["generationId"]
       90 SETTABLEKS                       R9 R8 K21 ["generationId"]
       92 GETTABLEKS                       R9 R6 K26 ["name"]
       94 SETTABLEKS                       R9 R8 K24 ["generationName"]
       96 GETTABLEKS                       R9 R6 K17 ["duration"]
       98 SETTABLEKS                       R9 R8 K17 ["duration"]
      100 RETURN                           R8 1

PROTO_2:
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
       19 LOADK                            R6 K5 ["AnimationGenTool handler requires meta.toolId"]
       20 GETIMPORT                        R4 K7 [assert]
       22 CALL                             R4 2 0
       23 GETUPVAL                         R4 0
       24 GETTABLEKS                       R4 R4 K8 ["runWithProgressLoop"]
       26 GETTABLEKS                       R5 R2 K9 ["sendProgress"]
       28 GETUPVAL                         R6 1
       29 MOVE                             R7 R0
       30 MOVE                             R8 R3
       31 CALL                             R4 4 1
       32 LOADNIL                          R5
       33 GETTABLEKS                       R6 R4 K10 ["failureReason"]
       35 GETUPVAL                         R7 2
       36 GETTABLEKS                       R7 R7 K11 ["FailureReasons"]
       38 GETTABLEKS                       R7 R7 K12 ["NoPromptProvided"]
       40 JUMPIFNOTEQ                      R6 R7 ; [+3]
       42 LOADK                            R5 K13 ["No prompt provided, please provide a prompt"]
       43 JUMP                             ; [+23]
       44 GETTABLEKS                       R6 R4 K10 ["failureReason"]
       46 GETUPVAL                         R7 2
       47 GETTABLEKS                       R7 R7 K11 ["FailureReasons"]
       49 GETTABLEKS                       R7 R7 K14 ["GenerationFailed"]
       51 JUMPIFNOTEQ                      R6 R7 ; [+3]
       53 LOADK                            R5 K15 ["Animation generation failed"]
       54 JUMP                             ; [+12]
       55 GETTABLEKS                       R6 R4 K10 ["failureReason"]
       57 GETUPVAL                         R7 2
       58 GETTABLEKS                       R7 R7 K11 ["FailureReasons"]
       60 GETTABLEKS                       R7 R7 K16 ["RigInsertFailed"]
       62 JUMPIFNOTEQ                      R6 R7 ; [+3]
       64 LOADK                            R5 K17 ["Rig insert failed"]
       65 JUMP                             ; [+1]
       66 LOADK                            R5 K18 ["Animation generated successfully"]
       67 DUPTABLE                         R6 K23 [{"tag", "generationId", "generationName", "duration", "failureReason"}]
       68 GETTABLEKS                       R7 R4 K19 ["tag"]
       70 SETTABLEKS                       R7 R6 K19 ["tag"]
       72 GETTABLEKS                       R7 R4 K20 ["generationId"]
       74 SETTABLEKS                       R7 R6 K20 ["generationId"]
       76 GETTABLEKS                       R7 R4 K21 ["generationName"]
       78 SETTABLEKS                       R7 R6 K21 ["generationName"]
       80 GETTABLEKS                       R7 R4 K22 ["duration"]
       82 SETTABLEKS                       R7 R6 K22 ["duration"]
       84 GETTABLEKS                       R7 R4 K10 ["failureReason"]
       86 SETTABLEKS                       R7 R6 K10 ["failureReason"]
       88 GETUPVAL                         R7 3
       89 CALL                             R7 0 1
       90 MOVE                             R9 R5
       91 NAMECALL                         R7 R7 K24 ["addText"]
       93 CALL                             R7 2 1
       94 MOVE                             R9 R6
       95 NAMECALL                         R7 R7 K25 ["setStructuredContent"]
       97 CALL                             R7 2 1
       98 NAMECALL                         R7 R7 K26 ["build"]
      100 CALL                             R7 1 -1
      101 RETURN                           R7 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["parseSlashCommandArgs"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 LOADK                            R5 K2 ["%s*%S+=%S+"]
        6 LOADK                            R6 K1 [""]
        7 NAMECALL                         R3 R0 K3 ["gsub"]
        9 CALL                             R3 3 1
       10 LOADK                            R5 K4 ["^%s*(.-)%s*$"]
       11 NAMECALL                         R3 R3 K5 ["match"]
       13 CALL                             R3 2 1
       14 ORK                              R2 R3 K1 [""]
       15 DUPTABLE                         R3 K13 [{["textPrompt"], ["selectedRigRef"] = , ["duration"], ["loop"], ["isFromFormUI"] = True}]
       16 SETTABLEKS                       R2 R3 K6 ["textPrompt"]
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R4 R4 K14 ["getOptionalNumber"]
       21 GETTABLEKS                       R5 R1 K9 ["duration"]
       23 CALL                             R4 1 1
       24 SETTABLEKS                       R4 R3 K9 ["duration"]
       26 GETUPVAL                         R4 0
       27 GETTABLEKS                       R4 R4 K15 ["getOptionalBoolean"]
       29 GETTABLEKS                       R5 R1 K10 ["loop"]
       31 CALL                             R4 1 1
       32 SETTABLEKS                       R4 R3 K10 ["loop"]
       34 RETURN                           R3 1

PROTO_4:
        0 DUPTABLE                         R1 K2 [{"name", "arguments"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K3 ["AnimationGen"]
        4 SETTABLEKS                       R2 R1 K0 ["name"]
        6 GETUPVAL                         R2 1
        7 MOVE                             R3 R0
        8 CALL                             R2 1 1
        9 SETTABLEKS                       R2 R1 K1 ["arguments"]
       11 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["bridges"]
        3 GETTABLEKS                       R1 R1 K1 ["AnimationGen"]
        5 GETTABLEKS                       R1 R1 K2 ["createGuestContext"]
        7 LOADNIL                          R2
        8 LOADNIL                          R3
        9 CALL                             R1 2 1
       10 GETTABLEKS                       R1 R1 K3 ["bridge"]
       12 GETTABLEKS                       R2 R1 K4 ["getSelectedRigRef"]
       14 CALL                             R2 0 1
       15 NEWTABLE                         R3 0 4
       17 DUPTABLE                         R4 K8 [{"name", "inputType", "initialValue"}]
       18 GETUPVAL                         R5 1
       19 GETTABLEKS                       R5 R5 K9 ["TextPrompt"]
       21 SETTABLEKS                       R5 R4 K5 ["name"]
       23 GETUPVAL                         R5 2
       24 GETTABLEKS                       R5 R5 K10 ["String"]
       26 SETTABLEKS                       R5 R4 K6 ["inputType"]
       28 GETUPVAL                         R5 3
       29 GETTABLEKS                       R5 R5 K11 ["textPrompt"]
       31 SETTABLEKS                       R5 R4 K7 ["initialValue"]
       33 DUPTABLE                         R5 K8 [{"name", "inputType", "initialValue"}]
       34 GETUPVAL                         R6 1
       35 GETTABLEKS                       R6 R6 K12 ["SelectedRigRef"]
       37 SETTABLEKS                       R6 R5 K5 ["name"]
       39 GETUPVAL                         R6 2
       40 GETTABLEKS                       R6 R6 K13 ["Instance"]
       42 SETTABLEKS                       R6 R5 K6 ["inputType"]
       44 JUMPIFNOT                        R2 ; [+14]
       45 DUPTABLE                         R6 K16 [{"uniqueId", "name", "className"}]
       46 GETTABLEKS                       R7 R2 K14 ["uniqueId"]
       48 SETTABLEKS                       R7 R6 K14 ["uniqueId"]
       50 GETTABLEKS                       R7 R2 K5 ["name"]
       52 SETTABLEKS                       R7 R6 K5 ["name"]
       54 GETTABLEKS                       R7 R2 K15 ["className"]
       56 SETTABLEKS                       R7 R6 K15 ["className"]
       58 JUMP                             ; [+1]
       59 LOADNIL                          R6
       60 SETTABLEKS                       R6 R5 K7 ["initialValue"]
       62 DUPTABLE                         R6 K21 [{["name"], ["inputType"], ["initialValue"], ["min"] = 1, ["max"] = 10}]
       63 GETUPVAL                         R7 1
       64 GETTABLEKS                       R7 R7 K22 ["Duration"]
       66 SETTABLEKS                       R7 R6 K5 ["name"]
       68 GETUPVAL                         R7 2
       69 GETTABLEKS                       R7 R7 K23 ["Number"]
       71 SETTABLEKS                       R7 R6 K6 ["inputType"]
       73 GETUPVAL                         R8 3
       74 GETTABLEKS                       R8 R8 K25 ["duration"]
       76 ORK                              R7 R8 K24 [3]
       77 SETTABLEKS                       R7 R6 K7 ["initialValue"]
       79 DUPTABLE                         R7 K8 [{"name", "inputType", "initialValue"}]
       80 GETUPVAL                         R8 1
       81 GETTABLEKS                       R8 R8 K26 ["Loop"]
       83 SETTABLEKS                       R8 R7 K5 ["name"]
       85 GETUPVAL                         R8 2
       86 GETTABLEKS                       R8 R8 K27 ["Boolean"]
       88 SETTABLEKS                       R8 R7 K6 ["inputType"]
       90 GETUPVAL                         R9 3
       91 GETTABLEKS                       R9 R9 K29 ["loop"]
       93 ORK                              R8 R9 K28 [False]
       94 SETTABLEKS                       R8 R7 K7 ["initialValue"]
       96 SETLIST                          R3 R4 4 [1]
       98 DUPTABLE                         R4 K32 [{"formId", "fields"}]
       99 GETUPVAL                         R5 4
      100 GETTABLEKS                       R5 R5 K30 ["formId"]
      102 SETTABLEKS                       R5 R4 K30 ["formId"]
      104 SETTABLEKS                       R3 R4 K31 ["fields"]
      106 DUPTABLE                         R5 K34 [{"name", "arguments"}]
      107 GETUPVAL                         R6 5
      108 GETTABLEKS                       R6 R6 K35 ["AskInput"]
      110 SETTABLEKS                       R6 R5 K5 ["name"]
      112 SETTABLEKS                       R4 R5 K33 ["arguments"]
      114 RETURN                           R5 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["readAskInputValues"]
        3 LENGTH                           R3 R0
        4 GETTABLE                         R2 R0 R3
        5 CALL                             R1 1 1
        6 GETIMPORT                        R2 K3 [table.clone]
        8 GETUPVAL                         R3 1
        9 CALL                             R2 1 1
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R4 R4 K4 ["TextPrompt"]
       13 GETTABLE                         R3 R1 R4
       14 JUMPIF                           R3 ; [+3]
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R3 R3 K5 ["textPrompt"]
       18 SETTABLEKS                       R3 R2 K5 ["textPrompt"]
       20 GETUPVAL                         R4 2
       21 GETTABLEKS                       R4 R4 K6 ["SelectedRigRef"]
       23 GETTABLE                         R3 R1 R4
       24 SETTABLEKS                       R3 R2 K7 ["selectedRigRef"]
       26 GETUPVAL                         R4 2
       27 GETTABLEKS                       R4 R4 K8 ["Duration"]
       29 GETTABLE                         R3 R1 R4
       30 SETTABLEKS                       R3 R2 K9 ["duration"]
       32 GETUPVAL                         R4 2
       33 GETTABLEKS                       R4 R4 K10 ["Loop"]
       35 GETTABLE                         R3 R1 R4
       36 SETTABLEKS                       R3 R2 K11 ["loop"]
       38 DUPTABLE                         R3 K14 [{"name", "arguments"}]
       39 GETUPVAL                         R4 3
       40 GETTABLEKS                       R4 R4 K15 ["AnimationGen"]
       42 SETTABLEKS                       R4 R3 K12 ["name"]
       44 SETTABLEKS                       R2 R3 K13 ["arguments"]
       46 RETURN                           R3 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          VAL R1
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          UPVAL U5
       10 NEWCLOSURE                       R3 P1
       11 CAPTURE                          UPVAL U6
       12 CAPTURE                          VAL R1
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          UPVAL U5
       15 NEWTABLE                         R4 0 2
       17 MOVE                             R5 R2
       18 MOVE                             R6 R3
       19 SETLIST                          R4 R5 2 [1]
       21 RETURN                           R4 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["bridges"]
        3 GETTABLEKS                       R0 R0 K1 ["AnimationGen"]
        5 GETTABLEKS                       R0 R0 K2 ["createGuestContext"]
        7 LOADNIL                          R1
        8 LOADNIL                          R2
        9 CALL                             R0 2 1
       10 GETTABLEKS                       R0 R0 K3 ["bridge"]
       12 GETTABLEKS                       R1 R0 K4 ["getSelectedRigRef"]
       14 CALL                             R1 0 1
       15 NEWTABLE                         R2 0 4
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R3 R3 K5 ["createStringRowDefinition"]
       20 DUPTABLE                         R4 K11 [{["label"], ["prop"] = "textPrompt", ["multiLine"] = True}]
       21 GETUPVAL                         R5 2
       22 LOADK                            R7 K1 ["AnimationGen"]
       23 LOADK                            R8 K12 ["Prompt"]
       24 NAMECALL                         R5 R5 K13 ["getText"]
       26 CALL                             R5 3 1
       27 SETTABLEKS                       R5 R4 K6 ["label"]
       29 CALL                             R3 1 1
       30 GETUPVAL                         R4 1
       31 GETTABLEKS                       R4 R4 K14 ["createInstanceRowDefinition"]
       33 DUPTABLE                         R5 K18 [{["label"], ["prop"] = "selectedRigRef", ["initialValue"], ["options"]}]
       34 GETUPVAL                         R6 2
       35 LOADK                            R8 K1 ["AnimationGen"]
       36 LOADK                            R9 K19 ["InputRig"]
       37 NAMECALL                         R6 R6 K13 ["getText"]
       39 CALL                             R6 3 1
       40 SETTABLEKS                       R6 R5 K6 ["label"]
       42 JUMPIFNOT                        R1 ; [+14]
       43 DUPTABLE                         R6 K25 [{["uniqueId"], ["name"], ["className"], ["isValid"] = }]
       44 GETTABLEKS                       R7 R1 K20 ["uniqueId"]
       46 SETTABLEKS                       R7 R6 K20 ["uniqueId"]
       48 GETTABLEKS                       R7 R1 K21 ["name"]
       50 SETTABLEKS                       R7 R6 K21 ["name"]
       52 GETTABLEKS                       R7 R1 K22 ["className"]
       54 SETTABLEKS                       R7 R6 K22 ["className"]
       56 JUMP                             ; [+1]
       57 LOADNIL                          R6
       58 SETTABLEKS                       R6 R5 K16 ["initialValue"]
       60 DUPTABLE                         R6 K27 [{["shouldSelectModel"] = True}]
       61 SETTABLEKS                       R6 R5 K17 ["options"]
       63 CALL                             R4 1 1
       64 GETUPVAL                         R5 1
       65 GETTABLEKS                       R5 R5 K28 ["createNumberRowDefinition"]
       67 DUPTABLE                         R6 K31 [{["label"], ["prop"] = "duration", ["initialValue"] = 3, ["options"]}]
       68 GETUPVAL                         R7 2
       69 LOADK                            R9 K1 ["AnimationGen"]
       70 LOADK                            R10 K32 ["InputDuration"]
       71 NAMECALL                         R7 R7 K13 ["getText"]
       73 CALL                             R7 3 1
       74 SETTABLEKS                       R7 R6 K6 ["label"]
       76 DUPTABLE                         R7 K37 [{["min"] = 1, ["max"] = 10}]
       77 SETTABLEKS                       R7 R6 K17 ["options"]
       79 CALL                             R5 1 1
       80 GETUPVAL                         R6 1
       81 GETTABLEKS                       R6 R6 K38 ["createBooleanRowDefinition"]
       83 DUPTABLE                         R7 K41 [{["label"], ["prop"] = "loop", ["initialValue"] = False}]
       84 GETUPVAL                         R8 2
       85 LOADK                            R10 K1 ["AnimationGen"]
       86 LOADK                            R11 K42 ["InputLoop"]
       87 NAMECALL                         R8 R8 K13 ["getText"]
       89 CALL                             R8 3 1
       90 SETTABLEKS                       R8 R7 K6 ["label"]
       92 CALL                             R6 1 -1
       93 SETLIST                          R2 R3 -1 [1]
       95 DUPTABLE                         R3 K45 [{"confirmButtonText", "propertyRows"}]
       96 GETUPVAL                         R4 2
       97 LOADK                            R6 K1 ["AnimationGen"]
       98 LOADK                            R7 K46 ["InputGenerate"]
       99 NAMECALL                         R4 R4 K13 ["getText"]
      101 CALL                             R4 3 1
      102 SETTABLEKS                       R4 R3 K43 ["confirmButtonText"]
      104 SETTABLEKS                       R2 R3 K44 ["propertyRows"]
      106 RETURN                           R3 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["SlashCommandDescriptions"]
        2 LOADK                            R3 K1 ["AnimationGen"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_10:
        0 DUPTABLE                         R2 K2 [{[1] = True}]
        1 RETURN                           R2 1

PROTO_11:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 NEWCLOSURE                       R2 P1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          VAL R1
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U3
        9 GETIMPORT                        R3 K2 [table.concat]
       11 NEWTABLE                         R4 0 10
       13 LOADK                            R5 K3 ["Generates character animations from natural language descriptions using an AI motion generation model."]
       14 LOADK                            R6 K4 ["Use this tool whenever the user wants to create, generate, or make an animation, motion, or movement for a character or avatar."]
       15 LOADK                            R7 K5 ["The 'prompt' parameter accepts a natural language description of the motion, and an optional 'duration'."]
       16 LOADK                            R8 K6 ["You should interpret the prompt to understand the intended action, and adjust the 'duration' appropriately instead of always using the default value."]
       17 LOADK                            R9 K7 ["The duration should typically be within a range of 1 to 10 seconds."]
       18 LOADK                            R10 K8 ["For example, very short actions (e.g., 'blink', 'nod') should use around 1-2 seconds,"]
       19 LOADK                            R11 K9 ["simple actions (e.g., 'wave', 'jump') around 2-4 seconds,"]
       20 LOADK                            R12 K10 ["and longer or complex actions (e.g., 'dance sequence', 'walk across the room') around 5-10 seconds."]
       21 LOADK                            R13 K11 ["Avoid unnecessarily long durations for simple actions, and ensure the duration matches the natural timing of the described motion."]
       22 LOADK                            R14 K12 ["Parameters: textPrompt (the motion description), duration (length in seconds, infer from the motion), loop (true if the motion should repeat seamlessly)."]
       23 SETLIST                          R4 R5 10 [1]
       25 LOADK                            R5 K13 ["\n"]
       26 CALL                             R3 2 1
       27 GETUPVAL                         R4 4
       28 GETTABLEKS                       R4 R4 K14 ["define"]
       30 CALL                             R4 0 1
       31 GETUPVAL                         R6 5
       32 GETTABLEKS                       R6 R6 K15 ["AnimationGen"]
       34 NAMECALL                         R4 R4 K16 ["setName"]
       36 CALL                             R4 2 1
       37 MOVE                             R6 R3
       38 NAMECALL                         R4 R4 K17 ["setDescription"]
       40 CALL                             R4 2 1
       41 LOADK                            R6 K18 ["textPrompt"]
       42 DUPTABLE                         R7 K23 [{["type"] = "string", ["description"] = "The text prompt describing the animation to generate."}]
       43 NAMECALL                         R4 R4 K24 ["addArgument"]
       45 CALL                             R4 3 1
       46 LOADK                            R6 K25 ["duration"]
       47 DUPTABLE                         R7 K28 [{["type"] = "number", ["description"] = "Length of the animation in seconds. Animation will be 30 fps."}]
       48 NAMECALL                         R4 R4 K29 ["addOptionalArgument"]
       50 CALL                             R4 3 1
       51 LOADK                            R6 K30 ["loop"]
       52 DUPTABLE                         R7 K33 [{["type"] = "boolean", ["description"] = "Whether the animation should loop."}]
       53 NAMECALL                         R4 R4 K29 ["addOptionalArgument"]
       55 CALL                             R4 3 1
       56 DUPTABLE                         R6 K41 [{["title"] = "Animation Generation", ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
       57 NAMECALL                         R4 R4 K42 ["setAnnotations"]
       59 CALL                             R4 2 1
       60 MOVE                             R6 R2
       61 NAMECALL                         R4 R4 K43 ["setHandler"]
       63 CALL                             R4 2 1
       64 NAMECALL                         R4 R4 K44 ["build"]
       66 CALL                             R4 1 1
       67 DUPCLOSURE                       R5 K45 [PROTO_3]
       68 CAPTURE                          UPVAL U6
       69 DUPCLOSURE                       R6 K46 [PROTO_4]
       70 CAPTURE                          UPVAL U5
       71 CAPTURE                          VAL R5
       72 NEWCLOSURE                       R7 P4
       73 CAPTURE                          VAL R5
       74 CAPTURE                          VAL R0
       75 CAPTURE                          UPVAL U7
       76 CAPTURE                          UPVAL U8
       77 CAPTURE                          UPVAL U9
       78 CAPTURE                          UPVAL U5
       79 CAPTURE                          UPVAL U10
       80 NEWCLOSURE                       R8 P5
       81 CAPTURE                          VAL R0
       82 CAPTURE                          UPVAL U11
       83 CAPTURE                          UPVAL U12
       84 DUPTABLE                         R9 K53 [{["command"] = "generate_animation", ["getDescription"], ["runToolChain"], ["mapToToolCall"], ["getInputRequestArguments"]}]
       85 DUPCLOSURE                       R10 K54 [PROTO_9]
       86 CAPTURE                          UPVAL U12
       87 SETTABLEKS                       R10 R9 K49 ["getDescription"]
       89 GETUPVAL                         R11 13
       90 GETTABLEKS                       R11 R11 K55 ["FFlagAssistantAskInputTool"]
       92 JUMPIFNOT                        R11 ; [+2]
       93 MOVE                             R10 R7
       94 JUMP                             ; [+1]
       95 LOADNIL                          R10
       96 SETTABLEKS                       R10 R9 K50 ["runToolChain"]
       98 GETUPVAL                         R11 13
       99 GETTABLEKS                       R11 R11 K55 ["FFlagAssistantAskInputTool"]
      101 JUMPIFNOT                        R11 ; [+2]
      102 LOADNIL                          R10
      103 JUMP                             ; [+1]
      104 MOVE                             R10 R6
      105 SETTABLEKS                       R10 R9 K51 ["mapToToolCall"]
      107 GETUPVAL                         R11 13
      108 GETTABLEKS                       R11 R11 K55 ["FFlagAssistantAskInputTool"]
      110 JUMPIFNOT                        R11 ; [+2]
      111 LOADNIL                          R10
      112 JUMP                             ; [+1]
      113 MOVE                             R10 R8
      114 SETTABLEKS                       R10 R9 K52 ["getInputRequestArguments"]
      116 DUPCLOSURE                       R10 K56 [PROTO_10]
      117 DUPTABLE                         R11 K61 [{"definition", "slashCommands", "getPreExecuteWarning", "toolCallOptions"}]
      118 SETTABLEKS                       R4 R11 K57 ["definition"]
      120 NEWTABLE                         R12 0 1
      122 MOVE                             R13 R9
      123 SETLIST                          R12 R13 1 [1]
      125 SETTABLEKS                       R12 R11 K58 ["slashCommands"]
      127 SETTABLEKS                       R10 R11 K59 ["getPreExecuteWarning"]
      129 DUPTABLE                         R12 K64 [{["resetTimeoutOnProgress"] = True}]
      130 SETTABLEKS                       R12 R11 K60 ["toolCallOptions"]
      132 RETURN                           R11 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["ModelContextProtocol"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Util"]
       18 GETTABLEKS                       R4 R4 K9 ["AnimationGen"]
       20 GETTABLEKS                       R4 R4 K10 ["AnimationGenTypes"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R0 K8 ["Util"]
       27 GETTABLEKS                       R5 R5 K11 ["AskInput"]
       29 GETTABLEKS                       R5 R5 K12 ["AskInputTypes"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K6 [require]
       34 GETTABLEKS                       R6 R0 K13 ["Components"]
       36 GETTABLEKS                       R6 R6 K14 ["DEPRECATED_PropertyRows"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K6 [require]
       41 GETTABLEKS                       R7 R0 K15 ["Flags"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K6 [require]
       46 GETTABLEKS                       R8 R0 K8 ["Util"]
       48 GETTABLEKS                       R8 R8 K16 ["SlashCommandArgs"]
       50 CALL                             R7 1 1
       51 GETIMPORT                        R8 K6 [require]
       53 GETTABLEKS                       R9 R0 K8 ["Util"]
       55 GETTABLEKS                       R9 R9 K17 ["SlashCommandConfiguration"]
       57 CALL                             R8 1 1
       58 GETIMPORT                        R9 K6 [require]
       60 GETTABLEKS                       R10 R0 K18 ["Tools"]
       62 GETTABLEKS                       R10 R10 K19 ["ToolTypes"]
       64 CALL                             R9 1 1
       65 GETIMPORT                        R10 K6 [require]
       67 GETTABLEKS                       R11 R0 K8 ["Util"]
       69 GETTABLEKS                       R11 R11 K20 ["ToolUtils"]
       71 CALL                             R10 1 1
       72 GETIMPORT                        R11 K6 [require]
       74 GETTABLEKS                       R12 R0 K21 ["Resources"]
       76 GETTABLEKS                       R12 R12 K22 ["Localization"]
       78 GETTABLEKS                       R12 R12 K23 ["Translator"]
       80 CALL                             R11 1 1
       81 GETIMPORT                        R12 K6 [require]
       83 GETTABLEKS                       R13 R0 K24 ["Types"]
       85 CALL                             R12 1 1
       86 GETTABLEKS                       R13 R2 K8 ["Util"]
       88 GETTABLEKS                       R13 R13 K25 ["ToolBuilder"]
       90 GETTABLEKS                       R14 R2 K8 ["Util"]
       92 GETTABLEKS                       R14 R14 K26 ["ToolResult"]
       94 GETTABLEKS                       R15 R9 K27 ["ToolNames"]
       96 GETTABLEKS                       R16 R4 K28 ["INPUT_TYPE"]
       98 GETTABLEKS                       R17 R8 K29 ["Configs"]
      100 GETTABLEKS                       R17 R17 K9 ["AnimationGen"]
      102 GETTABLEKS                       R18 R17 K30 ["row"]
      104 DUPCLOSURE                       R19 K31 [PROTO_0]
      105 DUPCLOSURE                       R20 K32 [PROTO_11]
      106 CAPTURE                          VAL R19
      107 CAPTURE                          VAL R3
      108 CAPTURE                          VAL R10
      109 CAPTURE                          VAL R14
      110 CAPTURE                          VAL R13
      111 CAPTURE                          VAL R15
      112 CAPTURE                          VAL R7
      113 CAPTURE                          VAL R18
      114 CAPTURE                          VAL R16
      115 CAPTURE                          VAL R17
      116 CAPTURE                          VAL R4
      117 CAPTURE                          VAL R5
      118 CAPTURE                          VAL R11
      119 CAPTURE                          VAL R6
      120 RETURN                           R20 1
