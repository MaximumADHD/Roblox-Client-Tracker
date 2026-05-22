PROTO_0:
        0 NOT                              R1 R0
        1 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_0]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R0 K2 [table.freeze]
        2 DUPTABLE                         R1 K5 [{"Label", "OnActivated"}]
        3 DUPTABLE                         R2 K9 [{"Project", "Scope", "Key"}]
        4 GETUPVAL                         R3 0
        5 SETTABLEKS                       R3 R2 K6 ["Project"]
        7 LOADK                            R3 K10 ["useDialogDetailsAction"]
        8 SETTABLEKS                       R3 R2 K7 ["Scope"]
       10 GETUPVAL                         R4 1
       11 JUMPIFNOT                        R4 ; [+2]
       12 LOADK                            R3 K11 ["HideDetails"]
       13 JUMP                             ; [+1]
       14 LOADK                            R3 K12 ["ShowDetails"]
       15 SETTABLEKS                       R3 R2 K8 ["Key"]
       17 SETTABLEKS                       R2 R1 K3 ["Label"]
       19 NEWCLOSURE                       R2 P0
       20 CAPTURE                          UPVAL U2
       21 SETTABLEKS                       R2 R1 K4 ["OnActivated"]
       23 CALL                             R0 1 -1
       24 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+1]
        2 RETURN                           R0 1
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["createElement"]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K1 ["Fragment"]
        9 LOADNIL                          R3
       10 DUPTABLE                         R4 K4 [{"ContentsBeforeDetails", "Details"}]
       11 JUMPIFNOT                        R0 ; [+20]
       12 GETUPVAL                         R5 1
       13 GETTABLEKS                       R5 R5 K0 ["createElement"]
       15 LOADK                            R6 K5 ["Frame"]
       16 NEWTABLE                         R7 4 0
       18 LOADN                            R8 1
       19 SETTABLEKS                       R8 R7 K6 ["BackgroundTransparency"]
       21 LOADN                            R8 1
       22 SETTABLEKS                       R8 R7 K7 ["LayoutOrder"]
       24 GETUPVAL                         R8 1
       25 GETTABLEKS                       R8 R8 K8 ["Tag"]
       27 LOADK                            R9 K9 ["X-FitY"]
       28 SETTABLE                         R9 R7 R8
       29 MOVE                             R8 R0
       30 CALL                             R5 3 1
       31 JUMP                             ; [+1]
       32 LOADNIL                          R5
       33 SETTABLEKS                       R5 R4 K2 ["ContentsBeforeDetails"]
       35 GETUPVAL                         R7 2
       36 FASTCALL1                        TYPEOF R7 ; [+2]
       37 GETIMPORT                        R6 K11 [typeof]
       39 CALL                             R6 1 1
       40 JUMPIFNOTEQKS                    R6 K12 ["string"] ; [+20]
       42 GETUPVAL                         R5 1
       43 GETTABLEKS                       R5 R5 K0 ["createElement"]
       45 LOADK                            R6 K13 ["TextLabel"]
       46 NEWTABLE                         R7 4 0
       48 LOADN                            R8 2
       49 SETTABLEKS                       R8 R7 K7 ["LayoutOrder"]
       51 GETUPVAL                         R8 2
       52 SETTABLEKS                       R8 R7 K14 ["Text"]
       54 GETUPVAL                         R8 1
       55 GETTABLEKS                       R8 R8 K8 ["Tag"]
       57 LOADK                            R9 K9 ["X-FitY"]
       58 SETTABLE                         R9 R7 R8
       59 CALL                             R5 2 1
       60 JUMP                             ; [+19]
       61 GETUPVAL                         R5 1
       62 GETTABLEKS                       R5 R5 K0 ["createElement"]
       64 LOADK                            R6 K5 ["Frame"]
       65 NEWTABLE                         R7 4 0
       67 LOADN                            R8 1
       68 SETTABLEKS                       R8 R7 K6 ["BackgroundTransparency"]
       70 LOADN                            R8 2
       71 SETTABLEKS                       R8 R7 K7 ["LayoutOrder"]
       73 GETUPVAL                         R8 1
       74 GETTABLEKS                       R8 R8 K8 ["Tag"]
       76 LOADK                            R9 K9 ["X-FitY"]
       77 SETTABLE                         R9 R7 R8
       78 GETUPVAL                         R8 2
       79 CALL                             R5 3 1
       80 SETTABLEKS                       R5 R4 K3 ["Details"]
       82 CALL                             R1 3 -1
       83 RETURN                           R1 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["useMemo"]
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          VAL R1
       11 CAPTURE                          VAL R2
       12 NEWTABLE                         R5 0 2
       14 MOVE                             R6 R1
       15 MOVE                             R7 R2
       16 SETLIST                          R5 R6 2 [1]
       18 CALL                             R3 2 1
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R4 R4 K2 ["useCallback"]
       22 NEWCLOSURE                       R5 P1
       23 CAPTURE                          VAL R1
       24 CAPTURE                          UPVAL U0
       25 CAPTURE                          VAL R0
       26 NEWTABLE                         R6 0 2
       28 MOVE                             R7 R1
       29 MOVE                             R8 R0
       30 SETLIST                          R6 R7 2 [1]
       32 CALL                             R4 2 1
       33 RETURN                           R3 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Resources"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K10 ["LOCALIZATION_PROJECT_NAME"]
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R0 K7 ["Util"]
       27 GETTABLEKS                       R5 R5 K11 ["DialogAction"]
       29 CALL                             R4 1 1
       30 DUPCLOSURE                       R5 K12 [PROTO_4]
       31 CAPTURE                          VAL R1
       32 CAPTURE                          VAL R3
       33 RETURN                           R5 1
