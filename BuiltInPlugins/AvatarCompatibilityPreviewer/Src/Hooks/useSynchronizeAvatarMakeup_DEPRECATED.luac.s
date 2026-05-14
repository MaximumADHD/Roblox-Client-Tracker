PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Head"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["MAKEUP_FOLDER_NAME"]
        5 NAMECALL                         R1 R1 K2 ["FindFirstChild"]
        7 CALL                             R1 2 1
        8 JUMPIFEQKNIL                     R1 ; [+7]
       10 LOADK                            R4 K3 ["Folder"]
       11 NAMECALL                         R2 R1 K4 ["IsA"]
       13 CALL                             R2 2 1
       14 JUMPIFNOT                        R2 ; [+1]
       15 RETURN                           R1 1
       16 GETIMPORT                        R2 K7 [Instance.new]
       18 LOADK                            R3 K3 ["Folder"]
       19 CALL                             R2 1 1
       20 GETUPVAL                         R3 0
       21 GETTABLEKS                       R3 R3 K1 ["MAKEUP_FOLDER_NAME"]
       23 SETTABLEKS                       R3 R2 K8 ["Name"]
       25 GETTABLEKS                       R3 R0 K0 ["Head"]
       27 SETTABLEKS                       R3 R2 K9 ["Parent"]
       29 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R2 R1 K0 ["Head"]
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K1 ["MAKEUP_FOLDER_NAME"]
       10 NAMECALL                         R2 R2 K2 ["FindFirstChild"]
       12 CALL                             R2 2 1
       13 JUMPIFEQKNIL                     R2 ; [+8]
       15 LOADK                            R5 K3 ["Folder"]
       16 NAMECALL                         R3 R2 K4 ["IsA"]
       18 CALL                             R3 2 1
       19 JUMPIFNOT                        R3 ; [+2]
       20 MOVE                             R0 R2
       21 JUMP                             ; [+14]
       22 GETIMPORT                        R3 K7 [Instance.new]
       24 LOADK                            R4 K3 ["Folder"]
       25 CALL                             R3 1 1
       26 GETUPVAL                         R4 1
       27 GETTABLEKS                       R4 R4 K1 ["MAKEUP_FOLDER_NAME"]
       29 SETTABLEKS                       R4 R3 K8 ["Name"]
       31 GETTABLEKS                       R4 R1 K0 ["Head"]
       33 SETTABLEKS                       R4 R3 K9 ["Parent"]
       35 MOVE                             R0 R3
       36 GETTABLEKS                       R1 R0 K10 ["ChildAdded"]
       38 GETUPVAL                         R3 2
       39 NAMECALL                         R1 R1 K11 ["Connect"]
       41 CALL                             R1 2 1
       42 GETTABLEKS                       R2 R0 K12 ["ChildRemoved"]
       44 GETUPVAL                         R4 2
       45 NAMECALL                         R2 R2 K11 ["Connect"]
       47 CALL                             R2 2 1
       48 NEWCLOSURE                       R3 P0
       49 CAPTURE                          VAL R1
       50 CAPTURE                          VAL R2
       51 RETURN                           R3 1

PROTO_3:
        0 DUPCLOSURE                       R1 K0 [PROTO_0]
        1 CAPTURE                          UPVAL U0
        2 GETUPVAL                         R2 1
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R3 R3 K1 ["useEffect"]
        8 NEWCLOSURE                       R4 P1
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          VAL R2
       12 NEWTABLE                         R5 0 1
       14 MOVE                             R6 R0
       15 SETLIST                          R5 R6 1 [1]
       17 CALL                             R3 2 0
       18 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["Constants"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K11 ["Types"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K8 ["Src"]
       34 GETTABLEKS                       R5 R5 K12 ["Hooks"]
       36 GETTABLEKS                       R5 R5 K13 ["useEquipAvatarMakeup_DEPRECATED"]
       38 CALL                             R4 1 1
       39 DUPCLOSURE                       R5 K14 [PROTO_3]
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R1
       43 RETURN                           R5 1
