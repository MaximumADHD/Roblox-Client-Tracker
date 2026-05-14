PROTO_0:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 NAMECALL                         R1 R1 K1 ["get"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K2 ["wrap"]
       10 NAMECALL                         R3 R1 K3 ["GetUri"]
       12 CALL                             R3 1 -1
       13 CALL                             R2 -1 1
       14 GETUPVAL                         R3 2
       15 GETTABLEKS                       R3 R3 K4 ["useRef"]
       17 LOADNIL                          R4
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R4 R3 K5 ["current"]
       21 JUMPIFNOTEQKNIL                  R4 ; [+20]
       23 JUMPIFNOT                        R0 ; [+8]
       24 GETTABLEKS                       R4 R0 K6 ["id"]
       26 JUMPIFNOT                        R4 ; [+5]
       27 GETTABLEKS                       R4 R0 K6 ["id"]
       29 SETTABLEKS                       R4 R3 K5 ["current"]
       31 JUMP                             ; [+10]
       32 GETUPVAL                         R5 3
       33 FASTCALL1                        TOSTRING R5 ; [+2]
       34 GETIMPORT                        R4 K8 [tostring]
       36 CALL                             R4 1 1
       37 SETTABLEKS                       R4 R3 K5 ["current"]
       39 GETUPVAL                         R4 3
       40 ADDK                             R4 R4 K9 [1]
       41 SETUPVAL                         R4 3
       42 GETUPVAL                         R4 1
       43 GETTABLEKS                       R4 R4 K10 ["join"]
       45 MOVE                             R5 R2
       46 DUPTABLE                         R6 K13 [{"Category", "ItemId"}]
       47 LOADK                            R7 K14 ["Actions"]
       48 SETTABLEKS                       R7 R6 K11 ["Category"]
       50 GETTABLEKS                       R7 R3 K5 ["current"]
       52 SETTABLEKS                       R7 R6 K12 ["ItemId"]
       54 CALL                             R4 2 1
       55 GETUPVAL                         R5 4
       56 MOVE                             R6 R4
       57 CALL                             R5 1 1
       58 DUPTABLE                         R6 K17 [{"ref", "uri"}]
       59 SETTABLEKS                       R5 R6 K15 ["ref"]
       61 SETTABLEKS                       R4 R6 K16 ["uri"]
       63 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StudioFoundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Framework"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R4 R3 K9 ["ContextServices"]
       21 GETTABLEKS                       R5 R4 K10 ["Plugin"]
       23 GETIMPORT                        R6 K6 [require]
       25 GETTABLEKS                       R7 R0 K11 ["Util"]
       27 GETTABLEKS                       R7 R7 K12 ["StudioUri"]
       29 CALL                             R6 1 1
       30 GETIMPORT                        R7 K6 [require]
       32 GETTABLEKS                       R8 R0 K13 ["Hooks"]
       34 GETTABLEKS                       R8 R8 K14 ["useWidgetRef"]
       36 CALL                             R7 1 1
       37 LOADN                            R8 0
       38 NEWCLOSURE                       R9 P0
       39 CAPTURE                          VAL R5
       40 CAPTURE                          VAL R6
       41 CAPTURE                          VAL R2
       42 CAPTURE                          REF R8
       43 CAPTURE                          VAL R7
       44 CLOSEUPVALS                      R8
       45 RETURN                           R9 1
