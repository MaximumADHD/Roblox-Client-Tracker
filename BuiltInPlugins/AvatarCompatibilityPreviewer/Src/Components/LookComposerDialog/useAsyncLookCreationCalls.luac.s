PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["validateLookAsync"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["dialogLookType"]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["dialogItems"]
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K3 ["skinColor"]
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R4 R4 K4 ["selectedCreatorId"]
       15 GETUPVAL                         R5 1
       16 GETTABLEKS                       R5 R5 K1 ["dialogLookType"]
       18 CALL                             R0 5 1
       19 GETTABLEKS                       R1 R0 K5 ["success"]
       21 JUMPIFNOT                        R1 ; [+9]
       22 GETUPVAL                         R1 2
       23 LOADK                            R2 K6 ["Success"]
       24 CALL                             R1 1 0
       25 GETUPVAL                         R1 3
       26 LOADK                            R3 K7 ["marketplaceLookValidationSuccess"]
       27 NAMECALL                         R1 R1 K8 ["report"]
       29 CALL                             R1 2 0
       30 RETURN                           R0 0
       31 NEWTABLE                         R1 0 0
       33 GETTABLEKS                       R2 R0 K9 ["errorMessages"]
       35 LOADNIL                          R3
       36 LOADNIL                          R4
       37 FORGPREP                         R2
       38 GETTABLEKS                       R7 R6 K10 ["isLocalized"]
       40 JUMPIFNOT                        R7 ; [+19]
       41 DUPTABLE                         R9 K13 [{"message", "isBlocking", "isLocalized"}]
       42 GETTABLEKS                       R10 R6 K11 ["message"]
       44 SETTABLEKS                       R10 R9 K11 ["message"]
       46 GETTABLEKS                       R10 R6 K12 ["isBlocking"]
       48 SETTABLEKS                       R10 R9 K12 ["isBlocking"]
       50 LOADB                            R10 1
       51 SETTABLEKS                       R10 R9 K10 ["isLocalized"]
       53 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       55 MOVE                             R8 R1
       56 GETIMPORT                        R7 K16 [table.insert]
       58 CALL                             R7 2 0
       59 JUMP                             ; [+23]
       60 DUPTABLE                         R9 K13 [{"message", "isBlocking", "isLocalized"}]
       61 GETUPVAL                         R10 4
       62 LOADK                            R12 K17 ["LookComposerDialog"]
       63 GETTABLEKS                       R13 R6 K11 ["message"]
       65 NAMECALL                         R10 R10 K18 ["getText"]
       67 CALL                             R10 3 1
       68 SETTABLEKS                       R10 R9 K11 ["message"]
       70 GETTABLEKS                       R10 R6 K12 ["isBlocking"]
       72 SETTABLEKS                       R10 R9 K12 ["isBlocking"]
       74 LOADB                            R10 1
       75 SETTABLEKS                       R10 R9 K10 ["isLocalized"]
       77 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       79 MOVE                             R8 R1
       80 GETIMPORT                        R7 K16 [table.insert]
       82 CALL                             R7 2 0
       83 FORGLOOP                         R2 2 ; [-46]
       85 GETUPVAL                         R2 5
       86 MOVE                             R3 R1
       87 CALL                             R2 1 0
       88 GETUPVAL                         R2 2
       89 LOADK                            R3 K19 ["Failure"]
       90 CALL                             R2 1 0
       91 GETUPVAL                         R2 3
       92 LOADK                            R4 K20 ["marketplaceLookValidationError"]
       93 NAMECALL                         R2 R2 K8 ["report"]
       95 CALL                             R2 2 0
       96 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKS                    R0 K0 ["ReadyToFire"] ; [+14]
        3 GETUPVAL                         R0 1
        4 LOADK                            R1 K1 ["Firing"]
        5 CALL                             R0 1 0
        6 GETIMPORT                        R0 K4 [task.spawn]
        8 NEWCLOSURE                       R1 P0
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          UPVAL U4
       13 CAPTURE                          UPVAL U5
       14 CAPTURE                          UPVAL U6
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createLookAsync"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["dialogLookType"]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["dialogItems"]
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K3 ["skinColor"]
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R4 R4 K4 ["selectedCreatorId"]
       15 GETUPVAL                         R5 1
       16 GETTABLEKS                       R5 R5 K5 ["name"]
       18 GETUPVAL                         R6 1
       19 GETTABLEKS                       R6 R6 K6 ["description"]
       21 GETUPVAL                         R7 1
       22 GETTABLEKS                       R7 R7 K1 ["dialogLookType"]
       24 GETUPVAL                         R8 1
       25 GETTABLEKS                       R8 R8 K7 ["bodyScale"]
       27 CALL                             R0 8 1
       28 GETTABLEKS                       R1 R0 K8 ["success"]
       30 JUMPIFNOT                        R1 ; [+13]
       31 GETUPVAL                         R1 2
       32 GETTABLEKS                       R2 R0 K9 ["lookId"]
       34 CALL                             R1 1 0
       35 GETUPVAL                         R1 3
       36 LOADK                            R2 K10 ["Success"]
       37 CALL                             R1 1 0
       38 GETUPVAL                         R1 4
       39 LOADK                            R3 K11 ["marketplaceLookCreationSuccess"]
       40 NAMECALL                         R1 R1 K12 ["report"]
       42 CALL                             R1 2 0
       43 RETURN                           R0 0
       44 LOADNIL                          R1
       45 GETTABLEKS                       R3 R0 K13 ["errorMessages"]
       47 LENGTH                           R2 R3
       48 LOADN                            R3 0
       49 JUMPIFNOTLT                      R3 R2 ; [+24]
       51 GETTABLEKS                       R3 R0 K13 ["errorMessages"]
       53 GETTABLEN                        R2 R3 1
       54 GETTABLEKS                       R2 R2 K14 ["isLocalized"]
       56 JUMPIFNOT                        R2 ; [+6]
       57 GETTABLEKS                       R3 R0 K13 ["errorMessages"]
       59 GETTABLEN                        R2 R3 1
       60 GETTABLEKS                       R1 R2 K15 ["message"]
       62 JUMP                             ; [+11]
       63 GETUPVAL                         R2 5
       64 LOADK                            R4 K16 ["LookComposerDialog"]
       65 GETTABLEKS                       R6 R0 K13 ["errorMessages"]
       67 GETTABLEN                        R5 R6 1
       68 GETTABLEKS                       R5 R5 K15 ["message"]
       70 NAMECALL                         R2 R2 K17 ["getText"]
       72 CALL                             R2 3 1
       73 MOVE                             R1 R2
       74 GETUPVAL                         R2 6
       75 MOVE                             R3 R1
       76 CALL                             R2 1 0
       77 GETUPVAL                         R2 3
       78 LOADK                            R3 K18 ["Failure"]
       79 CALL                             R2 1 0
       80 GETUPVAL                         R2 4
       81 LOADK                            R4 K19 ["marketplaceLookCreationError"]
       82 NAMECALL                         R2 R2 K12 ["report"]
       84 CALL                             R2 2 0
       85 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKS                    R0 K0 ["ReadyToFire"] ; [+15]
        3 GETUPVAL                         R0 1
        4 LOADK                            R1 K1 ["Firing"]
        5 CALL                             R0 1 0
        6 GETIMPORT                        R0 K4 [task.spawn]
        8 NEWCLOSURE                       R1 P0
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          UPVAL U4
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          UPVAL U5
       14 CAPTURE                          UPVAL U6
       15 CAPTURE                          UPVAL U7
       16 CALL                             R0 1 0
       17 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["creatorHubLookConfigureUrl"]
        3 GETUPVAL                         R2 1
        4 FASTCALL1                        TOSTRING R2 ; [+2]
        5 GETIMPORT                        R1 K2 [tostring]
        7 CALL                             R1 1 1
        8 CALL                             R0 1 1
        9 JUMPIFNOT                        R0 ; [+7]
       10 JUMPIFEQKS                       R0 K3 [""] ; [+6]
       12 GETUPVAL                         R1 2
       13 MOVE                             R3 R0
       14 NAMECALL                         R1 R1 K4 ["OpenBrowserWindow"]
       16 CALL                             R1 2 0
       17 GETUPVAL                         R1 3
       18 LOADK                            R2 K5 ["Success"]
       19 CALL                             R1 1 0
       20 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKS                    R0 K0 ["ReadyToFire"] ; [+14]
        3 GETUPVAL                         R0 1
        4 JUMPIFNOT                        R0 ; [+11]
        5 GETUPVAL                         R0 2
        6 LOADK                            R1 K1 ["Firing"]
        7 CALL                             R0 1 0
        8 GETIMPORT                        R0 K4 [task.spawn]
       10 NEWCLOSURE                       R1 P0
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          UPVAL U4
       14 CAPTURE                          UPVAL U2
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["ReadyToFire"]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["ReadyToFire"]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["ReadyToFire"]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["Idle"]
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADK                            R1 K0 ["Idle"]
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 2
        7 LOADK                            R1 K0 ["Idle"]
        8 CALL                             R0 1 0
        9 GETUPVAL                         R0 3
       10 LOADNIL                          R1
       11 CALL                             R0 1 0
       12 GETUPVAL                         R0 4
       13 NEWTABLE                         R1 0 0
       15 CALL                             R0 1 0
       16 GETUPVAL                         R0 5
       17 LOADNIL                          R1
       18 CALL                             R0 1 0
       19 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 NAMECALL                         R2 R2 K0 ["use"]
        7 CALL                             R2 1 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K1 ["useState"]
       11 LOADK                            R4 K2 ["Idle"]
       12 CALL                             R3 1 2
       13 GETUPVAL                         R5 2
       14 GETTABLEKS                       R5 R5 K1 ["useState"]
       16 LOADK                            R6 K2 ["Idle"]
       17 CALL                             R5 1 2
       18 GETUPVAL                         R7 2
       19 GETTABLEKS                       R7 R7 K1 ["useState"]
       21 LOADK                            R8 K2 ["Idle"]
       22 CALL                             R7 1 2
       23 GETUPVAL                         R9 2
       24 GETTABLEKS                       R9 R9 K1 ["useState"]
       26 LOADNIL                          R10
       27 CALL                             R9 1 2
       28 GETUPVAL                         R11 2
       29 GETTABLEKS                       R11 R11 K1 ["useState"]
       31 NEWTABLE                         R12 0 0
       33 CALL                             R11 1 2
       34 GETUPVAL                         R13 2
       35 GETTABLEKS                       R13 R13 K1 ["useState"]
       37 LOADNIL                          R14
       38 CALL                             R13 1 2
       39 GETUPVAL                         R15 2
       40 GETTABLEKS                       R15 R15 K3 ["useEffect"]
       42 NEWCLOSURE                       R16 P0
       43 CAPTURE                          VAL R3
       44 CAPTURE                          VAL R4
       45 CAPTURE                          UPVAL U3
       46 CAPTURE                          VAL R0
       47 CAPTURE                          VAL R2
       48 CAPTURE                          VAL R1
       49 CAPTURE                          VAL R12
       50 NEWTABLE                         R17 0 7
       52 MOVE                             R18 R3
       53 GETTABLEKS                       R19 R0 K4 ["dialogLookType"]
       55 GETTABLEKS                       R20 R0 K5 ["dialogItems"]
       57 GETTABLEKS                       R21 R0 K6 ["skinColor"]
       59 GETTABLEKS                       R22 R0 K7 ["selectedCreatorId"]
       61 GETTABLEKS                       R23 R0 K8 ["name"]
       63 GETTABLEKS                       R24 R0 K9 ["description"]
       65 SETLIST                          R17 R18 7 [1]
       67 CALL                             R15 2 0
       68 GETUPVAL                         R15 2
       69 GETTABLEKS                       R15 R15 K3 ["useEffect"]
       71 NEWCLOSURE                       R16 P1
       72 CAPTURE                          VAL R5
       73 CAPTURE                          VAL R6
       74 CAPTURE                          UPVAL U3
       75 CAPTURE                          VAL R0
       76 CAPTURE                          VAL R10
       77 CAPTURE                          VAL R2
       78 CAPTURE                          VAL R1
       79 CAPTURE                          VAL R14
       80 NEWTABLE                         R17 0 8
       82 MOVE                             R18 R5
       83 GETTABLEKS                       R19 R0 K4 ["dialogLookType"]
       85 GETTABLEKS                       R20 R0 K5 ["dialogItems"]
       87 GETTABLEKS                       R21 R0 K6 ["skinColor"]
       89 GETTABLEKS                       R22 R0 K7 ["selectedCreatorId"]
       91 GETTABLEKS                       R23 R0 K8 ["name"]
       93 GETTABLEKS                       R24 R0 K9 ["description"]
       95 MOVE                             R25 R10
       96 SETLIST                          R17 R18 8 [1]
       98 CALL                             R15 2 0
       99 GETUPVAL                         R15 2
      100 GETTABLEKS                       R15 R15 K3 ["useEffect"]
      102 NEWCLOSURE                       R16 P2
      103 CAPTURE                          VAL R7
      104 CAPTURE                          VAL R9
      105 CAPTURE                          VAL R8
      106 CAPTURE                          UPVAL U4
      107 CAPTURE                          UPVAL U5
      108 NEWTABLE                         R17 0 2
      110 MOVE                             R18 R7
      111 MOVE                             R19 R9
      112 SETLIST                          R17 R18 2 [1]
      114 CALL                             R15 2 0
      115 GETUPVAL                         R15 2
      116 GETTABLEKS                       R15 R15 K10 ["useCallback"]
      118 NEWCLOSURE                       R16 P3
      119 CAPTURE                          VAL R4
      120 NEWTABLE                         R17 0 0
      122 CALL                             R15 2 1
      123 GETUPVAL                         R16 2
      124 GETTABLEKS                       R16 R16 K10 ["useCallback"]
      126 NEWCLOSURE                       R17 P4
      127 CAPTURE                          VAL R6
      128 NEWTABLE                         R18 0 0
      130 CALL                             R16 2 1
      131 GETUPVAL                         R17 2
      132 GETTABLEKS                       R17 R17 K10 ["useCallback"]
      134 NEWCLOSURE                       R18 P5
      135 CAPTURE                          VAL R8
      136 NEWTABLE                         R19 0 0
      138 CALL                             R17 2 1
      139 GETUPVAL                         R18 2
      140 GETTABLEKS                       R18 R18 K10 ["useCallback"]
      142 NEWCLOSURE                       R19 P6
      143 CAPTURE                          VAL R4
      144 CAPTURE                          VAL R6
      145 CAPTURE                          VAL R8
      146 CAPTURE                          VAL R10
      147 CAPTURE                          VAL R12
      148 CAPTURE                          VAL R14
      149 NEWTABLE                         R20 0 0
      151 CALL                             R18 2 1
      152 GETUPVAL                         R19 2
      153 GETTABLEKS                       R19 R19 K3 ["useEffect"]
      155 NEWCLOSURE                       R20 P7
      156 CAPTURE                          VAL R18
      157 NEWTABLE                         R21 0 4
      159 GETTABLEKS                       R22 R0 K4 ["dialogLookType"]
      161 GETTABLEKS                       R23 R0 K5 ["dialogItems"]
      163 GETTABLEKS                       R24 R0 K6 ["skinColor"]
      165 GETTABLEKS                       R25 R0 K7 ["selectedCreatorId"]
      167 SETLIST                          R21 R22 4 [1]
      169 CALL                             R19 2 0
      170 DUPTABLE                         R19 K20 [{"onValidateLook", "onCreateLook", "onOpenCreatorHubLink", "onResetLookCreationCalls", "lookValidationCallState", "lookCreationCallState", "openCreatorHubLinkCallState", "lookValidationErrors", "lookCreationErrorMessage"}]
      171 SETTABLEKS                       R15 R19 K11 ["onValidateLook"]
      173 SETTABLEKS                       R16 R19 K12 ["onCreateLook"]
      175 SETTABLEKS                       R17 R19 K13 ["onOpenCreatorHubLink"]
      177 SETTABLEKS                       R18 R19 K14 ["onResetLookCreationCalls"]
      179 SETTABLEKS                       R3 R19 K15 ["lookValidationCallState"]
      181 SETTABLEKS                       R5 R19 K16 ["lookCreationCallState"]
      183 SETTABLEKS                       R7 R19 K17 ["openCreatorHubLinkCallState"]
      185 SETTABLEKS                       R11 R19 K18 ["lookValidationErrors"]
      187 SETTABLEKS                       R13 R19 K19 ["lookCreationErrorMessage"]
      189 RETURN                           R19 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["BrowserService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AvatarCompatibilityPreviewer"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["Framework"]
       19 CALL                             R2 1 1
       20 GETTABLEKS                       R3 R2 K12 ["ContextServices"]
       22 GETTABLEKS                       R3 R3 K13 ["Analytics"]
       24 GETTABLEKS                       R4 R2 K12 ["ContextServices"]
       26 GETTABLEKS                       R4 R4 K14 ["Localization"]
       28 GETIMPORT                        R5 K9 [require]
       30 GETTABLEKS                       R6 R1 K10 ["Packages"]
       32 GETTABLEKS                       R6 R6 K15 ["React"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K9 [require]
       37 GETTABLEKS                       R7 R1 K16 ["Src"]
       39 GETTABLEKS                       R7 R7 K17 ["Types"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K9 [require]
       44 GETTABLEKS                       R8 R1 K16 ["Src"]
       46 GETTABLEKS                       R8 R8 K18 ["Util"]
       48 GETTABLEKS                       R8 R8 K19 ["LookComposerUtils"]
       50 CALL                             R7 1 1
       51 GETIMPORT                        R8 K9 [require]
       53 GETTABLEKS                       R9 R1 K16 ["Src"]
       55 GETTABLEKS                       R9 R9 K18 ["Util"]
       57 GETTABLEKS                       R9 R9 K20 ["Url"]
       59 CALL                             R8 1 1
       60 DUPCLOSURE                       R9 K21 [PROTO_11]
       61 CAPTURE                          VAL R4
       62 CAPTURE                          VAL R3
       63 CAPTURE                          VAL R5
       64 CAPTURE                          VAL R7
       65 CAPTURE                          VAL R8
       66 CAPTURE                          VAL R0
       67 RETURN                           R9 1
