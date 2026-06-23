PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 1
        2 GETIMPORT                        R1 K2 [string.find]
        4 MOVE                             R2 R0
        5 LOADK                            R3 K3 ["\n"]
        6 CALL                             R1 2 1
        7 JUMPIFNOT                        R1 ; [+15]
        8 GETUPVAL                         R2 0
        9 JUMPIFNOTLE                      R1 R2 ; [+13]
       11 LOADN                            R7 1
       12 SUBK                             R8 R1 K4 [1]
       13 FASTCALL3                        STRING_SUB R0 R7 R8
       15 MOVE                             R6 R0
       16 GETIMPORT                        R5 K6 [string.sub]
       18 CALL                             R5 3 1
       19 MOVE                             R3 R5
       20 LOADK                            R4 K7 ["...(truncated)"]
       21 CONCAT                           R2 R3 R4
       22 RETURN                           R2 1
       23 LENGTH                           R2 R0
       24 GETUPVAL                         R3 0
       25 JUMPIFNOTLT                      R3 R2 ; [+13]
       27 LOADN                            R7 1
       28 GETUPVAL                         R8 0
       29 FASTCALL3                        STRING_SUB R0 R7 R8
       31 MOVE                             R6 R0
       32 GETIMPORT                        R5 K6 [string.sub]
       34 CALL                             R5 3 1
       35 MOVE                             R3 R5
       36 LOADK                            R4 K7 ["...(truncated)"]
       37 CONCAT                           R2 R3 R4
       38 RETURN                           R2 1
       39 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETUPVAL                         R3 2
        4 GETTABLEKS                       R3 R3 K0 ["Root"]
        6 DUPTABLE                         R4 K5 [{"LayoutOrder", "expanded", "contentId", "editThisContent"}]
        7 GETTABLEKS                       R5 R0 K1 ["LayoutOrder"]
        9 SETTABLEKS                       R5 R4 K1 ["LayoutOrder"]
       11 GETTABLEKS                       R6 R0 K6 ["canToggle"]
       13 JUMPIFNOT                        R6 ; [+3]
       14 GETTABLEKS                       R5 R0 K2 ["expanded"]
       16 JUMP                             ; [+1]
       17 LOADB                            R5 1
       18 SETTABLEKS                       R5 R4 K2 ["expanded"]
       20 GETTABLEKS                       R5 R0 K3 ["contentId"]
       22 SETTABLEKS                       R5 R4 K3 ["contentId"]
       24 GETTABLEKS                       R5 R0 K4 ["editThisContent"]
       26 SETTABLEKS                       R5 R4 K4 ["editThisContent"]
       28 DUPTABLE                         R5 K10 [{"Header", "Content", "Persist"}]
       29 GETUPVAL                         R6 1
       30 GETUPVAL                         R7 2
       31 GETTABLEKS                       R7 R7 K7 ["Header"]
       33 DUPTABLE                         R8 K13 [{"IsDisabled", "VerticalAlignment", "LayoutOrder"}]
       34 GETTABLEKS                       R10 R0 K6 ["canToggle"]
       36 NOT                              R9 R10
       37 SETTABLEKS                       R9 R8 K11 ["IsDisabled"]
       39 LOADK                            R9 K14 ["center"]
       40 SETTABLEKS                       R9 R8 K12 ["VerticalAlignment"]
       42 MOVE                             R9 R1
       43 CALL                             R9 0 1
       44 SETTABLEKS                       R9 R8 K1 ["LayoutOrder"]
       46 GETTABLEKS                       R9 R0 K15 ["headerChildren"]
       48 CALL                             R6 3 1
       49 SETTABLEKS                       R6 R5 K7 ["Header"]
       51 GETTABLEKS                       R6 R0 K16 ["children"]
       53 JUMPIFNOT                        R6 ; [+15]
       54 GETUPVAL                         R6 1
       55 GETUPVAL                         R7 2
       56 GETTABLEKS                       R7 R7 K8 ["Content"]
       58 DUPTABLE                         R8 K18 [{"tag", "LayoutOrder"}]
       59 LOADK                            R9 K19 ["col size-0-0 fill auto-y gap-small"]
       60 SETTABLEKS                       R9 R8 K17 ["tag"]
       62 MOVE                             R9 R1
       63 CALL                             R9 0 1
       64 SETTABLEKS                       R9 R8 K1 ["LayoutOrder"]
       66 GETTABLEKS                       R9 R0 K16 ["children"]
       68 CALL                             R6 3 1
       69 SETTABLEKS                       R6 R5 K8 ["Content"]
       71 GETTABLEKS                       R6 R0 K20 ["persistChildren"]
       73 SETTABLEKS                       R6 R5 K9 ["Persist"]
       75 CALL                             R2 3 -1
       76 RETURN                           R2 -1

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["isError"]
        2 NOT                              R1 R2
        3 JUMPIFNOT                        R1 ; [+9]
        4 GETTABLEKS                       R2 R0 K1 ["mode"]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K2 ["Preparing"]
        9 JUMPIFEQ                         R2 R3 ; [+2]
       11 LOADB                            R1 0 +1
       12 LOADB                            R1 1
       13 LOADNIL                          R2
       14 GETTABLEKS                       R3 R0 K0 ["isError"]
       16 JUMPIFNOT                        R3 ; [+18]
       17 GETTABLEKS                       R3 R0 K3 ["errorMessage"]
       19 JUMPIFNOT                        R3 ; [+11]
       20 LOADK                            R3 K4 ["%*: %*"]
       21 GETUPVAL                         R5 1
       22 GETTABLEKS                       R5 R5 K5 ["GenerationFailed"]
       24 GETTABLEKS                       R6 R0 K3 ["errorMessage"]
       26 NAMECALL                         R3 R3 K6 ["format"]
       28 CALL                             R3 3 1
       29 MOVE                             R2 R3
       30 JUMP                             ; [+7]
       31 GETUPVAL                         R3 1
       32 GETTABLEKS                       R2 R3 K5 ["GenerationFailed"]
       34 JUMP                             ; [+3]
       35 GETUPVAL                         R3 1
       36 GETTABLEKS                       R2 R3 K7 ["Generating"]
       38 GETUPVAL                         R3 2
       39 CALL                             R3 0 1
       40 GETUPVAL                         R4 3
       41 GETUPVAL                         R5 4
       42 GETUPVAL                         R6 5
       43 GETTABLEKS                       R6 R6 K8 ["assign"]
       45 DUPTABLE                         R7 K11 [{"canToggle", "headerChildren"}]
       46 LOADB                            R8 0
       47 SETTABLEKS                       R8 R7 K9 ["canToggle"]
       49 DUPTABLE                         R8 K13 [{"Text"}]
       50 GETUPVAL                         R9 3
       51 GETUPVAL                         R10 6
       52 DUPTABLE                         R11 K16 [{"tag", "Text", "LayoutOrder"}]
       53 LOADK                            R12 K17 ["size-0-full auto-x text-label-small content-default text-truncate-end text-align-y-center"]
       54 SETTABLEKS                       R12 R11 K14 ["tag"]
       56 SETTABLEKS                       R2 R11 K12 ["Text"]
       58 MOVE                             R12 R3
       59 CALL                             R12 0 1
       60 SETTABLEKS                       R12 R11 K15 ["LayoutOrder"]
       62 DUPTABLE                         R12 K19 [{"Shimmer"}]
       63 MOVE                             R13 R1
       64 JUMPIFNOT                        R13 ; [+3]
       65 GETUPVAL                         R13 3
       66 GETUPVAL                         R14 7
       67 CALL                             R13 1 1
       68 SETTABLEKS                       R13 R12 K18 ["Shimmer"]
       70 CALL                             R9 3 1
       71 SETTABLEKS                       R9 R8 K12 ["Text"]
       73 SETTABLEKS                       R8 R7 K10 ["headerChildren"]
       75 MOVE                             R8 R0
       76 CALL                             R6 2 -1
       77 CALL                             R4 -1 -1
       78 RETURN                           R4 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R0 K2 [task.cancel]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 LOADB                            R1 0
        5 CALL                             R0 1 0
        6 GETIMPORT                        R1 K2 [os.clock]
        8 CALL                             R1 0 1
        9 GETUPVAL                         R2 2
       10 SUB                              R0 R1 R2
       11 GETUPVAL                         R1 3
       12 JUMPIFNOTLE                      R1 R0 ; [+5]
       14 GETUPVAL                         R1 1
       15 LOADB                            R2 1
       16 CALL                             R1 1 0
       17 RETURN                           R0 0
       18 GETUPVAL                         R2 3
       19 SUB                              R1 R2 R0
       20 GETIMPORT                        R2 K5 [task.delay]
       22 MOVE                             R3 R1
       23 NEWCLOSURE                       R4 P0
       24 CAPTURE                          UPVAL U1
       25 CALL                             R2 2 1
       26 NEWCLOSURE                       R3 P1
       27 CAPTURE                          VAL R2
       28 RETURN                           R3 1

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["useState"]
        3 LOADB                            R4 0
        4 CALL                             R3 1 2
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R5 R5 K1 ["useEffect"]
        8 NEWCLOSURE                       R6 P0
        9 CAPTURE                          VAL R1
       10 CAPTURE                          VAL R4
       11 CAPTURE                          VAL R0
       12 CAPTURE                          UPVAL U1
       13 NEWTABLE                         R7 0 3
       15 MOVE                             R8 R0
       16 MOVE                             R9 R1
       17 MOVE                             R10 R2
       18 SETLIST                          R7 R8 3 [1]
       20 CALL                             R5 2 0
       21 RETURN                           R3 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+5]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R2 R0 K0 ["previewImages"]
        6 CALL                             R1 1 1
        7 RETURN                           R1 1
        8 GETUPVAL                         R1 2
        9 GETTABLEKS                       R1 R1 K1 ["useCarouselPreviewImage"]
       11 GETTABLEKS                       R2 R0 K0 ["previewImages"]
       13 CALL                             R1 1 -1
       14 RETURN                           R1 -1

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["nextOrder"]
        2 GETTABLEKS                       R2 R0 K1 ["retryInfo"]
        4 GETTABLEKS                       R3 R2 K2 ["description"]
        6 LOADB                            R4 0
        7 FASTCALL1                        TYPEOF R3 ; [+3]
        8 MOVE                             R6 R3
        9 GETIMPORT                        R5 K4 [typeof]
       11 CALL                             R5 1 1
       12 JUMPIFNOTEQKS                    R5 K5 ["string"] ; [+5]
       14 JUMPIFNOTEQKS                    R3 K6 [""] ; [+2]
       16 LOADB                            R4 0 +1
       17 LOADB                            R4 1
       18 GETTABLEKS                       R5 R2 K7 ["onRetryDismissText"]
       20 LOADB                            R6 0
       21 GETTABLEKS                       R7 R2 K8 ["onRetryDismissClick"]
       23 JUMPIFEQKNIL                     R7 ; [+13]
       25 LOADB                            R6 0
       26 FASTCALL1                        TYPEOF R5 ; [+3]
       27 MOVE                             R8 R5
       28 GETIMPORT                        R7 K4 [typeof]
       30 CALL                             R7 1 1
       31 JUMPIFNOTEQKS                    R7 K5 ["string"] ; [+5]
       33 JUMPIFNOTEQKS                    R5 K6 [""] ; [+2]
       35 LOADB                            R6 0 +1
       36 LOADB                            R6 1
       37 NEWTABLE                         R7 2 0
       39 JUMPIFNOT                        R4 ; [+32]
       40 GETUPVAL                         R8 0
       41 GETUPVAL                         R9 1
       42 DUPTABLE                         R10 K11 [{"tag", "LayoutOrder"}]
       43 LOADK                            R11 K12 ["col size-full-0 auto-y"]
       44 SETTABLEKS                       R11 R10 K9 ["tag"]
       46 MOVE                             R11 R1
       47 CALL                             R11 0 1
       48 SETTABLEKS                       R11 R10 K10 ["LayoutOrder"]
       50 DUPTABLE                         R11 K14 [{"PromptText"}]
       51 GETUPVAL                         R12 0
       52 GETUPVAL                         R13 2
       53 DUPTABLE                         R14 K17 [{"tag", "Text", "RichText", "LayoutOrder"}]
       54 LOADK                            R15 K18 ["size-full-0 auto-y text-body-small content-default text-wrap text-align-x-left"]
       55 SETTABLEKS                       R15 R14 K9 ["tag"]
       57 SETTABLEKS                       R3 R14 K15 ["Text"]
       59 LOADB                            R15 1
       60 SETTABLEKS                       R15 R14 K16 ["RichText"]
       62 MOVE                             R15 R1
       63 CALL                             R15 0 1
       64 SETTABLEKS                       R15 R14 K10 ["LayoutOrder"]
       66 CALL                             R12 2 1
       67 SETTABLEKS                       R12 R11 K13 ["PromptText"]
       69 CALL                             R8 3 1
       70 SETTABLEKS                       R8 R7 K19 ["Prompt"]
       72 GETUPVAL                         R8 0
       73 GETUPVAL                         R9 1
       74 DUPTABLE                         R10 K11 [{"tag", "LayoutOrder"}]
       75 LOADK                            R11 K20 ["row size-full-0 auto-y gap-small align-x-left align-y-center shrink-0"]
       76 SETTABLEKS                       R11 R10 K9 ["tag"]
       78 MOVE                             R11 R1
       79 CALL                             R11 0 1
       80 SETTABLEKS                       R11 R10 K10 ["LayoutOrder"]
       82 DUPTABLE                         R11 K23 [{"Retry", "Dismiss"}]
       83 GETUPVAL                         R12 0
       84 GETUPVAL                         R13 3
       85 DUPTABLE                         R14 K30 [{"text", "size", "variant", "fillBehavior", "isLoading", "onActivated", "LayoutOrder"}]
       86 GETTABLEKS                       R15 R2 K31 ["onRetryText"]
       88 SETTABLEKS                       R15 R14 K24 ["text"]
       90 GETUPVAL                         R15 4
       91 GETTABLEKS                       R15 R15 K32 ["Small"]
       93 SETTABLEKS                       R15 R14 K25 ["size"]
       95 GETUPVAL                         R15 5
       96 GETTABLEKS                       R15 R15 K33 ["Enums"]
       98 GETTABLEKS                       R15 R15 K34 ["ButtonVariant"]
      100 GETTABLEKS                       R15 R15 K35 ["Emphasis"]
      102 SETTABLEKS                       R15 R14 K26 ["variant"]
      104 GETUPVAL                         R15 6
      105 GETTABLEKS                       R15 R15 K36 ["Fit"]
      107 SETTABLEKS                       R15 R14 K27 ["fillBehavior"]
      109 GETTABLEKS                       R16 R2 K37 ["isRunning"]
      111 JUMPIFEQKB                       R16 TRUE ; [+2]
      113 LOADB                            R15 0 +1
      114 LOADB                            R15 1
      115 SETTABLEKS                       R15 R14 K28 ["isLoading"]
      117 GETTABLEKS                       R15 R2 K38 ["onRetryClick"]
      119 SETTABLEKS                       R15 R14 K29 ["onActivated"]
      121 MOVE                             R15 R1
      122 CALL                             R15 0 1
      123 SETTABLEKS                       R15 R14 K10 ["LayoutOrder"]
      125 CALL                             R12 2 1
      126 SETTABLEKS                       R12 R11 K21 ["Retry"]
      128 MOVE                             R12 R6
      129 JUMPIFNOT                        R12 ; [+33]
      130 GETUPVAL                         R12 0
      131 GETUPVAL                         R13 3
      132 DUPTABLE                         R14 K39 [{"text", "size", "variant", "fillBehavior", "onActivated", "LayoutOrder"}]
      133 SETTABLEKS                       R5 R14 K24 ["text"]
      135 GETUPVAL                         R15 4
      136 GETTABLEKS                       R15 R15 K32 ["Small"]
      138 SETTABLEKS                       R15 R14 K25 ["size"]
      140 GETUPVAL                         R15 5
      141 GETTABLEKS                       R15 R15 K33 ["Enums"]
      143 GETTABLEKS                       R15 R15 K34 ["ButtonVariant"]
      145 GETTABLEKS                       R15 R15 K40 ["Standard"]
      147 SETTABLEKS                       R15 R14 K26 ["variant"]
      149 GETUPVAL                         R15 6
      150 GETTABLEKS                       R15 R15 K36 ["Fit"]
      152 SETTABLEKS                       R15 R14 K27 ["fillBehavior"]
      154 GETTABLEKS                       R15 R2 K8 ["onRetryDismissClick"]
      156 SETTABLEKS                       R15 R14 K29 ["onActivated"]
      158 MOVE                             R15 R1
      159 CALL                             R15 0 1
      160 SETTABLEKS                       R15 R14 K10 ["LayoutOrder"]
      162 CALL                             R12 2 1
      163 SETTABLEKS                       R12 R11 K22 ["Dismiss"]
      165 CALL                             R8 3 1
      166 SETTABLEKS                       R8 R7 K41 ["Buttons"]
      168 GETUPVAL                         R8 0
      169 GETUPVAL                         R9 1
      170 DUPTABLE                         R10 K11 [{"tag", "LayoutOrder"}]
      171 LOADK                            R11 K42 ["col size-full-0 auto-y gap-small radius-small stroke-standard stroke-default padding-small"]
      172 SETTABLEKS                       R11 R10 K9 ["tag"]
      174 MOVE                             R11 R1
      175 CALL                             R11 0 1
      176 SETTABLEKS                       R11 R10 K10 ["LayoutOrder"]
      178 MOVE                             R11 R7
      179 CALL                             R8 3 -1
      180 RETURN                           R8 -1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+3]
        3 GETUPVAL                         R1 1
        4 CALL                             R1 0 1
        5 JUMP                             ; [+1]
        6 LOADNIL                          R1
        7 GETTABLEKS                       R3 R0 K0 ["previewState"]
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R4 R4 K1 ["Generating"]
       12 JUMPIFEQ                         R3 R4 ; [+2]
       14 LOADB                            R2 0 +1
       15 LOADB                            R2 1
       16 GETTABLEKS                       R4 R0 K0 ["previewState"]
       18 GETUPVAL                         R5 2
       19 GETTABLEKS                       R5 R5 K2 ["Inserted"]
       21 JUMPIFEQ                         R4 R5 ; [+2]
       23 LOADB                            R3 0 +1
       24 LOADB                            R3 1
       25 GETTABLEKS                       R5 R0 K0 ["previewState"]
       27 GETUPVAL                         R6 2
       28 GETTABLEKS                       R6 R6 K3 ["Failed"]
       30 JUMPIFEQ                         R5 R6 ; [+2]
       32 LOADB                            R4 0 +1
       33 LOADB                            R4 1
       34 GETTABLEKS                       R6 R0 K0 ["previewState"]
       36 GETUPVAL                         R7 2
       37 GETTABLEKS                       R7 R7 K4 ["Cancelled"]
       39 JUMPIFEQ                         R6 R7 ; [+2]
       41 LOADB                            R5 0 +1
       42 LOADB                            R5 1
       43 GETUPVAL                         R6 3
       44 GETTABLEKS                       R7 R0 K5 ["startTime"]
       46 MOVE                             R8 R2
       47 GETTABLEKS                       R9 R0 K6 ["generationStage"]
       49 CALL                             R6 3 1
       50 GETUPVAL                         R8 4
       51 CALL                             R8 0 1
       52 JUMPIF                           R8 ; [+5]
       53 GETUPVAL                         R7 5
       54 GETTABLEKS                       R8 R0 K7 ["previewImages"]
       56 CALL                             R7 1 1
       57 JUMP                             ; [+6]
       58 GETUPVAL                         R7 6
       59 GETTABLEKS                       R7 R7 K8 ["useCarouselPreviewImage"]
       61 GETTABLEKS                       R8 R0 K7 ["previewImages"]
       63 CALL                             R7 1 1
       64 GETUPVAL                         R8 7
       65 GETTABLEKS                       R9 R0 K9 ["className"]
       67 CALL                             R8 1 1
       68 LOADB                            R9 0
       69 GETTABLEKS                       R11 R0 K10 ["previewErrorMessage"]
       71 FASTCALL1                        TYPEOF R11 ; [+2]
       72 GETIMPORT                        R10 K12 [typeof]
       74 CALL                             R10 1 1
       75 JUMPIFNOTEQKS                    R10 K13 ["string"] ; [+7]
       77 GETTABLEKS                       R10 R0 K10 ["previewErrorMessage"]
       79 JUMPIFNOTEQKS                    R10 K14 [""] ; [+2]
       81 LOADB                            R9 0 +1
       82 LOADB                            R9 1
       83 MOVE                             R10 R2
       84 JUMPIF                           R10 ; [+7]
       85 GETTABLEKS                       R10 R7 K15 ["exists"]
       87 JUMPIFNOT                        R10 ; [+4]
       88 JUMPIF                           R4 ; [+2]
       89 MOVE                             R10 R5
       90 JUMPIFNOT                        R10 ; [+1]
       91 MOVE                             R10 R9
       92 LOADNIL                          R11
       93 GETTABLEKS                       R13 R0 K9 ["className"]
       95 JUMPIFNOTEQKNIL                  R13 ; [+2]
       97 LOADB                            R12 0 +1
       98 LOADB                            R12 1
       99 JUMPIFNOT                        R2 ; [+12]
      100 JUMPIF                           R12 ; [+32]
      101 LOADK                            R13 K16 ["%* %*"]
      102 GETUPVAL                         R15 8
      103 GETTABLEKS                       R15 R15 K17 ["GeneratingPrefix"]
      105 GETTABLEKS                       R16 R0 K18 ["displayName"]
      107 NAMECALL                         R13 R13 K19 ["format"]
      109 CALL                             R13 3 1
      110 MOVE                             R11 R13
      111 JUMP                             ; [+21]
      112 JUMPIFNOT                        R3 ; [+8]
      113 JUMPIFNOT                        R12 ; [+4]
      114 GETUPVAL                         R13 8
      115 GETTABLEKS                       R11 R13 K2 ["Inserted"]
      117 JUMP                             ; [+15]
      118 GETTABLEKS                       R11 R0 K18 ["displayName"]
      120 JUMP                             ; [+12]
      121 JUMPIFNOT                        R5 ; [+4]
      122 GETUPVAL                         R13 8
      123 GETTABLEKS                       R11 R13 K20 ["GenerationCancelled"]
      125 JUMP                             ; [+7]
      126 JUMPIFNOT                        R4 ; [+4]
      127 GETUPVAL                         R13 8
      128 GETTABLEKS                       R11 R13 K21 ["GenerationFailed"]
      130 JUMP                             ; [+2]
      131 GETTABLEKS                       R11 R0 K0 ["previewState"]
      133 MOVE                             R13 R11
      134 JUMPIF                           R13 ; [+2]
      135 MOVE                             R11 R13
      136 JUMP                             ; [+38]
      137 GETIMPORT                        R14 K23 [string.find]
      139 MOVE                             R15 R13
      140 LOADK                            R16 K24 ["\n"]
      141 CALL                             R14 2 1
      142 JUMPIFNOT                        R14 ; [+15]
      143 GETUPVAL                         R15 9
      144 JUMPIFNOTLE                      R14 R15 ; [+13]
      146 LOADN                            R19 1
      147 SUBK                             R20 R14 K25 [1]
      148 FASTCALL3                        STRING_SUB R13 R19 R20
      150 MOVE                             R18 R13
      151 GETIMPORT                        R17 K27 [string.sub]
      153 CALL                             R17 3 1
      154 MOVE                             R15 R17
      155 LOADK                            R16 K28 ["...(truncated)"]
      156 CONCAT                           R11 R15 R16
      157 JUMP                             ; [+17]
      158 LENGTH                           R15 R13
      159 GETUPVAL                         R16 9
      160 JUMPIFNOTLT                      R16 R15 ; [+13]
      162 LOADN                            R19 1
      163 GETUPVAL                         R20 9
      164 FASTCALL3                        STRING_SUB R13 R19 R20
      166 MOVE                             R18 R13
      167 GETIMPORT                        R17 K27 [string.sub]
      169 CALL                             R17 3 1
      170 MOVE                             R15 R17
      171 LOADK                            R16 K28 ["...(truncated)"]
      172 CONCAT                           R11 R15 R16
      173 JUMP                             ; [+1]
      174 MOVE                             R11 R13
      175 GETUPVAL                         R13 10
      176 CALL                             R13 0 1
      177 GETUPVAL                         R15 11
      178 LOADN                            R16 60
      179 JUMPIFNOTLE                      R16 R15 ; [+21]
      181 GETUPVAL                         R14 12
      182 LOADK                            R16 K29 ["PrimitiveGen"]
      183 LOADK                            R17 K30 ["ExpectedTimeMinutes"]
      184 DUPTABLE                         R18 K32 [{"minutes"}]
      185 GETIMPORT                        R19 K33 [string.format]
      187 LOADK                            R20 K34 ["%d"]
      188 GETUPVAL                         R23 11
      189 DIVK                             R22 R23 K35 [60]
      190 FASTCALL1                        MATH_FLOOR R22 ; [+2]
      191 GETIMPORT                        R21 K38 [math.floor]
      193 CALL                             R21 1 1
      194 CALL                             R19 2 1
      195 SETTABLEKS                       R19 R18 K31 ["minutes"]
      197 NAMECALL                         R14 R14 K39 ["getText"]
      199 CALL                             R14 4 1
      200 JUMP                             ; [+14]
      201 GETUPVAL                         R14 12
      202 LOADK                            R16 K29 ["PrimitiveGen"]
      203 LOADK                            R17 K40 ["ExpectedTimeSeconds"]
      204 DUPTABLE                         R18 K42 [{"seconds"}]
      205 GETIMPORT                        R19 K33 [string.format]
      207 LOADK                            R20 K34 ["%d"]
      208 GETUPVAL                         R21 11
      209 CALL                             R19 2 1
      210 SETTABLEKS                       R19 R18 K41 ["seconds"]
      212 NAMECALL                         R14 R14 K39 ["getText"]
      214 CALL                             R14 4 1
      215 LOADNIL                          R15
      216 LOADNIL                          R16
      217 GETUPVAL                         R17 4
      218 CALL                             R17 0 1
      219 JUMPIFNOT                        R17 ; [+136]
      220 GETTABLEKS                       R17 R7 K43 ["images"]
      222 JUMPIFNOT                        R17 ; [+133]
      223 NEWTABLE                         R17 0 0
      225 GETTABLEKS                       R18 R7 K43 ["images"]
      227 LOADNIL                          R19
      228 LOADNIL                          R20
      229 FORGPREP                         R18
      230 JUMPIFEQKS                       R22 K14 [""] ; [+34]
      232 LOADK                            R24 K44 ["preload_%*"]
      233 MOVE                             R26 R21
      234 NAMECALL                         R24 R24 K19 ["format"]
      236 CALL                             R24 2 1
      237 MOVE                             R23 R24
      238 GETUPVAL                         R24 13
      239 LOADK                            R25 K45 ["ImageLabel"]
      240 DUPTABLE                         R26 K51 [{"BackgroundTransparency", "Image", "Position", "Size", "ZIndex"}]
      241 LOADN                            R27 1
      242 SETTABLEKS                       R27 R26 K46 ["BackgroundTransparency"]
      244 SETTABLEKS                       R22 R26 K47 ["Image"]
      246 GETIMPORT                        R27 K54 [UDim2.fromOffset]
      248 LOADN                            R28 0
      249 LOADN                            R29 0
      250 CALL                             R27 2 1
      251 SETTABLEKS                       R27 R26 K48 ["Position"]
      253 GETIMPORT                        R27 K54 [UDim2.fromOffset]
      255 LOADN                            R28 2
      256 LOADN                            R29 2
      257 CALL                             R27 2 1
      258 SETTABLEKS                       R27 R26 K49 ["Size"]
      260 LOADN                            R27 246
      261 SETTABLEKS                       R27 R26 K50 ["ZIndex"]
      263 CALL                             R24 2 1
      264 SETTABLE                         R24 R17 R23
      265 FORGLOOP                         R18 2 ; [-36]
      267 GETUPVAL                         R18 13
      268 LOADK                            R19 K55 ["Frame"]
      269 DUPTABLE                         R20 K57 [{"BackgroundTransparency", "Size", "ClipsDescendants"}]
      270 LOADN                            R21 1
      271 SETTABLEKS                       R21 R20 K46 ["BackgroundTransparency"]
      273 GETIMPORT                        R21 K54 [UDim2.fromOffset]
      275 LOADN                            R22 0
      276 LOADN                            R23 0
      277 CALL                             R21 2 1
      278 SETTABLEKS                       R21 R20 K49 ["Size"]
      280 LOADB                            R21 1
      281 SETTABLEKS                       R21 R20 K56 ["ClipsDescendants"]
      283 MOVE                             R21 R17
      284 CALL                             R18 3 1
      285 MOVE                             R15 R18
      286 NEWTABLE                         R18 0 0
      288 GETUPVAL                         R19 6
      289 GETTABLEKS                       R19 R19 K58 ["getBatch0Indices"]
      291 GETTABLEKS                       R22 R7 K43 ["images"]
      293 LENGTH                           R20 R22
      294 CALL                             R19 1 3
      295 FORGPREP                         R19
      296 GETTABLEKS                       R25 R7 K43 ["images"]
      298 GETTABLE                         R24 R25 R23
      299 JUMPIFNOT                        R24 ; [+35]
      300 JUMPIFEQKS                       R24 K14 [""] ; [+34]
      302 LOADK                            R26 K59 ["persist_%*"]
      303 MOVE                             R28 R23
      304 NAMECALL                         R26 R26 K19 ["format"]
      306 CALL                             R26 2 1
      307 MOVE                             R25 R26
      308 GETUPVAL                         R26 13
      309 LOADK                            R27 K45 ["ImageLabel"]
      310 DUPTABLE                         R28 K51 [{"BackgroundTransparency", "Image", "Position", "Size", "ZIndex"}]
      311 LOADN                            R29 1
      312 SETTABLEKS                       R29 R28 K46 ["BackgroundTransparency"]
      314 SETTABLEKS                       R24 R28 K47 ["Image"]
      316 GETIMPORT                        R29 K54 [UDim2.fromOffset]
      318 LOADN                            R30 0
      319 LOADN                            R31 0
      320 CALL                             R29 2 1
      321 SETTABLEKS                       R29 R28 K48 ["Position"]
      323 GETIMPORT                        R29 K54 [UDim2.fromOffset]
      325 LOADN                            R30 2
      326 LOADN                            R31 2
      327 CALL                             R29 2 1
      328 SETTABLEKS                       R29 R28 K49 ["Size"]
      330 LOADN                            R29 246
      331 SETTABLEKS                       R29 R28 K50 ["ZIndex"]
      333 CALL                             R26 2 1
      334 SETTABLE                         R26 R18 R25
      335 FORGLOOP                         R19 2 ; [-40]
      337 GETUPVAL                         R19 13
      338 LOADK                            R20 K55 ["Frame"]
      339 DUPTABLE                         R21 K57 [{"BackgroundTransparency", "Size", "ClipsDescendants"}]
      340 LOADN                            R22 1
      341 SETTABLEKS                       R22 R21 K46 ["BackgroundTransparency"]
      343 GETIMPORT                        R22 K54 [UDim2.fromOffset]
      345 LOADN                            R23 0
      346 LOADN                            R24 0
      347 CALL                             R22 2 1
      348 SETTABLEKS                       R22 R21 K49 ["Size"]
      350 LOADB                            R22 1
      351 SETTABLEKS                       R22 R21 K56 ["ClipsDescendants"]
      353 MOVE                             R22 R18
      354 CALL                             R19 3 1
      355 MOVE                             R16 R19
      356 GETUPVAL                         R17 13
      357 GETUPVAL                         R18 14
      358 GETUPVAL                         R19 15
      359 GETTABLEKS                       R19 R19 K60 ["assign"]
      361 DUPTABLE                         R20 K64 [{"canToggle", "headerChildren", "persistChildren"}]
      362 LOADB                            R21 1
      363 SETTABLEKS                       R21 R20 K61 ["canToggle"]
      365 DUPTABLE                         R21 K66 [{"HeaderContent"}]
      366 GETUPVAL                         R22 13
      367 GETUPVAL                         R23 16
      368 DUPTABLE                         R24 K69 [{"tag", "LayoutOrder"}]
      369 LOADK                            R25 K70 ["row size-0-full auto-x align-y-center gap-xsmall"]
      370 SETTABLEKS                       R25 R24 K67 ["tag"]
      372 MOVE                             R25 R13
      373 CALL                             R25 0 1
      374 SETTABLEKS                       R25 R24 K68 ["LayoutOrder"]
      376 DUPTABLE                         R25 K75 [{"StatusIcon", "Text", "ChipArea", "StageInfo"}]
      377 JUMPIFNOT                        R5 ; [+65]
      378 GETUPVAL                         R27 17
      379 CALL                             R27 0 1
      380 JUMPIFNOT                        R27 ; [+62]
      381 GETUPVAL                         R27 0
      382 CALL                             R27 0 1
      383 JUMPIFNOT                        R27 ; [+44]
      384 GETUPVAL                         R26 13
      385 GETUPVAL                         R27 18
      386 DUPTABLE                         R28 K80 [{"name", "style", "size", "variant", "LayoutOrder"}]
      387 GETUPVAL                         R29 19
      388 GETTABLEKS                       R29 R29 K81 ["Enums"]
      390 GETTABLEKS                       R29 R29 K82 ["IconName"]
      392 GETTABLEKS                       R29 R29 K83 ["TriangleExclamation"]
      394 SETTABLEKS                       R29 R28 K76 ["name"]
      396 GETTABLEKS                       R29 R1 K84 ["Color"]
      398 GETTABLEKS                       R29 R29 K85 ["System"]
      400 GETTABLEKS                       R29 R29 K86 ["Warning"]
      402 SETTABLEKS                       R29 R28 K77 ["style"]
      404 GETUPVAL                         R29 19
      405 GETTABLEKS                       R29 R29 K81 ["Enums"]
      407 GETTABLEKS                       R29 R29 K87 ["IconSize"]
      409 GETTABLEKS                       R29 R29 K88 ["Medium"]
      411 SETTABLEKS                       R29 R28 K78 ["size"]
      413 GETUPVAL                         R29 19
      414 GETTABLEKS                       R29 R29 K81 ["Enums"]
      416 GETTABLEKS                       R29 R29 K89 ["IconVariant"]
      418 GETTABLEKS                       R29 R29 K90 ["Filled"]
      420 SETTABLEKS                       R29 R28 K79 ["variant"]
      422 MOVE                             R29 R13
      423 CALL                             R29 0 1
      424 SETTABLEKS                       R29 R28 K68 ["LayoutOrder"]
      426 CALL                             R26 2 1
      427 JUMP                             ; [+16]
      428 GETUPVAL                         R26 13
      429 GETUPVAL                         R27 20
      430 DUPTABLE                         R28 K91 [{"tag", "Image", "LayoutOrder"}]
      431 LOADK                            R29 K92 ["size-500-500 content-system-warning"]
      432 SETTABLEKS                       R29 R28 K67 ["tag"]
      434 LOADK                            R29 K93 ["icons/status/warning"]
      435 SETTABLEKS                       R29 R28 K47 ["Image"]
      437 MOVE                             R29 R13
      438 CALL                             R29 0 1
      439 SETTABLEKS                       R29 R28 K68 ["LayoutOrder"]
      441 CALL                             R26 2 1
      442 JUMP                             ; [+1]
      443 LOADNIL                          R26
      444 SETTABLEKS                       R26 R25 K71 ["StatusIcon"]
      446 GETUPVAL                         R26 13
      447 GETUPVAL                         R27 21
      448 DUPTABLE                         R28 K94 [{"tag", "Text", "LayoutOrder"}]
      449 LOADK                            R29 K95 ["size-0-0 auto-xy text-label-small content-default"]
      450 SETTABLEKS                       R29 R28 K67 ["tag"]
      452 SETTABLEKS                       R11 R28 K72 ["Text"]
      454 MOVE                             R29 R13
      455 CALL                             R29 0 1
      456 SETTABLEKS                       R29 R28 K68 ["LayoutOrder"]
      458 DUPTABLE                         R29 K97 [{"Shimmer"}]
      459 MOVE                             R30 R2
      460 JUMPIFNOT                        R30 ; [+3]
      461 GETUPVAL                         R30 13
      462 GETUPVAL                         R31 22
      463 CALL                             R30 1 1
      464 SETTABLEKS                       R30 R29 K96 ["Shimmer"]
      466 CALL                             R26 3 1
      467 SETTABLEKS                       R26 R25 K72 ["Text"]
      469 MOVE                             R26 R12
      470 JUMPIFNOT                        R26 ; [+56]
      471 GETUPVAL                         R26 13
      472 GETUPVAL                         R27 16
      473 DUPTABLE                         R28 K69 [{"tag", "LayoutOrder"}]
      474 LOADK                            R29 K98 ["auto-xy align-x-left align-y-center"]
      475 SETTABLEKS                       R29 R28 K67 ["tag"]
      477 MOVE                             R29 R13
      478 CALL                             R29 0 1
      479 SETTABLEKS                       R29 R28 K68 ["LayoutOrder"]
      481 DUPTABLE                         R29 K100 [{"AssetLink"}]
      482 GETUPVAL                         R30 13
      483 GETUPVAL                         R31 23
      484 DUPTABLE                         R32 K106 [{"text", "leading", "onActivated", "isDisabled", "isChecked", "size", "LayoutOrder"}]
      485 GETTABLEKS                       R33 R0 K18 ["displayName"]
      487 SETTABLEKS                       R33 R32 K101 ["text"]
      489 GETTABLEKS                       R33 R8 K47 ["Image"]
      491 SETTABLEKS                       R33 R32 K102 ["leading"]
      493 GETTABLEKS                       R33 R0 K107 ["onChipClicked"]
      495 JUMPIF                           R33 ; [+1]
      496 GETUPVAL                         R33 24
      497 SETTABLEKS                       R33 R32 K103 ["onActivated"]
      499 GETTABLEKS                       R34 R0 K107 ["onChipClicked"]
      501 JUMPIFEQKNIL                     R34 ; [+2]
      503 LOADB                            R33 0 +1
      504 LOADB                            R33 1
      505 SETTABLEKS                       R33 R32 K104 ["isDisabled"]
      507 LOADB                            R33 0
      508 SETTABLEKS                       R33 R32 K105 ["isChecked"]
      510 GETUPVAL                         R33 19
      511 GETTABLEKS                       R33 R33 K81 ["Enums"]
      513 GETTABLEKS                       R33 R33 K108 ["ChipSize"]
      515 GETTABLEKS                       R33 R33 K109 ["Small"]
      517 SETTABLEKS                       R33 R32 K78 ["size"]
      519 MOVE                             R33 R13
      520 CALL                             R33 0 1
      521 SETTABLEKS                       R33 R32 K68 ["LayoutOrder"]
      523 CALL                             R30 2 1
      524 SETTABLEKS                       R30 R29 K99 ["AssetLink"]
      526 CALL                             R26 3 1
      527 SETTABLEKS                       R26 R25 K73 ["ChipArea"]
      529 MOVE                             R26 R10
      530 JUMPIFNOT                        R26 ; [+116]
      531 GETUPVAL                         R26 13
      532 GETUPVAL                         R27 16
      533 DUPTABLE                         R28 K69 [{"tag", "LayoutOrder"}]
      534 LOADK                            R29 K110 ["row size-0-0 auto-xy align-y-center gap-xsmall padding-top-xxsmall"]
      535 SETTABLEKS                       R29 R28 K67 ["tag"]
      537 MOVE                             R29 R13
      538 CALL                             R29 0 1
      539 SETTABLEKS                       R29 R28 K68 ["LayoutOrder"]
      541 DUPTABLE                         R29 K115 [{"GenerationStage", "ExpectedTime", "TakingLonger", "PreviewErrorExtra"}]
      542 MOVE                             R30 R2
      543 JUMPIFNOT                        R30 ; [+23]
      544 GETTABLEKS                       R30 R0 K6 ["generationStage"]
      546 JUMPIFNOT                        R30 ; [+20]
      547 GETUPVAL                         R30 13
      548 GETUPVAL                         R31 21
      549 DUPTABLE                         R32 K94 [{"tag", "Text", "LayoutOrder"}]
      550 LOADK                            R33 K116 ["size-0-0 auto-xy text-caption-small content-muted"]
      551 SETTABLEKS                       R33 R32 K67 ["tag"]
      553 LOADK                            R34 K117 ["(%*)"]
      554 GETTABLEKS                       R36 R0 K6 ["generationStage"]
      556 NAMECALL                         R34 R34 K19 ["format"]
      558 CALL                             R34 2 1
      559 MOVE                             R33 R34
      560 SETTABLEKS                       R33 R32 K72 ["Text"]
      562 MOVE                             R33 R13
      563 CALL                             R33 0 1
      564 SETTABLEKS                       R33 R32 K68 ["LayoutOrder"]
      566 CALL                             R30 2 1
      567 SETTABLEKS                       R30 R29 K111 ["GenerationStage"]
      569 MOVE                             R30 R2
      570 JUMPIFNOT                        R30 ; [+21]
      571 NOT                              R30 R6
      572 JUMPIFNOT                        R30 ; [+19]
      573 GETUPVAL                         R30 13
      574 GETUPVAL                         R31 21
      575 DUPTABLE                         R32 K94 [{"tag", "Text", "LayoutOrder"}]
      576 LOADK                            R33 K116 ["size-0-0 auto-xy text-caption-small content-muted"]
      577 SETTABLEKS                       R33 R32 K67 ["tag"]
      579 LOADK                            R34 K118 ["%*"]
      580 MOVE                             R36 R14
      581 NAMECALL                         R34 R34 K19 ["format"]
      583 CALL                             R34 2 1
      584 MOVE                             R33 R34
      585 SETTABLEKS                       R33 R32 K72 ["Text"]
      587 MOVE                             R33 R13
      588 CALL                             R33 0 1
      589 SETTABLEKS                       R33 R32 K68 ["LayoutOrder"]
      591 CALL                             R30 2 1
      592 SETTABLEKS                       R30 R29 K112 ["ExpectedTime"]
      594 MOVE                             R30 R2
      595 JUMPIFNOT                        R30 ; [+18]
      596 MOVE                             R30 R6
      597 JUMPIFNOT                        R30 ; [+16]
      598 GETUPVAL                         R30 13
      599 GETUPVAL                         R31 21
      600 DUPTABLE                         R32 K94 [{"tag", "Text", "LayoutOrder"}]
      601 LOADK                            R33 K116 ["size-0-0 auto-xy text-caption-small content-muted"]
      602 SETTABLEKS                       R33 R32 K67 ["tag"]
      604 GETUPVAL                         R33 8
      605 GETTABLEKS                       R33 R33 K113 ["TakingLonger"]
      607 SETTABLEKS                       R33 R32 K72 ["Text"]
      609 MOVE                             R33 R13
      610 CALL                             R33 0 1
      611 SETTABLEKS                       R33 R32 K68 ["LayoutOrder"]
      613 CALL                             R30 2 1
      614 SETTABLEKS                       R30 R29 K113 ["TakingLonger"]
      616 NOT                              R30 R2
      617 JUMPIFNOT                        R30 ; [+26]
      618 GETTABLEKS                       R30 R7 K15 ["exists"]
      620 JUMPIFNOT                        R30 ; [+23]
      621 JUMPIF                           R4 ; [+2]
      622 MOVE                             R30 R5
      623 JUMPIFNOT                        R30 ; [+20]
      624 MOVE                             R30 R9
      625 JUMPIFNOT                        R30 ; [+18]
      626 GETUPVAL                         R30 13
      627 GETUPVAL                         R31 21
      628 DUPTABLE                         R32 K120 [{"tag", "Text", "TextWrapped", "LayoutOrder"}]
      629 LOADK                            R33 K121 ["size-0-0 auto-xy text-caption-small content-muted text-wrap"]
      630 SETTABLEKS                       R33 R32 K67 ["tag"]
      632 GETTABLEKS                       R33 R0 K10 ["previewErrorMessage"]
      634 SETTABLEKS                       R33 R32 K72 ["Text"]
      636 LOADB                            R33 1
      637 SETTABLEKS                       R33 R32 K119 ["TextWrapped"]
      639 MOVE                             R33 R13
      640 CALL                             R33 0 1
      641 SETTABLEKS                       R33 R32 K68 ["LayoutOrder"]
      643 CALL                             R30 2 1
      644 SETTABLEKS                       R30 R29 K114 ["PreviewErrorExtra"]
      646 CALL                             R26 3 1
      647 SETTABLEKS                       R26 R25 K74 ["StageInfo"]
      649 CALL                             R22 3 1
      650 SETTABLEKS                       R22 R21 K65 ["HeaderContent"]
      652 SETTABLEKS                       R21 R20 K62 ["headerChildren"]
      654 SETTABLEKS                       R16 R20 K63 ["persistChildren"]
      656 MOVE                             R21 R0
      657 CALL                             R19 2 1
      658 DUPTABLE                         R20 K125 [{"Preview", "PreloadTray", "RetryRow"}]
      659 JUMPIF                           R4 ; [+1]
      660 JUMPIFNOT                        R5 ; [+125]
      661 GETTABLEKS                       R22 R7 K15 ["exists"]
      663 JUMPIF                           R22 ; [+122]
      664 GETUPVAL                         R21 13
      665 GETUPVAL                         R22 16
      666 DUPTABLE                         R23 K126 [{"tag", "Size", "LayoutOrder"}]
      667 LOADK                            R24 K127 ["col size-full-0 radius-small align-x-center align-y-center bg-shift-200 gap-medium padding-large"]
      668 SETTABLEKS                       R24 R23 K67 ["tag"]
      670 GETIMPORT                        R24 K129 [UDim2.new]
      672 LOADN                            R25 1
      673 LOADN                            R26 0
      674 LOADN                            R27 0
      675 GETUPVAL                         R28 25
      676 CALL                             R24 4 1
      677 SETTABLEKS                       R24 R23 K49 ["Size"]
      679 MOVE                             R24 R13
      680 CALL                             R24 0 1
      681 SETTABLEKS                       R24 R23 K68 ["LayoutOrder"]
      683 DUPTABLE                         R24 K132 [{"ErrorIcon", "ErrorText"}]
      684 GETUPVAL                         R26 0
      685 CALL                             R26 0 1
      686 JUMPIFNOT                        R26 ; [+35]
      687 GETUPVAL                         R25 13
      688 GETUPVAL                         R26 18
      689 DUPTABLE                         R27 K133 [{"name", "style", "size", "LayoutOrder"}]
      690 GETUPVAL                         R28 19
      691 GETTABLEKS                       R28 R28 K81 ["Enums"]
      693 GETTABLEKS                       R28 R28 K82 ["IconName"]
      695 GETTABLEKS                       R28 R28 K83 ["TriangleExclamation"]
      697 SETTABLEKS                       R28 R27 K76 ["name"]
      699 GETTABLEKS                       R28 R1 K84 ["Color"]
      701 GETTABLEKS                       R28 R28 K85 ["System"]
      703 GETTABLEKS                       R28 R28 K86 ["Warning"]
      705 SETTABLEKS                       R28 R27 K77 ["style"]
      707 GETUPVAL                         R28 19
      708 GETTABLEKS                       R28 R28 K81 ["Enums"]
      710 GETTABLEKS                       R28 R28 K87 ["IconSize"]
      712 GETTABLEKS                       R28 R28 K88 ["Medium"]
      714 SETTABLEKS                       R28 R27 K78 ["size"]
      716 MOVE                             R28 R13
      717 CALL                             R28 0 1
      718 SETTABLEKS                       R28 R27 K68 ["LayoutOrder"]
      720 CALL                             R25 2 1
      721 JUMP                             ; [+14]
      722 GETUPVAL                         R25 13
      723 GETUPVAL                         R26 20
      724 DUPTABLE                         R27 K91 [{"tag", "Image", "LayoutOrder"}]
      725 LOADK                            R28 K92 ["size-500-500 content-system-warning"]
      726 SETTABLEKS                       R28 R27 K67 ["tag"]
      728 LOADK                            R28 K134 ["icons/status/error_large"]
      729 SETTABLEKS                       R28 R27 K47 ["Image"]
      731 MOVE                             R28 R13
      732 CALL                             R28 0 1
      733 SETTABLEKS                       R28 R27 K68 ["LayoutOrder"]
      735 CALL                             R25 2 1
      736 SETTABLEKS                       R25 R24 K130 ["ErrorIcon"]
      738 GETUPVAL                         R25 13
      739 GETUPVAL                         R26 21
      740 DUPTABLE                         R27 K135 [{"tag", "TextWrapped", "Text", "LayoutOrder"}]
      741 LOADK                            R28 K136 ["size-full-0 auto-y text-label-small content-muted text-align-x-center"]
      742 SETTABLEKS                       R28 R27 K67 ["tag"]
      744 LOADB                            R28 1
      745 SETTABLEKS                       R28 R27 K119 ["TextWrapped"]
      747 JUMPIFNOT                        R5 ; [+4]
      748 GETUPVAL                         R28 8
      749 GETTABLEKS                       R28 R28 K20 ["GenerationCancelled"]
      751 JUMP                             ; [+23]
      752 GETTABLEKS                       R29 R0 K10 ["previewErrorMessage"]
      754 JUMPIFNOT                        R29 ; [+17]
      755 GETTABLEKS                       R30 R0 K10 ["previewErrorMessage"]
      757 LENGTH                           R29 R30
      758 LOADN                            R30 0
      759 JUMPIFNOTLT                      R30 R29 ; [+12]
      761 LOADK                            R29 K137 ["%*\n\n%*"]
      762 GETUPVAL                         R31 8
      763 GETTABLEKS                       R31 R31 K21 ["GenerationFailed"]
      765 GETTABLEKS                       R32 R0 K10 ["previewErrorMessage"]
      767 NAMECALL                         R29 R29 K19 ["format"]
      769 CALL                             R29 3 1
      770 MOVE                             R28 R29
      771 JUMP                             ; [+3]
      772 GETUPVAL                         R28 8
      773 GETTABLEKS                       R28 R28 K21 ["GenerationFailed"]
      775 SETTABLEKS                       R28 R27 K72 ["Text"]
      777 MOVE                             R28 R13
      778 CALL                             R28 0 1
      779 SETTABLEKS                       R28 R27 K68 ["LayoutOrder"]
      781 CALL                             R25 2 1
      782 SETTABLEKS                       R25 R24 K131 ["ErrorText"]
      784 CALL                             R21 3 1
      785 JUMP                             ; [+212]
      786 GETTABLEKS                       R22 R7 K15 ["exists"]
      788 JUMPIF                           R22 ; [+27]
      789 GETUPVAL                         R21 13
      790 GETUPVAL                         R22 26
      791 DUPTABLE                         R23 K139 [{"Size", "radius", "LayoutOrder"}]
      792 GETIMPORT                        R24 K129 [UDim2.new]
      794 LOADN                            R25 1
      795 LOADN                            R26 0
      796 LOADN                            R27 0
      797 GETUPVAL                         R28 25
      798 CALL                             R24 4 1
      799 SETTABLEKS                       R24 R23 K49 ["Size"]
      801 GETUPVAL                         R24 19
      802 GETTABLEKS                       R24 R24 K81 ["Enums"]
      804 GETTABLEKS                       R24 R24 K140 ["Radius"]
      806 GETTABLEKS                       R24 R24 K109 ["Small"]
      808 SETTABLEKS                       R24 R23 K138 ["radius"]
      810 MOVE                             R24 R13
      811 CALL                             R24 0 1
      812 SETTABLEKS                       R24 R23 K68 ["LayoutOrder"]
      814 CALL                             R21 2 1
      815 JUMP                             ; [+182]
      816 GETUPVAL                         R21 13
      817 GETUPVAL                         R22 16
      818 DUPTABLE                         R23 K126 [{"tag", "Size", "LayoutOrder"}]
      819 LOADK                            R24 K141 ["col size-full-0 radius-small bg-shift-200 padding-x-medium"]
      820 SETTABLEKS                       R24 R23 K67 ["tag"]
      822 GETIMPORT                        R24 K129 [UDim2.new]
      824 LOADN                            R25 1
      825 LOADN                            R26 0
      826 LOADN                            R27 0
      827 GETUPVAL                         R28 25
      828 CALL                             R24 4 1
      829 SETTABLEKS                       R24 R23 K49 ["Size"]
      831 MOVE                             R24 R13
      832 CALL                             R24 0 1
      833 SETTABLEKS                       R24 R23 K68 ["LayoutOrder"]
      835 DUPTABLE                         R24 K145 [{"TopGutter", "PreviewRow", "BottomGutter"}]
      836 GETUPVAL                         R25 13
      837 GETUPVAL                         R26 16
      838 DUPTABLE                         R27 K146 [{"Size", "LayoutOrder"}]
      839 GETIMPORT                        R28 K129 [UDim2.new]
      841 LOADN                            R29 1
      842 LOADN                            R30 0
      843 LOADN                            R31 0
      844 GETUPVAL                         R32 27
      845 CALL                             R28 4 1
      846 SETTABLEKS                       R28 R27 K49 ["Size"]
      848 MOVE                             R28 R13
      849 CALL                             R28 0 1
      850 SETTABLEKS                       R28 R27 K68 ["LayoutOrder"]
      852 CALL                             R25 2 1
      853 SETTABLEKS                       R25 R24 K142 ["TopGutter"]
      855 GETUPVAL                         R25 13
      856 GETUPVAL                         R26 16
      857 DUPTABLE                         R27 K126 [{"tag", "Size", "LayoutOrder"}]
      858 LOADK                            R28 K147 ["row size-full-0 align-x-center align-y-center flex-x-between gap-xsmall"]
      859 SETTABLEKS                       R28 R27 K67 ["tag"]
      861 GETIMPORT                        R28 K129 [UDim2.new]
      863 LOADN                            R29 1
      864 LOADN                            R30 0
      865 LOADN                            R31 0
      866 GETUPVAL                         R33 25
      867 LOADN                            R35 2
      868 GETUPVAL                         R36 27
      869 MUL                              R34 R35 R36
      870 SUB                              R32 R33 R34
      871 CALL                             R28 4 1
      872 SETTABLEKS                       R28 R27 K49 ["Size"]
      874 MOVE                             R28 R13
      875 CALL                             R28 0 1
      876 SETTABLEKS                       R28 R27 K68 ["LayoutOrder"]
      878 DUPTABLE                         R28 K151 [{"LastPreview", "PreviewImage", "NextPreview"}]
      879 GETUPVAL                         R29 13
      880 GETUPVAL                         R30 28
      881 DUPTABLE                         R31 K153 [{"icon", "size", "onActivated", "LayoutOrder"}]
      882 GETUPVAL                         R32 19
      883 GETTABLEKS                       R32 R32 K81 ["Enums"]
      885 GETTABLEKS                       R32 R32 K82 ["IconName"]
      887 GETTABLEKS                       R32 R32 K154 ["ChevronLargeLeft"]
      889 SETTABLEKS                       R32 R31 K152 ["icon"]
      891 GETUPVAL                         R32 19
      892 GETTABLEKS                       R32 R32 K81 ["Enums"]
      894 GETTABLEKS                       R32 R32 K155 ["InputSize"]
      896 GETTABLEKS                       R32 R32 K109 ["Small"]
      898 SETTABLEKS                       R32 R31 K78 ["size"]
      900 GETTABLEKS                       R32 R7 K156 ["decrement"]
      902 SETTABLEKS                       R32 R31 K103 ["onActivated"]
      904 MOVE                             R32 R13
      905 CALL                             R32 0 1
      906 SETTABLEKS                       R32 R31 K68 ["LayoutOrder"]
      908 CALL                             R29 2 1
      909 SETTABLEKS                       R29 R28 K148 ["LastPreview"]
      911 GETUPVAL                         R29 13
      912 GETUPVAL                         R30 20
      913 DUPTABLE                         R31 K159 [{"tag", "Image", "BackgroundColor3", "BackgroundTransparency", "ScaleType", "LayoutOrder"}]
      914 LOADK                            R32 K160 ["size-0-full fill radius-small"]
      915 SETTABLEKS                       R32 R31 K67 ["tag"]
      917 GETTABLEKS                       R32 R7 K161 ["current"]
      919 SETTABLEKS                       R32 R31 K47 ["Image"]
      921 GETIMPORT                        R32 K164 [Color3.fromRGB]
      923 LOADN                            R33 0
      924 LOADN                            R34 0
      925 LOADN                            R35 0
      926 CALL                             R32 3 1
      927 SETTABLEKS                       R32 R31 K157 ["BackgroundColor3"]
      929 LOADN                            R32 0
      930 SETTABLEKS                       R32 R31 K46 ["BackgroundTransparency"]
      932 GETIMPORT                        R32 K167 [Enum.ScaleType.Fit]
      934 SETTABLEKS                       R32 R31 K158 ["ScaleType"]
      936 MOVE                             R32 R13
      937 CALL                             R32 0 1
      938 SETTABLEKS                       R32 R31 K68 ["LayoutOrder"]
      940 CALL                             R29 2 1
      941 SETTABLEKS                       R29 R28 K149 ["PreviewImage"]
      943 GETUPVAL                         R29 13
      944 GETUPVAL                         R30 28
      945 DUPTABLE                         R31 K153 [{"icon", "size", "onActivated", "LayoutOrder"}]
      946 GETUPVAL                         R32 19
      947 GETTABLEKS                       R32 R32 K81 ["Enums"]
      949 GETTABLEKS                       R32 R32 K82 ["IconName"]
      951 GETTABLEKS                       R32 R32 K168 ["ChevronLargeRight"]
      953 SETTABLEKS                       R32 R31 K152 ["icon"]
      955 GETUPVAL                         R32 19
      956 GETTABLEKS                       R32 R32 K81 ["Enums"]
      958 GETTABLEKS                       R32 R32 K155 ["InputSize"]
      960 GETTABLEKS                       R32 R32 K109 ["Small"]
      962 SETTABLEKS                       R32 R31 K78 ["size"]
      964 GETTABLEKS                       R32 R7 K169 ["increment"]
      966 SETTABLEKS                       R32 R31 K103 ["onActivated"]
      968 MOVE                             R32 R13
      969 CALL                             R32 0 1
      970 SETTABLEKS                       R32 R31 K68 ["LayoutOrder"]
      972 CALL                             R29 2 1
      973 SETTABLEKS                       R29 R28 K150 ["NextPreview"]
      975 CALL                             R25 3 1
      976 SETTABLEKS                       R25 R24 K143 ["PreviewRow"]
      978 GETUPVAL                         R25 13
      979 GETUPVAL                         R26 16
      980 DUPTABLE                         R27 K146 [{"Size", "LayoutOrder"}]
      981 GETIMPORT                        R28 K129 [UDim2.new]
      983 LOADN                            R29 1
      984 LOADN                            R30 0
      985 LOADN                            R31 0
      986 GETUPVAL                         R32 27
      987 CALL                             R28 4 1
      988 SETTABLEKS                       R28 R27 K49 ["Size"]
      990 MOVE                             R28 R13
      991 CALL                             R28 0 1
      992 SETTABLEKS                       R28 R27 K68 ["LayoutOrder"]
      994 CALL                             R25 2 1
      995 SETTABLEKS                       R25 R24 K144 ["BottomGutter"]
      997 CALL                             R21 3 1
      998 SETTABLEKS                       R21 R20 K122 ["Preview"]
     1000 SETTABLEKS                       R15 R20 K123 ["PreloadTray"]
     1002 GETTABLEKS                       R21 R0 K170 ["retryInfo"]
     1004 JUMPIFNOT                        R21 ; [+9]
     1005 GETUPVAL                         R21 29
     1006 DUPTABLE                         R22 K172 [{"retryInfo", "nextOrder"}]
     1007 GETTABLEKS                       R23 R0 K170 ["retryInfo"]
     1009 SETTABLEKS                       R23 R22 K170 ["retryInfo"]
     1011 SETTABLEKS                       R13 R22 K171 ["nextOrder"]
     1013 CALL                             R21 1 1
     1014 SETTABLEKS                       R21 R20 K124 ["RetryRow"]
     1016 CALL                             R17 3 -1
     1017 RETURN                           R17 -1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 CALL                             R2 0 1
        4 GETUPVAL                         R4 2
        5 GETTABLEKS                       R5 R0 K0 ["generationErrorType"]
        7 GETTABLE                         R3 R4 R5
        8 JUMPIF                           R3 ; [+1]
        9 GETUPVAL                         R3 3
       10 GETUPVAL                         R4 4
       11 CALL                             R4 0 1
       12 JUMPIFNOT                        R4 ; [+8]
       13 GETUPVAL                         R6 5
       14 GETTABLEKS                       R7 R0 K0 ["generationErrorType"]
       16 GETTABLE                         R5 R6 R7
       17 JUMPIFEQKB                       R5 TRUE ; [+2]
       19 LOADB                            R4 0 +1
       20 LOADB                            R4 1
       21 GETUPVAL                         R6 4
       22 CALL                             R6 0 1
       23 JUMPIFNOT                        R6 ; [+5]
       24 JUMPIFNOT                        R4 ; [+4]
       25 GETUPVAL                         R5 6
       26 GETTABLEKS                       R5 R5 K1 ["GenerationCancelled"]
       28 JUMP                             ; [+3]
       29 GETUPVAL                         R5 7
       30 GETTABLEKS                       R5 R5 K2 ["GenerationFailed"]
       32 GETUPVAL                         R7 4
       33 CALL                             R7 0 1
       34 JUMPIFNOT                        R7 ; [+8]
       35 JUMPIFNOT                        R4 ; [+7]
       36 GETTABLEKS                       R6 R1 K3 ["Color"]
       38 GETTABLEKS                       R6 R6 K4 ["System"]
       40 GETTABLEKS                       R6 R6 K5 ["Warning"]
       42 JUMP                             ; [+6]
       43 GETTABLEKS                       R6 R1 K3 ["Color"]
       45 GETTABLEKS                       R6 R6 K4 ["System"]
       47 GETTABLEKS                       R6 R6 K6 ["Alert"]
       49 GETTABLEKS                       R7 R0 K7 ["generationErrorMessage"]
       51 GETUPVAL                         R8 8
       52 GETUPVAL                         R9 9
       53 GETUPVAL                         R10 10
       54 GETTABLEKS                       R10 R10 K8 ["assign"]
       56 DUPTABLE                         R11 K11 [{"canToggle", "headerChildren"}]
       57 LOADB                            R12 1
       58 SETTABLEKS                       R12 R11 K9 ["canToggle"]
       60 DUPTABLE                         R12 K14 [{"StatusIcon", "Text"}]
       61 GETUPVAL                         R14 11
       62 CALL                             R14 0 1
       63 JUMPIFNOT                        R14 ; [+38]
       64 GETUPVAL                         R13 8
       65 GETUPVAL                         R14 12
       66 DUPTABLE                         R15 K20 [{"name", "style", "size", "variant", "LayoutOrder"}]
       67 GETUPVAL                         R16 13
       68 GETTABLEKS                       R16 R16 K21 ["Enums"]
       70 GETTABLEKS                       R16 R16 K22 ["IconName"]
       72 GETTABLEKS                       R16 R16 K23 ["TriangleExclamation"]
       74 SETTABLEKS                       R16 R15 K15 ["name"]
       76 SETTABLEKS                       R6 R15 K16 ["style"]
       78 GETUPVAL                         R16 13
       79 GETTABLEKS                       R16 R16 K21 ["Enums"]
       81 GETTABLEKS                       R16 R16 K24 ["IconSize"]
       83 GETTABLEKS                       R16 R16 K25 ["Small"]
       85 SETTABLEKS                       R16 R15 K17 ["size"]
       87 GETUPVAL                         R16 13
       88 GETTABLEKS                       R16 R16 K21 ["Enums"]
       90 GETTABLEKS                       R16 R16 K26 ["IconVariant"]
       92 GETTABLEKS                       R16 R16 K27 ["Filled"]
       94 SETTABLEKS                       R16 R15 K18 ["variant"]
       96 MOVE                             R16 R2
       97 CALL                             R16 0 1
       98 SETTABLEKS                       R16 R15 K19 ["LayoutOrder"]
      100 CALL                             R13 2 1
      101 JUMP                             ; [+22]
      102 GETUPVAL                         R13 8
      103 GETUPVAL                         R14 12
      104 DUPTABLE                         R15 K28 [{"name", "size", "style", "LayoutOrder"}]
      105 LOADK                            R16 K29 ["icons/status/warning"]
      106 SETTABLEKS                       R16 R15 K15 ["name"]
      108 GETUPVAL                         R16 13
      109 GETTABLEKS                       R16 R16 K21 ["Enums"]
      111 GETTABLEKS                       R16 R16 K24 ["IconSize"]
      113 GETTABLEKS                       R16 R16 K25 ["Small"]
      115 SETTABLEKS                       R16 R15 K17 ["size"]
      117 SETTABLEKS                       R6 R15 K16 ["style"]
      119 MOVE                             R16 R2
      120 CALL                             R16 0 1
      121 SETTABLEKS                       R16 R15 K19 ["LayoutOrder"]
      123 CALL                             R13 2 1
      124 SETTABLEKS                       R13 R12 K12 ["StatusIcon"]
      126 GETUPVAL                         R13 8
      127 GETUPVAL                         R14 14
      128 DUPTABLE                         R15 K31 [{"tag", "Text", "LayoutOrder"}]
      129 LOADK                            R16 K32 ["size-0-full auto-x text-label-small content-default text-truncate-end"]
      130 SETTABLEKS                       R16 R15 K30 ["tag"]
      132 SETTABLEKS                       R5 R15 K13 ["Text"]
      134 MOVE                             R16 R2
      135 CALL                             R16 0 1
      136 SETTABLEKS                       R16 R15 K19 ["LayoutOrder"]
      138 CALL                             R13 2 1
      139 SETTABLEKS                       R13 R12 K13 ["Text"]
      141 SETTABLEKS                       R12 R11 K10 ["headerChildren"]
      143 MOVE                             R12 R0
      144 CALL                             R10 2 1
      145 DUPTABLE                         R11 K36 [{"TemplateMessage", "ErrorDetail", "RetryRow"}]
      146 GETUPVAL                         R12 8
      147 GETUPVAL                         R13 14
      148 DUPTABLE                         R14 K38 [{"tag", "Text", "TextWrapped", "LayoutOrder"}]
      149 LOADK                            R15 K39 ["size-full-0 auto-y text-body-small content-muted text-align-x-left"]
      150 SETTABLEKS                       R15 R14 K30 ["tag"]
      152 SETTABLEKS                       R3 R14 K13 ["Text"]
      154 LOADB                            R15 1
      155 SETTABLEKS                       R15 R14 K37 ["TextWrapped"]
      157 MOVE                             R15 R2
      158 CALL                             R15 0 1
      159 SETTABLEKS                       R15 R14 K19 ["LayoutOrder"]
      161 CALL                             R12 2 1
      162 SETTABLEKS                       R12 R11 K33 ["TemplateMessage"]
      164 MOVE                             R12 R7
      165 JUMPIFNOT                        R12 ; [+63]
      166 GETUPVAL                         R12 8
      167 GETUPVAL                         R13 15
      168 DUPTABLE                         R14 K40 [{"tag", "LayoutOrder"}]
      169 LOADK                            R15 K41 ["size-full-0 auto-y bg-shift-200 radius-small padding-small"]
      170 SETTABLEKS                       R15 R14 K30 ["tag"]
      172 MOVE                             R15 R2
      173 CALL                             R15 0 1
      174 SETTABLEKS                       R15 R14 K19 ["LayoutOrder"]
      176 DUPTABLE                         R15 K43 [{"ErrorText"}]
      177 GETUPVAL                         R16 8
      178 LOADK                            R17 K44 ["TextBox"]
      179 DUPTABLE                         R18 K54 [{"Text", "TextEditable", "ClearTextOnFocus", "TextWrapped", "TextXAlignment", "TextColor3", "FontFace", "TextSize", "Size", "AutomaticSize", "BackgroundTransparency"}]
      180 SETTABLEKS                       R7 R18 K13 ["Text"]
      182 LOADB                            R19 0
      183 SETTABLEKS                       R19 R18 K45 ["TextEditable"]
      185 LOADB                            R19 0
      186 SETTABLEKS                       R19 R18 K46 ["ClearTextOnFocus"]
      188 LOADB                            R19 1
      189 SETTABLEKS                       R19 R18 K37 ["TextWrapped"]
      191 GETIMPORT                        R19 K57 [Enum.TextXAlignment.Left]
      193 SETTABLEKS                       R19 R18 K47 ["TextXAlignment"]
      195 GETIMPORT                        R19 K60 [Color3.fromRGB]
      197 LOADN                            R20 138
      198 LOADN                            R21 180
      199 LOADN                            R22 220
      200 CALL                             R19 3 1
      201 SETTABLEKS                       R19 R18 K48 ["TextColor3"]
      203 GETUPVAL                         R19 16
      204 GETTABLEKS                       R19 R19 K61 ["CODE_FONT"]
      206 SETTABLEKS                       R19 R18 K49 ["FontFace"]
      208 LOADN                            R19 12
      209 SETTABLEKS                       R19 R18 K50 ["TextSize"]
      211 GETIMPORT                        R19 K64 [UDim2.fromScale]
      213 LOADN                            R20 1
      214 LOADN                            R21 0
      215 CALL                             R19 2 1
      216 SETTABLEKS                       R19 R18 K51 ["Size"]
      218 GETIMPORT                        R19 K66 [Enum.AutomaticSize.Y]
      220 SETTABLEKS                       R19 R18 K52 ["AutomaticSize"]
      222 LOADN                            R19 1
      223 SETTABLEKS                       R19 R18 K53 ["BackgroundTransparency"]
      225 CALL                             R16 2 1
      226 SETTABLEKS                       R16 R15 K42 ["ErrorText"]
      228 CALL                             R12 3 1
      229 SETTABLEKS                       R12 R11 K34 ["ErrorDetail"]
      231 GETTABLEKS                       R12 R0 K67 ["retryInfo"]
      233 JUMPIFNOT                        R12 ; [+9]
      234 GETUPVAL                         R12 17
      235 DUPTABLE                         R13 K69 [{"retryInfo", "nextOrder"}]
      236 GETTABLEKS                       R14 R0 K67 ["retryInfo"]
      238 SETTABLEKS                       R14 R13 K67 ["retryInfo"]
      240 SETTABLEKS                       R2 R13 K68 ["nextOrder"]
      242 CALL                             R12 1 1
      243 SETTABLEKS                       R12 R11 K35 ["RetryRow"]
      245 CALL                             R8 3 -1
      246 RETURN                           R8 -1

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["mode"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["ShowPreview"]
        5 JUMPIFNOTEQ                      R1 R2 ; [+6]
        7 GETUPVAL                         R1 1
        8 GETUPVAL                         R2 2
        9 MOVE                             R3 R0
       10 CALL                             R1 2 -1
       11 RETURN                           R1 -1
       12 GETTABLEKS                       R1 R0 K0 ["mode"]
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K2 ["GenerationError"]
       17 JUMPIFNOTEQ                      R1 R2 ; [+6]
       19 GETUPVAL                         R1 1
       20 GETUPVAL                         R2 3
       21 MOVE                             R3 R0
       22 CALL                             R1 2 -1
       23 RETURN                           R1 -1
       24 GETTABLEKS                       R1 R0 K0 ["mode"]
       26 GETUPVAL                         R2 0
       27 GETTABLEKS                       R2 R2 K3 ["Preparing"]
       29 JUMPIFEQ                         R1 R2 ; [+7]
       31 GETIMPORT                        R1 K5 [warn]
       33 LOADK                            R2 K6 ["Unsupported mode of PrimitiveGenContentWidget"]
       34 GETTABLEKS                       R3 R0 K0 ["mode"]
       36 CALL                             R1 2 0
       37 GETTABLEKS                       R1 R0 K7 ["toolResult"]
       39 JUMPIFNOT                        R1 ; [+4]
       40 GETTABLEKS                       R1 R0 K7 ["toolResult"]
       42 GETTABLEKS                       R1 R1 K8 ["isError"]
       44 GETUPVAL                         R2 4
       45 GETTABLEKS                       R2 R2 K9 ["join"]
       47 MOVE                             R3 R0
       48 DUPTABLE                         R4 K10 [{"isError"}]
       49 SETTABLEKS                       R1 R4 K8 ["isError"]
       51 CALL                             R2 2 1
       52 MOVE                             R0 R2
       53 GETUPVAL                         R2 1
       54 GETUPVAL                         R3 5
       55 MOVE                             R4 R0
       56 CALL                             R2 2 -1
       57 RETURN                           R2 -1

PROTO_13:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["FFlagAssistantMultipleChatPersistence is not enabled!"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 GETTABLEKS                       R1 R0 K3 ["mode"]
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K4 ["Preparing"]
       13 JUMPIFNOTEQ                      R1 R2 ; [+8]
       15 DUPTABLE                         R1 K5 [{"mode"}]
       16 GETUPVAL                         R2 1
       17 GETTABLEKS                       R2 R2 K4 ["Preparing"]
       19 SETTABLEKS                       R2 R1 K3 ["mode"]
       21 RETURN                           R1 1
       22 GETTABLEKS                       R1 R0 K6 ["retryInfo"]
       24 JUMPIFNOT                        R1 ; [+18]
       25 DUPTABLE                         R2 K11 [{"description", "onRetryText", "isRunning", "onRetryDismissText"}]
       26 GETTABLEKS                       R3 R1 K7 ["description"]
       28 SETTABLEKS                       R3 R2 K7 ["description"]
       30 GETTABLEKS                       R3 R1 K8 ["onRetryText"]
       32 SETTABLEKS                       R3 R2 K8 ["onRetryText"]
       34 GETTABLEKS                       R3 R1 K9 ["isRunning"]
       36 SETTABLEKS                       R3 R2 K9 ["isRunning"]
       38 GETTABLEKS                       R3 R1 K10 ["onRetryDismissText"]
       40 SETTABLEKS                       R3 R2 K10 ["onRetryDismissText"]
       42 JUMP                             ; [+1]
       43 LOADNIL                          R2
       44 GETTABLEKS                       R3 R0 K3 ["mode"]
       46 GETUPVAL                         R4 1
       47 GETTABLEKS                       R4 R4 K12 ["GenerationError"]
       49 JUMPIFNOTEQ                      R3 R4 ; [+18]
       51 DUPTABLE                         R3 K15 [{"mode", "generationErrorMessage", "generationErrorType", "retryInfo"}]
       52 GETUPVAL                         R4 1
       53 GETTABLEKS                       R4 R4 K12 ["GenerationError"]
       55 SETTABLEKS                       R4 R3 K3 ["mode"]
       57 GETTABLEKS                       R4 R0 K13 ["generationErrorMessage"]
       59 SETTABLEKS                       R4 R3 K13 ["generationErrorMessage"]
       61 GETTABLEKS                       R4 R0 K14 ["generationErrorType"]
       63 SETTABLEKS                       R4 R3 K14 ["generationErrorType"]
       65 SETTABLEKS                       R2 R3 K6 ["retryInfo"]
       67 RETURN                           R3 1
       68 DUPTABLE                         R3 K23 [{"mode", "name", "previewImages", "previewState", "previewErrorMessage", "generationStage", "generationId", "startTime", "retryInfo"}]
       69 GETUPVAL                         R4 1
       70 GETTABLEKS                       R4 R4 K24 ["ShowPreview"]
       72 SETTABLEKS                       R4 R3 K3 ["mode"]
       74 GETTABLEKS                       R4 R0 K16 ["name"]
       76 SETTABLEKS                       R4 R3 K16 ["name"]
       78 GETTABLEKS                       R4 R0 K17 ["previewImages"]
       80 SETTABLEKS                       R4 R3 K17 ["previewImages"]
       82 GETTABLEKS                       R4 R0 K18 ["previewState"]
       84 SETTABLEKS                       R4 R3 K18 ["previewState"]
       86 GETTABLEKS                       R4 R0 K19 ["previewErrorMessage"]
       88 SETTABLEKS                       R4 R3 K19 ["previewErrorMessage"]
       90 GETTABLEKS                       R4 R0 K20 ["generationStage"]
       92 SETTABLEKS                       R4 R3 K20 ["generationStage"]
       94 GETTABLEKS                       R4 R0 K21 ["generationId"]
       96 SETTABLEKS                       R4 R3 K21 ["generationId"]
       98 GETTABLEKS                       R4 R0 K22 ["startTime"]
      100 SETTABLEKS                       R4 R3 K22 ["startTime"]
      102 SETTABLEKS                       R2 R3 K6 ["retryInfo"]
      104 RETURN                           R3 1

PROTO_14:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        4 LOADK                            R4 K0 ["FFlagAssistantMultipleChatPersistence is not enabled!"]
        5 GETIMPORT                        R2 K2 [assert]
        7 CALL                             R2 2 0
        8 GETTABLEKS                       R2 R0 K3 ["mode"]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K4 ["Preparing"]
       13 JUMPIFNOTEQ                      R2 R3 ; [+19]
       15 DUPTABLE                         R2 K8 [{"type", "mode", "isError", "errorMessage"}]
       16 LOADK                            R3 K9 ["PrimitiveGen"]
       17 SETTABLEKS                       R3 R2 K5 ["type"]
       19 GETUPVAL                         R3 1
       20 GETTABLEKS                       R3 R3 K4 ["Preparing"]
       22 SETTABLEKS                       R3 R2 K3 ["mode"]
       24 GETTABLEKS                       R3 R0 K6 ["isError"]
       26 SETTABLEKS                       R3 R2 K6 ["isError"]
       28 GETTABLEKS                       R3 R0 K7 ["errorMessage"]
       30 SETTABLEKS                       R3 R2 K7 ["errorMessage"]
       32 RETURN                           R2 1
       33 GETTABLEKS                       R2 R0 K10 ["retryInfo"]
       35 JUMPIFNOT                        R2 ; [+32]
       36 DUPTABLE                         R3 K17 [{"description", "onRetryText", "onRetryClick", "isRunning", "onRetryDismissText", "onRetryDismissClick"}]
       37 GETTABLEKS                       R4 R2 K11 ["description"]
       39 SETTABLEKS                       R4 R3 K11 ["description"]
       41 GETTABLEKS                       R4 R2 K12 ["onRetryText"]
       43 SETTABLEKS                       R4 R3 K12 ["onRetryText"]
       45 GETUPVAL                         R4 2
       46 GETTABLEKS                       R4 R4 K18 ["createUnimplemented"]
       48 LOADK                            R5 K13 ["onRetryClick"]
       49 CALL                             R4 1 1
       50 SETTABLEKS                       R4 R3 K13 ["onRetryClick"]
       52 GETTABLEKS                       R4 R2 K14 ["isRunning"]
       54 SETTABLEKS                       R4 R3 K14 ["isRunning"]
       56 GETTABLEKS                       R4 R2 K15 ["onRetryDismissText"]
       58 SETTABLEKS                       R4 R3 K15 ["onRetryDismissText"]
       60 GETUPVAL                         R4 2
       61 GETTABLEKS                       R4 R4 K18 ["createUnimplemented"]
       63 LOADK                            R5 K16 ["onRetryDismissClick"]
       64 CALL                             R4 1 1
       65 SETTABLEKS                       R4 R3 K16 ["onRetryDismissClick"]
       67 JUMP                             ; [+1]
       68 LOADNIL                          R3
       69 GETTABLEKS                       R4 R0 K3 ["mode"]
       71 GETUPVAL                         R5 1
       72 GETTABLEKS                       R5 R5 K19 ["GenerationError"]
       74 JUMPIFNOTEQ                      R4 R5 ; [+22]
       76 DUPTABLE                         R4 K22 [{"type", "mode", "generationErrorMessage", "generationErrorType", "retryInfo"}]
       77 LOADK                            R5 K9 ["PrimitiveGen"]
       78 SETTABLEKS                       R5 R4 K5 ["type"]
       80 GETUPVAL                         R5 1
       81 GETTABLEKS                       R5 R5 K19 ["GenerationError"]
       83 SETTABLEKS                       R5 R4 K3 ["mode"]
       85 GETTABLEKS                       R5 R0 K20 ["generationErrorMessage"]
       87 SETTABLEKS                       R5 R4 K20 ["generationErrorMessage"]
       89 GETTABLEKS                       R6 R0 K21 ["generationErrorType"]
       91 ORK                              R5 R6 K23 ["General"]
       92 SETTABLEKS                       R5 R4 K21 ["generationErrorType"]
       94 SETTABLEKS                       R3 R4 K10 ["retryInfo"]
       96 RETURN                           R4 1
       97 GETTABLEKS                       R4 R0 K3 ["mode"]
       99 GETUPVAL                         R5 1
      100 GETTABLEKS                       R5 R5 K24 ["ShowPreview"]
      102 JUMPIFNOTEQ                      R4 R5 ; [+65]
      104 DUPTABLE                         R4 K36 [{"type", "mode", "expanded", "name", "displayName", "className", "previewImages", "previewState", "previewErrorMessage", "generationStage", "generationId", "startTime", "onChipClicked", "retryInfo"}]
      105 LOADK                            R5 K9 ["PrimitiveGen"]
      106 SETTABLEKS                       R5 R4 K5 ["type"]
      108 GETTABLEKS                       R5 R0 K3 ["mode"]
      110 SETTABLEKS                       R5 R4 K3 ["mode"]
      112 LOADB                            R5 0
      113 SETTABLEKS                       R5 R4 K25 ["expanded"]
      115 GETTABLEKS                       R6 R0 K26 ["name"]
      117 ORK                              R5 R6 K37 ["UNKNOWN"]
      118 SETTABLEKS                       R5 R4 K26 ["name"]
      120 GETTABLEKS                       R6 R0 K26 ["name"]
      122 ORK                              R5 R6 K37 ["UNKNOWN"]
      123 SETTABLEKS                       R5 R4 K27 ["displayName"]
      125 LOADNIL                          R5
      126 SETTABLEKS                       R5 R4 K28 ["className"]
      128 GETTABLEKS                       R5 R0 K29 ["previewImages"]
      130 SETTABLEKS                       R5 R4 K29 ["previewImages"]
      132 GETTABLEKS                       R5 R0 K30 ["previewState"]
      134 JUMPIF                           R5 ; [+3]
      135 GETUPVAL                         R5 3
      136 GETTABLEKS                       R5 R5 K38 ["Failed"]
      138 SETTABLEKS                       R5 R4 K30 ["previewState"]
      140 GETTABLEKS                       R5 R0 K31 ["previewErrorMessage"]
      142 SETTABLEKS                       R5 R4 K31 ["previewErrorMessage"]
      144 GETTABLEKS                       R5 R0 K32 ["generationStage"]
      146 SETTABLEKS                       R5 R4 K32 ["generationStage"]
      148 GETTABLEKS                       R6 R0 K33 ["generationId"]
      150 ORK                              R5 R6 K39 [""]
      151 SETTABLEKS                       R5 R4 K33 ["generationId"]
      153 GETTABLEKS                       R6 R0 K34 ["startTime"]
      155 ORK                              R5 R6 K40 [0]
      156 SETTABLEKS                       R5 R4 K34 ["startTime"]
      158 GETUPVAL                         R5 2
      159 GETTABLEKS                       R5 R5 K18 ["createUnimplemented"]
      161 LOADK                            R6 K35 ["onChipClicked"]
      162 CALL                             R5 1 1
      163 SETTABLEKS                       R5 R4 K35 ["onChipClicked"]
      165 SETTABLEKS                       R3 R4 K10 ["retryInfo"]
      167 RETURN                           R4 1
      168 LOADNIL                          R4
      169 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["Accordion"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["Dash"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Parent"]
       25 GETTABLEKS                       R4 R4 K10 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K8 ["Parent"]
       32 GETTABLEKS                       R5 R5 K11 ["React"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K8 ["Parent"]
       39 GETTABLEKS                       R6 R6 K12 ["ReactUtils"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K13 ["Util"]
       46 GETTABLEKS                       R7 R7 K14 ["Serializer"]
       48 GETTABLEKS                       R7 R7 K15 ["SerializerTypes"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K6 ["Components"]
       55 GETTABLEKS                       R8 R8 K16 ["ShimmerGradient"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K17 ["Resources"]
       62 GETTABLEKS                       R9 R9 K18 ["Localization"]
       64 GETTABLEKS                       R9 R9 K19 ["Translator"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETTABLEKS                       R10 R0 K20 ["Types"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R11 R0 K21 ["Hooks"]
       76 GETTABLEKS                       R11 R11 K22 ["useClassIcon"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K5 [require]
       81 GETTABLEKS                       R12 R0 K21 ["Hooks"]
       83 GETTABLEKS                       R12 R12 K23 ["useWrappingIndex"]
       85 CALL                             R11 1 1
       86 GETIMPORT                        R12 K5 [require]
       88 GETTABLEKS                       R13 R0 K24 ["Features"]
       90 GETTABLEKS                       R13 R13 K25 ["Gen3dUtils"]
       92 GETTABLEKS                       R13 R13 K26 ["Gen3dConstants"]
       94 CALL                             R12 1 1
       95 GETIMPORT                        R13 K5 [require]
       97 GETTABLEKS                       R14 R0 K24 ["Features"]
       99 GETTABLEKS                       R14 R14 K25 ["Gen3dUtils"]
      101 GETTABLEKS                       R14 R14 K27 ["ViewportPreviewUtils"]
      103 CALL                             R13 1 1
      104 GETIMPORT                        R14 K5 [require]
      106 GETTABLEKS                       R15 R0 K28 ["Flags"]
      108 GETTABLEKS                       R15 R15 K29 ["FFlagAssistantMultipleChatPersistence"]
      110 CALL                             R14 1 1
      111 GETIMPORT                        R15 K5 [require]
      113 GETTABLEKS                       R16 R0 K28 ["Flags"]
      115 GETTABLEKS                       R16 R16 K30 ["FFlagAssistantUseBuilderIcons"]
      117 CALL                             R15 1 1
      118 GETIMPORT                        R16 K5 [require]
      120 GETTABLEKS                       R17 R0 K28 ["Flags"]
      122 GETTABLEKS                       R17 R17 K31 ["FFlagPrimGenBetterErrorType"]
      124 CALL                             R16 1 1
      125 GETIMPORT                        R17 K5 [require]
      127 GETTABLEKS                       R18 R0 K28 ["Flags"]
      129 GETTABLEKS                       R18 R18 K32 ["FFlagPrimGenCarouselPreview"]
      131 CALL                             R17 1 1
      132 GETIMPORT                        R18 K5 [require]
      134 GETTABLEKS                       R19 R0 K28 ["Flags"]
      136 GETTABLEKS                       R19 R19 K33 ["FIntAssistantPrimitiveGenMaxConcurrentJobs"]
      138 CALL                             R18 1 1
      139 GETIMPORT                        R19 K5 [require]
      141 GETTABLEKS                       R20 R0 K28 ["Flags"]
      143 GETTABLEKS                       R20 R20 K34 ["FIntPrimGenLongRunThresholdSec"]
      145 CALL                             R19 1 1
      146 GETIMPORT                        R20 K5 [require]
      148 GETTABLEKS                       R21 R0 K28 ["Flags"]
      150 GETTABLEKS                       R21 R21 K35 ["FIntPrimGenTextMaxLength"]
      152 CALL                             R20 1 1
      153 GETIMPORT                        R21 K5 [require]
      155 GETTABLEKS                       R22 R0 K28 ["Flags"]
      157 GETTABLEKS                       R22 R22 K36 ["FIntPrimGenVerticalGutter"]
      159 CALL                             R21 1 1
      160 GETTABLEKS                       R22 R3 K37 ["Chip"]
      162 GETTABLEKS                       R23 R3 K38 ["Icon"]
      164 GETTABLEKS                       R24 R3 K39 ["Button"]
      166 GETTABLEKS                       R25 R3 K40 ["IconButton"]
      168 GETTABLEKS                       R26 R3 K41 ["Image"]
      170 GETTABLEKS                       R27 R3 K42 ["Skeleton"]
      172 GETTABLEKS                       R28 R3 K43 ["Text"]
      174 GETTABLEKS                       R29 R3 K44 ["View"]
      176 GETTABLEKS                       R30 R3 K21 ["Hooks"]
      178 GETTABLEKS                       R30 R30 K45 ["useTokens"]
      180 GETTABLEKS                       R31 R5 K46 ["createNextOrder"]
      182 GETTABLEKS                       R32 R4 K47 ["createElement"]
      184 GETTABLEKS                       R33 R12 K48 ["PREVIEW_HEIGHT"]
      186 MOVE                             R34 R21
      187 CALL                             R34 0 1
      188 MOVE                             R35 R19
      189 CALL                             R35 0 1
      190 MOVE                             R36 R20
      191 CALL                             R36 0 1
      192 DUPCLOSURE                       R37 K49 [PROTO_0]
      193 DUPCLOSURE                       R38 K50 [PROTO_1]
      194 CAPTURE                          VAL R36
      195 DUPTABLE                         R39 K55 [{"Generating", "Inserted", "Failed", "Cancelled"}]
      196 LOADK                            R40 K51 ["Generating"]
      197 SETTABLEKS                       R40 R39 K51 ["Generating"]
      199 LOADK                            R40 K52 ["Inserted"]
      200 SETTABLEKS                       R40 R39 K52 ["Inserted"]
      202 LOADK                            R40 K53 ["Failed"]
      203 SETTABLEKS                       R40 R39 K53 ["Failed"]
      205 LOADK                            R40 K54 ["Cancelled"]
      206 SETTABLEKS                       R40 R39 K54 ["Cancelled"]
      208 DUPTABLE                         R40 K59 [{"Preparing", "ShowPreview", "GenerationError"}]
      209 LOADK                            R41 K56 ["Preparing"]
      210 SETTABLEKS                       R41 R40 K56 ["Preparing"]
      212 LOADK                            R41 K57 ["ShowPreview"]
      213 SETTABLEKS                       R41 R40 K57 ["ShowPreview"]
      215 LOADK                            R41 K58 ["GenerationError"]
      216 SETTABLEKS                       R41 R40 K58 ["GenerationError"]
      218 DUPCLOSURE                       R41 K60 [PROTO_2]
      219 CAPTURE                          VAL R31
      220 CAPTURE                          VAL R32
      221 CAPTURE                          VAL R1
      222 DUPTABLE                         R42 K62 [{"Generating", "GenerationFailed"}]
      223 LOADK                            R45 K63 ["PrimitiveGen"]
      224 LOADK                            R46 K51 ["Generating"]
      225 NAMECALL                         R43 R8 K64 ["getText"]
      227 CALL                             R43 3 1
      228 SETTABLEKS                       R43 R42 K51 ["Generating"]
      230 LOADK                            R45 K63 ["PrimitiveGen"]
      231 LOADK                            R46 K61 ["GenerationFailed"]
      232 NAMECALL                         R43 R8 K64 ["getText"]
      234 CALL                             R43 3 1
      235 SETTABLEKS                       R43 R42 K61 ["GenerationFailed"]
      237 DUPCLOSURE                       R43 K65 [PROTO_3]
      238 CAPTURE                          VAL R40
      239 CAPTURE                          VAL R42
      240 CAPTURE                          VAL R31
      241 CAPTURE                          VAL R32
      242 CAPTURE                          VAL R41
      243 CAPTURE                          VAL R2
      244 CAPTURE                          VAL R28
      245 CAPTURE                          VAL R7
      246 DUPCLOSURE                       R44 K66 [PROTO_7]
      247 CAPTURE                          VAL R4
      248 CAPTURE                          VAL R35
      249 DUPCLOSURE                       R45 K67 [PROTO_8]
      250 CAPTURE                          VAL R17
      251 CAPTURE                          VAL R11
      252 CAPTURE                          VAL R13
      253 DUPTABLE                         R46 K71 [{"GeneratingPrefix", "Inserted", "GenerationCancelled", "GenerationFailed", "TakingLonger"}]
      254 LOADK                            R49 K63 ["PrimitiveGen"]
      255 LOADK                            R50 K68 ["GeneratingPrefix"]
      256 NAMECALL                         R47 R8 K64 ["getText"]
      258 CALL                             R47 3 1
      259 SETTABLEKS                       R47 R46 K68 ["GeneratingPrefix"]
      261 LOADK                            R49 K63 ["PrimitiveGen"]
      262 LOADK                            R50 K52 ["Inserted"]
      263 NAMECALL                         R47 R8 K64 ["getText"]
      265 CALL                             R47 3 1
      266 SETTABLEKS                       R47 R46 K52 ["Inserted"]
      268 LOADK                            R49 K63 ["PrimitiveGen"]
      269 LOADK                            R50 K69 ["GenerationCancelled"]
      270 NAMECALL                         R47 R8 K64 ["getText"]
      272 CALL                             R47 3 1
      273 SETTABLEKS                       R47 R46 K69 ["GenerationCancelled"]
      275 LOADK                            R49 K63 ["PrimitiveGen"]
      276 LOADK                            R50 K61 ["GenerationFailed"]
      277 NAMECALL                         R47 R8 K64 ["getText"]
      279 CALL                             R47 3 1
      280 SETTABLEKS                       R47 R46 K61 ["GenerationFailed"]
      282 LOADK                            R49 K63 ["PrimitiveGen"]
      283 LOADK                            R50 K70 ["TakingLonger"]
      284 NAMECALL                         R47 R8 K64 ["getText"]
      286 CALL                             R47 3 1
      287 SETTABLEKS                       R47 R46 K70 ["TakingLonger"]
      289 GETTABLEKS                       R47 R3 K72 ["Enums"]
      291 GETTABLEKS                       R47 R47 K73 ["FillBehavior"]
      293 GETTABLEKS                       R48 R3 K72 ["Enums"]
      295 GETTABLEKS                       R48 R48 K74 ["InputSize"]
      297 DUPCLOSURE                       R49 K75 [PROTO_9]
      298 CAPTURE                          VAL R32
      299 CAPTURE                          VAL R29
      300 CAPTURE                          VAL R28
      301 CAPTURE                          VAL R24
      302 CAPTURE                          VAL R48
      303 CAPTURE                          VAL R3
      304 CAPTURE                          VAL R47
      305 DUPCLOSURE                       R50 K76 [PROTO_10]
      306 CAPTURE                          VAL R15
      307 CAPTURE                          VAL R30
      308 CAPTURE                          VAL R39
      309 CAPTURE                          VAL R44
      310 CAPTURE                          VAL R17
      311 CAPTURE                          VAL R11
      312 CAPTURE                          VAL R13
      313 CAPTURE                          VAL R10
      314 CAPTURE                          VAL R46
      315 CAPTURE                          VAL R36
      316 CAPTURE                          VAL R31
      317 CAPTURE                          VAL R35
      318 CAPTURE                          VAL R8
      319 CAPTURE                          VAL R32
      320 CAPTURE                          VAL R41
      321 CAPTURE                          VAL R2
      322 CAPTURE                          VAL R29
      323 CAPTURE                          VAL R16
      324 CAPTURE                          VAL R23
      325 CAPTURE                          VAL R3
      326 CAPTURE                          VAL R26
      327 CAPTURE                          VAL R28
      328 CAPTURE                          VAL R7
      329 CAPTURE                          VAL R22
      330 CAPTURE                          VAL R37
      331 CAPTURE                          VAL R33
      332 CAPTURE                          VAL R27
      333 CAPTURE                          VAL R34
      334 CAPTURE                          VAL R25
      335 CAPTURE                          VAL R49
      336 LOADK                            R53 K63 ["PrimitiveGen"]
      337 LOADK                            R54 K77 ["GenerationErrorGeneral"]
      338 NAMECALL                         R51 R8 K64 ["getText"]
      340 CALL                             R51 3 1
      341 MOVE                             R52 R18
      342 CALL                             R52 0 1
      343 LOADK                            R55 K63 ["PrimitiveGen"]
      344 LOADK                            R56 K78 ["GenerationErrorTooManyConcurrentJobs"]
      345 DUPTABLE                         R57 K81 [{"maxConcurrentJobs", "s"}]
      346 GETIMPORT                        R58 K84 [string.format]
      348 LOADK                            R59 K85 ["%d"]
      349 MOVE                             R60 R52
      350 CALL                             R58 2 1
      351 SETTABLEKS                       R58 R57 K79 ["maxConcurrentJobs"]
      353 JUMPIFNOTEQKN                    R52 K86 [1] ; [+3]
      355 LOADK                            R58 K87 [""]
      356 JUMP                             ; [+1]
      357 LOADK                            R58 K80 ["s"]
      358 SETTABLEKS                       R58 R57 K80 ["s"]
      360 NAMECALL                         R53 R8 K64 ["getText"]
      362 CALL                             R53 4 1
      363 DUPTABLE                         R54 K95 [{"General", "TooManyRequests", "TooManyConcurrentJobs", "ModerationFailed", "EmptyPrompt", "DmHealthChecking", "PluginVersionMismatch"}]
      364 SETTABLEKS                       R51 R54 K88 ["General"]
      366 LOADK                            R57 K63 ["PrimitiveGen"]
      367 LOADK                            R58 K96 ["GenerationErrorTooManyRequests"]
      368 NAMECALL                         R55 R8 K64 ["getText"]
      370 CALL                             R55 3 1
      371 SETTABLEKS                       R55 R54 K89 ["TooManyRequests"]
      373 SETTABLEKS                       R53 R54 K90 ["TooManyConcurrentJobs"]
      375 LOADK                            R57 K63 ["PrimitiveGen"]
      376 LOADK                            R58 K97 ["GenerationErrorModerationFailed"]
      377 NAMECALL                         R55 R8 K64 ["getText"]
      379 CALL                             R55 3 1
      380 SETTABLEKS                       R55 R54 K91 ["ModerationFailed"]
      382 LOADK                            R57 K63 ["PrimitiveGen"]
      383 LOADK                            R58 K98 ["GenerationErrorEmptyPrompt"]
      384 NAMECALL                         R55 R8 K64 ["getText"]
      386 CALL                             R55 3 1
      387 SETTABLEKS                       R55 R54 K92 ["EmptyPrompt"]
      389 LOADK                            R57 K63 ["PrimitiveGen"]
      390 LOADK                            R58 K99 ["GenerationErrorDmHealthChecking"]
      391 NAMECALL                         R55 R8 K64 ["getText"]
      393 CALL                             R55 3 1
      394 SETTABLEKS                       R55 R54 K93 ["DmHealthChecking"]
      396 LOADK                            R57 K63 ["PrimitiveGen"]
      397 LOADK                            R58 K100 ["GenerationErrorPluginVersionMismatch"]
      398 NAMECALL                         R55 R8 K64 ["getText"]
      400 CALL                             R55 3 1
      401 SETTABLEKS                       R55 R54 K94 ["PluginVersionMismatch"]
      403 DUPTABLE                         R55 K104 [{"CancelByUser", "DmHealthChecking", "EmptyPrompt", "ImageFormat", "PluginVersionMismatch", "StudioLeftEditMode", "TooManyConcurrentJobs"}]
      404 LOADB                            R56 1
      405 SETTABLEKS                       R56 R55 K101 ["CancelByUser"]
      407 LOADB                            R56 1
      408 SETTABLEKS                       R56 R55 K93 ["DmHealthChecking"]
      410 LOADB                            R56 1
      411 SETTABLEKS                       R56 R55 K92 ["EmptyPrompt"]
      413 LOADB                            R56 1
      414 SETTABLEKS                       R56 R55 K102 ["ImageFormat"]
      416 LOADB                            R56 1
      417 SETTABLEKS                       R56 R55 K94 ["PluginVersionMismatch"]
      419 LOADB                            R56 1
      420 SETTABLEKS                       R56 R55 K103 ["StudioLeftEditMode"]
      422 LOADB                            R56 1
      423 SETTABLEKS                       R56 R55 K90 ["TooManyConcurrentJobs"]
      425 DUPCLOSURE                       R56 K105 [PROTO_11]
      426 CAPTURE                          VAL R30
      427 CAPTURE                          VAL R31
      428 CAPTURE                          VAL R54
      429 CAPTURE                          VAL R51
      430 CAPTURE                          VAL R16
      431 CAPTURE                          VAL R55
      432 CAPTURE                          VAL R46
      433 CAPTURE                          VAL R42
      434 CAPTURE                          VAL R32
      435 CAPTURE                          VAL R41
      436 CAPTURE                          VAL R2
      437 CAPTURE                          VAL R15
      438 CAPTURE                          VAL R23
      439 CAPTURE                          VAL R3
      440 CAPTURE                          VAL R28
      441 CAPTURE                          VAL R29
      442 CAPTURE                          VAL R9
      443 CAPTURE                          VAL R49
      444 DUPCLOSURE                       R57 K106 [PROTO_12]
      445 CAPTURE                          VAL R40
      446 CAPTURE                          VAL R32
      447 CAPTURE                          VAL R50
      448 CAPTURE                          VAL R56
      449 CAPTURE                          VAL R2
      450 CAPTURE                          VAL R43
      451 DUPTABLE                         R58 K109 [{"toMeta", "fromMeta"}]
      452 DUPCLOSURE                       R59 K110 [PROTO_13]
      453 CAPTURE                          VAL R14
      454 CAPTURE                          VAL R40
      455 SETTABLEKS                       R59 R58 K107 ["toMeta"]
      457 DUPCLOSURE                       R59 K111 [PROTO_14]
      458 CAPTURE                          VAL R14
      459 CAPTURE                          VAL R40
      460 CAPTURE                          VAL R5
      461 CAPTURE                          VAL R39
      462 SETTABLEKS                       R59 R58 K108 ["fromMeta"]
      464 DUPTABLE                         R59 K117 [{"Type", "ContentWidget", "Serialization", "Modes", "PreviewState"}]
      465 LOADK                            R60 K63 ["PrimitiveGen"]
      466 SETTABLEKS                       R60 R59 K112 ["Type"]
      468 GETTABLEKS                       R60 R4 K118 ["memo"]
      470 MOVE                             R61 R57
      471 CALL                             R60 1 1
      472 SETTABLEKS                       R60 R59 K113 ["ContentWidget"]
      474 SETTABLEKS                       R58 R59 K114 ["Serialization"]
      476 SETTABLEKS                       R40 R59 K115 ["Modes"]
      478 SETTABLEKS                       R39 R59 K116 ["PreviewState"]
      480 RETURN                           R59 1
