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
       32 GETTABLEKS                       R2 R0 K9 ["mode"]
       34 JUMPIFEQKNIL                     R2 ; [+31]
       36 LOADN                            R7 1
       37 LOADN                            R8 1
       38 NAMECALL                         R5 R2 K10 ["sub"]
       40 CALL                             R5 3 1
       41 NAMECALL                         R5 R5 K11 ["upper"]
       43 CALL                             R5 1 1
       44 MOVE                             R3 R5
       45 LOADN                            R6 2
       46 NAMECALL                         R4 R2 K10 ["sub"]
       48 CALL                             R4 2 1
       49 CONCAT                           R2 R3 R4
       50 LOADB                            R4 1
       51 JUMPIFEQKS                       R2 K12 ["New"] ; [+8]
       53 LOADB                            R4 1
       54 JUMPIFEQKS                       R2 K13 ["Edit"] ; [+5]
       56 JUMPIFEQKS                       R2 K14 ["Style"] ; [+2]
       58 LOADB                            R4 0 +1
       59 LOADB                            R4 1
       60 FASTCALL2K                       ASSERT R4 K15 ; [+4]
       62 LOADK                            R5 K15 ["mode must be \"New\", \"Edit\", or \"Style\""]
       63 GETIMPORT                        R3 K5 [assert]
       65 CALL                             R3 2 0
       66 GETTABLEKS                       R3 R0 K16 ["selectedRigRef"]
       68 GETTABLEKS                       R4 R0 K17 ["duration"]
       70 JUMPIFEQKNIL                     R4 ; [+16]
       72 FASTCALL1                        TYPEOF R4 ; [+3]
       73 MOVE                             R8 R4
       74 GETIMPORT                        R7 K1 [typeof]
       76 CALL                             R7 1 1
       77 JUMPIFEQKS                       R7 K18 ["number"] ; [+2]
       79 LOADB                            R6 0 +1
       80 LOADB                            R6 1
       81 FASTCALL2K                       ASSERT R6 K19 ; [+4]
       83 LOADK                            R7 K19 ["duration must be a number"]
       84 GETIMPORT                        R5 K5 [assert]
       86 CALL                             R5 2 0
       87 GETTABLEKS                       R5 R0 K20 ["loop"]
       89 JUMPIFEQKNIL                     R5 ; [+16]
       91 FASTCALL1                        TYPEOF R5 ; [+3]
       92 MOVE                             R9 R5
       93 GETIMPORT                        R8 K1 [typeof]
       95 CALL                             R8 1 1
       96 JUMPIFEQKS                       R8 K21 ["boolean"] ; [+2]
       98 LOADB                            R7 0 +1
       99 LOADB                            R7 1
      100 FASTCALL2K                       ASSERT R7 K22 ; [+4]
      102 LOADK                            R8 K22 ["loop must be a boolean"]
      103 GETIMPORT                        R6 K5 [assert]
      105 CALL                             R6 2 0
      106 GETTABLEKS                       R6 R0 K23 ["startTime"]
      108 JUMPIFEQKNIL                     R6 ; [+16]
      110 FASTCALL1                        TYPEOF R6 ; [+3]
      111 MOVE                             R10 R6
      112 GETIMPORT                        R9 K1 [typeof]
      114 CALL                             R9 1 1
      115 JUMPIFEQKS                       R9 K18 ["number"] ; [+2]
      117 LOADB                            R8 0 +1
      118 LOADB                            R8 1
      119 FASTCALL2K                       ASSERT R8 K24 ; [+4]
      121 LOADK                            R9 K24 ["startTime must be a number"]
      122 GETIMPORT                        R7 K5 [assert]
      124 CALL                             R7 2 0
      125 GETTABLEKS                       R7 R0 K25 ["endTime"]
      127 JUMPIFEQKNIL                     R7 ; [+16]
      129 FASTCALL1                        TYPEOF R7 ; [+3]
      130 MOVE                             R11 R7
      131 GETIMPORT                        R10 K1 [typeof]
      133 CALL                             R10 1 1
      134 JUMPIFEQKS                       R10 K18 ["number"] ; [+2]
      136 LOADB                            R9 0 +1
      137 LOADB                            R9 1
      138 FASTCALL2K                       ASSERT R9 K26 ; [+4]
      140 LOADK                            R10 K26 ["endTime must be a number"]
      141 GETIMPORT                        R8 K5 [assert]
      143 CALL                             R8 2 0
      144 GETTABLEKS                       R8 R0 K27 ["styleStrength"]
      146 JUMPIFEQKNIL                     R8 ; [+16]
      148 FASTCALL1                        TYPEOF R8 ; [+3]
      149 MOVE                             R12 R8
      150 GETIMPORT                        R11 K1 [typeof]
      152 CALL                             R11 1 1
      153 JUMPIFEQKS                       R11 K18 ["number"] ; [+2]
      155 LOADB                            R10 0 +1
      156 LOADB                            R10 1
      157 FASTCALL2K                       ASSERT R10 K28 ; [+4]
      159 LOADK                            R11 K28 ["styleStrength must be a number"]
      160 GETIMPORT                        R9 K5 [assert]
      162 CALL                             R9 2 0
      163 GETTABLEKS                       R9 R0 K29 ["styleConstraint"]
      165 JUMPIFEQKNIL                     R9 ; [+31]
      167 LOADN                            R14 1
      168 LOADN                            R15 1
      169 NAMECALL                         R12 R9 K10 ["sub"]
      171 CALL                             R12 3 1
      172 NAMECALL                         R12 R12 K11 ["upper"]
      174 CALL                             R12 1 1
      175 MOVE                             R10 R12
      176 LOADN                            R13 2
      177 NAMECALL                         R11 R9 K10 ["sub"]
      179 CALL                             R11 2 1
      180 CONCAT                           R9 R10 R11
      181 LOADB                            R11 1
      182 JUMPIFEQKS                       R9 K30 ["Body"] ; [+8]
      184 LOADB                            R11 1
      185 JUMPIFEQKS                       R9 K31 ["Hands"] ; [+5]
      187 JUMPIFEQKS                       R9 K32 ["Feet"] ; [+2]
      189 LOADB                            R11 0 +1
      190 LOADB                            R11 1
      191 FASTCALL2K                       ASSERT R11 K33 ; [+4]
      193 LOADK                            R12 K33 ["styleConstraint must be \"Body\", \"Hands\", or \"Feet\""]
      194 GETIMPORT                        R10 K5 [assert]
      196 CALL                             R10 2 0
      197 DUPTABLE                         R10 K34 [{"textPrompt", "mode", "selectedRigRef", "duration", "loop", "startTime", "endTime", "styleConstraint", "styleStrength"}]
      198 SETTABLEKS                       R1 R10 K6 ["textPrompt"]
      200 SETTABLEKS                       R2 R10 K9 ["mode"]
      202 SETTABLEKS                       R3 R10 K16 ["selectedRigRef"]
      204 SETTABLEKS                       R4 R10 K17 ["duration"]
      206 SETTABLEKS                       R5 R10 K20 ["loop"]
      208 SETTABLEKS                       R6 R10 K23 ["startTime"]
      210 SETTABLEKS                       R7 R10 K25 ["endTime"]
      212 SETTABLEKS                       R9 R10 K29 ["styleConstraint"]
      214 SETTABLEKS                       R8 R10 K27 ["styleStrength"]
      216 RETURN                           R10 1

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
       28 GETTABLEKS                       R5 R2 K10 ["mode"]
       30 JUMPIF                           R5 ; [+5]
       31 GETUPVAL                         R5 1
       32 GETTABLEKS                       R5 R5 K11 ["AnimationGenMode"]
       34 GETTABLEKS                       R5 R5 K12 ["New"]
       36 GETTABLEKS                       R6 R2 K13 ["selectedRigRef"]
       38 GETUPVAL                         R7 1
       39 GETTABLEKS                       R7 R7 K11 ["AnimationGenMode"]
       41 GETTABLEKS                       R7 R7 K12 ["New"]
       43 JUMPIFNOTEQ                      R5 R7 ; [+18]
       45 MOVE                             R7 R6
       46 JUMPIF                           R7 ; [+3]
       47 GETTABLEKS                       R7 R4 K14 ["getSelectedRigRef"]
       49 CALL                             R7 0 1
       50 MOVE                             R6 R7
       51 JUMPIFNOTEQKNIL                  R6 ; [+10]
       53 DUPTABLE                         R7 K3 [{"failureReason"}]
       54 GETUPVAL                         R8 1
       55 GETTABLEKS                       R8 R8 K4 ["FailureReasons"]
       57 GETTABLEKS                       R8 R8 K15 ["NoRigSelected"]
       59 SETTABLEKS                       R8 R7 K2 ["failureReason"]
       61 RETURN                           R7 1
       62 GETTABLEKS                       R7 R4 K16 ["generateAndSaveAnimationAsync"]
       64 DUPTABLE                         R8 K26 [{"toolUseId", "prompt", "mode", "rigUniqueId", "duration", "loop", "startFrame", "endFrame", "styleConstraint", "styleStrength"}]
       65 SETTABLEKS                       R1 R8 K17 ["toolUseId"]
       67 GETTABLEKS                       R9 R2 K0 ["textPrompt"]
       69 SETTABLEKS                       R9 R8 K18 ["prompt"]
       71 SETTABLEKS                       R5 R8 K10 ["mode"]
       73 MOVE                             R9 R6
       74 JUMPIFNOT                        R9 ; [+2]
       75 GETTABLEKS                       R9 R6 K27 ["uniqueId"]
       77 SETTABLEKS                       R9 R8 K19 ["rigUniqueId"]
       79 GETTABLEKS                       R9 R2 K20 ["duration"]
       81 SETTABLEKS                       R9 R8 K20 ["duration"]
       83 GETTABLEKS                       R9 R2 K21 ["loop"]
       85 SETTABLEKS                       R9 R8 K21 ["loop"]
       87 GETTABLEKS                       R10 R2 K28 ["startTime"]
       89 JUMPIFEQKNIL                     R10 ; [+12]
       91 GETTABLEKS                       R11 R2 K28 ["startTime"]
       93 GETUPVAL                         R12 3
       94 GETTABLEKS                       R12 R12 K29 ["DEFAULT_GENERATION_FPS"]
       96 MUL                              R10 R11 R12
       97 FASTCALL1                        MATH_ROUND R10 ; [+2]
       98 GETIMPORT                        R9 K32 [math.round]
      100 CALL                             R9 1 1
      101 JUMP                             ; [+1]
      102 LOADNIL                          R9
      103 SETTABLEKS                       R9 R8 K22 ["startFrame"]
      105 GETTABLEKS                       R10 R2 K33 ["endTime"]
      107 JUMPIFEQKNIL                     R10 ; [+12]
      109 GETTABLEKS                       R11 R2 K33 ["endTime"]
      111 GETUPVAL                         R12 3
      112 GETTABLEKS                       R12 R12 K29 ["DEFAULT_GENERATION_FPS"]
      114 MUL                              R10 R11 R12
      115 FASTCALL1                        MATH_ROUND R10 ; [+2]
      116 GETIMPORT                        R9 K32 [math.round]
      118 CALL                             R9 1 1
      119 JUMP                             ; [+1]
      120 LOADNIL                          R9
      121 SETTABLEKS                       R9 R8 K23 ["endFrame"]
      123 GETTABLEKS                       R9 R2 K24 ["styleConstraint"]
      125 SETTABLEKS                       R9 R8 K24 ["styleConstraint"]
      127 GETTABLEKS                       R9 R2 K25 ["styleStrength"]
      129 SETTABLEKS                       R9 R8 K25 ["styleStrength"]
      131 CALL                             R7 1 1
      132 GETTABLEKS                       R8 R7 K20 ["duration"]
      134 JUMPIFNOTEQKN                    R8 K34 [0] ; [+10]
      136 DUPTABLE                         R8 K3 [{"failureReason"}]
      137 GETUPVAL                         R9 1
      138 GETTABLEKS                       R9 R9 K4 ["FailureReasons"]
      140 GETTABLEKS                       R9 R9 K35 ["GenerationFailed"]
      142 SETTABLEKS                       R9 R8 K2 ["failureReason"]
      144 RETURN                           R8 1
      145 GETTABLEKS                       R9 R7 K36 ["generationId"]
      147 JUMPIFEQKNIL                     R9 ; [+8]
      149 GETUPVAL                         R8 1
      150 GETTABLEKS                       R8 R8 K37 ["getLinkTag"]
      152 GETTABLEKS                       R9 R7 K36 ["generationId"]
      154 CALL                             R8 1 1
      155 JUMP                             ; [+1]
      156 LOADNIL                          R8
      157 DUPTABLE                         R9 K40 [{"tag", "generationId", "generationName", "duration"}]
      158 SETTABLEKS                       R8 R9 K38 ["tag"]
      160 GETTABLEKS                       R10 R7 K36 ["generationId"]
      162 SETTABLEKS                       R10 R9 K36 ["generationId"]
      164 GETTABLEKS                       R10 R7 K41 ["name"]
      166 SETTABLEKS                       R10 R9 K39 ["generationName"]
      168 GETTABLEKS                       R10 R7 K20 ["duration"]
      170 SETTABLEKS                       R10 R9 K20 ["duration"]
      172 RETURN                           R9 1

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
       49 GETTABLEKS                       R7 R7 K14 ["NoRigSelected"]
       51 JUMPIFNOTEQ                      R6 R7 ; [+3]
       53 LOADK                            R5 K15 ["No rig selected, please select a rig"]
       54 JUMP                             ; [+12]
       55 GETTABLEKS                       R6 R4 K10 ["failureReason"]
       57 GETUPVAL                         R7 2
       58 GETTABLEKS                       R7 R7 K11 ["FailureReasons"]
       60 GETTABLEKS                       R7 R7 K16 ["GenerationFailed"]
       62 JUMPIFNOTEQ                      R6 R7 ; [+3]
       64 LOADK                            R5 K17 ["Animation generation failed"]
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
       15 DUPTABLE                         R3 K16 [{["textPrompt"], ["mode"], ["selectedRigRef"] = , ["duration"], ["loop"], ["startTime"], ["endTime"], ["styleStrength"], ["styleConstraint"]}]
       16 SETTABLEKS                       R2 R3 K6 ["textPrompt"]
       18 GETTABLEKS                       R4 R1 K7 ["mode"]
       20 SETTABLEKS                       R4 R3 K7 ["mode"]
       22 GETUPVAL                         R4 0
       23 GETTABLEKS                       R4 R4 K17 ["getOptionalNumber"]
       25 GETTABLEKS                       R5 R1 K10 ["duration"]
       27 CALL                             R4 1 1
       28 SETTABLEKS                       R4 R3 K10 ["duration"]
       30 GETUPVAL                         R4 0
       31 GETTABLEKS                       R4 R4 K18 ["getOptionalBoolean"]
       33 GETTABLEKS                       R5 R1 K11 ["loop"]
       35 CALL                             R4 1 1
       36 SETTABLEKS                       R4 R3 K11 ["loop"]
       38 GETUPVAL                         R4 0
       39 GETTABLEKS                       R4 R4 K17 ["getOptionalNumber"]
       41 GETTABLEKS                       R5 R1 K12 ["startTime"]
       43 CALL                             R4 1 1
       44 SETTABLEKS                       R4 R3 K12 ["startTime"]
       46 GETUPVAL                         R4 0
       47 GETTABLEKS                       R4 R4 K17 ["getOptionalNumber"]
       49 GETTABLEKS                       R5 R1 K13 ["endTime"]
       51 CALL                             R4 1 1
       52 SETTABLEKS                       R4 R3 K13 ["endTime"]
       54 GETUPVAL                         R4 0
       55 GETTABLEKS                       R4 R4 K17 ["getOptionalNumber"]
       57 GETTABLEKS                       R5 R1 K14 ["styleStrength"]
       59 CALL                             R4 1 1
       60 SETTABLEKS                       R4 R3 K14 ["styleStrength"]
       62 GETTABLEKS                       R4 R1 K15 ["styleConstraint"]
       64 SETTABLEKS                       R4 R3 K15 ["styleConstraint"]
       66 DUPTABLE                         R4 K21 [{"name", "arguments"}]
       67 GETUPVAL                         R5 1
       68 GETTABLEKS                       R5 R5 K22 ["AnimationGen"]
       70 SETTABLEKS                       R5 R4 K19 ["name"]
       72 SETTABLEKS                       R3 R4 K20 ["arguments"]
       74 RETURN                           R4 1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["selectedRigRef"]
        2 JUMPIFNOTEQKNIL                  R1 ; [+8]
        4 GETUPVAL                         R2 0
        5 LOADK                            R4 K1 ["AnimationGen"]
        6 LOADK                            R5 K2 ["RigRequired"]
        7 NAMECALL                         R2 R2 K3 ["getText"]
        9 CALL                             R2 3 -1
       10 RETURN                           R2 -1
       11 LOADNIL                          R2
       12 RETURN                           R2 1

