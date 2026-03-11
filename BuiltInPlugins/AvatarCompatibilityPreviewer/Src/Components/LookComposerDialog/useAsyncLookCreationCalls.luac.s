PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["validateLookAsync"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["dialogLookType"]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R2 R3 K2 ["dialogItems"]
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R3 R4 K3 ["skinColor"]
       12 GETUPVAL                         R5 1
       13 GETTABLEKS                       R4 R5 K4 ["selectedCreatorId"]
       15 GETUPVAL                         R6 1
       16 GETTABLEKS                       R5 R6 K1 ["dialogLookType"]
       18 CALL                             R0 5 1
       19 GETTABLEKS                       R1 R0 K5 ["success"]
       21 JUMPIFNOT                        R1 ; [+4]
       22 GETUPVAL                         R1 2
       23 LOADK                            R2 K6 ["Success"]
       24 CALL                             R1 1 0
       25 RETURN                           R0 0
       26 NEWTABLE                         R1 0 0
       28 GETTABLEKS                       R2 R0 K7 ["errorMessages"]
       30 LOADNIL                          R3
       31 LOADNIL                          R4
       32 FORGPREP                         R2
       33 GETTABLEKS                       R7 R6 K8 ["isLocalized"]
       35 JUMPIFNOT                        R7 ; [+19]
       36 DUPTABLE                         R9 K11 [{"message", "isBlocking", "isLocalized"}]
       37 GETTABLEKS                       R10 R6 K9 ["message"]
       39 SETTABLEKS                       R10 R9 K9 ["message"]
       41 GETTABLEKS                       R10 R6 K10 ["isBlocking"]
       43 SETTABLEKS                       R10 R9 K10 ["isBlocking"]
       45 LOADB                            R10 1
       46 SETTABLEKS                       R10 R9 K8 ["isLocalized"]
       48 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       50 MOVE                             R8 R1
       51 GETIMPORT                        R7 K14 [table.insert]
       53 CALL                             R7 2 0
       54 JUMP                             ; [+23]
       55 DUPTABLE                         R9 K11 [{"message", "isBlocking", "isLocalized"}]
       56 GETUPVAL                         R10 3
       57 LOADK                            R12 K15 ["LookComposerDialog"]
       58 GETTABLEKS                       R13 R6 K9 ["message"]
       60 NAMECALL                         R10 R10 K16 ["getText"]
       62 CALL                             R10 3 1
       63 SETTABLEKS                       R10 R9 K9 ["message"]
       65 GETTABLEKS                       R10 R6 K10 ["isBlocking"]
       67 SETTABLEKS                       R10 R9 K10 ["isBlocking"]
       69 LOADB                            R10 1
       70 SETTABLEKS                       R10 R9 K8 ["isLocalized"]
       72 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       74 MOVE                             R8 R1
       75 GETIMPORT                        R7 K14 [table.insert]
       77 CALL                             R7 2 0
       78 FORGLOOP                         R2 2 ; [-46]
       80 GETUPVAL                         R2 4
       81 MOVE                             R3 R1
       82 CALL                             R2 1 0
       83 GETUPVAL                         R2 2
       84 LOADK                            R3 K17 ["Failure"]
       85 CALL                             R2 1 0
       86 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKS                    R0 K0 ["ReadyToFire"] ; [+13]
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
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createLookAsync"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["dialogLookType"]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R2 R3 K2 ["dialogItems"]
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R3 R4 K3 ["skinColor"]
       12 GETUPVAL                         R5 1
       13 GETTABLEKS                       R4 R5 K4 ["selectedCreatorId"]
       15 GETUPVAL                         R6 1
       16 GETTABLEKS                       R5 R6 K5 ["name"]
       18 GETUPVAL                         R7 1
       19 GETTABLEKS                       R6 R7 K6 ["description"]
       21 GETUPVAL                         R8 1
       22 GETTABLEKS                       R7 R8 K1 ["dialogLookType"]
       24 CALL                             R0 7 1
       25 GETTABLEKS                       R1 R0 K7 ["success"]
       27 JUMPIFNOT                        R1 ; [+8]
       28 GETUPVAL                         R1 2
       29 GETTABLEKS                       R2 R0 K8 ["lookId"]
       31 CALL                             R1 1 0
       32 GETUPVAL                         R1 3
       33 LOADK                            R2 K9 ["Success"]
       34 CALL                             R1 1 0
       35 RETURN                           R0 0
       36 LOADNIL                          R1
       37 GETTABLEKS                       R3 R0 K10 ["errorMessages"]
       39 LENGTH                           R2 R3
       40 LOADN                            R3 0
       41 JUMPIFNOTLT                      R3 R2 ; [+24]
       43 GETTABLEKS                       R4 R0 K10 ["errorMessages"]
       45 GETTABLEN                        R3 R4 1
       46 GETTABLEKS                       R2 R3 K11 ["isLocalized"]
       48 JUMPIFNOT                        R2 ; [+6]
       49 GETTABLEKS                       R3 R0 K10 ["errorMessages"]
       51 GETTABLEN                        R2 R3 1
       52 GETTABLEKS                       R1 R2 K12 ["message"]
       54 JUMP                             ; [+11]
       55 GETUPVAL                         R2 4
       56 LOADK                            R4 K13 ["LookComposerDialog"]
       57 GETTABLEKS                       R7 R0 K10 ["errorMessages"]
       59 GETTABLEN                        R6 R7 1
       60 GETTABLEKS                       R5 R6 K12 ["message"]
       62 NAMECALL                         R2 R2 K14 ["getText"]
       64 CALL                             R2 3 1
       65 MOVE                             R1 R2
       66 GETUPVAL                         R2 5
       67 MOVE                             R3 R1
       68 CALL                             R2 1 0
       69 GETUPVAL                         R2 3
       70 LOADK                            R3 K15 ["Failure"]
       71 CALL                             R2 1 0
       72 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKS                    R0 K0 ["ReadyToFire"] ; [+14]
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
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["creatorHubLookConfigureUrl"]
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
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["useState"]
        7 LOADK                            R3 K2 ["Idle"]
        8 CALL                             R2 1 2
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R4 R5 K1 ["useState"]
       12 LOADK                            R5 K2 ["Idle"]
       13 CALL                             R4 1 2
       14 GETUPVAL                         R7 1
       15 GETTABLEKS                       R6 R7 K1 ["useState"]
       17 LOADK                            R7 K2 ["Idle"]
       18 CALL                             R6 1 2
       19 GETUPVAL                         R9 1
       20 GETTABLEKS                       R8 R9 K1 ["useState"]
       22 LOADNIL                          R9
       23 CALL                             R8 1 2
       24 GETUPVAL                         R11 1
       25 GETTABLEKS                       R10 R11 K1 ["useState"]
       27 NEWTABLE                         R11 0 0
       29 CALL                             R10 1 2
       30 GETUPVAL                         R13 1
       31 GETTABLEKS                       R12 R13 K1 ["useState"]
       33 LOADNIL                          R13
       34 CALL                             R12 1 2
       35 GETUPVAL                         R15 1
       36 GETTABLEKS                       R14 R15 K3 ["useEffect"]
       38 NEWCLOSURE                       R15 P0
       39 CAPTURE                          VAL R2
       40 CAPTURE                          VAL R3
       41 CAPTURE                          UPVAL U2
       42 CAPTURE                          VAL R0
       43 CAPTURE                          VAL R1
       44 CAPTURE                          VAL R11
       45 NEWTABLE                         R16 0 7
       47 MOVE                             R17 R2
       48 GETTABLEKS                       R18 R0 K4 ["dialogLookType"]
       50 GETTABLEKS                       R19 R0 K5 ["dialogItems"]
       52 GETTABLEKS                       R20 R0 K6 ["skinColor"]
       54 GETTABLEKS                       R21 R0 K7 ["selectedCreatorId"]
       56 GETTABLEKS                       R22 R0 K8 ["name"]
       58 GETTABLEKS                       R23 R0 K9 ["description"]
       60 SETLIST                          R16 R17 7 [1]
       62 CALL                             R14 2 0
       63 GETUPVAL                         R15 1
       64 GETTABLEKS                       R14 R15 K3 ["useEffect"]
       66 NEWCLOSURE                       R15 P1
       67 CAPTURE                          VAL R4
       68 CAPTURE                          VAL R5
       69 CAPTURE                          UPVAL U2
       70 CAPTURE                          VAL R0
       71 CAPTURE                          VAL R9
       72 CAPTURE                          VAL R1
       73 CAPTURE                          VAL R13
       74 NEWTABLE                         R16 0 8
       76 MOVE                             R17 R4
       77 GETTABLEKS                       R18 R0 K4 ["dialogLookType"]
       79 GETTABLEKS                       R19 R0 K5 ["dialogItems"]
       81 GETTABLEKS                       R20 R0 K6 ["skinColor"]
       83 GETTABLEKS                       R21 R0 K7 ["selectedCreatorId"]
       85 GETTABLEKS                       R22 R0 K8 ["name"]
       87 GETTABLEKS                       R23 R0 K9 ["description"]
       89 MOVE                             R24 R9
       90 SETLIST                          R16 R17 8 [1]
       92 CALL                             R14 2 0
       93 GETUPVAL                         R15 1
       94 GETTABLEKS                       R14 R15 K3 ["useEffect"]
       96 NEWCLOSURE                       R15 P2
       97 CAPTURE                          VAL R6
       98 CAPTURE                          VAL R8
       99 CAPTURE                          VAL R7
      100 CAPTURE                          UPVAL U3
      101 CAPTURE                          UPVAL U4
      102 NEWTABLE                         R16 0 2
      104 MOVE                             R17 R6
      105 MOVE                             R18 R8
      106 SETLIST                          R16 R17 2 [1]
      108 CALL                             R14 2 0
      109 GETUPVAL                         R15 1
      110 GETTABLEKS                       R14 R15 K10 ["useCallback"]
      112 NEWCLOSURE                       R15 P3
      113 CAPTURE                          VAL R3
      114 NEWTABLE                         R16 0 0
      116 CALL                             R14 2 1
      117 GETUPVAL                         R16 1
      118 GETTABLEKS                       R15 R16 K10 ["useCallback"]
      120 NEWCLOSURE                       R16 P4
      121 CAPTURE                          VAL R5
      122 NEWTABLE                         R17 0 0
      124 CALL                             R15 2 1
      125 GETUPVAL                         R17 1
      126 GETTABLEKS                       R16 R17 K10 ["useCallback"]
      128 NEWCLOSURE                       R17 P5
      129 CAPTURE                          VAL R7
      130 NEWTABLE                         R18 0 0
      132 CALL                             R16 2 1
      133 GETUPVAL                         R18 1
      134 GETTABLEKS                       R17 R18 K10 ["useCallback"]
      136 NEWCLOSURE                       R18 P6
      137 CAPTURE                          VAL R3
      138 CAPTURE                          VAL R5
      139 CAPTURE                          VAL R7
      140 CAPTURE                          VAL R9
      141 CAPTURE                          VAL R11
      142 CAPTURE                          VAL R13
      143 NEWTABLE                         R19 0 0
      145 CALL                             R17 2 1
      146 GETUPVAL                         R19 1
      147 GETTABLEKS                       R18 R19 K3 ["useEffect"]
      149 NEWCLOSURE                       R19 P7
      150 CAPTURE                          VAL R17
      151 NEWTABLE                         R20 0 4
      153 GETTABLEKS                       R21 R0 K4 ["dialogLookType"]
      155 GETTABLEKS                       R22 R0 K5 ["dialogItems"]
      157 GETTABLEKS                       R23 R0 K6 ["skinColor"]
      159 GETTABLEKS                       R24 R0 K7 ["selectedCreatorId"]
      161 SETLIST                          R20 R21 4 [1]
      163 CALL                             R18 2 0
      164 DUPTABLE                         R18 K20 [{"onValidateLook", "onCreateLook", "onOpenCreatorHubLink", "onResetLookCreationCalls", "lookValidationCallState", "lookCreationCallState", "openCreatorHubLinkCallState", "lookValidationErrors", "lookCreationErrorMessage"}]
      165 SETTABLEKS                       R14 R18 K11 ["onValidateLook"]
      167 SETTABLEKS                       R15 R18 K12 ["onCreateLook"]
      169 SETTABLEKS                       R16 R18 K13 ["onOpenCreatorHubLink"]
      171 SETTABLEKS                       R17 R18 K14 ["onResetLookCreationCalls"]
      173 SETTABLEKS                       R2 R18 K15 ["lookValidationCallState"]
      175 SETTABLEKS                       R4 R18 K16 ["lookCreationCallState"]
      177 SETTABLEKS                       R6 R18 K17 ["openCreatorHubLinkCallState"]
      179 SETTABLEKS                       R10 R18 K18 ["lookValidationErrors"]
      181 SETTABLEKS                       R12 R18 K19 ["lookCreationErrorMessage"]
      183 RETURN                           R18 1

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
       15 GETTABLEKS                       R4 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R4 K11 ["Framework"]
       19 CALL                             R2 1 1
       20 GETTABLEKS                       R4 R2 K12 ["ContextServices"]
       22 GETTABLEKS                       R3 R4 K13 ["Localization"]
       24 GETIMPORT                        R4 K9 [require]
       26 GETTABLEKS                       R6 R1 K10 ["Packages"]
       28 GETTABLEKS                       R5 R6 K14 ["React"]
       30 CALL                             R4 1 1
       31 GETIMPORT                        R5 K9 [require]
       33 GETTABLEKS                       R7 R1 K15 ["Src"]
       35 GETTABLEKS                       R6 R7 K16 ["Types"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K9 [require]
       40 GETTABLEKS                       R9 R1 K15 ["Src"]
       42 GETTABLEKS                       R8 R9 K17 ["Util"]
       44 GETTABLEKS                       R7 R8 K18 ["LookComposerUtils"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K9 [require]
       49 GETTABLEKS                       R10 R1 K15 ["Src"]
       51 GETTABLEKS                       R9 R10 K17 ["Util"]
       53 GETTABLEKS                       R8 R9 K19 ["Url"]
       55 CALL                             R7 1 1
       56 DUPCLOSURE                       R8 K20 [PROTO_11]
       57 CAPTURE                          VAL R3
       58 CAPTURE                          VAL R4
       59 CAPTURE                          VAL R6
       60 CAPTURE                          VAL R7
       61 CAPTURE                          VAL R0
       62 RETURN                           R8 1
