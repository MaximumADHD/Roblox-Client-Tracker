PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQKNIL                  R1 ; [+18]
        3 GETUPVAL                         R1 1
        4 LOADK                            R3 K0 ["Edit%*"]
        5 GETTABLEKS                       R5 R0 K1 ["name"]
        7 NAMECALL                         R3 R3 K2 ["format"]
        9 CALL                             R3 2 1
       10 LOADK                            R4 K3 ["Edit property %*"]
       11 GETTABLEKS                       R6 R0 K1 ["name"]
       13 NAMECALL                         R4 R4 K2 ["format"]
       15 CALL                             R4 2 1
       16 NAMECALL                         R1 R1 K4 ["TryBeginRecording"]
       18 CALL                             R1 3 1
       19 SETUPVAL                         R1 0
       20 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 JUMPIFNOTEQKNIL                  R3 ; [+2]
        3 LOADB                            R2 0 +1
        4 LOADB                            R2 1
        5 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        7 LOADK                            R3 K0 ["Was not recording"]
        8 GETIMPORT                        R1 K2 [assert]
       10 CALL                             R1 2 0
       11 GETUPVAL                         R1 1
       12 GETUPVAL                         R3 0
       13 MOVE                             R4 R0
       14 NAMECALL                         R1 R1 K3 ["FinishRecording"]
       16 CALL                             R1 3 0
       17 LOADNIL                          R1
       18 SETUPVAL                         R1 0
       19 RETURN                           R0 0

PROTO_2:
        0 JUMPIFEQKNIL                     R1 ; [+4]
        2 GETUPVAL                         R2 0
        3 JUMPIFNOTEQKNIL                  R2 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R4 0
        7 JUMPIFNOTEQKNIL                  R4 ; [+2]
        9 LOADB                            R3 0 +1
       10 LOADB                            R3 1
       11 FASTCALL2K                       ASSERT R3 K0 ; [+4]
       13 LOADK                            R4 K0 ["Was not recording"]
       14 GETIMPORT                        R2 K2 [assert]
       16 CALL                             R2 2 0
       17 GETUPVAL                         R2 1
       18 GETUPVAL                         R4 0
       19 MOVE                             R5 R1
       20 NAMECALL                         R2 R2 K3 ["FinishRecording"]
       22 CALL                             R2 3 0
       23 LOADNIL                          R2
       24 SETUPVAL                         R2 0
       25 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+21]
        2 GETIMPORT                        R0 K3 [Enum.FinishRecordingOperation.Cancel]
        4 GETUPVAL                         R3 0
        5 JUMPIFNOTEQKNIL                  R3 ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL2K                       ASSERT R2 K4 ; [+4]
       11 LOADK                            R3 K4 ["Was not recording"]
       12 GETIMPORT                        R1 K6 [assert]
       14 CALL                             R1 2 0
       15 GETUPVAL                         R1 1
       16 GETUPVAL                         R3 0
       17 MOVE                             R4 R0
       18 NAMECALL                         R1 R1 K7 ["FinishRecording"]
       20 CALL                             R1 3 0
       21 LOADNIL                          R1
       22 SETUPVAL                         R1 0
       23 RETURN                           R0 0

PROTO_4:
        0 LOADNIL                          R0
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          REF R0
        3 CAPTURE                          UPVAL U0
        4 NEWCLOSURE                       R2 P1
        5 CAPTURE                          REF R0
        6 CAPTURE                          UPVAL U0
        7 NEWCLOSURE                       R3 P2
        8 CAPTURE                          REF R0
        9 CAPTURE                          UPVAL U0
       10 DUPTABLE                         R4 K2 [{"BeforePropertyChange", "AfterPropertyChange"}]
       11 SETTABLEKS                       R1 R4 K0 ["BeforePropertyChange"]
       13 SETTABLEKS                       R3 R4 K1 ["AfterPropertyChange"]
       15 NEWCLOSURE                       R5 P3
       16 CAPTURE                          REF R0
       17 CAPTURE                          UPVAL U0
       18 CLOSEUPVALS                      R0
       19 RETURN                           R4 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ChangeHistoryService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["PropertiesPlugin"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["Properties"]
       19 CALL                             R2 1 1
       20 DUPCLOSURE                       R3 K12 [PROTO_4]
       21 CAPTURE                          VAL R0
       22 RETURN                           R3 1
