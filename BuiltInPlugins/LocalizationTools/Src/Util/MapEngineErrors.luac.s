PROTO_0:
        0 GETUPVAL                         R3 0
        1 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        3 LOADK                            R4 K0 ["expected FFlagLocalizedLocalizationToolsErrors to be true"]
        4 GETIMPORT                        R2 K2 [assert]
        6 CALL                             R2 2 0
        7 NEWTABLE                         R2 0 4
        9 DUPTABLE                         R3 K6 [{"pattern", "key", "numArguments"}]
       10 LOADK                            R4 K7 ["^Error reading (.-): Missing a Key or Source header column.$"]
       11 SETTABLEKS                       R4 R3 K3 ["pattern"]
       13 LOADK                            R4 K8 ["MissingKeyOrSource"]
       14 SETTABLEKS                       R4 R3 K4 ["key"]
       16 LOADN                            R4 1
       17 SETTABLEKS                       R4 R3 K5 ["numArguments"]
       19 DUPTABLE                         R4 K6 [{"pattern", "key", "numArguments"}]
       20 LOADK                            R5 K9 ["^.+%s(.+)%s?: Missing a Key or Source header column.%s?.*$"]
       21 SETTABLEKS                       R5 R4 K3 ["pattern"]
       23 LOADK                            R5 K8 ["MissingKeyOrSource"]
       24 SETTABLEKS                       R5 R4 K4 ["key"]
       26 LOADN                            R5 1
       27 SETTABLEKS                       R5 R4 K5 ["numArguments"]
       29 DUPTABLE                         R5 K6 [{"pattern", "key", "numArguments"}]
       30 LOADK                            R6 K10 ["^.+%s(.+)%s?: Error opening CSV .-: Invalid UTF%-8. File must be UTF%-8 encoded.%s?.*$"]
       31 SETTABLEKS                       R6 R5 K3 ["pattern"]
       33 LOADK                            R6 K11 ["NonUtf8"]
       34 SETTABLEKS                       R6 R5 K4 ["key"]
       36 LOADN                            R6 1
       37 SETTABLEKS                       R6 R5 K5 ["numArguments"]
       39 DUPTABLE                         R6 K6 [{"pattern", "key", "numArguments"}]
       40 LOADK                            R7 K12 ["^Error opening CSV (.-): Invalid UTF%-8. File must be UTF%-8 encoded.$"]
       41 SETTABLEKS                       R7 R6 K3 ["pattern"]
       43 LOADK                            R7 K11 ["NonUtf8"]
       44 SETTABLEKS                       R7 R6 K4 ["key"]
       46 LOADN                            R7 1
       47 SETTABLEKS                       R7 R6 K5 ["numArguments"]
       49 SETLIST                          R2 R3 4 [1]
       51 MOVE                             R3 R2
       52 LOADNIL                          R4
       53 LOADNIL                          R5
       54 FORGPREP                         R3
       55 GETGLOBAL                        R8 K13 ["matchPatternToMessage"]
       57 MOVE                             R9 R0
       58 MOVE                             R10 R7
       59 MOVE                             R11 R1
       60 CALL                             R8 3 2
       61 JUMPIFNOT                        R8 ; [+1]
       62 RETURN                           R9 1
       63 FORGLOOP                         R3 2 ; [-9]
       65 RETURN                           R0 1

PROTO_1:
        0 NEWTABLE                         R3 0 1
        2 GETIMPORT                        R4 K2 [string.match]
        4 MOVE                             R5 R0
        5 GETTABLEKS                       R6 R1 K3 ["pattern"]
        7 CALL                             R4 2 -1
        8 SETLIST                          R3 R4 -1 [1]
       10 LOADNIL                          R4
       11 LENGTH                           R6 R3
       12 GETTABLEKS                       R7 R1 K4 ["numArguments"]
       14 JUMPIFEQ                         R6 R7 ; [+2]
       16 LOADB                            R5 0 +1
       17 LOADB                            R5 1
       18 JUMPIFNOT                        R5 ; [+8]
       19 LOADK                            R8 K5 ["EngineErrors"]
       20 GETTABLEKS                       R9 R1 K6 ["key"]
       22 MOVE                             R10 R3
       23 NAMECALL                         R6 R2 K7 ["getText"]
       25 CALL                             R6 4 1
       26 MOVE                             R4 R6
       27 MOVE                             R6 R5
       28 MOVE                             R7 R4
       29 RETURN                           R6 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["EnableLocalizedLocalizationToolsErrorsApi"]
        4 NAMECALL                         R0 R0 K3 ["GetEngineFeature"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R1 K4 [PROTO_0]
        8 CAPTURE                          VAL R0
        9 DUPCLOSURE                       R2 K5 [PROTO_1]
       10 SETGLOBAL                        R2 K6 ["matchPatternToMessage"]
       12 DUPTABLE                         R2 K8 [{"getTranslationForEngineError"}]
       13 SETTABLEKS                       R1 R2 K7 ["getTranslationForEngineError"]
       15 RETURN                           R2 1
