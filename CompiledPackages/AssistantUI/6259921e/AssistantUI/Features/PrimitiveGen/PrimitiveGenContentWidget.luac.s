PROTO_0:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 1
        2 GETUPVAL                         R1 0
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+1]
        5 RETURN                           R0 1
        6 GETIMPORT                        R1 K2 [string.find]
        8 MOVE                             R2 R0
        9 LOADK                            R3 K3 ["\n"]
       10 CALL                             R1 2 1
       11 JUMPIFNOT                        R1 ; [+15]
       12 GETUPVAL                         R2 1
       13 JUMPIFNOTLE                      R1 R2 ; [+13]
       15 LOADN                            R7 1
       16 SUBK                             R8 R1 K4 [1]
       17 FASTCALL3                        STRING_SUB R0 R7 R8
       19 MOVE                             R6 R0
       20 GETIMPORT                        R5 K6 [string.sub]
       22 CALL                             R5 3 1
       23 MOVE                             R3 R5
       24 LOADK                            R4 K7 ["...(truncated)"]
       25 CONCAT                           R2 R3 R4
       26 RETURN                           R2 1
       27 LENGTH                           R2 R0
       28 GETUPVAL                         R3 1
       29 JUMPIFNOTLT                      R3 R2 ; [+13]
       31 LOADN                            R7 1
       32 GETUPVAL                         R8 1
       33 FASTCALL3                        STRING_SUB R0 R7 R8
       35 MOVE                             R6 R0
       36 GETIMPORT                        R5 K6 [string.sub]
       38 CALL                             R5 3 1
       39 MOVE                             R3 R5
       40 LOADK                            R4 K7 ["...(truncated)"]
       41 CONCAT                           R2 R3 R4
       42 RETURN                           R2 1
       43 RETURN                           R0 1

PROTO_1:
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
       28 DUPTABLE                         R5 K9 [{"Header", "Content"}]
       29 GETUPVAL                         R6 1
       30 GETUPVAL                         R7 2
       31 GETTABLEKS                       R7 R7 K7 ["Header"]
       33 DUPTABLE                         R8 K12 [{"IsDisabled", "VerticalAlignment", "LayoutOrder"}]
       34 GETTABLEKS                       R10 R0 K6 ["canToggle"]
       36 NOT                              R9 R10
       37 SETTABLEKS                       R9 R8 K10 ["IsDisabled"]
       39 LOADK                            R9 K13 ["center"]
       40 SETTABLEKS                       R9 R8 K11 ["VerticalAlignment"]
       42 MOVE                             R9 R1
       43 CALL                             R9 0 1
       44 SETTABLEKS                       R9 R8 K1 ["LayoutOrder"]
       46 GETTABLEKS                       R9 R0 K14 ["headerChildren"]
       48 CALL                             R6 3 1
       49 SETTABLEKS                       R6 R5 K7 ["Header"]
       51 GETTABLEKS                       R6 R0 K15 ["children"]
       53 JUMPIFNOT                        R6 ; [+15]
       54 GETUPVAL                         R6 1
       55 GETUPVAL                         R7 2
       56 GETTABLEKS                       R7 R7 K8 ["Content"]
       58 DUPTABLE                         R8 K17 [{"tag", "LayoutOrder"}]
       59 LOADK                            R9 K18 ["col size-0-0 fill auto-y gap-small"]
       60 SETTABLEKS                       R9 R8 K16 ["tag"]
       62 MOVE                             R9 R1
       63 CALL                             R9 0 1
       64 SETTABLEKS                       R9 R8 K1 ["LayoutOrder"]
       66 GETTABLEKS                       R9 R0 K15 ["children"]
       68 CALL                             R6 3 1
       69 SETTABLEKS                       R6 R5 K8 ["Content"]
       71 CALL                             R2 3 -1
       72 RETURN                           R2 -1

PROTO_2:
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

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R0 K2 [task.cancel]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_5:
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

PROTO_6:
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

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["previewImages"]
        3 CALL                             R1 1 1
        4 RETURN                           R1 1

PROTO_8:
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

