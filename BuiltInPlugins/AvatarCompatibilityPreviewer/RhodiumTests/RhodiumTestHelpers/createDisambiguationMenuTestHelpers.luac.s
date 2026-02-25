PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["subWindows"]
        3 CALL                             R1 0 1
        4 GETTABLEN                        R0 R1 1
        5 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getSubWindow"]
        3 LOADN                            R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R8 0
        1 GETTABLEKS                       R7 R8 K0 ["getSubWindow"]
        3 CALL                             R7 0 1
        4 GETTABLEKS                       R6 R7 K1 ["SolidBackground"]
        6 GETTABLEKS                       R5 R6 K2 ["Contents"]
        8 GETTABLEKS                       R4 R5 K2 ["Contents"]
       10 GETTABLEKS                       R3 R4 K2 ["Contents"]
       12 GETTABLEKS                       R2 R3 K3 ["Scroller"]
       14 GETTABLE                         R1 R2 R0
       15 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["getEntry"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 GETTABLEKS                       R1 R2 K1 ["ItemNames"]
        7 LOADK                            R4 K2 ["Warning"]
        8 NAMECALL                         R2 R1 K3 ["FindFirstChild"]
       10 CALL                             R2 2 1
       11 MOVE                             R3 R2
       12 JUMPIFNOT                        R3 ; [+2]
       13 GETTABLEKS                       R3 R2 K4 ["Text"]
       15 RETURN                           R3 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["Element"]
        3 GETTABLEKS                       R0 R1 K1 ["new"]
        5 GETUPVAL                         R1 1
        6 CALL                             R0 1 1
        7 NAMECALL                         R0 R0 K2 ["click"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["Element"]
        3 GETTABLEKS                       R0 R1 K1 ["new"]
        5 GETUPVAL                         R1 1
        6 CALL                             R0 1 1
        7 NAMECALL                         R0 R0 K2 ["click"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetChildren"]
        3 CALL                             R0 1 3
        4 FORGPREP                         R0
        5 GETUPVAL                         R5 1
        6 JUMPIFEQ                         R4 R5 ; [+9]
        8 LOADK                            R7 K1 ["Frame"]
        9 NAMECALL                         R5 R4 K2 ["IsA"]
       11 CALL                             R5 2 1
       12 JUMPIFNOT                        R5 ; [+3]
       13 LOADB                            R5 0
       14 SETTABLEKS                       R5 R4 K3 ["Visible"]
       16 FORGLOOP                         R0 2 ; [-12]
       18 GETUPVAL                         R1 2
       19 GETTABLEKS                       R0 R1 K4 ["act"]
       21 NEWCLOSURE                       R1 P0
       22 CAPTURE                          UPVAL U3
       23 CAPTURE                          UPVAL U4
       24 CALL                             R0 1 0
       25 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["SelectInput"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["act"]
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          VAL R1
        8 CALL                             R2 1 0
        9 GETUPVAL                         R8 2
       10 GETTABLEKS                       R7 R8 K2 ["getSubWindow"]
       12 CALL                             R7 0 1
       13 GETTABLEKS                       R6 R7 K3 ["TopLevelDetector"]
       15 GETTABLEKS                       R5 R6 K4 ["ScrollBlocker"]
       17 GETTABLEKS                       R4 R5 K5 ["Menu"]
       19 GETTABLEKS                       R3 R4 K6 ["Contents"]
       21 GETTABLEKS                       R2 R3 K7 ["Container"]
       23 NEWTABLE                         R3 0 0
       25 NAMECALL                         R4 R2 K8 ["GetChildren"]
       27 CALL                             R4 1 3
       28 FORGPREP                         R4
       29 LOADK                            R11 K9 ["Frame"]
       30 NAMECALL                         R9 R8 K10 ["IsA"]
       32 CALL                             R9 2 1
       33 JUMPIFNOT                        R9 ; [+26]
       34 GETTABLEKS                       R10 R8 K6 ["Contents"]
       36 GETTABLEKS                       R9 R10 K11 ["TextButton"]
       38 GETTABLEKS                       R11 R8 K12 ["Name"]
       40 FASTCALL1                        TONUMBER R11 ; [+2]
       41 GETIMPORT                        R10 K14 [tonumber]
       43 CALL                             R10 1 1
       44 DUPTABLE                         R11 K17 [{"label", "click"}]
       45 GETTABLEKS                       R13 R9 K18 ["Label"]
       47 GETTABLEKS                       R12 R13 K19 ["Text"]
       49 SETTABLEKS                       R12 R11 K15 ["label"]
       51 NEWCLOSURE                       R12 P1
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R8
       54 CAPTURE                          UPVAL U0
       55 CAPTURE                          UPVAL U1
       56 CAPTURE                          VAL R9
       57 SETTABLEKS                       R12 R11 K16 ["click"]
       59 SETTABLE                         R11 R3 R10
       60 FORGLOOP                         R4 2 ; [-32]
       62 RETURN                           R3 1

PROTO_8:
        0 MOVE                             R2 R0
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 GETTABLEKS                       R7 R6 K0 ["label"]
        6 MOVE                             R9 R1
        7 NAMECALL                         R7 R7 K1 ["match"]
        9 CALL                             R7 2 1
       10 JUMPIFNOT                        R7 ; [+4]
       11 GETTABLEKS                       R7 R6 K2 ["click"]
       13 CALL                             R7 0 0
       14 RETURN                           R0 0
       15 FORGLOOP                         R2 2 ; [-12]
       17 NEWTABLE                         R2 0 2
       19 LOADK                            R4 K3 ["Couldn't find dropdown entry that matched pattern \"%*\""]
       20 MOVE                             R6 R1
       21 NAMECALL                         R4 R4 K4 ["format"]
       23 CALL                             R4 2 1
       24 MOVE                             R3 R4
       25 LOADK                            R4 K5 ["Found the following labels:"]
       26 SETLIST                          R2 R3 2 [1]
       28 MOVE                             R3 R0
       29 LOADNIL                          R4
       30 LOADNIL                          R5
       31 FORGPREP                         R3
       32 LOADK                            R11 K6 ["- %*"]
       33 GETTABLEKS                       R13 R7 K0 ["label"]
       35 NAMECALL                         R11 R11 K4 ["format"]
       37 CALL                             R11 2 1
       38 MOVE                             R10 R11
       39 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       41 MOVE                             R9 R2
       42 GETIMPORT                        R8 K9 [table.insert]
       44 CALL                             R8 2 0
       45 FORGLOOP                         R3 2 ; [-14]
       47 GETIMPORT                        R3 K11 [error]
       49 GETIMPORT                        R4 K13 [table.concat]
       51 MOVE                             R5 R2
       52 LOADK                            R6 K14 ["\n"]
       53 CALL                             R4 2 -1
       54 CALL                             R3 -1 0
       55 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["openDropdown"]
        3 GETTABLEKS                       R4 R0 K1 ["Children"]
        5 GETTABLEKS                       R3 R4 K2 ["Dropdown"]
        7 GETTABLEKS                       R2 R3 K3 ["DropdownMenu"]
        9 CALL                             R1 1 -1
       10 RETURN                           R1 -1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["openDropdown"]
        3 GETTABLEKS                       R4 R0 K1 ["Children"]
        5 GETTABLEKS                       R3 R4 K1 ["Children"]
        7 GETTABLEKS                       R2 R3 K2 ["AssetTypeDropdown"]
        9 CALL                             R1 1 -1
       10 RETURN                           R1 -1

PROTO_11:
        0 GETTABLEKS                       R3 R0 K0 ["Children"]
        2 GETTABLEKS                       R2 R3 K0 ["Children"]
        4 LOADK                            R4 K1 ["AttachmentDropdown"]
        5 NAMECALL                         R2 R2 K2 ["FindFirstChild"]
        7 CALL                             R2 2 1
        8 JUMPIFNOTEQKNIL                  R2 ; [+2]
       10 LOADB                            R1 0 +1
       11 LOADB                            R1 1
       12 RETURN                           R1 1

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["openDropdown"]
        3 GETTABLEKS                       R4 R0 K1 ["Children"]
        5 GETTABLEKS                       R3 R4 K1 ["Children"]
        7 GETTABLEKS                       R2 R3 K2 ["AttachmentDropdown"]
        9 CALL                             R1 1 -1
       10 RETURN                           R1 -1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["clickStyledDialogButton"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["getSubWindow"]
        6 CALL                             R1 0 1
        7 LOADN                            R2 2
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["act"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_15:
        0 NEWTABLE                         R1 16 0
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R0
        4 SETTABLEKS                       R2 R1 K0 ["isOpen"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R2 R1 K1 ["getSubWindow"]
       10 NEWCLOSURE                       R2 P2
       11 CAPTURE                          VAL R1
       12 SETTABLEKS                       R2 R1 K2 ["getEntry"]
       14 NEWCLOSURE                       R2 P3
       15 CAPTURE                          VAL R1
       16 SETTABLEKS                       R2 R1 K3 ["getWarningText"]
       18 NEWCLOSURE                       R2 P4
       19 CAPTURE                          UPVAL U0
       20 CAPTURE                          UPVAL U1
       21 CAPTURE                          VAL R1
       22 SETTABLEKS                       R2 R1 K4 ["openDropdown"]
       24 DUPCLOSURE                       R2 K5 [PROTO_8]
       25 SETTABLEKS                       R2 R1 K6 ["clickMatchingDropdownEntry"]
       27 NEWCLOSURE                       R2 P6
       28 CAPTURE                          VAL R1
       29 SETTABLEKS                       R2 R1 K7 ["openAmbiguousAssetTypeDropdown"]
       31 NEWCLOSURE                       R2 P7
       32 CAPTURE                          VAL R1
       33 SETTABLEKS                       R2 R1 K8 ["openLoneMeshPartAssetTypeDropdown"]
       35 DUPCLOSURE                       R2 K9 [PROTO_11]
       36 SETTABLEKS                       R2 R1 K10 ["attachmentDropdownExists"]
       38 NEWCLOSURE                       R2 P9
       39 CAPTURE                          VAL R1
       40 SETTABLEKS                       R2 R1 K11 ["openAttachmentDropdown"]
       42 NEWCLOSURE                       R2 P10
       43 CAPTURE                          UPVAL U0
       44 CAPTURE                          VAL R0
       45 CAPTURE                          VAL R1
       46 SETTABLEKS                       R2 R1 K12 ["clickOk"]
       48 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["ReactRoblox"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K6 ["Packages"]
       18 GETTABLEKS                       R4 R5 K8 ["Dev"]
       20 GETTABLEKS                       R3 R4 K9 ["Rhodium"]
       22 CALL                             R2 1 1
       23 DUPCLOSURE                       R3 K10 [PROTO_15]
       24 CAPTURE                          VAL R1
       25 CAPTURE                          VAL R2
       26 RETURN                           R3 1
