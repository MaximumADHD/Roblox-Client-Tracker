PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["EnableAudioActions"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R1 K1 [game]
        2 LOADK                            R4 K2 ["EnableAudioAction"]
        3 MOVE                             R5 R0
        4 CONCAT                           R3 R4 R5
        5 NAMECALL                         R1 R1 K3 ["GetFastFlag"]
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["EnableAudioActions"]
        4 LOADN                            R3 2
        5 NAMECALL                         R0 R0 K3 ["SetFlagVersion"]
        7 CALL                             R0 3 0
        8 GETIMPORT                        R0 K1 [game]
       10 LOADK                            R2 K2 ["EnableAudioActions"]
       11 LOADB                            R3 0
       12 NAMECALL                         R0 R0 K4 ["DefineFastFlag"]
       14 CALL                             R0 3 0
       15 GETIMPORT                        R0 K1 [game]
       17 LOADK                            R2 K5 ["EnableAudioActionFindPlaying"]
       18 LOADB                            R3 0
       19 NAMECALL                         R0 R0 K4 ["DefineFastFlag"]
       21 CALL                             R0 3 0
       22 GETIMPORT                        R0 K1 [game]
       24 LOADK                            R2 K6 ["EnableAudioActionInsert"]
       25 LOADB                            R3 0
       26 NAMECALL                         R0 R0 K4 ["DefineFastFlag"]
       28 CALL                             R0 3 0
       29 GETIMPORT                        R0 K1 [game]
       31 LOADK                            R2 K7 ["EnableAudioActionInsertFrom"]
       32 LOADB                            R3 0
       33 NAMECALL                         R0 R0 K4 ["DefineFastFlag"]
       35 CALL                             R0 3 0
       36 GETIMPORT                        R0 K1 [game]
       38 LOADK                            R2 K8 ["EnableAudioActionMainVolume"]
       39 LOADB                            R3 0
       40 NAMECALL                         R0 R0 K4 ["DefineFastFlag"]
       42 CALL                             R0 3 0
       43 GETIMPORT                        R0 K1 [game]
       45 LOADK                            R2 K9 ["EnableAudioActionMigrateSounds"]
       46 LOADB                            R3 0
       47 NAMECALL                         R0 R0 K4 ["DefineFastFlag"]
       49 CALL                             R0 3 0
       50 GETIMPORT                        R0 K1 [game]
       52 LOADK                            R2 K10 ["EnableAudioActionSelect"]
       53 LOADB                            R3 0
       54 NAMECALL                         R0 R0 K4 ["DefineFastFlag"]
       56 CALL                             R0 3 0
       57 GETIMPORT                        R0 K1 [game]
       59 LOADK                            R2 K11 ["EnableAudioActionStopPlaying"]
       60 LOADB                            R3 0
       61 NAMECALL                         R0 R0 K4 ["DefineFastFlag"]
       63 CALL                             R0 3 0
       64 GETIMPORT                        R0 K1 [game]
       66 LOADK                            R2 K12 ["EnableAudioActionWireUp"]
       67 LOADB                            R3 0
       68 NAMECALL                         R0 R0 K4 ["DefineFastFlag"]
       70 CALL                             R0 3 0
       71 DUPTABLE                         R0 K15 [{"getFFlagEnableAudioActions", "getFFlagEnableAction"}]
       72 DUPCLOSURE                       R1 K16 [PROTO_0]
       73 SETTABLEKS                       R1 R0 K13 ["getFFlagEnableAudioActions"]
       75 DUPCLOSURE                       R1 K17 [PROTO_1]
       76 SETTABLEKS                       R1 R0 K14 ["getFFlagEnableAction"]
       78 RETURN                           R0 1
