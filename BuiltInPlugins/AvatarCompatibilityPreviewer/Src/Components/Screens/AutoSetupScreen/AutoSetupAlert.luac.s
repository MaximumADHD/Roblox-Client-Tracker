PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["clearError"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_1:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADK                            R1 K0 ["Info"]
        3 RETURN                           R1 1
        4 GETIMPORT                        R1 K3 [string.lower]
        6 MOVE                             R2 R0
        7 CALL                             R1 1 1
        8 JUMPIFNOTEQKS                    R1 K4 ["error"] ; [+3]
       10 LOADK                            R2 K5 ["Error"]
       11 RETURN                           R2 1
       12 JUMPIFNOTEQKS                    R1 K6 ["warning"] ; [+3]
       14 LOADK                            R2 K7 ["Warning"]
       15 RETURN                           R2 1
       16 LOADK                            R2 K0 ["Info"]
       17 RETURN                           R2 1

PROTO_2:
        0 LOADNIL                          R0
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["autoSetupState"]
        4 GETTABLEKS                       R1 R1 K1 ["type"]
        6 JUMPIFNOTEQKS                    R1 K2 ["error"] ; [+3]
        8 LOADK                            R0 K3 ["Error"]
        9 JUMP                             ; [+37]
       10 GETUPVAL                         R1 1
       11 JUMPIFEQKNIL                     R1 ; [+22]
       13 GETUPVAL                         R1 1
       14 GETTABLEKS                       R1 R1 K4 ["level"]
       16 JUMPIFNOTEQKNIL                  R1 ; [+3]
       18 LOADK                            R0 K5 ["Info"]
       19 JUMP                             ; [+27]
       20 GETIMPORT                        R2 K8 [string.lower]
       22 MOVE                             R3 R1
       23 CALL                             R2 1 1
       24 JUMPIFNOTEQKS                    R2 K2 ["error"] ; [+3]
       26 LOADK                            R0 K3 ["Error"]
       27 JUMP                             ; [+19]
       28 JUMPIFNOTEQKS                    R2 K9 ["warning"] ; [+3]
       30 LOADK                            R0 K10 ["Warning"]
       31 JUMP                             ; [+15]
       32 LOADK                            R0 K5 ["Info"]
       33 JUMP                             ; [+13]
       34 GETUPVAL                         R1 2
       35 CALL                             R1 0 1
       36 JUMPIF                           R1 ; [+9]
       37 GETUPVAL                         R1 3
       38 JUMPIFEQKNIL                     R1 ; [+7]
       40 GETIMPORT                        R1 K13 [task.cancel]
       42 GETUPVAL                         R2 3
       43 CALL                             R1 1 0
       44 GETUPVAL                         R1 4
       45 CALL                             R1 0 0
       46 RETURN                           R0 0
       47 GETUPVAL                         R1 5
       48 MOVE                             R2 R0
       49 CALL                             R1 1 0
       50 GETUPVAL                         R1 2
       51 CALL                             R1 0 1
       52 JUMPIF                           R1 ; [+18]
       53 GETUPVAL                         R1 3
       54 JUMPIFEQKNIL                     R1 ; [+7]
       56 GETIMPORT                        R1 K13 [task.cancel]
       58 GETUPVAL                         R2 3
       59 CALL                             R1 1 0
       60 GETUPVAL                         R1 4
       61 CALL                             R1 0 0
       62 JUMPIFNOTEQKS                    R0 K5 ["Info"] ; [+8]
       64 GETUPVAL                         R1 4
       65 GETIMPORT                        R2 K15 [task.delay]
       67 LOADN                            R3 10
       68 GETUPVAL                         R4 6
       69 CALL                             R2 2 -1
       70 CALL                             R1 -1 0
       71 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R3 R0 K1 ["autoSetupState"]
        6 GETTABLEKS                       R3 R3 K2 ["type"]
        8 JUMPIFNOTEQKS                    R3 K3 ["inAutoSetup"] ; [+6]
       10 GETTABLEKS                       R2 R0 K1 ["autoSetupState"]
       12 GETTABLEKS                       R2 R2 K4 ["metadataState"]
       14 JUMP                             ; [+1]
       15 LOADNIL                          R2
       16 GETUPVAL                         R3 1
       17 GETTABLEKS                       R3 R3 K5 ["useState"]
       19 LOADNIL                          R4
       20 CALL                             R3 1 2
       21 GETUPVAL                         R5 1
       22 GETTABLEKS                       R5 R5 K5 ["useState"]
       24 LOADK                            R6 K6 ["Info"]
       25 CALL                             R5 1 2
       26 GETUPVAL                         R7 1
       27 GETTABLEKS                       R7 R7 K7 ["useCallback"]
       29 NEWCLOSURE                       R8 P0
       30 CAPTURE                          VAL R0
       31 NEWTABLE                         R9 0 1
       33 GETTABLEKS                       R10 R0 K8 ["clearError"]
       35 SETLIST                          R9 R10 1 [1]
       37 CALL                             R7 2 1
       38 DUPCLOSURE                       R8 K9 [PROTO_1]
       39 GETUPVAL                         R9 1
       40 GETTABLEKS                       R9 R9 K10 ["useEffect"]
       42 NEWCLOSURE                       R10 P2
       43 CAPTURE                          VAL R0
       44 CAPTURE                          VAL R2
       45 CAPTURE                          UPVAL U2
       46 CAPTURE                          VAL R3
       47 CAPTURE                          VAL R4
       48 CAPTURE                          VAL R6
       49 CAPTURE                          VAL R7
       50 NEWTABLE                         R11 0 2
       52 GETTABLEKS                       R12 R0 K1 ["autoSetupState"]
       54 GETTABLEKS                       R12 R12 K2 ["type"]
       56 MOVE                             R13 R2
       57 JUMPIFNOT                        R13 ; [+2]
       58 GETTABLEKS                       R13 R2 K11 ["message"]
       60 SETLIST                          R11 R12 2 [1]
       62 CALL                             R9 2 0
       63 LOADNIL                          R9
       64 LOADNIL                          R10
       65 GETTABLEKS                       R11 R0 K1 ["autoSetupState"]
       67 GETTABLEKS                       R11 R11 K2 ["type"]
       69 JUMPIFNOTEQKS                    R11 K12 ["error"] ; [+17]
       71 LOADK                            R13 K13 ["AvatarScreen"]
       72 LOADK                            R14 K14 ["AutoSetupErrorTitle"]
       73 NAMECALL                         R11 R1 K15 ["getText"]
       75 CALL                             R11 3 1
       76 MOVE                             R9 R11
       77 LOADK                            R13 K13 ["AvatarScreen"]
       78 GETTABLEKS                       R14 R0 K1 ["autoSetupState"]
       80 GETTABLEKS                       R14 R14 K12 ["error"]
       82 NAMECALL                         R11 R1 K15 ["getText"]
       84 CALL                             R11 3 1
       85 MOVE                             R10 R11
       86 JUMP                             ; [+27]
       87 JUMPIFEQKNIL                     R2 ; [+24]
       89 GETTABLEKS                       R11 R2 K11 ["message"]
       91 JUMPIFEQKNIL                     R11 ; [+20]
       93 LOADK                            R13 K16 ["AutoSetupAlert"]
       94 GETTABLEKS                       R15 R2 K11 ["message"]
       96 LOADK                            R16 K17 ["Title"]
       97 CONCAT                           R14 R15 R16
       98 NAMECALL                         R11 R1 K15 ["getText"]
      100 CALL                             R11 3 1
      101 MOVE                             R9 R11
      102 LOADK                            R13 K16 ["AutoSetupAlert"]
      103 GETTABLEKS                       R15 R2 K11 ["message"]
      105 LOADK                            R16 K18 ["Description"]
      106 CONCAT                           R14 R15 R16
      107 NAMECALL                         R11 R1 K15 ["getText"]
      109 CALL                             R11 3 1
      110 MOVE                             R10 R11
      111 JUMP                             ; [+2]
      112 LOADNIL                          R11
      113 RETURN                           R11 1
      114 GETUPVAL                         R11 1
      115 GETTABLEKS                       R11 R11 K19 ["createElement"]
      117 GETUPVAL                         R12 3
      118 DUPTABLE                         R13 K22 [{"Title", "Description", "Style", "OnClose"}]
      119 SETTABLEKS                       R9 R13 K17 ["Title"]
      121 SETTABLEKS                       R10 R13 K18 ["Description"]
      123 SETTABLEKS                       R5 R13 K20 ["Style"]
      125 GETUPVAL                         R15 2
      126 CALL                             R15 0 1
      127 JUMPIFNOT                        R15 ; [+2]
      128 MOVE                             R14 R7
      129 JUMP                             ; [+5]
      130 JUMPIFNOTEQKS                    R5 K6 ["Info"] ; [+3]
      132 LOADNIL                          R14
      133 JUMP                             ; [+1]
      134 MOVE                             R14 R7
      135 SETTABLEKS                       R14 R13 K21 ["OnClose"]
      137 CALL                             R11 2 -1
      138 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Packages"]
       18 GETTABLEKS                       R3 R3 K9 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Packages"]
       25 GETTABLEKS                       R4 R4 K10 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Hooks"]
       34 GETTABLEKS                       R5 R5 K12 ["useToggleState"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K6 ["Src"]
       41 GETTABLEKS                       R6 R6 K13 ["Flags"]
       43 GETTABLEKS                       R6 R6 K14 ["getFFlagAvatarAutosetupOptionsInput"]
       45 CALL                             R5 1 1
       46 GETTABLEKS                       R6 R2 K15 ["ContextServices"]
       48 GETTABLEKS                       R6 R6 K16 ["Localization"]
       50 GETTABLEKS                       R7 R2 K17 ["UI"]
       52 GETTABLEKS                       R8 R7 K18 ["Alert"]
       54 DUPCLOSURE                       R9 K19 [PROTO_3]
       55 CAPTURE                          VAL R6
       56 CAPTURE                          VAL R3
       57 CAPTURE                          VAL R5
       58 CAPTURE                          VAL R8
       59 RETURN                           R9 1
