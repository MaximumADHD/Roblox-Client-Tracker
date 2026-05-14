PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["value"]
        4 FASTCALL1                        TOSTRING R3 ; [+2]
        5 GETIMPORT                        R2 K2 [tostring]
        7 CALL                             R2 1 1
        8 NAMECALL                         R0 R0 K3 ["CopyToClipboard"]
       10 CALL                             R0 2 0
       11 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 FASTCALL1                        TOSTRING R3 ; [+2]
        3 GETIMPORT                        R2 K1 [tostring]
        5 CALL                             R2 1 1
        6 NAMECALL                         R0 R0 K2 ["CopyToClipboard"]
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["GetPasteText"]
        3 CALL                             R1 1 -1
        4 FASTCALL                         TONUMBER ; [+2]
        5 GETIMPORT                        R0 K2 [tonumber]
        7 CALL                             R0 -1 1
        8 JUMPIF                           R0 ; [+1]
        9 RETURN                           R0 0
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R1 R1 K3 ["set"]
       13 GETUPVAL                         R2 2
       14 GETTABLEKS                       R2 R2 K4 ["toDecimal"]
       16 MOVE                             R3 R0
       17 LOADN                            R4 2
       18 CALL                             R2 2 -1
       19 CALL                             R1 -1 0
       20 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["value"]
        3 CALL                             R2 1 1
        4 DUPTABLE                         R3 K2 [{"menuActions"}]
        5 NEWTABLE                         R4 0 3
        7 DUPTABLE                         R5 K5 [{"Text", "OnItemClicked"}]
        8 LOADK                            R8 K6 ["StudConversions"]
        9 LOADK                            R9 K7 ["CopyInStuds"]
       10 NAMECALL                         R6 R1 K8 ["getText"]
       12 CALL                             R6 3 1
       13 SETTABLEKS                       R6 R5 K3 ["Text"]
       15 NEWCLOSURE                       R6 P0
       16 CAPTURE                          UPVAL U1
       17 CAPTURE                          VAL R0
       18 SETTABLEKS                       R6 R5 K4 ["OnItemClicked"]
       20 DUPTABLE                         R6 K5 [{"Text", "OnItemClicked"}]
       21 LOADK                            R9 K6 ["StudConversions"]
       22 LOADK                            R10 K9 ["CopyInMeters"]
       23 NAMECALL                         R7 R1 K8 ["getText"]
       25 CALL                             R7 3 1
       26 SETTABLEKS                       R7 R6 K3 ["Text"]
       28 NEWCLOSURE                       R7 P1
       29 CAPTURE                          UPVAL U1
       30 CAPTURE                          VAL R2
       31 SETTABLEKS                       R7 R6 K4 ["OnItemClicked"]
       33 DUPTABLE                         R7 K5 [{"Text", "OnItemClicked"}]
       34 LOADK                            R10 K6 ["StudConversions"]
       35 LOADK                            R11 K10 ["Paste"]
       36 NAMECALL                         R8 R1 K8 ["getText"]
       38 CALL                             R8 3 1
       39 SETTABLEKS                       R8 R7 K3 ["Text"]
       41 NEWCLOSURE                       R8 P2
       42 CAPTURE                          UPVAL U2
       43 CAPTURE                          VAL R0
       44 CAPTURE                          UPVAL U3
       45 SETTABLEKS                       R8 R7 K4 ["OnItemClicked"]
       47 SETLIST                          R4 R5 3 [1]
       49 SETTABLEKS                       R4 R3 K1 ["menuActions"]
       51 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["StudioService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K5 [game]
       15 LOADK                            R4 K8 ["UserInputService"]
       16 NAMECALL                         R2 R2 K7 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K10 [require]
       21 GETTABLEKS                       R4 R0 K11 ["Src"]
       23 GETTABLEKS                       R4 R4 K12 ["Util"]
       25 GETTABLEKS                       R4 R4 K13 ["ProviderTypes"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K10 [require]
       30 GETTABLEKS                       R5 R0 K11 ["Src"]
       32 GETTABLEKS                       R5 R5 K12 ["Util"]
       34 GETTABLEKS                       R5 R5 K14 ["Round"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K10 [require]
       39 GETTABLEKS                       R6 R0 K11 ["Src"]
       41 GETTABLEKS                       R6 R6 K12 ["Util"]
       43 GETTABLEKS                       R6 R6 K15 ["studsToMeters"]
       45 CALL                             R5 1 1
       46 DUPCLOSURE                       R6 K16 [PROTO_3]
       47 CAPTURE                          VAL R5
       48 CAPTURE                          VAL R1
       49 CAPTURE                          VAL R2
       50 CAPTURE                          VAL R4
       51 RETURN                           R6 1