PROTO_9:
        0 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R2 R0 K0 ["previewState"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["Generating"]
        5 JUMPIFEQ                         R2 R3 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 GETTABLEKS                       R3 R0 K0 ["previewState"]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K2 ["Inserted"]
       14 JUMPIFEQ                         R3 R4 ; [+2]
       16 LOADB                            R2 0 +1
       17 LOADB                            R2 1
       18 GETTABLEKS                       R4 R0 K0 ["previewState"]
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R5 R5 K3 ["Failed"]
       23 JUMPIFEQ                         R4 R5 ; [+2]
       25 LOADB                            R3 0 +1
       26 LOADB                            R3 1
       27 GETTABLEKS                       R5 R0 K0 ["previewState"]
       29 GETUPVAL                         R6 0
       30 GETTABLEKS                       R6 R6 K4 ["Cancelled"]
       32 JUMPIFEQ                         R5 R6 ; [+2]
       34 LOADB                            R4 0 +1
       35 LOADB                            R4 1
       36 GETUPVAL                         R5 1
       37 GETTABLEKS                       R6 R0 K5 ["startTime"]
       39 MOVE                             R7 R1
       40 GETTABLEKS                       R8 R0 K6 ["generationStage"]
       42 CALL                             R5 3 1
       43 GETUPVAL                         R6 2
       44 GETTABLEKS                       R7 R0 K7 ["previewImages"]
       46 CALL                             R6 1 1
       47 GETUPVAL                         R7 3
       48 GETTABLEKS                       R8 R0 K8 ["className"]
       50 CALL                             R7 1 1
       51 LOADB                            R8 0
       52 GETTABLEKS                       R10 R0 K9 ["previewErrorMessage"]
       54 FASTCALL1                        TYPEOF R10 ; [+2]
       55 GETIMPORT                        R9 K11 [typeof]
       57 CALL                             R9 1 1
       58 JUMPIFNOTEQKS                    R9 K12 ["string"] ; [+7]
       60 GETTABLEKS                       R9 R0 K9 ["previewErrorMessage"]
       62 JUMPIFNOTEQKS                    R9 K13 [""] ; [+2]
       64 LOADB                            R8 0 +1
       65 LOADB                            R8 1
       66 GETUPVAL                         R10 4
       67 CALL                             R10 0 1
       68 JUMPIFNOT                        R10 ; [+2]
       69 MOVE                             R9 R1
       70 JUMP                             ; [+9]
       71 MOVE                             R9 R1
       72 JUMPIF                           R9 ; [+7]
       73 GETTABLEKS                       R9 R6 K14 ["exists"]
       75 JUMPIFNOT                        R9 ; [+4]
       76 JUMPIF                           R3 ; [+2]
       77 MOVE                             R9 R4
       78 JUMPIFNOT                        R9 ; [+1]
       79 MOVE                             R9 R8
       80 LOADNIL                          R10
       81 GETTABLEKS                       R12 R0 K8 ["className"]
       83 JUMPIFNOTEQKNIL                  R12 ; [+2]
       85 LOADB                            R11 0 +1
       86 LOADB                            R11 1
       87 JUMPIFNOT                        R1 ; [+12]
       88 JUMPIF                           R11 ; [+32]
       89 LOADK                            R12 K15 ["%* %*"]
       90 GETUPVAL                         R14 5
       91 GETTABLEKS                       R14 R14 K16 ["GeneratingPrefix"]
       93 GETTABLEKS                       R15 R0 K17 ["displayName"]
       95 NAMECALL                         R12 R12 K18 ["format"]
       97 CALL                             R12 3 1
       98 MOVE                             R10 R12
       99 JUMP                             ; [+21]
      100 JUMPIFNOT                        R2 ; [+8]
      101 JUMPIFNOT                        R11 ; [+4]
      102 GETUPVAL                         R12 5
      103 GETTABLEKS                       R10 R12 K2 ["Inserted"]
      105 JUMP                             ; [+15]
      106 GETTABLEKS                       R10 R0 K17 ["displayName"]
      108 JUMP                             ; [+12]
      109 JUMPIFNOT                        R4 ; [+4]
      110 GETUPVAL                         R12 5
      111 GETTABLEKS                       R10 R12 K19 ["GenerationCancelled"]
      113 JUMP                             ; [+7]
      114 JUMPIFNOT                        R3 ; [+4]
      115 GETUPVAL                         R12 5
      116 GETTABLEKS                       R10 R12 K20 ["GenerationFailed"]
      118 JUMP                             ; [+2]
      119 GETTABLEKS                       R10 R0 K0 ["previewState"]
      121 GETUPVAL                         R12 6
      122 MOVE                             R13 R10
      123 CALL                             R12 1 1
      124 MOVE                             R10 R12
      125 GETUPVAL                         R12 7
      126 CALL                             R12 0 1
      127 GETUPVAL                         R14 8
      128 LOADN                            R15 60
      129 JUMPIFNOTLE                      R15 R14 ; [+21]
      131 GETUPVAL                         R13 9
      132 LOADK                            R15 K21 ["PrimitiveGen"]
      133 LOADK                            R16 K22 ["ExpectedTimeMinutes"]
      134 DUPTABLE                         R17 K24 [{"minutes"}]
      135 GETIMPORT                        R18 K25 [string.format]
      137 LOADK                            R19 K26 ["%d"]
      138 GETUPVAL                         R22 8
      139 DIVK                             R21 R22 K27 [60]
      140 FASTCALL1                        MATH_FLOOR R21 ; [+2]
      141 GETIMPORT                        R20 K30 [math.floor]
      143 CALL                             R20 1 1
      144 CALL                             R18 2 1
      145 SETTABLEKS                       R18 R17 K23 ["minutes"]
      147 NAMECALL                         R13 R13 K31 ["getText"]
      149 CALL                             R13 4 1
      150 JUMP                             ; [+14]
      151 GETUPVAL                         R13 9
      152 LOADK                            R15 K21 ["PrimitiveGen"]
      153 LOADK                            R16 K32 ["ExpectedTimeSeconds"]
      154 DUPTABLE                         R17 K34 [{"seconds"}]
      155 GETIMPORT                        R18 K25 [string.format]
      157 LOADK                            R19 K26 ["%d"]
      158 GETUPVAL                         R20 8
      159 CALL                             R18 2 1
      160 SETTABLEKS                       R18 R17 K33 ["seconds"]
      162 NAMECALL                         R13 R13 K31 ["getText"]
      164 CALL                             R13 4 1
      165 GETUPVAL                         R14 10
      166 GETUPVAL                         R15 11
      167 GETUPVAL                         R16 12
      168 GETTABLEKS                       R16 R16 K35 ["assign"]
      170 DUPTABLE                         R17 K38 [{"canToggle", "headerChildren"}]
      171 LOADB                            R18 1
      172 SETTABLEKS                       R18 R17 K36 ["canToggle"]
      174 DUPTABLE                         R18 K40 [{"HeaderContent"}]
      175 GETUPVAL                         R19 10
      176 GETUPVAL                         R20 13
      177 DUPTABLE                         R21 K43 [{"tag", "LayoutOrder"}]
      178 LOADK                            R22 K44 ["row size-0-full auto-x align-y-center gap-xsmall"]
      179 SETTABLEKS                       R22 R21 K41 ["tag"]
      181 MOVE                             R22 R12
      182 CALL                             R22 0 1
      183 SETTABLEKS                       R22 R21 K42 ["LayoutOrder"]
      185 DUPTABLE                         R22 K48 [{"Text", "ChipArea", "StageInfo"}]
      186 GETUPVAL                         R23 10
      187 GETUPVAL                         R24 14
      188 DUPTABLE                         R25 K49 [{"tag", "Text", "LayoutOrder"}]
      189 LOADK                            R26 K50 ["size-0-0 auto-xy text-label-small content-default"]
      190 SETTABLEKS                       R26 R25 K41 ["tag"]
      192 SETTABLEKS                       R10 R25 K45 ["Text"]
      194 MOVE                             R26 R12
      195 CALL                             R26 0 1
      196 SETTABLEKS                       R26 R25 K42 ["LayoutOrder"]
      198 DUPTABLE                         R26 K52 [{"Shimmer"}]
      199 MOVE                             R27 R1
      200 JUMPIFNOT                        R27 ; [+3]
      201 GETUPVAL                         R27 10
      202 GETUPVAL                         R28 15
      203 CALL                             R27 1 1
      204 SETTABLEKS                       R27 R26 K51 ["Shimmer"]
      206 CALL                             R23 3 1
      207 SETTABLEKS                       R23 R22 K45 ["Text"]
      209 MOVE                             R23 R11
      210 JUMPIFNOT                        R23 ; [+56]
      211 GETUPVAL                         R23 10
      212 GETUPVAL                         R24 13
      213 DUPTABLE                         R25 K43 [{"tag", "LayoutOrder"}]
      214 LOADK                            R26 K53 ["auto-xy align-x-left align-y-center"]
      215 SETTABLEKS                       R26 R25 K41 ["tag"]
      217 MOVE                             R26 R12
      218 CALL                             R26 0 1
      219 SETTABLEKS                       R26 R25 K42 ["LayoutOrder"]
      221 DUPTABLE                         R26 K55 [{"AssetLink"}]
      222 GETUPVAL                         R27 10
      223 GETUPVAL                         R28 16
      224 DUPTABLE                         R29 K62 [{"text", "leading", "onActivated", "isDisabled", "isChecked", "size", "LayoutOrder"}]
      225 GETTABLEKS                       R30 R0 K17 ["displayName"]
      227 SETTABLEKS                       R30 R29 K56 ["text"]
      229 GETTABLEKS                       R30 R7 K63 ["Image"]
      231 SETTABLEKS                       R30 R29 K57 ["leading"]
      233 GETTABLEKS                       R30 R0 K64 ["onChipClicked"]
      235 JUMPIF                           R30 ; [+1]
      236 DUPCLOSURE                       R30 K65 [PROTO_9]
      237 SETTABLEKS                       R30 R29 K58 ["onActivated"]
      239 GETTABLEKS                       R31 R0 K64 ["onChipClicked"]
      241 JUMPIFEQKNIL                     R31 ; [+2]
      243 LOADB                            R30 0 +1
      244 LOADB                            R30 1
      245 SETTABLEKS                       R30 R29 K59 ["isDisabled"]
      247 LOADB                            R30 0
      248 SETTABLEKS                       R30 R29 K60 ["isChecked"]
      250 GETUPVAL                         R30 17
      251 GETTABLEKS                       R30 R30 K66 ["Enums"]
      253 GETTABLEKS                       R30 R30 K67 ["ChipSize"]
      255 GETTABLEKS                       R30 R30 K68 ["Small"]
      257 SETTABLEKS                       R30 R29 K61 ["size"]
      259 MOVE                             R30 R12
      260 CALL                             R30 0 1
      261 SETTABLEKS                       R30 R29 K42 ["LayoutOrder"]
      263 CALL                             R27 2 1
      264 SETTABLEKS                       R27 R26 K54 ["AssetLink"]
      266 CALL                             R23 3 1
      267 SETTABLEKS                       R23 R22 K46 ["ChipArea"]
      269 MOVE                             R23 R9
      270 JUMPIFNOT                        R23 ; [+121]
      271 GETUPVAL                         R23 10
      272 GETUPVAL                         R24 13
      273 DUPTABLE                         R25 K43 [{"tag", "LayoutOrder"}]
      274 LOADK                            R26 K69 ["row size-0-0 auto-xy align-y-center gap-xsmall padding-top-xxsmall"]
      275 SETTABLEKS                       R26 R25 K41 ["tag"]
      277 MOVE                             R26 R12
      278 CALL                             R26 0 1
      279 SETTABLEKS                       R26 R25 K42 ["LayoutOrder"]
      281 DUPTABLE                         R26 K74 [{"GenerationStage", "ExpectedTime", "TakingLonger", "PreviewErrorExtra"}]
      282 MOVE                             R27 R1
      283 JUMPIFNOT                        R27 ; [+23]
      284 GETTABLEKS                       R27 R0 K6 ["generationStage"]
      286 JUMPIFNOT                        R27 ; [+20]
      287 GETUPVAL                         R27 10
      288 GETUPVAL                         R28 14
      289 DUPTABLE                         R29 K49 [{"tag", "Text", "LayoutOrder"}]
      290 LOADK                            R30 K75 ["size-0-0 auto-xy text-caption-small content-muted"]
      291 SETTABLEKS                       R30 R29 K41 ["tag"]
      293 LOADK                            R31 K76 ["(%*)"]
      294 GETTABLEKS                       R33 R0 K6 ["generationStage"]
      296 NAMECALL                         R31 R31 K18 ["format"]
      298 CALL                             R31 2 1
      299 MOVE                             R30 R31
      300 SETTABLEKS                       R30 R29 K45 ["Text"]
      302 MOVE                             R30 R12
      303 CALL                             R30 0 1
      304 SETTABLEKS                       R30 R29 K42 ["LayoutOrder"]
      306 CALL                             R27 2 1
      307 SETTABLEKS                       R27 R26 K70 ["GenerationStage"]
      309 MOVE                             R27 R1
      310 JUMPIFNOT                        R27 ; [+21]
      311 NOT                              R27 R5
      312 JUMPIFNOT                        R27 ; [+19]
      313 GETUPVAL                         R27 10
      314 GETUPVAL                         R28 14
      315 DUPTABLE                         R29 K49 [{"tag", "Text", "LayoutOrder"}]
      316 LOADK                            R30 K75 ["size-0-0 auto-xy text-caption-small content-muted"]
      317 SETTABLEKS                       R30 R29 K41 ["tag"]
      319 LOADK                            R31 K77 ["%*"]
      320 MOVE                             R33 R13
      321 NAMECALL                         R31 R31 K18 ["format"]
      323 CALL                             R31 2 1
      324 MOVE                             R30 R31
      325 SETTABLEKS                       R30 R29 K45 ["Text"]
      327 MOVE                             R30 R12
      328 CALL                             R30 0 1
      329 SETTABLEKS                       R30 R29 K42 ["LayoutOrder"]
      331 CALL                             R27 2 1
      332 SETTABLEKS                       R27 R26 K71 ["ExpectedTime"]
      334 MOVE                             R27 R1
      335 JUMPIFNOT                        R27 ; [+18]
      336 MOVE                             R27 R5
      337 JUMPIFNOT                        R27 ; [+16]
      338 GETUPVAL                         R27 10
      339 GETUPVAL                         R28 14
      340 DUPTABLE                         R29 K49 [{"tag", "Text", "LayoutOrder"}]
      341 LOADK                            R30 K75 ["size-0-0 auto-xy text-caption-small content-muted"]
      342 SETTABLEKS                       R30 R29 K41 ["tag"]
      344 GETUPVAL                         R30 5
      345 GETTABLEKS                       R30 R30 K72 ["TakingLonger"]
      347 SETTABLEKS                       R30 R29 K45 ["Text"]
      349 MOVE                             R30 R12
      350 CALL                             R30 0 1
      351 SETTABLEKS                       R30 R29 K42 ["LayoutOrder"]
      353 CALL                             R27 2 1
      354 SETTABLEKS                       R27 R26 K72 ["TakingLonger"]
      356 GETUPVAL                         R28 4
      357 CALL                             R28 0 1
      358 JUMPIFNOT                        R28 ; [+2]
      359 LOADNIL                          R27
      360 JUMP                             ; [+28]
      361 NOT                              R27 R1
      362 JUMPIFNOT                        R27 ; [+26]
      363 GETTABLEKS                       R27 R6 K14 ["exists"]
      365 JUMPIFNOT                        R27 ; [+23]
      366 JUMPIF                           R3 ; [+2]
      367 MOVE                             R27 R4
      368 JUMPIFNOT                        R27 ; [+20]
      369 MOVE                             R27 R8
      370 JUMPIFNOT                        R27 ; [+18]
      371 GETUPVAL                         R27 10
      372 GETUPVAL                         R28 14
      373 DUPTABLE                         R29 K79 [{"tag", "Text", "TextWrapped", "LayoutOrder"}]
      374 LOADK                            R30 K80 ["size-0-0 auto-xy text-caption-small content-muted text-wrap"]
      375 SETTABLEKS                       R30 R29 K41 ["tag"]
      377 GETTABLEKS                       R30 R0 K9 ["previewErrorMessage"]
      379 SETTABLEKS                       R30 R29 K45 ["Text"]
      381 LOADB                            R30 1
      382 SETTABLEKS                       R30 R29 K78 ["TextWrapped"]
      384 MOVE                             R30 R12
      385 CALL                             R30 0 1
      386 SETTABLEKS                       R30 R29 K42 ["LayoutOrder"]
      388 CALL                             R27 2 1
      389 SETTABLEKS                       R27 R26 K73 ["PreviewErrorExtra"]
      391 CALL                             R23 3 1
      392 SETTABLEKS                       R23 R22 K47 ["StageInfo"]
      394 CALL                             R19 3 1
      395 SETTABLEKS                       R19 R18 K39 ["HeaderContent"]
      397 SETTABLEKS                       R18 R17 K37 ["headerChildren"]
      399 MOVE                             R18 R0
      400 CALL                             R16 2 1
      401 DUPTABLE                         R17 K83 [{"Preview", "RetryRow"}]
      402 JUMPIF                           R3 ; [+1]
      403 JUMPIFNOT                        R4 ; [+87]
      404 GETTABLEKS                       R19 R6 K14 ["exists"]
      406 JUMPIF                           R19 ; [+84]
      407 GETUPVAL                         R18 10
      408 GETUPVAL                         R19 13
      409 DUPTABLE                         R20 K85 [{"tag", "Size", "LayoutOrder"}]
      410 LOADK                            R21 K86 ["col size-full-0 radius-small align-x-center align-y-center bg-shift-200 gap-medium padding-large"]
      411 SETTABLEKS                       R21 R20 K41 ["tag"]
      413 GETIMPORT                        R21 K89 [UDim2.new]
      415 LOADN                            R22 1
      416 LOADN                            R23 0
      417 LOADN                            R24 0
      418 GETUPVAL                         R25 18
      419 CALL                             R21 4 1
      420 SETTABLEKS                       R21 R20 K84 ["Size"]
      422 MOVE                             R21 R12
      423 CALL                             R21 0 1
      424 SETTABLEKS                       R21 R20 K42 ["LayoutOrder"]
      426 DUPTABLE                         R21 K92 [{"ErrorIcon", "ErrorText"}]
      427 GETUPVAL                         R22 10
      428 GETUPVAL                         R23 19
      429 DUPTABLE                         R24 K93 [{"tag", "Image", "LayoutOrder"}]
      430 LOADK                            R25 K94 ["size-500-500 content-system-warning"]
      431 SETTABLEKS                       R25 R24 K41 ["tag"]
      433 LOADK                            R25 K95 ["icons/status/error_large"]
      434 SETTABLEKS                       R25 R24 K63 ["Image"]
      436 MOVE                             R25 R12
      437 CALL                             R25 0 1
      438 SETTABLEKS                       R25 R24 K42 ["LayoutOrder"]
      440 CALL                             R22 2 1
      441 SETTABLEKS                       R22 R21 K90 ["ErrorIcon"]
      443 GETUPVAL                         R22 10
      444 GETUPVAL                         R23 14
      445 DUPTABLE                         R24 K96 [{"tag", "TextWrapped", "Text", "LayoutOrder"}]
      446 LOADK                            R25 K97 ["size-full-0 auto-y text-label-small content-muted text-align-x-center"]
      447 SETTABLEKS                       R25 R24 K41 ["tag"]
      449 LOADB                            R25 1
      450 SETTABLEKS                       R25 R24 K78 ["TextWrapped"]
      452 JUMPIFNOT                        R4 ; [+4]
      453 GETUPVAL                         R25 5
      454 GETTABLEKS                       R25 R25 K19 ["GenerationCancelled"]
      456 JUMP                             ; [+23]
      457 GETTABLEKS                       R26 R0 K9 ["previewErrorMessage"]
      459 JUMPIFNOT                        R26 ; [+17]
      460 GETTABLEKS                       R27 R0 K9 ["previewErrorMessage"]
      462 LENGTH                           R26 R27
      463 LOADN                            R27 0
      464 JUMPIFNOTLT                      R27 R26 ; [+12]
      466 LOADK                            R26 K98 ["%*\n\n%*"]
      467 GETUPVAL                         R28 5
      468 GETTABLEKS                       R28 R28 K20 ["GenerationFailed"]
      470 GETTABLEKS                       R29 R0 K9 ["previewErrorMessage"]
      472 NAMECALL                         R26 R26 K18 ["format"]
      474 CALL                             R26 3 1
      475 MOVE                             R25 R26
      476 JUMP                             ; [+3]
      477 GETUPVAL                         R25 5
      478 GETTABLEKS                       R25 R25 K20 ["GenerationFailed"]
      480 SETTABLEKS                       R25 R24 K45 ["Text"]
      482 MOVE                             R25 R12
      483 CALL                             R25 0 1
      484 SETTABLEKS                       R25 R24 K42 ["LayoutOrder"]
      486 CALL                             R22 2 1
      487 SETTABLEKS                       R22 R21 K91 ["ErrorText"]
      489 CALL                             R18 3 1
      490 JUMP                             ; [+330]
      491 GETTABLEKS                       R19 R6 K14 ["exists"]
      493 JUMPIF                           R19 ; [+27]
      494 GETUPVAL                         R18 10
      495 GETUPVAL                         R19 20
      496 DUPTABLE                         R20 K100 [{"Size", "radius", "LayoutOrder"}]
      497 GETIMPORT                        R21 K89 [UDim2.new]
      499 LOADN                            R22 1
      500 LOADN                            R23 0
      501 LOADN                            R24 0
      502 GETUPVAL                         R25 18
      503 CALL                             R21 4 1
      504 SETTABLEKS                       R21 R20 K84 ["Size"]
      506 GETUPVAL                         R21 17
      507 GETTABLEKS                       R21 R21 K66 ["Enums"]
      509 GETTABLEKS                       R21 R21 K101 ["Radius"]
      511 GETTABLEKS                       R21 R21 K68 ["Small"]
      513 SETTABLEKS                       R21 R20 K99 ["radius"]
      515 MOVE                             R21 R12
      516 CALL                             R21 0 1
      517 SETTABLEKS                       R21 R20 K42 ["LayoutOrder"]
      519 CALL                             R18 2 1
      520 JUMP                             ; [+300]
      521 GETUPVAL                         R19 4
      522 CALL                             R19 0 1
      523 JUMPIFNOT                        R19 ; [+115]
      524 GETUPVAL                         R18 10
      525 GETUPVAL                         R19 19
      526 DUPTABLE                         R20 K105 [{"tag", "Image", "Size", "BackgroundTransparency", "BackgroundColor3", "ScaleType", "LayoutOrder"}]
      527 GETUPVAL                         R22 21
      528 CALL                             R22 0 1
      529 JUMPIFNOT                        R22 ; [+2]
      530 LOADK                            R21 K106 ["row size-full-0 auto-y radius-small align-x-center align-y-center flex-x-between padding-x-small padding-y-small"]
      531 JUMP                             ; [+1]
      532 LOADK                            R21 K107 ["row size-full-0 auto-y bg-shift-200 radius-small align-x-center align-y-center flex-x-between padding-x-small padding-y-small"]
      533 SETTABLEKS                       R21 R20 K41 ["tag"]
      535 GETTABLEKS                       R21 R6 K108 ["current"]
      537 SETTABLEKS                       R21 R20 K63 ["Image"]
      539 GETIMPORT                        R21 K89 [UDim2.new]
      541 LOADN                            R22 1
      542 LOADN                            R23 0
      543 LOADN                            R24 0
      544 GETUPVAL                         R25 18
      545 CALL                             R21 4 1
      546 SETTABLEKS                       R21 R20 K84 ["Size"]
      548 GETUPVAL                         R22 21
      549 CALL                             R22 0 1
      550 JUMPIFNOT                        R22 ; [+2]
      551 LOADN                            R21 1
      552 JUMP                             ; [+1]
      553 LOADN                            R21 0
      554 SETTABLEKS                       R21 R20 K102 ["BackgroundTransparency"]
      556 GETIMPORT                        R21 K111 [Color3.fromRGB]
      558 LOADN                            R22 0
      559 LOADN                            R23 0
      560 LOADN                            R24 0
      561 CALL                             R21 3 1
      562 SETTABLEKS                       R21 R20 K103 ["BackgroundColor3"]
      564 GETIMPORT                        R21 K114 [Enum.ScaleType.Fit]
      566 SETTABLEKS                       R21 R20 K104 ["ScaleType"]
      568 MOVE                             R21 R12
      569 CALL                             R21 0 1
      570 SETTABLEKS                       R21 R20 K42 ["LayoutOrder"]
      572 DUPTABLE                         R21 K117 [{"LastPreview", "NextPreview"}]
      573 GETUPVAL                         R22 10
      574 GETUPVAL                         R23 22
      575 DUPTABLE                         R24 K119 [{"icon", "size", "onActivated", "LayoutOrder"}]
      576 GETUPVAL                         R25 17
      577 GETTABLEKS                       R25 R25 K66 ["Enums"]
      579 GETTABLEKS                       R25 R25 K120 ["IconName"]
      581 GETTABLEKS                       R25 R25 K121 ["ChevronLargeLeft"]
      583 SETTABLEKS                       R25 R24 K118 ["icon"]
      585 GETUPVAL                         R25 17
      586 GETTABLEKS                       R25 R25 K66 ["Enums"]
      588 GETTABLEKS                       R25 R25 K122 ["InputSize"]
      590 GETTABLEKS                       R25 R25 K68 ["Small"]
      592 SETTABLEKS                       R25 R24 K61 ["size"]
      594 GETTABLEKS                       R25 R6 K123 ["decrement"]
      596 SETTABLEKS                       R25 R24 K58 ["onActivated"]
      598 MOVE                             R25 R12
      599 CALL                             R25 0 1
      600 SETTABLEKS                       R25 R24 K42 ["LayoutOrder"]
      602 CALL                             R22 2 1
      603 SETTABLEKS                       R22 R21 K115 ["LastPreview"]
      605 GETUPVAL                         R22 10
      606 GETUPVAL                         R23 22
      607 DUPTABLE                         R24 K119 [{"icon", "size", "onActivated", "LayoutOrder"}]
      608 GETUPVAL                         R25 17
      609 GETTABLEKS                       R25 R25 K66 ["Enums"]
      611 GETTABLEKS                       R25 R25 K120 ["IconName"]
      613 GETTABLEKS                       R25 R25 K124 ["ChevronLargeRight"]
      615 SETTABLEKS                       R25 R24 K118 ["icon"]
      617 GETUPVAL                         R25 17
      618 GETTABLEKS                       R25 R25 K66 ["Enums"]
      620 GETTABLEKS                       R25 R25 K122 ["InputSize"]
      622 GETTABLEKS                       R25 R25 K68 ["Small"]
      624 SETTABLEKS                       R25 R24 K61 ["size"]
      626 GETTABLEKS                       R25 R6 K125 ["increment"]
      628 SETTABLEKS                       R25 R24 K58 ["onActivated"]
      630 MOVE                             R25 R12
      631 CALL                             R25 0 1
      632 SETTABLEKS                       R25 R24 K42 ["LayoutOrder"]
      634 CALL                             R22 2 1
      635 SETTABLEKS                       R22 R21 K116 ["NextPreview"]
      637 CALL                             R18 3 1
      638 JUMP                             ; [+182]
      639 GETUPVAL                         R18 10
      640 GETUPVAL                         R19 13
      641 DUPTABLE                         R20 K85 [{"tag", "Size", "LayoutOrder"}]
      642 LOADK                            R21 K126 ["col size-full-0 radius-small bg-shift-200 padding-x-medium"]
      643 SETTABLEKS                       R21 R20 K41 ["tag"]
      645 GETIMPORT                        R21 K89 [UDim2.new]
      647 LOADN                            R22 1
      648 LOADN                            R23 0
      649 LOADN                            R24 0
      650 GETUPVAL                         R25 18
      651 CALL                             R21 4 1
      652 SETTABLEKS                       R21 R20 K84 ["Size"]
      654 MOVE                             R21 R12
      655 CALL                             R21 0 1
      656 SETTABLEKS                       R21 R20 K42 ["LayoutOrder"]
      658 DUPTABLE                         R21 K130 [{"TopGutter", "PreviewRow", "BottomGutter"}]
      659 GETUPVAL                         R22 10
      660 GETUPVAL                         R23 13
      661 DUPTABLE                         R24 K131 [{"Size", "LayoutOrder"}]
      662 GETIMPORT                        R25 K89 [UDim2.new]
      664 LOADN                            R26 1
      665 LOADN                            R27 0
      666 LOADN                            R28 0
      667 GETUPVAL                         R29 23
      668 CALL                             R25 4 1
      669 SETTABLEKS                       R25 R24 K84 ["Size"]
      671 MOVE                             R25 R12
      672 CALL                             R25 0 1
      673 SETTABLEKS                       R25 R24 K42 ["LayoutOrder"]
      675 CALL                             R22 2 1
      676 SETTABLEKS                       R22 R21 K127 ["TopGutter"]
      678 GETUPVAL                         R22 10
      679 GETUPVAL                         R23 13
      680 DUPTABLE                         R24 K85 [{"tag", "Size", "LayoutOrder"}]
      681 LOADK                            R25 K132 ["row size-full-0 align-x-center align-y-center flex-x-between gap-xsmall"]
      682 SETTABLEKS                       R25 R24 K41 ["tag"]
      684 GETIMPORT                        R25 K89 [UDim2.new]
      686 LOADN                            R26 1
      687 LOADN                            R27 0
      688 LOADN                            R28 0
      689 GETUPVAL                         R30 18
      690 LOADN                            R32 2
      691 GETUPVAL                         R33 23
      692 MUL                              R31 R32 R33
      693 SUB                              R29 R30 R31
      694 CALL                             R25 4 1
      695 SETTABLEKS                       R25 R24 K84 ["Size"]
      697 MOVE                             R25 R12
      698 CALL                             R25 0 1
      699 SETTABLEKS                       R25 R24 K42 ["LayoutOrder"]
      701 DUPTABLE                         R25 K134 [{"LastPreview", "PreviewImage", "NextPreview"}]
      702 GETUPVAL                         R26 10
      703 GETUPVAL                         R27 22
      704 DUPTABLE                         R28 K119 [{"icon", "size", "onActivated", "LayoutOrder"}]
      705 GETUPVAL                         R29 17
      706 GETTABLEKS                       R29 R29 K66 ["Enums"]
      708 GETTABLEKS                       R29 R29 K120 ["IconName"]
      710 GETTABLEKS                       R29 R29 K121 ["ChevronLargeLeft"]
      712 SETTABLEKS                       R29 R28 K118 ["icon"]
      714 GETUPVAL                         R29 17
      715 GETTABLEKS                       R29 R29 K66 ["Enums"]
      717 GETTABLEKS                       R29 R29 K122 ["InputSize"]
      719 GETTABLEKS                       R29 R29 K68 ["Small"]
      721 SETTABLEKS                       R29 R28 K61 ["size"]
      723 GETTABLEKS                       R29 R6 K123 ["decrement"]
      725 SETTABLEKS                       R29 R28 K58 ["onActivated"]
      727 MOVE                             R29 R12
      728 CALL                             R29 0 1
      729 SETTABLEKS                       R29 R28 K42 ["LayoutOrder"]
      731 CALL                             R26 2 1
      732 SETTABLEKS                       R26 R25 K115 ["LastPreview"]
      734 GETUPVAL                         R26 10
      735 GETUPVAL                         R27 19
      736 DUPTABLE                         R28 K135 [{"tag", "Image", "BackgroundColor3", "BackgroundTransparency", "ScaleType", "LayoutOrder"}]
      737 LOADK                            R29 K136 ["size-0-full fill radius-small"]
      738 SETTABLEKS                       R29 R28 K41 ["tag"]
      740 GETTABLEKS                       R29 R6 K108 ["current"]
      742 SETTABLEKS                       R29 R28 K63 ["Image"]
      744 GETIMPORT                        R29 K111 [Color3.fromRGB]
      746 LOADN                            R30 0
      747 LOADN                            R31 0
      748 LOADN                            R32 0
      749 CALL                             R29 3 1
      750 SETTABLEKS                       R29 R28 K103 ["BackgroundColor3"]
      752 LOADN                            R29 0
      753 SETTABLEKS                       R29 R28 K102 ["BackgroundTransparency"]
      755 GETIMPORT                        R29 K114 [Enum.ScaleType.Fit]
      757 SETTABLEKS                       R29 R28 K104 ["ScaleType"]
      759 MOVE                             R29 R12
      760 CALL                             R29 0 1
      761 SETTABLEKS                       R29 R28 K42 ["LayoutOrder"]
      763 CALL                             R26 2 1
      764 SETTABLEKS                       R26 R25 K133 ["PreviewImage"]
      766 GETUPVAL                         R26 10
      767 GETUPVAL                         R27 22
      768 DUPTABLE                         R28 K119 [{"icon", "size", "onActivated", "LayoutOrder"}]
      769 GETUPVAL                         R29 17
      770 GETTABLEKS                       R29 R29 K66 ["Enums"]
      772 GETTABLEKS                       R29 R29 K120 ["IconName"]
      774 GETTABLEKS                       R29 R29 K124 ["ChevronLargeRight"]
      776 SETTABLEKS                       R29 R28 K118 ["icon"]
      778 GETUPVAL                         R29 17
      779 GETTABLEKS                       R29 R29 K66 ["Enums"]
      781 GETTABLEKS                       R29 R29 K122 ["InputSize"]
      783 GETTABLEKS                       R29 R29 K68 ["Small"]
      785 SETTABLEKS                       R29 R28 K61 ["size"]
      787 GETTABLEKS                       R29 R6 K125 ["increment"]
      789 SETTABLEKS                       R29 R28 K58 ["onActivated"]
      791 MOVE                             R29 R12
      792 CALL                             R29 0 1
      793 SETTABLEKS                       R29 R28 K42 ["LayoutOrder"]
      795 CALL                             R26 2 1
      796 SETTABLEKS                       R26 R25 K116 ["NextPreview"]
      798 CALL                             R22 3 1
      799 SETTABLEKS                       R22 R21 K128 ["PreviewRow"]
      801 GETUPVAL                         R22 10
      802 GETUPVAL                         R23 13
      803 DUPTABLE                         R24 K131 [{"Size", "LayoutOrder"}]
      804 GETIMPORT                        R25 K89 [UDim2.new]
      806 LOADN                            R26 1
      807 LOADN                            R27 0
      808 LOADN                            R28 0
      809 GETUPVAL                         R29 23
      810 CALL                             R25 4 1
      811 SETTABLEKS                       R25 R24 K84 ["Size"]
      813 MOVE                             R25 R12
      814 CALL                             R25 0 1
      815 SETTABLEKS                       R25 R24 K42 ["LayoutOrder"]
      817 CALL                             R22 2 1
      818 SETTABLEKS                       R22 R21 K129 ["BottomGutter"]
      820 CALL                             R18 3 1
      821 SETTABLEKS                       R18 R17 K81 ["Preview"]
      823 GETTABLEKS                       R18 R0 K137 ["retryInfo"]
      825 JUMPIFNOT                        R18 ; [+9]
      826 GETUPVAL                         R18 24
      827 DUPTABLE                         R19 K139 [{"retryInfo", "nextOrder"}]
      828 GETTABLEKS                       R20 R0 K137 ["retryInfo"]
      830 SETTABLEKS                       R20 R19 K137 ["retryInfo"]
      832 SETTABLEKS                       R12 R19 K138 ["nextOrder"]
      834 CALL                             R18 1 1
      835 SETTABLEKS                       R18 R17 K82 ["RetryRow"]
      837 CALL                             R14 3 -1
      838 RETURN                           R14 -1

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
       10 GETTABLEKS                       R4 R0 K1 ["generationErrorMessage"]
       12 GETUPVAL                         R5 4
       13 GETUPVAL                         R6 5
       14 GETUPVAL                         R7 6
       15 GETTABLEKS                       R7 R7 K2 ["assign"]
       17 DUPTABLE                         R8 K5 [{"canToggle", "headerChildren"}]
       18 LOADB                            R9 1
       19 SETTABLEKS                       R9 R8 K3 ["canToggle"]
       21 DUPTABLE                         R9 K8 [{"StatusIcon", "Text"}]
       22 GETUPVAL                         R10 4
       23 GETUPVAL                         R11 7
       24 DUPTABLE                         R12 K13 [{"name", "size", "style", "LayoutOrder"}]
       25 LOADK                            R13 K14 ["icons/status/warning"]
       26 SETTABLEKS                       R13 R12 K9 ["name"]
       28 GETUPVAL                         R13 8
       29 GETTABLEKS                       R13 R13 K15 ["Enums"]
       31 GETTABLEKS                       R13 R13 K16 ["IconSize"]
       33 GETTABLEKS                       R13 R13 K17 ["Small"]
       35 SETTABLEKS                       R13 R12 K10 ["size"]
       37 GETTABLEKS                       R13 R1 K18 ["Color"]
       39 GETTABLEKS                       R13 R13 K19 ["System"]
       41 GETTABLEKS                       R13 R13 K20 ["Alert"]
       43 SETTABLEKS                       R13 R12 K11 ["style"]
       45 MOVE                             R13 R2
       46 CALL                             R13 0 1
       47 SETTABLEKS                       R13 R12 K12 ["LayoutOrder"]
       49 CALL                             R10 2 1
       50 SETTABLEKS                       R10 R9 K6 ["StatusIcon"]
       52 GETUPVAL                         R10 4
       53 GETUPVAL                         R11 9
       54 DUPTABLE                         R12 K22 [{"tag", "Text", "LayoutOrder"}]
       55 LOADK                            R13 K23 ["size-0-full auto-x text-label-small content-default text-truncate-end"]
       56 SETTABLEKS                       R13 R12 K21 ["tag"]
       58 GETUPVAL                         R13 10
       59 GETTABLEKS                       R13 R13 K24 ["GenerationFailed"]
       61 SETTABLEKS                       R13 R12 K7 ["Text"]
       63 MOVE                             R13 R2
       64 CALL                             R13 0 1
       65 SETTABLEKS                       R13 R12 K12 ["LayoutOrder"]
       67 CALL                             R10 2 1
       68 SETTABLEKS                       R10 R9 K7 ["Text"]
       70 SETTABLEKS                       R9 R8 K4 ["headerChildren"]
       72 MOVE                             R9 R0
       73 CALL                             R7 2 1
       74 DUPTABLE                         R8 K28 [{"TemplateMessage", "ErrorDetail", "RetryRow"}]
       75 GETUPVAL                         R9 4
       76 GETUPVAL                         R10 9
       77 DUPTABLE                         R11 K30 [{"tag", "Text", "TextWrapped", "LayoutOrder"}]
       78 LOADK                            R12 K31 ["size-full-0 auto-y text-body-small content-muted text-align-x-left"]
       79 SETTABLEKS                       R12 R11 K21 ["tag"]
       81 SETTABLEKS                       R3 R11 K7 ["Text"]
       83 LOADB                            R12 1
       84 SETTABLEKS                       R12 R11 K29 ["TextWrapped"]
       86 MOVE                             R12 R2
       87 CALL                             R12 0 1
       88 SETTABLEKS                       R12 R11 K12 ["LayoutOrder"]
       90 CALL                             R9 2 1
       91 SETTABLEKS                       R9 R8 K25 ["TemplateMessage"]
       93 MOVE                             R9 R4
       94 JUMPIFNOT                        R9 ; [+63]
       95 GETUPVAL                         R9 4
       96 GETUPVAL                         R10 11
       97 DUPTABLE                         R11 K32 [{"tag", "LayoutOrder"}]
       98 LOADK                            R12 K33 ["size-full-0 auto-y bg-shift-200 radius-small padding-small"]
       99 SETTABLEKS                       R12 R11 K21 ["tag"]
      101 MOVE                             R12 R2
      102 CALL                             R12 0 1
      103 SETTABLEKS                       R12 R11 K12 ["LayoutOrder"]
      105 DUPTABLE                         R12 K35 [{"ErrorText"}]
      106 GETUPVAL                         R13 4
      107 LOADK                            R14 K36 ["TextBox"]
      108 DUPTABLE                         R15 K46 [{"Text", "TextEditable", "ClearTextOnFocus", "TextWrapped", "TextXAlignment", "TextColor3", "FontFace", "TextSize", "Size", "AutomaticSize", "BackgroundTransparency"}]
      109 SETTABLEKS                       R4 R15 K7 ["Text"]
      111 LOADB                            R16 0
      112 SETTABLEKS                       R16 R15 K37 ["TextEditable"]
      114 LOADB                            R16 0
      115 SETTABLEKS                       R16 R15 K38 ["ClearTextOnFocus"]
      117 LOADB                            R16 1
      118 SETTABLEKS                       R16 R15 K29 ["TextWrapped"]
      120 GETIMPORT                        R16 K49 [Enum.TextXAlignment.Left]
      122 SETTABLEKS                       R16 R15 K39 ["TextXAlignment"]
      124 GETIMPORT                        R16 K52 [Color3.fromRGB]
      126 LOADN                            R17 138
      127 LOADN                            R18 180
      128 LOADN                            R19 220
      129 CALL                             R16 3 1
      130 SETTABLEKS                       R16 R15 K40 ["TextColor3"]
      132 GETUPVAL                         R16 12
      133 GETTABLEKS                       R16 R16 K53 ["CODE_FONT"]
      135 SETTABLEKS                       R16 R15 K41 ["FontFace"]
      137 LOADN                            R16 12
      138 SETTABLEKS                       R16 R15 K42 ["TextSize"]
      140 GETIMPORT                        R16 K56 [UDim2.fromScale]
      142 LOADN                            R17 1
      143 LOADN                            R18 0
      144 CALL                             R16 2 1
      145 SETTABLEKS                       R16 R15 K43 ["Size"]
      147 GETIMPORT                        R16 K58 [Enum.AutomaticSize.Y]
      149 SETTABLEKS                       R16 R15 K44 ["AutomaticSize"]
      151 LOADN                            R16 1
      152 SETTABLEKS                       R16 R15 K45 ["BackgroundTransparency"]
      154 CALL                             R13 2 1
      155 SETTABLEKS                       R13 R12 K34 ["ErrorText"]
      157 CALL                             R9 3 1
      158 SETTABLEKS                       R9 R8 K26 ["ErrorDetail"]
      160 GETTABLEKS                       R9 R0 K59 ["retryInfo"]
      162 JUMPIFNOT                        R9 ; [+9]
      163 GETUPVAL                         R9 13
      164 DUPTABLE                         R10 K61 [{"retryInfo", "nextOrder"}]
      165 GETTABLEKS                       R11 R0 K59 ["retryInfo"]
      167 SETTABLEKS                       R11 R10 K59 ["retryInfo"]
      169 SETTABLEKS                       R2 R10 K60 ["nextOrder"]
      171 CALL                             R9 1 1
      172 SETTABLEKS                       R9 R8 K27 ["RetryRow"]
      174 CALL                             R5 3 -1
      175 RETURN                           R5 -1

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
       97 GETTABLEKS                       R14 R0 K27 ["Flags"]
       99 GETTABLEKS                       R14 R14 K28 ["FFlagAssistantMultipleChatPersistence"]
      101 CALL                             R13 1 1
      102 GETIMPORT                        R14 K5 [require]
      104 GETTABLEKS                       R15 R0 K27 ["Flags"]
      106 GETTABLEKS                       R15 R15 K29 ["FFlagDisableTruncatePrimGenHeader"]
      108 CALL                             R14 1 1
      109 GETIMPORT                        R15 K5 [require]
      111 GETTABLEKS                       R16 R0 K27 ["Flags"]
      113 GETTABLEKS                       R16 R16 K30 ["FFlagPrimGenFetchPreviewFromBackend"]
      115 CALL                             R15 1 1
      116 GETIMPORT                        R16 K5 [require]
      118 GETTABLEKS                       R17 R0 K27 ["Flags"]
      120 GETTABLEKS                       R17 R17 K31 ["FFlagPrimGenRevertPreviewRefine"]
      122 CALL                             R16 1 1
      123 GETIMPORT                        R17 K5 [require]
      125 GETTABLEKS                       R18 R0 K27 ["Flags"]
      127 GETTABLEKS                       R18 R18 K32 ["FIntPrimGenLongRunThresholdSec"]
      129 CALL                             R17 1 1
      130 GETIMPORT                        R18 K5 [require]
      132 GETTABLEKS                       R19 R0 K27 ["Flags"]
      134 GETTABLEKS                       R19 R19 K33 ["FIntPrimGenTextMaxLength"]
      136 CALL                             R18 1 1
      137 GETIMPORT                        R19 K5 [require]
      139 GETTABLEKS                       R20 R0 K27 ["Flags"]
      141 GETTABLEKS                       R20 R20 K34 ["FIntPrimGenVerticalGutter"]
      143 CALL                             R19 1 1
      144 GETTABLEKS                       R20 R3 K35 ["Chip"]
      146 GETTABLEKS                       R21 R3 K36 ["Icon"]
      148 GETTABLEKS                       R22 R3 K37 ["Button"]
      150 GETTABLEKS                       R23 R3 K38 ["IconButton"]
      152 GETTABLEKS                       R24 R3 K39 ["Image"]
      154 GETTABLEKS                       R25 R3 K40 ["Skeleton"]
      156 GETTABLEKS                       R26 R3 K41 ["Text"]
      158 GETTABLEKS                       R27 R3 K42 ["View"]
      160 GETTABLEKS                       R28 R3 K21 ["Hooks"]
      162 GETTABLEKS                       R28 R28 K43 ["useTokens"]
      164 GETTABLEKS                       R29 R5 K44 ["createNextOrder"]
      166 GETTABLEKS                       R30 R4 K45 ["createElement"]
      168 GETTABLEKS                       R31 R12 K46 ["PREVIEW_HEIGHT"]
      170 MOVE                             R32 R19
      171 CALL                             R32 0 1
      172 MOVE                             R33 R17
      173 CALL                             R33 0 1
      174 MOVE                             R34 R18
      175 CALL                             R34 0 1
      176 DUPCLOSURE                       R35 K47 [PROTO_0]
      177 CAPTURE                          VAL R14
      178 CAPTURE                          VAL R34
      179 DUPTABLE                         R36 K52 [{"Generating", "Inserted", "Failed", "Cancelled"}]
      180 LOADK                            R37 K48 ["Generating"]
      181 SETTABLEKS                       R37 R36 K48 ["Generating"]
      183 LOADK                            R37 K49 ["Inserted"]
      184 SETTABLEKS                       R37 R36 K49 ["Inserted"]
      186 LOADK                            R37 K50 ["Failed"]
      187 SETTABLEKS                       R37 R36 K50 ["Failed"]
      189 LOADK                            R37 K51 ["Cancelled"]
      190 SETTABLEKS                       R37 R36 K51 ["Cancelled"]
      192 DUPTABLE                         R37 K56 [{"Preparing", "ShowPreview", "GenerationError"}]
      193 LOADK                            R38 K53 ["Preparing"]
      194 SETTABLEKS                       R38 R37 K53 ["Preparing"]
      196 LOADK                            R38 K54 ["ShowPreview"]
      197 SETTABLEKS                       R38 R37 K54 ["ShowPreview"]
      199 LOADK                            R38 K55 ["GenerationError"]
      200 SETTABLEKS                       R38 R37 K55 ["GenerationError"]
      202 DUPCLOSURE                       R38 K57 [PROTO_1]
      203 CAPTURE                          VAL R29
      204 CAPTURE                          VAL R30
      205 CAPTURE                          VAL R1
      206 DUPTABLE                         R39 K59 [{"Generating", "GenerationFailed"}]
      207 LOADK                            R42 K60 ["PrimitiveGen"]
      208 LOADK                            R43 K48 ["Generating"]
      209 NAMECALL                         R40 R8 K61 ["getText"]
      211 CALL                             R40 3 1
      212 SETTABLEKS                       R40 R39 K48 ["Generating"]
      214 LOADK                            R42 K60 ["PrimitiveGen"]
      215 LOADK                            R43 K58 ["GenerationFailed"]
      216 NAMECALL                         R40 R8 K61 ["getText"]
      218 CALL                             R40 3 1
      219 SETTABLEKS                       R40 R39 K58 ["GenerationFailed"]
      221 DUPCLOSURE                       R40 K62 [PROTO_2]
      222 CAPTURE                          VAL R37
      223 CAPTURE                          VAL R39
      224 CAPTURE                          VAL R29
      225 CAPTURE                          VAL R30
      226 CAPTURE                          VAL R38
      227 CAPTURE                          VAL R2
      228 CAPTURE                          VAL R26
      229 CAPTURE                          VAL R7
      230 DUPCLOSURE                       R41 K63 [PROTO_6]
      231 CAPTURE                          VAL R4
      232 CAPTURE                          VAL R33
      233 DUPCLOSURE                       R42 K64 [PROTO_7]
      234 CAPTURE                          VAL R11
      235 DUPTABLE                         R43 K68 [{"GeneratingPrefix", "Inserted", "GenerationCancelled", "GenerationFailed", "TakingLonger"}]
      236 LOADK                            R46 K60 ["PrimitiveGen"]
      237 LOADK                            R47 K65 ["GeneratingPrefix"]
      238 NAMECALL                         R44 R8 K61 ["getText"]
      240 CALL                             R44 3 1
      241 SETTABLEKS                       R44 R43 K65 ["GeneratingPrefix"]
      243 LOADK                            R46 K60 ["PrimitiveGen"]
      244 LOADK                            R47 K49 ["Inserted"]
      245 NAMECALL                         R44 R8 K61 ["getText"]
      247 CALL                             R44 3 1
      248 SETTABLEKS                       R44 R43 K49 ["Inserted"]
      250 LOADK                            R46 K60 ["PrimitiveGen"]
      251 LOADK                            R47 K66 ["GenerationCancelled"]
      252 NAMECALL                         R44 R8 K61 ["getText"]
      254 CALL                             R44 3 1
      255 SETTABLEKS                       R44 R43 K66 ["GenerationCancelled"]
      257 LOADK                            R46 K60 ["PrimitiveGen"]
      258 LOADK                            R47 K58 ["GenerationFailed"]
      259 NAMECALL                         R44 R8 K61 ["getText"]
      261 CALL                             R44 3 1
      262 SETTABLEKS                       R44 R43 K58 ["GenerationFailed"]
      264 LOADK                            R46 K60 ["PrimitiveGen"]
      265 LOADK                            R47 K67 ["TakingLonger"]
      266 NAMECALL                         R44 R8 K61 ["getText"]
      268 CALL                             R44 3 1
      269 SETTABLEKS                       R44 R43 K67 ["TakingLonger"]
      271 GETTABLEKS                       R44 R3 K69 ["Enums"]
      273 GETTABLEKS                       R44 R44 K70 ["FillBehavior"]
      275 GETTABLEKS                       R45 R3 K69 ["Enums"]
      277 GETTABLEKS                       R45 R45 K71 ["InputSize"]
      279 DUPCLOSURE                       R46 K72 [PROTO_8]
      280 CAPTURE                          VAL R30
      281 CAPTURE                          VAL R27
      282 CAPTURE                          VAL R26
      283 CAPTURE                          VAL R22
      284 CAPTURE                          VAL R45
      285 CAPTURE                          VAL R3
      286 CAPTURE                          VAL R44
      287 DUPCLOSURE                       R47 K73 [PROTO_10]
      288 CAPTURE                          VAL R36
      289 CAPTURE                          VAL R41
      290 CAPTURE                          VAL R11
      291 CAPTURE                          VAL R10
      292 CAPTURE                          VAL R16
      293 CAPTURE                          VAL R43
      294 CAPTURE                          VAL R35
      295 CAPTURE                          VAL R29
      296 CAPTURE                          VAL R33
      297 CAPTURE                          VAL R8
      298 CAPTURE                          VAL R30
      299 CAPTURE                          VAL R38
      300 CAPTURE                          VAL R2
      301 CAPTURE                          VAL R27
      302 CAPTURE                          VAL R26
      303 CAPTURE                          VAL R7
      304 CAPTURE                          VAL R20
      305 CAPTURE                          VAL R3
      306 CAPTURE                          VAL R31
      307 CAPTURE                          VAL R24
      308 CAPTURE                          VAL R25
      309 CAPTURE                          VAL R15
      310 CAPTURE                          VAL R23
      311 CAPTURE                          VAL R32
      312 CAPTURE                          VAL R46
      313 LOADK                            R50 K60 ["PrimitiveGen"]
      314 LOADK                            R51 K74 ["GenerationErrorGeneral"]
      315 NAMECALL                         R48 R8 K61 ["getText"]
      317 CALL                             R48 3 1
      318 DUPTABLE                         R49 K78 [{"General", "TooManyRequests", "ModerationFailed"}]
      319 SETTABLEKS                       R48 R49 K75 ["General"]
      321 LOADK                            R52 K60 ["PrimitiveGen"]
      322 LOADK                            R53 K79 ["GenerationErrorTooManyRequests"]
      323 NAMECALL                         R50 R8 K61 ["getText"]
      325 CALL                             R50 3 1
      326 SETTABLEKS                       R50 R49 K76 ["TooManyRequests"]
      328 LOADK                            R52 K60 ["PrimitiveGen"]
      329 LOADK                            R53 K80 ["GenerationErrorModerationFailed"]
      330 NAMECALL                         R50 R8 K61 ["getText"]
      332 CALL                             R50 3 1
      333 SETTABLEKS                       R50 R49 K77 ["ModerationFailed"]
      335 DUPCLOSURE                       R50 K81 [PROTO_11]
      336 CAPTURE                          VAL R28
      337 CAPTURE                          VAL R29
      338 CAPTURE                          VAL R49
      339 CAPTURE                          VAL R48
      340 CAPTURE                          VAL R30
      341 CAPTURE                          VAL R38
      342 CAPTURE                          VAL R2
      343 CAPTURE                          VAL R21
      344 CAPTURE                          VAL R3
      345 CAPTURE                          VAL R26
      346 CAPTURE                          VAL R39
      347 CAPTURE                          VAL R27
      348 CAPTURE                          VAL R9
      349 CAPTURE                          VAL R46
      350 DUPCLOSURE                       R51 K82 [PROTO_12]
      351 CAPTURE                          VAL R37
      352 CAPTURE                          VAL R30
      353 CAPTURE                          VAL R47
      354 CAPTURE                          VAL R50
      355 CAPTURE                          VAL R2
      356 CAPTURE                          VAL R40
      357 DUPTABLE                         R52 K85 [{"toMeta", "fromMeta"}]
      358 DUPCLOSURE                       R53 K86 [PROTO_13]
      359 CAPTURE                          VAL R13
      360 CAPTURE                          VAL R37
      361 SETTABLEKS                       R53 R52 K83 ["toMeta"]
      363 DUPCLOSURE                       R53 K87 [PROTO_14]
      364 CAPTURE                          VAL R13
      365 CAPTURE                          VAL R37
      366 CAPTURE                          VAL R5
      367 CAPTURE                          VAL R36
      368 SETTABLEKS                       R53 R52 K84 ["fromMeta"]
      370 DUPTABLE                         R53 K93 [{"Type", "ContentWidget", "Serialization", "Modes", "PreviewState"}]
      371 LOADK                            R54 K60 ["PrimitiveGen"]
      372 SETTABLEKS                       R54 R53 K88 ["Type"]
      374 GETTABLEKS                       R54 R4 K94 ["memo"]
      376 MOVE                             R55 R51
      377 CALL                             R54 1 1
      378 SETTABLEKS                       R54 R53 K89 ["ContentWidget"]
      380 SETTABLEKS                       R52 R53 K90 ["Serialization"]
      382 SETTABLEKS                       R37 R53 K91 ["Modes"]
      384 SETTABLEKS                       R36 R53 K92 ["PreviewState"]
      386 RETURN                           R53 1
