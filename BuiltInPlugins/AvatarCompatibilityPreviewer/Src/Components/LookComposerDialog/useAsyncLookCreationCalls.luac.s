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
       19 GETUPVAL                         R1 2
       20 CALL                             R1 0 1
       21 JUMPIFNOT                        R1 ; [+4]
       22 GETUPVAL                         R1 3
       23 GETTABLEKS                       R2 R0 K5 ["eligibilityChecks"]
       25 CALL                             R1 1 0
       26 GETTABLEKS                       R1 R0 K6 ["success"]
       28 JUMPIFNOT                        R1 ; [+9]
       29 GETUPVAL                         R1 4
       30 LOADK                            R2 K7 ["Success"]
       31 CALL                             R1 1 0
       32 GETUPVAL                         R1 5
       33 LOADK                            R3 K8 ["marketplaceLookValidationSuccess"]
       34 NAMECALL                         R1 R1 K9 ["report"]
       36 CALL                             R1 2 0
       37 RETURN                           R0 0
       38 NEWTABLE                         R1 0 0
       40 GETTABLEKS                       R2 R0 K10 ["errorMessages"]
       42 LOADNIL                          R3
       43 LOADNIL                          R4
       44 FORGPREP                         R2
       45 GETTABLEKS                       R7 R6 K11 ["isLocalized"]
       47 JUMPIFNOT                        R7 ; [+16]
       48 DUPTABLE                         R9 K15 [{["message"], ["isBlocking"], ["isLocalized"] = True}]
       49 GETTABLEKS                       R10 R6 K12 ["message"]
       51 SETTABLEKS                       R10 R9 K12 ["message"]
       53 GETTABLEKS                       R10 R6 K13 ["isBlocking"]
       55 SETTABLEKS                       R10 R9 K13 ["isBlocking"]
       57 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       59 MOVE                             R8 R1
       60 GETIMPORT                        R7 K18 [table.insert]
       62 CALL                             R7 2 0
       63 JUMP                             ; [+20]
       64 DUPTABLE                         R9 K15 [{["message"], ["isBlocking"], ["isLocalized"] = True}]
       65 GETUPVAL                         R10 6
       66 LOADK                            R12 K19 ["LookComposerDialog"]
       67 GETTABLEKS                       R13 R6 K12 ["message"]
       69 NAMECALL                         R10 R10 K20 ["getText"]
       71 CALL                             R10 3 1
       72 SETTABLEKS                       R10 R9 K12 ["message"]
       74 GETTABLEKS                       R10 R6 K13 ["isBlocking"]
       76 SETTABLEKS                       R10 R9 K13 ["isBlocking"]
       78 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       80 MOVE                             R8 R1
       81 GETIMPORT                        R7 K18 [table.insert]
       83 CALL                             R7 2 0
       84 FORGLOOP                         R2 2 ; [-40]
       86 GETUPVAL                         R2 7
       87 MOVE                             R3 R1
       88 CALL                             R2 1 0
       89 GETUPVAL                         R2 4
       90 LOADK                            R3 K21 ["Failure"]
       91 CALL                             R2 1 0
       92 GETUPVAL                         R2 5
       93 LOADK                            R4 K22 ["marketplaceLookValidationError"]
       94 NAMECALL                         R2 R2 K9 ["report"]
       96 CALL                             R2 2 0
       97 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKS                    R0 K0 ["ReadyToFire"] ; [+16]
        3 GETUPVAL                         R0 1
        4 LOADK                            R1 K1 ["Firing"]
        5 CALL                             R0 1 0
        6 GETIMPORT                        R0 K4 [task.spawn]
        8 NEWCLOSURE                       R1 P0
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          UPVAL U4
       12 CAPTURE                          UPVAL U5
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          UPVAL U6
       15 CAPTURE                          UPVAL U7
       16 CAPTURE                          UPVAL U8
       17 CALL                             R0 1 0
       18 RETURN                           R0 0

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
       19 GETUPVAL                         R0 6
       20 CALL                             R0 0 1
       21 JUMPIFNOT                        R0 ; [+4]
       22 GETUPVAL                         R0 7
       23 NEWTABLE                         R1 0 0
       25 CALL                             R0 1 0
       26 RETURN                           R0 0

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
       40 GETTABLEKS                       R15 R15 K1 ["useState"]
       42 NEWTABLE                         R16 0 0
       44 CALL                             R15 1 2
       45 GETUPVAL                         R17 2
       46 GETTABLEKS                       R17 R17 K3 ["useEffect"]
       48 NEWCLOSURE                       R18 P0
       49 CAPTURE                          VAL R3
       50 CAPTURE                          VAL R4
       51 CAPTURE                          UPVAL U3
       52 CAPTURE                          VAL R0
       53 CAPTURE                          UPVAL U4
       54 CAPTURE                          VAL R16
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R1
       57 CAPTURE                          VAL R12
       58 NEWTABLE                         R19 0 7
       60 MOVE                             R20 R3
       61 GETTABLEKS                       R21 R0 K4 ["dialogLookType"]
       63 GETTABLEKS                       R22 R0 K5 ["dialogItems"]
       65 GETTABLEKS                       R23 R0 K6 ["skinColor"]
       67 GETTABLEKS                       R24 R0 K7 ["selectedCreatorId"]
       69 GETTABLEKS                       R25 R0 K8 ["name"]
       71 GETTABLEKS                       R26 R0 K9 ["description"]
       73 SETLIST                          R19 R20 7 [1]
       75 CALL                             R17 2 0
       76 GETUPVAL                         R17 2
       77 GETTABLEKS                       R17 R17 K3 ["useEffect"]
       79 NEWCLOSURE                       R18 P1
       80 CAPTURE                          VAL R5
       81 CAPTURE                          VAL R6
       82 CAPTURE                          UPVAL U3
       83 CAPTURE                          VAL R0
       84 CAPTURE                          VAL R10
       85 CAPTURE                          VAL R2
       86 CAPTURE                          VAL R1
       87 CAPTURE                          VAL R14
       88 NEWTABLE                         R19 0 8
       90 MOVE                             R20 R5
       91 GETTABLEKS                       R21 R0 K4 ["dialogLookType"]
       93 GETTABLEKS                       R22 R0 K5 ["dialogItems"]
       95 GETTABLEKS                       R23 R0 K6 ["skinColor"]
       97 GETTABLEKS                       R24 R0 K7 ["selectedCreatorId"]
       99 GETTABLEKS                       R25 R0 K8 ["name"]
      101 GETTABLEKS                       R26 R0 K9 ["description"]
      103 MOVE                             R27 R10
      104 SETLIST                          R19 R20 8 [1]
      106 CALL                             R17 2 0
      107 GETUPVAL                         R17 2
      108 GETTABLEKS                       R17 R17 K3 ["useEffect"]
      110 NEWCLOSURE                       R18 P2
      111 CAPTURE                          VAL R7
      112 CAPTURE                          VAL R9
      113 CAPTURE                          VAL R8
      114 CAPTURE                          UPVAL U5
      115 CAPTURE                          UPVAL U6
      116 NEWTABLE                         R19 0 2
      118 MOVE                             R20 R7
      119 MOVE                             R21 R9
      120 SETLIST                          R19 R20 2 [1]
      122 CALL                             R17 2 0
      123 GETUPVAL                         R17 2
      124 GETTABLEKS                       R17 R17 K10 ["useCallback"]
      126 NEWCLOSURE                       R18 P3
      127 CAPTURE                          VAL R4
      128 NEWTABLE                         R19 0 0
      130 CALL                             R17 2 1
      131 GETUPVAL                         R18 2
      132 GETTABLEKS                       R18 R18 K10 ["useCallback"]
      134 NEWCLOSURE                       R19 P4
      135 CAPTURE                          VAL R6
      136 NEWTABLE                         R20 0 0
      138 CALL                             R18 2 1
      139 GETUPVAL                         R19 2
      140 GETTABLEKS                       R19 R19 K10 ["useCallback"]
      142 NEWCLOSURE                       R20 P5
      143 CAPTURE                          VAL R8
      144 NEWTABLE                         R21 0 0
      146 CALL                             R19 2 1
      147 GETUPVAL                         R20 2
      148 GETTABLEKS                       R20 R20 K10 ["useCallback"]
      150 NEWCLOSURE                       R21 P6
      151 CAPTURE                          VAL R4
      152 CAPTURE                          VAL R6
      153 CAPTURE                          VAL R8
      154 CAPTURE                          VAL R10
      155 CAPTURE                          VAL R12
      156 CAPTURE                          VAL R14
      157 CAPTURE                          UPVAL U4
      158 CAPTURE                          VAL R16
      159 NEWTABLE                         R22 0 0
      161 CALL                             R20 2 1
      162 GETUPVAL                         R21 2
      163 GETTABLEKS                       R21 R21 K3 ["useEffect"]
      165 NEWCLOSURE                       R22 P7
      166 CAPTURE                          VAL R20
      167 NEWTABLE                         R23 0 4
      169 GETTABLEKS                       R24 R0 K4 ["dialogLookType"]
      171 GETTABLEKS                       R25 R0 K5 ["dialogItems"]
      173 GETTABLEKS                       R26 R0 K6 ["skinColor"]
      175 GETTABLEKS                       R27 R0 K7 ["selectedCreatorId"]
      177 SETLIST                          R23 R24 4 [1]
      179 CALL                             R21 2 0
      180 DUPTABLE                         R21 K21 [{"onValidateLook", "onCreateLook", "onOpenCreatorHubLink", "onResetLookCreationCalls", "lookValidationCallState", "lookCreationCallState", "openCreatorHubLinkCallState", "lookValidationErrors", "lookCreationErrorMessage", "eligibilityChecks"}]
      181 SETTABLEKS                       R17 R21 K11 ["onValidateLook"]
      183 SETTABLEKS                       R18 R21 K12 ["onCreateLook"]
      185 SETTABLEKS                       R19 R21 K13 ["onOpenCreatorHubLink"]
      187 SETTABLEKS                       R20 R21 K14 ["onResetLookCreationCalls"]
      189 SETTABLEKS                       R3 R21 K15 ["lookValidationCallState"]
      191 SETTABLEKS                       R5 R21 K16 ["lookCreationCallState"]
      193 SETTABLEKS                       R7 R21 K17 ["openCreatorHubLinkCallState"]
      195 SETTABLEKS                       R11 R21 K18 ["lookValidationErrors"]
      197 SETTABLEKS                       R13 R21 K19 ["lookCreationErrorMessage"]
      199 SETTABLEKS                       R15 R21 K20 ["eligibilityChecks"]
      201 RETURN                           R21 1

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
       60 GETIMPORT                        R9 K9 [require]
       62 GETTABLEKS                       R10 R1 K16 ["Src"]
       64 GETTABLEKS                       R10 R10 K21 ["Flags"]
       66 GETTABLEKS                       R10 R10 K22 ["getFFlagAvatarPreviewerEligibilityChecks"]
       68 CALL                             R9 1 1
       69 DUPCLOSURE                       R10 K23 [PROTO_11]
       70 CAPTURE                          VAL R4
       71 CAPTURE                          VAL R3
       72 CAPTURE                          VAL R5
       73 CAPTURE                          VAL R7
       74 CAPTURE                          VAL R9
       75 CAPTURE                          VAL R8
       76 CAPTURE                          VAL R0
       77 RETURN                           R10 1
