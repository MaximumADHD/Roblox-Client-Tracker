PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["WorldModel"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["ATTRIBUTE_ORIGINAL_SETUP_SCALE"]
        6 NAMECALL                         R0 R0 K2 ["GetAttribute"]
        8 CALL                             R0 2 1
        9 FASTCALL1                        TYPE R0 ; [+3]
       10 MOVE                             R2 R0
       11 GETIMPORT                        R1 K4 [type]
       13 CALL                             R1 1 1
       14 JUMPIFNOTEQKS                    R1 K5 ["number"] ; [+2]
       16 RETURN                           R0 1
       17 LOADNIL                          R1
       18 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 1
        1 GETUPVAL                         R2 2
        2 NAMECALL                         R0 R0 K0 ["JSONDecode"]
        4 CALL                             R0 2 1
        5 SETUPVAL                         R0 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["WorldModel"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["ATTRIBUTE_SCALE_ERROR_LIST"]
        6 NAMECALL                         R0 R0 K2 ["GetAttribute"]
        8 CALL                             R0 2 1
        9 FASTCALL1                        TYPE R0 ; [+3]
       10 MOVE                             R2 R0
       11 GETIMPORT                        R1 K4 [type]
       13 CALL                             R1 1 1
       14 JUMPIFEQKS                       R1 K5 ["string"] ; [+3]
       16 LOADNIL                          R1
       17 RETURN                           R1 1
       18 LOADNIL                          R1
       19 GETIMPORT                        R2 K7 [pcall]
       21 NEWCLOSURE                       R3 P0
       22 CAPTURE                          REF R1
       23 CAPTURE                          UPVAL U2
       24 CAPTURE                          VAL R0
       25 CALL                             R2 1 1
       26 JUMPIF                           R2 ; [+3]
       27 LOADNIL                          R3
       28 CLOSEUPVALS                      R1
       29 RETURN                           R3 1
       30 FASTCALL1                        TYPE R1 ; [+3]
       31 MOVE                             R4 R1
       32 GETIMPORT                        R3 K4 [type]
       34 CALL                             R3 1 1
       35 JUMPIFEQKS                       R3 K8 ["table"] ; [+4]
       37 LOADNIL                          R3
       38 CLOSEUPVALS                      R1
       39 RETURN                           R3 1
       40 MOVE                             R3 R1
       41 LOADNIL                          R4
       42 LOADNIL                          R5
       43 FORGPREP                         R3
       44 FASTCALL1                        TYPE R6 ; [+3]
       45 MOVE                             R9 R6
       46 GETIMPORT                        R8 K4 [type]
       48 CALL                             R8 1 1
       49 JUMPIFNOTEQKS                    R8 K9 ["number"] ; [+8]
       51 FASTCALL1                        TYPE R7 ; [+3]
       52 MOVE                             R9 R7
       53 GETIMPORT                        R8 K4 [type]
       55 CALL                             R8 1 1
       56 JUMPIFEQKS                       R8 K5 ["string"] ; [+4]
       58 LOADNIL                          R8
       59 CLOSEUPVALS                      R1
       60 RETURN                           R8 1
       61 FORGLOOP                         R3 2 ; [-18]
       63 LENGTH                           R3 R1
       64 LOADN                            R4 0
       65 JUMPIFNOTLE                      R3 R4 ; [+4]
       67 LOADNIL                          R3
       68 CLOSEUPVALS                      R1
       69 RETURN                           R3 1
       70 CLOSEUPVALS                      R1
       71 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 0
        4 GETUPVAL                         R0 2
        5 GETTABLEKS                       R0 R0 K0 ["WorldModel"]
        7 GETUPVAL                         R2 3
        8 GETTABLEKS                       R2 R2 K1 ["ATTRIBUTE_ORIGINAL_SETUP_SCALE"]
       10 NAMECALL                         R0 R0 K2 ["GetAttributeChangedSignal"]
       12 CALL                             R0 2 1
       13 NEWCLOSURE                       R2 P0
       14 CAPTURE                          UPVAL U0
       15 CAPTURE                          UPVAL U1
       16 NAMECALL                         R0 R0 K3 ["Connect"]
       18 CALL                             R0 2 1
       19 NEWCLOSURE                       R1 P1
       20 CAPTURE                          VAL R0
       21 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 0
        4 GETUPVAL                         R0 2
        5 GETTABLEKS                       R0 R0 K0 ["WorldModel"]
        7 GETUPVAL                         R2 3
        8 GETTABLEKS                       R2 R2 K1 ["ATTRIBUTE_ORIGINAL_SETUP_SCALE"]
       10 NAMECALL                         R0 R0 K2 ["GetAttributeChangedSignal"]
       12 CALL                             R0 2 1
       13 NEWCLOSURE                       R2 P0
       14 CAPTURE                          UPVAL U0
       15 CAPTURE                          UPVAL U1
       16 NAMECALL                         R0 R0 K3 ["Connect"]
       18 CALL                             R0 2 1
       19 NEWCLOSURE                       R1 P1
       20 CAPTURE                          VAL R0
       21 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R0 1
        5 LOADK                            R2 K0 ["AvatarAutoSetupRevertSize"]
        6 NAMECALL                         R0 R0 K1 ["TryBeginRecording"]
        8 CALL                             R0 2 1
        9 GETUPVAL                         R1 2
       10 GETTABLEKS                       R1 R1 K2 ["WorldModel"]
       12 GETUPVAL                         R3 0
       13 NAMECALL                         R1 R1 K3 ["ScaleTo"]
       15 CALL                             R1 2 0
       16 JUMPIFNOT                        R0 ; [+7]
       17 GETUPVAL                         R1 1
       18 MOVE                             R3 R0
       19 GETIMPORT                        R4 K7 [Enum.FinishRecordingOperation.Commit]
       21 NAMECALL                         R1 R1 K8 ["FinishRecording"]
       23 CALL                             R1 3 0
       24 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["AvatarAutoSetupScaleToRequirements"]
        2 NAMECALL                         R0 R0 K1 ["TryBeginRecording"]
        4 CALL                             R0 2 1
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K2 ["WorldModel"]
        8 LOADN                            R3 1
        9 NAMECALL                         R1 R1 K3 ["ScaleTo"]
       11 CALL                             R1 2 0
       12 JUMPIFNOT                        R0 ; [+7]
       13 GETUPVAL                         R1 0
       14 MOVE                             R3 R0
       15 GETIMPORT                        R4 K7 [Enum.FinishRecordingOperation.Commit]
       17 NAMECALL                         R1 R1 K8 ["FinishRecording"]
       19 CALL                             R1 3 0
       20 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useCallback"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 NEWTABLE                         R3 0 1
        8 GETTABLEKS                       R4 R0 K1 ["WorldModel"]
       10 SETLIST                          R3 R4 1 [1]
       12 CALL                             R1 2 1
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R2 R2 K0 ["useCallback"]
       16 NEWCLOSURE                       R3 P1
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U1
       19 CAPTURE                          UPVAL U2
       20 NEWTABLE                         R4 0 1
       22 GETTABLEKS                       R5 R0 K1 ["WorldModel"]
       24 SETLIST                          R4 R5 1 [1]
       26 CALL                             R2 2 1
       27 GETUPVAL                         R3 0
       28 GETTABLEKS                       R3 R3 K2 ["useState"]
       30 MOVE                             R4 R1
       31 CALL                             R3 1 2
       32 GETUPVAL                         R5 0
       33 GETTABLEKS                       R5 R5 K2 ["useState"]
       35 MOVE                             R6 R2
       36 CALL                             R5 1 2
       37 GETUPVAL                         R7 0
       38 GETTABLEKS                       R7 R7 K3 ["useEffect"]
       40 NEWCLOSURE                       R8 P2
       41 CAPTURE                          VAL R6
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R0
       44 CAPTURE                          UPVAL U1
       45 NEWTABLE                         R9 0 2
       47 GETTABLEKS                       R10 R0 K1 ["WorldModel"]
       49 MOVE                             R11 R2
       50 SETLIST                          R9 R10 2 [1]
       52 CALL                             R7 2 0
       53 GETUPVAL                         R7 0
       54 GETTABLEKS                       R7 R7 K3 ["useEffect"]
       56 NEWCLOSURE                       R8 P3
       57 CAPTURE                          VAL R4
       58 CAPTURE                          VAL R1
       59 CAPTURE                          VAL R0
       60 CAPTURE                          UPVAL U1
       61 NEWTABLE                         R9 0 2
       63 GETTABLEKS                       R10 R0 K1 ["WorldModel"]
       65 MOVE                             R11 R1
       66 SETLIST                          R9 R10 2 [1]
       68 CALL                             R7 2 0
       69 GETUPVAL                         R7 0
       70 GETTABLEKS                       R7 R7 K0 ["useCallback"]
       72 NEWCLOSURE                       R8 P4
       73 CAPTURE                          VAL R3
       74 CAPTURE                          UPVAL U3
       75 CAPTURE                          VAL R0
       76 NEWTABLE                         R9 0 2
       78 MOVE                             R10 R3
       79 GETTABLEKS                       R11 R0 K1 ["WorldModel"]
       81 SETLIST                          R9 R10 2 [1]
       83 CALL                             R7 2 1
       84 GETUPVAL                         R8 0
       85 GETTABLEKS                       R8 R8 K0 ["useCallback"]
       87 NEWCLOSURE                       R9 P5
       88 CAPTURE                          UPVAL U3
       89 CAPTURE                          VAL R0
       90 NEWTABLE                         R10 0 1
       92 GETTABLEKS                       R11 R0 K1 ["WorldModel"]
       94 SETLIST                          R10 R11 1 [1]
       96 CALL                             R8 2 1
       97 DUPTABLE                         R9 K9 [{"revertScale", "autoSetupScaleErrorList", "setScaleToAvatarRequirements", "autoSetupOriginalScale", "autoSetupResizeProportion"}]
       98 SETTABLEKS                       R7 R9 K4 ["revertScale"]
      100 SETTABLEKS                       R5 R9 K5 ["autoSetupScaleErrorList"]
      102 SETTABLEKS                       R8 R9 K6 ["setScaleToAvatarRequirements"]
      104 SETTABLEKS                       R3 R9 K7 ["autoSetupOriginalScale"]
      106 JUMPIFNOT                        R3 ; [+4]
      107 GETTABLEKS                       R11 R0 K10 ["WorldModelScale"]
      109 DIV                              R10 R11 R3
      110 JUMP                             ; [+1]
      111 LOADNIL                          R10
      112 SETTABLEKS                       R10 R9 K8 ["autoSetupResizeProportion"]
      114 RETURN                           R9 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["ChangeHistoryService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K5 [game]
       15 LOADK                            R4 K8 ["HttpService"]
       16 NAMECALL                         R2 R2 K7 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K10 [require]
       21 GETTABLEKS                       R4 R0 K11 ["Src"]
       23 GETTABLEKS                       R4 R4 K12 ["Util"]
       25 GETTABLEKS                       R4 R4 K13 ["Constants"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K10 [require]
       30 GETTABLEKS                       R5 R0 K11 ["Src"]
       32 GETTABLEKS                       R5 R5 K14 ["Types"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K10 [require]
       37 GETTABLEKS                       R6 R0 K15 ["Packages"]
       39 GETTABLEKS                       R6 R6 K16 ["React"]
       41 CALL                             R5 1 1
       42 DUPCLOSURE                       R6 K17 [PROTO_11]
       43 CAPTURE                          VAL R5
       44 CAPTURE                          VAL R3
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R1
       47 RETURN                           R6 1
