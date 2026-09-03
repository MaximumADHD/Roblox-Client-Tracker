PROTO_0:
        0 DUPTABLE                         R0 K4 [{"Completed", "Failed", "InProgress", "ToolRejected"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K5 ["AvatarAutoSetup"]
        3 LOADK                            R4 K0 ["Completed"]
        4 NAMECALL                         R1 R1 K6 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["Completed"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K5 ["AvatarAutoSetup"]
       11 LOADK                            R4 K1 ["Failed"]
       12 NAMECALL                         R1 R1 K6 ["getText"]
       14 CALL                             R1 3 1
       15 SETTABLEKS                       R1 R0 K1 ["Failed"]
       17 GETUPVAL                         R1 0
       18 LOADK                            R3 K5 ["AvatarAutoSetup"]
       19 LOADK                            R4 K2 ["InProgress"]
       20 NAMECALL                         R1 R1 K6 ["getText"]
       22 CALL                             R1 3 1
       23 SETTABLEKS                       R1 R0 K2 ["InProgress"]
       25 GETUPVAL                         R1 0
       26 LOADK                            R3 K7 ["ToolConfirmation"]
       27 LOADK                            R4 K8 ["ToolCallRejected"]
       28 DUPTABLE                         R5 K10 [{"toolName"}]
       29 GETUPVAL                         R6 1
       30 SETTABLEKS                       R6 R5 K9 ["toolName"]
       32 NAMECALL                         R1 R1 K6 ["getText"]
       34 CALL                             R1 4 1
       35 SETTABLEKS                       R1 R0 K3 ["ToolRejected"]
       37 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["toolResult"]
        2 GETTABLEKS                       R3 R0 K1 ["toolUse"]
        4 JUMPIFNOT                        R3 ; [+5]
        5 GETTABLEKS                       R2 R0 K1 ["toolUse"]
        7 GETTABLEKS                       R2 R2 K2 ["name"]
        9 JUMPIF                           R2 ; [+1]
       10 LOADK                            R2 K3 [""]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K4 ["useMemo"]
       14 NEWCLOSURE                       R4 P0
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          VAL R2
       17 NEWTABLE                         R5 0 2
       19 GETUPVAL                         R6 1
       20 GETTABLEKS                       R6 R6 K5 ["locale"]
       22 MOVE                             R7 R2
       23 SETLIST                          R5 R6 2 [1]
       25 CALL                             R3 2 1
       26 GETUPVAL                         R4 2
       27 GETTABLEKS                       R4 R4 K6 ["deriveToolStatus"]
       29 GETTABLEKS                       R5 R0 K1 ["toolUse"]
       31 MOVE                             R6 R1
       32 CALL                             R4 2 1
       33 LOADB                            R5 1
       34 GETUPVAL                         R6 3
       35 GETTABLEKS                       R6 R6 K7 ["Preparing"]
       37 JUMPIFEQ                         R4 R6 ; [+8]
       39 GETUPVAL                         R6 3
       40 GETTABLEKS                       R6 R6 K8 ["Running"]
       42 JUMPIFEQ                         R4 R6 ; [+2]
       44 LOADB                            R5 0 +1
       45 LOADB                            R5 1
       46 LOADNIL                          R6
       47 JUMPIFNOT                        R5 ; [+3]
       48 GETTABLEKS                       R6 R3 K9 ["InProgress"]
       50 JUMP                             ; [+18]
       51 GETUPVAL                         R7 3
       52 GETTABLEKS                       R7 R7 K10 ["Rejected"]
       54 JUMPIFNOTEQ                      R4 R7 ; [+4]
       56 GETTABLEKS                       R6 R3 K11 ["ToolRejected"]
       58 JUMP                             ; [+10]
       59 GETUPVAL                         R7 3
       60 GETTABLEKS                       R7 R7 K12 ["Failed"]
       62 JUMPIFNOTEQ                      R4 R7 ; [+4]
       64 GETTABLEKS                       R6 R3 K12 ["Failed"]
       66 JUMP                             ; [+2]
       67 GETTABLEKS                       R6 R3 K13 ["Completed"]
       69 GETUPVAL                         R7 4
       70 GETUPVAL                         R8 5
       71 DUPTABLE                         R9 K17 [{["tag"] = "col gap-xsmall size-full-0 auto-y", ["LayoutOrder"]}]
       72 GETTABLEKS                       R10 R0 K16 ["LayoutOrder"]
       74 SETTABLEKS                       R10 R9 K16 ["LayoutOrder"]
       76 DUPTABLE                         R10 K19 [{"Status"}]
       77 GETUPVAL                         R11 4
       78 GETUPVAL                         R12 6
       79 DUPTABLE                         R13 K21 [{"tag", "Text"}]
       80 NEWTABLE                         R14 4 0
       82 LOADB                            R15 1
       83 SETTABLEKS                       R15 R14 K22 ["auto-xy text-caption-medium"]
       85 GETUPVAL                         R16 3
       86 GETTABLEKS                       R16 R16 K12 ["Failed"]
       88 JUMPIFEQ                         R4 R16 ; [+2]
       90 LOADB                            R15 0 +1
       91 LOADB                            R15 1
       92 SETTABLEKS                       R15 R14 K23 ["content-alert"]
       94 GETUPVAL                         R16 3
       95 GETTABLEKS                       R16 R16 K12 ["Failed"]
       97 JUMPIFNOTEQ                      R4 R16 ; [+2]
       99 LOADB                            R15 0 +1
      100 LOADB                            R15 1
      101 SETTABLEKS                       R15 R14 K24 ["content-muted"]
      103 SETTABLEKS                       R14 R13 K14 ["tag"]
      105 SETTABLEKS                       R6 R13 K20 ["Text"]
      107 DUPTABLE                         R14 K26 [{"Shimmer"}]
      108 JUMPIFNOT                        R5 ; [+4]
      109 GETUPVAL                         R15 4
      110 GETUPVAL                         R16 7
      111 CALL                             R15 1 1
      112 JUMP                             ; [+1]
      113 LOADNIL                          R15
      114 SETTABLEKS                       R15 R14 K25 ["Shimmer"]
      116 CALL                             R11 3 1
      117 SETTABLEKS                       R11 R10 K18 ["Status"]
      119 CALL                             R7 3 -1
      120 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Components"]
       25 GETTABLEKS                       R4 R4 K10 ["ShimmerGradient"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["Resources"]
       32 GETTABLEKS                       R5 R5 K12 ["Localization"]
       34 GETTABLEKS                       R5 R5 K13 ["Translator"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K14 ["Types"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K15 ["Util"]
       46 GETTABLEKS                       R7 R7 K16 ["WidgetUtils"]
       48 CALL                             R6 1 1
       49 GETTABLEKS                       R7 R1 K17 ["Text"]
       51 GETTABLEKS                       R8 R1 K18 ["View"]
       53 GETTABLEKS                       R9 R6 K19 ["ToolStatus"]
       55 GETTABLEKS                       R10 R2 K20 ["createElement"]
       57 DUPCLOSURE                       R11 K21 [PROTO_1]
       58 CAPTURE                          VAL R2
       59 CAPTURE                          VAL R4
       60 CAPTURE                          VAL R6
       61 CAPTURE                          VAL R9
       62 CAPTURE                          VAL R10
       63 CAPTURE                          VAL R8
       64 CAPTURE                          VAL R7
       65 CAPTURE                          VAL R3
       66 DUPTABLE                         R12 K25 [{["Type"] = "AvatarAutoSetup", ["ContentWidget"]}]
       67 GETTABLEKS                       R13 R2 K26 ["memo"]
       69 MOVE                             R14 R11
       70 CALL                             R13 1 1
       71 SETTABLEKS                       R13 R12 K24 ["ContentWidget"]
       73 RETURN                           R12 1