PROTO_5:
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
       42 SETTABLEKS                       R1 R5 K16 ["initialValue"]
       44 DUPTABLE                         R6 K21 [{["shouldSelectModel"] = True}]
       45 SETTABLEKS                       R6 R5 K17 ["options"]
       47 CALL                             R4 1 1
       48 GETUPVAL                         R5 1
       49 GETTABLEKS                       R5 R5 K22 ["createNumberRowDefinition"]
       51 DUPTABLE                         R6 K25 [{["label"], ["prop"] = "duration", ["initialValue"] = 3, ["options"]}]
       52 GETUPVAL                         R7 2
       53 LOADK                            R9 K1 ["AnimationGen"]
       54 LOADK                            R10 K26 ["InputDuration"]
       55 NAMECALL                         R7 R7 K13 ["getText"]
       57 CALL                             R7 3 1
       58 SETTABLEKS                       R7 R6 K6 ["label"]
       60 DUPTABLE                         R7 K31 [{["min"] = 1, ["max"] = 10}]
       61 SETTABLEKS                       R7 R6 K17 ["options"]
       63 CALL                             R5 1 1
       64 GETUPVAL                         R6 1
       65 GETTABLEKS                       R6 R6 K32 ["createBooleanRowDefinition"]
       67 DUPTABLE                         R7 K35 [{["label"], ["prop"] = "loop", ["initialValue"] = False}]
       68 GETUPVAL                         R8 2
       69 LOADK                            R10 K1 ["AnimationGen"]
       70 LOADK                            R11 K36 ["InputLoop"]
       71 NAMECALL                         R8 R8 K13 ["getText"]
       73 CALL                             R8 3 1
       74 SETTABLEKS                       R8 R7 K6 ["label"]
       76 CALL                             R6 1 -1
       77 SETLIST                          R2 R3 -1 [1]
       79 DUPTABLE                         R3 K40 [{"confirmButtonText", "propertyRows", "getDisabledReason"}]
       80 GETUPVAL                         R4 2
       81 LOADK                            R6 K1 ["AnimationGen"]
       82 LOADK                            R7 K41 ["InputGenerate"]
       83 NAMECALL                         R4 R4 K13 ["getText"]
       85 CALL                             R4 3 1
       86 SETTABLEKS                       R4 R3 K37 ["confirmButtonText"]
       88 SETTABLEKS                       R2 R3 K38 ["propertyRows"]
       90 DUPCLOSURE                       R4 K42 [PROTO_4]
       91 CAPTURE                          UPVAL U2
       92 SETTABLEKS                       R4 R3 K39 ["getDisabledReason"]
       94 RETURN                           R3 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["SlashCommandDescriptions"]
        2 LOADK                            R3 K1 ["AnimationGen"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_7:
        0 DUPTABLE                         R2 K2 [{[1] = True}]
        1 RETURN                           R2 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantSplitToolsAndWidgets"]
        3 JUMPIF                           R1 ; [+4]
        4 GETUPVAL                         R1 1
        5 MOVE                             R2 R0
        6 CALL                             R1 1 -1
        7 RETURN                           R1 -1
        8 NEWCLOSURE                       R1 P0
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          VAL R0
       12 CAPTURE                          UPVAL U4
       13 NEWCLOSURE                       R2 P1
       14 CAPTURE                          UPVAL U5
       15 CAPTURE                          VAL R1
       16 CAPTURE                          UPVAL U3
       17 CAPTURE                          UPVAL U6
       18 GETIMPORT                        R3 K3 [table.concat]
       20 NEWTABLE                         R4 0 16
       22 LOADK                            R5 K4 ["Generates character animations from natural language descriptions using an AI motion generation model."]
       23 LOADK                            R6 K5 ["Use this tool whenever the user wants to create, generate, or make an animation, motion, or movement for a character or avatar."]
       24 LOADK                            R7 K6 ["The 'prompt' parameter accepts a natural language description of the motion, and an optional 'duration'."]
       25 LOADK                            R8 K7 ["You should interpret the prompt to understand the intended action, and adjust the 'duration' appropriately instead of always using the default value."]
       26 LOADK                            R9 K8 ["The duration should typically be within a range of 1 to 10 seconds."]
       27 LOADK                            R10 K9 ["For example, very short actions (e.g., 'blink', 'nod') should use around 1-2 seconds,"]
       28 LOADK                            R11 K10 ["simple actions (e.g., 'wave', 'jump') around 2-4 seconds,"]
       29 LOADK                            R12 K11 ["and longer or complex actions (e.g., 'dance sequence', 'walk across the room') around 5-10 seconds."]
       30 LOADK                            R13 K12 ["Avoid unnecessarily long durations for simple actions, and ensure the duration matches the natural timing of the described motion."]
       31 LOADK                            R14 K13 ["This tool supports three modes via the 'mode' parameter (all parameters listed for each mode are required and must be included in the tool call):"]
       32 LOADK                            R16 K14 ["'%*' (default) — creates a brand-new animation. Use this when the user wants to generate a new motion."]
       33 GETUPVAL                         R18 3
       34 GETTABLEKS                       R18 R18 K15 ["AnimationGenMode"]
       36 GETTABLEKS                       R18 R18 K16 ["New"]
       38 NAMECALL                         R16 R16 K17 ["format"]
       40 CALL                             R16 2 1
       41 MOVE                             R15 R16
       42 LOADK                            R16 K18 ["Parameters: textPrompt (the motion description), duration (length in seconds, infer from the motion), loop (true if the motion should repeat seamlessly)."]
       43 LOADK                            R18 K19 ["'%*' — modifies an existing animation. Use this when the user wants to change or refine a previously generated animation."]
       44 GETUPVAL                         R20 3
       45 GETTABLEKS                       R20 R20 K15 ["AnimationGenMode"]
       47 GETTABLEKS                       R20 R20 K20 ["Edit"]
       49 NAMECALL                         R18 R18 K17 ["format"]
       51 CALL                             R18 2 1
       52 MOVE                             R17 R18
       53 LOADK                            R18 K21 ["Parameters: textPrompt, and startTime and endTime (in seconds) to restrict edits to a specific time range. startTime and endTime must be within the duration of the previous animation clip."]
       54 LOADK                            R20 K22 ["'%*' — applies a stylistic transformation to an existing animation while preserving the underlying motion. Use this when the user wants to restyle the motion (e.g. 'make it more robotic', 'add a limp')."]
       55 GETUPVAL                         R22 3
       56 GETTABLEKS                       R22 R22 K15 ["AnimationGenMode"]
       58 GETTABLEKS                       R22 R22 K23 ["Style"]
       60 NAMECALL                         R20 R20 K17 ["format"]
       62 CALL                             R20 2 1
       63 MOVE                             R19 R20
       64 LOADK                            R20 K24 ["Parameters: textPrompt, styleStrength (1-10, where 10 is maximum style influence), and styleConstraint ('Body', 'Hands', or 'Feet') to limit which body parts are affected."]
       65 SETLIST                          R4 R5 16 [1]
       67 LOADK                            R5 K25 ["\n"]
       68 CALL                             R3 2 1
       69 GETUPVAL                         R4 7
       70 GETTABLEKS                       R4 R4 K26 ["define"]
       72 CALL                             R4 0 1
       73 GETUPVAL                         R6 8
       74 GETTABLEKS                       R6 R6 K27 ["AnimationGen"]
       76 NAMECALL                         R4 R4 K28 ["setName"]
       78 CALL                             R4 2 1
       79 MOVE                             R6 R3
       80 NAMECALL                         R4 R4 K29 ["setDescription"]
       82 CALL                             R4 2 1
       83 LOADK                            R6 K30 ["textPrompt"]
       84 DUPTABLE                         R7 K35 [{["type"] = "string", ["description"] = "The text prompt describing the animation to generate."}]
       85 NAMECALL                         R4 R4 K36 ["addArgument"]
       87 CALL                             R4 3 1
       88 LOADK                            R6 K37 ["mode"]
       89 DUPTABLE                         R7 K38 [{["type"] = "string", ["description"]}]
       90 LOADK                            R9 K39 ["Operation mode: '%*' (default) to create a new animation, '%*' to modify an existing animation, or '%*' to restyle an existing animation."]
       91 GETUPVAL                         R11 3
       92 GETTABLEKS                       R11 R11 K15 ["AnimationGenMode"]
       94 GETTABLEKS                       R11 R11 K16 ["New"]
       96 GETUPVAL                         R12 3
       97 GETTABLEKS                       R12 R12 K15 ["AnimationGenMode"]
       99 GETTABLEKS                       R12 R12 K20 ["Edit"]
      101 GETUPVAL                         R13 3
      102 GETTABLEKS                       R13 R13 K15 ["AnimationGenMode"]
      104 GETTABLEKS                       R13 R13 K23 ["Style"]
      106 NAMECALL                         R9 R9 K17 ["format"]
      108 CALL                             R9 4 1
      109 MOVE                             R8 R9
      110 SETTABLEKS                       R8 R7 K33 ["description"]
      112 NAMECALL                         R4 R4 K40 ["addOptionalArgument"]
      114 CALL                             R4 3 1
      115 LOADK                            R6 K41 ["duration"]
      116 DUPTABLE                         R7 K44 [{["type"] = "number", ["description"] = "Length of the animation in seconds. Animation will be 30 fps."}]
      117 NAMECALL                         R4 R4 K40 ["addOptionalArgument"]
      119 CALL                             R4 3 1
      120 LOADK                            R6 K45 ["loop"]
      121 DUPTABLE                         R7 K48 [{["type"] = "boolean", ["description"] = "Whether the animation should loop."}]
      122 NAMECALL                         R4 R4 K40 ["addOptionalArgument"]
      124 CALL                             R4 3 1
      125 LOADK                            R6 K49 ["startTime"]
      126 DUPTABLE                         R7 K50 [{["type"] = "number", ["description"]}]
      127 LOADK                            R9 K51 ["Start time in seconds for edit mode. Only used when mode is '%*'."]
      128 GETUPVAL                         R11 3
      129 GETTABLEKS                       R11 R11 K15 ["AnimationGenMode"]
      131 GETTABLEKS                       R11 R11 K20 ["Edit"]
      133 NAMECALL                         R9 R9 K17 ["format"]
      135 CALL                             R9 2 1
      136 MOVE                             R8 R9
      137 SETTABLEKS                       R8 R7 K33 ["description"]
      139 NAMECALL                         R4 R4 K40 ["addOptionalArgument"]
      141 CALL                             R4 3 1
      142 LOADK                            R6 K52 ["endTime"]
      143 DUPTABLE                         R7 K50 [{["type"] = "number", ["description"]}]
      144 LOADK                            R9 K53 ["End time in seconds for edit mode. Only used when mode is '%*'."]
      145 GETUPVAL                         R11 3
      146 GETTABLEKS                       R11 R11 K15 ["AnimationGenMode"]
      148 GETTABLEKS                       R11 R11 K20 ["Edit"]
      150 NAMECALL                         R9 R9 K17 ["format"]
      152 CALL                             R9 2 1
      153 MOVE                             R8 R9
      154 SETTABLEKS                       R8 R7 K33 ["description"]
      156 NAMECALL                         R4 R4 K40 ["addOptionalArgument"]
      158 CALL                             R4 3 1
      159 LOADK                            R6 K54 ["styleStrength"]
      160 DUPTABLE                         R7 K50 [{["type"] = "number", ["description"]}]
      161 LOADK                            R9 K55 ["Strength of the style transformation from 1 to 10. Only used when mode is '%*'."]
      162 GETUPVAL                         R11 3
      163 GETTABLEKS                       R11 R11 K15 ["AnimationGenMode"]
      165 GETTABLEKS                       R11 R11 K23 ["Style"]
      167 NAMECALL                         R9 R9 K17 ["format"]
      169 CALL                             R9 2 1
      170 MOVE                             R8 R9
      171 SETTABLEKS                       R8 R7 K33 ["description"]
      173 NAMECALL                         R4 R4 K40 ["addOptionalArgument"]
      175 CALL                             R4 3 1
      176 LOADK                            R6 K56 ["styleConstraint"]
      177 DUPTABLE                         R7 K38 [{["type"] = "string", ["description"]}]
      178 LOADK                            R9 K57 ["Which body parts to apply the style to: 'Body', 'Hands', or 'Feet'. Only used when mode is '%*'."]
      179 GETUPVAL                         R11 3
      180 GETTABLEKS                       R11 R11 K15 ["AnimationGenMode"]
      182 GETTABLEKS                       R11 R11 K23 ["Style"]
      184 NAMECALL                         R9 R9 K17 ["format"]
      186 CALL                             R9 2 1
      187 MOVE                             R8 R9
      188 SETTABLEKS                       R8 R7 K33 ["description"]
      190 NAMECALL                         R4 R4 K40 ["addOptionalArgument"]
      192 CALL                             R4 3 1
      193 DUPTABLE                         R6 K65 [{["title"] = "Animation Generation", ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
      194 NAMECALL                         R4 R4 K66 ["setAnnotations"]
      196 CALL                             R4 2 1
      197 MOVE                             R6 R2
      198 NAMECALL                         R4 R4 K67 ["setHandler"]
      200 CALL                             R4 2 1
      201 NAMECALL                         R4 R4 K68 ["build"]
      203 CALL                             R4 1 1
      204 DUPCLOSURE                       R5 K69 [PROTO_3]
      205 CAPTURE                          UPVAL U9
      206 CAPTURE                          UPVAL U8
      207 NEWCLOSURE                       R6 P3
      208 CAPTURE                          VAL R0
      209 CAPTURE                          UPVAL U10
      210 CAPTURE                          UPVAL U11
      211 DUPTABLE                         R7 K75 [{["command"] = "generate_animation", ["getDescription"], ["mapToToolCall"], ["getInputRequestArguments"]}]
      212 DUPCLOSURE                       R8 K76 [PROTO_6]
      213 CAPTURE                          UPVAL U11
      214 SETTABLEKS                       R8 R7 K72 ["getDescription"]
      216 SETTABLEKS                       R5 R7 K73 ["mapToToolCall"]
      218 SETTABLEKS                       R6 R7 K74 ["getInputRequestArguments"]
      220 DUPCLOSURE                       R8 K77 [PROTO_7]
      221 DUPTABLE                         R9 K82 [{"definition", "slashCommands", "getPreExecuteWarning", "toolCallOptions"}]
      222 SETTABLEKS                       R4 R9 K78 ["definition"]
      224 NEWTABLE                         R10 0 1
      226 MOVE                             R11 R7
      227 SETLIST                          R10 R11 1 [1]
      229 SETTABLEKS                       R10 R9 K79 ["slashCommands"]
      231 SETTABLEKS                       R8 R9 K80 ["getPreExecuteWarning"]
      233 DUPTABLE                         R10 K85 [{["resetTimeoutOnProgress"] = True}]
      234 SETTABLEKS                       R10 R9 K81 ["toolCallOptions"]
      236 RETURN                           R9 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["AnimationGen"]
       13 GETTABLEKS                       R2 R2 K8 ["AnimationGenTypes"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Util"]
       20 GETTABLEKS                       R3 R3 K7 ["AnimationGen"]
       22 GETTABLEKS                       R3 R3 K9 ["AnimationGenConstants"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K10 ["Features"]
       29 GETTABLEKS                       R4 R4 K7 ["AnimationGen"]
       31 GETTABLEKS                       R4 R4 K11 ["AnimationGenTool"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K12 ["Flags"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K13 ["Parent"]
       43 GETTABLEKS                       R6 R6 K14 ["ModelContextProtocol"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K15 ["Components"]
       50 GETTABLEKS                       R7 R7 K16 ["PropertyRows"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K6 ["Util"]
       57 GETTABLEKS                       R8 R8 K17 ["SlashCommandArgs"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R9 R0 K18 ["Tools"]
       64 GETTABLEKS                       R9 R9 K19 ["ToolTypes"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETTABLEKS                       R10 R0 K6 ["Util"]
       71 GETTABLEKS                       R10 R10 K20 ["ToolUtils"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K5 [require]
       76 GETTABLEKS                       R11 R0 K21 ["Resources"]
       78 GETTABLEKS                       R11 R11 K22 ["Localization"]
       80 GETTABLEKS                       R11 R11 K23 ["Translator"]
       82 CALL                             R10 1 1
       83 GETIMPORT                        R11 K5 [require]
       85 GETTABLEKS                       R12 R0 K24 ["Types"]
       87 CALL                             R11 1 1
       88 GETTABLEKS                       R12 R5 K6 ["Util"]
       90 GETTABLEKS                       R12 R12 K25 ["ToolBuilder"]
       92 GETTABLEKS                       R13 R5 K6 ["Util"]
       94 GETTABLEKS                       R13 R13 K26 ["ToolResult"]
       96 GETTABLEKS                       R14 R8 K27 ["ToolNames"]
       98 DUPCLOSURE                       R15 K28 [PROTO_0]
       99 DUPCLOSURE                       R16 K29 [PROTO_8]
      100 CAPTURE                          VAL R4
      101 CAPTURE                          VAL R3
      102 CAPTURE                          VAL R15
      103 CAPTURE                          VAL R1
      104 CAPTURE                          VAL R2
      105 CAPTURE                          VAL R9
      106 CAPTURE                          VAL R13
      107 CAPTURE                          VAL R12
      108 CAPTURE                          VAL R14
      109 CAPTURE                          VAL R7
      110 CAPTURE                          VAL R6
      111 CAPTURE                          VAL R10
      112 RETURN                           R16 1
