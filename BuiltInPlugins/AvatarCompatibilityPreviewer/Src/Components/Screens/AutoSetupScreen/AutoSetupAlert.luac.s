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
        9 JUMP                             ; [+25]
       10 GETUPVAL                         R1 1
       11 JUMPIFEQKNIL                     R1 ; [+22]
       13 GETUPVAL                         R1 1
       14 GETTABLEKS                       R1 R1 K4 ["level"]
       16 JUMPIFNOTEQKNIL                  R1 ; [+3]
       18 LOADK                            R0 K5 ["Info"]
       19 JUMP                             ; [+15]
       20 GETIMPORT                        R2 K8 [string.lower]
       22 MOVE                             R3 R1
       23 CALL                             R2 1 1
       24 JUMPIFNOTEQKS                    R2 K2 ["error"] ; [+3]
       26 LOADK                            R0 K3 ["Error"]
       27 JUMP                             ; [+7]
       28 JUMPIFNOTEQKS                    R2 K9 ["warning"] ; [+3]
       30 LOADK                            R0 K10 ["Warning"]
       31 JUMP                             ; [+3]
       32 LOADK                            R0 K5 ["Info"]
       33 JUMP                             ; [+1]
       34 RETURN                           R0 0
       35 GETUPVAL                         R1 2
       36 MOVE                             R2 R0
       37 CALL                             R1 1 0
       38 RETURN                           R0 0

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
       19 LOADK                            R4 K6 ["Info"]
       20 CALL                             R3 1 2
       21 GETUPVAL                         R5 1
       22 GETTABLEKS                       R5 R5 K7 ["useCallback"]
       24 NEWCLOSURE                       R6 P0
       25 CAPTURE                          VAL R0
       26 NEWTABLE                         R7 0 1
       28 GETTABLEKS                       R8 R0 K8 ["clearError"]
       30 SETLIST                          R7 R8 1 [1]
       32 CALL                             R5 2 1
       33 DUPCLOSURE                       R6 K9 [PROTO_1]
       34 GETUPVAL                         R7 1
       35 GETTABLEKS                       R7 R7 K10 ["useEffect"]
       37 NEWCLOSURE                       R8 P2
       38 CAPTURE                          VAL R0
       39 CAPTURE                          VAL R2
       40 CAPTURE                          VAL R4
       41 NEWTABLE                         R9 0 2
       43 GETTABLEKS                       R10 R0 K1 ["autoSetupState"]
       45 GETTABLEKS                       R10 R10 K2 ["type"]
       47 MOVE                             R11 R2
       48 JUMPIFNOT                        R11 ; [+2]
       49 GETTABLEKS                       R11 R2 K11 ["message"]
       51 SETLIST                          R9 R10 2 [1]
       53 CALL                             R7 2 0
       54 LOADNIL                          R7
       55 LOADNIL                          R8
       56 GETTABLEKS                       R9 R0 K1 ["autoSetupState"]
       58 GETTABLEKS                       R9 R9 K2 ["type"]
       60 JUMPIFNOTEQKS                    R9 K12 ["error"] ; [+17]
       62 LOADK                            R11 K13 ["AvatarScreen"]
       63 LOADK                            R12 K14 ["AutoSetupErrorTitle"]
       64 NAMECALL                         R9 R1 K15 ["getText"]
       66 CALL                             R9 3 1
       67 MOVE                             R7 R9
       68 LOADK                            R11 K13 ["AvatarScreen"]
       69 GETTABLEKS                       R12 R0 K1 ["autoSetupState"]
       71 GETTABLEKS                       R12 R12 K12 ["error"]
       73 NAMECALL                         R9 R1 K15 ["getText"]
       75 CALL                             R9 3 1
       76 MOVE                             R8 R9
       77 JUMP                             ; [+27]
       78 JUMPIFEQKNIL                     R2 ; [+24]
       80 GETTABLEKS                       R9 R2 K11 ["message"]
       82 JUMPIFEQKNIL                     R9 ; [+20]
       84 LOADK                            R11 K16 ["AutoSetupAlert"]
       85 GETTABLEKS                       R13 R2 K11 ["message"]
       87 LOADK                            R14 K17 ["Title"]
       88 CONCAT                           R12 R13 R14
       89 NAMECALL                         R9 R1 K15 ["getText"]
       91 CALL                             R9 3 1
       92 MOVE                             R7 R9
       93 LOADK                            R11 K16 ["AutoSetupAlert"]
       94 GETTABLEKS                       R13 R2 K11 ["message"]
       96 LOADK                            R14 K18 ["Description"]
       97 CONCAT                           R12 R13 R14
       98 NAMECALL                         R9 R1 K15 ["getText"]
      100 CALL                             R9 3 1
      101 MOVE                             R8 R9
      102 JUMP                             ; [+2]
      103 LOADNIL                          R9
      104 RETURN                           R9 1
      105 GETUPVAL                         R9 1
      106 GETTABLEKS                       R9 R9 K19 ["createElement"]
      108 GETUPVAL                         R10 2
      109 DUPTABLE                         R11 K22 [{"Title", "Description", "Style", "OnClose"}]
      110 SETTABLEKS                       R7 R11 K17 ["Title"]
      112 SETTABLEKS                       R8 R11 K18 ["Description"]
      114 SETTABLEKS                       R3 R11 K20 ["Style"]
      116 SETTABLEKS                       R5 R11 K21 ["OnClose"]
      118 CALL                             R9 2 -1
      119 RETURN                           R9 -1

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
       37 GETTABLEKS                       R5 R2 K13 ["ContextServices"]
       39 GETTABLEKS                       R5 R5 K14 ["Localization"]
       41 GETTABLEKS                       R6 R2 K15 ["UI"]
       43 GETTABLEKS                       R7 R6 K16 ["Alert"]
       45 DUPCLOSURE                       R8 K17 [PROTO_3]
       46 CAPTURE                          VAL R5
       47 CAPTURE                          VAL R3
       48 CAPTURE                          VAL R7
       49 RETURN                           R8 1
